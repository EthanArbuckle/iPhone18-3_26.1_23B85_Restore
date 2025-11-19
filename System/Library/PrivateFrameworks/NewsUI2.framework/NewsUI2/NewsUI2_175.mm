uint64_t sub_219A7328C()
{
  sub_21896FA3C();
  v30 = *(v1 - 8);
  v2 = *(v30 + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v30 - v5;
  v7 = type metadata accessor for ChannelIssuesModel();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218953748();
  sub_219BE5FC4();
  v10 = *v9;
  v32 = v9;
  v31 = *(v9 + 2);
  v11 = *(v0 + 72);
  v12 = swift_allocObject();
  v13 = sub_219BE5F84();
  v39 = 0;
  *(v12 + 16) = v13;
  *(v12 + 24) = v14;
  *(v12 + 40) = 0;
  *(v12 + 48) = 0;
  *(v12 + 32) = v10;
  *(v12 + 56) = 0;
  *(v12 + 63) = 0;
  *(v12 + 61) = 0;
  *(v12 + 57) = 0;
  *(v12 + 64) = MEMORY[0x277D84F90];
  v15 = *(v0 + 64);
  v16 = sub_219BDFA44();
  v17 = *(*(v16 - 8) + 56);
  v33 = v6;
  v17(v6, 1, 1, v16);
  v38 = 0;
  memset(v37, 0, sizeof(v37));
  v36[5] = v11;
  sub_219BDC8D4();
  v18 = v10;
  sub_219BDC8B4();
  if (qword_280EE9210 != -1)
  {
    swift_once();
  }

  sub_219BDC8C4();

  v36[4] = v12 | 0x5000000000000000;
  v36[3] = sub_219BDD274();
  v36[0] = v15;
  sub_2189B4E2C(v33, v4);
  sub_2187B14CC(v37, v34, &qword_280EE33A0, &qword_280EE33B0);
  v19 = (*(v30 + 80) + 24) & ~*(v30 + 80);
  v20 = (v2 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = v15;
  sub_2189B4EAC(v4, v21 + v19);
  v22 = v21 + v20;
  v23 = v34[1];
  *v22 = v34[0];
  *(v22 + 16) = v23;
  *(v22 + 32) = v35;
  v24 = (v21 + ((v20 + 47) & 0xFFFFFFFFFFFFFFF8));
  *v24 = 0;
  v24[1] = 0;
  sub_2186CF94C();
  sub_2186E44A0(&qword_280EE5A90, sub_2186CF94C);
  swift_retain_n();
  v25 = sub_219BEB454();

  sub_21874504C(v37, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
  sub_218A42D80(v33);
  sub_21874504C(v36, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8278);

  sub_2189C026C();
  v27 = *(v26 + 48);
  v28 = sub_219BF0744();
  (*(*(v28 - 8) + 8))(&v32[v27], v28);
  return v25;
}

unint64_t sub_219A737F4(__int128 *a1, int a2)
{
  v58 = a2;
  v3 = sub_219BDBD34();
  v55 = *(v3 - 8);
  v56 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v54 = v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v52[1] = v52 - v7;
  MEMORY[0x28223BE20](v6);
  v9 = v52 - v8;
  sub_219A74800(0, qword_280EA39A8, type metadata accessor for ContinueReadingPromptExposureData);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v60 = v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = v52 - v13;
  v15 = type metadata accessor for ContinueReadingPromptExposureData();
  v16 = *(v15 - 1);
  v17 = MEMORY[0x28223BE20](v15);
  v53 = v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = v52 - v20;
  v57 = v22;
  MEMORY[0x28223BE20](v19);
  v24 = v52 - v23;
  v25 = a1[5];
  v68 = a1[4];
  v69 = v25;
  v70 = a1[6];
  v71 = *(a1 + 112);
  v26 = a1[1];
  v64 = *a1;
  v65 = v26;
  v27 = a1[2];
  v28 = a1[3];
  v29 = v61;
  v66 = v27;
  v67 = v28;
  v30 = OBJC_IVAR____TtC7NewsUI225ContinueReadingInteractor_exposureData;
  swift_beginAccess();
  v59 = v30;
  v31 = v16;
  sub_219A749A4(v29 + v30, v14, qword_280EA39A8, type metadata accessor for ContinueReadingPromptExposureData);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_219A74AF0(v14, qword_280EA39A8, type metadata accessor for ContinueReadingPromptExposureData);
  }

  else
  {
    sub_219A7479C(v14, v24);
    v52[0] = __swift_project_boxed_opaque_existential_1((v29 + 16), *(v29 + 40));
    sub_219BDBD24();
    sub_219BDD2C4();
    v32 = v55;
    v33 = v56;
    (*(v55 + 16))(v54, v9, v56);
    sub_219BDD2B4();
    (*(v32 + 8))(v9, v33);
    v34 = v15[5];
    v35 = sub_219BE1524();
    (*(*(v35 - 8) + 16))(&v21[v34], &v24[v34], v35);
    sub_219A749A4(&v24[v15[6]], &v21[v15[6]], &unk_280EE88A0, MEMORY[0x277D2D8A8]);
    sub_219A749A4(&v24[v15[7]], &v21[v15[7]], &qword_280EE7F58, MEMORY[0x277D2F890]);
    sub_219A749A4(&v24[v15[8]], &v21[v15[8]], &qword_280EE8028, MEMORY[0x277D2F260]);
    v36 = v15[9];
    v37 = sub_219BDF824();
    (*(*(v37 - 8) + 16))(&v21[v36], &v24[v36], v37);
    v38 = v15[10];
    v39 = sub_219BE06D4();
    (*(*(v39 - 8) + 16))(&v21[v38], &v24[v38], v39);
    v56 = *(*v52[0] + 16);
    v40 = v53;
    sub_219A74854(v21, v53);
    v41 = (*(v31 + 80) + 16) & ~*(v31 + 80);
    v42 = v31;
    v43 = v41 + v57;
    v44 = swift_allocObject();
    sub_219A7479C(v40, v44 + v41);
    *(v44 + v43) = v58;
    v31 = v42;
    sub_219BDD154();
    v29 = v61;

    sub_219A74948(v21);
    sub_219A74948(v24);
  }

  v45 = v60;
  (*(v31 + 56))(v60, 1, 1, v15);
  v46 = v59;
  swift_beginAccess();
  sub_218A57F2C(v45, v29 + v46);
  swift_endAccess();
  v47 = swift_allocObject();
  v48 = v69;
  *(v47 + 80) = v68;
  *(v47 + 96) = v48;
  *(v47 + 112) = v70;
  *(v47 + 128) = v71;
  v49 = v65;
  *(v47 + 16) = v64;
  *(v47 + 32) = v49;
  v50 = v67;
  *(v47 + 48) = v66;
  *(v47 + 64) = v50;
  v63 = v47 | 0xC000000000000006;
  sub_2189EB2A8(&v64, &v62);
  sub_219BE7864();
  return sub_218932F9C(v63);
}

void sub_219A73E3C(uint64_t a1)
{
  sub_219A74800(0, &qword_280EE8610, MEMORY[0x277D2DED0]);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v38[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v8 = &v38[-v7];
  v9 = *(a1 + 64);
  LODWORD(a1) = *(a1 + 72);
  if (a1)
  {
    v11 = *(v1 + OBJC_IVAR____TtC7NewsUI225ContinueReadingInteractor_navigator);
    v12 = sub_219BDFA44();
    (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
    v50 = 0;
    memset(v49, 0, sizeof(v49));
    v48 = 0;
    memset(v47, 0, sizeof(v47));
    v46 = v11;
    sub_2187B171C(v47, &v42, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    v39 = a1;
    if (*(&v43 + 1))
    {
      sub_21875F93C(&v42, v44);
      *&v42 = v9;
      sub_2189EB264(v9);
      v13 = sub_2194DA78C(v44);
      v15 = v14;
      v17 = v16;
      __swift_destroy_boxed_opaque_existential_1(v44);
    }

    else
    {
      sub_2189EB264(v9);
      sub_2187B1CC0(&v42, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v13 = qword_280ED32D8;
      v15 = qword_280ED32E0;
      v17 = qword_280ED32E8;

      sub_2188202A8(v15);
    }

    v40 = v9;
    v41 = v9;
    v43 = 0u;
    v42 = 0u;
    sub_219A749A4(v8, v6, &qword_280EE8610, MEMORY[0x277D2DED0]);
    sub_2187B171C(v49, v44, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
    v27 = (*(v3 + 80) + 24) & ~*(v3 + 80);
    v28 = (v4 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
    v29 = (v28 + 47) & 0xFFFFFFFFFFFFFFF8;
    v30 = swift_allocObject();
    *(v30 + 16) = 0;
    sub_2189B4EAC(v6, v30 + v27);
    v31 = v30 + v28;
    v32 = v44[1];
    *v31 = v44[0];
    *(v31 + 16) = v32;
    *(v31 + 32) = v45;
    v33 = (v30 + v29);
    v34 = (v30 + ((v29 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v33 = 0;
    v33[1] = 0;
    *v34 = v13;
    v34[1] = v15;
    v34[2] = v17;

    sub_2188202A8(v15);
    sub_2186CF94C();
    sub_2189B4DD4();
    sub_219BEB464();

    sub_2187FABEC(v15);
    sub_2187B1CC0(v47, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    sub_2187B1CC0(v49, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
    sub_219A74AF0(v8, &qword_280EE8610, MEMORY[0x277D2DED0]);
    sub_218806FD0(&v42);
    v35 = v40;
    if (qword_280E8D8F0 != -1)
    {
      swift_once();
    }

    sub_2186E7D5C(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_219C09BA0;
    *&v49[0] = 0;
    *(&v49[0] + 1) = 0xE000000000000000;
    *&v47[0] = v35;
    BYTE8(v47[0]) = 1;
    sub_219BF7484();
    v37 = *(&v49[0] + 1);
    a1 = *&v49[0];
    *(v36 + 56) = MEMORY[0x277D837D0];
    *(v36 + 64) = sub_2186FC3BC();
    *(v36 + 32) = a1;
    *(v36 + 40) = v37;
    v9 = v40;
    sub_219BF6214();
    sub_219BE5314();
    LOBYTE(a1) = v39;
  }

  else
  {
    v18 = v9;
    v19 = sub_219BE91A4();
    if (qword_280E8D8F0 != -1)
    {
      swift_once();
    }

    sub_2186E7D5C(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_219C09EC0;
    *&v49[0] = 0;
    *(&v49[0] + 1) = 0xE000000000000000;
    *&v47[0] = v9;
    BYTE8(v47[0]) = 0;
    sub_219BF7484();
    v21 = v49[0];
    v22 = MEMORY[0x277D837D0];
    *(v20 + 56) = MEMORY[0x277D837D0];
    v23 = sub_2186FC3BC();
    *(v20 + 64) = v23;
    *(v20 + 32) = v21;
    if (v19)
    {
      v24 = 1702195828;
    }

    else
    {
      v24 = 0x65736C6166;
    }

    if (v19)
    {
      v25 = 0xE400000000000000;
    }

    else
    {
      v25 = 0xE500000000000000;
    }

    *&v49[0] = 0;
    *(&v49[0] + 1) = 0xE000000000000000;
    MEMORY[0x21CECC330](v24, v25);

    v26 = v49[0];
    *(v20 + 96) = v22;
    *(v20 + 104) = v23;
    *(v20 + 72) = v26;
    sub_219BF6214();
    sub_219BE5314();
  }

  sub_218A57FB4(v9, a1);
}

uint64_t sub_219A745D8()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  sub_219A74AF0(v0 + OBJC_IVAR____TtC7NewsUI225ContinueReadingInteractor_exposureData, qword_280EA39A8, type metadata accessor for ContinueReadingPromptExposureData);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ContinueReadingInteractor()
{
  result = qword_280EBF2B8;
  if (!qword_280EBF2B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_219A746D4()
{
  sub_219A74800(319, qword_280EA39A8, type metadata accessor for ContinueReadingPromptExposureData);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_219A7479C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContinueReadingPromptExposureData();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_219A74800(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_219A74854(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContinueReadingPromptExposureData();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_219A748B8(uint64_t a1)
{
  v3 = *(type metadata accessor for ContinueReadingPromptExposureData() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  v5 = *(v4 + *(v3 + 64));

  return sub_218F65878(a1, v4, v5);
}

uint64_t sub_219A74948(uint64_t a1)
{
  v2 = type metadata accessor for ContinueReadingPromptExposureData();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_219A749A4(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_219A74800(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_219A74A10(void *a1)
{
  sub_219A74800(0, &qword_280EE8610, MEMORY[0x277D2DED0]);
  v4 = (*(*(v3 - 8) + 80) + 24) & ~*(*(v3 - 8) + 80);
  v5 = (*(*(v3 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_2194DAC9C(a1, *(v1 + 16), v1 + v4, v1 + v5, *(v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_219A74AF0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_219A74800(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_219A74B70()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t sub_219A74C38()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t sub_219A74D00()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t sub_219A74DC4()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t sub_219A74E84(uint64_t a1)
{
  sub_219BF7314();
  MEMORY[0x21CECC330](0xD00000000000002ALL, 0x8000000219D48200);
  v2 = sub_218731D50();
  v3 = MEMORY[0x21CECC6D0](a1, v2);
  MEMORY[0x21CECC330](v3);

  MEMORY[0x21CECC330](0xD000000000000016, 0x8000000219D48230);
  sub_219A74F8C();

  v4 = sub_219BF5484();
  MEMORY[0x21CECC330](v4);

  MEMORY[0x21CECC330](10506, 0xE200000000000000);
  return 0;
}

void sub_219A74F8C()
{
  if (!qword_280E912C8)
  {
    sub_219BEF864();
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E912C8);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_5TeaUI24MastheadViewProviderType_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_219A75008(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_219A75050(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_219A750E4(void *a1)
{
  sub_219A75B44(0, &qword_280E8C358, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219A75A30();
  sub_219BF7B44();
  v9[15] = 0;
  sub_2186E3594();
  sub_219A75BA8(&unk_280E92000, sub_2186E3594);
  sub_219BF7834();
  if (!v1)
  {
    type metadata accessor for FeaturedArticleMagazineFeedGroup();
    v9[14] = 1;
    sub_219BED8D4();
    sub_219A75BA8(&qword_280E92640, MEMORY[0x277D31C50]);
    sub_219BF7834();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_219A752F4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v26 = sub_219BED8D4();
  v23 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E3594();
  v29 = v6;
  v25 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v27 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219A75B44(0, &qword_280E8CA58, MEMORY[0x277D844C8]);
  v30 = v8;
  v28 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - v9;
  v11 = type metadata accessor for FeaturedArticleMagazineFeedGroup();
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219A75A30();
  sub_219BF7B34();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = v11;
  v14 = v13;
  v16 = v25;
  v15 = v26;
  v32 = 0;
  sub_219A75BA8(&qword_280E91FF8, sub_2186E3594);
  v17 = v27;
  sub_219BF7734();
  v18 = *(v16 + 32);
  v21 = v14;
  v18(v14, v17, v29);
  v31 = 1;
  sub_219A75BA8(&unk_280E92630, MEMORY[0x277D31C50]);
  sub_219BF7734();
  (*(v28 + 8))(v10, v30);
  v19 = v21;
  (*(v23 + 32))(v21 + *(v22 + 20), v5, v15);
  sub_219A75A84(v19, v24);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_219A75AE8(v19);
}

uint64_t sub_219A75724(uint64_t a1)
{
  v2 = sub_219A75A30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219A75760(uint64_t a1)
{
  v2 = sub_219A75A30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_219A757CC(uint64_t a1)
{
  v2 = sub_219A75BA8(&qword_280EA6AE8, type metadata accessor for FeaturedArticleMagazineFeedGroup);

  return MEMORY[0x282191938](a1, v2);
}

uint64_t sub_219A75854(void *a1)
{
  a1[1] = sub_219A75BA8(&qword_280EA6AE8, type metadata accessor for FeaturedArticleMagazineFeedGroup);
  a1[2] = sub_219A75BA8(&qword_280EA6AC0, type metadata accessor for FeaturedArticleMagazineFeedGroup);
  result = sub_219A75BA8(&qword_280EA6AD0, type metadata accessor for FeaturedArticleMagazineFeedGroup);
  a1[3] = result;
  return result;
}

uint64_t sub_219A759D8(uint64_t a1)
{
  result = sub_219A75BA8(&qword_280EA6AB8, type metadata accessor for FeaturedArticleMagazineFeedGroup);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_219A75A30()
{
  result = qword_280EA6B00;
  if (!qword_280EA6B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA6B00);
  }

  return result;
}

uint64_t sub_219A75A84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeaturedArticleMagazineFeedGroup();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_219A75AE8(uint64_t a1)
{
  v2 = type metadata accessor for FeaturedArticleMagazineFeedGroup();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_219A75B44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_219A75A30();
    v7 = a3(a1, &type metadata for FeaturedArticleMagazineFeedGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_219A75BA8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_219A75C04()
{
  result = qword_27CC22E10;
  if (!qword_27CC22E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC22E10);
  }

  return result;
}

unint64_t sub_219A75C5C()
{
  result = qword_280EA6AF0;
  if (!qword_280EA6AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA6AF0);
  }

  return result;
}

unint64_t sub_219A75CB4()
{
  result = qword_280EA6AF8;
  if (!qword_280EA6AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA6AF8);
  }

  return result;
}

id sub_219A75E28()
{
  v1 = v0;
  v21.receiver = v0;
  v21.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v21, sel_viewDidLoad);
  v2 = *&v0[OBJC_IVAR____TtC7NewsUI229MagazineCatalogViewController_blueprintViewController];
  [v1 addChildViewController_];
  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = result;
  result = [v2 view];
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v5 = result;
  [v4 addSubview_];

  [v2 didMoveToParentViewController_];
  result = [v2 view];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = result;
  result = [v1 view];
  if (result)
  {
    v7 = result;
    [result bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    [v6 setFrame_];
    sub_219BE8664();
    v16 = sub_219BE7BC4();

    v17 = [v16 collectionViewLayout];

    [v17 setTs:1 sortItemsLogicallyForAccessibility:?];
    v18 = [v1 traitCollection];
    sub_219A77218();

    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_219A77350(&qword_27CC22E38, v19, type metadata accessor for MagazineCatalogViewController);
    sub_219A77350(&unk_27CC22E40, v20, type metadata accessor for MagazineCatalogViewController);

    sub_219BEEA54();
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t get_enum_tag_for_layout_string_7NewsUI229MagazineCatalogViewControllerC12Presentation33_B69EE4DE9301148398A4C012500D028ELLO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_219A762E0(uint64_t a1, unsigned int a2)
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

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  if ((v4 + 1) >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

void *sub_219A7633C(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = a2;
  }

  return result;
}

uint64_t sub_219A76378()
{
  v0 = sub_219BEB384();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BEB394();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_219BE8644();
  if (qword_280E92A48 != -1)
  {
    swift_once();
  }

  v8 = sub_219BF01B4();
  v9 = __swift_project_value_buffer(v8, qword_280F61940);
  v7[3] = v8;
  v7[4] = sub_219A77350(&qword_280E91000, 255, MEMORY[0x277D32BC8]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v7);
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_1, v9, v8);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = [objc_opt_self() bundleForClass_];
  sub_219BDB5E4();

  v13 = sub_219BF54E4();
  v15 = v14;

  v7[5] = v13;
  v7[6] = v15;
  (*(v5 + 104))(v7, *MEMORY[0x277D6EC80], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6ECB0], v0);
  sub_219BE6BD4();

  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

void sub_219A766D0()
{
  v0 = sub_219BEB384();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BEB394();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE8644();
  (*(v5 + 104))(v7, *MEMORY[0x277D6EC88], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6ECA8], v0);
  sub_219BE6BD4();

  (*(v1 + 8))(v3, v0);
  (*(v5 + 8))(v7, v4);
  sub_219BE8664();
  v8 = sub_219BE7BC4();

  [v8 tu_reloadSectionIndexTitles];
}

void sub_219A768E0()
{
  sub_219BE8664();
  v0 = sub_219BE7BC4();

  [v0 reloadData];
}

void sub_219A76958(uint64_t a1, SEL *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC7NewsUI229MagazineCatalogViewController_blueprintViewController);

    sub_219BE8664();
    v6 = sub_219BE7BC4();

    [v6 *a2];
  }
}

uint64_t sub_219A769F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_219BE9F74();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, a3, v5, v7);
  result = (*(v6 + 88))(v9, v5);
  if (result == *MEMORY[0x277D6E950])
  {
    (*(v6 + 8))(v9, v5);
LABEL_3:
    v11 = *(*(v3 + OBJC_IVAR____TtC7NewsUI229MagazineCatalogViewController_eventHandler) + 40);
    ObjectType = swift_getObjectType();
    return (*(v11 + 40))(ObjectType, v11);
  }

  if (result == *MEMORY[0x277D6E928])
  {
    v13 = *(v3 + OBJC_IVAR____TtC7NewsUI229MagazineCatalogViewController_eventHandler);
    v14 = (v3 + OBJC_IVAR____TtC7NewsUI229MagazineCatalogViewController_presentation);
    v15 = *(v3 + OBJC_IVAR____TtC7NewsUI229MagazineCatalogViewController_presentation + 8);
    if (v15 >= 2)
    {
      v16 = *v14;
    }

    else
    {
      v16 = 0;
      v15 = 0;
    }

    v18 = *(v13 + 40);
    v19 = swift_getObjectType();
    (*(v18 + 32))(v16, v15, v19, v18);

    v20 = *v14;
    v21 = v14[1];
    *v14 = xmmword_219C14A10;
    return sub_2188398B4(v20, v21);
  }

  else
  {
    if (result == *MEMORY[0x277D6E948] || result == *MEMORY[0x277D6E930])
    {
      goto LABEL_3;
    }

    if (result != *MEMORY[0x277D6E958])
    {
      if (result == *MEMORY[0x277D6E970])
      {
        goto LABEL_3;
      }

      return (*(v6 + 8))(v9, v5);
    }
  }

  return result;
}

void sub_219A76C48(uint64_t a1, char a2)
{
  v3 = sub_219BEB384();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BEB394();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a2)
  {
    sub_219BE8644();
    if (qword_280E92A48 != -1)
    {
      swift_once();
    }

    v11 = sub_219BF01B4();
    v12 = __swift_project_value_buffer(v11, qword_280F61940);
    v10[3] = v11;
    v10[4] = sub_219A77350(&qword_280E91000, 255, MEMORY[0x277D32BC8]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
    (*(*(v11 - 8) + 16))(boxed_opaque_existential_1, v12, v11);
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v15 = [objc_opt_self() bundleForClass_];
    sub_219BDB5E4();

    v16 = sub_219BF54E4();
    v18 = v17;

    v10[5] = v16;
    v10[6] = v18;
    (*(v8 + 104))(v10, *MEMORY[0x277D6EC80], v7);
    (*(v4 + 104))(v6, *MEMORY[0x277D6ECB0], v3);
    sub_219BE6BD4();

    (*(v4 + 8))(v6, v3);
    (*(v8 + 8))(v10, v7);
  }
}

uint64_t sub_219A770B0@<X0>(uint64_t *a1@<X8>)
{
  sub_219BE8664();
  v2 = sub_219BE7BC4();

  *a1 = v2;
  v3 = *MEMORY[0x277D6DA10];
  v4 = sub_219BE74B4();
  v5 = *(*(v4 - 8) + 104);

  return v5(a1, v3, v4);
}

void sub_219A77218()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = objc_opt_self();
    v4 = [v3 clearColor];
    [v2 setBackgroundColor_];

    sub_219BE8664();
    v6 = sub_219BE7BC4();

    v5 = [v3 clearColor];
    [v6 setBackgroundColor_];

    [v6 setAlwaysBounceVertical_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_219A77350(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_219A77464(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_218718690(*v3 + 16, &v11);
  v10[0] = 0x6D726177657250;
  v10[1] = 0xE700000000000000;
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a3;
  sub_219A77978(v10, &v9);
  sub_218D95688(0);
  swift_allocObject();
  sub_219A779D4();

  v7 = sub_219BE6E64();
  sub_219A77A28(v10);
  return v7;
}

uint64_t sub_219A77530(uint64_t a1)
{
  refreshed = type metadata accessor for AudioPlaylistFeedRefreshBlueprintModifier();
  MEMORY[0x28223BE20](refreshed);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  v9 = *v1;
  sub_219A77868(a1, &v12 - v7, type metadata accessor for AudioPlaylistFeedRefreshResult);
  sub_218718690(v9 + 16, &v8[*(refreshed + 20)]);
  sub_219A77868(v8, v5, type metadata accessor for AudioPlaylistFeedRefreshBlueprintModifier);
  sub_218D95688(0);
  swift_allocObject();
  sub_219A778D0(&qword_27CC0D330, type metadata accessor for AudioPlaylistFeedRefreshBlueprintModifier);
  v10 = sub_219BE6E64();
  sub_219A77918(v8, type metadata accessor for AudioPlaylistFeedRefreshBlueprintModifier);
  return v10;
}

uint64_t sub_219A776A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioPlaylistFeedDragAndDropBlueprintModifier();
  MEMORY[0x28223BE20](v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v15 - v8;
  sub_218B7E48C();
  (*(*(v10 - 8) + 16))(v9, a1, v10);
  v11 = *(v4 + 20);
  v12 = sub_219BDC104();
  (*(*(v12 - 8) + 16))(&v9[v11], a2, v12);
  sub_219A77868(v9, v6, type metadata accessor for AudioPlaylistFeedDragAndDropBlueprintModifier);
  sub_218D95688(0);
  swift_allocObject();
  sub_219A778D0(&qword_27CC0E7D0, type metadata accessor for AudioPlaylistFeedDragAndDropBlueprintModifier);
  v13 = sub_219BE6E64();
  sub_219A77918(v9, type metadata accessor for AudioPlaylistFeedDragAndDropBlueprintModifier);
  return v13;
}

uint64_t sub_219A77868(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_219A778D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_219A77918(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_219A779D4()
{
  result = qword_27CC22E80;
  if (!qword_27CC22E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC22E80);
  }

  return result;
}

uint64_t sub_219A77AA4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = sub_219BF1934();
  v14 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v16 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219A77F44(0, &qword_280E8CB48, MEMORY[0x277D844C8]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219A77EF0();
  sub_219BF7B34();
  if (!v2)
  {
    v12 = v14;
    v11 = v15;
    sub_218933D7C(&qword_280E90808);
    sub_219BF7734();
    (*(v8 + 8))(v10, v7);
    (*(v12 + 32))(v11, v16, v4);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_219A77CEC(uint64_t a1)
{
  v2 = sub_219A77EF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219A77D28(uint64_t a1)
{
  v2 = sub_219A77EF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_219A77D7C(void *a1)
{
  sub_219A77F44(0, &qword_27CC22E88, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219A77EF0();
  sub_219BF7B44();
  sub_219BF1934();
  sub_218933D7C(&qword_280E90810);
  sub_219BF7834();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_219A77EF0()
{
  result = qword_280EACB18[0];
  if (!qword_280EACB18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EACB18);
  }

  return result;
}

void sub_219A77F44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_219A77EF0();
    v7 = a3(a1, &type metadata for ForYouAudioFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_219A77FBC()
{
  result = qword_27CC22E90;
  if (!qword_27CC22E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC22E90);
  }

  return result;
}

unint64_t sub_219A78014()
{
  result = qword_280EACB08;
  if (!qword_280EACB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EACB08);
  }

  return result;
}

unint64_t sub_219A7806C()
{
  result = qword_280EACB10;
  if (!qword_280EACB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EACB10);
  }

  return result;
}

uint64_t sub_219A78138(uint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) == 0)
  {
    return a2;
  }

  __break(1u);
  return result;
}

unint64_t sub_219A781E8(unint64_t result, uint64_t a2, uint64_t a3, int64_t a4, unint64_t a5)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v5 = a5 >> 1;
  if (__OFSUB__(a5 >> 1, a4))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (!result || (v6 = a5 >> 1, (a5 >> 1) - a4 >= result))
  {
    v6 = a4 + result;
    if (__OFADD__(a4, result))
    {
      goto LABEL_17;
    }
  }

  if (v6 < a4)
  {
    goto LABEL_13;
  }

  if (v5 < a4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v5 >= v6)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      return a2;
    }

    goto LABEL_16;
  }

LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_219A78278(uint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    a3(0);
    return a2;
  }

  return result;
}

uint64_t sub_219A78310()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_219A78368();
  }

  return result;
}

uint64_t sub_219A78368()
{
  v1 = v0;
  v2 = type metadata accessor for OfflineContentRequest.Source(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v128 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DE17C(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v128 - v6;
  v150 = sub_219BDBD34();
  v8 = *(v150 - 8);
  v9 = MEMORY[0x28223BE20](v150);
  v132 = &v128 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v145 = &v128 - v11;
  v151 = type metadata accessor for OfflineContentRequest(0);
  v141 = *(v151 - 8);
  v12 = MEMORY[0x28223BE20](v151);
  v146 = (&v128 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x28223BE20](v12);
  v148 = &v128 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v131 = &v128 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v140 = &v128 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v147 = &v128 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v149 = &v128 - v23;
  MEMORY[0x28223BE20](v22);
  v25 = &v128 - v24;
  __swift_project_boxed_opaque_existential_1(v0 + 4, v0[7]);
  v26 = sub_218720294(&unk_282A24C88);
  if (v26 != 6)
  {
    LOBYTE(v30) = v26;
    if (qword_280E8D908 != -1)
    {
      goto LABEL_85;
    }

    goto LABEL_19;
  }

  v139 = v0[3];
  v27 = [v139 sortedIssueIDs];
  v28 = sub_219BF5924();

  v29 = *(v28 + 16);
  v129 = v1;
  v134 = v4;
  if (!v29)
  {

    v32 = MEMORY[0x277D84F90];
LABEL_27:
    LODWORD(v145) = sub_219A7948C(v1);
    v57 = v32[2];
    if (v57)
    {
      v58 = (*(v141 + 80) + 32) & ~*(v141 + 80);
      v59 = MEMORY[0x277D84F90];
      v144 = v32;
      v60 = v32 + v58;
      v61 = *(v141 + 72);
      v62 = (v8 + 48);
      v63 = MEMORY[0x277D84F90];
      while (1)
      {
        v66 = v149;
        sub_2198F30C8(v60, v149);
        sub_2198F30C8(v66, v147);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

        if (EnumCaseMultiPayload <= 1)
        {
          v68 = &unk_280E8F880;
        }

        else if (EnumCaseMultiPayload == 2)
        {
          v68 = &qword_280E8F8B0;
        }

        else if (EnumCaseMultiPayload == 3)
        {
          v68 = &unk_280E8F8A0;
        }

        else
        {
          v68 = &unk_280E8F890;
        }

        sub_218950608(0, v68);
        sub_21885F9FC(v147 + *(v69 + 64), v4, type metadata accessor for OfflineContentRequest.Source);
        if ((*v62)(v4, 1, v150) == 1)
        {
          if (v145)
          {
            sub_2198F30C8(v149, v131);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v59 = sub_2191F6708(0, v59[2] + 1, 1, v59);
            }

            v71 = v59[2];
            v70 = v59[3];
            if (v71 >= v70 >> 1)
            {
              v59 = sub_2191F6708(v70 > 1, v71 + 1, 1, v59);
            }

            sub_219242288(v149, type metadata accessor for OfflineContentRequest);
            v59[2] = v71 + 1;
            sub_21885F9FC(v131, v59 + v58 + v71 * v61, type metadata accessor for OfflineContentRequest);
            v4 = v134;
            goto LABEL_31;
          }

          v64 = type metadata accessor for OfflineContentRequest;
          v65 = v149;
        }

        else
        {
          sub_2198F30C8(v149, v140);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v63 = sub_2191F6708(0, v63[2] + 1, 1, v63);
          }

          v73 = v63[2];
          v72 = v63[3];
          if (v73 >= v72 >> 1)
          {
            v63 = sub_2191F6708(v72 > 1, v73 + 1, 1, v63);
          }

          sub_219242288(v149, type metadata accessor for OfflineContentRequest);
          v63[2] = v73 + 1;
          sub_21885F9FC(v140, v63 + v58 + v73 * v61, type metadata accessor for OfflineContentRequest);
          v64 = type metadata accessor for OfflineContentRequest.Source;
          v4 = v134;
          v65 = v134;
        }

        sub_219242288(v65, v64);
LABEL_31:
        v60 += v61;
        if (!--v57)
        {

          v74 = v59;
          goto LABEL_53;
        }
      }
    }

    v74 = MEMORY[0x277D84F90];
    v63 = MEMORY[0x277D84F90];
LABEL_53:
    swift_getObjectType();
    swift_getKeyPath();
    v75 = sub_219BF6A94();

    v76 = v63[2];
    v77 = __OFSUB__(v75, v76);
    v78 = v75 - v76;
    if (v78 < 0 != v77)
    {
      v79 = 0;
    }

    else
    {
      v79 = v78;
    }

    if (v79 < *(v74 + 16))
    {
      v80 = MEMORY[0x277D83B88];
      if (qword_280E8D908 != -1)
      {
        swift_once();
      }

      sub_2186DE17C(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
      v81 = swift_allocObject();
      *(v81 + 16) = xmmword_219C09EC0;
      v82 = *(v74 + 16);
      v83 = MEMORY[0x277D83C10];
      *(v81 + 56) = v80;
      *(v81 + 64) = v83;
      *(v81 + 32) = v82;
      *(v81 + 96) = v80;
      *(v81 + 104) = v83;
      *(v81 + 72) = v79;
      sub_219BF6214();
      sub_219BE5314();
    }

    v84 = sub_219A78278(v79, v74, type metadata accessor for OfflineContentRequest);
    v86 = v85;
    v88 = v87;
    v90 = v89;
    v153 = v63;

    sub_2191EF004(v84, v86, v88, v90);
    v91 = v153;
    sub_2186C66AC();
    v149 = sub_219BF6F74();
    sub_2186DE17C(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
    v92 = swift_allocObject();
    *(v92 + 16) = xmmword_219C09EC0;
    v153 = *(v91 + 16);
    v93 = v153;
    v94 = sub_219BF7894();
    v96 = v95;
    *(v92 + 56) = MEMORY[0x277D837D0];
    v97 = sub_2186FC3BC();
    v98 = v97;
    *(v92 + 64) = v97;
    *(v92 + 32) = v94;
    *(v92 + 40) = v96;
    v153 = 0;
    v154 = 0xE000000000000000;
    v150 = v91;
    if (!v93)
    {

      v100 = MEMORY[0x277D84F90];
LABEL_77:
      v118 = MEMORY[0x277D837D0];
      v119 = MEMORY[0x21CECC6D0](v100, MEMORY[0x277D837D0]);
      v121 = v120;

      MEMORY[0x21CECC330](v119, v121);

      v122 = v153;
      v123 = v154;
      *(v92 + 96) = v118;
      *(v92 + 104) = v98;
      *(v92 + 72) = v122;
      *(v92 + 80) = v123;
      sub_219BF6214();
      v124 = v149;
      sub_219BE5314();

      v153 = v150;
      sub_218950530();
      sub_219BE21B4();
    }

    v145 = v97;
    v147 = v74;
    v152 = MEMORY[0x277D84F90];
    sub_21870B65C(0, v93, 0);
    v99 = v91 + ((*(v141 + 80) + 32) & ~*(v141 + 80));
    v100 = v152;
    v101 = *(v141 + 72);
    while (1)
    {
      v102 = v148;
      sub_2198F30C8(v99, v148);
      v103 = v146;
      sub_2198F30C8(v102, v146);
      v104 = swift_getEnumCaseMultiPayload();
      v105 = *v103;
      v106 = v103[1];
      if (v104 <= 1)
      {
        if (v104)
        {
          sub_218950608(0, &unk_280E8F880);
          v114 = v146 + *(v113 + 64);
          v115 = sub_219BF53D4();

          v116 = NDAudioContentIDFromArticleID();

          v105 = sub_219BF5414();
          v106 = v117;

          v109 = v114;
          goto LABEL_71;
        }

        v107 = &unk_280E8F880;
      }

      else if (v104 == 2)
      {
        v107 = &qword_280E8F8B0;
      }

      else if (v104 == 3)
      {
        v107 = &unk_280E8F8A0;
      }

      else
      {
        v107 = &unk_280E8F890;
      }

      sub_218950608(0, v107);
      v109 = v146 + *(v108 + 64);
LABEL_71:
      sub_219242288(v109, type metadata accessor for OfflineContentRequest.Source);
      sub_219242288(v148, type metadata accessor for OfflineContentRequest);
      v152 = v100;
      v111 = *(v100 + 16);
      v110 = *(v100 + 24);
      if (v111 >= v110 >> 1)
      {
        sub_21870B65C((v110 > 1), v111 + 1, 1);
        v100 = v152;
      }

      *(v100 + 16) = v111 + 1;
      v112 = v100 + 16 * v111;
      *(v112 + 32) = v105;
      *(v112 + 40) = v106;
      v99 += v101;
      if (!--v93)
      {

        v98 = v145;
        goto LABEL_77;
      }
    }
  }

  v138 = v7;
  v153 = MEMORY[0x277D84F90];
  v30 = &v153;
  sub_218C340E0(0, v29, 0);
  v31 = 0;
  v133 = (v8 + 32);
  v32 = v153;
  v143 = (v8 + 56);
  v130 = (v8 + 48);
  v128 = v8;
  v135 = (v8 + 8);
  v136 = v29;
  v33 = (v28 + 40);
  v137 = v28;
  v34 = v138;
  while (v31 < *(v28 + 16))
  {
    v144 = v32;
    v35 = *(v33 - 1);
    v36 = *v33;

    v37 = sub_219BF53D4();
    v38 = v139;
    v39 = [v139 sourceForIssueID_];

    v40 = sub_219BF53D4();
    v41 = [v38 dateAddedForIssueID_];

    v142 = v31;
    if (v41)
    {
      v42 = v132;
      sub_219BDBCA4();

      v43 = *v133;
      v44 = v150;
      (*v133)(v34, v42, v150);
      v45 = *v143;
      (*v143)(v34, 0, 1, v44);
      v43(v145, v34, v44);
    }

    else
    {
      v45 = *v143;
      v46 = v138;
      v47 = v150;
      (*v143)(v138, 1, 1, v150);
      sub_219BDBBB4();
      if ((*v130)(v46, 1, v47) != 1)
      {
        sub_2189DD39C(v46);
      }
    }

    sub_218950608(0, &qword_280E8F8B0);
    v49 = *(v48 + 64);
    *v25 = v35;
    *(v25 + 1) = v36;
    if (v39 == 2)
    {
      *(v25 + 2) = 31;
      v50 = v142;
LABEL_13:
      v51 = *v135;

      v30 = v150;
      v51(v145, v150);
      v45(&v25[v49], 1, 1, v30);
      goto LABEL_14;
    }

    *(v25 + 2) = 0;
    v50 = v142;
    if (v39 != 1)
    {
      goto LABEL_13;
    }

    v30 = v150;
    (*v133)(&v25[v49], v145, v150);
    v45(&v25[v49], 0, 1, v30);

LABEL_14:
    swift_storeEnumTagMultiPayload();

    v32 = v144;
    v153 = v144;
    v53 = v144[2];
    v52 = v144[3];
    v28 = v137;
    if (v53 >= v52 >> 1)
    {
      v30 = &v153;
      sub_218C340E0(v52 > 1, v53 + 1, 1);
      v32 = v153;
    }

    v31 = v50 + 1;
    v32[2] = v53 + 1;
    sub_21885F9FC(v25, v32 + ((*(v141 + 80) + 32) & ~*(v141 + 80)) + *(v141 + 72) * v53, type metadata accessor for OfflineContentRequest);
    v33 += 2;
    if (v136 == v31)
    {

      v1 = v129;
      v4 = v134;
      v8 = v128;
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_85:
  swift_once();
LABEL_19:
  sub_2186DE17C(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_219C09BA0;
  if (v30 > 2u)
  {
    if (v30 == 3)
    {
      v56 = 0xD000000000000012;
      v126 = "disabledInSettings";
      goto LABEL_81;
    }

    if (v30 == 4)
    {
      v55 = 0x8000000219CD71D0;
      v56 = 0xD000000000000019;
    }

    else
    {
      v55 = 0x8000000219CD71F0;
      v56 = 0xD000000000000013;
    }
  }

  else if (v30)
  {
    if (v30 == 1)
    {
      v55 = 0xED00006465626972;
      v56 = 0x6373627553746F6ELL;
      goto LABEL_83;
    }

    v56 = 0xD000000000000012;
    v126 = "featureUnavailable";
LABEL_81:
    v55 = (v126 - 32) | 0x8000000000000000;
  }

  else
  {
    v55 = 0xE700000000000000;
    v56 = 0x6E776F6E6B6E75;
  }

LABEL_83:
  *(v54 + 56) = MEMORY[0x277D837D0];
  v127 = v54;
  *(v54 + 64) = sub_2186FC3BC();
  *(v127 + 32) = v56;
  *(v127 + 40) = v55;
  sub_219BF6214();
  sub_219BE5314();

  v153 = MEMORY[0x277D84F90];
  sub_218950530();
  return sub_219BE21B4();
}

BOOL sub_219A7948C(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v1 = off_282A442B8;
  type metadata accessor for OfflineFeatures();
  v2 = v1(15);
  v3 = v2;
  if (v2 != 6)
  {
    v4 = v2;
    if (qword_280E8D908 != -1)
    {
      swift_once();
    }

    sub_2186DE17C(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_219C09BA0;
    if (v4 > 2u)
    {
      if (v4 != 3)
      {
        if (v4 == 4)
        {
          v6 = 0x8000000219CD71D0;
          v7 = 0xD000000000000019;
        }

        else
        {
          v6 = 0x8000000219CD71F0;
          v7 = 0xD000000000000013;
        }

        goto LABEL_16;
      }

      v7 = 0xD000000000000012;
      v8 = "disabledInSettings";
    }

    else
    {
      if (!v4)
      {
        v6 = 0xE700000000000000;
        v7 = 0x6E776F6E6B6E75;
        goto LABEL_16;
      }

      if (v4 == 1)
      {
        v6 = 0xED00006465626972;
        v7 = 0x6373627553746F6ELL;
LABEL_16:
        *(v5 + 56) = MEMORY[0x277D837D0];
        v9 = v5;
        *(v5 + 64) = sub_2186FC3BC();
        *(v9 + 32) = v7;
        *(v9 + 40) = v6;
        sub_219BF6214();
        sub_219BE5314();

        return v3 == 6;
      }

      v7 = 0xD000000000000012;
      v8 = "featureUnavailable";
    }

    v6 = (v8 - 32) | 0x8000000000000000;
    goto LABEL_16;
  }

  return v3 == 6;
}

uint64_t type metadata accessor for SavedFeedRefreshResult()
{
  result = qword_280EC6D98;
  if (!qword_280EC6D98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PuzzleStreakCheckNotificationCoordinator.performBackgroundFetch()()
{
  if (qword_280E8D870 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  sub_219BE5314();
  sub_219A7C274(0, &qword_280EE6BB0, MEMORY[0x277D6CD60], MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE30B4();
}

uint64_t sub_219A798BC(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_219BE2874();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([*(a5 + 184) puzzleNotificationsEnabled])
  {
    sub_21879D924();
    v12 = swift_allocObject();
    v12[2] = a5;
    v12[3] = a1;
    v12[4] = a2;

    sub_219BE2F54();
  }

  else
  {
    if (qword_280E8D870 != -1)
    {
      swift_once();
    }

    sub_219BF6214();
    sub_219BE5314();
    (*(v9 + 104))(v11, *MEMORY[0x277D6CD50], v8);
    a1(v11);
    return (*(v9 + 8))(v11, v8);
  }
}

uint64_t sub_219A79AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  v5 = sub_219BF15B4();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  sub_219A7C274(0, &qword_27CC1B138, MEMORY[0x277D333D8], MEMORY[0x277D83D88]);
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v6 = sub_219BF3464();
  v4[10] = v6;
  v4[11] = *(v6 - 8);
  v4[12] = swift_task_alloc();
  v7 = sub_219BF2B94();
  v4[13] = v7;
  v4[14] = *(v7 - 8);
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v8 = sub_219BE2874();
  v4[17] = v8;
  v4[18] = *(v8 - 8);
  v4[19] = swift_task_alloc();
  v9 = sub_219BF2934();
  v4[20] = v9;
  v4[21] = *(v9 - 8);
  v4[22] = swift_task_alloc();
  v10 = sub_219BF1D54();
  v4[23] = v10;
  v4[24] = *(v10 - 8);
  v4[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_219A79DC8, 0, 0);
}

uint64_t sub_219A79DC8()
{
  v1 = *(v0 + 16);
  v3 = v1[5];
  v2 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  v4 = swift_task_alloc();
  *(v0 + 208) = v4;
  *v4 = v0;
  v4[1] = sub_219A79E84;

  return MEMORY[0x282192A48](v3, v2);
}

uint64_t sub_219A79E84()
{

  return MEMORY[0x2822009F8](sub_219A79F80, 0, 0);
}

uint64_t sub_219A79F80()
{
  v0[27] = *(v0[2] + 176);
  ObjectType = swift_getObjectType();
  v0[28] = ObjectType;
  v2 = swift_task_alloc();
  v0[29] = v2;
  *v2 = v0;
  v2[1] = sub_219A7A034;

  return MEMORY[0x282193DF0](0, ObjectType);
}

uint64_t sub_219A7A034(uint64_t a1)
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
    *(v4 + 240) = a1;

    return MEMORY[0x2822009F8](sub_219A7A1FC, 0, 0);
  }
}

uint64_t sub_219A7A1FC()
{
  v1 = [*(v0 + 240) puzzlesConfig];
  swift_unknownObjectRelease();
  v2 = [v1 puzzleTypes];

  *(v0 + 248) = sub_219BF5924();
  v3 = swift_task_alloc();
  *(v0 + 256) = v3;
  *v3 = v0;
  v3[1] = sub_219A7A2F4;
  v4 = *(v0 + 224);

  return MEMORY[0x282193DF0](0, v4);
}

uint64_t sub_219A7A2F4(uint64_t a1)
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
    *(v4 + 264) = a1;

    return MEMORY[0x2822009F8](sub_219A7A4C4, 0, 0);
  }
}

uint64_t sub_219A7A4C4()
{
  v1 = [*(v0 + 264) puzzlesConfig];
  swift_unknownObjectRelease();
  v2 = [v1 puzzleHubTagID];

  if (v2)
  {
    v3 = sub_219BF5414();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  *(v0 + 272) = v3;
  *(v0 + 280) = v5;
  v6 = *(v0 + 16);
  v7 = v6[10];
  v8 = v6[11];
  __swift_project_boxed_opaque_existential_1(v6 + 7, v7);
  v9 = swift_task_alloc();
  *(v0 + 288) = v9;
  *v9 = v0;
  v9[1] = sub_219A7A5F4;
  v10 = *(v0 + 248);

  return MEMORY[0x282192240](v10, v7, v8);
}

uint64_t sub_219A7A5F4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 296) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_219A7A7E0, 0, 0);
  }
}

uint64_t sub_219A7A7E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(v5 + 296);
  v7 = v6 & 0xFFFFFFFFFFFFFF8;
  if (v6 >> 62)
  {
    v8 = sub_219BF7214();
    v6 = *(v5 + 296);
  }

  else
  {
    v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v5 + 304) = v7;
  *(v5 + 312) = v8;
  v9 = *MEMORY[0x277D33A18];
  *(v5 + 376) = v9;
  v10 = MEMORY[0x277D33AF8];
  *(v5 + 380) = *MEMORY[0x277D33DE0];
  *(v5 + 384) = *v10;
  *(v5 + 320) = MEMORY[0x277D84F90];
  if (v8)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x21CECE0F0](0);
      v9 = *(v5 + 376);
    }

    else
    {
      if (!*(v7 + 16))
      {
        __break(1u);
        return MEMORY[0x282192A38](v8, v6, a3, a4, a5);
      }

      v11 = *(v6 + 32);
      swift_unknownObjectRetain();
    }

    *(v5 + 328) = v11;
    *(v5 + 336) = 1;
    v13 = *(v5 + 168);
    v12 = *(v5 + 176);
    v14 = *(v5 + 160);
    v15 = *(v5 + 16);
    v16 = v15[5];
    v17 = v15[6];
    __swift_project_boxed_opaque_existential_1(v15 + 2, v16);
    (*(v13 + 104))(v12, v9, v14);
    v18 = swift_task_alloc();
    *(v5 + 344) = v18;
    *v18 = v5;
    v18[1] = sub_219A7AAE8;
    v8 = *(v5 + 200);
    v6 = *(v5 + 176);
    a3 = v11;
    a4 = v16;
    a5 = v17;

    return MEMORY[0x282192A38](v8, v6, a3, a4, a5);
  }

  v20 = *(v5 + 272);
  v19 = *(v5 + 280);
  v22 = *(v5 + 144);
  v21 = *(v5 + 152);
  v23 = *(v5 + 136);
  v24 = *(v5 + 24);
  v25 = *(v5 + 16);

  __swift_project_boxed_opaque_existential_1((v25 + 136), *(v25 + 160));
  v26.value._countAndFlagsBits = v20;
  v26.value._object = v19;
  PuzzleStreakLocalNotificationScheduler.scheduleCombinedNotification(for:puzzleHubTagID:)(MEMORY[0x277D84F90], v26);

  (*(v22 + 104))(v21, *MEMORY[0x277D6CD58], v23);
  v24(v21);
  (*(v22 + 8))(v21, v23);

  v27 = *(v5 + 8);

  return v27();
}

uint64_t sub_219A7AAE8()
{
  v2 = *v1;
  *(*v1 + 352) = v0;

  (*(v2[21] + 8))(v2[22], v2[20]);
  if (v0)
  {

    v3 = sub_219A7B758;
  }

  else
  {
    v3 = sub_219A7AC58;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_219A7AC58()
{
  v1 = *(v0 + 380);
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);
  v4 = *(v0 + 80);
  sub_219BF1D44();
  if ((*(v3 + 88))(v2, v4) != v1)
  {
    v29 = *(v0 + 88);
    v28 = *(v0 + 96);
    v30 = *(v0 + 80);
    (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));
    swift_unknownObjectRelease();
    v24 = (*(v29 + 8))(v28, v30);
    goto LABEL_7;
  }

  v5 = *(v0 + 384);
  v6 = *(v0 + 120);
  v7 = *(v0 + 128);
  v8 = *(v0 + 104);
  v9 = *(v0 + 112);
  v10 = *(v0 + 96);
  (*(*(v0 + 88) + 96))(v10, *(v0 + 80));
  (*(v9 + 32))(v7, v10, v8);
  (*(v9 + 16))(v6, v7, v8);
  if ((*(v9 + 88))(v6, v8) != v5)
  {
    v32 = *(v0 + 192);
    v31 = *(v0 + 200);
    v33 = *(v0 + 184);
    v35 = *(v0 + 120);
    v34 = *(v0 + 128);
    v36 = *(v0 + 104);
    v37 = *(v0 + 112);
    swift_unknownObjectRelease();
    v38 = *(v37 + 8);
    v38(v34, v36);
    (*(v32 + 8))(v31, v33);
    v24 = (v38)(v35, v36);
LABEL_7:
    v39 = *(v0 + 336);
    if (v39 == *(v0 + 312))
    {
      v40._rawValue = *(v0 + 320);
      v42 = *(v0 + 272);
      v41 = *(v0 + 280);
      v44 = *(v0 + 144);
      v43 = *(v0 + 152);
      v45 = *(v0 + 136);
      v46 = *(v0 + 24);
      v47 = *(v0 + 16);

      __swift_project_boxed_opaque_existential_1((v47 + 136), *(v47 + 160));
      v48.value._countAndFlagsBits = v42;
      v48.value._object = v41;
      PuzzleStreakLocalNotificationScheduler.scheduleCombinedNotification(for:puzzleHubTagID:)(v40, v48);

      (*(v44 + 104))(v43, *MEMORY[0x277D6CD58], v45);
      v46(v43);
      (*(v44 + 8))(v43, v45);

      v49 = *(v0 + 8);

      return v49();
    }

    v51 = *(v0 + 296);
    if ((v51 & 0xC000000000000001) != 0)
    {
      v24 = MEMORY[0x21CECE0F0](*(v0 + 336));
      v52 = v24;
    }

    else
    {
      if (v39 >= *(*(v0 + 304) + 16))
      {
        goto LABEL_23;
      }

      v52 = *(v51 + 8 * v39 + 32);
      v24 = swift_unknownObjectRetain();
    }

    *(v0 + 328) = v52;
    *(v0 + 336) = v39 + 1;
    if (!__OFADD__(v39, 1))
    {
      v53 = *(v0 + 376);
      v55 = *(v0 + 168);
      v54 = *(v0 + 176);
      v56 = *(v0 + 160);
      v57 = *(v0 + 16);
      v58 = v57[5];
      v59 = v57[6];
      __swift_project_boxed_opaque_existential_1(v57 + 2, v58);
      (*(v55 + 104))(v54, v53, v56);
      v60 = swift_task_alloc();
      *(v0 + 344) = v60;
      *v60 = v0;
      v60[1] = sub_219A7AAE8;
      v24 = *(v0 + 200);
      v51 = *(v0 + 176);
      v25 = v52;
      v26 = v58;
      v27 = v59;

      return MEMORY[0x282192A38](v24, v51, v25, v26, v27);
    }

    __break(1u);
LABEL_23:
    __break(1u);
    return MEMORY[0x282192A38](v24, v51, v25, v26, v27);
  }

  v11 = *(v0 + 120);
  v13 = *(v0 + 64);
  v12 = *(v0 + 72);
  v14 = *(v0 + 40);
  v15 = *(v0 + 48);
  (*(*(v0 + 112) + 96))(v11, *(v0 + 104));
  sub_219A7C2D8(v11, v12);
  sub_219A7C36C(v12, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    v17 = *(v0 + 192);
    v16 = *(v0 + 200);
    v18 = *(v0 + 184);
    v19 = *(v0 + 128);
    v20 = *(v0 + 104);
    v21 = *(v0 + 112);
    v23 = *(v0 + 64);
    v22 = *(v0 + 72);
    swift_unknownObjectRelease();
    sub_219A7C400(v22);
    (*(v21 + 8))(v19, v20);
    (*(v17 + 8))(v16, v18);
    v24 = sub_219A7C400(v23);
    goto LABEL_7;
  }

  (*(*(v0 + 48) + 32))(*(v0 + 56), *(v0 + 64), *(v0 + 40));
  v61 = swift_task_alloc();
  *(v0 + 360) = v61;
  *v61 = v0;
  v61[1] = sub_219A7B1D8;
  v62 = *(v0 + 328);
  v63 = *(v0 + 56);

  return sub_219A7B990(v63, v62);
}

uint64_t sub_219A7B1D8(char a1)
{
  v4 = *v2;
  *(*v2 + 368) = v1;

  if (v1)
  {

    v5 = sub_219A7B83C;
  }

  else
  {
    *(v4 + 388) = a1 & 1;
    v5 = sub_219A7B320;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_219A7B320()
{
  if (*(v0 + 388))
  {
    v48 = sub_219BF1594();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v2 = *(v0 + 320);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v2 = sub_2191FBFB8(0, v2[2] + 1, 1, *(v0 + 320));
    }

    v4 = v2[2];
    v3 = v2[3];
    if (v4 >= v3 >> 1)
    {
      v2 = sub_2191FBFB8((v3 > 1), v4 + 1, 1, v2);
    }

    v47 = *(v0 + 328);
    v5 = *(v0 + 192);
    v6 = *(v0 + 200);
    v7 = *(v0 + 184);
    v8 = *(v0 + 128);
    v10 = *(v0 + 104);
    v9 = *(v0 + 112);
    v11 = *(v0 + 72);
    (*(*(v0 + 48) + 8))(*(v0 + 56), *(v0 + 40));
    sub_219A7C400(v11);
    (*(v9 + 8))(v8, v10);
    v12 = (*(v5 + 8))(v6, v7);
    v2[2] = v4 + 1;
    v16 = &v2[2 * v4];
    v16[4] = v47;
    v16[5] = v48;
  }

  else
  {
    v17 = *(v0 + 192);
    v49 = *(v0 + 200);
    v18 = *(v0 + 184);
    v19 = *(v0 + 128);
    v20 = *(v0 + 104);
    v21 = *(v0 + 112);
    v22 = *(v0 + 72);
    v23 = *(v0 + 48);
    v24 = *(v0 + 56);
    v25 = *(v0 + 40);
    swift_unknownObjectRelease();
    (*(v23 + 8))(v24, v25);
    sub_219A7C400(v22);
    (*(v21 + 8))(v19, v20);
    v12 = (*(v17 + 8))(v49, v18);
    v2 = *(v0 + 320);
  }

  v26 = *(v0 + 336);
  *(v0 + 320) = v2;
  v27 = *(v0 + 296);
  if (v26 != *(v0 + 312))
  {
    if ((v27 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x21CECE0F0](v26);
      v38 = v12;
    }

    else
    {
      if (v26 >= *(*(v0 + 304) + 16))
      {
        goto LABEL_21;
      }

      v38 = *(v27 + 8 * v26 + 32);
      v12 = swift_unknownObjectRetain();
    }

    *(v0 + 328) = v38;
    *(v0 + 336) = v26 + 1;
    if (!__OFADD__(v26, 1))
    {
      v39 = *(v0 + 376);
      v41 = *(v0 + 168);
      v40 = *(v0 + 176);
      v42 = *(v0 + 160);
      v43 = *(v0 + 16);
      v44 = v43[5];
      v45 = v43[6];
      __swift_project_boxed_opaque_existential_1(v43 + 2, v44);
      (*(v41 + 104))(v40, v39, v42);
      v46 = swift_task_alloc();
      *(v0 + 344) = v46;
      *v46 = v0;
      v46[1] = sub_219A7AAE8;
      v12 = *(v0 + 200);
      v27 = *(v0 + 176);
      v13 = v38;
      v14 = v44;
      v15 = v45;

      return MEMORY[0x282192A38](v12, v27, v13, v14, v15);
    }

    __break(1u);
LABEL_21:
    __break(1u);
    return MEMORY[0x282192A38](v12, v27, v13, v14, v15);
  }

  v29 = *(v0 + 272);
  v28 = *(v0 + 280);
  v30 = *(v0 + 144);
  v31 = *(v0 + 152);
  v32 = *(v0 + 136);
  v33 = *(v0 + 24);
  v34 = *(v0 + 16);

  __swift_project_boxed_opaque_existential_1((v34 + 136), *(v34 + 160));
  v35.value._countAndFlagsBits = v29;
  v35.value._object = v28;
  PuzzleStreakLocalNotificationScheduler.scheduleCombinedNotification(for:puzzleHubTagID:)(v2, v35);

  (*(v30 + 104))(v31, *MEMORY[0x277D6CD58], v32);
  v33(v31);
  (*(v30 + 8))(v31, v32);

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_219A7B758()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_219A7B83C()
{
  v1 = v0[24];
  v12 = v0[25];
  v2 = v0[23];
  v3 = v0[16];
  v4 = v0[13];
  v5 = v0[14];
  v6 = v0[9];
  v7 = v0[6];
  v8 = v0[7];
  v9 = v0[5];
  swift_unknownObjectRelease();
  (*(v7 + 8))(v8, v9);
  sub_219A7C400(v6);
  (*(v5 + 8))(v3, v4);
  (*(v1 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_219A7B990(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_219A7B9B4, 0, 0);
}

uint64_t sub_219A7B9B4()
{
  v1 = v0[4];
  v2 = v1[10];
  v3 = v1[11];
  __swift_project_boxed_opaque_existential_1(v1 + 7, v2);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_219A7BA74;
  v5 = v0[3];

  return MEMORY[0x282192218](v5, v2, v3);
}

uint64_t sub_219A7BA74(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 48) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4(0);
  }

  else
  {

    return MEMORY[0x2822009F8](sub_219A7BBB8, 0, 0);
  }
}

uint64_t sub_219A7BBB8()
{
  v1 = *(v0[6] + 16);
  v0[7] = v1;
  if (v1)
  {
    v0[8] = sub_219BF1594();
    ObjectType = swift_getObjectType();
    v3 = swift_task_alloc();
    v0[9] = v3;
    *v3 = v0;
    v3[1] = sub_219A7BCBC;

    return MEMORY[0x282193DF0](0, ObjectType);
  }

  else
  {

    v4 = v0[1];

    return v4(0);
  }
}

uint64_t sub_219A7BCBC(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6(0);
  }

  else
  {
    *(v4 + 80) = a1;

    return MEMORY[0x2822009F8](sub_219A7BE14, 0, 0);
  }
}

void sub_219A7BE14()
{
  v1 = [*(v0 + 80) puzzlesConfig];
  swift_unknownObjectRelease();
  v2 = [v1 streakLapseNotificationMinimumStreakCount];

  if ((sub_219BF15A4() & 1) != 0 && *(v0 + 64) >= v2)
  {
    v3 = 0;
    v4 = *(v0 + 32);
    v5 = *(v0 + 48) + 40;
    v6 = 1;
    while (1)
    {
      if (v3 >= *(*(v0 + 48) + 16))
      {
        __break(1u);
        return;
      }

      __swift_project_boxed_opaque_existential_1((v4 + 96), *(v4 + 120));

      if (sub_219BF3414())
      {

        break;
      }

      __swift_project_boxed_opaque_existential_1((v4 + 96), *(v4 + 120));
      v7 = sub_219BF3424();

      if (v7)
      {
        v8 = [v7 usedReveal];
        if (v8)
        {
          v9 = v8;
          v10 = [v8 BOOLValue];

          v6 &= v10;
          goto LABEL_6;
        }
      }

      v6 = 0;
LABEL_6:
      ++v3;
      v5 += 16;
      if (v3 == *(v0 + 56))
      {

        v11 = v6 ^ 1;
        goto LABEL_15;
      }
    }
  }

  v11 = 0;
LABEL_15:
  v12 = *(v0 + 8);

  v12(v11 & 1);
}

uint64_t PuzzleStreakCheckNotificationCoordinator.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  __swift_destroy_boxed_opaque_existential_1(v0 + 96);
  __swift_destroy_boxed_opaque_existential_1(v0 + 136);
  swift_unknownObjectRelease();

  return v0;
}

uint64_t PuzzleStreakCheckNotificationCoordinator.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  __swift_destroy_boxed_opaque_existential_1(v0 + 96);
  __swift_destroy_boxed_opaque_existential_1(v0 + 136);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_219A7C0BC()
{
  if (qword_280E8D870 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  sub_219BE5314();
  sub_219A7C274(0, &qword_280EE6BB0, MEMORY[0x277D6CD60], MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE30B4();
}

uint64_t sub_219A7C1C0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2187608D4;

  return sub_219A79AC4(a1, v4, v5, v6);
}

void sub_219A7C274(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_219A7C2D8(uint64_t a1, uint64_t a2)
{
  sub_219A7C274(0, &qword_27CC1B138, MEMORY[0x277D333D8], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_219A7C36C(uint64_t a1, uint64_t a2)
{
  sub_219A7C274(0, &qword_27CC1B138, MEMORY[0x277D333D8], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_219A7C400(uint64_t a1)
{
  sub_219A7C274(0, &qword_27CC1B138, MEMORY[0x277D333D8], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_219A7C490(uint64_t *a1, void *a2, void *a3, char a4)
{
  v6 = *a1;
  v7 = a2[10];
  v8 = a2[11];
  __swift_project_boxed_opaque_existential_1(a2 + 7, v7);
  v9 = (*(v8 + 8))(v6, nullsub_1, 0, v7, v8);
  [a3 presentViewController:v9 animated:a4 & 1 completion:0];
}

uint64_t sub_219A7C568(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  __swift_project_boxed_opaque_existential_1((*v4 + 16), *(*v4 + 40));
  sub_219BDE774();
  __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  sub_219BDDD04();
  v7 = sub_219BE1C44();
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  v9 = a3;
  sub_219BE2F94();

  return __swift_destroy_boxed_opaque_existential_1(v11);
}

uint64_t sub_219A7C700()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v2 = Strong;
    if ([*(Strong + OBJC_IVAR____TtC7NewsUI226RecipeBoxSearchStartupTask_featureAvailability) useFood])
    {
      v0[7] = *(v2 + OBJC_IVAR____TtC7NewsUI226RecipeBoxSearchStartupTask_recipeBoxSearchDatabase);
      v3 = (v2 + OBJC_IVAR____TtC7NewsUI226RecipeBoxSearchStartupTask_recipeBox);
      v4 = *(v2 + OBJC_IVAR____TtC7NewsUI226RecipeBoxSearchStartupTask_recipeBox + 24);
      v5 = v3[4];
      __swift_project_boxed_opaque_existential_1(v3, v4);
      swift_unknownObjectRetain();
      v6 = swift_task_alloc();
      v0[8] = v6;
      *v6 = v0;
      v6[1] = sub_219A7C924;

      return MEMORY[0x28218EA38](v4, v5);
    }

    if (qword_280EE5F38 != -1)
    {
      swift_once();
    }

    v7 = sub_219BE5434();
    __swift_project_value_buffer(v7, qword_280F62568);
    v8 = sub_219BE5414();
    v9 = sub_219BF6214();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2186C1000, v8, v9, "RecipeBoxSearchStartupTask will not run when food feature is disabled", v10, 2u);
      MEMORY[0x21CECF960](v10, -1, -1);
    }
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_219A7C924(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  v4[9] = a1;
  v4[10] = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_219A7CC70, 0, 0);
  }

  else
  {
    v6 = swift_task_alloc();
    v4[11] = v6;
    *v6 = v5;
    v6[1] = sub_219A7CAA8;

    return sub_21976AAA0(a1);
  }
}

uint64_t sub_219A7CAA8()
{
  *(*v1 + 96) = v0;

  if (v0)
  {

    swift_unknownObjectRelease();
    v2 = sub_219A7CC0C;
  }

  else
  {
    swift_unknownObjectRelease();

    v2 = sub_21936A5F0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_219A7CC0C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_219A7CC70()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

void sub_219A7CCDC(void *a1)
{
  if (qword_280EE5F38 != -1)
  {
    swift_once();
  }

  v2 = sub_219BE5434();
  __swift_project_value_buffer(v2, qword_280F62568);
  v3 = a1;
  oslog = sub_219BE5414();
  v4 = sub_219BF61F4();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    v7 = a1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_2186C1000, oslog, v4, "RecipeBoxSearchStartupTask failed to refresh RecipeBoxSearchDatabase with error=%{public}@", v5, 0xCu);
    sub_218962D30(v6);
    MEMORY[0x21CECF960](v6, -1, -1);
    MEMORY[0x21CECF960](v5, -1, -1);
  }
}

uint64_t sub_219A7CE28()
{
  v1 = OBJC_IVAR____TtC7NewsUI226RecipeBoxSearchStartupTask_executionPhase;
  v2 = sub_219BE2C14();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC7NewsUI226RecipeBoxSearchStartupTask_recipeBox);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_219A7CEFC()
{
  sub_21879D924();
  swift_allocObject();
  swift_weakInit();
  sub_219BE2F54();
  v0 = sub_219BE2E54();
  v1 = sub_219BE2FD4();

  return v1;
}

uint64_t sub_219A7CFAC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2187608D4;

  return sub_219A7C6E0(a1, v1);
}

uint64_t sub_219A7D080(void *a1)
{
  sub_219A7D990(0, &qword_280E8C5D0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219A7D87C();
  sub_219BF7B44();
  v9[15] = 0;
  sub_219BED8D4();
  sub_219A7D9F4(&qword_280E92640, MEMORY[0x277D31C50]);
  sub_219BF7834();
  if (!v1)
  {
    type metadata accessor for CuratedAudioFeedGroup();
    v9[14] = 1;
    sub_219BF77F4();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_219A7D24C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = sub_219BED8D4();
  v26 = *(v4 - 8);
  v27 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219A7D990(0, &qword_27CC22E98, MEMORY[0x277D844C8]);
  v28 = v7;
  v25 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v23 - v8;
  v10 = type metadata accessor for CuratedAudioFeedGroup();
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219A7D87C();
  sub_219BF7B34();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v23 = v12;
  v13 = v25;
  v14 = v26;
  v30 = 0;
  sub_219A7D9F4(&unk_280E92630, MEMORY[0x277D31C50]);
  v15 = v27;
  sub_219BF7734();
  (*(v14 + 32))(v23, v6, v15);
  v29 = 1;
  v16 = sub_219BF76F4();
  v18 = v17;
  (*(v13 + 8))(v9, v28);
  v20 = v23;
  v19 = v24;
  v21 = &v23[*(v10 + 20)];
  *v21 = v16;
  v21[1] = v18;
  sub_219A7D8D0(v20, v19);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_219A7D934(v20);
}

uint64_t sub_219A7D58C(uint64_t a1)
{
  v2 = sub_219A7D87C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219A7D5C8(uint64_t a1)
{
  v2 = sub_219A7D87C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_219A7D634(uint64_t a1)
{
  v2 = sub_219A7D9F4(&qword_280ECB830, type metadata accessor for CuratedAudioFeedGroup);

  return MEMORY[0x282191938](a1, v2);
}

uint64_t sub_219A7D6A0(void *a1)
{
  a1[1] = sub_219A7D9F4(&qword_280ECB830, type metadata accessor for CuratedAudioFeedGroup);
  a1[2] = sub_219A7D9F4(&qword_280ECB808, type metadata accessor for CuratedAudioFeedGroup);
  result = sub_219A7D9F4(&qword_280ECB818, type metadata accessor for CuratedAudioFeedGroup);
  a1[3] = result;
  return result;
}

uint64_t sub_219A7D824(uint64_t a1)
{
  result = sub_219A7D9F4(&qword_280ECB800, type metadata accessor for CuratedAudioFeedGroup);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_219A7D87C()
{
  result = qword_280ECB848[0];
  if (!qword_280ECB848[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280ECB848);
  }

  return result;
}

uint64_t sub_219A7D8D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CuratedAudioFeedGroup();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_219A7D934(uint64_t a1)
{
  v2 = type metadata accessor for CuratedAudioFeedGroup();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_219A7D990(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_219A7D87C();
    v7 = a3(a1, &type metadata for CuratedAudioFeedGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_219A7D9F4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_219A7DA50()
{
  result = qword_27CC22EA0;
  if (!qword_27CC22EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC22EA0);
  }

  return result;
}

unint64_t sub_219A7DAA8()
{
  result = qword_280ECB838;
  if (!qword_280ECB838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECB838);
  }

  return result;
}

unint64_t sub_219A7DB00()
{
  result = qword_280ECB840;
  if (!qword_280ECB840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECB840);
  }

  return result;
}

uint64_t sub_219A7DB54(void *a1, uint64_t a2)
{
  sub_219A7E05C(0, &qword_27CC22EB8, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219A7E008();
  sub_219BF7B44();
  v10[1] = a2;
  sub_218C42690();
  sub_219BF7834();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_219A7DCC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7265746C6966 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_219BF78F4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_219A7DD44(uint64_t a1)
{
  v2 = sub_219A7E008();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219A7DD80(uint64_t a1)
{
  v2 = sub_219A7E008();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_219A7DDBC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_219A7DE70(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_219A7DE04()
{
  v1 = sub_21965BADC(*v0);
  MEMORY[0x21CECC330](v1);

  return 0x3D7265746C6966;
}

void *sub_219A7DE70(void *a1)
{
  sub_219A7E05C(0, &qword_27CC22EA8, MEMORY[0x277D844C8]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v10 - v6;
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219A7E008();
  sub_219BF7B34();
  if (!v1)
  {
    sub_218C4263C();
    sub_219BF7734();
    (*(v5 + 8))(v7, v4);
    v8 = v10[1];
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

unint64_t sub_219A7E008()
{
  result = qword_27CC22EB0;
  if (!qword_27CC22EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC22EB0);
  }

  return result;
}

void sub_219A7E05C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_219A7E008();
    v7 = a3(a1, &type metadata for SportsScoreSortingNotFilter.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_219A7E0D4()
{
  result = qword_27CC22EC0;
  if (!qword_27CC22EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC22EC0);
  }

  return result;
}

unint64_t sub_219A7E12C()
{
  result = qword_27CC22EC8;
  if (!qword_27CC22EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC22EC8);
  }

  return result;
}

unint64_t sub_219A7E184()
{
  result = qword_27CC22ED0;
  if (!qword_27CC22ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC22ED0);
  }

  return result;
}

uint64_t sub_219A7E1E8()
{
  sub_219BF7AA4();
  sub_219BF5524();
  return sub_219BF7AE4();
}

uint64_t sub_219A7E234()
{
  sub_219BF7AA4();
  sub_219BF5524();
  return sub_219BF7AE4();
}

uint64_t sub_219A7E278()
{
  v1 = *(v0 + OBJC_IVAR____TtC7NewsUI233BundleSubscriberAdSegmentProvider_subscriptionManager);
  v2 = [v1 cachedSubscription];
  if (objc_getAssociatedObject(v2, v2 + 1))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v33 = 0u;
    v34 = 0u;
  }

  v35 = v33;
  v36 = v34;
  if (!*(&v34 + 1))
  {
    sub_218806FD0(&v35);
    goto LABEL_9;
  }

  sub_21870AD58();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v3 = 0;
    v5 = 0;
    goto LABEL_10;
  }

  v3 = v31;
  v4 = [v31 integerValue];
  if (v4 == -1)
  {

    goto LABEL_21;
  }

  v5 = v4;
LABEL_10:
  if (objc_getAssociatedObject(v2, ~v5))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v33 = 0u;
    v34 = 0u;
  }

  v35 = v33;
  v36 = v34;
  if (!*(&v34 + 1))
  {
    sub_218806FD0(&v35);
LABEL_18:

    if ((v5 & 1) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_21;
  }

  sub_21870AD58();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_18;
  }

  v6 = v31;
  v7 = [v6 integerValue];

  if (((v7 ^ v5) & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_21:
  v8 = [v1 cachedSubscription];
  v9 = [v8 bundlePurchaseID];

  if (!v9)
  {
LABEL_33:
    *&v35 = MEMORY[0x277D84F90];
    goto LABEL_36;
  }

  v10 = sub_219BF5414();
  v12 = v11;

  v13 = [v1 cachedSubscription];
  v14 = [v13 isServicesBundleUser];

  if (v14 && (v15 = [v1 cachedSubscription], v16 = objc_msgSend(v15, sel_servicesBundlePurchaseID), v15, v16))
  {
    v17 = sub_219BF5414();
    v19 = v18;

    v20 = 0;
    v32[0] = v12;
    v32[1] = v17;
    v32[2] = v19;
    v21 = MEMORY[0x277D84F90];
LABEL_25:
    v22 = &v32[2 * v20];
    while (++v20 != 3)
    {
      v23 = v22 + 2;
      v24 = *v22;
      v22 += 2;
      if (v24)
      {
        v25 = *(v23 - 3);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_218840D24(0, *(v21 + 2) + 1, 1, v21);
        }

        v27 = *(v21 + 2);
        v26 = *(v21 + 3);
        if (v27 >= v26 >> 1)
        {
          v21 = sub_218840D24((v26 > 1), v27 + 1, 1, v21);
        }

        *(v21 + 2) = v27 + 1;
        v28 = &v21[16 * v27];
        *(v28 + 4) = v25;
        *(v28 + 5) = v24;
        goto LABEL_25;
      }
    }

    sub_2186F8778(0, &qword_280E8F860, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    swift_arrayDestroy();
    *&v35 = v21;
  }

  else
  {
    sub_2186F8778(0, &qword_280E8B750, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_219C09BA0;
    *(v29 + 32) = v10;
    *(v29 + 40) = v12;
    *&v35 = v29;
  }

LABEL_36:
  sub_218A15E44();
  swift_allocObject();
  return sub_219BE3014();
}

void sub_219A7E758(void *a1)
{
  v1 = a1;

  sub_219BE21B4();
}

uint64_t sub_219A7E7D8(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v4 = v3;
  v34 = a3;
  v35 = a2;
  v33 = sub_219BE6DF4();
  v31 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2191ABA84(0, &qword_27CC0B708, MEMORY[0x277D6DF88]);
  v28 = *(v7 - 8);
  v29 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v26 - v8;
  sub_218E49B5C();
  MEMORY[0x28223BE20](v10 - 8);
  sub_2191ABA84(0, &qword_27CC0B150, MEMORY[0x277D6EC60]);
  v26 = *(v11 - 8);
  v27 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - v12;
  v37 = v4;
  v32 = a1;
  v14 = sub_218F8DE60(sub_219A7F568, v36);
  sub_218953B70();
  v16 = v15;
  v17 = sub_218701C74(&qword_27CC12A18, sub_218953B70);
  v18 = sub_218701C74(&qword_27CC12A20, sub_218953B70);
  MEMORY[0x21CEB9170](v14, v16, v17, v18);
  type metadata accessor for RecipeBoxSectionDescriptor();
  type metadata accessor for RecipeBoxModel(0);
  sub_218701C74(qword_280EBA6F0, type metadata accessor for RecipeBoxSectionDescriptor);
  sub_218701C74(&qword_280EDBED0, type metadata accessor for RecipeBoxModel);
  sub_219BEB2D4();
  type metadata accessor for RecipeBoxFeedServiceConfig();
  sub_218701C74(&qword_280EBA8B0, type metadata accessor for RecipeBoxFeedServiceConfig);
  sub_219BEF3D4();
  sub_219BEEFF4();
  sub_219BEEFE4();
  v19 = sub_219BEEFC4();

  v20 = 0;
  if (v19)
  {
    v20 = sub_219BEDC74();
  }

  else
  {
    v39 = 0;
    v40 = 0;
  }

  v38 = v19;
  v41 = v20;
  v21 = v27;
  sub_219BEB2C4();

  v23 = v30;
  v22 = v31;
  v24 = v33;
  (*(v31 + 104))(v30, *MEMORY[0x277D6D868], v33);
  sub_218701C74(&qword_27CC0B740, type metadata accessor for RecipeBoxSectionDescriptor);
  sub_219BE85E4();
  (*(v22 + 8))(v23, v24);
  v35(v9);
  (*(v28 + 8))(v9, v29);
  return (*(v26 + 8))(v13, v21);
}

uint64_t sub_219A7ED10@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v53 = a3;
  v5 = sub_219BF0BD4();
  v50 = *(v5 - 8);
  v51 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RecipeBoxFeedGroup();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for RecipeListRecipeBoxFeedGroup();
  MEMORY[0x28223BE20](v11);
  v13 = (&v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v16 = (&v47 - v15);
  v48 = type metadata accessor for RecipeBoxGapLocation(0);
  MEMORY[0x28223BE20](v48);
  v49 = (&v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = type metadata accessor for RecipeBoxSectionDescriptor();
  MEMORY[0x28223BE20](v18);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218953B70();
  v52 = v21;
  sub_219BE6934();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_218A5D838(v20, v16);
      v49 = a2[2];
      v23 = sub_218C57020(v49);
      v24 = v16[1];
      v48 = *v16;
      v25 = *(v11 + 20);
      v26 = sub_219BED8D4();
      (*(*(v26 - 8) + 16))(v13 + v25, v16 + v25, v26);
      v54 = *(v16 + *(v11 + 24));

      sub_2191ED69C(v23);
      v27 = v54;
      *v13 = v48;
      v13[1] = v24;
      *(v13 + *(v11 + 24)) = v27;
      __swift_project_boxed_opaque_existential_1(a2 + 3, a2[6]);
      sub_2189E4DA4(v13, v10);
      type metadata accessor for RecipeBoxFeedServiceConfig();
      sub_218701C74(&qword_280EBA8B0, type metadata accessor for RecipeBoxFeedServiceConfig);
      sub_219BEF3D4();
      sub_219BEE7A4();

      v28 = v53;
      sub_2199D0AE0(v10, v7, v53);
      (*(v50 + 8))(v7, v51);
      sub_219A7F620(v10, type metadata accessor for RecipeBoxFeedGroup);
      sub_219A7F620(v13, type metadata accessor for RecipeListRecipeBoxFeedGroup);
      v29 = v16;
      v30 = type metadata accessor for RecipeListRecipeBoxFeedGroup;
    }

    else
    {
      type metadata accessor for RecipeBoxFeedServiceConfig();
      sub_218701C74(&qword_280EBA8B0, type metadata accessor for RecipeBoxFeedServiceConfig);
      v35 = sub_219BEF3D4();
      if (sub_219BEF394())
      {
        v36 = sub_219BEE854();
        v28 = v53;
        if ((v36 & 1) == 0 || v35 < 0 || (sub_219BF09A4(), !v54) || (v37 = *(v54 + 24), , , v38 = *(v37 + 16), , !v38))
        {

          v33 = v52;
          v32 = *(v52 - 8);
          v34 = 1;
          return (*(v32 + 56))(v28, v34, 1, v33);
        }

        v39 = swift_allocObject();
        sub_219A7F584(0, &qword_27CC16F20, MEMORY[0x277D32188]);
        swift_allocObject();

        *(v39 + 16) = sub_219BEE874();
        v40 = v49;
        *v49 = v39;
        v41 = *MEMORY[0x277D33068];
        sub_219A7F584(0, &qword_280E909D8, MEMORY[0x277D33098]);
        (*(*(v42 - 8) + 104))(v40, v41, v42);
        swift_storeEnumTagMultiPayload();
        sub_21912EE84(v40, v28);
      }

      else
      {
        v43 = swift_allocObject();
        sub_219A7F584(0, &qword_27CC16F20, MEMORY[0x277D32188]);
        swift_allocObject();

        *(v43 + 16) = sub_219BEE874();
        v40 = v49;
        *v49 = v43;
        v44 = *MEMORY[0x277D33090];
        sub_219A7F584(0, &qword_280E909D8, MEMORY[0x277D33098]);
        (*(*(v45 - 8) + 104))(v40, v44, v45);
        swift_storeEnumTagMultiPayload();
        v28 = v53;
        sub_21912EE84(v40, v53);
      }

      v30 = type metadata accessor for RecipeBoxGapLocation;
      v29 = v40;
    }

    sub_219A7F620(v29, v30);
    v34 = 0;
    v33 = v52;
    v32 = *(v52 - 8);
  }

  else
  {
    sub_219A7F620(v20, type metadata accessor for RecipeBoxSectionDescriptor);
    v31 = v52;
    v28 = v53;
    v32 = *(v52 - 8);
    (*(v32 + 16))(v53, a1, v52);
    v33 = v31;
    v34 = 0;
  }

  return (*(v32 + 56))(v28, v34, 1, v33);
}

uint64_t sub_219A7F4D4(uint64_t a1)
{
  v2 = sub_21917FE20();

  return MEMORY[0x2821D4040](a1, v2);
}

unint64_t sub_219A7F514()
{
  result = qword_27CC22EF0;
  if (!qword_27CC22EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC22EF0);
  }

  return result;
}

void sub_219A7F584(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for RecipeBoxFeedServiceConfig();
    v7 = sub_218701C74(&qword_280EBA8B0, type metadata accessor for RecipeBoxFeedServiceConfig);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_219A7F620(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_219A7F680(unint64_t a1, uint64_t a2)
{
  v3 = a2;
  v5 = *(a2 + 16);

  if (!v5)
  {
LABEL_17:

    return 0;
  }

  v6 = 0;
  v7 = a1 + 56;
  while (1)
  {
    v8 = (v3 + 32 + 16 * v6);
    v10 = *v8;
    v9 = v8[1];
    if (!*(a1 + 16))
    {
      break;
    }

    sub_219BF7AA4();

    sub_219BF5524();
    v11 = sub_219BF7AE4();
    v12 = -1 << *(a1 + 32);
    v2 = v11 & ~v12;
    if (((*(v7 + ((v2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v2) & 1) == 0)
    {
LABEL_13:

      break;
    }

    v13 = ~v12;
    while (1)
    {
      v14 = (*(a1 + 48) + 16 * v2);
      v15 = *v14 == v10 && v14[1] == v9;
      if (v15 || (sub_219BF78F4() & 1) != 0)
      {
        break;
      }

      v2 = (v2 + 1) & v13;
      if (((*(v7 + ((v2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v2) & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    if (++v6 == v5)
    {
      goto LABEL_17;
    }
  }

  if (__OFADD__(v6, 1))
  {
    __break(1u);
    goto LABEL_29;
  }

  v2 = sub_219BC7A48(v6 + 1, v3);
  v19 = v18 >> 1;
  if (v17 != v18 >> 1)
  {
    v3 = v17;
    v5 = v16;
    a1 = v18;
    if ((v18 & 1) == 0)
    {

LABEL_20:
      sub_218B666EC(v2, v5, v3, a1);
      goto LABEL_26;
    }

    sub_219BF7934();
    swift_unknownObjectRetain_n();

    v20 = swift_dynamicCastClass();
    if (!v20)
    {
      swift_unknownObjectRelease();
      v20 = MEMORY[0x277D84F90];
    }

    v21 = *(v20 + 16);

    if (!__OFSUB__(v19, v3))
    {
      if (v21 == v19 - v3)
      {
        v22 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (v22)
        {
          return v10;
        }

LABEL_26:
        swift_unknownObjectRelease();
        return v10;
      }

      goto LABEL_30;
    }

LABEL_29:
    __break(1u);
LABEL_30:
    swift_unknownObjectRelease();
    goto LABEL_20;
  }

  swift_unknownObjectRelease();
  return v10;
}

uint64_t sub_219A7F8FC(void *a1)
{
  sub_219A8025C(0, &qword_27CC22F20, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219A80148();
  sub_219BF7B44();
  v9[15] = 0;
  sub_219BED8D4();
  sub_219A802C0(&qword_280E92640, MEMORY[0x277D31C50]);
  sub_219BF7834();
  if (!v1)
  {
    type metadata accessor for SavedStoriesTodayFeedGroup();
    v9[14] = 1;
    sub_219BF7824();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_219A7FAC4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v21 = sub_219BED8D4();
  v19 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219A8025C(0, &qword_27CC22F10, MEMORY[0x277D844C8]);
  v22 = v6;
  v20 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = type metadata accessor for SavedStoriesTodayFeedGroup();
  MEMORY[0x28223BE20](v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219A80148();
  sub_219BF7B34();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = v11;
  v12 = v19;
  v24 = 0;
  sub_219A802C0(&unk_280E92630, MEMORY[0x277D31C50]);
  v13 = v21;
  sub_219BF7734();
  v14 = v17;
  (*(v12 + 32))(v17, v5, v13);
  v23 = 1;
  v15 = sub_219BF7724();
  (*(v20 + 8))(v8, v22);
  *(v14 + *(v9 + 20)) = v15;
  sub_219A8019C(v14, v18);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_219A80200(v14);
}

uint64_t sub_219A7FE10(uint64_t a1)
{
  v2 = sub_219A80148();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219A7FE4C(uint64_t a1)
{
  v2 = sub_219A80148();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_219A7FFB8(uint64_t a1)
{
  result = sub_219A802C0(&qword_27CC0B980, type metadata accessor for SavedStoriesTodayFeedGroup);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_219A80010(uint64_t a1)
{
  v2 = sub_219A802C0(&qword_27CC22F08, type metadata accessor for SavedStoriesTodayFeedGroup);

  return MEMORY[0x282191938](a1, v2);
}

uint64_t sub_219A8009C(void *a1)
{
  a1[1] = sub_219A802C0(&qword_27CC22F08, type metadata accessor for SavedStoriesTodayFeedGroup);
  a1[2] = sub_219A802C0(&qword_27CC0B9C8, type metadata accessor for SavedStoriesTodayFeedGroup);
  result = sub_219A802C0(&qword_27CC0BA08, type metadata accessor for SavedStoriesTodayFeedGroup);
  a1[3] = result;
  return result;
}

unint64_t sub_219A80148()
{
  result = qword_27CC22F18;
  if (!qword_27CC22F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC22F18);
  }

  return result;
}

uint64_t sub_219A8019C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SavedStoriesTodayFeedGroup();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_219A80200(uint64_t a1)
{
  v2 = type metadata accessor for SavedStoriesTodayFeedGroup();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_219A8025C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_219A80148();
    v7 = a3(a1, &type metadata for SavedStoriesTodayFeedGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_219A802C0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_219A8031C()
{
  result = qword_27CC22F28;
  if (!qword_27CC22F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC22F28);
  }

  return result;
}

unint64_t sub_219A80374()
{
  result = qword_27CC22F30;
  if (!qword_27CC22F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC22F30);
  }

  return result;
}

unint64_t sub_219A803CC()
{
  result = qword_27CC22F38;
  if (!qword_27CC22F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC22F38);
  }

  return result;
}

uint64_t sub_219A80420()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    return swift_initClassMetadata2();
  }

  return result;
}

uint64_t sub_219A80500(char a1)
{
  v3 = *v1;
  if (swift_unknownObjectWeakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      *(swift_allocObject() + 16) = Strong;
      swift_unknownObjectRetain();
      sub_219BE3494();
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  sub_219BF5054();
  sub_219A80774(a1 & 1);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = off_282A32610[0];
    type metadata accessor for SavedFeedDataManager();
    if (v5())
    {
      v6 = 0;
    }

    else
    {
      v6 = sub_219BF1AE4() ^ 1;
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v7 = sub_21939713C();
      [v7 setEnabled_];
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = *(v3 + 80);
  *(v9 + 24) = *(v3 + 88);
  *(v9 + 32) = v8;
  *(v9 + 40) = a1 & 1;

  if ((a1 & 1) == 0)
  {

    return sub_219A8113C();
  }

  return result;
}

uint64_t sub_219A80774(char a1)
{
  if (qword_280E8D7A8 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  sub_219BE5314();
  v2 = CACurrentMediaTime();
  sub_219BE3204();
  sub_2187D9028();
  v3 = sub_219BF66A4();
  *(swift_allocObject() + 16) = a1 & 1;
  sub_219BE95D4();
  sub_219BE2F84();

  v4 = sub_219BF66A4();
  *(swift_allocObject() + 16) = v2;
  sub_219BE2F94();

  v5 = sub_219BF66A4();
  *(swift_allocObject() + 16) = v2;
  sub_219BE2FE4();
}

uint64_t sub_219A809F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v26 = a3;
  sub_218953E34();
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219A86F08();
  MEMORY[0x28223BE20](v13);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_219A874E8(a1, v15, sub_219A86F08);
    v17 = sub_219BF1584();
    if ((*(*(v17 - 8) + 48))(v15, 1, v17) == 1)
    {
      v25[0] = a4;
      v25[1] = a1;
      sub_219BE6EC4();
      v30 = v27;
      sub_2189878D4();
      sub_219A86654(&qword_280EE5480, sub_2189878D4);
      sub_219BE7B94();

      sub_219A86654(&qword_280EE3670, sub_218953E34);
      sub_219BF5DF4();
      sub_219BF5E84();
      (*(v10 + 8))(v12, v9);
      if (v29 == v28)
      {
        swift_beginAccess();
        if (swift_weakLoadStrong())
        {
          sub_219A80774(v26 & 1);
        }
      }

      else
      {
        v18 = v25[0];
        v30 = (*(a5 + 64))(v25[0], a5);
        v19 = swift_allocObject();
        swift_beginAccess();
        swift_weakLoadStrong();
        swift_weakInit();

        v20 = swift_allocObject();
        v20[2] = v18;
        v20[3] = a5;
        v20[4] = v19;
        sub_219224DF4();
        sub_219A86654(&qword_280EE5650, sub_219224DF4);

        sub_219BE6EF4();
      }
    }

    else
    {
      sub_219A87630(v15, sub_219A86F08);
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v21 = off_282A32610[0];
      type metadata accessor for SavedFeedDataManager();
      if (v21())
      {
        v22 = 0;
      }

      else
      {
        v22 = sub_219BF1B14() ^ 1;
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v23 = sub_21939713C();
        [v23 setEnabled_];
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        v24 = off_282A6CD38;
        type metadata accessor for SavedFeedViewController();
        v24();
        swift_unknownObjectRelease();
      }

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_219A80F4C(uint64_t a1)
{
  v2 = sub_219BE85F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(v3 + 16))(v5, a1, v2);
    if ((*(v3 + 88))(v5, v2) == *MEMORY[0x277D6DFA0])
    {
      (*(v3 + 8))(v5, v2);
      if (swift_unknownObjectWeakLoadStrong())
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          *(swift_allocObject() + 16) = Strong;
          swift_unknownObjectRetain();
          sub_219BE3494();
          swift_unknownObjectRelease();
        }

        return swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    else
    {

      return (*(v3 + 8))(v5, v2);
    }
  }

  return result;
}

uint64_t sub_219A8113C()
{
  v1 = v0;
  v21 = *v0;
  v2 = sub_219BE3514();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BE61B4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v19 - v11;
  sub_219BE6EC4();
  sub_219BE6F74();

  (*(v7 + 104))(v9, *MEMORY[0x277D6D520], v6);
  v13 = sub_219BE61A4();
  v14 = *(v7 + 8);
  v14(v9, v6);
  if ((v13 & 1) == 0)
  {
    return (v14)(v12, v6);
  }

  v15 = *v1;
  v20 = v2;
  v16 = *(v15 + 168);
  sub_218718690(v1 + v16, v22);
  v19 = v24;
  __swift_project_boxed_opaque_existential_1(v22, v23);
  swift_getWitnessTable();
  sub_219BE3A24();
  __swift_destroy_boxed_opaque_existential_1(v22);
  sub_218718690(v1 + v16, v22);
  __swift_project_boxed_opaque_existential_1(v22, v23);
  v17 = v20;
  (*(v3 + 104))(v5, *MEMORY[0x277D31478], v20);
  sub_219BE3A34();
  (*(v3 + 8))(v5, v17);
  v14(v12, v6);
  return __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t sub_219A8144C()
{
  v1 = *v0;
  sub_218953E34();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE6EC4();
  v7 = sub_218982830();

  if ((v7 & 1) != 0 && swift_unknownObjectWeakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      *(swift_allocObject() + 16) = Strong;
      swift_unknownObjectRetain();
      sub_219BE3494();
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  sub_219BE6EC4();
  v13[0] = v13[1];
  sub_2189878D4();
  sub_219A86654(&qword_280EE5480, sub_2189878D4);
  sub_219BE7B94();

  v9 = sub_21937B92C();
  (*(v4 + 8))(v6, v3);
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = *(v1 + 80);
  *(v11 + 24) = *(v1 + 88);
  *(v11 + 32) = v10;
  *(v11 + 40) = HIBYTE(v7) & 1;
  *(v11 + 41) = (v9 & 1) == 0;

  sub_219BE6F24();
}

uint64_t sub_219A81700(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if ((a3 & 1) != 0 && swift_unknownObjectWeakLoadStrong())
    {
      type metadata accessor for SavedFeedInteractor();

      sub_218D2F250();

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_219A817D4()
{
  swift_getObjectType();
  sub_219BEADA4();
  sub_219BE70A4();
}

uint64_t sub_219A81860(void *a1)
{
  v61 = a1;
  v58 = *v1;
  v52 = type metadata accessor for SavedFeedExpandRequest();
  MEMORY[0x28223BE20](v52);
  v60 = (&v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v59 = type metadata accessor for SavedFeedModel(0);
  MEMORY[0x28223BE20](v59);
  v4 = (&v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for SavedFeedGapLocation(0);
  v53 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v54 = v6;
  v55 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v56 = &v47 - v8;
  sub_219A865F0(0, &unk_280EE5C30, sub_218A74FF4, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v47 - v10;
  sub_218A74FF4();
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v62 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218953E34();
  v17 = v16;
  v18 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = v1;
  sub_219BE6EC4();
  v65 = *&v64[0];
  sub_2189878D4();
  sub_219A86654(&qword_280EE5480, sub_2189878D4);
  v21 = v17;
  v22 = v61;
  sub_219BE7B94();

  __swift_project_boxed_opaque_existential_1(v22, v22[3]);
  sub_219BE1D74();
  sub_219BEB1C4();
  v23 = v13;

  v63 = v14;
  if ((*(v14 + 48))(v11, 1, v13) == 1)
  {
    sub_219A875C0(v11, &unk_280EE5C30, sub_218A74FF4);
    v24 = v22;
    v25 = v20;
    v26 = v24[3];
    v27 = v24[4];
    __swift_project_boxed_opaque_existential_1(v24, v26);
    MEMORY[0x21CEC0B20](0, v26, v27);
    return (*(v18 + 8))(v25, v21);
  }

  else
  {
    v50 = v20;
    v51 = v18;
    (*(v63 + 32))(v62, v11, v13);
    sub_219BE5FC4();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v29 = *v4;
      v30 = v4[1];
      sub_218E32330();
      v32 = *(v31 + 48);
      v49 = type metadata accessor for SavedFeedGapLocation;
      v33 = v56;
      sub_21880BC4C(v4 + v32, v56, type metadata accessor for SavedFeedGapLocation);
      v34 = *(v52 + 5);
      v52 = type metadata accessor for SavedFeedGapLocation;
      v35 = v60;
      v36 = sub_219A874E8(v33, v60 + v34, type metadata accessor for SavedFeedGapLocation);
      v59 = v23;
      *v35 = v29;
      v35[1] = v30;
      MEMORY[0x28223BE20](v36);
      *(&v47 - 2) = v57;
      *(&v47 - 1) = v35;
      sub_219BE3204();
      sub_2187D9028();
      v37 = sub_219BF66A4();
      sub_219BE95D4();
      v38 = v58;
      sub_219BE2F84();

      v39 = sub_219BF66A4();
      sub_218718690(v22, v64);
      v40 = swift_allocObject();
      v48 = v21;
      sub_2186CB1F0(v64, v40 + 16);
      sub_219BE2F94();

      v41 = sub_219BF66A4();
      sub_218718690(v22, v64);
      v42 = v55;
      sub_219A874E8(v33, v55, v52);
      v43 = (*(v53 + 80) + 72) & ~*(v53 + 80);
      v44 = swift_allocObject();
      *(v44 + 16) = *(v38 + 80);
      *(v44 + 24) = *(v38 + 88);
      sub_2186CB1F0(v64, v44 + 32);
      sub_21880BC4C(v42, v44 + v43, v49);
      sub_219BE2FE4();

      sub_219A87630(v33, type metadata accessor for SavedFeedGapLocation);
      (*(v63 + 8))(v62, v59);
      (*(v51 + 8))(v50, v48);
      return sub_219A87630(v60, type metadata accessor for SavedFeedExpandRequest);
    }

    else
    {
      sub_219A87630(v4, type metadata accessor for SavedFeedModel);
      v45 = v22[3];
      v46 = v22[4];
      __swift_project_boxed_opaque_existential_1(v22, v45);
      MEMORY[0x21CEC0B20](0, v45, v46);
      (*(v63 + 8))(v62, v23);
      return (*(v51 + 8))(v50, v21);
    }
  }
}

uint64_t sub_219A8205C(void *a1, uint64_t a2)
{
  (*(*(*a2 + 88) + 48))(*a1, a1[1], a1[2], *(*a2 + 80));
  sub_219224DF4();
  sub_219A86654(&qword_280EE5650, sub_219224DF4);
  v2 = sub_219BE6E84();

  return v2;
}

uint64_t sub_219A82164(uint64_t a1, uint64_t a2, void *a3)
{
  v10[1] = a1;
  sub_218953E34();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE6EC4();
  v10[3] = v10[5];
  sub_2189878D4();
  sub_219A86654(&qword_280EE5480, sub_2189878D4);
  sub_219BE7B94();

  sub_21937B92C();
  (*(v6 + 8))(v8, v5);
  if (swift_unknownObjectWeakLoadStrong())
  {
    type metadata accessor for SavedFeedInteractor();
    sub_218D2F250();
    swift_unknownObjectRelease();
  }

  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  return sub_219BE9D74();
}

uint64_t sub_219A82350(void *a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v7 = *a2;
  v8 = type metadata accessor for SavedFeedFailedData();
  MEMORY[0x28223BE20](v8);
  v10 = (v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (sub_219BE81D4())
  {
    v11 = a3[3];
    v12 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v11);
    return MEMORY[0x21CEC0B20](0, v11, v12);
  }

  else
  {
    v27 = a4;
    v28 = v7;
    if (qword_280E8D7A8 != -1)
    {
      swift_once();
    }

    v26 = qword_280F616E0;
    v25[1] = sub_219BF61F4();
    sub_2186F20D4();
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_219C09EC0;
    *&v29[0] = 0;
    *(&v29[0] + 1) = 0xE000000000000000;
    sub_2186CFDE4(0, &unk_280EE3DF0);
    sub_219BF7484();
    v15 = v29[0];
    v16 = MEMORY[0x277D837D0];
    *(v14 + 56) = MEMORY[0x277D837D0];
    v17 = sub_2186FC3BC();
    *(v14 + 64) = v17;
    *(v14 + 32) = v15;
    *&v29[0] = 0;
    *(&v29[0] + 1) = 0xE000000000000000;
    v30 = a1;
    sub_2186CFDE4(0, &qword_280E8B580);
    sub_219BF7484();
    v18 = v29[0];
    *(v14 + 96) = v16;
    *(v14 + 104) = v17;
    *(v14 + 72) = v18;
    sub_219BE5314();

    __swift_project_boxed_opaque_existential_1(a3, a3[3]);
    v19 = sub_219BE1D74();
    v21 = v20;
    sub_219A874E8(v27, v10 + *(v8 + 20), type metadata accessor for SavedFeedGapLocation);
    *v10 = v19;
    v10[1] = v21;
    v22 = (*(*(v28 + 88) + 72))(v10, *(v28 + 80));
    sub_219A87630(v10, type metadata accessor for SavedFeedFailedData);
    v30 = v22;
    sub_218718690(a3, v29);
    v23 = swift_allocObject();
    sub_2186CB1F0(v29, v23 + 16);
    *(v23 + 56) = a1;
    v24 = a1;
    sub_219224DF4();
    sub_219A86654(&qword_280EE5650, sub_219224DF4);
    sub_219BE6EF4();
  }
}

uint64_t sub_219A826FC(uint64_t a1, char a2, uint64_t a3)
{
  v21 = a3;
  sub_219A865F0(0, &qword_27CC115F0, type metadata accessor for SavedFeedRouteModel, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v20 - v6;
  v8 = type metadata accessor for SavedFeedRouteModel();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BDE294();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x277D2FEF8];
  if ((a2 & 1) == 0)
  {
    v17 = MEMORY[0x277D2FF08];
  }

  (*(v13 + 104))(v16, *v17, v12, v14);
  sub_219A82A18(a1, v16, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    (*(v13 + 8))(v16, v12);
    return sub_219A875C0(v7, &qword_27CC115F0, type metadata accessor for SavedFeedRouteModel);
  }

  else
  {
    sub_21880BC4C(v7, v11, type metadata accessor for SavedFeedRouteModel);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      __swift_project_boxed_opaque_existential_1((Strong + 48), *(Strong + 72));
      sub_2196CCD54(v11, v21);
      sub_219A87630(v11, type metadata accessor for SavedFeedRouteModel);
      (*(v13 + 8))(v16, v12);
      return swift_unknownObjectRelease();
    }

    else
    {
      sub_219A87630(v11, type metadata accessor for SavedFeedRouteModel);
      return (*(v13 + 8))(v16, v12);
    }
  }
}

uint64_t sub_219A82A18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v59 = a2;
  v62 = a3;
  v57 = *v4;
  v6 = sub_219BDE744();
  v60 = *(v6 - 8);
  v61 = v6;
  MEMORY[0x28223BE20](v6);
  v58 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BF0634();
  v54 = *(v8 - 8);
  v55 = v8;
  MEMORY[0x28223BE20](v8);
  v56 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x277D83D88];
  sub_219A865F0(0, &unk_280EE8AA0, MEMORY[0x277D30260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v11 - 8);
  v51 = &v48 - v12;
  sub_219A865F0(0, &unk_280EE8C40, MEMORY[0x277D30018], v10);
  MEMORY[0x28223BE20](v13 - 8);
  v49 = &v48 - v14;
  sub_218A74FF4();
  v16 = v15;
  v17 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_219BDE7A4();
  v52 = *(v20 - 8);
  v53 = v20;
  MEMORY[0x28223BE20](v20);
  v50 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218985EAC();
  v23 = v22;
  v24 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v26 = &v48 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for SavedFeedModel(0);
  MEMORY[0x28223BE20](v27);
  v29 = &v48 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE5FC4();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v48 = v24;
      v40 = *(v24 + 32);
      v41 = v23;
      v40(v26, v29, v23);
      (*(v17 + 16))(v19, a1, v16);
      sub_219BF07D4();
      swift_unknownObjectRetain();

      v42 = sub_219BDE4D4();
      (*(*(v42 - 8) + 56))(v49, 1, 1, v42);
      v43 = sub_219BDEA34();
      (*(*(v43 - 8) + 56))(v51, 1, 1, v43);
      (*(v54 + 104))(v56, *MEMORY[0x277D32E90], v55);
      sub_219A86654(&unk_280EDBC60, type metadata accessor for SavedFeedModel);
      v44 = v50;
      sub_219BDE794();
      swift_getWitnessTable();
      v45 = v58;
      sub_219BDEB64();
      sub_219BDE734();
      sub_219BDEC64();

      v39 = v62;
      sub_219BDE724();
      (*(v60 + 8))(v45, v61);
      (*(v52 + 8))(v44, v53);
      (*(v48 + 8))(v26, v41);
      v38 = 0;
      goto LABEL_10;
    }

    sub_218A7535C();
    v33 = *(v32 + 48);
    v34 = sub_219BF1584();
    (*(*(v34 - 8) + 8))(&v29[v33], v34);
    v31 = type metadata accessor for SavedFeedGapLocation;
  }

  else
  {
    if (EnumCaseMultiPayload)
    {

      sub_218E32330();
      v35 = type metadata accessor for SavedFeedGapLocation;
      v36 = &v29[*(v37 + 48)];
      goto LABEL_8;
    }

    v31 = type metadata accessor for SavedFeedModel;
  }

  v35 = v31;
  v36 = v29;
LABEL_8:
  sub_219A87630(v36, v35);
  v38 = 1;
  v39 = v62;
LABEL_10:
  v46 = type metadata accessor for SavedFeedRouteModel();
  return (*(*(v46 - 8) + 56))(v39, v38, 1, v46);
}

uint64_t sub_219A83188(uint64_t *a1, void *a2, char a3)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = *a2;
  if (a3)
  {
    v7 = 0;
  }

  else
  {
    v7 = [*(a2 + v6[23]) useFood];
  }

  v9 = v6[10];
  v8 = v6[11];
  (*(v8 + 40))(v4, v3, v5, v7, v9, v8);
  sub_219224DF4();
  sub_219A86654(&qword_280EE5650, sub_219224DF4);
  sub_219BE6E84();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = v8;
  v10[4] = v4;
  v10[5] = v3;
  v10[6] = v5;

  v11 = sub_219BE2E54();
  sub_219BE95D4();
  v12 = sub_219BE2F74();

  return v12;
}

uint64_t sub_219A83358@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for SavedFeedServiceConfig();
  sub_219A86654(&qword_280EC6CF0, type metadata accessor for SavedFeedServiceConfig);
  if ((sub_219BEF394() & 1) != 0 && (v4 = *(sub_219BEF3E4() + 16), , !v4))
  {
    type metadata accessor for SavedFeedInteractor.Errors();
    swift_getWitnessTable();
    swift_allocError();
    return swift_willThrow();
  }

  else
  {
    v5 = sub_219BE95D4();
    return (*(*(v5 - 8) + 16))(a2, a1, v5);
  }
}

uint64_t sub_219A834AC()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      *(swift_allocObject() + 16) = Strong;
      swift_unknownObjectRetain();
      sub_219BE3494();
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  if (qword_280E8D7A8 != -1)
  {
    swift_once();
  }

  sub_2186F20D4();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_219C09BA0;
  sub_219BF5CD4();
  v2 = MEMORY[0x277D83A80];
  *(v1 + 56) = MEMORY[0x277D839F8];
  *(v1 + 64) = v2;
  *(v1 + 32) = v3;
  sub_219BF6214();
  sub_219BE5314();
}

uint64_t sub_219A8360C(void *a1)
{
  if (qword_280E8D7A8 != -1)
  {
    swift_once();
  }

  sub_219BF61F4();
  sub_2186F20D4();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_219C09EC0;
  sub_219BF5CD4();
  v3 = MEMORY[0x277D83A80];
  *(v2 + 56) = MEMORY[0x277D839F8];
  *(v2 + 64) = v3;
  *(v2 + 32) = v4;
  sub_2186CFDE4(0, &qword_280E8B580);
  sub_219BF7484();
  *(v2 + 96) = MEMORY[0x277D837D0];
  *(v2 + 104) = sub_2186FC3BC();
  *(v2 + 72) = 0;
  *(v2 + 80) = 0xE000000000000000;
  sub_219BE5314();

  return sub_219A83778(a1);
}

uint64_t sub_219A83778(void *a1)
{
  v2 = sub_219BF1584();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v24 - v7;
  sub_219A86F08();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[1] = a1;
  v12 = a1;
  sub_2186CFDE4(0, &qword_280E8B580);
  type metadata accessor for SavedFeedInteractor.Errors();
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    sub_219BF1B74();
    if ((*(v3 + 48))(v11, 1, v2) == 1)
    {
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        if (qword_27CC07F48 != -1)
        {
          swift_once();
        }

        v14 = __swift_project_value_buffer(v2, qword_27CCD8578);
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v16 = Strong;
          (*(v3 + 16))(v8, v14, v2);
          v17 = (*(v3 + 80) + 24) & ~*(v3 + 80);
          v18 = swift_allocObject();
          *(v18 + 16) = v16;
          (*(v3 + 32))(v18 + v17, v8, v2);
          swift_unknownObjectRetain();
          sub_219BE3494();

          swift_unknownObjectRelease();
        }

        return swift_unknownObjectRelease();
      }
    }

    else
    {
      v19 = *(v3 + 32);
      v19(v5, v11, v2);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v20 = swift_unknownObjectWeakLoadStrong();
        if (v20)
        {
          v21 = v20;
          (*(v3 + 16))(v8, v5, v2);
          v22 = (*(v3 + 80) + 24) & ~*(v3 + 80);
          v23 = swift_allocObject();
          *(v23 + 16) = v21;
          v19((v23 + v22), v8, v2);
          swift_unknownObjectRetain();
          sub_219BE3494();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }

      return (*(v3 + 8))(v5, v2);
    }
  }

  return result;
}

uint64_t *sub_219A83B64()
{
  v1 = *v0;
  sub_218774F78((v0 + 2));

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 112));
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + *(*v0 + 168));
  __swift_destroy_boxed_opaque_existential_1(v0 + *(*v0 + 176));
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_219A83D04()
{
  sub_219A83B64();

  return swift_deallocClassInstance();
}

uint64_t sub_219A83D8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = a3;
  v26 = a4;
  v27 = a1;
  v28 = a2;
  v29 = *v5;
  v30 = a5;
  refreshed = type metadata accessor for SavedFeedRefreshRequest();
  MEMORY[0x28223BE20](refreshed);
  v8 = (&v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218953E34();
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (swift_unknownObjectWeakLoadStrong())
  {
    if (*(v30 + 16))
    {
      v14 = sub_219BF1AE4() ^ 1;
    }

    else
    {
      v14 = 0;
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v15 = sub_21939713C();
      [v15 setEnabled_];
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  sub_219BE6EC4();
  v31 = v32;
  sub_2189878D4();
  sub_219A86654(&qword_280EE5480, sub_2189878D4);
  sub_219BE7B94();

  v16 = sub_21937B808();
  (*(v11 + 8))(v13, v10);
  if ((~v16 & 0xF000000000000007) != 0)
  {
    type metadata accessor for SavedFeedServiceConfig();
    sub_219A86654(&qword_280EC6CF0, type metadata accessor for SavedFeedServiceConfig);
    v18 = v25;

    v19 = v26;

    v20 = v30;

    v21 = sub_219BEE7A4();
    *v8 = v18;
    v8[1] = v19;
    v8[2] = v20;
    MEMORY[0x28223BE20](v21);
    v22 = v28;
    *(&v25 - 4) = v27;
    *(&v25 - 3) = v22;
    *(&v25 - 2) = v8;
    type metadata accessor for SavedFeedRefreshResult();
    sub_219BE3204();
    sub_2187D9028();
    v23 = sub_219BF66A4();
    v24 = swift_allocObject();
    *(v24 + 16) = v5;
    *(v24 + 24) = v20;

    sub_219BE2F94();
    sub_21885AB78(v16);

    return sub_219A87630(v8, type metadata accessor for SavedFeedRefreshRequest);
  }

  else
  {
    if (qword_280E8D7A8 != -1)
    {
      swift_once();
    }

    sub_219BF61F4();
    return sub_219BE5314();
  }
}

uint64_t sub_219A841F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  refreshed = type metadata accessor for SavedFeedRefreshRequest();
  v6 = *(refreshed - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](refreshed - 8);
  v8 = CACurrentMediaTime();
  if (qword_280E8D7A8 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  v9 = sub_219BE5314();
  MEMORY[0x28223BE20](v9);
  v15[-2] = a1;
  v15[-1] = a3;
  sub_219A865F0(0, &qword_280E8EC00, sub_218731D50, MEMORY[0x277D83940]);
  sub_219BE3204();
  sub_219A874E8(a3, v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SavedFeedRefreshRequest);
  v10 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  sub_21880BC4C(v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for SavedFeedRefreshRequest);
  v12 = sub_219BE2E54();
  type metadata accessor for SavedFeedRefreshResult();
  v13 = sub_219BE2F64();

  return v13;
}

uint64_t sub_219A8446C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a2;
  sub_219BDEC34();
  (*(*(v7 + 88) + 56))(a1, *(v7 + 80));
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = a3;
  v9[4] = a4;
  sub_219224DF4();
  sub_219A86654(&qword_280EE5650, sub_219224DF4);

  sub_219BE6EF4();
}

uint64_t sub_219A84624(uint64_t a1)
{
  v2 = sub_219BE85F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(v3 + 16))(v5, a1, v2);
    v7 = (*(v3 + 88))(v5, v2);
    v8 = *MEMORY[0x277D6DF98];
    (*(v3 + 8))(v5, v2);
    if (v7 == v8)
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        if (swift_unknownObjectWeakLoadStrong())
        {
          v9 = sub_219BF6564();
          swift_unknownObjectRelease();
        }

        else
        {
          v9 = 1;
        }

        swift_unknownObjectRelease();
      }

      else
      {
        v9 = 1;
      }

      sub_219A80774(v9 & 1);
    }

    else if (swift_unknownObjectWeakLoadStrong())
    {
      type metadata accessor for SavedFeedInteractor();

      sub_218D2F250();
      swift_unknownObjectRelease();
    }

    sub_219BDEC84();
  }

  return result;
}

void sub_219A848B0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v54 = *v3;
  v5 = sub_219BE3794();
  v49 = *(v5 - 8);
  v50 = v5;
  MEMORY[0x28223BE20](v5);
  v58 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v59 = &v49 - v8;
  v9 = sub_219BE38C4();
  v56 = *(v9 - 8);
  v57 = v9;
  MEMORY[0x28223BE20](v9);
  v55 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219A865F0(0, &qword_280E918A8, MEMORY[0x277D322C0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v11 - 8);
  v53 = &v49 - v12;
  v13 = sub_219BE35B4();
  v51 = *(v13 - 8);
  v52 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_219BEEC14();
  v64 = *(v16 - 8);
  v65 = v16;
  MEMORY[0x28223BE20](v16);
  v63 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_219BE3514();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v62 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v49 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v49 - v25;
  v60 = a2;
  sub_219BE35A4();
  (*(v19 + 104))(v23, *MEMORY[0x277D31478], v18);
  sub_219A86654(&unk_280EE6680, MEMORY[0x277D31550]);
  sub_219BF5874();
  sub_219BF5874();
  if (v68 == v66 && v69 == v67)
  {
    v27 = 1;
  }

  else
  {
    v27 = sub_219BF78F4();
  }

  v28 = *(v19 + 8);
  v28(v23, v18);
  v61 = v28;
  v28(v26, v18);

  if (v27)
  {
    if ([*(v3 + *(*v3 + 184)) useFood])
    {
      v29 = v62;
      v30 = v60;
      sub_219BE35A4();
      sub_219BE34F4();
      v61(v29, v18);
      (*(v51 + 16))(v15, v30, v52);
      v31 = v63;
      sub_219BEEBD4();
      v33 = v64;
      v32 = v65;
      v34 = v53;
      (*(v64 + 16))(v53, v31, v65);
      (*(v33 + 56))(v34, 0, 1, v32);
      v35 = (*(*(v54 + 88) + 88))(v34, *(v54 + 80));
      sub_219A875C0(v34, &qword_280E918A8, MEMORY[0x277D322C0]);
      v68 = v35;
      sub_219224DF4();
      sub_219A86654(&qword_280EE5650, sub_219224DF4);
      sub_219BE6EF4();
      v36 = v55;
      sub_219BE3574();
      v38 = v56;
      v37 = v57;
      if ((*(v56 + 88))(v36, v57) == *MEMORY[0x277D31720])
      {
        v57 = v35;
        sub_219BE3584();
        v39 = v49;
        v40 = v50;
        (*(v49 + 104))(v58, *MEMORY[0x277D31678], v50);
        sub_219A86654(&qword_280EE6620, MEMORY[0x277D31680]);
        sub_219BF5874();
        sub_219BF5874();
        if (v68 == v66 && v69 == v67)
        {
          v41 = *(v39 + 8);
          v41(v58, v40);
          v41(v59, v40);
        }

        else
        {
          v46 = sub_219BF78F4();
          v47 = *(v39 + 8);
          v47(v58, v40);
          v47(v59, v40);

          if ((v46 & 1) == 0)
          {

            goto LABEL_20;
          }
        }

        __swift_project_boxed_opaque_existential_1((v3 + *(*v3 + 176)), *(v3 + *(*v3 + 176) + 24));
        v48 = v62;
        sub_219BE35A4();
        sub_2192265C0(v48);

        v61(v48, v18);
      }

      else
      {

        (*(v38 + 8))(v36, v37);
      }

LABEL_20:
      (*(v64 + 8))(v63, v65);
      return;
    }

    if (qword_280EE60A0 != -1)
    {
      swift_once();
    }

    v42 = sub_219BE5434();
    __swift_project_value_buffer(v42, qword_280F627F0);
    v43 = sub_219BE5414();
    v44 = sub_219BF6214();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_2186C1000, v43, v44, "Ignoring topOfSaved engagement banner, food not enabled", v45, 2u);
      MEMORY[0x21CECF960](v45, -1, -1);
    }
  }
}

void sub_219A85200(void *a1, void *a2, uint64_t a3)
{
  v164 = a2;
  v151 = *v3;
  v132 = type metadata accessor for EngagementAction();
  MEMORY[0x28223BE20](v132);
  v133 = &v124 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = sub_219BDB954();
  v149 = *(v150 - 8);
  MEMORY[0x28223BE20](v150);
  v139 = &v124 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v143 = &v124 - v9;
  v10 = MEMORY[0x277D83D88];
  sub_219A865F0(0, &qword_280E918A8, MEMORY[0x277D322C0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v11 - 8);
  v147 = &v124 - v12;
  v136 = sub_219BDBD64();
  v135 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v134 = &v124 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = type metadata accessor for EngagementDismissal();
  v140 = *(v146 - 8);
  MEMORY[0x28223BE20](v146);
  v142 = &v124 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = v14;
  MEMORY[0x28223BE20](v15);
  v148 = &v124 - v16;
  sub_219A865F0(0, &unk_280EE6610, MEMORY[0x277D31680], v10);
  MEMORY[0x28223BE20](v17 - 8);
  v131 = &v124 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v144 = &v124 - v20;
  MEMORY[0x28223BE20](v21);
  v155 = &v124 - v22;
  v160 = sub_219BE3794();
  v23 = *(v160 - 8);
  MEMORY[0x28223BE20](v160);
  v25 = &v124 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v145 = &v124 - v27;
  MEMORY[0x28223BE20](v28);
  v161 = &v124 - v29;
  MEMORY[0x28223BE20](v30);
  v32 = &v124 - v31;
  v33 = sub_219BE3514();
  v34 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v137 = &v124 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v156 = &v124 - v37;
  MEMORY[0x28223BE20](v38);
  v163 = &v124 - v39;
  MEMORY[0x28223BE20](v40);
  v42 = &v124 - v41;
  if (qword_280EE5F28 != -1)
  {
    swift_once();
  }

  v138 = v25;
  v157 = v3;
  v43 = sub_219BE5434();
  __swift_project_value_buffer(v43, qword_280F62550);
  v152 = *(v34 + 16);
  v153 = v34 + 16;
  v152(v42, a3, v33);
  v44 = sub_219BE5414();
  v45 = sub_219BF6214();
  v46 = os_log_type_enabled(v44, v45);
  v162 = v32;
  if (v46)
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v159 = a1;
    v165 = a3;
    v166 = v48;
    v49 = v48;
    *v47 = 136315138;
    sub_219A86654(&qword_280EE6670, MEMORY[0x277D31550]);
    v50 = sub_219BF7894();
    v51 = v23;
    v53 = v52;
    v158 = *(v34 + 8);
    (v158)(v42, v33);
    v54 = sub_2186D1058(v50, v53, &v166);
    v23 = v51;

    *(v47 + 4) = v54;
    _os_log_impl(&dword_2186C1000, v44, v45, "SavedFeedInteractor: didSelectAction for placement %s", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v49);
    v55 = v49;
    a3 = v165;
    a1 = v159;
    MEMORY[0x21CECF960](v55, -1, -1);
    v56 = v47;
    v32 = v162;
    MEMORY[0x21CECF960](v56, -1, -1);

    v58 = v163;
    v57 = v164;
    if (!v164)
    {
      return;
    }
  }

  else
  {

    v158 = *(v34 + 8);
    (v158)(v42, v33);
    v58 = v163;
    v57 = v164;
    if (!v164)
    {
      return;
    }
  }

  (*(v34 + 104))(v58, *MEMORY[0x277D31478], v33);
  sub_219A86654(&unk_280EE6680, MEMORY[0x277D31550]);
  v164 = v57;
  sub_219BF5874();
  sub_219BF5874();
  if (v166 == v169 && v167 == v170)
  {
    (v158)(v58, v33);
  }

  else
  {
    v59 = sub_219BF78F4();
    (v158)(v58, v33);

    if ((v59 & 1) == 0)
    {

      return;
    }
  }

  v158 = v34;
  v163 = v33;
  v60 = a1[3];
  v61 = a1[4];
  v62 = __swift_project_boxed_opaque_existential_1(a1, v60);
  v63 = v155;
  v127 = v62;
  v129 = v60;
  v128 = v61;
  sub_219BE3AD4();
  v64 = *(v23 + 48);
  v65 = v160;
  v66 = v64(v63, 1, v160);
  v130 = v23 + 48;
  v154 = v23;
  if (v66 == 1)
  {
    v67 = *(v23 + 104);
    (v67)(v32, *MEMORY[0x277D31670], v65);
    v68 = v64(v63, 1, v65);
    v69 = v157;
    if (v68 != 1)
    {
      sub_219A875C0(v63, &unk_280EE6610, MEMORY[0x277D31680]);
    }
  }

  else
  {
    (*(v23 + 32))(v32, v63, v65);
    v67 = *(v23 + 104);
    v69 = v157;
  }

  v157 = v64;
  v70 = *MEMORY[0x277D31678];
  v155 = v67;
  (v67)(v161, v70, v65);
  sub_219A86654(&qword_280EE6620, MEMORY[0x277D31680]);
  sub_219BF5874();
  sub_219BF5874();
  if (v166 == v169 && v167 == v170)
  {
    v71 = 1;
  }

  else
  {
    v71 = sub_219BF78F4();
  }

  v72 = v154 + 8;
  v73 = v161;
  v161 = *(v154 + 8);
  (v161)(v73, v65);

  v74 = v164;
  if (v71)
  {
    __swift_project_boxed_opaque_existential_1(&v69[*(*v69 + 176)], *&v69[*(*v69 + 176) + 24]);
    sub_219227798(a3);
  }

  if ([v74 style] == 2)
  {
    v126 = v72;
    v152(v156, a3, v163);
    v75 = a1[3];
    v159 = a1;
    __swift_project_boxed_opaque_existential_1(a1, v75);
    v165 = a3;
    v76 = sub_219BE3A14();
    if (v77)
    {
      v78 = v77;
      v125 = v76;
    }

    else
    {
      v79 = v134;
      sub_219BDBD54();
      v125 = sub_219BDBD44();
      v78 = v80;
      (*(v135 + 8))(v79, v136);
    }

    v81 = v145;
    v82 = v144;
    v83 = v157;
    sub_219BE3AD4();
    v65 = v160;
    if ((v83)(v82, 1, v160) == 1)
    {
      (v155)(v81, *MEMORY[0x277D31670], v65);
      if ((v83)(v82, 1, v65) != 1)
      {
        sub_219A875C0(v82, &unk_280EE6610, MEMORY[0x277D31680]);
      }
    }

    else
    {
      (*(v154 + 32))(v81, v82, v65);
    }

    __swift_project_boxed_opaque_existential_1(v159, v159[3]);
    v84 = sub_219BE3AE4();
    v86 = v85;
    v87 = v146;
    v88 = *(v146 + 32);
    v89 = sub_219BE3C04();
    v90 = v148;
    (*(*(v89 - 8) + 56))(&v148[v88], 1, 1, v89);
    (*(v158 + 32))(v90, v156, v163);
    v91 = (v90 + v87[5]);
    *v91 = v125;
    v91[1] = v78;
    (*(v154 + 32))(v90 + v87[6], v81, v65);
    v92 = (v90 + v87[7]);
    *v92 = v84;
    v92[1] = v86;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      __swift_project_boxed_opaque_existential_1((Strong + 88), *(Strong + 112));
      v94 = v142;
      sub_219A874E8(v90, v142, type metadata accessor for EngagementDismissal);
      v95 = (*(v140 + 80) + 16) & ~*(v140 + 80);
      v96 = swift_allocObject();
      sub_21880BC4C(v94, v96 + v95, type metadata accessor for EngagementDismissal);
      sub_219BDD154();
      swift_unknownObjectRelease();
    }

    v97 = sub_219BEEC14();
    v98 = v147;
    (*(*(v97 - 8) + 56))(v147, 1, 1, v97);
    v99 = (*(*(v151 + 88) + 88))(v98, *(v151 + 80));
    sub_219A875C0(v98, &qword_280E918A8, MEMORY[0x277D322C0]);
    v166 = v99;
    sub_219224DF4();
    sub_219A86654(&qword_280EE5650, sub_219224DF4);
    sub_219BE6EF4();
    sub_218718690(&v69[*(*v69 + 168)], &v166);
    __swift_project_boxed_opaque_existential_1(&v166, v168);
    a3 = v165;
    sub_219BE3A64();

    sub_219A87630(v90, type metadata accessor for EngagementDismissal);
    __swift_destroy_boxed_opaque_existential_1(&v166);
    a1 = v159;
    v74 = v164;
    v72 = v126;
  }

  if ([v74 style] || (v100 = objc_msgSend(v74, sel_deepLink)) == 0)
  {
    (v161)(v162, v65);
  }

  else
  {
    v101 = v143;
    v102 = v100;
    sub_219BDB8B4();

    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v103 = sub_219BE3A14();
    if (v104)
    {
      v105 = a3;
      v106 = v104;
      v164 = v103;
      v152(v137, v105, v163);
      (*(v149 + 16))(v139, v101, v150);
      v107 = v131;
      v165 = v105;
      sub_219BE3AD4();
      v108 = v160;
      v109 = v157;
      v110 = (v157)(v107, 1, v160);
      v126 = v72;
      if (v110 == 1)
      {
        (v155)(v138, *MEMORY[0x277D31670], v108);
        v111 = (v109)(v107, 1, v108);
        v112 = v154;
        if (v111 != 1)
        {
          sub_219A875C0(v107, &unk_280EE6610, MEMORY[0x277D31680]);
        }
      }

      else
      {
        v112 = v154;
        (*(v154 + 32))(v138, v107, v108);
      }

      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      v113 = sub_219BE3AE4();
      v115 = v114;
      v116 = v132;
      v117 = *(v132 + 36);
      v118 = sub_219BE3C04();
      v119 = &v133[v117];
      v120 = v133;
      (*(*(v118 - 8) + 56))(v119, 1, 1, v118);
      (*(v158 + 32))(v120, v137, v163);
      v121 = (v120 + v116[5]);
      *v121 = v164;
      v121[1] = v106;
      (*(v149 + 32))(v120 + v116[6], v139, v150);
      (*(v112 + 32))(v120 + v116[7], v138, v108);
      v122 = (v120 + v116[8]);
      *v122 = v113;
      v122[1] = v115;
      v123 = swift_unknownObjectWeakLoadStrong();
      if (v123)
      {
        sub_218D2F32C(v120, v123);
        swift_unknownObjectRelease();
      }

      sub_219A87630(v120, type metadata accessor for EngagementAction);
      (*(v149 + 8))(v143, v150);
      (v161)(v162, v160);
    }

    else
    {

      (*(v149 + 8))(v101, v150);
      (v161)(v162, v160);
    }
  }
}

void sub_219A865F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_219A86654(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_219A86714(void *a1, uint64_t *a2)
{
  v5 = *(type metadata accessor for SavedFeedGapLocation(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 72) & ~*(v5 + 80));

  return sub_219A82350(a1, a2, (v2 + 32), v6);
}

uint64_t type metadata accessor for SavedFeedFailedData()
{
  result = qword_27CC22F48;
  if (!qword_27CC22F48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_219A867E4(uint64_t a1, char a2)
{
  (*(*(*v2 + 88) + 80))(a1, a2 & 1, *(*v2 + 80));
  sub_219224DF4();
  sub_219A86654(&qword_280EE5650, sub_219224DF4);
  sub_219BE6EF4();
}

void sub_219A868DC(uint64_t a1)
{
  sub_219BE8664();
  v2 = sub_219BE7BC4();

  v3 = [v2 indexPathsForVisibleItems];

  sub_219BDC104();
  v4 = sub_219BF5924();

  LOBYTE(v3) = sub_2190890C0(a1, v4);

  if ((v3 & 1) == 0)
  {
    sub_219BE8664();
    v5 = sub_219BE7BC4();

    v6 = sub_219BDC094();
    [v5 scrollToItemAtIndexPath:v6 atScrollPosition:2 animated:0];
  }
}

void sub_219A869FC(uint64_t a1, uint64_t a2, char a3)
{
  v35 = a1;
  v5 = MEMORY[0x277D83D88];
  sub_219A865F0(0, &unk_280EE9BB0, MEMORY[0x277CC9AF8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v30 - v7;
  v9 = sub_219BDC104();
  v34 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v33 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219A865F0(0, &unk_280EE5C30, sub_218A74FF4, v5);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v30 - v12;
  sub_218A74FF4();
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218953E34();
  v20 = v19;
  MEMORY[0x28223BE20](v19);
  v23 = &v30 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a3 & 1) == 0)
  {
    v31 = v9;
    v32 = v21;
    v30 = v3;
    sub_219BDEC74();
    sub_219BDEDC4();
    sub_219BEB1C4();

    if ((*(v16 + 48))(v13, 1, v15) == 1)
    {
      (*(v32 + 8))(v23, v20);
      v24 = &unk_280EE5C30;
      v25 = sub_218A74FF4;
      v26 = v13;
LABEL_6:
      sub_219A875C0(v26, v24, v25);
      return;
    }

    (*(v16 + 32))(v18, v13, v15);
    sub_219BEB2F4();
    v27 = v34;
    v28 = v31;
    if ((*(v34 + 48))(v8, 1, v31) == 1)
    {
      (*(v16 + 8))(v18, v15);
      (*(v32 + 8))(v23, v20);
      v24 = &unk_280EE9BB0;
      v25 = MEMORY[0x277CC9AF8];
      v26 = v8;
      goto LABEL_6;
    }

    v29 = v33;
    (*(v27 + 32))(v33, v8, v28);
    if (sub_219BDEC24())
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        if (swift_unknownObjectWeakLoadStrong())
        {
          sub_219A868DC(v29);
          swift_unknownObjectRelease();
        }

        swift_unknownObjectRelease();
      }

      (*(v27 + 8))(v29, v31);
    }

    else
    {
      (*(v27 + 8))(v29, v28);
    }

    (*(v16 + 8))(v18, v15);
    (*(v32 + 8))(v23, v20);
  }
}

void sub_219A86F08()
{
  if (!qword_280E90788)
  {
    sub_2186F76CC();
    v0 = sub_219BF1B54();
    if (!v1)
    {
      atomic_store(v0, &qword_280E90788);
    }
  }
}

uint64_t sub_219A86F70()
{
  v0 = off_282A32618;
  type metadata accessor for SavedFeedDataManager();
  return v0();
}

uint64_t sub_219A87040()
{
  sub_219BF1584();

  return sub_2193984E4();
}

void sub_219A8719C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_219BE3774();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BE3514();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280EE60A0 != -1)
  {
    swift_once();
  }

  v13 = sub_219BE5434();
  __swift_project_value_buffer(v13, qword_280F627F0);
  (*(v10 + 16))(v12, a3, v9);
  (*(v6 + 16))(v8, a2, v5);
  v14 = sub_219BE5414();
  v15 = sub_219BF61F4();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v29 = v28;
    *v16 = 136315394;
    v17 = sub_219BE34B4();
    v27 = v5;
    v19 = v18;
    (*(v10 + 8))(v12, v9);
    v20 = sub_2186D1058(v17, v19, &v29);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2080;
    v21 = sub_219BE3764();
    v23 = v22;
    (*(v6 + 8))(v8, v27);
    v24 = sub_2186D1058(v21, v23, &v29);

    *(v16 + 14) = v24;
    _os_log_impl(&dword_2186C1000, v14, v15, "Handle engagement placement=%s, failed with error=%s", v16, 0x16u);
    v25 = v28;
    swift_arrayDestroy();
    MEMORY[0x21CECF960](v25, -1, -1);
    MEMORY[0x21CECF960](v16, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
    (*(v10 + 8))(v12, v9);
  }
}

uint64_t sub_219A874E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_219A87550(uint64_t a1)
{
  v3 = *(type metadata accessor for EngagementDismissal() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_218E34118(a1, v4);
}

uint64_t sub_219A875C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_219A865F0(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_219A87630(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_219A876E0(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v99 = a3;
  v100 = a4;
  v5 = sub_219BE71C4();
  v94 = *(v5 - 8);
  v95 = v5;
  MEMORY[0x28223BE20](v5);
  v93 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_219BF0DE4();
  v103 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v96 = v7;
  v97 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v106 = &v85 - v9;
  v104 = sub_219BEF2A4();
  v102 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v11 = (&v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v14 = &v85 - v13;
  v15 = sub_219BEF974();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for MagazineCategoriesPickerLayoutModel();
  MEMORY[0x28223BE20](v19 - 8);
  v21 = (&v85 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218C3FDA4();
  sub_219BE75E4();
  sub_218DB6AE4();
  v23 = *(v22 + 48);
  v24 = v21[9];
  v123[1] = v21[8];
  v124[0] = v24;
  *(v124 + 9) = *(v21 + 153);
  v25 = v21[5];
  v122[0] = v21[4];
  v122[1] = v25;
  v26 = v21[7];
  v122[2] = v21[6];
  v123[0] = v26;
  v27 = v21[1];
  v120[0] = *v21;
  v120[1] = v27;
  v28 = v21[3];
  v121[0] = v21[2];
  v121[1] = v28;
  v29 = *(v16 + 32);
  v101 = v15;
  v29(v18, v21 + v23, v15);
  v98 = v4;
  swift_getObjectType();
  sub_219BEED04();
  v30 = v120[0];
  sub_218AB7A30(v121, &v109);
  sub_218AB7A30(v122 + 8, v107);
  sub_218AB7A30(v123, &v119);

  v92 = v30 >> 64;
  v99 = v30;
  v31 = v102;
  v32 = v104;
  sub_219BF0D84();
  (*(v31 + 16))(v11, v14, v32);
  if ((*(v31 + 88))(v11, v32) == *MEMORY[0x277D32520])
  {
    v89 = v18;
    v90 = v14;
    v91 = v16;
    (*(v31 + 96))(v11, v32);
    v33 = *v11;
    sub_218BBF39C();
    v35 = v34;
    v36 = swift_allocBox();
    v38 = v37;
    v39 = *(v35 + 48);
    sub_219BE71A4();
    v40 = swift_allocObject();
    *(v40 + 16) = 0x3FE999999999999ALL;
    *(v38 + v39) = v40;
    v41 = *(v94 + 104);
    v42 = v38 + v39;
    v43 = v95;
    v41(v42, *MEMORY[0x277D6D918], v95);
    v44 = v93;
    *v93 = v36;
    v41(v44, *MEMORY[0x277D6D930], v43);
    v100 = v33;
    sub_219BE7304();
    v45 = swift_allocObject();
    swift_unknownObjectUnownedInit();
    swift_unownedRetainStrong();
    v46 = swift_unownedRetain();

    sub_21896FC94(v120, &v109);
    v47 = v103;
    v48 = *(v103 + 16);
    v94 = v103 + 16;
    v95 = v48;
    v49 = v97;
    v50 = v105;
    v48(v97, v106, v105);
    v51 = *(v47 + 80);
    v52 = (v51 + 193) & ~v51;
    v96 += 7;
    v53 = (v96 + v52) & 0xFFFFFFFFFFFFFFF8;
    v54 = swift_allocObject();
    v55 = v115;
    *(v54 + 136) = v116;
    v56 = v118[0];
    *(v54 + 152) = v117;
    *(v54 + 168) = v56;
    *(v54 + 177) = *(v118 + 9);
    v57 = v111;
    *(v54 + 72) = v112;
    v58 = v114;
    *(v54 + 88) = v113;
    *(v54 + 104) = v58;
    *(v54 + 120) = v55;
    v59 = v110;
    *(v54 + 24) = v109;
    *(v54 + 40) = v59;
    *(v54 + 16) = v46;
    *(v54 + 56) = v57;
    v60 = *(v47 + 32);
    v88 = v47 + 32;
    v93 = v60;
    (v60)(v54 + v52, v49, v50);
    *(v54 + v53) = v45;
    v61 = sub_219BE7334();
    v62 = swift_allocObject();
    *(v62 + 16) = sub_219A88424;
    *(v62 + 24) = v54;

    v63 = sub_219BE72F4();
    v64 = swift_allocObject();
    *(v64 + 16) = sub_219A88424;
    *(v64 + 24) = v54;

    v87 = v46[11];
    v86 = swift_allocObject();
    swift_unknownObjectUnownedInit();
    swift_unownedRetainStrong();
    swift_unownedRetain();

    v95(v49, v106, v50);
    sub_21896FC94(v120, &v109);
    v65 = (v51 + 24) & ~v51;
    v66 = (v96 + v65) & 0xFFFFFFFFFFFFFFF8;
    v67 = (v66 + 15) & 0xFFFFFFFFFFFFFFF8;
    v68 = swift_allocObject();
    *(v68 + 16) = v46;
    (v93)(v68 + v65, v49, v50);
    *(v68 + v66) = v86;
    *(v68 + v67) = v46;
    v69 = (v68 + ((v67 + 15) & 0xFFFFFFFFFFFFFFF8));
    v70 = v100;
    v71 = v118[0];
    v69[8] = v117;
    v69[9] = v71;
    *(v69 + 153) = *(v118 + 9);
    v72 = v114;
    v69[4] = v113;
    v69[5] = v72;
    v73 = v116;
    v69[6] = v115;
    v69[7] = v73;
    v74 = v110;
    *v69 = v109;
    v69[1] = v74;
    v75 = v112;
    v69[2] = v111;
    v69[3] = v75;

    sub_219BE20F4();

    __swift_project_boxed_opaque_existential_1(&v109, *(&v110 + 1));
    v76 = sub_219BE7324();
    sub_219BE1A04();

    __swift_destroy_boxed_opaque_existential_1(&v109);
    v77 = v46[7];
    v97 = v46[8];
    __swift_project_boxed_opaque_existential_1(v46 + 4, v77);
    v78 = sub_219BE7314();
    sub_219BE20E4();
    if (*(&v107[0] + 1))
    {
      v117 = v107[8];
      v118[0] = v108[0];
      *(v118 + 9) = *(v108 + 9);
      v113 = v107[4];
      v114 = v107[5];
      v115 = v107[6];
      v116 = v107[7];
      v109 = v107[0];
      v110 = v107[1];
      v111 = v107[2];
      v112 = v107[3];
      if (__PAIR128__(v92, v99) != v107[0])
      {
        sub_219BF78F4();
      }

      v82 = v103;
      v81 = v104;
      sub_218C113E0(&v109);
    }

    else
    {
      sub_219921D30(v107);
      v82 = v103;
      v81 = v104;
    }

    [v70 isSelected];
    v79 = v70;
    v83 = v106;
    sub_219BF3554();

    (*(v82 + 8))(v83, v105);
    (*(v102 + 8))(v90, v81);
    (*(v91 + 8))(v89, v101);
    sub_218C113E0(v120);
  }

  else
  {
    v79 = sub_219BEF294();
    (*(v103 + 8))(v106, v105);
    v80 = *(v31 + 8);
    v80(v14, v32);
    (*(v16 + 8))(v18, v101);
    sub_218C113E0(v120);
    v80(v11, v32);
  }

  return v79;
}

uint64_t sub_219A88130(uint64_t a1, uint64_t a2)
{
  swift_unownedRetainStrong();

  sub_21896FC94(a2, v8);
  sub_219BE20C4();

  sub_219921D30(v8);
  swift_unownedRetainStrong();
  sub_218718690(a1 + 32, v8);

  __swift_project_boxed_opaque_existential_1(v8, v8[3]);
  Strong = swift_unknownObjectUnownedLoadStrong();
  v5 = sub_219BE7314();

  v6 = swift_unknownObjectUnownedLoadStrong();
  [v6 isSelected];

  sub_219BF3554();
  return __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t sub_219A88254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _OWORD *a6)
{
  swift_unownedRetainStrong();
  sub_218718690(a2 + 32, v16);

  __swift_project_boxed_opaque_existential_1(v16, v16[3]);
  Strong = swift_unknownObjectUnownedLoadStrong();
  v9 = sub_219BE7314();

  sub_219BE20E4();
  if (*(&v12[0] + 1))
  {
    v14[8] = v12[8];
    v15[0] = v13[0];
    *(v15 + 9) = *(v13 + 9);
    v14[4] = v12[4];
    v14[5] = v12[5];
    v14[6] = v12[6];
    v14[7] = v12[7];
    v14[0] = v12[0];
    v14[1] = v12[1];
    v14[2] = v12[2];
    v14[3] = v12[3];
    if (*a6 != v12[0])
    {
      sub_219BF78F4();
    }

    sub_218C113E0(v14);
  }

  else
  {
    sub_219921D30(v12);
  }

  v10 = swift_unknownObjectUnownedLoadStrong();
  [v10 isSelected];

  sub_219BF3554();
  return __swift_destroy_boxed_opaque_existential_1(v16);
}

uint64_t sub_219A883F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  result = sub_219A876E0(a1, a2, *a3, a4);
  *a5 = result;
  return result;
}

uint64_t sub_219A88424()
{
  sub_219BF0DE4();
  v1 = *(v0 + 16);

  return sub_219A88130(v1, v0 + 24);
}

uint64_t sub_219A884B8(uint64_t a1)
{
  v3 = *(sub_219BF0DE4() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + v5);
  v9 = *(v1 + v6);

  return sub_219A88254(a1, v7, v1 + v4, v8, v9, (v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_219A88570(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 16))
  {
    return (*a1 + 127);
  }

  v3 = (((*(a1 + 8) >> 57) >> 6) | (2 * ((*(a1 + 8) >> 57) & 0x38 | *(a1 + 8) & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_219A885CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    *(result + 8) = 0;
    if (a3 >= 0x7F)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = 0;
      *(result + 8) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t type metadata accessor for SportsSectionCurationRequest()
{
  result = qword_280EB26D8;
  if (!qword_280EB26D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_219A886C4()
{
  sub_218845868();
  if (v0 <= 0x3F)
  {
    sub_2186D6710(319, &qword_280E8E288);
    if (v1 <= 0x3F)
    {
      sub_2186E2394();
      if (v2 <= 0x3F)
      {
        sub_2186C66AC();
        if (v3 <= 0x3F)
        {
          type metadata accessor for FCOperationPurpose(319);
          if (v4 <= 0x3F)
          {
            sub_219BEFBD4();
            if (v5 <= 0x3F)
            {
              sub_2186D0BA8();
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

uint64_t sub_219A887D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_219A88820(uint64_t result, int a2, int a3)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_219A8888C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  sub_2187FABEC(*(v0 + 56));
  sub_2187FABEC(*(v0 + 72));

  return swift_deallocClassInstance();
}

uint64_t sub_219A88914()
{
  v1 = *(*v0 + 56);
  sub_2188202A8(v1);
  return v1;
}

uint64_t sub_219A8894C()
{
  v1 = *(*v0 + 72);
  sub_2188202A8(v1);
  return v1;
}

uint64_t sub_219A88984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40 = a3;
  v3 = type metadata accessor for PuzzleContinuePlayingLayoutSectionDescriptor.Footer(0);
  v35 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v36 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v37 = &v35 - v6;
  v41 = sub_219BF00D4();
  v7 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PuzzleContinuePlayingLayoutSectionDescriptor.Header(0);
  v38 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v35 - v14;
  v16 = sub_219BE9834();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C3E604();
  sub_219BE8184();
  v20 = v43;
  v42 = v44;
  sub_219BE95F4();
  v21 = (*(v17 + 88))(v19, v16);
  if (v21 == *MEMORY[0x277D6E758])
  {
    v22 = sub_219BE9604();
    if ((v22 & 0x8000000000000000) == 0)
    {
      if (v22 < *(v20 + 16))
      {
        sub_21972CDB8(v20 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v22, v15, type metadata accessor for PuzzleContinuePlayingLayoutSectionDescriptor.Header);
        sub_21972CDB8(v15, v12, type metadata accessor for PuzzleContinuePlayingLayoutSectionDescriptor.Header);
        v23 = v41;
        (*(v7 + 32))(v9, v12, v41);
        __swift_project_boxed_opaque_existential_1((v39 + 16), *(v39 + 40));
        v24 = sub_219BF0234();

        (*(v7 + 8))(v9, v23);
        v25 = v15;
        v26 = type metadata accessor for PuzzleContinuePlayingLayoutSectionDescriptor.Header;
LABEL_10:
        sub_21972CE20(v25, v26);
        return v24;
      }

      goto LABEL_13;
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v21 == *MEMORY[0x277D6E750])
  {
    v27 = sub_219BE9604();
    v28 = *(v20 + 16);
    v29 = __OFSUB__(v27, v28);
    v30 = v27 - v28;
    if (!v29)
    {
      if ((v30 & 0x8000000000000000) == 0)
      {
        if (v30 < *(v42 + 16))
        {
          v31 = v37;
          sub_21972CDB8(v42 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v30, v37, type metadata accessor for PuzzleContinuePlayingLayoutSectionDescriptor.Footer);
          v32 = v36;
          sub_21972CDB8(v31, v36, type metadata accessor for PuzzleContinuePlayingLayoutSectionDescriptor.Footer);
          v33 = v41;
          (*(v7 + 32))(v9, v32, v41);
          __swift_project_boxed_opaque_existential_1((v39 + 16), *(v39 + 40));
          v24 = sub_219BF0234();

          (*(v7 + 8))(v9, v33);
          v25 = v31;
          v26 = type metadata accessor for PuzzleContinuePlayingLayoutSectionDescriptor.Footer;
          goto LABEL_10;
        }

        goto LABEL_15;
      }

LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    goto LABEL_12;
  }

LABEL_16:
  result = sub_219BF7514();
  __break(1u);
  return result;
}

uint64_t type metadata accessor for TagFeedCurationRequest()
{
  result = qword_280EC6898;
  if (!qword_280EC6898)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_219A88FAC()
{
  sub_2187B2E78(319, &qword_280E8F418);
  if (v0 <= 0x3F)
  {
    sub_2187B2E78(319, &unk_280E8F408);
    if (v1 <= 0x3F)
    {
      sub_2186C66AC();
      if (v2 <= 0x3F)
      {
        type metadata accessor for FCOperationPurpose(319);
        if (v3 <= 0x3F)
        {
          sub_2186E2394();
          if (v4 <= 0x3F)
          {
            sub_219BEFBD4();
            if (v5 <= 0x3F)
            {
              sub_219BEF9C4();
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

uint64_t sub_219A890F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v59 = a4;
  v7 = sub_219BE9FA4();
  v49 = *(v7 - 8);
  v50 = v7;
  MEMORY[0x28223BE20](v7);
  v51 = (&v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v52 = type metadata accessor for ChannelPickerLayoutSectionDescriptor();
  MEMORY[0x28223BE20](v52);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v45 - v12;
  sub_2189519D8();
  sub_219BE6934();
  memcpy(v57, v56, 0x151uLL);
  memcpy(v58, v56, 0x151uLL);
  v14 = sub_21898EAD4(v58) == 1;
  v47 = v10;
  v48 = v13;
  v45 = a3;
  v46 = a2;
  if (v14)
  {
    sub_21892DE88(v58);
    sub_218F9E778(v57);
    sub_219BE6934();
    memcpy(v53, v54, 0x151uLL);
    sub_219A8982C(v53, a3, v13);
    memcpy(v55, v53, 0x151uLL);
    sub_218F9E778(v55);
    sub_218F9E814(v13, v10, type metadata accessor for ChannelPickerLayoutSectionDescriptor);
    sub_218F9E970(0, &qword_27CC14120, MEMORY[0x277D6D2A0], MEMORY[0x277D84560]);
    v15 = sub_219BE5884();
    v16 = a1;
    v17 = *(v15 - 8);
    v18 = *(v17 + 72);
    v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_219C0B8C0;
    v21 = (v20 + v19);
    *v21 = 0;
    v22 = *(v17 + 104);
    v22(v21, *MEMORY[0x277D6D298], v15);
    *(v21 + v18) = 0x4024000000000000;
    v22((v21 + v18), *MEMORY[0x277D6D290], v15);
    v22((v21 + 2 * v18), *MEMORY[0x277D6D288], v15);
    v23 = v51;
    *v51 = v20;
    v24 = *MEMORY[0x277D6E9A0];
    v25 = sub_219BE9F94();
    (*(*(v25 - 8) + 104))(v23, v24, v25);
    v26 = (*(v49 + 104))(v23, *MEMORY[0x277D6E998], v50);
    MEMORY[0x28223BE20](v26);
    v40 = &v45 - 6;
    v27 = v46;
    *(&v45 - 4) = v45;
    *(&v45 - 3) = v16;
    *(&v45 - 2) = v27;
    v43 = sub_219A8B5EC;
  }

  else
  {
    sub_21892DE88(v58);
    sub_218F9E778(v57);
    sub_219BE6934();
    memcpy(v53, v54, 0x151uLL);
    sub_219A8982C(v53, a3, v13);
    memcpy(v55, v53, 0x151uLL);
    sub_218F9E778(v55);
    sub_218F9E814(v13, v10, type metadata accessor for ChannelPickerLayoutSectionDescriptor);
    sub_218F9E970(0, &qword_27CC14120, MEMORY[0x277D6D2A0], MEMORY[0x277D84560]);
    v28 = sub_219BE5884();
    v29 = *(v28 - 8);
    v30 = *(v29 + 72);
    v31 = a1;
    v32 = (*(v29 + 80) + 32) & ~*(v29 + 80);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_219C0B8C0;
    v34 = (v33 + v32);
    *v34 = 0;
    v35 = *(v29 + 104);
    v35(v33 + v32, *MEMORY[0x277D6D298], v28);
    *(v34 + v30) = 0;
    v35(v33 + v32 + v30, *MEMORY[0x277D6D290], v28);
    v35(v33 + v32 + 2 * v30, *MEMORY[0x277D6D288], v28);
    v36 = v51;
    *v51 = v33;
    v37 = *MEMORY[0x277D6E9A0];
    v38 = sub_219BE9F94();
    (*(*(v38 - 8) + 104))(v36, v37, v38);
    v39 = (*(v49 + 104))(v36, *MEMORY[0x277D6E998], v50);
    MEMORY[0x28223BE20](v39);
    v40 = &v45 - 6;
    v42 = v45;
    v41 = v46;
    *(&v45 - 4) = v31;
    *(&v45 - 3) = v42;
    *(&v45 - 2) = v41;
    v43 = sub_219A8B5C8;
  }

  sub_218949014(v43, v40);
  type metadata accessor for ChannelPickerLayoutModel();
  sub_218F9E9D4(&qword_27CC1C0E0, type metadata accessor for ChannelPickerLayoutSectionDescriptor);
  sub_218F9E9D4(&qword_27CC0D178, type metadata accessor for ChannelPickerLayoutModel);
  sub_219BE81A4();
  return sub_218F9E87C(v48, type metadata accessor for ChannelPickerLayoutSectionDescriptor);
}

__n128 sub_219A8982C@<Q0>(const void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v67 = a3;
  v5 = type metadata accessor for ChannelPickerHeaderViewLayoutOptions(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ChannelPickerHeaderViewLayoutAttributes(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v70, a1, 0x151uLL);
  v11 = sub_21898EAD4(v70);
  v12 = sub_21892DE88(v70);
  v13 = *(v12 + 48);
  if (v11 == 1)
  {
    if (!v13)
    {
      memcpy(v69, a1, 0x151uLL);
      v14 = sub_21892DE88(v69);
      v15 = v14[1];
      *&v64 = *v14;
      v16 = 0xE400000000000000;
      v17 = 1684632167;
LABEL_7:
      v65 = v17;
      goto LABEL_8;
    }
  }

  else if (!v13)
  {
    memcpy(v69, a1, 0x151uLL);
    v19 = sub_21892DE88(v69);
    v15 = v19[1];
    *&v64 = *v19;
    v16 = 0xE400000000000000;
    v17 = 1953720684;
    goto LABEL_7;
  }

  v65 = *(v12 + 40);
  memcpy(v69, a1, 0x151uLL);
  v18 = sub_21892DE88(v69);
  v15 = v18[1];
  *&v64 = *v18;
  v16 = v13;
LABEL_8:

  memcpy(v69, a1, 0x151uLL);
  sub_21898EAD4(v69);
  v20 = sub_21892DE88(v69);
  v21 = *(v20 + 24);
  if (!v21)
  {
    goto LABEL_14;
  }

  v22 = *(v20 + 16);
  if (v21 == 0xE000000000000000 && !v22)
  {
    v23 = 0;
    goto LABEL_15;
  }

  if (sub_219BF78F4())
  {
    v23 = 0;
    v22 = 0;
  }

  else
  {
LABEL_14:
    memcpy(v68, a1, sizeof(v68));
    sub_21898EAD4(v68);
    v23 = *(sub_21892DE88(v68) + 16);
  }

LABEL_15:
  v24 = 0xE000000000000000;
  if (v15)
  {
    v24 = v15;
  }

  *v68 = v65;
  *&v68[8] = v16;
  v25 = v64;
  if (!v15)
  {
    v25 = 0;
  }

  *&v68[16] = v25;
  *&v68[24] = v24;
  *&v68[32] = v23;
  *&v68[40] = v22;
  memset(&v68[48], 0, 24);
  __swift_project_boxed_opaque_existential_1((v66 + 176), *(v66 + 200));
  v26 = sub_219BE8164();
  (*(*(v26 - 8) + 16))(v7, a2, v26);

  sub_219BE7FF4();
  *&v7[v5[5]] = 0x4035000000000000;
  *&v7[v5[6]] = 0x4026000000000000;
  *&v7[v5[7]] = v27;
  sub_219067368(COERCE_DOUBLE(v68), v7, v10);
  sub_218F9E87C(v7, type metadata accessor for ChannelPickerHeaderViewLayoutOptions);
  CGRectGetWidth(*&v10[v8[5]]);
  sub_219BE7FF4();
  sub_219BF6B54();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = &v10[v8[6]];
  v37 = &v10[v8[7]];
  v38 = v8[9];
  v39 = &v10[v8[8]];
  LODWORD(v65) = v39[32];
  LODWORD(v66) = v10[v38];
  v40 = type metadata accessor for ChannelPickerLayoutSectionDescriptor();
  v41 = v67;
  v42 = v67 + *(v40 + 20);
  v43 = *MEMORY[0x277D6E758];
  v44 = sub_219BE9834();
  v45 = *(*(v44 - 8) + 104);
  v46 = *v37;
  v47 = *(v37 + 1);
  v48 = *v36;
  v59 = *(v36 + 1);
  v60 = v48;
  v49 = *(v39 + 1);
  v63 = *v39;
  v64 = v46;
  v61 = v49;
  v62 = v47;
  v45(v42, v43, v44);
  v50 = (v42 + v8[5]);
  *v50 = v29;
  v50[1] = v31;
  v50[2] = v33;
  v50[3] = v35;
  v51 = (v42 + v8[6]);
  v52 = v59;
  *v51 = v60;
  v51[1] = v52;
  v53 = (v42 + v8[7]);
  v54 = v62;
  *v53 = v64;
  v53[1] = v54;
  v55 = v42 + v8[8];
  v56 = v61;
  *v55 = v63;
  *(v55 + 16) = v56;
  *(v55 + 32) = v65;
  *(v42 + v8[9]) = v66;
  sub_218F9E87C(v10, type metadata accessor for ChannelPickerHeaderViewLayoutAttributes);
  v57 = *&v68[48];
  *(v41 + 32) = *&v68[32];
  *(v41 + 48) = v57;
  *(v41 + 64) = *&v68[64];
  result = *&v68[16];
  *v41 = *v68;
  *(v41 + 16) = result;
  *(v41 + *(v40 + 24)) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_219A89CFC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v65 = a3;
  v68 = a2;
  v70 = a1;
  v72 = a4;
  v4 = type metadata accessor for ChannelEngagementLayoutOptions();
  MEMORY[0x28223BE20](v4 - 8);
  v67 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ChannelPickerEngagementModel();
  MEMORY[0x28223BE20](v6 - 8);
  v66 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ChannelCategoryLayoutOptions();
  MEMORY[0x28223BE20](v8);
  v69 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for ChannelPickerLayoutModel();
  MEMORY[0x28223BE20](v71);
  v11 = (&v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for ChannelCoinLayoutOptions();
  MEMORY[0x28223BE20](v12);
  v14 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ChannelPickerElementModel();
  MEMORY[0x28223BE20](v15);
  v17 = (&v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218951C88();
  sub_219BE5FC4();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v38 = v17[9];
      v78[8] = v17[8];
      v78[9] = v38;
      v78[10] = v17[10];
      v39 = v17[5];
      v78[4] = v17[4];
      v78[5] = v39;
      v40 = v17[7];
      v78[6] = v17[6];
      v78[7] = v40;
      v41 = v17[1];
      v78[0] = *v17;
      v78[1] = v41;
      v42 = v17[3];
      v78[2] = v17[2];
      v78[3] = v42;
      v43 = sub_219BE8164();
      v44 = v69;
      (*(*(v43 - 8) + 16))(v69, v70, v43);
      *(v44 + v8[5]) = 0x4020000000000000;
      *(v44 + v8[6]) = 0x4031000000000000;
      *(v44 + v8[7]) = 0;
      *(v44 + v8[8]) = 0;
      sub_2198C0B5C(v78, *&v44, v77);
      sub_218BFB180(v78, v11);
      v45 = v77[7];
      v11[17] = v77[6];
      v11[18] = v45;
      v46 = v77[9];
      v11[19] = v77[8];
      v11[20] = v46;
      v47 = v77[3];
      v11[13] = v77[2];
      v11[14] = v47;
      v48 = v77[5];
      v11[15] = v77[4];
      v11[16] = v48;
      v49 = v77[1];
      v11[11] = v77[0];
      v11[12] = v49;
      swift_storeEnumTagMultiPayload();
      sub_218F9E9D4(&qword_27CC0F460, type metadata accessor for ChannelPickerLayoutModel);
      sub_219BE75D4();
      sub_218F9E87C(v44, type metadata accessor for ChannelCategoryLayoutOptions);
      return sub_218980B3C(v78);
    }

    v57 = v17;
    v55 = v66;
    sub_218980AD8(v57, v66);
    v58 = sub_219BE8164();
    v59 = v67;
    (*(*(v58 - 8) + 16))(v67, v70, v58);
    __swift_project_boxed_opaque_existential_1((v65 + 96), *(v65 + 120));
    sub_218AC2AA8(v55, v78);
    sub_218A5A148();
    v61 = (v11 + *(v60 + 48));
    sub_218F9E814(v55, v11, type metadata accessor for ChannelPickerEngagementModel);
    v62 = v78[1];
    *v61 = v78[0];
    v61[1] = v62;
    v63 = v78[3];
    v61[2] = v78[2];
    v61[3] = v63;
    swift_storeEnumTagMultiPayload();
    sub_218F9E9D4(&qword_27CC0F460, type metadata accessor for ChannelPickerLayoutModel);
    sub_219BE75D4();
    sub_218F9E87C(v59, type metadata accessor for ChannelEngagementLayoutOptions);
    v56 = type metadata accessor for ChannelPickerEngagementModel;
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v19 = v17[4];
      v20 = v17[5];
      v21 = v17[2];
      v75[3] = v17[3];
      v75[4] = v19;
      v76[0] = v20;
      *(v76 + 9) = *(v17 + 89);
      v22 = v17[1];
      v75[0] = *v17;
      v75[1] = v22;
      v75[2] = v21;
      v23 = sub_219BE8164();
      (*(*(v23 - 8) + 16))(v14, v70, v23);
      sub_2189519D8();
      sub_219BE6934();
      memcpy(v77, v74, 0x151uLL);
      sub_218F9E778(v77);
      sub_219BE6934();
      memcpy(v78, v73, 0x151uLL);
      sub_218F9E778(v78);
      __asm { FMOV            V0.2D, #24.0 }

      *&v14[v12[8]] = _Q0;
      *&v14[v12[9]] = 0x4020000000000000;
      *&v14[v12[10]] = 0x4031000000000000;
      v14[v12[5]] = 3;
      v14[v12[6]] = 1;
      v14[v12[11]] = 0;
      v14[v12[7]] = 0;
      v74[0] = *(v76 + 8);
      v73[0] = 0x6C61636F6CLL;
      v73[1] = 0xE500000000000000;
      sub_2187F3BD4();
      v29 = sub_219BF7084();
      sub_218EBB0BC(v75, v14, v29 & 1, v74);
      sub_218BFB1DC(v75, v11);
      v30 = v74[13];
      v11[19] = v74[12];
      v11[20] = v30;
      *(v11 + 329) = *(&v74[13] + 9);
      v31 = v74[9];
      v11[15] = v74[8];
      v11[16] = v31;
      v32 = v74[11];
      v11[17] = v74[10];
      v11[18] = v32;
      v33 = v74[5];
      v11[11] = v74[4];
      v11[12] = v33;
      v34 = v74[7];
      v11[13] = v74[6];
      v11[14] = v34;
      v35 = v74[1];
      v11[7] = v74[0];
      v11[8] = v35;
      v36 = v74[3];
      v11[9] = v74[2];
      v11[10] = v36;
      swift_storeEnumTagMultiPayload();
      sub_218F9E9D4(&qword_27CC0F460, type metadata accessor for ChannelPickerLayoutModel);
      sub_219BE75D4();
      sub_218F9E87C(v14, type metadata accessor for ChannelCoinLayoutOptions);
      return sub_218980BE4(v75);
    }

    v50 = v17[7];
    v77[6] = v17[6];
    v77[7] = v50;
    v77[8] = v17[8];
    *(&v77[8] + 9) = *(v17 + 137);
    v51 = v17[3];
    v77[2] = v17[2];
    v77[3] = v51;
    v52 = v17[5];
    v77[4] = v17[4];
    v77[5] = v52;
    v53 = v17[1];
    v77[0] = *v17;
    v77[1] = v53;
    v54 = sub_219BE8164();
    v55 = v69;
    (*(*(v54 - 8) + 16))(v69, v70, v54);
    *(v55 + v8[5]) = 0x4020000000000000;
    *(v55 + v8[6]) = 0x4031000000000000;
    *(v55 + v8[7]) = 0;
    *(v55 + v8[8]) = 0;
    v74[6] = v77[6];
    v74[7] = v77[7];
    v74[8] = v77[8];
    *(&v74[8] + 9) = *(&v77[8] + 9);
    v74[2] = v77[2];
    v74[3] = v77[3];
    v74[4] = v77[4];
    v74[5] = v77[5];
    v74[0] = v77[0];
    v74[1] = v77[1];
    sub_2198C03D4(v74, *&v55, &v78[10]);
    v78[6] = v77[6];
    v78[7] = v77[7];
    v78[8] = v77[8];
    *(&v78[8] + 9) = *(&v77[8] + 9);
    v78[2] = v77[2];
    v78[3] = v77[3];
    v78[4] = v77[4];
    v78[5] = v77[5];
    v78[0] = v77[0];
    v78[1] = v77[1];
    memcpy(v11, v78, 0x140uLL);
    swift_storeEnumTagMultiPayload();
    sub_218F9E9D4(&qword_27CC0F460, type metadata accessor for ChannelPickerLayoutModel);
    sub_219BE75D4();
    v56 = type metadata accessor for ChannelCategoryLayoutOptions;
  }

  return sub_218F9E87C(v55, v56);
}

uint64_t sub_219A8A5C4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v103 = a4;
  v115 = a3;
  v125 = a1;
  v118 = a5;
  v6 = type metadata accessor for ChannelEngagementLayoutOptions();
  MEMORY[0x28223BE20](v6 - 8);
  v106 = &v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ChannelPickerEngagementModel();
  MEMORY[0x28223BE20](v8 - 8);
  v104 = &v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for ChannelCategoryLayoutOptions();
  MEMORY[0x28223BE20](v109);
  v110 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = type metadata accessor for ChannelPickerLayoutModel();
  MEMORY[0x28223BE20](v117);
  v116 = &v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for ChannelTagLayoutOptions();
  MEMORY[0x28223BE20](v102);
  v107 = &v99 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for ChannelPickerElementModel();
  MEMORY[0x28223BE20](v114);
  v113 = &v99 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218951C88();
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v100 = &v99 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F9E8DC();
  v111 = v18;
  MEMORY[0x28223BE20](v18);
  v112 = &v99 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F9E970(0, &qword_27CC0EF78, sub_218951C88, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v20 - 8);
  v108 = &v99 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v99 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v99 - v26;
  sub_218BFAEC4();
  v29 = v28;
  v30 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v32 = &v99 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189519D8();
  v101 = v33;
  v105 = a2;
  sub_219BE6974();
  v34 = sub_219BE23E4();
  (*(v30 + 8))(v32, v29);
  v35 = *(v34 + 16);
  if (v35)
  {
    v36 = *(v16 + 16);
    v36(v27, v34 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * (v35 - 1), v15);

    v37 = *(v16 + 56);
    v37(v27, 0, 1, v15);
  }

  else
  {

    v37 = *(v16 + 56);
    v37(v27, 1, 1, v15);
    v36 = *(v16 + 16);
  }

  v36(v24, v125, v15);
  v37(v24, 0, 1, v15);
  v38 = v112;
  v39 = *(v111 + 12);
  sub_218F9EA1C(v27, v112);
  sub_218F9EA1C(v24, v38 + v39);
  v40 = *(v16 + 48);
  if (v40(v38, 1, v15) == 1)
  {
    sub_218F9EAB0(v24);
    sub_218F9EAB0(v27);
    if (v40(v38 + v39, 1, v15) == 1)
    {
      sub_218F9EAB0(v38);
      v41 = 1;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v111 = v27;
  v42 = v38;
  v43 = v38;
  v44 = v108;
  sub_218F9EA1C(v42, v108);
  if (v40(v43 + v39, 1, v15) == 1)
  {
    sub_218F9EAB0(v24);
    sub_218F9EAB0(v111);
    (*(v16 + 8))(v44, v15);
    v38 = v43;
LABEL_9:
    sub_218F9E87C(v38, sub_218F9E8DC);
    v41 = 0;
    goto LABEL_11;
  }

  v45 = v100;
  (*(v16 + 32))(v100, v43 + v39, v15);
  sub_218F9E9D4(&qword_27CC0EF88, sub_218951C88);
  v41 = sub_219BF53A4();
  v46 = *(v16 + 8);
  v46(v45, v15);
  sub_218F9EAB0(v24);
  sub_218F9EAB0(v111);
  v46(v44, v15);
  sub_218F9EAB0(v43);
LABEL_11:
  v47 = v113;
  sub_219BE5FC4();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v69 = v47[9];
      v124[8] = v47[8];
      v124[9] = v69;
      v124[10] = v47[10];
      v70 = v47[5];
      v124[4] = v47[4];
      v124[5] = v70;
      v71 = v47[7];
      v124[6] = v47[6];
      v124[7] = v71;
      v72 = v47[1];
      v124[0] = *v47;
      v124[1] = v72;
      v73 = v47[3];
      v124[2] = v47[2];
      v124[3] = v73;
      v74 = sub_219BE8164();
      v75 = v110;
      (*(*(v74 - 8) + 16))(v110, v115, v74);
      v76 = v109;
      *(v75 + *(v109 + 20)) = 0x4020000000000000;
      *(v75 + v76[6]) = 0x4031000000000000;
      *(v75 + v76[7]) = 0;
      *(v75 + v76[8]) = v41 & 1;
      sub_2198C0B5C(v124, *&v75, v123);
      v77 = v116;
      sub_218BFB180(v124, v116);
      v78 = v123[7];
      v77[17] = v123[6];
      v77[18] = v78;
      v79 = v123[9];
      v77[19] = v123[8];
      v77[20] = v79;
      v80 = v123[3];
      v77[13] = v123[2];
      v77[14] = v80;
      v81 = v123[5];
      v77[15] = v123[4];
      v77[16] = v81;
      v82 = v123[1];
      v77[11] = v123[0];
      v77[12] = v82;
      swift_storeEnumTagMultiPayload();
      sub_218F9E9D4(&qword_27CC0F460, type metadata accessor for ChannelPickerLayoutModel);
      sub_219BE75D4();
      sub_218F9E87C(v75, type metadata accessor for ChannelCategoryLayoutOptions);
      return sub_218980B3C(v124);
    }

    v92 = v104;
    sub_218980AD8(v47, v104);
    v93 = sub_219BE8164();
    v94 = v106;
    (*(*(v93 - 8) + 16))(v106, v115, v93);
    __swift_project_boxed_opaque_existential_1((v103 + 96), *(v103 + 120));
    sub_218AC2AA8(v92, v124);
    sub_218A5A148();
    v96 = &v116[*(v95 + 48)];
    sub_218F9E814(v92, v116, type metadata accessor for ChannelPickerEngagementModel);
    v97 = v124[1];
    *v96 = v124[0];
    *(v96 + 1) = v97;
    v98 = v124[3];
    *(v96 + 2) = v124[2];
    *(v96 + 3) = v98;
    swift_storeEnumTagMultiPayload();
    sub_218F9E9D4(&qword_27CC0F460, type metadata accessor for ChannelPickerLayoutModel);
    sub_219BE75D4();
    sub_218F9E87C(v94, type metadata accessor for ChannelEngagementLayoutOptions);
    v90 = type metadata accessor for ChannelPickerEngagementModel;
    v91 = v92;
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v49 = v47[4];
      v50 = v47[5];
      v51 = v47[2];
      v121[3] = v47[3];
      v121[4] = v49;
      v122[0] = v50;
      *(v122 + 9) = *(v47 + 89);
      v52 = v47[1];
      v121[0] = *v47;
      v121[1] = v52;
      v121[2] = v51;
      v53 = sub_219BE8164();
      v54 = v107;
      (*(*(v53 - 8) + 16))(v107, v115, v53);
      sub_219BE6934();
      memcpy(v123, v120, 0x151uLL);
      sub_218F9E778(v123);
      sub_219BE6934();
      memcpy(v124, v119, 0x151uLL);
      sub_218F9E778(v124);
      v55 = v102;
      __asm { FMOV            V0.2D, #24.0 }

      *(v54 + *(v102 + 32)) = _Q0;
      *(v54 + v55[9]) = 0x4020000000000000;
      *(v54 + v55[10]) = 0x4031000000000000;
      *(v54 + v55[5]) = 3;
      *(v54 + v55[6]) = 1;
      *(v54 + v55[7]) = 0;
      *(v54 + v55[11]) = v41 & 1;
      sub_219275728(v121, v54, v120);
      v61 = v116;
      sub_218BFB1DC(v121, v116);
      v62 = v120[11];
      *(v61 + 17) = v120[10];
      *(v61 + 18) = v62;
      *(v61 + 38) = *&v120[12];
      v63 = v120[7];
      *(v61 + 13) = v120[6];
      *(v61 + 14) = v63;
      v64 = v120[9];
      *(v61 + 15) = v120[8];
      *(v61 + 16) = v64;
      v65 = v120[3];
      *(v61 + 9) = v120[2];
      *(v61 + 10) = v65;
      v66 = v120[5];
      *(v61 + 11) = v120[4];
      *(v61 + 12) = v66;
      v67 = v120[1];
      *(v61 + 7) = v120[0];
      *(v61 + 8) = v67;
      swift_storeEnumTagMultiPayload();
      sub_218F9E9D4(&qword_27CC0F460, type metadata accessor for ChannelPickerLayoutModel);
      sub_219BE75D4();
      sub_218F9E87C(v54, type metadata accessor for ChannelTagLayoutOptions);
      return sub_218980BE4(v121);
    }

    v83 = v47[7];
    v123[6] = v47[6];
    v123[7] = v83;
    v123[8] = v47[8];
    *(&v123[8] + 9) = *(v47 + 137);
    v84 = v47[3];
    v123[2] = v47[2];
    v123[3] = v84;
    v85 = v47[5];
    v123[4] = v47[4];
    v123[5] = v85;
    v86 = v47[1];
    v123[0] = *v47;
    v123[1] = v86;
    v87 = sub_219BE8164();
    v88 = *&v110;
    (*(*(v87 - 8) + 16))(v110, v115, v87);
    v89 = v109;
    *(*&v88 + *(v109 + 20)) = 0x4020000000000000;
    *(*&v88 + v89[6]) = 0x4031000000000000;
    *(*&v88 + v89[7]) = 0;
    *(*&v88 + v89[8]) = v41 & 1;
    v120[6] = v123[6];
    v120[7] = v123[7];
    v120[8] = v123[8];
    *(&v120[8] + 9) = *(&v123[8] + 9);
    v120[2] = v123[2];
    v120[3] = v123[3];
    v120[4] = v123[4];
    v120[5] = v123[5];
    v120[0] = v123[0];
    v120[1] = v123[1];
    sub_2198C03D4(v120, v88, &v124[10]);
    v124[6] = v123[6];
    v124[7] = v123[7];
    v124[8] = v123[8];
    *(&v124[8] + 9) = *(&v123[8] + 9);
    v124[2] = v123[2];
    v124[3] = v123[3];
    v124[4] = v123[4];
    v124[5] = v123[5];
    v124[0] = v123[0];
    v124[1] = v123[1];
    memcpy(v116, v124, 0x140uLL);
    swift_storeEnumTagMultiPayload();
    sub_218F9E9D4(&qword_27CC0F460, type metadata accessor for ChannelPickerLayoutModel);
    sub_219BE75D4();
    v90 = type metadata accessor for ChannelCategoryLayoutOptions;
    v91 = *&v88;
  }

  return sub_218F9E87C(v91, v90);
}

uint64_t sub_219A8B35C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a2;
  v4[4] = a3;
  v4[2] = a1;
  v5 = sub_219BE8164();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v6 = swift_task_alloc();
  v7 = *v3;
  v4[7] = v6;
  v4[8] = v7;

  return MEMORY[0x2822009F8](sub_219A8B424, 0, 0);
}

uint64_t sub_219A8B424()
{
  v1 = v0[8];
  v2 = v0[4];
  (*(v0[6] + 16))(v0[7], v2, v0[5]);
  v3 = swift_task_alloc();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  sub_218948C7C(sub_219A8B5A8, v3);

  type metadata accessor for ChannelPickerLayoutSectionDescriptor();
  type metadata accessor for ChannelPickerLayoutModel();
  sub_218F9E9D4(&unk_27CC0AEF0, type metadata accessor for ChannelPickerLayoutSectionDescriptor);
  sub_218F9E9D4(&qword_27CC0F460, type metadata accessor for ChannelPickerLayoutModel);
  sub_219BE6514();

  v4 = v0[1];

  return v4();
}

uint64_t sub_219A8B614@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_219BEBDB4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BEBC84();
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 8);
  if (!v13)
  {
    return sub_218718690(v2 + 64, a2);
  }

  v21 = v6;
  v22 = v5;
  v23 = v10;
  v24 = a2;
  __swift_project_boxed_opaque_existential_1((v2 + 64), *(v2 + 88));
  v14 = v13;
  v15 = [v14 identifier];
  sub_219BF5414();

  sub_2194B98F4();

  v16 = v14;
  sub_219BEBC64();
  v17 = [objc_msgSend(v16 backingTag)];
  swift_unknownObjectRelease();
  if (v17)
  {
    swift_unknownObjectRetain();
    sub_219BEBDA4();
    __swift_project_boxed_opaque_existential_1(v25, v26);
    sub_219A8BF64(&qword_27CC1B588, MEMORY[0x277D2D1A0]);
    v18 = v22;
    sub_219BEC144();
    swift_unknownObjectRelease();
    (*(v21 + 8))(v8, v18);
  }

  __swift_project_boxed_opaque_existential_1(v25, v26);
  sub_219A8BF64(&qword_280EE34B8, MEMORY[0x277D2D120]);
  sub_219BEC144();

  (*(v23 + 8))(v12, v9);
  sub_218718690(v25, v24);
  return __swift_destroy_boxed_opaque_existential_1(v25);
}

uint64_t sub_219A8B95C(void *a1, char *a2)
{
  v4 = *a2;
  v5 = *(a2 + 1);
  __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  type metadata accessor for MagazineGridViewController();
  swift_unownedRetainStrong();
  swift_unownedRetain();
  swift_unownedRetain();

  sub_218718690(a1, v13);
  v6 = swift_allocObject();
  *(v6 + 16) = v2;
  *(v6 + 24) = v4;
  *(v6 + 32) = v5;
  sub_21875F93C(v13, v6 + 40);
  v7 = v5;
  v8 = sub_219BE1E04();
  swift_unownedRelease();

  if (v8)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v10 = sub_219BE1D74();
    v11 = (v8 + OBJC_IVAR____TtC7NewsUI226MagazineGridViewController_viewControllerIdentifier);
    *v11 = v10;
    v11[1] = v12;

    sub_219A8BF64(&qword_27CC1E408, type metadata accessor for MagazineGridViewController);
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219A8BAE8(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v13 = a5;
  v15 = a4;
  v6 = a3;
  v14 = a3;
  v8 = sub_219BE15B4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_unownedRetainStrong();
  v16[0] = v6;
  v17 = a4;
  sub_219A8B614(v16, v18);

  sub_2186CFDE4(0, &qword_280EE33B0);
  sub_219BE1BA4();
  __swift_destroy_boxed_opaque_existential_1(v18);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186CFDE4(0, &qword_27CC15008);
  sub_219BE1BA4();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_unownedRetainStrong();

  (*(v9 + 104))(v11, *MEMORY[0x277D2F470], v8);
  sub_219BDD0F4();

  (*(v9 + 8))(v11, v8);
  sub_219BDD274();
  sub_219BE1B94();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v18[0] = v14;
  v19 = v15;
  return sub_219BE1BA4();
}

uint64_t sub_219A8BDA0(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20[3] = a4;
  v20[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v20);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, a1, a4);
  v10 = *a2;
  v11 = *(a2 + 1);
  __swift_project_boxed_opaque_existential_1((a3 + 16), *(a3 + 40));
  type metadata accessor for MagazineGridViewController();
  swift_unownedRetainStrong();
  swift_unownedRetain();
  swift_unownedRetain();

  sub_218718690(v20, v19);
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = v10;
  *(v12 + 32) = v11;
  sub_21875F93C(v19, v12 + 40);
  v13 = v11;
  v14 = sub_219BE1E04();
  swift_unownedRelease();

  if (v14)
  {
    v16 = sub_219BE1D74();
    v17 = (v14 + OBJC_IVAR____TtC7NewsUI226MagazineGridViewController_viewControllerIdentifier);
    *v17 = v16;
    v17[1] = v18;

    __swift_destroy_boxed_opaque_existential_1(v20);
    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219A8BF64(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_219A8C030()
{
  result = qword_280ED7F18;
  if (!qword_280ED7F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED7F18);
  }

  return result;
}

unint64_t sub_219A8C08C()
{
  result = qword_27CC22F58;
  if (!qword_27CC22F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC22F58);
  }

  return result;
}

uint64_t sub_219A8C134()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC944();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 104))(v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6D0A8]);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D090], v0);
  v8[1] = 0;
  sub_2187DA508();
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_280EE98F0 = result;
  return result;
}

uint64_t sub_219A8C31C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_218718690(a1, v8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for SportsNavigationModule();
    v7 = swift_allocObject();
    result = sub_2186CB1F0(v8, v7 + 16);
    *(v7 + 56) = v5;
    a2[3] = v6;
    a2[4] = &off_282A74548;
    *a2 = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219A8C3CC()
{
  type metadata accessor for SportsNavigationViewController();
  sub_219BE2904();

  sub_2186C709C(0, &qword_27CC22F60);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC22F68);
  sub_219BE2914();
  type metadata accessor for SportsNavigationRouter();
  sub_219BE19C4();

  sub_2186C709C(0, &qword_27CC22F70);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC22F78);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC22F80);
  sub_219BE2914();

  sub_2186C709C(0, &unk_27CC22F88);
  sub_219BE2914();

  sub_2186D85DC();
  sub_219BE2904();

  sub_219A90B80(0, &qword_27CC22F98, MEMORY[0x277D6D8B8]);
  sub_219BE2904();

  type metadata accessor for SportsNavigationBlueprintModifierFactory();
  sub_219BE2904();

  sub_219A8FD08();
  sub_219BE2904();
  sub_219BE19D4();

  sub_219A90548();
  sub_219BE2904();

  sub_219A8FE14();
  sub_219BE2904();

  sub_219A901EC();
  sub_219BE2904();

  type metadata accessor for SportsNavigationBlueprintLayoutBuilder();
  sub_219BE2904();

  sub_219A90634();
  sub_219BE2904();

  sub_2186C6148(0, &qword_280E8E828);
  sub_219BE2904();

  sub_219A8FEE0();
  sub_219BE2904();

  sub_2186C709C(0, &qword_280EE3DE0);
  sub_219BE2914();

  sub_219A90048();
  sub_219BE2904();
  sub_219BE19D4();

  sub_219A90330();
  sub_219BE2904();
  sub_219BE19D4();

  sub_219A90894(0, &qword_27CC23000, MEMORY[0x277D6E6B0]);
  sub_219BE2904();

  type metadata accessor for SportsNavigationBlueprintViewCellProvider();
  sub_219BE2904();
  sub_219BE19D4();

  type metadata accessor for SportsNavigationBlueprintViewHeaderProvider();
  sub_219BE2904();

  sub_219A90894(0, &qword_27CC23050, MEMORY[0x277D6E388]);
  sub_219BE2904();

  sub_219BE70E4();
  sub_219BE2904();

  sub_219A90788();
  sub_219BE2904();
  sub_219BE19D4();

  sub_219BE8A54();
  sub_219BE2904();
  sub_219BE19D4();

  sub_2186C709C(0, &unk_280EE3C80);
  sub_219BE2914();
}

uint64_t sub_219A8CC50(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC22F60);
  result = sub_219BE1E34();
  if (!v23)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC22F70);
  result = sub_219BE1E34();
  v3 = v20;
  if (!v20)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v4 = v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219A90634();
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    v6 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
    MEMORY[0x28223BE20](v6);
    v8 = (v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v9 + 16))(v8);
    v10 = *v8;
    v18 = type metadata accessor for SportsNavigationStyler();
    v19 = &off_282A706C8;
    v17[0] = v10;
    v11 = objc_allocWithZone(type metadata accessor for SportsNavigationViewController());
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v17, v18);
    MEMORY[0x28223BE20](v12);
    v14 = (v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v15 + 16))(v14);
    v16 = sub_219A90C98(*v14, v3, v4, v5, v11);
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v17);
    __swift_destroy_boxed_opaque_existential_1(v22);
    return v16;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_219A8CF10@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EDC810);
  result = sub_219BE1E34();
  if (v20)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v19, v20);
    MEMORY[0x28223BE20](v4);
    v6 = (v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6);
    v8 = *v6;
    v9 = type metadata accessor for BaseStyler();
    v18[3] = v9;
    v10 = sub_219A902E8(&qword_280EDFED0, type metadata accessor for BaseStyler);
    v18[4] = v10;
    v18[0] = v8;
    v11 = type metadata accessor for SportsNavigationStyler();
    v12 = swift_allocObject();
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v18, v9);
    MEMORY[0x28223BE20](v13);
    v15 = (v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))(v15);
    v17 = *v15;
    v12[5] = v9;
    v12[6] = v10;
    v12[2] = v17;
    __swift_destroy_boxed_opaque_existential_1(v18);
    result = __swift_destroy_boxed_opaque_existential_1(v19);
    a2[3] = v11;
    a2[4] = &off_282A706C8;
    *a2 = v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219A8D170@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_218718690(a1, v9);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186CF94C();
    result = sub_219BE1E24();
    if (result)
    {
      v6 = result;
      v7 = type metadata accessor for SportsNavigationRouter();
      v8 = swift_allocObject();
      swift_unknownObjectWeakInit();
      result = sub_2186CB1F0(v9, v8 + 24);
      *(v8 + 64) = v5;
      *(v8 + 72) = v6;
      a2[3] = v7;
      a2[4] = &off_282A54B20;
      *a2 = v8;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_219A8D26C(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for SportsNavigationViewController();
  v2 = sub_219BE1E24();
  swift_unknownObjectWeakAssign();
}

uint64_t sub_219A8D2EC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC22F78);
  result = sub_219BE1E34();
  v5 = v20;
  if (!v20)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC22F68);
  result = sub_219BE1E34();
  if (!v19)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC22F80);
  result = sub_219BE1E34();
  if (v17)
  {
    v7 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    MEMORY[0x28223BE20](v7);
    v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v10 + 16))(v9);
    v11 = __swift_mutable_project_boxed_opaque_existential_1(v16, v17);
    MEMORY[0x28223BE20](v11);
    v13 = &v16[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v14 + 16))(v13);
    v15 = sub_219A90EB4(v5, v6, *v9, *v13);
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v16);
    result = __swift_destroy_boxed_opaque_existential_1(v18);
    *a2 = v15;
    a2[1] = &off_282A5EB38;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_219A8D59C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_27CC22F88);
  result = sub_219BE1E34();
  if (!v8)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219A8FD08();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for SportsNavigationBlueprintModifierFactory();
  result = sub_219BE1E24();
  if (result)
  {
    v6 = result;
    sub_219A90C04();
    v7 = swift_allocObject();
    v7[3] = 0;
    result = swift_unknownObjectWeakInit();
    v7[6] = v8;
    v7[7] = v9;
    v7[4] = v5;
    v7[5] = v6;
    *a2 = v7;
    a2[1] = &off_282A80D20;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_219A8D6DC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for SportsNavigationTracker();
    result = swift_allocObject();
    *(result + 16) = v4;
    a2[3] = v5;
    a2[4] = &off_282A6CCD0;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219A8D764@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D85DC();
  result = sub_219BE1DE4();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E8FE20);
  result = sub_219BE1E34();
  if (!v14)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE9F20);
  result = sub_219BE1E34();
  v6 = v11;
  if (!v11)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280E97BA0);
  result = sub_219BE1E34();
  if (v10)
  {
    type metadata accessor for SportsNavigationDataManager();
    v8 = swift_allocObject();
    v8[2] = v5;
    sub_2186CB1F0(&v13, (v8 + 3));
    v8[8] = v6;
    v8[9] = v7;
    result = sub_2186CB1F0(&v9, (v8 + 10));
    *a2 = v8;
    a2[1] = &off_282A667C0;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_219A8D988()
{
  sub_219A90B80(0, &qword_27CC22F98, MEMORY[0x277D6D8B8]);
  swift_allocObject();
  return sub_219BE6F94();
}

uint64_t sub_219A8D9DC()
{
  type metadata accessor for SportsNavigationBlueprintModifierFactory();

  return swift_allocObject();
}

uint64_t sub_219A8DA10(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219A90B80(0, &qword_27CC22F98, MEMORY[0x277D6D8B8]);
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_219A8FE14();
    result = sub_219BE1E24();
    if (result)
    {
      sub_219A8FD08();
      swift_allocObject();
      return sub_219BE6EB4();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_219A8DB0C(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D6E728];
  sub_219A90B80(0, &qword_27CC230B0, MEMORY[0x277D6E728]);
  swift_allocObject();
  sub_219BE96E4();
  sub_219A90B80(0, &qword_27CC230B8, MEMORY[0x277D6E3B8]);
  swift_allocObject();
  sub_219A902A4(&qword_27CC230C0, &qword_27CC230B0, v3);
  sub_219BE8FA4();
  sub_219BE6ED4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219A90548();
  result = sub_219BE1E24();
  if (result)
  {
    swift_allocObject();
    sub_219A902E8(&unk_27CC230C8, sub_219A90548);
    sub_219BE8FA4();
    sub_219BE6ED4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219A8DCC4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219A901EC();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE3DE0);
  result = sub_219BE1DF4();
  if (!v3)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for SportsNavigationBlueprintLayoutBuilder();
  result = sub_219BE1E24();
  if (result)
  {
    sub_219A90548();
    swift_allocObject();
    return sub_219BE9984();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_219A8DE08(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219A8FEE0();
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &unk_280EE39D0);
    result = sub_219BE1E34();
    if (v3)
    {
      sub_219A8FE14();
      swift_allocObject();
      return sub_219BE72C4();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_219A8DF08()
{
  sub_219A901EC();
  swift_allocObject();
  return sub_219BE8554();
}

uint64_t sub_219A8DF40(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280E9A3C0);
  result = sub_219BE1E34();
  if (v34)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, qword_280E9A130);
    result = sub_219BE1E34();
    if (v32)
    {
      v3 = __swift_mutable_project_boxed_opaque_existential_1(v33, v34);
      v26[2] = v26;
      MEMORY[0x28223BE20](v3);
      v5 = (v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v6 + 16))(v5);
      v7 = __swift_mutable_project_boxed_opaque_existential_1(v31, v32);
      v26[1] = v26;
      MEMORY[0x28223BE20](v7);
      v9 = (v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v10 + 16))(v9);
      v11 = *v5;
      v12 = *v9;
      v13 = type metadata accessor for SportsTagLayoutAttributesFactory();
      v30[3] = v13;
      v30[4] = &off_282A9D098;
      v30[0] = v11;
      v14 = type metadata accessor for TitleViewLayoutAttributesFactory();
      v28 = v14;
      v29 = &off_282A72438;
      v27[0] = v12;
      type metadata accessor for SportsNavigationBlueprintLayoutBuilder();
      v15 = swift_allocObject();
      v16 = __swift_mutable_project_boxed_opaque_existential_1(v30, v13);
      MEMORY[0x28223BE20](v16);
      v18 = (v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v19 + 16))(v18);
      v20 = __swift_mutable_project_boxed_opaque_existential_1(v27, v28);
      MEMORY[0x28223BE20](v20);
      v22 = (v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v23 + 16))(v22);
      v24 = *v18;
      v25 = *v22;
      v15[5] = v13;
      v15[6] = &off_282A9D098;
      v15[2] = v24;
      v15[10] = v14;
      v15[11] = &off_282A72438;
      v15[7] = v25;
      __swift_destroy_boxed_opaque_existential_1(v27);
      __swift_destroy_boxed_opaque_existential_1(v30);
      __swift_destroy_boxed_opaque_existential_1(v31);
      __swift_destroy_boxed_opaque_existential_1(v33);
      return v15;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_219A8E34C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219A90B80(0, &qword_27CC22F98, MEMORY[0x277D6D8B8]);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219A8FEE0();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE3DE0);
  result = sub_219BE1DF4();
  if (!v7)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE39D0);
  result = sub_219BE1E34();
  if (!v6)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219A90894(0, &qword_27CC23050, MEMORY[0x277D6E388]);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE70E4();
  result = sub_219BE1DE4();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0);
  result = sub_219BE1E34();
  if (!v5)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    sub_219A902E8(&qword_280EE8EE0, MEMORY[0x277CEAEA8]);
    sub_219A90634();
    v4 = objc_allocWithZone(v3);
    return sub_219BE8754();
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_219A8E684(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E828);
  result = sub_219BE1DE4();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219A90048();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219A90330();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219A90894(0, &qword_27CC23000, MEMORY[0x277D6E6B0]);
  result = sub_219BE1E24();
  if (result)
  {
    sub_219A8FEE0();
    swift_allocObject();
    return sub_219BE7BB4();
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_219A8E80C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219A8FEE0();
  result = sub_219BE1E24();
  if (result)
  {
    sub_219BE7BC4();

    sub_219BE95A4();
    swift_allocObject();
    result = sub_219BE9594();
    v4 = MEMORY[0x277D6E690];
    *a2 = result;
    a2[1] = v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219A8E8C4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219A90B80(0, &qword_27CC22F98, MEMORY[0x277D6D8B8]);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219A901EC();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for SportsNavigationBlueprintViewCellProvider();
  sub_218718690(a1, v8);
  v4 = swift_allocObject();
  sub_2186CB1F0(v8, v4 + 16);
  v5 = sub_219BE1E04();

  if (v5)
  {
    *&v8[0] = v3;
    sub_219A90048();
    v7 = objc_allocWithZone(v6);
    return sub_219BE9374();
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_219A8EA44(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C6148(0, &qword_280E8E828);
  v3 = sub_219BE1DE4();
  if (v3)
  {
    sub_2186C6148(0, &qword_280E8E790);
    sub_219BE1BB4();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_219A8EB54(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C709C(0, &unk_280EE3C80);
  result = sub_219BE1DF4();
  if (v4)
  {
    __swift_project_boxed_opaque_existential_1(v3, v4);
    sub_219BEA274();
    sub_219BE9384();

    return __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219A8EC28(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219A90B80(0, &qword_27CC22F98, MEMORY[0x277D6D8B8]);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219A901EC();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for SportsNavigationBlueprintViewHeaderProvider();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219A90894(0, &qword_27CC23050, MEMORY[0x277D6E388]);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0);
  result = sub_219BE1E34();
  if (!v6)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_219A902E8(&qword_280EE8EE0, MEMORY[0x277CEAEA8]);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE4800);
  result = sub_219BE1E34();
  if (v5)
  {
    sub_219A90330();
    v4 = objc_allocWithZone(v3);
    return sub_219BE8FF4();
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_219A8EEE8(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219BE70E4();
  sub_219BE1DE4();
  sub_219BE9004();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219A90788();
  if (sub_219BE1E24())
  {
    sub_219A902E8(&unk_27CC230A0, sub_219A90788);
  }

  return sub_219BE9014();
}

uint64_t sub_219A8EFEC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219A90B80(0, &qword_27CC22F98, MEMORY[0x277D6D8B8]);
  result = sub_219BE1E24();
  if (result)
  {
    sub_219A90894(0, &qword_27CC23000, MEMORY[0x277D6E6B0]);
    return sub_219BE95E4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219A8F09C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC22F60);
  result = sub_219BE1E34();
  if (!v19)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280ED02C0);
  result = sub_219BE1E34();
  v3 = v16;
  if (!v16)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v4 = v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EC9998);
  result = sub_219BE1E34();
  if (v15)
  {
    v5 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    MEMORY[0x28223BE20](v5);
    v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v8 + 16))(v7);
    v9 = __swift_mutable_project_boxed_opaque_existential_1(v14, v15);
    MEMORY[0x28223BE20](v9);
    v11 = &v14[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v12 + 16))(v11);
    v13 = sub_219A90950(*v7, v3, v4, *v11);
    __swift_destroy_boxed_opaque_existential_1(v14);
    __swift_destroy_boxed_opaque_existential_1(v18);
    return v13;
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_219A8F338(uint64_t *a1, void *a2)
{
  v2 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for SportsNavigationViewController();
  v4 = sub_219BE1E24();
  v3 = &off_282A345E0;
  if (!v4)
  {
    v3 = 0;
  }

  *(v2 + 24) = v3;
  swift_unknownObjectWeakAssign();
}

uint64_t sub_219A8F3CC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EC9540);
  result = sub_219BE1E34();
  if (v16)
  {
    v2 = __swift_mutable_project_boxed_opaque_existential_1(v15, v16);
    MEMORY[0x28223BE20](v2);
    v4 = (v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v5 + 16))(v4);
    v6 = *v4;
    v7 = type metadata accessor for TitleViewRenderer();
    v14[3] = v7;
    v14[4] = &off_282A6AF80;
    v14[0] = v6;
    type metadata accessor for SportsNavigationBlueprintViewHeaderProvider();
    v8 = swift_allocObject();
    v9 = __swift_mutable_project_boxed_opaque_existential_1(v14, v7);
    MEMORY[0x28223BE20](v9);
    v11 = (v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v11);
    v13 = *v11;
    v8[5] = v7;
    v8[6] = &off_282A6AF80;
    v8[2] = v13;
    __swift_destroy_boxed_opaque_existential_1(v14);
    __swift_destroy_boxed_opaque_existential_1(v15);
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219A8F5DC(void *a1)
{
  v2 = sub_219BE9BC4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_219BE9BE4();
  MEMORY[0x28223BE20](v6 - 8);
  sub_219A90894(0, &unk_27CC23090, MEMORY[0x277D6E380]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = v14 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219A90B80(0, &qword_27CC22F98, MEMORY[0x277D6D8B8]);
  result = sub_219BE1E24();
  if (result)
  {
    v13 = result;
    (*(v9 + 104))(v11, *MEMORY[0x277D6E378], v8);
    *v5 = 0;
    (*(v3 + 104))(v5, *MEMORY[0x277D6E828], v2);
    sub_219BE9BD4();
    v14[1] = v13;
    sub_219A90894(0, &qword_27CC23050, MEMORY[0x277D6E388]);
    swift_allocObject();
    return sub_219BE8EC4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219A8F884(void *a1)
{
  sub_2187F2110();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_219C09EC0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219A90788();
  result = sub_219BE1E24();
  if (result)
  {
    v4 = result;
    v5 = sub_219A902E8(&qword_27CC23088, sub_219A90788);
    *(v2 + 32) = v4;
    *(v2 + 40) = v5;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_219BE8A54();
    result = sub_219BE1DE4();
    if (result)
    {
      v6 = MEMORY[0x277D6E168];
      *(v2 + 48) = result;
      *(v2 + 56) = v6;
      sub_219BE70E4();
      swift_allocObject();
      return sub_219BE70D4();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_219A8F9C0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219A8FEE0();
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_219A90B80(0, &qword_27CC22F98, MEMORY[0x277D6D8B8]);
    result = sub_219BE1E24();
    if (result)
    {
      sub_219A90788();
      swift_allocObject();
      return sub_219BE9AB4();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_219A8FAF0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219A8FEE0();
  result = sub_219BE1E24();
  if (result)
  {
    sub_219BE7BC4();

    sub_219BE8A54();
    swift_allocObject();
    return sub_219BE8A44();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219A8FBAC(uint64_t a1, void *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219A90634();
  v7 = sub_219BE1E24();
  if (v7)
  {
    v8 = v7;
    v9 = sub_219A902E8(a3, sub_219A90634);
    v7 = v8;
  }

  else
  {
    v9 = 0;
  }

  return a5(v7, v9);
}

uint64_t sub_219A8FC60@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219A90634();
  v4 = v3;
  result = sub_219BE1E24();
  if (result)
  {
    v6 = result;
    a2[3] = v4;
    result = sub_219A902E8(&qword_27CC23070, sub_219A90634);
    a2[4] = result;
    *a2 = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_219A8FD08()
{
  if (!qword_27CC22FA0)
  {
    v0 = MEMORY[0x277D6D8B8];
    sub_219A90B80(255, &qword_27CC22F98, MEMORY[0x277D6D8B8]);
    sub_219A8FE14();
    sub_219A902A4(&qword_27CC22FD0, &qword_27CC22F98, v0);
    sub_219A902E8(&qword_27CC23028, sub_219A8FE14);
    v1 = sub_219BE6F54();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC22FA0);
    }
  }
}

void sub_219A8FE14()
{
  if (!qword_27CC22FA8)
  {
    sub_219A8FEE0();
    sub_2189520BC();
    sub_218952110();
    sub_219A902E8(&qword_27CC23020, sub_219A8FEE0);
    v0 = sub_219BE72E4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC22FA8);
    }
  }
}

void sub_219A8FEE0()
{
  if (!qword_27CC22FB0)
  {
    sub_2186C6148(255, &qword_280E8E828);
    sub_219A90048();
    sub_219A90330();
    sub_219A90894(255, &qword_27CC23000, MEMORY[0x277D6E6B0]);
    type metadata accessor for SportsNavigationViewController();
    sub_219A902E8(&qword_27CC23008, sub_219A90048);
    sub_219A902E8(&qword_27CC23010, sub_219A90330);
    sub_219A904D4();
    v0 = sub_219BE7BE4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC22FB0);
    }
  }
}

void sub_219A90048()
{
  if (!qword_27CC22FC0)
  {
    v0 = MEMORY[0x277D6D8B8];
    sub_219A90B80(255, &qword_27CC22F98, MEMORY[0x277D6D8B8]);
    sub_219A901EC();
    type metadata accessor for SportsNavigationBlueprintViewCellProvider();
    type metadata accessor for SportsNavigationViewController();
    sub_219A902A4(&qword_27CC22FD0, &qword_27CC22F98, v0);
    sub_219A902E8(&qword_27CC22FD8, sub_219A901EC);
    sub_219A902E8(&qword_27CC22FE0, type metadata accessor for SportsNavigationBlueprintViewCellProvider);
    sub_219A902E8(&qword_27CC22FE8, type metadata accessor for SportsNavigationViewController);
    v1 = sub_219BE93A4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC22FC0);
    }
  }
}

void sub_219A901EC()
{
  if (!qword_27CC22FC8)
  {
    type metadata accessor for SportsNavigationLayoutSectionDescriptor();
    sub_219A902E8(&qword_27CC0F4E0, type metadata accessor for SportsNavigationLayoutSectionDescriptor);
    sub_21895221C();
    v0 = sub_219BE8564();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC22FC8);
    }
  }
}

uint64_t sub_219A902A4(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  result = *a1;
  if (!result)
  {
    sub_219A90B80(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_219A902E8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_219A90330()
{
  if (!qword_27CC22FF0)
  {
    v0 = MEMORY[0x277D6D8B8];
    sub_219A90B80(255, &qword_27CC22F98, MEMORY[0x277D6D8B8]);
    sub_219A901EC();
    type metadata accessor for SportsNavigationBlueprintViewHeaderProvider();
    type metadata accessor for SportsNavigationViewController();
    sub_219A902A4(&qword_27CC22FD0, &qword_27CC22F98, v0);
    sub_219A902E8(&qword_27CC22FD8, sub_219A901EC);
    sub_219A902E8(&qword_27CC22FF8, type metadata accessor for SportsNavigationBlueprintViewHeaderProvider);
    sub_219A902E8(&qword_27CC22FE8, type metadata accessor for SportsNavigationViewController);
    v1 = sub_219BE9024();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC22FF0);
    }
  }
}

unint64_t sub_219A904D4()
{
  result = qword_27CC23018;
  if (!qword_27CC23018)
  {
    sub_219A90894(255, &qword_27CC23000, MEMORY[0x277D6E6B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC23018);
  }

  return result;
}

void sub_219A90548()
{
  if (!qword_27CC23030)
  {
    sub_219A901EC();
    type metadata accessor for SportsNavigationBlueprintLayoutBuilder();
    sub_219A902E8(&qword_27CC22FD8, sub_219A901EC);
    sub_219A902E8(&qword_27CC23038, type metadata accessor for SportsNavigationBlueprintLayoutBuilder);
    v0 = sub_219BE9994();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC23030);
    }
  }
}

void sub_219A90634()
{
  if (!qword_27CC23040)
  {
    v0 = MEMORY[0x277D6D8B8];
    sub_219A90B80(255, &qword_27CC22F98, MEMORY[0x277D6D8B8]);
    sub_219A8FEE0();
    type metadata accessor for SportsNavigationViewController();
    sub_219A902A4(&qword_27CC22FD0, &qword_27CC22F98, v0);
    sub_219A902E8(&qword_27CC23020, sub_219A8FEE0);
    sub_219A902E8(&qword_27CC22FE8, type metadata accessor for SportsNavigationViewController);
    v1 = sub_219BE8774();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC23040);
    }
  }
}

void sub_219A90788()
{
  if (!qword_27CC23058)
  {
    sub_219A8FEE0();
    v0 = MEMORY[0x277D6D8B8];
    sub_219A90B80(255, &qword_27CC22F98, MEMORY[0x277D6D8B8]);
    sub_219A902E8(&qword_27CC23020, sub_219A8FEE0);
    sub_219A902A4(&unk_27CC23060, &qword_27CC22F98, v0);
    v1 = sub_219BE9AD4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC23058);
    }
  }
}

void sub_219A90894(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = MEMORY[0x277D6D8B8];
    sub_219A90B80(255, &qword_27CC22F98, MEMORY[0x277D6D8B8]);
    v8 = v7;
    v9 = sub_219A902A4(&qword_27CC22FD0, &qword_27CC22F98, v6);
    v10 = a3(a1, v8, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void *sub_219A90950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  v9 = type metadata accessor for SportsNavigationStyler();
  v25[3] = v9;
  v25[4] = &off_282A706C8;
  v25[0] = a1;
  v23 = v8;
  v24 = &off_282A4A4D8;
  v22[0] = a4;
  type metadata accessor for SportsNavigationBlueprintViewCellProvider();
  v10 = swift_allocObject();
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v25, v9);
  MEMORY[0x28223BE20](v11);
  v13 = (v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
  MEMORY[0x28223BE20](v15);
  v17 = (v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17);
  v19 = *v13;
  v20 = *v17;
  v10[7] = v9;
  v10[8] = &off_282A706C8;
  v10[14] = v8;
  v10[15] = &off_282A4A4D8;
  v10[11] = v20;
  v10[3] = 0;
  v10[4] = v19;
  swift_unknownObjectWeakInit();
  v10[9] = a2;
  v10[10] = a3;
  __swift_destroy_boxed_opaque_existential_1(v22);
  __swift_destroy_boxed_opaque_existential_1(v25);
  return v10;
}

void sub_219A90B80(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for SportsNavigationSectionDescriptor;
    v8[1] = &type metadata for SportsNavigationModel;
    v8[2] = sub_2189520BC();
    v8[3] = sub_218952110();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_219A90C04()
{
  if (!qword_27CC230D8)
  {
    type metadata accessor for SportsNavigationBlueprintModifierFactory();
    sub_219A902E8(&qword_27CC230E0, type metadata accessor for SportsNavigationBlueprintModifierFactory);
    v0 = type metadata accessor for SportsNavigationInteractor();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC230D8);
    }
  }
}

char *sub_219A90C98(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char *a5)
{
  ObjectType = swift_getObjectType();
  v19[3] = type metadata accessor for SportsNavigationStyler();
  v19[4] = &off_282A706C8;
  v19[0] = a1;
  sub_218718690(v19, &a5[OBJC_IVAR____TtC7NewsUI230SportsNavigationViewController_styler]);
  v11 = &a5[OBJC_IVAR____TtC7NewsUI230SportsNavigationViewController_eventHandler];
  *v11 = a2;
  *(v11 + 1) = a3;
  *&a5[OBJC_IVAR____TtC7NewsUI230SportsNavigationViewController_blueprintViewController] = a4;
  v18.receiver = a5;
  v18.super_class = ObjectType;
  swift_unknownObjectRetain();
  v12 = a4;
  v13 = objc_msgSendSuper2(&v18, sel_initWithNibName_bundle_, 0, 0);
  *(*&v13[OBJC_IVAR____TtC7NewsUI230SportsNavigationViewController_eventHandler] + 24) = &off_282A345E8;
  swift_unknownObjectWeakAssign();
  v14 = *&v13[OBJC_IVAR____TtC7NewsUI230SportsNavigationViewController_blueprintViewController];
  v15 = v13;
  v16 = v14;
  sub_219BE8744();

  __swift_destroy_boxed_opaque_existential_1(v19);
  return v15;
}

void *sub_219A90DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v15[3] = type metadata accessor for SportsNavigationRouter();
  v15[4] = &off_282A54B20;
  v15[0] = a3;
  v14[3] = type metadata accessor for SportsNavigationTracker();
  v14[4] = &off_282A6CCD0;
  v14[0] = a4;
  a5[3] = 0;
  swift_unknownObjectWeakInit();
  a5[4] = a1;
  a5[5] = a2;
  sub_218718690(v15, (a5 + 6));
  sub_218718690(v14, (a5 + 11));
  ObjectType = swift_getObjectType();
  v11 = *(a2 + 16);
  swift_unknownObjectRetain();

  v11(v12, &off_282A5EB10, ObjectType, a2);
  __swift_destroy_boxed_opaque_existential_1(v14);
  __swift_destroy_boxed_opaque_existential_1(v15);
  return a5;
}

void *sub_219A90EB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  v24 = type metadata accessor for SportsNavigationRouter();
  v25 = &off_282A54B20;
  v23[0] = a3;
  v21 = v8;
  v22 = &off_282A6CCD0;
  v20[0] = a4;
  type metadata accessor for SportsNavigationEventHandler();
  v9 = swift_allocObject();
  v10 = __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
  MEMORY[0x28223BE20](v10);
  v12 = (v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12);
  v14 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
  MEMORY[0x28223BE20](v14);
  v16 = (v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16);
  v18 = sub_219A90DBC(a1, a2, *v12, *v16, v9);
  __swift_destroy_boxed_opaque_existential_1(v20);
  __swift_destroy_boxed_opaque_existential_1(v23);
  return v18;
}

uint64_t sub_219A910C0()
{
  v0 = sub_219BE38C4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BE3514();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE35A4();
  sub_219A91A54(&qword_280EE6670, MEMORY[0x277D31550]);
  v11[0] = sub_219BF7894();
  v11[1] = v8;
  (*(v5 + 8))(v7, v4);
  MEMORY[0x21CECC330](58, 0xE100000000000000);
  sub_219BE3574();
  sub_219A91A54(&unk_280EE65D0, MEMORY[0x277D31758]);
  v9 = sub_219BF7894();
  MEMORY[0x21CECC330](v9);

  (*(v1 + 8))(v3, v0);
  return v11[0];
}

size_t sub_219A912FC(unint64_t a1)
{
  v2 = type metadata accessor for FollowingModel();
  MEMORY[0x28223BE20](v2);
  v4 = (&v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218950B84();
  v29 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - v11;
  if (a1 >> 62)
  {
    v25 = v10;
    v26 = sub_219BF7214();
    v10 = v25;
    v13 = v26;
  }

  else
  {
    v13 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = MEMORY[0x277D84F90];
  if (!v13)
  {
    return v14;
  }

  v15 = v10;
  v30 = MEMORY[0x277D84F90];
  result = sub_218C34A38(0, v13 & ~(v13 >> 63), 0);
  if ((v13 & 0x8000000000000000) == 0)
  {
    v14 = v30;
    v17 = v15;
    if ((v15 & 0xC000000000000001) != 0)
    {
      v18 = 0;
      v28 = v6 + 32;
      do
      {
        v19 = v17;
        *v4 = MEMORY[0x21CECE0F0](v18);
        swift_storeEnumTagMultiPayload();
        sub_219A91A54(&qword_280EDC630, type metadata accessor for FollowingModel);
        sub_219BE5FB4();
        v30 = v14;
        v21 = *(v14 + 16);
        v20 = *(v14 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_218C34A38(v20 > 1, v21 + 1, 1);
          v14 = v30;
        }

        ++v18;
        *(v14 + 16) = v21 + 1;
        (*(v6 + 32))(v14 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v21, v12, v29);
        v17 = v19;
      }

      while (v13 != v18);
    }

    else
    {
      v22 = (v15 + 32);
      v28 = sub_219A91A54(&qword_280EDC630, type metadata accessor for FollowingModel);
      do
      {
        *v4 = *v22;
        swift_storeEnumTagMultiPayload();

        sub_219BE5FB4();
        v30 = v14;
        v24 = *(v14 + 16);
        v23 = *(v14 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_218C34A38(v23 > 1, v24 + 1, 1);
          v14 = v30;
        }

        *(v14 + 16) = v24 + 1;
        (*(v6 + 32))(v14 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v24, v8, v29);
        ++v22;
        --v13;
      }

      while (v13);
    }

    return v14;
  }

  __break(1u);
  return result;
}

uint64_t sub_219A9167C()
{
  v1 = OBJC_IVAR____TtC7NewsUI224FollowingEngagementModel_banner;
  v2 = sub_219BE35B4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

unint64_t sub_219A91734()
{
  sub_219BF7314();

  v0 = sub_219A910C0();
  MEMORY[0x21CECC330](v0);

  MEMORY[0x21CECC330](41, 0xE100000000000000);
  return 0xD000000000000025;
}

uint64_t sub_219A917E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_219A91A54(&qword_27CC23100, type metadata accessor for FollowingEngagementModel);

  return MEMORY[0x2821D2598](a1, a2, v4);
}

uint64_t sub_219A91864()
{
  v0 = sub_219A910C0();
  v2 = v1;
  if (v0 == sub_219A910C0() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_219BF78F4();
  }

  return v5 & 1;
}