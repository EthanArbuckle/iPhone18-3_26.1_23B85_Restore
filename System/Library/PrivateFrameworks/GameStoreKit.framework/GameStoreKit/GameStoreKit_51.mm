void sub_24EB2F230(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (qword_27F211448 != -1)
  {
    swift_once();
  }

  v4 = sub_24F9220D8();
  __swift_project_value_buffer(v4, qword_27F39E928);

  oslog = sub_24F9220B8();
  v5 = sub_24F92BD98();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v6 = 136315138;
    if (v2)
    {
      v8 = v2;
    }

    else
    {
      v3 = 1819047278;
      v8 = 0xE400000000000000;
    }

    v9 = sub_24E7620D4(v3, v8, &v11);

    *(v6 + 4) = v9;
    _os_log_impl(&dword_24E5DD000, oslog, v5, "[SRP] Changed selected tab: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x2530542D0](v7, -1, -1);
    MEMORY[0x2530542D0](v6, -1, -1);
  }
}

uint64_t sub_24EB2F3B0(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (qword_27F211448 != -1)
  {
    swift_once();
  }

  v3 = sub_24F9220D8();
  __swift_project_value_buffer(v3, qword_27F39E928);
  v4 = sub_24F9220B8();
  v5 = sub_24F92BD98();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_24E5DD000, v4, v5, "[SRP] Changed friends playing games", v6, 2u);
    MEMORY[0x2530542D0](v6, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228F38);
  sub_24F926F38();
  *(v8 + OBJC_IVAR____TtC12GameStoreKit26SearchResultsPageViewModel_friendsPlayingGames) = v2;
}

uint64_t sub_24EB2F4F8(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v3 = a2[9];
  v41 = a2[8];
  v42 = v3;
  v43 = a2[10];
  v4 = a2[5];
  v37 = a2[4];
  v38 = v4;
  v5 = a2[7];
  v39 = a2[6];
  v40 = v5;
  v6 = a2[1];
  v33 = *a2;
  v34 = v6;
  v7 = a2[3];
  v35 = a2[2];
  v36 = v7;
  v8 = *(a3 + 184);
  *&v45[0] = *(a3 + 176);
  *(&v45[0] + 1) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228F38);
  sub_24F926F38();
  v9 = *&v44[0];
  v10 = *(*&v44[0] + 64);
  v11 = *(*&v44[0] + 96);
  v12 = *(*&v44[0] + 112);
  v44[4] = *(*&v44[0] + 80);
  v44[5] = v11;
  v13 = *(*&v44[0] + 128);
  v14 = *(*&v44[0] + 144);
  v15 = *(*&v44[0] + 176);
  v44[9] = *(*&v44[0] + 160);
  v44[10] = v15;
  v44[7] = v13;
  v44[8] = v14;
  v44[6] = v12;
  v16 = *(*&v44[0] + 16);
  v17 = *(*&v44[0] + 32);
  v18 = *(*&v44[0] + 64);
  v44[2] = *(*&v44[0] + 48);
  v44[3] = v10;
  v44[0] = v16;
  v44[1] = v17;
  v19 = v9[5];
  v20 = v9[7];
  v21 = v9[8];
  v45[5] = v9[6];
  v45[6] = v20;
  v45[3] = v18;
  v45[4] = v19;
  v22 = v9[9];
  v23 = v9[11];
  v45[9] = v9[10];
  v45[10] = v23;
  v45[7] = v21;
  v45[8] = v22;
  v24 = v9[2];
  v45[0] = v9[1];
  v45[1] = v24;
  v45[2] = v9[3];
  v9[3] = v35;
  v25 = v38;
  v9[7] = v39;
  v27 = v42;
  v26 = v43;
  v28 = v41;
  v9[8] = v40;
  v9[9] = v28;
  v9[10] = v27;
  v9[11] = v26;
  v29 = v37;
  v9[4] = v36;
  v9[5] = v29;
  v9[6] = v25;
  v30 = v34;
  v9[1] = v33;
  v9[2] = v30;
  sub_24E7B6680(&v33, v32);
  sub_24E7B6680(v44, v32);
  sub_24EB38BC8(v45);
  if (v44[0] != v9[1] && (sub_24F92CE08() & 1) == 0)
  {
    sub_24F7D98DC();
  }

  return sub_24EB38BC8(v44);
}

uint64_t sub_24EB2F664@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for GameSearchResultsTabContent(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for SearchResultsPageView.TabContentView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228FD8);
  sub_24F927358();
  v8 = v18;
  swift_getKeyPath();
  v18 = v8;
  sub_24EB388F4(&qword_27F215718, type metadata accessor for SearchResultsPageViewModel);
  sub_24F91FD88();

  v9 = OBJC_IVAR____TtC12GameStoreKit26SearchResultsPageViewModel__tabStates;
  swift_beginAccess();
  v10 = *(v8 + v9);

  if (*(v10 + 16) && (v11 = sub_24E76D644(*(v2 + 40), *(v2 + 48)), (v12 & 1) != 0))
  {
    sub_24EB391A8(*(v10 + 56) + *(v5 + 72) * v11, v7, type metadata accessor for GameSearchResultsTabContent);

    v13 = *v7;

    v14 = sub_24EB38C2C(v7, type metadata accessor for GameSearchResultsTabContent);
    MEMORY[0x28223BE20](v14);
    *(&v17 - 2) = v2;
    sub_24E7AAEE8(sub_24EB3ABF8, v13, a1);
  }

  else
  {

    v16 = type metadata accessor for GameSearchResultsGroup(0);
    return (*(*(v16 - 8) + 56))(a1, 1, 1, v16);
  }
}

uint64_t sub_24EB2F8F4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  type metadata accessor for SearchResultsPageView.TabContentView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228FD8);
  sub_24F927358();
  v5 = sub_24F7D6E90(*(a2 + 40), *(a2 + 48));
  v7 = v6;

  if (v7)
  {
    if (v3 == v5 && v7 == v4)
    {
      v9 = 1;
    }

    else
    {
      v9 = sub_24F92CE08();
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_24EB2F9CC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for GameSearchResultsTabContent(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SearchResultsPageView.TabContentView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228FD8);
  sub_24F927358();
  v8 = v19;
  swift_getKeyPath();
  v19 = v8;
  sub_24EB388F4(&qword_27F215718, type metadata accessor for SearchResultsPageViewModel);
  sub_24F91FD88();

  v9 = OBJC_IVAR____TtC12GameStoreKit26SearchResultsPageViewModel__tabStates;
  swift_beginAccess();
  v10 = *(v8 + v9);

  if (*(v10 + 16) && (v11 = sub_24E76D644(*(v2 + 40), *(v2 + 48)), (v12 & 1) != 0))
  {
    sub_24EB391A8(*(v10 + 56) + *(v5 + 72) * v11, v7, type metadata accessor for GameSearchResultsTabContent);

    v13 = *(v4 + 24);
    v14 = sub_24F928818();
    v15 = *(v14 - 8);
    (*(v15 + 16))(a1, &v7[v13], v14);
    sub_24EB38C2C(v7, type metadata accessor for GameSearchResultsTabContent);
    return (*(v15 + 56))(a1, 0, 1, v14);
  }

  else
  {

    v17 = sub_24F928818();
    return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
  }
}

uint64_t sub_24EB2FC78@<X0>(uint64_t a1@<X8>)
{
  v111 = a1;
  v2 = sub_24F924918();
  v109 = *(v2 - 8);
  v110 = v2;
  MEMORY[0x28223BE20](v2);
  v107 = &v79 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v108 = &v79 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2157E8);
  MEMORY[0x28223BE20](v6 - 8);
  v104 = (&v79 - v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2157F0);
  MEMORY[0x28223BE20](v8 - 8);
  OpaqueTypeConformance2 = &v79 - v9;
  v82 = type metadata accessor for SearchResultsPageView.TabContentView(0);
  v10 = *(v82 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v82);
  v12 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v79 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228E50);
  MEMORY[0x28223BE20](v16 - 8);
  v91 = &v79 - v17;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2290A8);
  v87 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v84 = &v79 - v18;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2290B0);
  v88 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v83 = &v79 - v19;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2290B8);
  v97 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v113 = &v79 - v20;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2290C0);
  v99 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v93 = &v79 - v21;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2290C8);
  MEMORY[0x28223BE20](v92);
  v101 = &v79 - v22;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2290D0);
  MEMORY[0x28223BE20](v98);
  v100 = &v79 - v23;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2290D8);
  MEMORY[0x28223BE20](v95);
  v106 = &v79 - v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229000);
  sub_24F926F58();
  sub_24EB391A8(v1, v15, type metadata accessor for SearchResultsPageView.TabContentView);
  v25 = *(v10 + 80);
  v85 = ~v25;
  v26 = (v25 + 16) & ~v25;
  v105 = v11;
  v27 = (v11 + v26);
  v90 = swift_allocObject();
  sub_24EB39210(v15, v90 + v26, type metadata accessor for SearchResultsPageView.TabContentView);
  v112 = v15;
  v89 = type metadata accessor for SearchResultsPageView.TabContentView;
  sub_24EB391A8(v1, v15, type metadata accessor for SearchResultsPageView.TabContentView);
  v80 = swift_allocObject();
  v81 = type metadata accessor for SearchResultsPageView.TabContentView;
  sub_24EB39210(v15, v80 + v26, type metadata accessor for SearchResultsPageView.TabContentView);
  sub_24EB391A8(v1, v12, type metadata accessor for SearchResultsPageView.TabContentView);
  v28 = swift_allocObject();
  sub_24EB39210(v12, v28 + v26, type metadata accessor for SearchResultsPageView.TabContentView);
  v29 = swift_allocObject();
  *(v29 + 16) = sub_24EB3A374;
  *(v29 + 24) = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2290E0);
  v79 = sub_24F921AA8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2290E8);
  sub_24E602068(&qword_27F2290F0, &qword_27F2290E0);
  sub_24EB388F4(&qword_27F215638, MEMORY[0x277D7EBB0]);
  v30 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2290F8);
  v31 = sub_24EB3A3A0();
  v116 = v30;
  v117 = v31;
  v32 = v1;
  swift_getOpaqueTypeConformance2();
  v33 = v82;
  v34 = v84;
  sub_24F921D08();
  LOBYTE(v116) = *(v32 + *(v33 + 20));
  LODWORD(v15) = v116;
  v35 = v112;
  sub_24EB391A8(v32, v112, v89);
  v90 = v25;
  v36 = v83;
  v89 = v27;
  v37 = swift_allocObject();
  v91 = v26;
  sub_24EB39210(v35, v37 + v26, v81);
  v38 = sub_24E602068(&qword_27F229178, &qword_27F2290A8);
  v39 = MEMORY[0x277D839C8];
  v40 = v86;
  sub_24F926AB8();

  (*(v87 + 8))(v34, v40);
  if (v15 == 1)
  {
    v41 = OpaqueTypeConformance2;
    sub_24EB2F9CC(OpaqueTypeConformance2);
  }

  else
  {
    v42 = sub_24F928818();
    v41 = OpaqueTypeConformance2;
    (*(*(v42 - 8) + 56))(OpaqueTypeConformance2, 1, 1, v42);
  }

  v43 = (v32 + *(v33 + 40));
  v45 = *v43;
  v44 = v43[1];
  v116 = v45;
  v117 = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215810);
  sub_24F926F38();
  v46 = v104;
  sub_24F921B38();
  v47 = sub_24F921B48();
  (*(*(v47 - 8) + 56))(v46, 0, 1, v47);
  v116 = v40;
  v117 = MEMORY[0x277D839B0];
  v118 = v38;
  v119 = v39;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v48 = v96;
  sub_24F925E58();

  sub_24E601704(v46, &qword_27F2157E8);
  sub_24E601704(v41, &qword_27F2157F0);
  (*(v88 + 8))(v36, v48);
  v104 = type metadata accessor for SearchResultsPageView.TabContentView;
  v49 = v112;
  sub_24EB391A8(v32, v112, type metadata accessor for SearchResultsPageView.TabContentView);
  sub_24F92B7F8();
  v50 = sub_24F92B7E8();
  v51 = v32;
  v52 = (v90 + 32) & v85;
  v53 = swift_allocObject();
  v54 = MEMORY[0x277D85700];
  *(v53 + 16) = v50;
  *(v53 + 24) = v54;
  v105 = type metadata accessor for SearchResultsPageView.TabContentView;
  sub_24EB39210(v49, v53 + v52, type metadata accessor for SearchResultsPageView.TabContentView);
  v55 = sub_24F92B7E8();
  v56 = swift_allocObject();
  *(v56 + 16) = v55;
  *(v56 + 24) = v54;
  sub_24F9271A8();
  v114 = v48;
  v115 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v57 = v93;
  v58 = v102;
  v59 = v113;
  sub_24F925EA8();

  (*(v97 + 8))(v59, v58);
  v60 = v104;
  sub_24EB391A8(v51, v49, v104);
  v61 = swift_allocObject();
  v62 = v91;
  v63 = v105;
  sub_24EB39210(v49, &v91[v61], v105);
  v64 = v101;
  (*(v99 + 32))(v101, v57, v103);
  v65 = (v64 + *(v92 + 36));
  *v65 = sub_24EB3AB7C;
  v65[1] = v61;
  v65[2] = 0;
  v65[3] = 0;
  sub_24EB391A8(v51, v49, v60);
  v66 = swift_allocObject();
  sub_24EB39210(v49, &v62[v66], v63);
  v67 = v100;
  sub_24E6009C8(v64, v100, &qword_27F2290C8);
  v68 = (v67 + *(v98 + 36));
  *v68 = 0;
  v68[1] = 0;
  v68[2] = sub_24EB3AB84;
  v68[3] = v66;
  v70 = *(v51 + 40);
  v69 = *(v51 + 48);
  v71 = v106;
  sub_24E6009C8(v67, v106, &qword_27F2290D0);
  v72 = (v71 + *(v95 + 52));
  *v72 = v70;
  v72[1] = v69;

  v73 = v108;
  sub_24F924908();
  v75 = v109;
  v74 = v110;
  (*(v109 + 16))(v107, v73, v110);
  sub_24EB388F4(&qword_27F229180, MEMORY[0x277CE0068]);
  v76 = sub_24F923958();
  (*(v75 + 8))(v73, v74);
  v77 = v111;
  sub_24E6009C8(v71, v111, &qword_27F2290D8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229188);
  *(v77 + *(result + 36)) = v76;
  return result;
}

uint64_t sub_24EB30BC8(uint64_t a1, uint64_t a2)
{
  v2[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229190);
  v2[4] = swift_task_alloc();
  sub_24F92B7F8();
  v2[5] = sub_24F92B7E8();
  v4 = sub_24F92B778();
  v2[6] = v4;
  v2[7] = v3;

  return MEMORY[0x2822009F8](sub_24EB30C98, v4, v3);
}

uint64_t sub_24EB30C98()
{
  v1 = v0[3];
  if (*(v1 + *(type metadata accessor for SearchResultsPageView.TabContentView(0) + 20)) == 1)
  {
    v2 = v0[4];
    sub_24EB2F664(v2);
    v3 = type metadata accessor for GameSearchResultsGroup(0);
    if ((*(*(v3 - 8) + 48))(v2, 1, v3) == 1)
    {
      v4 = v0[3];
      sub_24E601704(v0[4], &qword_27F229190);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228FD8);
      sub_24F927358();
      v0[8] = v0[2];
      v5 = *(v4 + 40);
      v6 = *(v4 + 48);
      v7 = swift_task_alloc();
      v0[9] = v7;
      *v7 = v0;
      v7[1] = sub_24EB30E58;

      return sub_24F7D74C0(v5, v6);
    }

    v9 = v0[4];

    sub_24E601704(v9, &qword_27F229190);
  }

  else
  {
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_24EB30E58()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = sub_24EB30FE0;
  }

  else
  {

    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = sub_24EB30F74;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_24EB30F74()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24EB30FE0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24EB3105C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v20 = a5;
  v19 = sub_24F921CB8();
  v9 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254F40);
  MEMORY[0x28223BE20](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2290F8);
  MEMORY[0x28223BE20](v18);
  v13 = &v17 - v12;
  v14 = sub_24E6A4C1C();
  sub_24F924B68();
  v24 = a1;
  v25 = a4;
  v26 = a2;
  v27 = a3;
  v21 = a1;
  v22 = a2;
  v23 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219DC8);
  v28 = &type metadata for GameOverlayViewPredicate;
  v29 = v14;
  swift_getOpaqueTypeConformance2();
  sub_24EB3A51C();
  sub_24E602068(&qword_27F219DD0, &qword_27F219DC8);
  sub_24F927568();
  v15 = v19;
  (*(v9 + 104))(v11, *MEMORY[0x277D7ECB8], v19);
  sub_24EB3A3A0();
  sub_24F925E38();
  (*(v9 + 8))(v11, v15);
  return sub_24E601704(v13, &qword_27F2290F8);
}

uint64_t sub_24EB31364@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v31[1] = a3;
  v31[2] = a4;
  v32 = a2;
  v37 = a5;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219DC8);
  v33 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v7 = v31 - v6;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2291B0);
  MEMORY[0x28223BE20](v35);
  v9 = v31 - v8;
  v10 = type metadata accessor for SearchResultsPageView.TabContentView(0);
  v31[0] = *(v10 - 8);
  v11 = *(v31[0] + 64);
  MEMORY[0x28223BE20](v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229128);
  MEMORY[0x28223BE20](v12);
  v14 = v31 - v13;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2291B8);
  v34 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v16 = v31 - v15;
  swift_getErrorValue();
  if (sub_24F6A92A4(v43))
  {
    sub_24F6A94D4(v14);
    v17 = v32;
    v18 = *(v32 + *(v10 + 28));
    swift_getKeyPath();
    v39 = v18;
    sub_24EB388F4(&unk_27F24EEA0, type metadata accessor for NetworkConnectionMonitor);
    sub_24F91FD88();

    LOBYTE(v39) = *(v18 + 16) < 2u;
    sub_24EB391A8(v17, v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SearchResultsPageView.TabContentView);
    v19 = (*(v31[0] + 80) + 16) & ~*(v31[0] + 80);
    v20 = swift_allocObject();
    sub_24EB39210(v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for SearchResultsPageView.TabContentView);
    v21 = sub_24EB3A624();
    v22 = MEMORY[0x277D839B0];
    v23 = MEMORY[0x277D839C8];
    sub_24F926AB8();

    sub_24E601704(v14, &qword_27F229128);
    v24 = v34;
    v25 = v36;
    (*(v34 + 16))(v9, v16, v36);
    swift_storeEnumTagMultiPayload();
    v39 = v12;
    v40 = v22;
    v41 = v21;
    v42 = v23;
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F219DD0, &qword_27F219DC8);
    sub_24F924E28();
    return (*(v24 + 8))(v16, v25);
  }

  else
  {
    v27 = a1;

    sub_24F921A18();
    v28 = v33;
    v29 = v38;
    (*(v33 + 16))(v9, v7, v38);
    swift_storeEnumTagMultiPayload();
    v30 = sub_24EB3A624();
    v39 = v12;
    v40 = MEMORY[0x277D839B0];
    v41 = v30;
    v42 = MEMORY[0x277D839C8];
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F219DD0, &qword_27F219DC8);
    sub_24F924E28();
    return (*(v28 + 8))(v7, v29);
  }
}

void sub_24EB3191C(_BYTE *a1, _BYTE *a2)
{
  v4 = sub_24F921738();
  MEMORY[0x28223BE20](v4 - 8);
  if ((*a1 & 1) != 0 || !*a2)
  {
    if (qword_27F2113E0 != -1)
    {
      swift_once();
    }

    v9 = sub_24F9220D8();
    __swift_project_value_buffer(v9, qword_27F39E7F0);
    v12 = sub_24F9220B8();
    v10 = sub_24F92BDD8();
    if (os_log_type_enabled(v12, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_24E5DD000, v12, v10, "Network connectivity changed but a refresh is not required.", v11, 2u);
      MEMORY[0x2530542D0](v11, -1, -1);
    }
  }

  else
  {
    if (qword_27F2113E0 != -1)
    {
      swift_once();
    }

    v5 = sub_24F9220D8();
    __swift_project_value_buffer(v5, qword_27F39E7F0);
    v6 = sub_24F9220B8();
    v7 = sub_24F92BDB8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_24E5DD000, v6, v7, "Network connectivity changed from offline to online for SearchResults, refreshing", v8, 2u);
      MEMORY[0x2530542D0](v8, -1, -1);
    }

    type metadata accessor for SearchResultsPageView.TabContentView(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229000);
    sub_24F926F38();
    sub_24F921718();
    sub_24F926F48();
  }
}

uint64_t sub_24EB31B80()
{
  sub_24F9257D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229198);
  sub_24EB3AC20();
  return sub_24F923438();
}

uint64_t sub_24EB31C08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SearchResultsPageView.SearchGroupView(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229190);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v22 - v9;
  v11 = type metadata accessor for GameSearchResultsGroup(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = (&v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24EB2F664(v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_24E601704(v10, &qword_27F229190);
    v15 = 1;
  }

  else
  {
    sub_24EB39210(v10, v14, type metadata accessor for GameSearchResultsGroup);
    v17 = *(a1 + 40);
    v16 = *(a1 + 48);
    v22 = a2;
    v18 = *v14;
    v19 = v14[1];
    sub_24E60169C((v14 + 4), v23, &qword_27F225D38);
    sub_24E612C80(v23, (v7 + 4));
    v20 = type metadata accessor for SearchResultsPageView.TabContentView(0);
    sub_24E615E00(a1 + *(v20 + 24), (v7 + 9));

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228FD8);
    sub_24F927358();
    *v7 = v17;
    v7[1] = v16;
    v7[2] = v18;
    v7[3] = v19;
    type metadata accessor for SearchResultsPageViewModel();
    sub_24EB388F4(&qword_27F215718, type metadata accessor for SearchResultsPageViewModel);
    a2 = v22;
    sub_24F927378();
    sub_24EB38C2C(v14, type metadata accessor for GameSearchResultsGroup);
    sub_24EB39210(v7, a2, type metadata accessor for SearchResultsPageView.SearchGroupView);
    v15 = 0;
  }

  return (*(v5 + 56))(a2, v15, 1, v4);
}

uint64_t sub_24EB31F44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_24F921738();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229190);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - v6;
  result = type metadata accessor for SearchResultsPageView.TabContentView(0);
  if (*(a3 + *(result + 20)) == 1)
  {
    sub_24EB2F664(v7);
    v9 = type metadata accessor for GameSearchResultsGroup(0);
    v10 = (*(*(v9 - 8) + 48))(v7, 1, v9);
    result = sub_24E601704(v7, &qword_27F229190);
    if (v10 == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229000);
      sub_24F926F38();
      sub_24F921718();
      return sub_24F926F48();
    }
  }

  return result;
}

uint64_t sub_24EB320D0@<X0>(uint64_t a1@<X2>, _BYTE *a2@<X8>)
{
  v4 = type metadata accessor for SearchResultsPageView.TabContentView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220);
  result = sub_24F926F38();
  if (v7 == 1)
  {
    v6 = *(a1 + *(v4 + 20));
  }

  else
  {
    v6 = 0;
  }

  *a2 = v6;
  return result;
}

uint64_t sub_24EB32168()
{
  type metadata accessor for SearchResultsPageView.TabContentView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220);
  return sub_24F926F48();
}

uint64_t sub_24EB321E0@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  type metadata accessor for SearchResultsPageView.SearchGroupView(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228FD8);
  sub_24F927358();
  swift_getKeyPath();
  sub_24EB388F4(&qword_27F215718, type metadata accessor for SearchResultsPageViewModel);
  sub_24F91FD88();

  v7 = OBJC_IVAR____TtC12GameStoreKit26SearchResultsPageViewModel__groupStates;
  swift_beginAccess();
  v8 = *(v17 + v7);

  if (*(v8 + 16))
  {
    v9 = sub_24E76D9B8(v4, v3, v6, v5);
    v11 = v10;

    if (v11)
    {
      v12 = *(v8 + 56);
      v13 = type metadata accessor for PaginatedShelfContent();
      v14 = *(v13 - 8);
      sub_24EB391A8(v12 + *(v14 + 72) * v9, a1, type metadata accessor for PaginatedShelfContent);

      return (*(v14 + 56))(a1, 0, 1, v13);
    }
  }

  else
  {
  }

  v16 = type metadata accessor for PaginatedShelfContent();
  return (*(*(v16 - 8) + 56))(a1, 1, 1, v16);
}

void *sub_24EB3243C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223258);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10 - v2;
  v4 = type metadata accessor for PaginatedShelfContent();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24EB321E0(v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_24E601704(v3, &qword_27F223258);
    return MEMORY[0x277D84F90];
  }

  else
  {
    sub_24EB39210(v3, v7, type metadata accessor for PaginatedShelfContent);
    type metadata accessor for SearchResultsPageView.SearchGroupView(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228FD8);
    sub_24F927358();
    v9 = sub_24F7DD17C(v7, *(v0 + 16), *(v0 + 24));

    sub_24EB38C2C(v7, type metadata accessor for PaginatedShelfContent);
    return v9;
  }
}

uint64_t sub_24EB32610@<X0>(uint64_t a1@<X8>)
{
  v56 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EDC0);
  MEMORY[0x28223BE20](v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229248);
  MEMORY[0x28223BE20](v3);
  v5 = &v46 - v4;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229250);
  MEMORY[0x28223BE20](v54);
  v55 = &v46 - v6;
  v7 = sub_24F921738();
  v49 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228E50);
  MEMORY[0x28223BE20](v10 - 8);
  v50 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v51 = &v46 - v13;
  v14 = type metadata accessor for SearchResultsPageView.SearchGroupView(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229258);
  MEMORY[0x28223BE20](v53);
  v52 = &v46 - v18;
  sub_24E615E00(v1 + 32, v61);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213818);
  if (swift_dynamicCast())
  {
    v63[0] = v58;
    v63[1] = v59;
    v64 = v60;
    sub_24EB391A8(v1, &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SearchResultsPageView.SearchGroupView);
    sub_24EB3BA60(v63, v61);
    v19 = *(v15 + 80);
    v48 = v3;
    v20 = (v19 + 16) & ~v19;
    v47 = v1;
    v46 = v7;
    v21 = swift_allocObject();
    sub_24EB39210(v17, v21 + v20, type metadata accessor for SearchResultsPageView.SearchGroupView);
    v22 = v21 + ((v20 + v16 + 7) & 0xFFFFFFFFFFFFFFF8);
    v23 = v61[1];
    *v22 = v61[0];
    *(v22 + 16) = v23;
    *(v22 + 32) = v62;
    sub_24EB391A8(v1, v17, type metadata accessor for SearchResultsPageView.SearchGroupView);
    v24 = swift_allocObject();
    sub_24EB39210(v17, v24 + v20, type metadata accessor for SearchResultsPageView.SearchGroupView);
    v25 = swift_allocObject();
    *(v25 + 16) = sub_24EB3BCE8;
    *(v25 + 24) = v24;
    sub_24F921728();
    v26 = v51;
    v27 = v46;
    sub_24F9271B8();
    (*(v49 + 8))(v9, v27);
    sub_24E60169C(v26, v50, &qword_27F228E50);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229278);
    sub_24F921AA8();
    sub_24F921A58();
    sub_24E602068(&qword_27F229280, &qword_27F229278);
    sub_24EB388F4(&qword_27F215638, MEMORY[0x277D7EBB0]);
    sub_24EB388F4(&qword_27F215640, MEMORY[0x277D7EB90]);
    v28 = v52;
    sub_24F921D08();
    sub_24E601704(v26, &qword_27F228E50);
    v29 = v47[1];
    v30 = v47[2];
    v31 = v47[3];
    v32 = (v28 + *(v53 + 52));
    *v32 = *v47;
    v32[1] = v29;
    v32[2] = v30;
    v32[3] = v31;
    sub_24E60169C(v28, v55, &qword_27F229258);
    swift_storeEnumTagMultiPayload();
    sub_24E602068(&qword_27F229268, &qword_27F229258);
    sub_24E602068(&qword_27F229270, &qword_27F229248);

    sub_24F924E28();
    sub_24E601704(v28, &qword_27F229258);
    return sub_24EB3BE00(v63);
  }

  else
  {
    v60 = 0;
    v58 = 0u;
    v59 = 0u;
    sub_24E601704(&v58, &qword_27F229260);
    sub_24E615E00(v1 + 32, v63);
    sub_24E615E00(v1 + 72, v61);
    sub_24E615E00(v63, &v58);
    sub_24E615E00(v61, v57);
    v34 = v3;
    v35 = *(v3 + 68);
    *&v5[v35] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EDD8);
    swift_storeEnumTagMultiPayload();
    v5[v34[13]] = 0;
    v52 = v2;
    v36 = __swift_project_boxed_opaque_existential_1(&v58, *(&v59 + 1));
    v37 = MEMORY[0x28223BE20](v36);
    (*(v39 + 16))(&v46 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0), v37);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213768);
    sub_24F928D38();
    v40 = &v5[v34[14]];
    *v40 = 0;
    v40[8] = 0;
    sub_24E615E00(v57, &v5[v34[15]]);
    v41 = &v5[v34[16]];
    *v41 = sub_24F78343C;
    v41[1] = 0;
    v42 = __swift_project_boxed_opaque_existential_1(&v58, *(&v59 + 1));
    v43 = MEMORY[0x28223BE20](v42);
    (*(v45 + 16))(&v46 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0), v43);
    type metadata accessor for GSKShelf();
    sub_24E602068(&qword_27F21EDE0, &qword_27F213768);
    sub_24F9217C8();
    sub_24F926F28();
    __swift_destroy_boxed_opaque_existential_1(v57);
    __swift_destroy_boxed_opaque_existential_1(v61);
    __swift_destroy_boxed_opaque_existential_1(v63);
    __swift_destroy_boxed_opaque_existential_1(&v58);
    sub_24E60169C(v5, v55, &qword_27F229248);
    swift_storeEnumTagMultiPayload();
    sub_24E602068(&qword_27F229268, &qword_27F229258);
    sub_24E602068(&qword_27F229270, &qword_27F229248);
    sub_24F924E28();
    return sub_24E601704(v5, &qword_27F229248);
  }
}

uint64_t sub_24EB33140(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  sub_24F92B7F8();
  v3[5] = sub_24F92B7E8();
  v5 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24EB331D8, v5, v4);
}

uint64_t sub_24EB331D8()
{
  v1 = v0[4];
  v2 = v0[3];

  type metadata accessor for SearchResultsPageView.SearchGroupView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228FD8);
  sub_24F927358();
  sub_24F7D8884(*v2, *(v2 + 8), *(v2 + 16), *(v2 + 24), v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_24EB33290()
{
  v0 = sub_24F925068();
  MEMORY[0x28223BE20](v0);
  sub_24F924C88();
  sub_24EB388F4(&qword_27F2150C0, MEMORY[0x277CE0428]);
  sub_24F92D1D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229288);
  sub_24EB3BE5C();
  return sub_24F9233F8();
}

uint64_t sub_24EB333C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v12[0] = a2;
  v3 = type metadata accessor for SearchResultsPageView.SearchGroupView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2292B8);
  MEMORY[0x28223BE20](v6);
  v7 = sub_24EB3243C();
  v12[1] = v7;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2165E8);
  sub_24E602068(&qword_27F2292C0, &qword_27F2165E8);
  sub_24F921BA8();
  swift_getKeyPath();
  sub_24EB391A8(a1, v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SearchResultsPageView.SearchGroupView);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = swift_allocObject();
  sub_24EB39210(v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for SearchResultsPageView.SearchGroupView);
  *(v9 + ((v5 + v8 + 7) & 0xFFFFFFFFFFFFFFF8)) = v7;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_24EB3C0B8;
  *(v10 + 24) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2292A0);
  sub_24E602068(&qword_27F2292C8, &qword_27F2292B8);
  sub_24EB388F4(&qword_27F21BCA0, MEMORY[0x277D224C0]);
  sub_24EB3BEE0();
  return sub_24F927228();
}

uint64_t sub_24EB336C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v51 = a4;
  v52 = a1;
  v53 = a5;
  v7 = type metadata accessor for GSKShelf();
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2292B0);
  MEMORY[0x28223BE20](v11);
  v13 = &v50 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2292D8);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v50 - v15;
  v17 = type metadata accessor for SearchResultsPageView.SearchGroupView(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17 - 8);
  sub_24EB391A8(a3, &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SearchResultsPageView.SearchGroupView);
  v20 = (*(v18 + 80) + 16) & ~*(v18 + 80);
  v21 = swift_allocObject();
  v22 = a2;
  sub_24EB39210(&v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20, type metadata accessor for SearchResultsPageView.SearchGroupView);
  v23 = *(v51 + 16) - 1;
  v24 = *(a2 + *(v8 + 68));
  if (*(v24 + 16))
  {
    sub_24E615E00(v24 + 32, v55);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0);
    v25 = type metadata accessor for MediaCard();
    v26 = swift_dynamicCast();
    (*(*(v25 - 8) + 56))(v16, v26 ^ 1u, 1, v25);
  }

  else
  {
    v25 = type metadata accessor for MediaCard();
    (*(*(v25 - 8) + 56))(v16, 1, 1, v25);
  }

  type metadata accessor for MediaCard();
  (*(*(v25 - 8) + 48))(v16, 1, v25);
  sub_24E601704(v16, &qword_27F2292D8);
  sub_24EB391A8(v22, v10, type metadata accessor for GSKShelf);
  v27 = 0;
  v28 = 0;
  v29 = v52;
  if (v23 == v52)
  {

    v27 = sub_24EB3C2E0;
    v28 = v21;
  }

  v30 = &v13[v11[14]];
  *v30 = swift_getKeyPath();
  v30[8] = 0;
  v31 = &v13[v11[15]];
  v54 = 0;
  sub_24F926F28();
  v32 = v56;
  *v31 = v55[0];
  *(v31 + 1) = v32;
  v33 = v11[16];
  *&v13[v33] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EE58);
  swift_storeEnumTagMultiPayload();
  *v13 = 0;
  sub_24E64346C(&v13[v11[9]]);
  sub_24EB38C2C(v10, type metadata accessor for GSKShelf);
  v34 = &v13[v11[10]];
  *v34 = v29;
  v34[8] = 0;
  v35 = &v13[v11[11]];
  *v35 = CGSizeMake;
  v35[1] = 0;
  v36 = &v13[v11[12]];
  *v36 = v27;
  v36[1] = v28;
  v37 = &v13[v11[13]];
  *v37 = 0;
  v37[1] = 0;
  v38 = sub_24F925828();
  sub_24F923318();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;

  v47 = v53;
  sub_24E6009C8(v13, v53, &qword_27F2292B0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2292A0);
  v49 = v47 + *(result + 36);
  *v49 = v38;
  *(v49 + 8) = v40;
  *(v49 + 16) = v42;
  *(v49 + 24) = v44;
  *(v49 + 32) = v46;
  *(v49 + 40) = 0;
  return result;
}

uint64_t sub_24EB33BD8(uint64_t *a1)
{
  type metadata accessor for SearchResultsPageView.SearchGroupView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228FD8);
  sub_24F927358();
  sub_24F7D8E9C(*a1, a1[1], a1[2], a1[3]);
}

uint64_t sub_24EB33C44@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F924848();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for SearchResultsPageView.ToolbarView(0);
  sub_24E60169C(v1 + *(v10 + 32), v9, &unk_27F254ED0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_24E6009C8(v9, a1, &qword_27F215598);
  }

  sub_24F92BDC8();
  v12 = sub_24F9257A8();
  sub_24F921FD8();

  sub_24F924838();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24EB33E30()
{
  v0 = sub_24F925218();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v24 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254F20);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v23 - v14;
  sub_24EB33C44(&v23 - v14);
  (*(v1 + 104))(v12, *MEMORY[0x277CE0558], v0);
  (*(v1 + 56))(v12, 0, 1, v0);
  v16 = *(v4 + 56);
  sub_24E60169C(v15, v6, &qword_27F215598);
  sub_24E60169C(v12, &v6[v16], &qword_27F215598);
  v17 = *(v1 + 48);
  if (v17(v6, 1, v0) != 1)
  {
    sub_24E60169C(v6, v9, &qword_27F215598);
    if (v17(&v6[v16], 1, v0) != 1)
    {
      v19 = &v6[v16];
      v20 = v24;
      (*(v1 + 32))(v24, v19, v0);
      sub_24EB388F4(&qword_27F215650, MEMORY[0x277CE0570]);
      v21 = sub_24F92AFF8();
      v22 = *(v1 + 8);
      v22(v20, v0);
      sub_24E601704(v12, &qword_27F215598);
      sub_24E601704(v15, &qword_27F215598);
      v22(v9, v0);
      sub_24E601704(v6, &qword_27F215598);
      if (v21)
      {
        return sub_24F927628();
      }

      return sub_24F927618();
    }

    sub_24E601704(v12, &qword_27F215598);
    sub_24E601704(v15, &qword_27F215598);
    (*(v1 + 8))(v9, v0);
LABEL_6:
    sub_24E601704(v6, &unk_27F254F20);
    return sub_24F927618();
  }

  sub_24E601704(v12, &qword_27F215598);
  sub_24E601704(v15, &qword_27F215598);
  if (v17(&v6[v16], 1, v0) != 1)
  {
    goto LABEL_6;
  }

  sub_24E601704(v6, &qword_27F215598);
  return sub_24F927628();
}

uint64_t sub_24EB34278@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229028);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v43[-1] - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229030);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v43[-1] - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229038);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = &v43[-1] - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229040);
  v14 = v13 - 8;
  MEMORY[0x28223BE20](v13);
  v16 = &v43[-1] - v15;
  *v4 = sub_24F9249A8();
  *(v4 + 1) = 0;
  v4[16] = 1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229048);
  sub_24EB3466C(v1, &v4[*(v17 + 44)]);
  sub_24EB33E30();
  sub_24F9242E8();
  sub_24E6009C8(v4, v8, &qword_27F229028);
  v18 = &v8[*(v6 + 44)];
  v19 = v49;
  *(v18 + 4) = v48;
  *(v18 + 5) = v19;
  *(v18 + 6) = v50;
  v20 = v45;
  *v18 = v44;
  *(v18 + 1) = v20;
  v21 = v47;
  *(v18 + 2) = v46;
  *(v18 + 3) = v21;
  KeyPath = swift_getKeyPath();
  v23 = swift_getKeyPath();
  v24 = &v12[*(v10 + 44)];
  *v24 = 0;
  *(v24 + 1) = 0;
  v24[16] = 1;
  *(v24 + 3) = KeyPath;
  v24[32] = 0;
  *(v24 + 5) = v23;
  v25 = type metadata accessor for PageMarginsViewModifier();
  *(v24 + 7) = 0;
  *(v24 + 8) = 0;
  *(v24 + 6) = 0;
  v24[72] = 0;
  v26 = *(v25 + 36);
  *&v24[v26] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0);
  swift_storeEnumTagMultiPayload();
  sub_24E6009C8(v8, v12, &qword_27F229030);
  v27 = sub_24F927618();
  v29 = v28;
  v30 = &v16[*(v14 + 44)];
  sub_24EB34CF0(v1, v30);
  v31 = (v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229050) + 36));
  *v31 = v27;
  v31[1] = v29;
  v32 = sub_24E6009C8(v12, v16, &qword_27F229038);
  v33 = MEMORY[0x25304D060](v32, 0.5, 1.0, 0.0);
  v34 = (v1 + *(type metadata accessor for SearchResultsPageView.ToolbarView(0) + 28));
  v35 = v34[1];
  v36 = v34[2];
  v43[1] = *v34;
  v43[2] = v35;
  v43[3] = v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229058);
  MEMORY[0x25304CAF0](v43, v37);
  v38 = v43[0];
  v39 = v42;
  sub_24E6009C8(v16, v42, &qword_27F229040);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229060);
  v41 = (v39 + *(result + 36));
  *v41 = v33;
  v41[1] = v38;
  return result;
}

uint64_t sub_24EB3466C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229088);
  v54 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v50 = (v42 - v3);
  v47 = type metadata accessor for SearchResultsPageView.FilterMenu(0);
  MEMORY[0x28223BE20](v47);
  v49 = v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v48 = v42 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229090);
  MEMORY[0x28223BE20](v7 - 8);
  v55 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v52 = v42 - v10;
  v11 = sub_24F925A38();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SearchResultsPageView.TabsToolbarView(0);
  MEMORY[0x28223BE20](v15);
  v53 = v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = v42 - v18;
  *&v51 = a1;
  v20 = *a1;
  v21 = a1[2];
  v22 = a1[3];
  v23 = a1[4];
  v46 = a1[1];
  v60 = v46;
  v61 = v21;
  v45 = v21;
  v44 = v22;
  v62 = v22;
  v63 = v23;
  v43 = v23;

  v42[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228F00);
  sub_24F927198();
  v24 = v58;
  v25 = v59;
  *v19 = v20;
  *(v19 + 8) = v24;
  *(v19 + 24) = v25;
  *(v19 + 5) = 0;
  v60 = 0x402A000000000000;
  v26 = *MEMORY[0x277CE0A58];
  v27 = *(v12 + 104);
  v27(v14, v26, v11);
  sub_24E66ED98();
  sub_24F9237B8();
  v60 = 0x4042000000000000;
  v27(v14, v26, v11);
  v28 = v52;
  sub_24F9237B8();
  sub_24EB33E30();
  sub_24F927628();
  v29 = 1;
  if (sub_24F9275E8())
  {
    type metadata accessor for SearchResultsPageView.ToolbarView(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228FD8);
    sub_24F927358();
    v60 = v46;
    v61 = v45;
    v62 = v44;
    v63 = v43;
    sub_24F927198();
    v51 = v58;
    v30 = v59;
    type metadata accessor for SearchResultsPageViewModel();
    sub_24EB388F4(&qword_27F215718, type metadata accessor for SearchResultsPageViewModel);
    v31 = v48;
    sub_24F927378();
    v32 = v47;
    v33 = (v31 + *(v47 + 20));
    *v33 = v51;
    v33[1] = v30;
    *(v31 + *(v32 + 24)) = 0;
    v34 = v49;
    sub_24EB391A8(v31, v49, type metadata accessor for SearchResultsPageView.FilterMenu);
    v35 = v50;
    *v50 = 0;
    *(v35 + 8) = 1;
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2290A0);
    sub_24EB391A8(v34, v35 + *(v36 + 48), type metadata accessor for SearchResultsPageView.FilterMenu);
    sub_24EB38C2C(v31, type metadata accessor for SearchResultsPageView.FilterMenu);
    sub_24EB38C2C(v34, type metadata accessor for SearchResultsPageView.FilterMenu);
    sub_24E6009C8(v35, v28, &qword_27F229088);
    v29 = 0;
  }

  (*(v54 + 56))(v28, v29, 1, v56);
  v37 = v53;
  sub_24EB391A8(v19, v53, type metadata accessor for SearchResultsPageView.TabsToolbarView);
  v38 = v55;
  sub_24E60169C(v28, v55, &qword_27F229090);
  v39 = v57;
  sub_24EB391A8(v37, v57, type metadata accessor for SearchResultsPageView.TabsToolbarView);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229098);
  sub_24E60169C(v38, v39 + *(v40 + 48), &qword_27F229090);
  sub_24E601704(v28, &qword_27F229090);
  sub_24EB38C2C(v19, type metadata accessor for SearchResultsPageView.TabsToolbarView);
  sub_24E601704(v38, &qword_27F229090);
  return sub_24EB38C2C(v37, type metadata accessor for SearchResultsPageView.TabsToolbarView);
}

uint64_t sub_24EB34CF0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_24F926C98();
  v5 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229068) + 36);
  sub_24F927428();
  v6 = (a1 + *(type metadata accessor for SearchResultsPageView.ToolbarView(0) + 28));
  v7 = v6[1];
  v8 = v6[2];
  v22 = *v6;
  *&v23 = v7;
  *(&v23 + 1) = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229058);
  MEMORY[0x25304CAF0](&v21, v9);
  v10 = v21;
  *&v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2127C0) + 36)] = v10;
  LOBYTE(a1) = sub_24F925808();
  v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229070) + 36)] = a1;
  *a2 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216560);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_24F9479A0;
  sub_24F926C88();
  *(v11 + 32) = sub_24F9273C8();
  *(v11 + 40) = v12;
  sub_24F926C88();
  sub_24F926D08();

  *(v11 + 48) = sub_24F9273C8();
  *(v11 + 56) = v13;
  sub_24F926C88();
  sub_24F926D08();

  *(v11 + 64) = sub_24F9273C8();
  *(v11 + 72) = v14;
  sub_24F927878();
  sub_24F927898();
  sub_24F9273D8();
  sub_24F923BD8();
  v15 = v22;
  v16 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229078) + 36);
  *v16 = v15;
  v17 = v23;
  *(v16 + 24) = v24;
  *(v16 + 8) = v17;
  v18 = sub_24F924058();
  LOBYTE(v4) = sub_24F925808();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229080);
  v20 = a2 + *(result + 36);
  *v20 = v18;
  v20[8] = v4;
  return result;
}

uint64_t sub_24EB34F3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v63 = a2;
  v86 = a1;
  v82 = a3;
  v4 = sub_24F929888();
  v83 = *(v4 - 8);
  v84 = v4;
  MEMORY[0x28223BE20](v4);
  v81 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254FA0);
  MEMORY[0x28223BE20](v6 - 8);
  v73 = &v62 - v7;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229350);
  v76 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v75 = &v62 - v8;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229348);
  v79 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v77 = &v62 - v9;
  v10 = type metadata accessor for GameSearchResultsTab(0);
  v11 = v10 - 8;
  v85 = *(v10 - 8);
  v12 = *(v85 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = type metadata accessor for SearchResultsPageView.TabsToolbarView(0);
  v72 = *(v13 - 8);
  v14 = *(v72 + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_24F928AD8();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_24F928B08();
  v74 = *(v87 - 8);
  v20 = MEMORY[0x28223BE20](v87);
  v22 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v11 + 36);
  v24 = v86;
  (*(v17 + 16))(v19, v86 + v23, v16, v20);
  sub_24EB391A8(a2, v15, type metadata accessor for SearchResultsPageView.TabsToolbarView);
  v25 = v24;
  sub_24EB391A8(v24, &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GameSearchResultsTab);
  v26 = *(v72 + 80);
  v66 = ~v26;
  v27 = (v26 + 16) & ~v26;
  v28 = *(v85 + 80);
  v64 = ~v28;
  v69 = v14;
  v67 = v26;
  v71 = v12;
  v29 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = v26 | v28;
  v30 = swift_allocObject();
  sub_24EB39210(v15, v30 + v27, type metadata accessor for SearchResultsPageView.TabsToolbarView);
  sub_24EB39210(v29, v30 + ((v14 + v28 + v27) & ~v28), type metadata accessor for GameSearchResultsTab);
  v31 = v22;
  v32 = v63;
  sub_24F928AF8();
  v33 = *(v25 + 48);
  v85 = *(v25 + 40);
  v34 = *(v32 + 16);
  *&v88 = *(v32 + 8);
  *(&v88 + 1) = v34;
  v89 = *(v32 + 24);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228F00);
  MEMORY[0x25304CAF0](&v92, v35);
  v72 = v33;
  if (!v93)
  {
    goto LABEL_7;
  }

  if (v85 != v92 || v93 != v33)
  {
    v36 = sub_24F92CE08();

    if (v36)
    {
      goto LABEL_6;
    }

LABEL_7:
    LODWORD(v88) = sub_24F925198();
    v70 = sub_24F9238D8();
    v37 = 0;
    goto LABEL_8;
  }

LABEL_6:
  *&v88 = sub_24F926C88();
  v70 = sub_24F9238D8();
  v37 = 1;
LABEL_8:
  v38 = sub_24F9232F8();
  (*(*(v38 - 8) + 56))(v73, 1, 1, v38);
  v39 = v87;
  *(&v89 + 1) = v87;
  v90 = MEMORY[0x277D21CB8];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v88);
  v41 = v74;
  v42 = *(v74 + 16);
  v68 = v31;
  v42(boxed_opaque_existential_1, v31, v39);
  sub_24EB391A8(v86, v29, type metadata accessor for GameSearchResultsTab);
  sub_24EB391A8(v32, v15, type metadata accessor for SearchResultsPageView.TabsToolbarView);
  v43 = (v28 + 16) & v64;
  v44 = (v71 + v67 + v43) & v66;
  v45 = (v69 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = swift_allocObject();
  sub_24EB39210(v29, v46 + v43, type metadata accessor for GameSearchResultsTab);
  sub_24EB39210(v15, v46 + v44, type metadata accessor for SearchResultsPageView.TabsToolbarView);
  v47 = v46 + v45;
  *v47 = v70;
  *(v47 + 8) = v37;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229360);
  v48 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F229368);
  v49 = sub_24EB3D100();
  v92 = v48;
  v93 = v49;
  swift_getOpaqueTypeConformance2();
  v50 = v75;
  sub_24F921788();
  v51 = sub_24F9271D8();
  v88 = 0u;
  v89 = 0u;
  v90 = 0;
  v91[3] = v51;
  v91[4] = sub_24EB388F4(&qword_27F214E38, MEMORY[0x277CE1260]);
  v52 = __swift_allocate_boxed_opaque_existential_1(v91);
  v53 = *MEMORY[0x277CE0118];
  v54 = sub_24F924B38();
  (*(*(v54 - 8) + 104))(v52, v53, v54);
  v55 = sub_24E602068(&qword_27F229358, &qword_27F229350);
  v56 = sub_24E620DE8();
  v57 = v77;
  v58 = v78;
  sub_24F926178();
  sub_24E6A56E8(&v88);
  (*(v76 + 8))(v50, v58);
  *&v88 = v85;
  *(&v88 + 1) = v72;

  MEMORY[0x253050C20](0x7265746C6946, 0xE600000000000000);
  *(&v89 + 1) = MEMORY[0x277D837D0];
  v59 = v81;
  sub_24F929858();
  __swift_destroy_boxed_opaque_existential_1(&v88);
  *&v88 = v58;
  *(&v88 + 1) = &type metadata for StrokeFocusButtonStyle;
  *&v89 = v55;
  *(&v89 + 1) = v56;
  swift_getOpaqueTypeConformance2();
  v60 = v80;
  sub_24F925EE8();

  (*(v83 + 8))(v59, v84);
  (*(v79 + 8))(v57, v60);
  return (*(v41 + 8))(v68, v87);
}

uint64_t sub_24EB359F8()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228F00);
  return sub_24F927178();
}

uint64_t sub_24EB35A68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v57 = a4;
  v63 = a5;
  v64 = sub_24F9248C8();
  v62 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v61 = &v50[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_24F9259C8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v50[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229380);
  MEMORY[0x28223BE20](v53);
  v14 = &v50[-v13];
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229368);
  MEMORY[0x28223BE20](v58);
  v59 = &v50[-v15];
  sub_24EB36098(a1, &v69);
  v55 = v70;
  v56 = v69;
  v16 = v71;
  sub_24F925898();
  (*(v10 + 104))(v12, *MEMORY[0x277CE0A10], v9);
  sub_24F9259F8();

  (*(v10 + 8))(v12, v9);
  v54 = sub_24F9258E8();

  KeyPath = swift_getKeyPath();
  v76 = v16;
  v60 = a3;

  v51 = sub_24F9257F8();
  sub_24F923318();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  LOBYTE(a3) = v76;
  v67 = 0;
  type metadata accessor for SearchResultsPageView.TabsToolbarView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DE0);
  sub_24F9237D8();
  sub_24F927618();
  sub_24F9242E8();
  *&v68[55] = v72;
  *&v68[71] = v73;
  *&v68[87] = v74;
  *&v68[103] = v75;
  *&v68[7] = v69;
  *&v68[23] = v70;
  *&v68[39] = v71;
  v25 = sub_24F927618();
  v27 = v26;
  v28 = &v14[*(v53 + 36)];
  *v28 = sub_24F927618();
  v28[1] = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229410);
  v31 = sub_24EB36194(v57 & 1, v28 + *(v30 + 44));
  v32 = MEMORY[0x25304D060](v31, 0.5, 0.85, 0.0);
  v33 = *(a2 + 16);
  v65[2] = *(a2 + 8);
  v65[3] = v33;
  v66 = *(a2 + 24);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228F00);
  MEMORY[0x25304CAF0](v65, v34);
  v35 = v65[0];
  v36 = v65[1];
  v37 = (v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229418) + 36));
  *v37 = v32;
  v37[1] = v35;
  v37[2] = v36;
  v38 = (v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229408) + 36));
  *v38 = v25;
  v38[1] = v27;
  v39 = v55;
  *v14 = v56;
  *(v14 + 1) = v39;
  v14[32] = a3;
  v40 = v54;
  *(v14 + 5) = KeyPath;
  *(v14 + 6) = v40;
  *(v14 + 7) = v60;
  v14[64] = v51;
  *(v14 + 9) = v18;
  *(v14 + 10) = v20;
  *(v14 + 11) = v22;
  *(v14 + 12) = v24;
  v14[104] = 0;
  v41 = *&v68[32];
  *(v14 + 153) = *&v68[48];
  *(v14 + 137) = v41;
  v42 = *v68;
  *(v14 + 121) = *&v68[16];
  *(v14 + 105) = v42;
  *(v14 + 27) = *&v68[111];
  v43 = *&v68[80];
  *(v14 + 201) = *&v68[96];
  *(v14 + 185) = v43;
  *(v14 + 169) = *&v68[64];
  v44 = v59;
  v45 = &v59[*(v58 + 36)];
  v46 = *MEMORY[0x277CE0118];
  v47 = sub_24F924B38();
  (*(*(v47 - 8) + 104))(v45, v46, v47);
  v45[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B698) + 36)] = 0;
  sub_24E6009C8(v14, v44, &qword_27F229380);
  v48 = v61;
  sub_24F9248B8();
  sub_24EB3D100();
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  (*(v62 + 8))(v48, v64);
  return sub_24E601704(v44, &qword_27F229368);
}

double sub_24EB36098@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 64))
  {
    v4 = *(a1 + 56);
    sub_24E600AEC();

    sub_24F925E18();
  }

  else
  {
    type metadata accessor for SearchResultsPageView.TabsToolbarView(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DE0);
    sub_24F9237D8();
    sub_24F927618();
  }

  sub_24EB3D608();
  sub_24F924E28();
  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 32) = v6;
  return result;
}

uint64_t sub_24EB36194@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229420);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v19 - v7;
  if (a1)
  {
    v9 = *MEMORY[0x277CE0118];
    v20 = v5;
    v10 = sub_24F924B38();
    (*(*(v10 - 8) + 104))(v8, v9, v10);
    v11 = sub_24F926D18();
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D6B8);
    *&v8[*(v12 + 52)] = v11;
    *&v8[*(v12 + 56)] = 256;
    v13 = sub_24F927778();
    LODWORD(v11) = sub_24F9254B8();
    sub_24F9278A8();
    v14 = &v8[*(v4 + 36)];
    *v14 = 0x64657463656C6553;
    *(v14 + 1) = 0xEB00000000626154;
    *(v14 + 2) = v13;
    *(v14 + 6) = v11;
    *(v14 + 4) = v15;
    *(v14 + 5) = v16;
    v14[48] = 1;
    sub_24E6009C8(v8, a2, &qword_27F229420);
    return (*(v20 + 56))(a2, 0, 1, v4);
  }

  else
  {
    v18 = *(v5 + 56);

    return v18(a2, 1, 1, v4, v6);
  }
}

uint64_t sub_24EB363AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  *a2 = sub_24F9249A8();
  *(a2 + 8) = 0x4020000000000000;
  *(a2 + 16) = 0;
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229338) + 44);
  v19 = *v2;
  swift_getKeyPath();
  sub_24EB391A8(v2, &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SearchResultsPageView.TabsToolbarView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_24EB39210(&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for SearchResultsPageView.TabsToolbarView);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225D58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229340);
  sub_24E602068(&qword_27F228F78, &qword_27F225D58);
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F229348);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F229350);
  v10 = sub_24E602068(&qword_27F229358, &qword_27F229350);
  v11 = sub_24E620DE8();
  v15 = v9;
  v16 = &type metadata for StrokeFocusButtonStyle;
  v17 = v10;
  v18 = v11;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v15 = v8;
  v16 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  return sub_24F927228();
}

uint64_t sub_24EB36678()
{
  v1 = type metadata accessor for GameSearchResultsTabContent(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = (&v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (v0 + *(type metadata accessor for SearchResultsPageView.FilterMenu(0) + 20));
  v6 = v5[1];
  v20 = *v5;
  v21 = v6;
  v22 = *(v5 + 1);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228F00);
  MEMORY[0x25304CAF0](&v18, v7);
  v8 = v19;
  if (v19)
  {
    v9 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228FD8);
    sub_24F927358();
    v10 = v20;
    swift_getKeyPath();
    v20 = v10;
    sub_24EB388F4(&qword_27F215718, type metadata accessor for SearchResultsPageViewModel);
    sub_24F91FD88();

    v11 = OBJC_IVAR____TtC12GameStoreKit26SearchResultsPageViewModel__tabStates;
    swift_beginAccess();
    v12 = *(v10 + v11);

    if (*(v12 + 16))
    {
      v13 = sub_24E76D644(v9, v8);
      v15 = v14;

      if (v15)
      {
        sub_24EB391A8(*(v12 + 56) + *(v2 + 72) * v13, v4, type metadata accessor for GameSearchResultsTabContent);

        v16 = *v4;

        sub_24EB38C2C(v4, type metadata accessor for GameSearchResultsTabContent);
        return v16;
      }
    }

    else
    {
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_24EB368DC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_24F924B38();
  v73 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2292E0);
  MEMORY[0x28223BE20](v7);
  v75 = v63 - v8;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2292E8);
  MEMORY[0x28223BE20](v74);
  v10 = v63 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2292F0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v76 = v63 - v16;
  v17 = *(sub_24EB36678() + 16);

  if (v17 >= 2 && (v18 = (v2 + *(type metadata accessor for SearchResultsPageView.FilterMenu(0) + 20)), v19 = *v18, v20 = v18[1], v22 = v18[2], v21 = v18[3], v71 = v20, v72 = v19, v77 = v19, v78 = v20, v69 = v21, v70 = v22, v79 = v22, v80 = v21, v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228F00), v23 = MEMORY[0x25304CAF0](&v82), (v24 = v83) != 0))
  {
    v64 = v14;
    v65 = v12;
    v66 = v11;
    v67 = a1;
    v63[2] = v63;
    MEMORY[0x28223BE20](v23);
    v63[-4] = v2;
    v63[-3] = v25;
    v63[-2] = v24;
    MEMORY[0x28223BE20](v26);
    v63[1] = v2;
    v63[-2] = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2292F8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229300);
    sub_24EB3C368();
    sub_24EB3C41C();
    v27 = v75;
    sub_24F925AB8();

    *(v27 + *(v7 + 36)) = 257;
    v28 = v73;
    (*(v73 + 104))(v6, *MEMORY[0x277CE0118], v4);
    v29 = sub_24F924258();
    v80 = v29;
    v81 = sub_24EB388F4(&qword_27F212868, MEMORY[0x277CDFC08]);
    v30 = __swift_allocate_boxed_opaque_existential_1(&v77);
    (*(v28 + 16))(v30 + *(v29 + 20), v6, v4);
    __asm { FMOV            V0.2D, #6.0 }

    *v30 = _Q0;
    (*(v28 + 8))(v6, v4);
    sub_24E60169C(&v77, v10, &qword_27F229318);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229320);
    sub_24E60169C(v27, &v10[v36[9]], &qword_27F2292E0);
    v37 = &v10[v36[10]];
    *v37 = sub_24F923398() & 1;
    *(v37 + 1) = v38;
    v37[16] = v39 & 1;
    v40 = &v10[v36[11]];
    *v40 = swift_getKeyPath();
    v40[8] = 0;
    if (qword_27F211808 != -1)
    {
      swift_once();
    }

    v41 = qword_27F24E488;
    v42 = sub_24F923398();
    v44 = v43;
    v46 = v45;
    v47 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229328) + 36)];
    *v47 = v41;
    v47[8] = v42 & 1;
    *(v47 + 2) = v44;
    v47[24] = v46 & 1;
    LOBYTE(v41) = sub_24F923398();
    v49 = v48;
    LOBYTE(v44) = v50;
    sub_24E601704(&v77, &qword_27F229318);
    sub_24E601704(v27, &qword_27F2292E0);
    v51 = &v10[*(v74 + 36)];
    *v51 = v41 & 1;
    *(v51 + 1) = v49;
    v51[16] = v44 & 1;
    v52 = sub_24F927728();
    v77 = v72;
    v78 = v71;
    v79 = v70;
    v80 = v69;
    MEMORY[0x25304CAF0](&v82, v68);
    v53 = v82;
    v54 = v83;
    v55 = v64;
    if (v83)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228FD8);
      sub_24F927358();
      v53 = sub_24F7D6E90(v53, v54);
      v57 = v56;
    }

    else
    {
      v57 = 0;
    }

    v12 = v65;
    v11 = v66;
    sub_24E6009C8(v10, v55, &qword_27F2292E8);
    v59 = (v55 + *(v11 + 36));
    *v59 = v52;
    v59[1] = v53;
    v59[2] = v57;
    v60 = v76;
    sub_24E6009C8(v55, v76, &qword_27F2292F0);
    v61 = v60;
    a1 = v67;
    sub_24E6009C8(v61, v67, &qword_27F2292F0);
    v58 = 0;
  }

  else
  {
    v58 = 1;
  }

  return (*(v12 + 56))(a1, v58, 1, v11);
}

uint64_t sub_24EB36FC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SearchResultsPageView.FilterMenu(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v13[1] = sub_24EB36678();
  swift_getKeyPath();
  sub_24EB391A8(a1, v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SearchResultsPageView.FilterMenu);
  v9 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v10 = swift_allocObject();
  sub_24EB39210(v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for SearchResultsPageView.FilterMenu);
  v11 = (v10 + ((v8 + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v11 = a2;
  v11[1] = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225D10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225A28);
  sub_24E602068(&qword_27F229330, &qword_27F225D10);
  sub_24E602068(&qword_27F228258, &qword_27F225A28);
  return sub_24F927228();
}

uint64_t sub_24EB371FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v46 = a3;
  v47 = a4;
  v45 = a2;
  v50 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254FA0);
  MEMORY[0x28223BE20](v6 - 8);
  v49 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v48 = &v40 - v9;
  v10 = type metadata accessor for GameSearchResultsGroup(0);
  v11 = v10 - 8;
  v42 = *(v10 - 8);
  v12 = *(v42 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SearchResultsPageView.FilterMenu(0);
  v41 = *(v14 - 8);
  v15 = *(v41 + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = sub_24F928AD8();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_24F928B08();
  v21 = *(v20 - 8);
  v43 = v20;
  v44 = v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v40 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v19, a1 + *(v11 + 36), v16, v22);
  sub_24EB391A8(v45, &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SearchResultsPageView.FilterMenu);
  sub_24EB391A8(a1, v13, type metadata accessor for GameSearchResultsGroup);
  v25 = (*(v41 + 80) + 16) & ~*(v41 + 80);
  v26 = (v15 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = (*(v42 + 80) + v26 + 16) & ~*(v42 + 80);
  v28 = swift_allocObject();
  sub_24EB39210(&v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v25, type metadata accessor for SearchResultsPageView.FilterMenu);
  v29 = (v28 + v26);
  v30 = v47;
  *v29 = v46;
  v29[1] = v30;
  sub_24EB39210(v13, v28 + v27, type metadata accessor for GameSearchResultsGroup);

  sub_24F928AF8();
  v32 = *(a1 + 16);
  v31 = *(a1 + 24);
  v33 = sub_24F9232F8();
  v34 = v48;
  (*(*(v33 - 8) + 56))(v48, 1, 1, v33);
  v35 = v43;
  v52[3] = v43;
  v52[4] = MEMORY[0x277D21CB8];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v52);
  v37 = v44;
  (*(v44 + 16))(boxed_opaque_existential_1, v24, v35);
  sub_24E60169C(v34, v49, &unk_27F254FA0);
  sub_24E60169C(v52, v51, qword_27F21B590);
  v38 = swift_allocObject();
  *(v38 + 16) = v32;
  *(v38 + 24) = v31;

  sub_24F921788();
  sub_24E601704(v34, &unk_27F254FA0);
  (*(v37 + 8))(v24, v35);
  return sub_24E601704(v52, qword_27F21B590);
}

uint64_t sub_24EB3771C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228FD8);
  sub_24F927358();
  v6 = *a4;
  v7 = a4[1];
  swift_getKeyPath();
  sub_24EB388F4(&qword_27F215718, type metadata accessor for SearchResultsPageViewModel);

  sub_24F91FD88();

  swift_getKeyPath();
  sub_24F91FDA8();

  v8 = OBJC_IVAR____TtC12GameStoreKit26SearchResultsPageViewModel__cachedSelectedGroup;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v12 + v8);
  *(v12 + v8) = 0x8000000000000000;
  sub_24E81D324(v6, v7, a2, a3, isUniquelyReferenced_nonNull_native);

  *(v12 + v8) = v13;
  swift_endAccess();
  swift_getKeyPath();
  sub_24F91FD98();
}

uint64_t sub_24EB378E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = sub_24F9248C8();
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B820);
  v6 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v8 = &v31 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229190);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v31 - v10;
  v12 = type metadata accessor for GameSearchResultsGroup(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_24EB36678();
  v35 = a1;
  sub_24E7AAEE8(sub_24EB3C4D4, v16, v11);

  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_24E601704(v11, &qword_27F229190);
    v17 = 1;
    v19 = v33;
    v18 = v34;
  }

  else
  {
    sub_24EB39210(v11, v15, type metadata accessor for GameSearchResultsGroup);
    v20 = *(v15 + 3);
    v36 = *(v15 + 2);
    v37 = v20;
    sub_24E600AEC();

    v21 = sub_24F925E18();
    v23 = v22;
    v25 = v24;
    v27 = v26;
    sub_24F9248B8();
    v36 = v21;
    v37 = v23;
    v38 = v25 & 1;
    v39 = v27;
    _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
    (*(v31 + 8))(v5, v32);
    sub_24EB38C2C(v15, type metadata accessor for GameSearchResultsGroup);
    sub_24E600B40(v21, v23, v25 & 1);

    v29 = v33;
    v28 = v34;
    (*(v6 + 32))(v34, v8, v33);
    v17 = 0;
    v18 = v28;
    v19 = v29;
  }

  return (*(v6 + 56))(v18, v17, 1, v19);
}

uint64_t sub_24EB37C94(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (a2 + *(type metadata accessor for SearchResultsPageView.FilterMenu(0) + 20));
  v5 = v4[1];
  v16 = *v4;
  v17 = v5;
  v18 = *(v4 + 1);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228F00);
  MEMORY[0x25304CAF0](&v14, v6);
  v7 = v15;
  if (v15 && (v8 = v14, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228FD8), sub_24F927358(), v9 = sub_24F7D6E90(v8, v7), v11 = v10, , , v11))
  {
    if (v2 == v9 && v11 == v3)
    {
      v12 = 1;
    }

    else
    {
      v12 = sub_24F92CE08();
    }
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t sub_24EB37DD0(uint64_t a1)
{
  v4 = *(type metadata accessor for SearchResultsPageView(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24E6541E4;

  return sub_24EB2CC30(a1, v1 + v5);
}

uint64_t objectdestroyTm_26()
{
  v1 = type metadata accessor for SearchResultsPageView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  if (*(v2 + 112) != 1)
  {

    sub_24E7B6564(*(v2 + 136), *(v2 + 144));
  }

  __swift_destroy_boxed_opaque_existential_1(v2 + 296);

  v3 = v1[13];
  v4 = sub_24F929158();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);
  v5 = v1[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_24F925218();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v2 + v5, 1, v6))
    {
      (*(v7 + 8))(v2 + v5, v6);
    }
  }

  else
  {
  }

  v8 = v1[15];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_24F925218();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v2 + v8, 1, v9))
    {
      (*(v10 + 8))(v2 + v8, v9);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24EB38208(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;

  return MEMORY[0x2821E7B48](a1, a2, a3);
}

unint64_t sub_24EB38268()
{
  result = qword_27F228E80;
  if (!qword_27F228E80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F228E78);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F228E88);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F228E90);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F228E98);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F228EA0);
    sub_24E602068(&qword_27F228EA8, &qword_27F228E98);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F228EB0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215940);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215950);
    sub_24EB384F4();
    sub_24E669340();
    sub_24EB38868();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_24E78AE10();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F228E80);
  }

  return result;
}

unint64_t sub_24EB384F4()
{
  result = qword_27F228EB8;
  if (!qword_27F228EB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215940);
    sub_24EB38580();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F228EB8);
  }

  return result;
}

unint64_t sub_24EB38580()
{
  result = qword_27F228EC0;
  if (!qword_27F228EC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F228EC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F228ED0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F228ED8);
    type metadata accessor for SearchResultsPageView.ToolbarView(255);
    sub_24EB388F4(&qword_27F228EE0, type metadata accessor for SearchResultsPageView.ToolbarView);
    swift_getOpaqueTypeConformance2();
    sub_24E8F20E4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F228EE8);
    sub_24EB38750();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F228EC0);
  }

  return result;
}

unint64_t sub_24EB38750()
{
  result = qword_27F228EF0;
  if (!qword_27F228EF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F228EE8);
    type metadata accessor for SearchResultsPageView.ToolbarView(255);
    sub_24EB388F4(&qword_27F228EE0, type metadata accessor for SearchResultsPageView.ToolbarView);
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F2551A0, &qword_27F215A98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F228EF0);
  }

  return result;
}

unint64_t sub_24EB38868()
{
  result = qword_27F228EF8;
  if (!qword_27F228EF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215950);
    sub_24EB384F4();
    sub_24E669450();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F228EF8);
  }

  return result;
}

uint64_t sub_24EB388F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24EB3893C(uint64_t a1, uint64_t *a2)
{
  type metadata accessor for SearchResultsPageView(0);

  return sub_24EB2F3B0(a1, a2);
}

unint64_t sub_24EB389BC()
{
  result = qword_27F228F10;
  if (!qword_27F228F10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F22E000);
    sub_24EB38A40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F228F10);
  }

  return result;
}

unint64_t sub_24EB38A40()
{
  result = qword_27F228F18;
  if (!qword_27F228F18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F247240);
    sub_24EB388F4(&qword_27F228F20, type metadata accessor for Player);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F228F18);
  }

  return result;
}

uint64_t sub_24EB38AF4(uint64_t a1, __int128 *a2)
{
  v5 = *(type metadata accessor for SearchResultsPageView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_24EB2F4F8(a1, a2, v6);
}

unint64_t sub_24EB38B74()
{
  result = qword_27F228F28;
  if (!qword_27F228F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F228F28);
  }

  return result;
}

uint64_t sub_24EB38C2C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24EB38CB8(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a1, v6);
}

unint64_t sub_24EB38D50()
{
  result = qword_27F228F80;
  if (!qword_27F228F80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F228F70);
    sub_24EB38E08();
    sub_24E602068(&qword_27F2129F0, &qword_27F255320);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F228F80);
  }

  return result;
}

unint64_t sub_24EB38E08()
{
  result = qword_27F228F88;
  if (!qword_27F228F88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F228F90);
    sub_24EB38EC0();
    sub_24E602068(&qword_27F2195B0, &qword_27F2195B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F228F88);
  }

  return result;
}

unint64_t sub_24EB38EC0()
{
  result = qword_27F228F98;
  if (!qword_27F228F98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F228FA0);
    sub_24EB38F4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F228F98);
  }

  return result;
}

unint64_t sub_24EB38F4C()
{
  result = qword_27F228FA8;
  if (!qword_27F228FA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F228FB0);
    type metadata accessor for SearchResultsPageView.TabContentView(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215960);
    sub_24EB388F4(&qword_27F228FB8, type metadata accessor for SearchResultsPageView.TabContentView);
    sub_24E669340();
    sub_24EB390CC();
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F21EE38, &qword_27F21EE40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F228FA8);
  }

  return result;
}

unint64_t sub_24EB390CC()
{
  result = qword_27F228FC0;
  if (!qword_27F228FC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215960);
    sub_24EB388F4(&qword_27F228FB8, type metadata accessor for SearchResultsPageView.TabContentView);
    sub_24E669450();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F228FC0);
  }

  return result;
}

uint64_t sub_24EB391A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EB39210(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EB392BC(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228FD8);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_24EB3940C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228FD8);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_24EB39548()
{
  sub_24EB39C98(319, &qword_27F225CD0, type metadata accessor for GameSearchResultsTab, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_24EB2B580(319, &qword_27F228E40, &unk_27F23B740, &unk_24F93EC10, MEMORY[0x277CE11F8]);
    if (v1 <= 0x3F)
    {
      sub_24EB39C98(319, &qword_27F228FF0, type metadata accessor for SearchResultsPageViewModel, MEMORY[0x277CE12F8]);
      if (v2 <= 0x3F)
      {
        sub_24EB39CFC(319, &qword_27F228FF8, MEMORY[0x277D85048], MEMORY[0x277CE11F8]);
        if (v3 <= 0x3F)
        {
          sub_24EB2B580(319, &qword_27F254DC0, &qword_27F215598, &unk_24F945EF0, MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_24EB39704(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for GameSearchResultsTab(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[6] + 24);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228FD8);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[8];
LABEL_11:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_12;
  }

  v16 = sub_24F929158();
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[9];
    goto LABEL_11;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229000);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[11];

  return v18(v19, a2, v17);
}

uint64_t sub_24EB398F0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for GameSearchResultsTab(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 24) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228FD8);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[8];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = sub_24F929158();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[9];
    goto LABEL_9;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229000);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[11];

  return v18(v19, a2, a2, v17);
}

void sub_24EB39AC8()
{
  type metadata accessor for GameSearchResultsTab(319);
  if (v0 <= 0x3F)
  {
    sub_24E833194();
    if (v1 <= 0x3F)
    {
      type metadata accessor for NetworkConnectionMonitor();
      if (v2 <= 0x3F)
      {
        sub_24EB39C98(319, &qword_27F228FF0, type metadata accessor for SearchResultsPageViewModel, MEMORY[0x277CE12F8]);
        if (v3 <= 0x3F)
        {
          sub_24F929158();
          if (v4 <= 0x3F)
          {
            sub_24EB39C98(319, &qword_27F2157B8, MEMORY[0x277D221C8], MEMORY[0x277CE10B8]);
            if (v5 <= 0x3F)
            {
              sub_24EB39C98(319, &qword_27F229018, MEMORY[0x277D7EAE0], MEMORY[0x277CE10B8]);
              if (v6 <= 0x3F)
              {
                sub_24EB39CFC(319, &qword_27F254E10, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
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

void sub_24EB39C98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_24EB39CFC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_24EB39D50()
{
  result = qword_27F229020;
  if (!qword_27F229020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F228F30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F228E68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F228E60);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F22E000);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F228E58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F23B740);
    sub_24E602068(&qword_27F228F08, &qword_27F228E58);
    sub_24E9D38B0();
    swift_getOpaqueTypeConformance2();
    sub_24EB389BC();
    swift_getOpaqueTypeConformance2();
    sub_24EB38B74();
    swift_getOpaqueTypeConformance2();
    sub_24EB388F4(&qword_27F2156E0, MEMORY[0x277CE0660]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229020);
  }

  return result;
}

uint64_t sub_24EB39FD4(uint64_t a1)
{
  v4 = *(type metadata accessor for SearchResultsPageView.TabContentView(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24E614970;

  return sub_24EB30BC8(a1, v1 + v5);
}

uint64_t objectdestroy_78Tm()
{
  v1 = (type metadata accessor for SearchResultsPageView.TabContentView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  __swift_destroy_boxed_opaque_existential_1(v2);

  v3 = *(type metadata accessor for GameSearchResultsTab(0) + 28);
  v4 = sub_24F928AD8();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[8]);

  v5 = v1[10];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228FD8);
  (*(*(v6 - 8) + 8))(v2 + v5, v6);
  v7 = v1[11];
  v8 = sub_24F929158();
  (*(*(v8 - 8) + 8))(v2 + v7, v8);

  v9 = v2 + v1[13];
  v10 = sub_24F921738();
  (*(*(v10 - 8) + 8))(v9, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229000);

  return swift_deallocObject();
}

uint64_t sub_24EB3A2DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *(type metadata accessor for SearchResultsPageView.TabContentView(0) - 8);
  v10 = v4 + ((*(v9 + 80) + 16) & ~*(v9 + 80));

  return sub_24EB3105C(a1, a2, a3, v10, a4);
}

unint64_t sub_24EB3A3A0()
{
  result = qword_27F229100;
  if (!qword_27F229100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2290F8);
    sub_24EB3A424();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229100);
  }

  return result;
}

unint64_t sub_24EB3A424()
{
  result = qword_27F229108;
  if (!qword_27F229108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F229110);
    sub_24E6A4C1C();
    swift_getOpaqueTypeConformance2();
    sub_24EB3A51C();
    sub_24E602068(&qword_27F219DD0, &qword_27F219DC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229108);
  }

  return result;
}

unint64_t sub_24EB3A51C()
{
  result = qword_27F229118;
  if (!qword_27F229118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F229120);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F229128);
    sub_24EB3A624();
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F219DD0, &qword_27F219DC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229118);
  }

  return result;
}

unint64_t sub_24EB3A624()
{
  result = qword_27F229130;
  if (!qword_27F229130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F229128);
    sub_24EB3A6B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229130);
  }

  return result;
}

unint64_t sub_24EB3A6B0()
{
  result = qword_27F229138;
  if (!qword_27F229138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F229140);
    sub_24EB3A73C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229138);
  }

  return result;
}

unint64_t sub_24EB3A73C()
{
  result = qword_27F229148;
  if (!qword_27F229148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F229150);
    sub_24EB3A7C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229148);
  }

  return result;
}

unint64_t sub_24EB3A7C8()
{
  result = qword_27F229158;
  if (!qword_27F229158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F229160);
    sub_24E602068(&qword_27F229168, &qword_27F229170);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229158);
  }

  return result;
}

uint64_t sub_24EB3A898()
{
  v1 = (type metadata accessor for SearchResultsPageView.TabContentView(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + v2);

  v3 = *(type metadata accessor for GameSearchResultsTab(0) + 28);
  v4 = sub_24F928AD8();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);
  __swift_destroy_boxed_opaque_existential_1(v0 + v2 + v1[8]);

  v5 = v1[10];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228FD8);
  (*(*(v6 - 8) + 8))(v0 + v2 + v5, v6);
  v7 = v1[11];
  v8 = sub_24F929158();
  (*(*(v8 - 8) + 8))(v0 + v2 + v7, v8);

  v9 = v0 + v2 + v1[13];
  v10 = sub_24F921738();
  (*(*(v10 - 8) + 8))(v9, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229000);

  return swift_deallocObject();
}

uint64_t sub_24EB3AACC@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(type metadata accessor for SearchResultsPageView.TabContentView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_24EB320D0(v4, a1);
}

uint64_t sub_24EB3AB40()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

unint64_t sub_24EB3AC20()
{
  result = qword_27F2291A0;
  if (!qword_27F2291A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F229198);
    sub_24EB388F4(&qword_27F2291A8, type metadata accessor for SearchResultsPageView.SearchGroupView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2291A0);
  }

  return result;
}

uint64_t sub_24EB3AD00()
{
  v1 = *(v0 + 16);

  return sub_24F921A18();
}

uint64_t sub_24EB3AD80(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for SearchResultsPageView.TabContentView(0) - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

uint64_t sub_24EB3AE28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228FD8);
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

uint64_t sub_24EB3AF08(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228FD8);
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

void sub_24EB3AFD0()
{
  sub_24EB39C98(319, &qword_27F228FF0, type metadata accessor for SearchResultsPageViewModel, MEMORY[0x277CE12F8]);
  if (v0 <= 0x3F)
  {
    sub_24EB2B580(319, &qword_27F228E40, &unk_27F23B740, &unk_24F93EC10, MEMORY[0x277CE11F8]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_24EB3B0CC(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DE0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_24EB3B19C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DE0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24EB3B24C()
{
  sub_24EB39C98(319, &qword_27F225CD0, type metadata accessor for GameSearchResultsTab, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_24EB2B580(319, &qword_27F228E40, &unk_27F23B740, &unk_24F93EC10, MEMORY[0x277CE11F8]);
    if (v1 <= 0x3F)
    {
      sub_24E66ED3C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_24EB3B360(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228FD8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24EB3B430(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228FD8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24EB3B4E0()
{
  sub_24EB3B5BC();
  if (v0 <= 0x3F)
  {
    sub_24E833194();
    if (v1 <= 0x3F)
    {
      sub_24EB39C98(319, &qword_27F228FF0, type metadata accessor for SearchResultsPageViewModel, MEMORY[0x277CE12F8]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_24EB3B5BC()
{
  result = qword_27F2291F0;
  if (!qword_27F2291F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F213768);
    result = swift_getExtendedExistentialTypeMetadata();
    atomic_store(result, &qword_27F2291F0);
  }

  return result;
}

unint64_t sub_24EB3B638()
{
  result = qword_27F2291F8;
  if (!qword_27F2291F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F229060);
    sub_24EB3B6F0();
    sub_24E602068(&qword_27F229228, &qword_27F229230);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2291F8);
  }

  return result;
}

unint64_t sub_24EB3B6F0()
{
  result = qword_27F229200;
  if (!qword_27F229200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F229040);
    sub_24EB3B7A8();
    sub_24E602068(&qword_27F229220, &qword_27F229050);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229200);
  }

  return result;
}

unint64_t sub_24EB3B7A8()
{
  result = qword_27F229208;
  if (!qword_27F229208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F229038);
    sub_24EB3B864();
    sub_24EB388F4(&qword_27F222448, type metadata accessor for PageMarginsViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229208);
  }

  return result;
}

unint64_t sub_24EB3B864()
{
  result = qword_27F229210;
  if (!qword_27F229210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F229030);
    sub_24E602068(&qword_27F229218, &qword_27F229028);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229210);
  }

  return result;
}

unint64_t sub_24EB3B920()
{
  result = qword_27F229238;
  if (!qword_27F229238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F229188);
    sub_24E602068(&qword_27F229240, &qword_27F2290D8);
    sub_24E602068(&qword_27F224B60, &qword_27F224B68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229238);
  }

  return result;
}

uint64_t sub_24EB3BABC()
{
  v1 = (type metadata accessor for SearchResultsPageView.SearchGroupView(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;

  __swift_destroy_boxed_opaque_existential_1(v4 + 32);
  __swift_destroy_boxed_opaque_existential_1(v4 + 72);
  v5 = v1[10];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228FD8);
  (*(*(v6 - 8) + 8))(v4 + v5, v6);
  __swift_destroy_boxed_opaque_existential_1(v0 + v3);

  return swift_deallocObject();
}

uint64_t sub_24EB3BBDC(uint64_t a1)
{
  v4 = *(type metadata accessor for SearchResultsPageView.SearchGroupView(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24E6541E4;

  return sub_24EB33140(a1, v1 + v5, v1 + v6);
}

uint64_t sub_24EB3BD14(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

uint64_t sub_24EB3BDA0()
{

  return swift_deallocObject();
}

unint64_t sub_24EB3BE5C()
{
  result = qword_27F229290;
  if (!qword_27F229290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F229288);
    sub_24EB3BEE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229290);
  }

  return result;
}

unint64_t sub_24EB3BEE0()
{
  result = qword_27F229298;
  if (!qword_27F229298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2292A0);
    sub_24E602068(&qword_27F2292A8, &qword_27F2292B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229298);
  }

  return result;
}

uint64_t sub_24EB3BF98()
{
  v1 = (type metadata accessor for SearchResultsPageView.SearchGroupView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  __swift_destroy_boxed_opaque_existential_1(v2 + 32);
  __swift_destroy_boxed_opaque_existential_1(v2 + 72);
  v3 = v1[10];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228FD8);
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_24EB3C0B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for SearchResultsPageView.SearchGroupView(0) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = *(v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_24EB336C0(a1, a2, v3 + v8, v9, a3);
}

uint64_t sub_24EB3C16C(char *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2292D0);
  return v3(v4, &a1[*(v5 + 48)]);
}

uint64_t objectdestroy_159Tm()
{
  v1 = (type metadata accessor for SearchResultsPageView.SearchGroupView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  __swift_destroy_boxed_opaque_existential_1(v2 + 32);
  __swift_destroy_boxed_opaque_existential_1(v2 + 72);
  v3 = v1[10];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228FD8);
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_24EB3C2E0()
{
  v1 = *(type metadata accessor for SearchResultsPageView.SearchGroupView(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_24EB33BD8(v2);
}

unint64_t sub_24EB3C368()
{
  result = qword_27F229308;
  if (!qword_27F229308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2292F8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229308);
  }

  return result;
}

unint64_t sub_24EB3C41C()
{
  result = qword_27F229310;
  if (!qword_27F229310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F229300);
    sub_24E602068(&qword_27F228258, &qword_27F225A28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229310);
  }

  return result;
}

uint64_t sub_24EB3C4F4()
{
  v1 = *(type metadata accessor for SearchResultsPageView.FilterMenu(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228FD8);
  (*(*(v3 - 8) + 8))(v2, v3);

  return swift_deallocObject();
}

uint64_t sub_24EB3C614@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for SearchResultsPageView.FilterMenu(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_24EB371FC(a1, v2 + v6, v8, v9, a2);
}

uint64_t sub_24EB3C6C4()
{
  v1 = *(type metadata accessor for SearchResultsPageView.FilterMenu(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (type metadata accessor for GameSearchResultsGroup(0) - 8);
  v5 = (v3 + *(*v4 + 80) + 16) & ~*(*v4 + 80);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228FD8);
  (*(*(v6 - 8) + 8))(v0 + v2, v6);

  __swift_destroy_boxed_opaque_existential_1(v0 + v5 + 32);
  v7 = v4[9];
  v8 = sub_24F928AD8();
  (*(*(v8 - 8) + 8))(v0 + v5 + v7, v8);

  return swift_deallocObject();
}

uint64_t sub_24EB3C8AC()
{
  v1 = *(type metadata accessor for SearchResultsPageView.FilterMenu(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(type metadata accessor for GameSearchResultsGroup(0) - 8);
  return sub_24EB3771C(v0 + v2, *(v0 + v3), *(v0 + v3 + 8), (v0 + ((v3 + *(v4 + 80) + 16) & ~*(v4 + 80))));
}

uint64_t sub_24EB3C988()
{

  return swift_deallocObject();
}

uint64_t sub_24EB3C9C8()
{
  v1 = (type metadata accessor for SearchResultsPageView.TabsToolbarView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[9];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DE0);
  v5 = *(*(v4 - 8) + 8);
  v5(v2 + v3, v4);
  v5(v2 + v1[10], v4);

  return swift_deallocObject();
}

uint64_t sub_24EB3CB2C()
{
  v1 = (type metadata accessor for SearchResultsPageView.TabsToolbarView(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = (type metadata accessor for GameSearchResultsTab(0) - 8);
  v5 = (v2 + v3 + *(*v4 + 80)) & ~*(*v4 + 80);
  v6 = v0 + v2;

  v7 = v1[9];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DE0);
  v9 = *(*(v8 - 8) + 8);
  v9(v6 + v7, v8);
  v9(v6 + v1[10], v8);
  __swift_destroy_boxed_opaque_existential_1(v0 + v5);

  v10 = v4[9];
  v11 = sub_24F928AD8();
  (*(*(v11 - 8) + 8))(v0 + v5 + v10, v11);

  return swift_deallocObject();
}

uint64_t sub_24EB3CD2C()
{
  type metadata accessor for SearchResultsPageView.TabsToolbarView(0);
  type metadata accessor for GameSearchResultsTab(0);
  return sub_24EB359F8();
}

uint64_t sub_24EB3CDF4()
{
  v1 = (type metadata accessor for GameSearchResultsTab(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = (type metadata accessor for SearchResultsPageView.TabsToolbarView(0) - 8);
  v5 = (v2 + v3 + *(*v4 + 80)) & ~*(*v4 + 80);
  __swift_destroy_boxed_opaque_existential_1(v0 + v2);

  v6 = v1[9];
  v7 = sub_24F928AD8();
  (*(*(v7 - 8) + 8))(v0 + v2 + v6, v7);
  v8 = v0 + v5;

  v9 = v4[9];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DE0);
  v11 = *(*(v10 - 8) + 8);
  v11(v8 + v9, v10);
  v11(v8 + v4[10], v10);

  return swift_deallocObject();
}

uint64_t sub_24EB3CFF8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GameSearchResultsTab(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for SearchResultsPageView.TabsToolbarView(0) - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 8);

  return sub_24EB35A68(v1 + v4, v1 + v7, v9, v10, a1);
}

unint64_t sub_24EB3D100()
{
  result = qword_27F229370;
  if (!qword_27F229370)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F229368);
    sub_24EB3D1B8();
    sub_24E602068(&qword_27F21B720, &qword_27F21B698);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229370);
  }

  return result;
}

unint64_t sub_24EB3D1B8()
{
  result = qword_27F229378;
  if (!qword_27F229378)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F229380);
    sub_24EB3D270();
    sub_24E602068(&qword_27F229400, &qword_27F229408);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229378);
  }

  return result;
}

unint64_t sub_24EB3D270()
{
  result = qword_27F229388;
  if (!qword_27F229388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F229390);
    sub_24EB3D2FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229388);
  }

  return result;
}

unint64_t sub_24EB3D2FC()
{
  result = qword_27F229398;
  if (!qword_27F229398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2293A0);
    sub_24EB3D388();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229398);
  }

  return result;
}

unint64_t sub_24EB3D388()
{
  result = qword_27F2293A8;
  if (!qword_27F2293A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2293B0);
    sub_24EB3D440();
    sub_24E602068(&qword_27F2293F0, &qword_27F2293F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2293A8);
  }

  return result;
}

unint64_t sub_24EB3D440()
{
  result = qword_27F2293B8;
  if (!qword_27F2293B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2293C0);
    sub_24EB3D4F8();
    sub_24E602068(&unk_27F212AB0, &qword_27F236350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2293B8);
  }

  return result;
}

unint64_t sub_24EB3D4F8()
{
  result = qword_27F2293C8;
  if (!qword_27F2293C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2293D0);
    sub_24EB3D57C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2293C8);
  }

  return result;
}

unint64_t sub_24EB3D57C()
{
  result = qword_27F2293D8;
  if (!qword_27F2293D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2293E0);
    sub_24EB3D608();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2293D8);
  }

  return result;
}

unint64_t sub_24EB3D608()
{
  result = qword_27F2293E8;
  if (!qword_27F2293E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2293E8);
  }

  return result;
}

unint64_t sub_24EB3D668()
{
  result = qword_27F229428;
  if (!qword_27F229428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F229430);
    sub_24E602068(&qword_27F229268, &qword_27F229258);
    sub_24E602068(&qword_27F229270, &qword_27F229248);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229428);
  }

  return result;
}

unint64_t sub_24EB3D750()
{
  result = qword_27F229438;
  if (!qword_27F229438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F229440);
    sub_24EB3D7D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229438);
  }

  return result;
}

unint64_t sub_24EB3D7D4()
{
  result = qword_27F229448;
  if (!qword_27F229448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2292F0);
    sub_24EB3D88C();
    sub_24E602068(&qword_27F229468, &qword_27F229470);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229448);
  }

  return result;
}

unint64_t sub_24EB3D88C()
{
  result = qword_27F229450;
  if (!qword_27F229450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2292E8);
    sub_24EB3D918();
    sub_24E600F3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229450);
  }

  return result;
}

unint64_t sub_24EB3D918()
{
  result = qword_27F229458;
  if (!qword_27F229458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F229328);
    sub_24E602068(&qword_27F229460, &qword_27F229320);
    sub_24E600EE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229458);
  }

  return result;
}

uint64_t ItemAdvertRotationController.__allocating_init(itemLayoutContext:lifecycleMetricsReporter:visibilityCalculatorTracksOcclusions:objectGraph:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v8 = swift_allocObject();
  sub_24E8E7F4C(a1, v8 + OBJC_IVAR____TtC12GameStoreKit28ItemAdvertRotationController_managedItemLayoutContext);
  v9 = sub_24EB3DBE4();
  sub_24EB3DED0(a2, v12);
  v10 = AdvertRotationController.init(adverts:lifecycleMetricsReporter:visibilityCalculatorTracksOcclusions:objectGraph:)(v9, v12, a3, a4);

  sub_24E601704(a2, &qword_27F229490);
  sub_24E8E7FB0(a1);
  if (v10)
  {
  }

  return v10;
}

uint64_t ItemAdvertRotationController.init(itemLayoutContext:lifecycleMetricsReporter:visibilityCalculatorTracksOcclusions:objectGraph:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_24E8E7F4C(a1, v4 + OBJC_IVAR____TtC12GameStoreKit28ItemAdvertRotationController_managedItemLayoutContext);
  v9 = sub_24EB3DBE4();
  sub_24EB3DED0(a2, v12);
  v10 = AdvertRotationController.init(adverts:lifecycleMetricsReporter:visibilityCalculatorTracksOcclusions:objectGraph:)(v9, v12, a3, a4);

  sub_24E601704(a2, &qword_27F229490);
  sub_24E8E7FB0(a1);
  if (v10)
  {
  }

  return v10;
}

void *sub_24EB3DBE4()
{
  type metadata accessor for ItemLayoutContext();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AC8);
  sub_24F928A58();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0);
  type metadata accessor for AdvertsSearchResult();
  if ((swift_dynamicCast() & 1) == 0 || !v11)
  {
LABEL_17:
    sub_24F928A58();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221090);
    if (swift_dynamicCast())
    {
      if (*(&v12 + 1))
      {
        sub_24E8EA128(&v11, &v14);
        v5 = v15;
        v6 = v16;
        __swift_project_boxed_opaque_existential_1(&v14, v15);
        if (SearchAdOpportunityProviding.isSearchAdOpportunity.getter(v5, v6))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2294B8);
          v7 = swift_allocObject();
          *(v7 + 16) = xmmword_24F93DE60;
          sub_24E8EA128(&v14, (v7 + 32));
          return v7;
        }

        __swift_destroy_boxed_opaque_existential_1(&v14);
        return MEMORY[0x277D84F90];
      }
    }

    else
    {
      v12 = 0u;
      v13 = 0u;
      v11 = 0u;
    }

    sub_24E601704(&v11, &qword_27F2294B0);
    return MEMORY[0x277D84F90];
  }

  v0 = *(v11 + OBJC_IVAR____TtC12GameStoreKit19AdvertsSearchResult_lockups);
  *&v14 = MEMORY[0x277D84F90];
  if (v0 >> 62)
  {
    goto LABEL_30;
  }

  v1 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:

  if (v1)
  {
    v2 = 0;
    while (1)
    {
      if ((v0 & 0xC000000000000001) != 0)
      {
        v3 = MEMORY[0x253052270](v2, v0);
        v4 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }
      }

      else
      {
        if (v2 >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_30:
          v1 = sub_24F92C738();
          goto LABEL_5;
        }

        v3 = *(v0 + 8 * v2 + 32);

        v4 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
          goto LABEL_16;
        }
      }

      if (*(v3 + 416))
      {
        sub_24F92C948();
        sub_24F92C988();
        sub_24F92C998();
        sub_24F92C958();
      }

      else
      {
      }

      ++v2;
      if (v4 == v1)
      {
        v9 = v14;
        goto LABEL_26;
      }
    }
  }

  v9 = MEMORY[0x277D84F90];
LABEL_26:

  v10 = sub_24E8E849C(v9);

  return v10;
}

uint64_t sub_24EB3DED0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229490);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EB3DF40(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2294A8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v19 - v12;
  v14 = v5 + OBJC_IVAR____TtC12GameStoreKit24AdvertRotationController_rotationPerforming;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v16 = *(v14 + 8);
    ObjectType = swift_getObjectType();
    sub_24E8E7F4C(v5 + OBJC_IVAR____TtC12GameStoreKit28ItemAdvertRotationController_managedItemLayoutContext, v13);
    v18 = type metadata accessor for ItemLayoutContext();
    (*(*(v18 - 8) + 56))(v13, 0, 1, v18);
    (*(v16 + 16))(a1, a2, a3, v13, a4 & 1, a5, ObjectType, v16);
    swift_unknownObjectRelease();
    return sub_24E601704(v13, &qword_27F2294A8);
  }

  return result;
}

uint64_t ItemAdvertRotationController.deinit()
{
  v0 = AdvertRotationController.deinit();
  sub_24E8E7FB0(v0 + OBJC_IVAR____TtC12GameStoreKit28ItemAdvertRotationController_managedItemLayoutContext);
  return v0;
}

uint64_t ItemAdvertRotationController.__deallocating_deinit()
{
  v0 = AdvertRotationController.deinit();
  sub_24E8E7FB0(v0 + OBJC_IVAR____TtC12GameStoreKit28ItemAdvertRotationController_managedItemLayoutContext);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ItemAdvertRotationController()
{
  result = qword_27F229498;
  if (!qword_27F229498)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EB3E210()
{
  result = type metadata accessor for ItemLayoutContext();
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

uint64_t JSONContext.addingRenderPipelineDiagnostics()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226720);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6[-v2 - 8];
  v7 = &type metadata for DiagnosticsAdapter;
  v8 = sub_24EB3E414();
  sub_24F928548();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226728);
  sub_24F928528();
  (*(v1 + 8))(v3, v0);
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

unint64_t sub_24EB3E414()
{
  result = qword_27F2294C0;
  if (!qword_27F2294C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2294C0);
  }

  return result;
}

uint64_t JSONContext.removingRenderPipelineDiagnostics()@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226720);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v7);
  v9 = &v14[-v8 - 8];
  sub_24F928548();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226728);
  sub_24F9285D8();
  v10 = *(v4 + 8);
  v10(v9, v3);
  if (v15)
  {
    if (swift_dynamicCast())
    {
      sub_24F928548();
      sub_24F928538();
      return (v10)(v6, v3);
    }
  }

  else
  {
    sub_24E601704(v14, &qword_27F226730);
  }

  v12 = sub_24F9285B8();
  return (*(*(v12 - 8) + 16))(a1, v1, v12);
}

uint64_t sub_24EB3E64C(uint64_t a1, id a2)
{
  v6[0] = a2;
  v4 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    v6[3] = swift_getMetatypeMetadata();
    v6[0] = a1;
    sub_24EE93D6C(a2, v6);
    return sub_24E601704(v6, &qword_27F2129B0);
  }

  return result;
}

void sub_24EB3E6E8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t (*a7)(void *), uint64_t a8)
{
  v48 = a7;
  v46 = a6;
  v47 = *&a4;
  v50 = a3;
  v51 = a1;
  v45 = sub_24F9281B8();
  v11 = *(v45 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v45);
  v13 = v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24F9298B8();
  v44 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  if ((a5 & 1) == 0 && v47 > COERCE_DOUBLE(1))
  {
    v18 = *(v11 + 16);
    v43 = a2;
    v19 = v45;
    v18(v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v50, v45);
    v20 = *(v11 + 80);
    v42[1] = a8;
    v21 = (v20 + 32) & ~v20;
    v42[0] = (v12 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
    v22 = swift_allocObject();
    v23 = v47;
    *(v22 + 16) = v17;
    *(v22 + 24) = v23;
    v24 = v19;
    a2 = v43;
    (*(v11 + 32))(v22 + v21, v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v24);
    v25 = v51;
    *(v22 + v42[0]) = v51;

    v26 = v25;
    sub_24F9298C8();

    (*(v44 + 8))(v16, v14);
  }

  v27 = v49;
  v49 = v48(v51);
  if (v27)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_24F93DE60;
    v29 = sub_24EB3EB94();
    v30 = MEMORY[0x253051C90](v27, v51);
    *(v28 + 56) = v29;
    *(v28 + 32) = v30;
    v31 = sub_24F9281A8();
  }

  else
  {
    v32 = *(v11 + 16);
    v33 = a2;
    v34 = v45;
    v32(v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v33, v45);
    v48 = 0;
    v35 = (*(v11 + 80) + 24) & ~*(v11 + 80);
    *&v36 = COERCE_DOUBLE(swift_allocObject());
    v47 = *&v36;
    *(v36 + 16) = v17;
    v44 = v17;
    v37 = *(v11 + 32);
    v37(v36 + v35, v13, v34);
    v32(v13, v50, v34);
    v38 = (v35 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
    v39 = swift_allocObject();
    *(v39 + 16) = v44;
    v37(v39 + v35, v13, v34);
    v40 = v51;
    *(v39 + v38) = v51;
    v52[3] = sub_24F9298F8();
    v52[4] = MEMORY[0x277D22078];
    v52[0] = v46;
    swift_retain_n();
    v41 = v40;

    sub_24F92A958();

    __swift_destroy_boxed_opaque_existential_1(v52);
  }
}

unint64_t sub_24EB3EB94()
{
  result = qword_27F21C8E0;
  if (!qword_27F21C8E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F21C8E0);
  }

  return result;
}

void sub_24EB3EBE0(uint64_t a1, double a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if ((*(a1 + 16) & 1) == 0)
  {
    v14 = a4;
    if (qword_27F210578 != -1)
    {
      swift_once();
    }

    v7 = sub_24F92AAE8();
    __swift_project_value_buffer(v7, qword_27F39C3C8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F9479A0;
    sub_24F9283A8();
    sub_24F9283A8();
    v15[3] = MEMORY[0x277D839F8];
    *v15 = a2;
    sub_24F928438();
    sub_24E857CC8(v15);
    sub_24F92A5A8();

    swift_beginAccess();
    *(a1 + 16) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_24F93DE60;
    v9 = sub_24EB3EB94();
    sub_24EA32FE4();
    v10 = swift_allocError();
    *v11 = 1;
    v12 = MEMORY[0x253051C90](v10, v14);

    *(v8 + 56) = v9;
    *(v8 + 32) = v12;
    v13 = sub_24F9281A8();
  }
}

void sub_24EB3EF7C(void **a1, uint64_t a2)
{
  v3 = *a1;
  swift_beginAccess();
  if ((*(a2 + 16) & 1) == 0)
  {
    swift_beginAccess();
    *(a2 + 16) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_24F93DE60;
    *(v4 + 56) = sub_24EB3EB94();
    *(v4 + 32) = v3;
    v5 = v3;
    v6 = sub_24F9281A8();
  }
}

uint64_t sub_24EB3F220()
{
  v1 = sub_24F9281B8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void sub_24EB3F2E4(void **a1)
{
  sub_24F9281B8();
  v3 = *(v1 + 16);

  sub_24EB3EF7C(a1, v3);
}

void sub_24EB3F358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if ((*(a2 + 16) & 1) == 0)
  {
    swift_beginAccess();
    *(a2 + 16) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_24F93DE60;
    v8 = sub_24EB3EB94();
    v9 = MEMORY[0x253051C90](a1, a4);
    *(v7 + 56) = v8;
    *(v7 + 32) = v9;
    v10 = sub_24F9281A8();
  }
}

uint64_t sub_24EB3F610()
{
  v1 = sub_24F9281B8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void sub_24EB3F6E8(uint64_t a1)
{
  v3 = *(sub_24F9281B8() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_24EB3F358(a1, v5, v1 + v4, v6);
}

uint64_t sub_24EB3F788()
{
  v1 = sub_24F9281B8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void sub_24EB3F860()
{
  v1 = *(sub_24F9281B8() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_24EB3EBE0(v3, v4, v0 + v2, v5);
}

unint64_t sub_24EB3F908()
{
  result = qword_27F2294C8;
  if (!qword_27F2294C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2294C8);
  }

  return result;
}

GameStoreKit::ArticlePage::TouchMode_optional __swiftcall ArticlePage.TouchMode.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ArticlePage.TouchMode.rawValue.getter()
{
  v1 = 7233904;
  if (*v0 != 1)
  {
    v1 = 1869903201;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7375636F66;
  }
}

uint64_t sub_24EB3FA00(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE300000000000000;
  v4 = 7233904;
  if (v2 != 1)
  {
    v4 = 1869903201;
    v3 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x7375636F66;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0xE300000000000000;
  v8 = 7233904;
  if (*a2 != 1)
  {
    v8 = 1869903201;
    v7 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x7375636F66;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24F92CE08();
  }

  return v11 & 1;
}

uint64_t sub_24EB3FAE0()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EB3FB70()
{
  sub_24F92B218();
}

uint64_t sub_24EB3FBEC()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24EB3FC84(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE300000000000000;
  v5 = 7233904;
  if (v2 != 1)
  {
    v5 = 1869903201;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7375636F66;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t ArticlePage.__allocating_init(title:subtitle:card:shelves:footerLockup:arcadeFooterLockup:shareAction:isIncomplete:nextPage:pageRefreshPolicy:pageMetrics:pageRenderEvent:context:touchMode:shouldTerminateOnClose:editorialStoryCard:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char *a16, unsigned __int8 a17, uint64_t a18)
{
  v71 = a3;
  v72 = a4;
  v70 = a2;
  v79 = a8;
  v80 = a18;
  v75 = a7;
  v76 = a14;
  v81 = a12;
  v82 = a13;
  v83 = a11;
  LODWORD(v74) = a17;
  LODWORD(v73) = a10;
  v77 = a15;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218B0);
  MEMORY[0x28223BE20](v21 - 8);
  v69 = &v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v66 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v66 - v27;
  v29 = sub_24F928818();
  v78 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v31 = &v66 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = swift_allocObject();
  v33 = *a16;
  v34 = (v32 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_title);
  v35 = v70;
  v36 = v71;
  *v34 = a1;
  v34[1] = v35;
  v37 = (v32 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_subtitle);
  v38 = v72;
  *v37 = v36;
  v37[1] = v38;
  *(v32 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_card) = a5;
  v71 = a5;

  v39 = sub_24EEF0A68(a6);
  v41 = v40;

  *(v32 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_shelfOrdering) = v39;
  *(v32 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_shelfMapping) = v41;
  *(v32 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_footerLockup) = v75;
  *(v32 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_arcadeFooterLockup) = v79;
  v72 = a9;
  *(v32 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_shareAction) = a9;
  *(v32 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_isIncomplete) = v73;
  sub_24E60169C(v83, v32 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_nextPage, &qword_27F2129B0);
  *(v32 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_touchMode) = v33;
  *(v32 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_shouldTerminateOnClose) = v74;
  *(v32 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_editorialStoryCard) = v80;
  v42 = *(v78 + 16);
  v42(v31, v82, v29);
  v43 = v77;
  sub_24E60169C(v77, v28, &qword_27F2218B0);
  *(v32 + 16) = v81;
  v73 = v29;
  v42((v32 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics), v31, v29);
  *(v32 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent) = v76;
  v74 = v28;
  sub_24E60169C(v28, v25, &qword_27F2218B0);
  v44 = sub_24F9285B8();
  v68 = *(v44 - 8);
  v45 = *(v68 + 48);
  v46 = v25;
  if (v45(v25, 1, v44) == 1)
  {

    sub_24E601704(v43, &qword_27F2218B0);
    v47 = *(v78 + 8);
    v48 = v73;
    v47(v82, v73);
    sub_24E601704(v83, &qword_27F2129B0);
    sub_24E601704(v74, &qword_27F2218B0);
    v47(v31, v48);
    v49 = v46;
  }

  else
  {
    v70 = v25;
    v67 = v31;
    v50 = qword_27F2105F0;

    if (v50 != -1)
    {
      swift_once();
    }

    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578);
    __swift_project_value_buffer(v51, qword_27F22D8D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570);
    sub_24F9285C8();
    v52 = v84;
    v53 = v82;
    v54 = v68;
    if (v84)
    {
    }

    v55 = *(v54 + 8);
    v55(v70, v44);
    v56 = v69;
    if (!v52)
    {

      sub_24E601704(v77, &qword_27F2218B0);
      v60 = *(v78 + 8);
      v61 = v73;
      v60(v53, v73);
      sub_24E601704(v83, &qword_27F2129B0);
      sub_24E601704(v74, &qword_27F2218B0);
      v60(v67, v61);
      return v32;
    }

    v57 = v74;
    sub_24E60169C(v74, v69, &qword_27F2218B0);
    if (v45(v56, 1, v44) != 1)
    {
      sub_24ECDF110();

      sub_24E601704(v77, &qword_27F2218B0);
      v62 = *(v78 + 8);
      v63 = v53;
      v64 = v73;
      v62(v63, v73);
      sub_24E601704(v83, &qword_27F2129B0);
      sub_24E601704(v57, &qword_27F2218B0);
      v62(v67, v64);
      v55(v56, v44);
      return v32;
    }

    sub_24E601704(v77, &qword_27F2218B0);
    v58 = *(v78 + 8);
    v59 = v73;
    v58(v53, v73);
    sub_24E601704(v83, &qword_27F2129B0);
    sub_24E601704(v57, &qword_27F2218B0);
    v58(v67, v59);
    v49 = v56;
  }

  sub_24E601704(v49, &qword_27F2218B0);
  return v32;
}

uint64_t ArticlePage.init(title:subtitle:card:shelves:footerLockup:arcadeFooterLockup:shareAction:isIncomplete:nextPage:pageRefreshPolicy:pageMetrics:pageRenderEvent:context:touchMode:shouldTerminateOnClose:editorialStoryCard:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char *a16, unsigned __int8 a17, uint64_t a18)
{
  v19 = v18;
  v74 = a3;
  v75 = a4;
  v82 = a8;
  v83 = a18;
  v84 = a12;
  v85 = a13;
  v86 = a11;
  v80 = a7;
  v81 = a9;
  LODWORD(v77) = a17;
  LODWORD(v76) = a10;
  v78 = a14;
  v79 = a15;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218B0);
  MEMORY[0x28223BE20](v24 - 8);
  v70 = &v69 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v69 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = &v69 - v30;
  v32 = sub_24F928818();
  MEMORY[0x28223BE20](v32);
  v34 = &v69 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *a16;
  v36 = (v19 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_title);
  *v36 = a1;
  v36[1] = a2;
  v37 = (v19 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_subtitle);
  v38 = v75;
  *v37 = v74;
  v37[1] = v38;
  v40 = v39;
  *(v19 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_card) = a5;
  v75 = a5;

  v41 = sub_24EEF0A68(a6);
  v43 = v42;

  *(v19 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_shelfOrdering) = v41;
  *(v19 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_shelfMapping) = v43;
  *(v19 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_footerLockup) = v80;
  v44 = v81;
  *(v19 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_arcadeFooterLockup) = v82;
  *(v19 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_shareAction) = v44;
  *(v19 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_isIncomplete) = v76;
  sub_24E60169C(v86, v19 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_nextPage, &qword_27F2129B0);
  *(v19 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_touchMode) = v35;
  *(v19 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_shouldTerminateOnClose) = v77;
  *(v19 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_editorialStoryCard) = v83;
  v77 = v40;
  v45 = *(v40 + 16);
  v45(v34, v85, v32);
  v46 = v79;
  sub_24E60169C(v79, v31, &qword_27F2218B0);
  *(v19 + 16) = v84;
  v74 = v32;
  v45((v19 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics), v34, v32);
  *(v19 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent) = v78;
  v76 = v31;
  sub_24E60169C(v31, v28, &qword_27F2218B0);
  v47 = sub_24F9285B8();
  v48 = *(v47 - 8);
  v71 = v47;
  v72 = v48;
  v49 = *(v48 + 48);
  if ((v49)(v28, 1) == 1)
  {

    sub_24E601704(v46, &qword_27F2218B0);
    v50 = *(v77 + 8);
    v51 = v74;
    v50(v85, v74);
    sub_24E601704(v86, &qword_27F2129B0);
    sub_24E601704(v76, &qword_27F2218B0);
    v50(v34, v51);
    v52 = v28;
  }

  else
  {
    v73 = v28;
    v69 = v34;
    v53 = qword_27F2105F0;

    if (v53 != -1)
    {
      swift_once();
    }

    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578);
    __swift_project_value_buffer(v54, qword_27F22D8D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570);
    sub_24F9285C8();
    v55 = v87;
    v56 = v71;
    v57 = v72;
    if (v87)
    {
    }

    v58 = *(v57 + 8);
    v58(v73, v56);
    if (!v55)
    {

      sub_24E601704(v79, &qword_27F2218B0);
      v63 = *(v77 + 8);
      v64 = v74;
      v63(v85, v74);
      sub_24E601704(v86, &qword_27F2129B0);
      sub_24E601704(v76, &qword_27F2218B0);
      v63(v69, v64);
      return v19;
    }

    v59 = v76;
    v60 = v70;
    sub_24E60169C(v76, v70, &qword_27F2218B0);
    if (v49(v60, 1, v56) != 1)
    {
      v65 = v60;
      sub_24ECDF110();

      sub_24E601704(v79, &qword_27F2218B0);
      v66 = *(v77 + 8);
      v67 = v74;
      v66(v85, v74);
      sub_24E601704(v86, &qword_27F2129B0);
      sub_24E601704(v59, &qword_27F2218B0);
      v66(v69, v67);
      v58(v65, v56);
      return v19;
    }

    sub_24E601704(v79, &qword_27F2218B0);
    v61 = *(v77 + 8);
    v62 = v74;
    v61(v85, v74);
    sub_24E601704(v86, &qword_27F2129B0);
    sub_24E601704(v59, &qword_27F2218B0);
    v61(v69, v62);
    v52 = v60;
  }

  sub_24E601704(v52, &qword_27F2218B0);
  return v19;
}

void (*ArticlePage.init(deserializing:using:)(uint64_t a1, uint64_t a2))(uint64_t, uint64_t)
{
  v3 = v2;
  v109 = a2;
  v101 = *v3;
  v114 = sub_24F9285B8();
  v107 = *(v114 - 8);
  v5 = MEMORY[0x28223BE20](v114);
  v102 = &v90[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = MEMORY[0x28223BE20](v5);
  v106 = &v90[-v8];
  v9 = MEMORY[0x28223BE20](v7);
  v93 = &v90[-v10];
  MEMORY[0x28223BE20](v9);
  v108 = &v90[-v11];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v90[-v13];
  v15 = sub_24F928388();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v98 = &v90[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = MEMORY[0x28223BE20](v17);
  v96 = &v90[-v20];
  v21 = MEMORY[0x28223BE20](v19);
  v92 = &v90[-v22];
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v90[-v24];
  MEMORY[0x28223BE20](v23);
  v27 = &v90[-v26];
  v28 = sub_24F92AC28();
  v29 = *(v28 - 8);
  v30 = MEMORY[0x28223BE20](v28);
  v94 = &v90[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v30);
  v33 = &v90[-v32];
  v110 = a1;
  sub_24F928398();
  sub_24F9282B8();
  v34 = v28;
  v99 = v16;
  v37 = *(v16 + 8);
  v36 = v16 + 8;
  v35 = v37;
  v111 = v15;
  v37(v27, v15);
  if ((*(v29 + 48))(v14, 1, v34) == 1)
  {
    sub_24E601704(v14, &qword_27F2213B0);
    v38 = sub_24F92AC38();
    sub_24EB43A3C(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    *v39 = 0x7365766C656873;
    v40 = v101;
    v39[1] = 0xE700000000000000;
    v39[2] = v40;
    (*(*(v38 - 1) + 104))(v39, *MEMORY[0x277D22530], v38);
    swift_willThrow();
    (*(v107 + 8))(v109, v114);
    v35(v110, v111);
    type metadata accessor for ArticlePage();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v41 = v104;
    v100 = v29;
    v101 = v34;
    v42 = *(v29 + 32);
    v97 = v33;
    v42(v33, v14, v34);
    sub_24F928398();
    v43 = sub_24F928278();
    v35(v25, v111);
    v91 = v43;
    v105 = v35;
    if (v43)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570);
      v44 = swift_allocObject();
      *(v44 + 16) = MEMORY[0x277D84F90];
      *&v112 = v44;
      v45 = v93;
      if (qword_27F2105F0 != -1)
      {
        swift_once();
      }

      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578);
      __swift_project_value_buffer(v46, qword_27F22D8D8);
      sub_24F928528();
    }

    else
    {
      v45 = v93;
      if (qword_27F2105F0 != -1)
      {
        swift_once();
      }

      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578);
      __swift_project_value_buffer(v47, qword_27F22D8D8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570);
      sub_24F928538();
    }

    v48 = v107;
    (*(v107 + 32))(v108, v45, v114);
    v49 = v92;
    sub_24F928398();
    v50 = sub_24F928348();
    v52 = v51;
    v53 = v111;
    v54 = v105;
    v105(v49, v111);
    v95 = v36;
    v55 = &v41[OBJC_IVAR____TtC12GameStoreKit11ArticlePage_title];
    *v55 = v50;
    v55[1] = v52;
    sub_24F928398();
    v56 = sub_24F928348();
    v58 = v57;
    v54(v49, v53);
    v59 = &v41[OBJC_IVAR____TtC12GameStoreKit11ArticlePage_subtitle];
    *v59 = v56;
    v59[1] = v58;
    type metadata accessor for TodayCard();
    sub_24F928398();
    v60 = *(v48 + 16);
    v61 = v106;
    v62 = v114;
    (v60)(v106, v109, v114);
    v104 = v60;
    sub_24EB43A3C(&qword_27F2294D0, type metadata accessor for TodayCard);
    sub_24F929548();
    *&v41[OBJC_IVAR____TtC12GameStoreKit11ArticlePage_card] = v112;
    (*(v100 + 16))(v94, v97, v101);
    (v60)(v61, v108, v62);
    v93 = (v48 + 16);
    type metadata accessor for Shelf();
    sub_24EB43A3C(&qword_27F2265E0, type metadata accessor for Shelf);
    v63 = sub_24F92B6A8();
    v64 = sub_24EEF0A68(v63);
    v66 = v65;

    *&v41[OBJC_IVAR____TtC12GameStoreKit11ArticlePage_shelfOrdering] = v64;
    *&v41[OBJC_IVAR____TtC12GameStoreKit11ArticlePage_shelfMapping] = v66;
    type metadata accessor for Lockup();
    sub_24F928398();
    v67 = v109;
    v68 = v114;
    v69 = v104;
    (v104)(v61, v109, v114);
    sub_24EB43A3C(&qword_27F221FB8, type metadata accessor for Lockup);
    sub_24F929548();
    *&v41[OBJC_IVAR____TtC12GameStoreKit11ArticlePage_footerLockup] = v112;
    type metadata accessor for ArcadeLockup();
    sub_24F928398();
    v69(v61, v67, v68);
    sub_24EB43A3C(&qword_27F2294D8, type metadata accessor for ArcadeLockup);
    sub_24F929548();
    *&v41[OBJC_IVAR____TtC12GameStoreKit11ArticlePage_arcadeFooterLockup] = v112;
    type metadata accessor for Action();
    v70 = v110;
    sub_24F928398();
    v71 = static Action.tryToMakeInstance(byDeserializing:using:)(v49, v67);
    v72 = v111;
    v73 = v105;
    v74 = v41;
    v105(v49, v111);
    *&v41[OBJC_IVAR____TtC12GameStoreKit11ArticlePage_shareAction] = v71;
    v41[OBJC_IVAR____TtC12GameStoreKit11ArticlePage_isIncomplete] = v91 & 1;
    sub_24F928398();
    sub_24F928368();
    v73(v49, v72);
    v75 = &v41[OBJC_IVAR____TtC12GameStoreKit11ArticlePage_nextPage];
    v76 = v113;
    *v75 = v112;
    v75[1] = v76;
    sub_24F928398();
    sub_24EB439E8();
    sub_24F928208();
    v73(v49, v72);
    v41[OBJC_IVAR____TtC12GameStoreKit11ArticlePage_touchMode] = v112;
    v77 = v96;
    sub_24F928398();
    LOBYTE(v71) = sub_24F928278();
    v73(v77, v72);
    v41[OBJC_IVAR____TtC12GameStoreKit11ArticlePage_shouldTerminateOnClose] = v71 & 1;
    type metadata accessor for EditorialStoryCard(0);
    sub_24F928398();
    v78 = v67;
    v79 = v67;
    v80 = v114;
    v81 = v104;
    (v104)(v106, v79, v114);
    sub_24EB43A3C(&qword_27F2294E8, type metadata accessor for EditorialStoryCard);
    sub_24F929548();
    *&v74[OBJC_IVAR____TtC12GameStoreKit11ArticlePage_editorialStoryCard] = v112;
    v82 = v98;
    v83 = v70;
    v84 = v111;
    (*(v99 + 16))(v98, v83, v111);
    v85 = v102;
    v81(v102, v78, v80);
    v86 = v103;
    v87 = BasePage.init(deserializing:using:)(v82, v85);
    if (v86)
    {
      v38 = *(v107 + 8);
      v38(v78, v80);
      v105(v110, v84);
      v38(v108, v80);
    }

    else
    {
      v38 = v87;
      v88 = *(v107 + 8);
      v88(v78, v80);
      v105(v110, v84);
      v88(v108, v80);
    }

    (*(v100 + 8))(v97, v101);
  }

  return v38;
}

uint64_t ArticlePage.__allocating_init(copying:replacingCard:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218B0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v72 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v72 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v72 - v14;
  v16 = sub_24F928818();
  MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v17);
  if (a1)
  {
    v86 = v9;
    v87 = v12;
    v85 = v21;
    v73 = v6;
    v92 = &v72 - v19;
    v93 = v15;
    v89 = v20;
    v91 = v18;
    v22 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_title + 8);
    v82 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_title);
    v23 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_subtitle + 8);
    v80 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_subtitle);
    v24 = a2;
    if (!a2)
    {
    }

    v88 = v24;
    v25 = OBJC_IVAR____TtC12GameStoreKit11ArticlePage_shelfOrdering;
    swift_beginAccess();
    v26 = *(a1 + v25);
    v27 = MEMORY[0x277D84F90];
    v95 = MEMORY[0x277D84F90];
    v28 = *(v26 + 16);
    v29 = OBJC_IVAR____TtC12GameStoreKit11ArticlePage_shelfMapping;
    v83 = a2;

    v81 = v22;

    v79 = v23;

    swift_beginAccess();
    if (v28)
    {
      v30 = 0;
      v90 = v28 - 1;
      while (1)
      {
        v31 = v26 + 32 + 40 * v30;
        v32 = v30;
        while (1)
        {
          if (v32 >= *(v26 + 16))
          {
            __break(1u);
            goto LABEL_30;
          }

          sub_24E65864C(v31, v96);
          if (*(*(a1 + v29) + 16))
          {
            break;
          }

LABEL_7:
          ++v32;
          sub_24E6585F8(v96);
          v31 += 40;
          if (v28 == v32)
          {
            goto LABEL_15;
          }
        }

        sub_24E76D934(v96);
        if ((v33 & 1) == 0)
        {
          break;
        }

        v34 = sub_24E6585F8(v96);
        MEMORY[0x253050F00](v34);
        if (*((v95 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v95 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_24F92B5E8();
        }

        v30 = v32 + 1;
        sub_24F92B638();
        v27 = v95;
        if (v90 == v32)
        {
          goto LABEL_15;
        }
      }

      goto LABEL_7;
    }

LABEL_15:

    v35 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_footerLockup);
    v36 = v27;
    v37 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_arcadeFooterLockup);
    v38 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_shareAction);
    LODWORD(v78) = *(a1 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_isIncomplete);
    memset(v96, 0, sizeof(v96));
    v39 = OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics;
    swift_beginAccess();
    v77 = *(v89 + 16);
    v77(v92, a1 + v39, v91);
    v74 = *(a1 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent);
    v84 = sub_24F9285B8();
    v90 = *(v84 - 8);
    (*(v90 + 56))(v93, 1, 1, v84);
    v76 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_touchMode);
    v75 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_shouldTerminateOnClose);
    v40 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_editorialStoryCard);
    type metadata accessor for ArticlePage();
    v26 = swift_allocObject();
    v41 = (v26 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_title);
    v42 = v81;
    *v41 = v82;
    v41[1] = v42;
    v43 = (v26 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_subtitle);
    v44 = v79;
    *v43 = v80;
    v43[1] = v44;
    *(v26 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_card) = v88;

    v45 = sub_24EEF0A68(v36);
    v47 = v46;

    *(v26 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_shelfOrdering) = v45;
    *(v26 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_shelfMapping) = v47;
    v81 = v35;
    *(v26 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_footerLockup) = v35;
    v82 = v37;
    *(v26 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_arcadeFooterLockup) = v37;
    v79 = v38;
    *(v26 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_shareAction) = v38;
    *(v26 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_isIncomplete) = v78;
    sub_24E60169C(v96, v26 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_nextPage, &qword_27F2129B0);
    *(v26 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_touchMode) = v76;
    *(v26 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_shouldTerminateOnClose) = v75;
    v80 = v40;
    *(v26 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_editorialStoryCard) = v40;
    v48 = v85;
    v49 = v91;
    v50 = v77;
    v77(v85, v92, v91);
    v51 = v87;
    sub_24E60169C(v93, v87, &qword_27F2218B0);
    *(v26 + 16) = 0;
    v52 = v49;
    v50(v26 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics, v48, v49);
    *(v26 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent) = v74;
    v53 = v86;
    v54 = v84;
    sub_24E60169C(v51, v86, &qword_27F2218B0);
    v55 = *(v90 + 48);
    if (v55(v53, 1, v54) == 1)
    {

      sub_24E601704(v51, &qword_27F2218B0);
      v56 = *(v89 + 8);
      v56(v48, v52);
      sub_24E601704(v93, &qword_27F2218B0);
      v56(v92, v52);
      sub_24E601704(v96, &qword_27F2129B0);
      v57 = v53;
    }

    else
    {
      v78 = v55;
      v27 = v54;
      v58 = qword_27F2105F0;

      if (v58 != -1)
      {
LABEL_30:
        swift_once();
      }

      v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578);
      __swift_project_value_buffer(v59, qword_27F22D8D8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570);
      sub_24F9285C8();
      v60 = v94;
      v61 = v73;
      v62 = v87;
      if (v94)
      {
      }

      v63 = *(v90 + 8);
      v90 += 8;
      v63(v86, v27);
      if (!v60)
      {

        sub_24E601704(v62, &qword_27F2218B0);
        v67 = *(v89 + 8);
        v68 = v91;
        v67(v85, v91);
        sub_24E601704(v93, &qword_27F2218B0);
        v67(v92, v68);
        v66 = &qword_27F2129B0;
        v57 = v96;
        goto LABEL_26;
      }

      sub_24E60169C(v62, v61, &qword_27F2218B0);
      if (v78(v61, 1, v27) != 1)
      {
        sub_24ECDF110();

        sub_24E601704(v62, &qword_27F2218B0);
        v70 = *(v89 + 8);
        v71 = v91;
        v70(v85, v91);
        sub_24E601704(v93, &qword_27F2218B0);
        v70(v92, v71);
        sub_24E601704(v96, &qword_27F2129B0);
        v63(v61, v84);
        return v26;
      }

      sub_24E601704(v62, &qword_27F2218B0);
      v64 = *(v89 + 8);
      v65 = v91;
      v64(v85, v91);
      sub_24E601704(v93, &qword_27F2218B0);
      v64(v92, v65);
      sub_24E601704(v96, &qword_27F2129B0);
      v57 = v61;
    }

    v66 = &qword_27F2218B0;
LABEL_26:
    sub_24E601704(v57, v66);
    return v26;
  }

  return 0;
}

uint64_t ArticlePage.title.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_title);

  return v1;
}

uint64_t ArticlePage.subtitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_subtitle);

  return v1;
}

uint64_t sub_24EB42848(uint64_t (*a1)(uint64_t))
{
  v3 = OBJC_IVAR____TtC12GameStoreKit11ArticlePage_shelfMapping;
  swift_beginAccess();

  v5 = sub_24F159E30(v4, a1);

  *(v1 + v3) = v5;
}

uint64_t sub_24EB428D4(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218B0);
  MEMORY[0x28223BE20](v5 - 8);
  v71 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v81 = &v70 - v8;
  MEMORY[0x28223BE20](v9);
  v82 = &v70 - v10;
  MEMORY[0x28223BE20](v11);
  v87 = &v70 - v12;
  v79 = sub_24F928818();
  v13 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v83 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v89 = &v70 - v16;
  v78 = *(v2 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_card);
  v17 = ShelfBasedPage.shelves.getter(v4, &protocol witness table for ArticlePage);
  v18 = OBJC_IVAR____TtC12GameStoreKit11ArticlePage_shelfOrdering;
  swift_beginAccess();
  v19 = *(a1 + v18);
  v20 = MEMORY[0x277D84F90];
  v91 = MEMORY[0x277D84F90];
  v21 = *(v19 + 16);
  v22 = OBJC_IVAR____TtC12GameStoreKit11ArticlePage_shelfMapping;

  swift_beginAccess();
  v86 = v13;
  if (v21)
  {
    v23 = 0;
    v24 = v19 + 32;
    v84 = v21 - 1;
    v88 = v17;
    v85 = v19 + 32;
    while (1)
    {
      v25 = v24 + 40 * v23;
      v26 = v23;
      while (1)
      {
        if (v26 >= *(v19 + 16))
        {
          __break(1u);
          goto LABEL_35;
        }

        sub_24E65864C(v25, v92);
        if (*(*(a1 + v22) + 16))
        {
          break;
        }

LABEL_4:
        ++v26;
        sub_24E6585F8(v92);
        v25 += 40;
        if (v21 == v26)
        {
          v13 = v86;
          v17 = v88;
          goto LABEL_15;
        }
      }

      sub_24E76D934(v92);
      if ((v27 & 1) == 0)
      {
        break;
      }

      v28 = sub_24E6585F8(v92);
      MEMORY[0x253050F00](v28);
      if (*((v91 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v91 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24F92B5E8();
      }

      v23 = v26 + 1;
      sub_24F92B638();
      v20 = v91;
      v29 = v84 == v26;
      v24 = v85;
      v13 = v86;
      v17 = v88;
      if (v29)
      {
        goto LABEL_15;
      }
    }

    goto LABEL_4;
  }

LABEL_15:

  *&v92[0] = v17;
  sub_24EA0AE3C(v20);
  v30 = *&v92[0];
  if (*(v2 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_isIncomplete))
  {
    v31 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_isIncomplete);
  }

  else
  {
    v31 = 0;
  }

  v32 = v89;
  v33 = *(v2 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_footerLockup);
  v34 = *(v2 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_arcadeFooterLockup);
  v35 = *(v2 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_shareAction);
  memset(v92, 0, 32);
  v36 = *(v2 + 16);
  v85 = v35;
  v84 = v34;
  v77 = v33;
  LODWORD(v76) = v31;
  if (v36)
  {
    v80 = sub_24ED64DBC(*(a1 + 16));
  }

  else
  {
    v80 = *(a1 + 16);
  }

  v37 = OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics;
  swift_beginAccess();
  v74 = *(v13 + 16);
  v38 = v79;
  v74(v32, v2 + v37, v79);
  v75 = *(v2 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent);
  v39 = sub_24F9285B8();
  v88 = *(v39 - 8);
  v40 = v87;
  (*(v88 + 56))(v87, 1, 1, v39);
  v73 = *(v2 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_touchMode);
  v72 = *(v2 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_shouldTerminateOnClose);
  v41 = *(v2 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_editorialStoryCard);
  type metadata accessor for ArticlePage();
  v2 = swift_allocObject();
  v42 = (v2 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_title);
  *v42 = 0;
  v42[1] = 0;
  v43 = (v2 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_subtitle);
  *v43 = 0;
  v43[1] = 0;
  *(v2 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_card) = v78;

  v44 = sub_24EEF0A68(v30);
  v46 = v45;
  v47 = v38;

  *(v2 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_shelfOrdering) = v44;
  *(v2 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_shelfMapping) = v46;
  *(v2 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_footerLockup) = v77;
  *(v2 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_arcadeFooterLockup) = v84;
  *(v2 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_shareAction) = v85;
  *(v2 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_isIncomplete) = v76;
  sub_24E60169C(v92, v2 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_nextPage, &qword_27F2129B0);
  *(v2 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_touchMode) = v73;
  *(v2 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_shouldTerminateOnClose) = v72;
  v48 = v40;
  v78 = v41;
  *(v2 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_editorialStoryCard) = v41;
  v49 = v83;
  v50 = v74;
  v74(v83, v89, v47);
  v51 = v48;
  v52 = v82;
  sub_24E60169C(v51, v82, &qword_27F2218B0);
  *(v2 + 16) = v80;
  v50(v2 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics, v49, v47);
  *(v2 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent) = v75;
  v53 = v81;
  sub_24E60169C(v52, v81, &qword_27F2218B0);
  v54 = *(v88 + 48);
  if ((v54)(v53, 1, v39) == 1)
  {

    sub_24E601704(v52, &qword_27F2218B0);
    v55 = *(v86 + 8);
    v55(v49, v47);
    sub_24E601704(v87, &qword_27F2218B0);
    v55(v89, v47);
    sub_24E601704(v92, &qword_27F2129B0);
    v56 = v53;
  }

  else
  {
    v74 = v54;
    v76 = v39;
    v22 = v47;
    v57 = qword_27F2105F0;

    if (v57 != -1)
    {
LABEL_35:
      swift_once();
    }

    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578);
    __swift_project_value_buffer(v58, qword_27F22D8D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570);
    v59 = v81;
    sub_24F9285C8();
    v60 = v90;
    v61 = v71;
    v62 = v82;
    if (v90)
    {
    }

    v63 = *(v88 + 8);
    v64 = v76;
    v88 += 8;
    v63(v59, v76);
    if (!v60)
    {

      sub_24E601704(v62, &qword_27F2218B0);
      v67 = *(v86 + 8);
      v67(v83, v22);
      sub_24E601704(v87, &qword_27F2218B0);
      v67(v89, v22);
      v66 = &qword_27F2129B0;
      v56 = v92;
      goto LABEL_31;
    }

    sub_24E60169C(v62, v61, &qword_27F2218B0);
    if ((v74)(v61, 1, v64) != 1)
    {
      sub_24ECDF110();

      sub_24E601704(v62, &qword_27F2218B0);
      v69 = *(v86 + 8);
      v69(v83, v22);
      sub_24E601704(v87, &qword_27F2218B0);
      v69(v89, v22);
      sub_24E601704(v92, &qword_27F2129B0);
      v63(v61, v64);
      return v2;
    }

    sub_24E601704(v62, &qword_27F2218B0);
    v65 = *(v86 + 8);
    v65(v83, v22);
    sub_24E601704(v87, &qword_27F2218B0);
    v65(v89, v22);
    sub_24E601704(v92, &qword_27F2129B0);
    v56 = v61;
  }

  v66 = &qword_27F2218B0;
LABEL_31:
  sub_24E601704(v56, v66);
  return v2;
}

uint64_t sub_24EB43434()
{

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_nextPage, &qword_27F2129B0);
}

uint64_t ArticlePage.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics;
  v2 = sub_24F928818();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_nextPage, &qword_27F2129B0);

  return v0;
}

uint64_t ArticlePage.__deallocating_deinit()
{
  ArticlePage.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24EB43714@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_24EB428D4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_24EB43744()
{
  v17 = MEMORY[0x277D84FA0];
  v1 = OBJC_IVAR____TtC12GameStoreKit11ArticlePage_shelfOrdering;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = MEMORY[0x277D84F90];
  v16 = MEMORY[0x277D84F90];
  v4 = *(v2 + 16);
  v5 = OBJC_IVAR____TtC12GameStoreKit11ArticlePage_shelfMapping;

  swift_beginAccess();
  if (!v4)
  {
    goto LABEL_12;
  }

  v6 = 0;
  do
  {
    v7 = v2 + 32 + 40 * v6;
    v8 = v6;
    while (1)
    {
      if (v8 >= *(v2 + 16))
      {
        __break(1u);
        goto LABEL_21;
      }

      sub_24E65864C(v7, v15);
      if (*(*(v0 + v5) + 16))
      {
        break;
      }

LABEL_5:
      ++v8;
      sub_24E6585F8(v15);
      v7 += 40;
      if (v4 == v8)
      {
        goto LABEL_12;
      }
    }

    sub_24E76D934(v15);
    if ((v9 & 1) == 0)
    {

      goto LABEL_5;
    }

    v10 = sub_24E6585F8(v15);
    MEMORY[0x253050F00](v10);
    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24F92B5E8();
    }

    v6 = v8 + 1;
    sub_24F92B638();
    v3 = v16;
  }

  while (v4 - 1 != v8);
LABEL_12:

  if (v3 >> 62)
  {
LABEL_21:
    result = sub_24F92C738();
    v12 = result;
    if (!result)
    {
      goto LABEL_22;
    }

LABEL_14:
    if (v12 >= 1)
    {
      for (i = 0; i != v12; ++i)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x253052270](i, v3);
        }

        else
        {
          v14 = *(v3 + 8 * i + 32);
        }

        sub_24ED7E294(v15, *(v14 + 16));
      }

      goto LABEL_22;
    }

    __break(1u);
  }

  else
  {
    v12 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_14;
    }

LABEL_22:

    return v17;
  }

  return result;
}

uint64_t type metadata accessor for ArticlePage()
{
  result = qword_27F2294F8;
  if (!qword_27F2294F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24EB439E8()
{
  result = qword_27F2294E0;
  if (!qword_27F2294E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2294E0);
  }

  return result;
}

uint64_t sub_24EB43A3C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24EB43A88()
{
  result = qword_27F2294F0;
  if (!qword_27F2294F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2294F0);
  }

  return result;
}

uint64_t sub_24EB43D00()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_24EB43D58()
{
  result = qword_27F216248;
  if (!qword_27F216248)
  {
    type metadata accessor for CancelSignInAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216248);
  }

  return result;
}

uint64_t sub_24EB43DB0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0);
  v2[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24EB43E4C, 0, 0);
}

uint64_t sub_24EB43E4C()
{
  v1 = v0[4];
  v2 = type metadata accessor for Player(0);
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v0[6] = 0;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_24EB43F30;
  v4 = v0[4];

  return sub_24F64B8C4(v4, v0 + 6);
}

uint64_t sub_24EB43F30()
{
  v1 = *(*v0 + 32);

  sub_24E637048(v1);

  return MEMORY[0x2822009F8](sub_24EB44048, 0, 0);
}

uint64_t sub_24EB44048()
{
  v1 = *(v0 + 16);
  v2 = *MEMORY[0x277D21CA8];
  v3 = sub_24F928AE8();
  (*(*(v3 - 8) + 104))(v1, v2, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_24EB44110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510);

  v9 = sub_24F92A9E8();
  v10 = sub_24F92B858();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_24F985030;
  v11[5] = v8;
  v11[6] = v9;

  sub_24E6959D8(0, 0, v7, &unk_24F94D7B0, v11);

  return v9;
}

uint64_t sub_24EB44294()
{

  return swift_deallocObject();
}

uint64_t sub_24EB442CC(uint64_t a1)
{
  v4 = *(v1 + 24);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24E614970;

  return sub_24EB43DB0(a1, v4);
}

uint64_t sub_24EB44378()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24EB443F0(uint64_t a1, void (*a2)(void))
{
  v4 = v2;
  v5 = sub_24E76D934(a1);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v12 = *v4;
  if (!isUniquelyReferenced_nonNull_native)
  {
    a2();
    v9 = v12;
  }

  sub_24E6585F8(*(v9 + 48) + 40 * v7);
  v10 = *(*(v9 + 56) + 16 * v7);
  sub_24EB54E88(v7, v9);
  *v4 = v9;
  return v10;
}

uint64_t sub_24EB444BC(uint64_t a1, void (*a2)(void))
{
  v4 = v2;
  v5 = sub_24E76D934(a1);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v12 = *v4;
  if (!isUniquelyReferenced_nonNull_native)
  {
    a2();
    v9 = v12;
  }

  sub_24E6585F8(*(v9 + 48) + 40 * v7);
  v10 = *(*(v9 + 56) + 8 * v7);
  sub_24EB540F0(v7, v9);
  *v4 = v9;
  return v10;
}

double sub_24EB4455C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_24E7728CC(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v14 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_24E8B6D00();
      v9 = v14;
    }

    v10 = *(v9 + 56) + 88 * v7;
    v11 = *(v10 + 48);
    *(a2 + 32) = *(v10 + 32);
    *(a2 + 48) = v11;
    *(a2 + 64) = *(v10 + 64);
    *(a2 + 80) = *(v10 + 80);
    v12 = *(v10 + 16);
    *a2 = *v10;
    *(a2 + 16) = v12;
    sub_24EB55E50(v7, v9);
    *v3 = v9;
  }

  else
  {
    *(a2 + 80) = 0;
    result = 0.0;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }

  return result;
}

uint64_t sub_24EB44618@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_24E60D594(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229750);
  swift_allocObject();
  *a2 = sub_24EA50028(v4);
  v5 = swift_allocObject();
  swift_weakInit();
  if (a1)
  {

    sub_24EC61F04(sub_24EB5B2F8, v5, &v9);
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v6 = v10;
  *(a2 + 8) = v9;
  *(a2 + 24) = v6;
  if ((a1 & 2) != 0)
  {
    sub_24EC61F2C(sub_24EB5B2F8, v5, &v9);
  }

  else
  {

    v9 = 0u;
    v10 = 0u;
  }

  v7 = v10;
  *(a2 + 40) = v9;
  *(a2 + 56) = v7;
}

uint64_t sub_24EB44764()
{
  v0 = sub_24F927D88();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BDF0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_24F93DE60;
    sub_24F927D78();
    v8[2] = v6;
    sub_24EB5B300(&qword_27F222930, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
    sub_24E602068(&qword_27F222940, &qword_27F222310);
    v7 = sub_24F92C6A8();
    MEMORY[0x28223BE20](v7);
    v8[-4] = sub_24EB449CC;
    v8[-3] = 0;
    v8[-2] = v5;
    sub_24F92BF08();
    (*(v1 + 8))(v3, v0);
  }

  return result;
}

uint64_t sub_24EB449CC(void *a1)
{

  *a1 = MEMORY[0x277D84F98];
  return result;
}

uint64_t ArtworkIconFetcher.__allocating_init(objectGraph:)(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_24EB44618(3, v2 + 16);
  v3 = sub_24E60D570(MEMORY[0x277D84F90]);
  *(v2 + 88) = a1;
  *(v2 + 96) = v3;
  return v2;
}

uint64_t ArtworkIconFetcher.init(objectGraph:)(uint64_t a1)
{
  sub_24EB44618(3, v1 + 16);
  v3 = sub_24E60D570(MEMORY[0x277D84F90]);
  *(v1 + 88) = a1;
  *(v1 + 96) = v3;
  return v1;
}

double sub_24EB44A94@<D0>(uint64_t a1@<X0>, void (*a2)(void)@<X1>, void (*a3)(uint64_t)@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, _OWORD *a6@<X8>)
{
  v7 = v6;
  v49 = a6;
  v13 = sub_24F91F6B8();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E60169C(a5, &v52, &qword_27F235830);
  if (*(&v53 + 1))
  {
    v55 = v52;
    v56 = v53;
    v57 = v54;
  }

  else
  {
    sub_24F91F6A8();
    v17 = sub_24F91F668();
    v48 = v7;
    v18 = a1;
    v20 = v19;
    (*(v14 + 8))(v16, v13);
    v50 = v17;
    v51 = v20;
    a1 = v18;
    v7 = v48;
    sub_24F92C7F8();
    if (*(&v53 + 1))
    {
      sub_24E601704(&v52, &qword_27F235830);
    }
  }

  v21 = sub_24EB45738(a1);
  v23 = v22;
  if (*(v21 + 16))
  {
    if (!*(v22 + 16))
    {
      v37 = v21;

      a3(v37);

      goto LABEL_20;
    }

    if (a2)
    {
      a2();
    }
  }

  if (!*(v23 + 16))
  {
    v34 = v56;
    v35 = v49;
    *v49 = v55;
    v35[1] = v34;
    *(v35 + 4) = v57;

    return result;
  }

  v48 = a1;
  v24 = swift_allocObject();
  *(v24 + 16) = a3;
  *(v24 + 24) = a4;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v50 = *(v7 + 96);
  *(v7 + 96) = 0x8000000000000000;
  sub_24E81F574(sub_24EB5752C, v24, &v55, isUniquelyReferenced_nonNull_native);
  *(v7 + 96) = v50;
  swift_endAccess();
  v26 = *(v23 + 16);
  if (v26)
  {
    *&v52 = MEMORY[0x277D84F90];
    sub_24F45814C(0, v26, 0);
    v27 = v52;
    v28 = (v23 + 40);
    do
    {
      v29 = *(v28 - 1);
      v30 = *v28;
      *&v52 = v27;
      v32 = *(v27 + 16);
      v31 = *(v27 + 24);

      if (v32 >= v31 >> 1)
      {
        sub_24F45814C((v31 > 1), v32 + 1, 1);
        v27 = v52;
      }

      *(v27 + 16) = v32 + 1;
      v33 = v27 + 16 * v32;
      *(v33 + 32) = v29;
      *(v33 + 40) = v30;
      v28 += 3;
      --v26;
    }

    while (v26);
  }

  else
  {

    v27 = MEMORY[0x277D84F90];
  }

  type metadata accessor for JSIntentDispatcher();
  v38 = *(v7 + 88);
  sub_24F928FD8();
  sub_24F92A758();
  sub_24EB49530(0xD000000000000011, 0x800000024FA53CC0, v27, v38, "GameStoreKit/ArtworkIconFetcher.swift", 37, 2, &qword_27F229740, &unk_24F9853C8, &unk_2861E3E28, &unk_24F9853D8);

  v39 = swift_allocObject();
  swift_weakInit();
  sub_24E65864C(&v55, &v52);
  v40 = swift_allocObject();
  *(v40 + 16) = v39;
  v41 = v53;
  *(v40 + 24) = v52;
  *(v40 + 40) = v41;
  v42 = v48;
  *(v40 + 56) = v54;
  *(v40 + 64) = v42;
  v43 = sub_24E74EC40();

  v44 = sub_24F92BEF8();
  *(&v53 + 1) = v43;
  v54 = MEMORY[0x277D225C0];
  *&v52 = v44;
  sub_24F92A958();

  __swift_destroy_boxed_opaque_existential_1(&v52);
LABEL_20:
  result = *&v55;
  v45 = v56;
  v46 = v49;
  *v49 = v55;
  v46[1] = v45;
  *(v46 + 4) = v57;
  return result;
}

uint64_t sub_24EB44FC0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_24F927D88();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v12 = result;
  swift_beginAccess();
  v13 = *(v12 + 96);
  if (!*(v13 + 16))
  {
  }

  v14 = sub_24E76D934(a3);
  if ((v15 & 1) == 0)
  {
  }

  v63 = a3;
  v16 = *(v13 + 56) + 16 * v14;
  v17 = *(v16 + 8);
  v61 = *v16;
  v62 = v17;

  v18 = *(a4 + 16);
  v65 = v12;
  result = swift_beginAccess();
  if (!v18)
  {
    v64 = MEMORY[0x277D84F90];
    goto LABEL_27;
  }

  v57 = v10;
  v59 = v7;
  v19 = 0;
  v58 = v8;
  v56 = v8 + 8;
  v20 = a4 + 40;
  v64 = MEMORY[0x277D84F90];
  v55 = xmmword_24F93DE60;
  v60 = a4 + 40;
  do
  {
    v21 = (v20 + 16 * v19);
    v22 = v19;
    while (1)
    {
      if (v22 >= v18)
      {
        __break(1u);
LABEL_31:
        __break(1u);
        return result;
      }

      v19 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        goto LABEL_31;
      }

      v24 = *(v21 - 1);
      v23 = *v21;
      v25 = *(v66 + 16);
      v26 = *(v25 + 16);

      if (v26)
      {
        break;
      }

LABEL_12:
      v29 = v22 + 1;
      v30 = sub_24E60169C(v65 + 16, v71, &qword_27F229588);
      v69 = v24;
      v70 = v23;
      MEMORY[0x28223BE20](v30);
      *(&v49 - 2) = &v69;
      MEMORY[0x28223BE20](v31);
      *(&v49 - 4) = sub_24EB5B0B0;
      *(&v49 - 3) = v32;
      *(&v49 - 2) = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2245A8);
      sub_24F92BF18();

      v34 = v68;
      result = sub_24E601704(v71, &qword_27F229588);
      if (v34)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_24E61886C(0, v64[2] + 1, 1, v64);
          v64 = result;
        }

        v19 = v22 + 1;
        goto LABEL_21;
      }

      ++v22;
      v21 += 2;
      if (v29 == v18)
      {
        goto LABEL_27;
      }
    }

    v27 = sub_24E7728F0(v24, v23);
    if ((v28 & 1) == 0)
    {

      goto LABEL_12;
    }

    v50 = v22;
    v34 = *(*(v25 + 56) + 8 * v27);

    v35 = v65;
    v36 = swift_beginAccess();
    v54 = &v49;
    v68 = v34;
    v69 = v24;
    v70 = v23;
    v51 = *(v35 + 16);
    MEMORY[0x28223BE20](v36);
    v52 = &v49 - 4;
    *(&v49 - 2) = &v69;
    *(&v49 - 1) = &v68;
    v53 = *(v37 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BDF0);
    v38 = v58;
    v39 = swift_allocObject();
    *(v39 + 16) = v55;

    sub_24F927D78();
    v67 = v39;
    sub_24EB5B300(&qword_27F222930, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
    sub_24E602068(&qword_27F222940, &qword_27F222310);
    v40 = v57;
    v41 = v59;
    v42 = sub_24F92C6A8();
    MEMORY[0x28223BE20](v42);
    v43 = v52;
    *(&v49 - 4) = sub_24EB5B0D8;
    *(&v49 - 3) = v43;
    *(&v49 - 2) = v51;
    sub_24F92BF08();
    (*(v38 + 8))(v40, v41);

    swift_endAccess();
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_24E61886C(0, v64[2] + 1, 1, v64);
      v64 = result;
    }

    v22 = v50;
LABEL_21:
    v45 = v64[2];
    v44 = v64[3];
    if (v45 >= v44 >> 1)
    {
      result = sub_24E61886C((v44 > 1), v45 + 1, 1, v64);
      v64 = result;
    }

    v46 = v64;
    v64[2] = v45 + 1;
    v47 = &v46[2 * v45];
    v47[4] = v34;
    v47[5] = v22;
    v20 = v60;
  }

  while (v19 != v18);
LABEL_27:
  v71[0] = v64;
  v61(v71);

  swift_beginAccess();
  v48 = sub_24EB443F0(v63, sub_24E8B246C);
  swift_endAccess();
  sub_24E824448(v48);
}

uint64_t sub_24EB45738(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_beginAccess();
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = 0;
  v5 = MEMORY[0x277D84F90];
  v6 = a1 + 40;
  v21 = a1 + 40;
  v22 = MEMORY[0x277D84F90];
  do
  {
    v7 = (v6 + 16 * v4);
    v8 = v4;
    while (1)
    {
      if (v8 >= v2)
      {
        __break(1u);
LABEL_22:
        __break(1u);
        return result;
      }

      if (__OFADD__(v8, 1))
      {
        goto LABEL_22;
      }

      v25 = v8 + 1;
      v9 = *(v7 - 1);
      v10 = *v7;
      v11 = sub_24E60169C(v23 + 16, v29, &qword_27F229588);
      v24 = &v21;
      v27 = v9;
      v28 = v10;
      MEMORY[0x28223BE20](v11);
      MEMORY[0x28223BE20](v12);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2245A8);
      sub_24F92BF18();
      v13 = v26;
      sub_24E601704(v29, &qword_27F229588);
      if (v13)
      {
        break;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_24E618724(0, v5[2] + 1, 1, v5);
        v5 = result;
      }

      v15 = v5[2];
      v14 = v5[3];
      if (v15 >= v14 >> 1)
      {
        result = sub_24E618724((v14 > 1), v15 + 1, 1, v5);
        v5 = result;
      }

      v5[2] = v15 + 1;
      v16 = &v5[3 * v15];
      v16[4] = v9;
      v16[5] = v10;
      v16[6] = v8++;
      v7 += 2;
      if (v25 == v2)
      {
        return v22;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_24E61886C(0, v22[2] + 1, 1, v22);
      v22 = result;
    }

    v4 = v25;
    v18 = v22[2];
    v17 = v22[3];
    if (v18 >= v17 >> 1)
    {
      result = sub_24E61886C((v17 > 1), v18 + 1, 1, v22);
      v22 = result;
    }

    v19 = v22;
    v22[2] = v18 + 1;
    v20 = &v19[2 * v18];
    v20[4] = v13;
    v20[5] = v8;
    v6 = v21;
  }

  while (v4 != v2);
  return v22;
}

uint64_t sub_24EB45A18(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = sub_24E76D934(a1);
  if (v5)
  {
    v6 = v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v1 + 96);
    v10 = *(v2 + 96);
    *(v2 + 96) = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_24E8B246C();
      v8 = v10;
    }

    sub_24E6585F8(*(v8 + 48) + 40 * v6);

    sub_24EB54E88(v6, v8);
    *(v2 + 96) = v8;
  }

  return swift_endAccess();
}

uint64_t ArtworkIconFetcher.deinit()
{
  sub_24E601704(v0 + 16, &qword_27F229588);

  return v0;
}

uint64_t ArtworkIconFetcher.__deallocating_deinit()
{
  sub_24E601704(v0 + 16, &qword_27F229588);

  return swift_deallocClassInstance();
}

uint64_t sub_24EB45B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = v5;
  v30 = a5;
  v28 = a3;
  v29 = a4;
  v8 = *v5;
  v26 = a2;
  v27 = v8;
  v9 = type metadata accessor for TopChartsPageIntent();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v25 - v14;
  v25 = &v25 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229730);
  v16 = sub_24F92A9E8();
  v17 = sub_24F92B858();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  sub_24EB5AD34(a1, v12, type metadata accessor for TopChartsPageIntent);
  v18 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 39) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = v6;
  sub_24EB5AECC(v12, v21 + v18, type metadata accessor for TopChartsPageIntent);
  *(v21 + v19) = v26;
  v22 = v21 + ((v19 + 15) & 0xFFFFFFFFFFFFFFF8);
  v23 = v29;
  *v22 = v28;
  *(v22 + 1) = v23;
  v22[16] = v30;
  *(v21 + v20) = v16;
  *(v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8)) = v27;

  sub_24EA998B8(0, 0, v25, &unk_24F9853B8, v21);

  return v16;
}

uint64_t sub_24EB45E00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v21 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2296B8);
  v16 = sub_24F92A9E8();
  v17 = sub_24F92B858();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  sub_24EB59C60(a1, v21);
  v18 = swift_allocObject();
  v19 = v21[1];
  *(v18 + 40) = v21[0];
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 32) = v6;
  *(v18 + 56) = v19;
  *(v18 + 72) = v21[2];
  *(v18 + 88) = a2;
  *(v18 + 96) = a3;
  *(v18 + 104) = a4;
  *(v18 + 112) = a5;
  *(v18 + 120) = v16;
  *(v18 + 128) = v12;

  sub_24EA998B8(0, 0, v15, &unk_24F9852E0, v18);

  return v16;
}

uint64_t sub_24EB45FC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = v5;
  v31 = a5;
  v29 = a3;
  v30 = a4;
  v8 = *v5;
  v27 = a2;
  v28 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222720);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v13 = &v26 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v26 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226F8);
  v17 = sub_24F92A9E8();
  v18 = sub_24F92B858();
  (*(*(v18 - 8) + 56))(v16, 1, 1, v18);
  sub_24E60169C(a1, v13, &qword_27F222720);
  v19 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v20 = (v11 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 39) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = v6;
  sub_24E6009C8(v13, v22 + v19, &qword_27F222720);
  *(v22 + v20) = v27;
  v23 = v22 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8);
  v24 = v30;
  *v23 = v29;
  *(v23 + 1) = v24;
  v23[16] = v31;
  *(v22 + v21) = v17;
  *(v22 + ((v21 + 15) & 0xFFFFFFFFFFFFFFF8)) = v28;

  sub_24EA998B8(0, 0, v16, &unk_24F985428, v22);

  return v17;
}

uint64_t sub_24EB462B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v21 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226F8);
  v16 = sub_24F92A9E8();
  v17 = sub_24F92B858();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  sub_24E60169C(a1, v21, &qword_27F222710);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 32) = v6;
  v19 = v21[1];
  *(v18 + 40) = v21[0];
  *(v18 + 56) = v19;
  *(v18 + 72) = a2;
  *(v18 + 80) = a3;
  *(v18 + 88) = a4;
  *(v18 + 96) = a5;
  *(v18 + 104) = v16;
  *(v18 + 112) = v12;

  sub_24EA998B8(0, 0, v15, &unk_24F985410, v18);

  return v16;
}

uint64_t sub_24EB46480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v25 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2295E8);
  v16 = sub_24F92A9E8();
  v17 = sub_24F92B858();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  sub_24EB58150(a1, v25);
  v18 = swift_allocObject();
  v19 = v25[6];
  *(v18 + 152) = v25[7];
  v20 = v25[9];
  *(v18 + 168) = v25[8];
  *(v18 + 184) = v20;
  *(v18 + 200) = v25[10];
  v21 = v25[2];
  *(v18 + 88) = v25[3];
  v22 = v25[5];
  *(v18 + 104) = v25[4];
  *(v18 + 120) = v22;
  *(v18 + 136) = v19;
  v23 = v25[1];
  *(v18 + 40) = v25[0];
  *(v18 + 56) = v23;
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 32) = v6;
  *(v18 + 72) = v21;
  *(v18 + 216) = a2;
  *(v18 + 224) = a3;
  *(v18 + 232) = a4;
  *(v18 + 240) = a5;
  *(v18 + 248) = v16;
  *(v18 + 256) = v12;

  sub_24EA998B8(0, 0, v15, &unk_24F985168, v18);

  return v16;
}

uint64_t sub_24EB46678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v32 = a5;
  v30 = a3;
  v31 = a4;
  v7 = *v5;
  v28 = a2;
  v29 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222A78);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v25 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v25 - v14;
  v27 = &v25 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222A60);
  v26 = sub_24F92A9E8();
  v16 = sub_24F92B858();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  (*(v9 + 16))(v12, a1, v8);
  v17 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v18 = (v10 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 39) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 2) = 0;
  *(v20 + 3) = 0;
  *(v20 + 4) = v5;
  (*(v9 + 32))(&v20[v17], v12, v8);
  *&v20[v18] = v28;
  v21 = &v20[(v18 + 15) & 0xFFFFFFFFFFFFFFF8];
  v22 = v31;
  *v21 = v30;
  *(v21 + 1) = v22;
  v21[16] = v32;
  v23 = v26;
  *&v20[v19] = v26;
  *&v20[(v19 + 15) & 0xFFFFFFFFFFFFFFF8] = v29;

  sub_24EA998B8(0, 0, v27, &unk_24F985400, v20);

  return v23;
}

uint64_t sub_24EB4692C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v21 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222A60);
  v16 = sub_24F92A9E8();
  v17 = sub_24F92B858();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  sub_24EB597AC(a1, v21);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 32) = v6;
  v19 = v21[1];
  *(v18 + 40) = v21[0];
  *(v18 + 56) = v19;
  *(v18 + 72) = a2;
  *(v18 + 80) = a3;
  *(v18 + 88) = a4;
  *(v18 + 96) = a5;
  *(v18 + 104) = v16;
  *(v18 + 112) = v12;

  sub_24EA998B8(0, 0, v15, &unk_24F9852B0, v18);

  return v16;
}

uint64_t sub_24EB46AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = v5;
  v30 = a5;
  v28 = a3;
  v29 = a4;
  v8 = *v5;
  v26 = a2;
  v27 = v8;
  v9 = type metadata accessor for SocialMenuIntent();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v25 - v14;
  v25 = &v25 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229590);
  v16 = sub_24F92A9E8();
  v17 = sub_24F92B858();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  sub_24EB5AD34(a1, v12, type metadata accessor for SocialMenuIntent);
  v18 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 39) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = v6;
  sub_24EB5AECC(v12, v21 + v18, type metadata accessor for SocialMenuIntent);
  *(v21 + v19) = v26;
  v22 = v21 + ((v19 + 15) & 0xFFFFFFFFFFFFFFF8);
  v23 = v29;
  *v22 = v28;
  *(v22 + 1) = v23;
  v22[16] = v30;
  *(v21 + v20) = v16;
  *(v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8)) = v27;

  sub_24EA998B8(0, 0, v25, &unk_24F9850A0, v21);

  return v16;
}

uint64_t sub_24EB46D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = v5;
  v30 = a5;
  v28 = a3;
  v29 = a4;
  v8 = *v5;
  v26 = a2;
  v27 = v8;
  v9 = type metadata accessor for ProductPageIntent();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v25 - v14;
  v25 = &v25 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2296C0);
  v16 = sub_24F92A9E8();
  v17 = sub_24F92B858();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  sub_24EB5AD34(a1, v12, type metadata accessor for ProductPageIntent);
  v18 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 39) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = v6;
  sub_24EB5AECC(v12, v21 + v18, type metadata accessor for ProductPageIntent);
  *(v21 + v19) = v26;
  v22 = v21 + ((v19 + 15) & 0xFFFFFFFFFFFFFFF8);
  v23 = v29;
  *v22 = v28;
  *(v22 + 1) = v23;
  v22[16] = v30;
  *(v21 + v20) = v16;
  *(v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8)) = v27;

  sub_24EA998B8(0, 0, v25, &unk_24F9852F8, v21);

  return v16;
}

uint64_t sub_24EB4700C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = v5;
  v30 = a5;
  v28 = a3;
  v29 = a4;
  v8 = *v5;
  v26 = a2;
  v27 = v8;
  v9 = type metadata accessor for ArcadePageIntent();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v25 - v14;
  v25 = &v25 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229660);
  v16 = sub_24F92A9E8();
  v17 = sub_24F92B858();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  sub_24EB5AD34(a1, v12, type metadata accessor for ArcadePageIntent);
  v18 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 39) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = v6;
  sub_24EB5AECC(v12, v21 + v18, type metadata accessor for ArcadePageIntent);
  *(v21 + v19) = v26;
  v22 = v21 + ((v19 + 15) & 0xFFFFFFFFFFFFFFF8);
  v23 = v29;
  *v22 = v28;
  *(v22 + 1) = v23;
  v22[16] = v30;
  *(v21 + v20) = v16;
  *(v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8)) = v27;

  sub_24EA998B8(0, 0, v25, &unk_24F985240, v21);

  return v16;
}

uint64_t sub_24EB472E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = v5;
  v30 = a5;
  v28 = a3;
  v29 = a4;
  v8 = *v5;
  v26 = a2;
  v27 = v8;
  v9 = type metadata accessor for ArticlePageIntent();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v25 - v14;
  v25 = &v25 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2296A8);
  v16 = sub_24F92A9E8();
  v17 = sub_24F92B858();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  sub_24EB5AD34(a1, v12, type metadata accessor for ArticlePageIntent);
  v18 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 39) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = v6;
  sub_24EB5AECC(v12, v21 + v18, type metadata accessor for ArticlePageIntent);
  *(v21 + v19) = v26;
  v22 = v21 + ((v19 + 15) & 0xFFFFFFFFFFFFFFF8);
  v23 = v29;
  *v22 = v28;
  *(v22 + 1) = v23;
  v22[16] = v30;
  *(v21 + v20) = v16;
  *(v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8)) = v27;

  sub_24EA998B8(0, 0, v25, &unk_24F9852C8, v21);

  return v16;
}

uint64_t sub_24EB47578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = v5;
  v30 = a5;
  v28 = a3;
  v29 = a4;
  v8 = *v5;
  v26 = a2;
  v27 = v8;
  v9 = type metadata accessor for ActionIntent();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v25 - v14;
  v25 = &v25 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229718);
  v16 = sub_24F92A9E8();
  v17 = sub_24F92B858();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  sub_24EB5AD34(a1, v12, type metadata accessor for ActionIntent);
  v18 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 39) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = v6;
  sub_24EB5AECC(v12, v21 + v18, type metadata accessor for ActionIntent);
  *(v21 + v19) = v26;
  v22 = v21 + ((v19 + 15) & 0xFFFFFFFFFFFFFFF8);
  v23 = v29;
  *v22 = v28;
  *(v22 + 1) = v23;
  v22[16] = v30;
  *(v21 + v20) = v16;
  *(v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8)) = v27;

  sub_24EA998B8(0, 0, v25, &unk_24F985390, v21);

  return v16;
}

uint64_t sub_24EB47808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v7 = v6;
  v22 = a6;
  v13 = *v6;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v21 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229680);
  v17 = sub_24F92A9E8();
  v18 = sub_24F92B858();
  (*(*(v18 - 8) + 56))(v16, 1, 1, v18);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  *(v19 + 32) = v7;
  *(v19 + 40) = a1;
  *(v19 + 48) = a2;
  *(v19 + 56) = a3;
  *(v19 + 64) = a4;
  *(v19 + 72) = a5;
  *(v19 + 80) = v22;
  *(v19 + 88) = v17;
  *(v19 + 96) = v13;

  sub_24EA998B8(0, 0, v16, &unk_24F985270, v19);

  return v17;
}

uint64_t sub_24EB479C0(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v21[-v14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2296D0);
  v16 = sub_24F92A9E8();
  v17 = sub_24F92B858();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  v18 = swift_allocObject();
  v19 = a1[1];
  *(v18 + 40) = *a1;
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 32) = v6;
  *(v18 + 56) = v19;
  *(v18 + 72) = a1[2];
  *(v18 + 88) = a2;
  *(v18 + 96) = a3;
  *(v18 + 104) = a4;
  *(v18 + 112) = a5;
  *(v18 + 120) = v16;
  *(v18 + 128) = v12;

  sub_24EB5A2D4(a1, v21);

  sub_24EA998B8(0, 0, v15, &unk_24F985320, v18);

  return v16;
}

uint64_t sub_24EB47B88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = v5;
  v30 = a5;
  v28 = a3;
  v29 = a4;
  v8 = *v5;
  v26 = a2;
  v27 = v8;
  v9 = type metadata accessor for InAppPurchaseInstallPageIntent();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v25 - v14;
  v25 = &v25 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229670);
  v16 = sub_24F92A9E8();
  v17 = sub_24F92B858();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  sub_24EB5AD34(a1, v12, type metadata accessor for InAppPurchaseInstallPageIntent);
  v18 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 39) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = v6;
  sub_24EB5AECC(v12, v21 + v18, type metadata accessor for InAppPurchaseInstallPageIntent);
  *(v21 + v19) = v26;
  v22 = v21 + ((v19 + 15) & 0xFFFFFFFFFFFFFFF8);
  v23 = v29;
  *v22 = v28;
  *(v22 + 1) = v23;
  v22[16] = v30;
  *(v21 + v20) = v16;
  *(v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8)) = v27;

  sub_24EA998B8(0, 0, v25, &unk_24F985258, v21);

  return v16;
}

uint64_t sub_24EB47E18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v21 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2296D0);
  v16 = sub_24F92A9E8();
  v17 = sub_24F92B858();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  sub_24EB59FB4(a1, v21);
  v18 = swift_allocObject();
  v19 = v21[1];
  *(v18 + 40) = v21[0];
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 32) = v6;
  *(v18 + 56) = v19;
  *(v18 + 72) = v21[2];
  *(v18 + 88) = a2;
  *(v18 + 96) = a3;
  *(v18 + 104) = a4;
  *(v18 + 112) = a5;
  *(v18 + 120) = v16;
  *(v18 + 128) = v12;

  sub_24EA998B8(0, 0, v15, &unk_24F985310, v18);

  return v16;
}

uint64_t sub_24EB47FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = v5;
  v30 = a5;
  v28 = a3;
  v29 = a4;
  v8 = *v5;
  v26 = a2;
  v27 = v8;
  v9 = type metadata accessor for MSOPageIntent();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v25 - v14;
  v25 = &v25 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222A60);
  v16 = sub_24F92A9E8();
  v17 = sub_24F92B858();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  sub_24EB5AD34(a1, v12, type metadata accessor for MSOPageIntent);
  v18 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 39) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = v6;
  sub_24EB5AECC(v12, v21 + v18, type metadata accessor for MSOPageIntent);
  *(v21 + v19) = v26;
  v22 = v21 + ((v19 + 15) & 0xFFFFFFFFFFFFFFF8);
  v23 = v29;
  *v22 = v28;
  *(v22 + 1) = v23;
  v22[16] = v30;
  *(v21 + v20) = v16;
  *(v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8)) = v27;

  sub_24EA998B8(0, 0, v25, &unk_24F9853A0, v21);

  return v16;
}

uint64_t sub_24EB48270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v21 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229708);
  v16 = sub_24F92A9E8();
  v17 = sub_24F92B858();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  sub_24EB5A5CC(a1, v21);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 32) = v6;
  v19 = v21[1];
  *(v18 + 40) = v21[0];
  *(v18 + 56) = v19;
  *(v18 + 72) = a2;
  *(v18 + 80) = a3;
  *(v18 + 88) = a4;
  *(v18 + 96) = a5;
  *(v18 + 104) = v16;
  *(v18 + 112) = v12;

  sub_24EA998B8(0, 0, v15, &unk_24F985378, v18);

  return v16;
}

uint64_t sub_24EB48430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = v5;
  v31 = a5;
  v29 = a3;
  v30 = a4;
  v8 = *v5;
  v27 = a2;
  v28 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2296F8);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v13 = &v26 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v26 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2296E0);
  v17 = sub_24F92A9E8();
  v18 = sub_24F92B858();
  (*(*(v18 - 8) + 56))(v16, 1, 1, v18);
  sub_24E60169C(a1, v13, &qword_27F2296F8);
  v19 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v20 = (v11 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 39) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = v6;
  sub_24E6009C8(v13, v22 + v19, &qword_27F2296F8);
  *(v22 + v20) = v27;
  v23 = v22 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8);
  v24 = v30;
  *v23 = v29;
  *(v23 + 1) = v24;
  v23[16] = v31;
  *(v22 + v21) = v17;
  *(v22 + ((v21 + 15) & 0xFFFFFFFFFFFFFFF8)) = v28;

  sub_24EA998B8(0, 0, v16, &unk_24F985360, v22);

  return v17;
}

uint64_t sub_24EB486CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v21 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2296E0);
  v16 = sub_24F92A9E8();
  v17 = sub_24F92B858();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  sub_24E60169C(a1, v21, &qword_27F2296E8);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 32) = v6;
  v19 = v21[1];
  *(v18 + 40) = v21[0];
  *(v18 + 56) = v19;
  *(v18 + 72) = a2;
  *(v18 + 80) = a3;
  *(v18 + 88) = a4;
  *(v18 + 96) = a5;
  *(v18 + 104) = v16;
  *(v18 + 112) = v12;

  sub_24EA998B8(0, 0, v15, &unk_24F985348, v18);

  return v16;
}

uint64_t sub_24EB4889C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v9 = v8;
  v27 = a8;
  v25 = a6;
  v26 = a7;
  v15 = *v8;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v24 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229690);
  v19 = sub_24F92A9E8();
  v20 = sub_24F92B858();
  (*(*(v20 - 8) + 56))(v18, 1, 1, v20);
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  *(v21 + 32) = v9;
  *(v21 + 40) = a1;
  *(v21 + 48) = a2;
  *(v21 + 56) = a3;
  *(v21 + 64) = a4;
  *(v21 + 72) = a5;
  v22 = v26;
  *(v21 + 80) = v25;
  *(v21 + 88) = v22;
  *(v21 + 96) = v27;
  *(v21 + 104) = v19;
  *(v21 + 112) = v15;

  sub_24EA998B8(0, 0, v18, &unk_24F985290, v21);

  return v19;
}

uint64_t sub_24EB48A68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v23 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229628);
  v16 = sub_24F92A9E8();
  v17 = sub_24F92B858();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  sub_24EB58B14(a1, v23);
  v18 = swift_allocObject();
  v19 = v23[3];
  *(v18 + 72) = v23[2];
  *(v18 + 88) = v19;
  v20 = v23[5];
  *(v18 + 104) = v23[4];
  *(v18 + 120) = v20;
  v21 = v23[1];
  *(v18 + 40) = v23[0];
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 32) = v6;
  *(v18 + 56) = v21;
  *(v18 + 136) = a2;
  *(v18 + 144) = a3;
  *(v18 + 152) = a4;
  *(v18 + 160) = a5;
  *(v18 + 168) = v16;
  *(v18 + 176) = v12;

  sub_24EA998B8(0, 0, v15, &unk_24F9851E8, v18);

  return v16;
}

uint64_t sub_24EB48C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = v5;
  v30 = a5;
  v28 = a3;
  v29 = a4;
  v8 = *v5;
  v26 = a2;
  v27 = v8;
  v9 = type metadata accessor for SearchChartsAndCategoriesPageIntent();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v25 - v14;
  v25 = &v25 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229618);
  v16 = sub_24F92A9E8();
  v17 = sub_24F92B858();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  sub_24EB5AD34(a1, v12, type metadata accessor for SearchChartsAndCategoriesPageIntent);
  v18 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 39) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = v6;
  sub_24EB5AECC(v12, v21 + v18, type metadata accessor for SearchChartsAndCategoriesPageIntent);
  *(v21 + v19) = v26;
  v22 = v21 + ((v19 + 15) & 0xFFFFFFFFFFFFFFF8);
  v23 = v29;
  *v22 = v28;
  *(v22 + 1) = v23;
  v22[16] = v30;
  *(v21 + v20) = v16;
  *(v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8)) = v27;

  sub_24EA998B8(0, 0, v25, &unk_24F9851D0, v21);

  return v16;
}

uint64_t sub_24EB48ED0(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v27[-v14 - 8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229600);
  v16 = sub_24F92A9E8();
  v17 = sub_24F92B858();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  v18 = swift_allocObject();
  v19 = a1[9];
  *(v18 + 168) = a1[8];
  *(v18 + 184) = v19;
  v20 = a1[11];
  *(v18 + 200) = a1[10];
  *(v18 + 216) = v20;
  v21 = a1[5];
  *(v18 + 104) = a1[4];
  *(v18 + 120) = v21;
  v22 = a1[7];
  *(v18 + 136) = a1[6];
  *(v18 + 152) = v22;
  v23 = a1[1];
  *(v18 + 40) = *a1;
  *(v18 + 56) = v23;
  v24 = a1[3];
  *(v18 + 72) = a1[2];
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 32) = v6;
  *(v18 + 88) = v24;
  *(v18 + 232) = a2;
  *(v18 + 240) = a3;
  *(v18 + 248) = a4;
  *(v18 + 256) = a5;
  *(v18 + 264) = v16;
  *(v18 + 272) = v12;

  sub_24EB588D0(a1, v27);

  sub_24EA998B8(0, 0, v15, &unk_24F9851B0, v18);

  return v16;
}

uint64_t sub_24EB490CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v21 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229600);
  v16 = sub_24F92A9E8();
  v17 = sub_24F92B858();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  sub_24EB58554(a1, v21);
  v18 = swift_allocObject();
  v19 = v21[1];
  *(v18 + 40) = v21[0];
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 32) = v6;
  *(v18 + 56) = v19;
  *(v18 + 72) = v21[2];
  *(v18 + 88) = a2;
  *(v18 + 96) = a3;
  *(v18 + 104) = a4;
  *(v18 + 112) = a5;
  *(v18 + 120) = v16;
  *(v18 + 128) = v12;

  sub_24EA998B8(0, 0, v15, &unk_24F9851A0, v18);

  return v16;
}

uint64_t sub_24EB492E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = v9;
  v25 = a5;
  v24 = a4;
  v26 = a9;
  v15 = *v9;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v23 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(a6);
  v19 = sub_24F92A9E8();
  v20 = sub_24F92B858();
  (*(*(v20 - 8) + 56))(v18, 1, 1, v20);
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  *(v21 + 32) = v11;
  *(v21 + 40) = a1;
  *(v21 + 48) = a2;
  *(v21 + 56) = a3;
  *(v21 + 64) = v24;
  *(v21 + 72) = v25;
  *(v21 + 80) = v19;
  *(v21 + 88) = v15;

  sub_24EA998B8(0, 0, v18, v26, v21);

  return v19;
}

uint64_t sub_24EB49530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t *a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13 = v11;
  v30 = a7;
  v28 = a5;
  v29 = a6;
  v31 = a11;
  v18 = *v11;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v28 - v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(a8);
  v22 = sub_24F92A9E8();
  v23 = sub_24F92B858();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  *(v24 + 32) = v13;
  *(v24 + 40) = a1;
  *(v24 + 48) = a2;
  *(v24 + 56) = a3;
  v26 = v28;
  v25 = v29;
  *(v24 + 64) = a4;
  *(v24 + 72) = v26;
  *(v24 + 80) = v25;
  *(v24 + 88) = v30;
  *(v24 + 96) = v22;
  *(v24 + 104) = v18;

  sub_24EA998B8(0, 0, v21, v31, v24);

  return v22;
}

uint64_t sub_24EB496EC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v8 = v7;
  v23 = a7;
  v22 = a6;
  v14 = *v7;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v22 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2295C0);
  v18 = sub_24F92A9E8();
  v19 = sub_24F92B858();
  (*(*(v19 - 8) + 56))(v17, 1, 1, v19);
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + 24) = 0;
  *(v20 + 32) = v8;
  *(v20 + 40) = a1;
  *(v20 + 48) = a2;
  *(v20 + 56) = a3;
  *(v20 + 64) = a4;
  *(v20 + 72) = a5;
  *(v20 + 80) = v22;
  *(v20 + 88) = v23;
  *(v20 + 96) = v18;
  *(v20 + 104) = v14;

  sub_24EA998B8(0, 0, v17, &unk_24F985108, v20);

  return v18;
}

uint64_t sub_24EB498B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = v5;
  v31 = a5;
  v29 = a3;
  v30 = a4;
  v8 = *v5;
  v27 = a2;
  v28 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229650);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v13 = &v26 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v26 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229638);
  v17 = sub_24F92A9E8();
  v18 = sub_24F92B858();
  (*(*(v18 - 8) + 56))(v16, 1, 1, v18);
  sub_24E60169C(a1, v13, &qword_27F229650);
  v19 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v20 = (v11 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 39) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = v6;
  sub_24E6009C8(v13, v22 + v19, &qword_27F229650);
  *(v22 + v20) = v27;
  v23 = v22 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8);
  v24 = v30;
  *v23 = v29;
  *(v23 + 1) = v24;
  v23[16] = v31;
  *(v22 + v21) = v17;
  *(v22 + ((v21 + 15) & 0xFFFFFFFFFFFFFFF8)) = v28;

  sub_24EA998B8(0, 0, v16, &unk_24F985220, v22);

  return v17;
}

uint64_t sub_24EB49B50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v21 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229638);
  v16 = sub_24F92A9E8();
  v17 = sub_24F92B858();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  sub_24E60169C(a1, v21, &qword_27F229640);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 32) = v6;
  v19 = v21[1];
  *(v18 + 40) = v21[0];
  *(v18 + 56) = v19;
  *(v18 + 72) = a2;
  *(v18 + 80) = a3;
  *(v18 + 88) = a4;
  *(v18 + 96) = a5;
  *(v18 + 104) = v16;
  *(v18 + 112) = v12;

  sub_24EA998B8(0, 0, v15, &unk_24F985208, v18);

  return v16;
}

uint64_t sub_24EB49D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = v21;
  sub_24F928418();
  v8[16] = swift_task_alloc();
  v18 = (*(*a4 + 112) + **(*a4 + 112));
  v14 = swift_task_alloc();
  v8[17] = v14;
  v15 = type metadata accessor for TopChartsPageIntent();
  v16 = sub_24EB5B300(&qword_27F229738, type metadata accessor for TopChartsPageIntent);
  *v14 = v8;
  v14[1] = sub_24EB49F04;

  return v18(v8 + 13, a5, a6, a7, a8, v20, v15, v16);
}

uint64_t sub_24EB49F04()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_24EB4A018;
  }

  else
  {
    v2 = sub_24EB5B9F8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EB4A018()
{
  if (qword_27F210FD8 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  __swift_project_boxed_opaque_existential_1(qword_27F39DCC8, qword_27F39DCE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  sub_24F928408();
  sub_24F9283F8();
  v0[5] = MEMORY[0x277D837D0];
  v0[2] = 0xD000000000000013;
  v0[3] = 0x800000024FA53E50;
  sub_24F9283D8();
  sub_24E601704((v0 + 2), &qword_27F2129B0);
  sub_24F9283F8();
  sub_24F928428();
  swift_getErrorValue();
  v2 = v0[10];
  v3 = v0[11];
  v0[9] = v3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 6);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_1, v2, v3);
  sub_24F928458();
  sub_24E601704((v0 + 6), &qword_27F2129B0);
  sub_24F92A5A8();

  sub_24F92A9A8();

  v5 = v0[1];

  return v5();
}

uint64_t sub_24EB4A2AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = a5;
  v8[16] = v20;
  sub_24F928418();
  v8[17] = swift_task_alloc();
  v17 = (*(*a4 + 112) + **(*a4 + 112));
  v14 = swift_task_alloc();
  v8[18] = v14;
  v15 = sub_24EA2D968();
  *v14 = v8;
  v14[1] = sub_24EB4A450;

  return v17(v8 + 13, a5, a6, a7, a8, v19, &type metadata for PersonalizedOfferContextIntent, v15);
}

uint64_t sub_24EB4A450()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_24EB5B9B8;
  }

  else
  {
    v2 = sub_24EB5B9FC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EB4A564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = v21;
  sub_24F928418();
  v8[16] = swift_task_alloc();
  v17 = (*(*a4 + 112) + **(*a4 + 112));
  v13 = swift_task_alloc();
  v8[17] = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222720);
  v15 = sub_24E602068(&qword_27F229768, &qword_27F222720);
  *v13 = v8;
  v13[1] = sub_24EB4A750;

  return v17(v8 + 13, a5, a6, a7, a8, v20, v14, v15);
}

uint64_t sub_24EB4A750()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_24EB5B988;
  }

  else
  {
    v2 = sub_24EB5B9F8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EB4A864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[16] = v20;
  sub_24F928418();
  v8[17] = swift_task_alloc();
  v8[13] = a5;
  v17 = (*(*a4 + 112) + **(*a4 + 112));
  v14 = swift_task_alloc();
  v8[18] = v14;
  v15 = sub_24EB57B88();
  *v14 = v8;
  v14[1] = sub_24EB4AA10;

  return v17(v8 + 14, v8 + 13, a6, a7, a8, v19, &type metadata for ShelvesIntent, v15);
}

uint64_t sub_24EB4AA10()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_24EB4AB24;
  }

  else
  {
    v2 = sub_24EB5B9BC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EB4AB24()
{
  if (qword_27F210FD8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 152);
  __swift_project_boxed_opaque_existential_1(qword_27F39DCC8, qword_27F39DCE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  sub_24F928408();
  sub_24F9283F8();
  *(v0 + 40) = MEMORY[0x277D837D0];
  strcpy((v0 + 16), "ShelvesIntent");
  *(v0 + 30) = -4864;
  sub_24F9283D8();
  sub_24E601704(v0 + 16, &qword_27F2129B0);
  sub_24F9283F8();
  sub_24F928428();
  swift_getErrorValue();
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);
  *(v0 + 72) = v3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 48));
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_1, v2, v3);
  sub_24F928458();
  sub_24E601704(v0 + 48, &qword_27F2129B0);
  sub_24F92A5A8();

  sub_24F92A9A8();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_24EB4ADC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = v21;
  sub_24F928418();
  v8[16] = swift_task_alloc();
  v17 = (*(*a4 + 112) + **(*a4 + 112));
  v13 = swift_task_alloc();
  v8[17] = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222710);
  v15 = sub_24E602068(&qword_27F229760, &qword_27F222710);
  *v13 = v8;
  v13[1] = sub_24EB4AFB0;

  return v17(v8 + 13, a5, a6, a7, a8, v20, v14, v15);
}

uint64_t sub_24EB4AFB0()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_24EB5B984;
  }

  else
  {
    v2 = sub_24EB5B9F8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EB4B0C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[69] = v20;
  v8[68] = a5;
  sub_24F928418();
  v8[70] = swift_task_alloc();
  v17 = (*(*a4 + 112) + **(*a4 + 112));
  v14 = swift_task_alloc();
  v8[71] = v14;
  v15 = sub_24EB5834C();
  *v14 = v8;
  v14[1] = sub_24EB4B26C;

  return v17(v8 + 2, a5, a6, a7, a8, v19, &type metadata for PurchaseDecorationIntent, v15);
}

uint64_t sub_24EB4B26C()
{
  *(*v1 + 576) = v0;

  if (v0)
  {
    v2 = sub_24EB4B43C;
  }

  else
  {
    v2 = sub_24EB4B380;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EB4B380()
{
  sub_24F92A9C8();
  v1 = *(v0 + 192);
  *(v0 + 392) = *(v0 + 176);
  *(v0 + 408) = v1;
  *(v0 + 424) = *(v0 + 208);
  v2 = *(v0 + 128);
  *(v0 + 328) = *(v0 + 112);
  *(v0 + 344) = v2;
  v3 = *(v0 + 160);
  *(v0 + 360) = *(v0 + 144);
  *(v0 + 376) = v3;
  v4 = *(v0 + 64);
  *(v0 + 264) = *(v0 + 48);
  *(v0 + 280) = v4;
  v5 = *(v0 + 96);
  *(v0 + 296) = *(v0 + 80);
  *(v0 + 312) = v5;
  v6 = *(v0 + 32);
  *(v0 + 232) = *(v0 + 16);
  *(v0 + 440) = *(v0 + 224);
  *(v0 + 248) = v6;
  sub_24EA3BBAC(v0 + 232);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_24EB4B43C()
{
  if (qword_27F210FD8 != -1)
  {
    swift_once();
  }

  v1 = v0[72];
  v2 = v0[68];
  __swift_project_boxed_opaque_existential_1(qword_27F39DCC8, qword_27F39DCE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  sub_24F928408();
  sub_24F9283F8();
  v4 = *v2;
  v3 = v2[1];
  v0[59] = MEMORY[0x277D837D0];
  v0[56] = v4;
  v0[57] = v3;

  sub_24F9283D8();
  sub_24E601704((v0 + 56), &qword_27F2129B0);
  sub_24F9283F8();
  sub_24F928428();
  swift_getErrorValue();
  v5 = v0[64];
  v6 = v0[65];
  v0[63] = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 60);
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_1, v5, v6);
  sub_24F928458();
  sub_24E601704((v0 + 60), &qword_27F2129B0);
  sub_24F92A5A8();

  sub_24F92A9A8();

  v8 = v0[1];

  return v8();
}

uint64_t sub_24EB4B6C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = a5;
  v8[16] = v21;
  sub_24F928418();
  v8[17] = swift_task_alloc();
  v17 = (*(*a4 + 112) + **(*a4 + 112));
  v13 = swift_task_alloc();
  v8[18] = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222A78);
  v8[19] = v14;
  v15 = sub_24E602068(&qword_27F229758, &qword_27F222A78);
  v8[20] = v15;
  *v13 = v8;
  v13[1] = sub_24EB4B8BC;

  return v17(v8 + 13, a5, a6, a7, a8, v20, v14, v15);
}

uint64_t sub_24EB4B8BC()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_24EB4B9D0;
  }

  else
  {
    v2 = sub_24EB5B9FC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EB4B9D0()
{
  if (qword_27F210FD8 != -1)
  {
    swift_once();
  }

  v1 = v0[21];
  __swift_project_boxed_opaque_existential_1(qword_27F39DCC8, qword_27F39DCE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  sub_24F928408();
  sub_24F9283F8();
  v2 = sub_24F9284D8();
  v0[5] = MEMORY[0x277D837D0];
  v0[2] = v2;
  v0[3] = v3;
  sub_24F9283D8();
  sub_24E601704((v0 + 2), &qword_27F2129B0);
  sub_24F9283F8();
  sub_24F928428();
  swift_getErrorValue();
  v4 = v0[10];
  v5 = v0[11];
  v0[9] = v5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 6);
  (*(*(v5 - 8) + 16))(boxed_opaque_existential_1, v4, v5);
  sub_24F928458();
  sub_24E601704((v0 + 6), &qword_27F2129B0);
  sub_24F92A5A8();

  sub_24F92A9A8();

  v7 = v0[1];

  return v7();
}

uint64_t sub_24EB4BC70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = v20;
  sub_24F928418();
  v8[16] = swift_task_alloc();
  v17 = (*(*a4 + 112) + **(*a4 + 112));
  v14 = swift_task_alloc();
  v8[17] = v14;
  v15 = sub_24EB59964();
  *v14 = v8;
  v14[1] = sub_24EB4BE14;

  return v17(v8 + 13, a5, a6, a7, a8, v19, &type metadata for GenericPageMoreIntent, v15);
}

uint64_t sub_24EB4BE14()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_24EB4BF28;
  }

  else
  {
    v2 = sub_24EB5B9F8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EB4BF28()
{
  if (qword_27F210FD8 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  __swift_project_boxed_opaque_existential_1(qword_27F39DCC8, qword_27F39DCE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  sub_24F928408();
  sub_24F9283F8();
  v0[5] = MEMORY[0x277D837D0];
  v0[2] = 0xD000000000000015;
  v0[3] = 0x800000024FA53D90;
  sub_24F9283D8();
  sub_24E601704((v0 + 2), &qword_27F2129B0);
  sub_24F9283F8();
  sub_24F928428();
  swift_getErrorValue();
  v2 = v0[10];
  v3 = v0[11];
  v0[9] = v3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 6);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_1, v2, v3);
  sub_24F928458();
  sub_24E601704((v0 + 6), &qword_27F2129B0);
  sub_24F92A5A8();

  sub_24F92A9A8();

  v5 = v0[1];

  return v5();
}

uint64_t sub_24EB4C1BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = a5;
  v8[16] = v21;
  sub_24F928418();
  v8[17] = swift_task_alloc();
  v18 = (*(*a4 + 112) + **(*a4 + 112));
  v14 = swift_task_alloc();
  v8[18] = v14;
  v15 = type metadata accessor for SocialMenuIntent();
  v16 = sub_24EB5B300(&qword_27F229598, type metadata accessor for SocialMenuIntent);
  *v14 = v8;
  v14[1] = sub_24EB4C3A0;

  return v18(v8 + 13, a5, a6, a7, a8, v20, v15, v16);
}

uint64_t sub_24EB4C3A0()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_24EB4C528;
  }

  else
  {
    v2 = sub_24EB4C4B4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EB4C4B4()
{
  sub_24F92A9C8();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24EB4C528()
{
  if (qword_27F210FD8 != -1)
  {
    swift_once();
  }

  v1 = v0[19];
  v2 = v0[15];
  __swift_project_boxed_opaque_existential_1(qword_27F39DCC8, qword_27F39DCE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  sub_24F928408();
  sub_24F9283F8();
  v4 = *v2;
  v3 = v2[1];
  v0[5] = MEMORY[0x277D837D0];
  v0[2] = v4;
  v0[3] = v3;

  sub_24F9283D8();
  sub_24E601704((v0 + 2), &qword_27F2129B0);
  sub_24F9283F8();
  sub_24F928428();
  swift_getErrorValue();
  v5 = v0[10];
  v6 = v0[11];
  v0[9] = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 6);
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_1, v5, v6);
  sub_24F928458();
  sub_24E601704((v0 + 6), &qword_27F2129B0);
  sub_24F92A5A8();

  sub_24F92A9A8();

  v8 = v0[1];

  return v8();
}

uint64_t sub_24EB4C7B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[19] = a6;
  v8[20] = v22;
  v8[18] = a5;
  sub_24F928418();
  v8[21] = swift_task_alloc();
  v8[10] = a5;
  v8[11] = a6;
  v8[12] = a7;
  v17 = (*(*a4 + 112) + **(*a4 + 112));
  v14 = swift_task_alloc();
  v8[22] = v14;
  v15 = sub_24EB5B26C();
  *v14 = v8;
  v14[1] = sub_24EB4C974;

  return v17(v8 + 16, v8 + 10, a8, v19, v20, v21, &type metadata for IconArtworkIntent, v15);
}

uint64_t sub_24EB4C974()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_24EB4CAFC;
  }

  else
  {
    v2 = sub_24EB4CA88;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EB4CA88()
{
  sub_24F92A9C8();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24EB4CAFC()
{
  v1 = v0;
  if (qword_27F210FD8 != -1)
  {
    swift_once();
  }

  v2 = v0[23];
  v3 = v0[18];
  v4 = v0[19];
  __swift_project_boxed_opaque_existential_1(qword_27F39DCC8, qword_27F39DCE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  sub_24F928408();
  sub_24F9283F8();
  v0[5] = MEMORY[0x277D837D0];
  v0[2] = v3;
  v0[3] = v4;

  sub_24F9283D8();
  sub_24E601704((v0 + 2), &qword_27F2129B0);
  sub_24F9283F8();
  sub_24F928428();
  swift_getErrorValue();
  v5 = v0[13];
  v6 = v0[14];
  v1[9] = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 6);
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_1, v5, v6);
  sub_24F928458();
  sub_24E601704((v1 + 6), &qword_27F2129B0);
  sub_24F92A5A8();

  sub_24F92A9A8();

  v8 = v1[1];

  return v8();
}

uint64_t sub_24EB4CD90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = a5;
  v8[16] = v21;
  sub_24F928418();
  v8[17] = swift_task_alloc();
  v18 = (*(*a4 + 112) + **(*a4 + 112));
  v14 = swift_task_alloc();
  v8[18] = v14;
  v15 = type metadata accessor for ProductPageIntent();
  v16 = sub_24EB5B300(&qword_27F2296C8, type metadata accessor for ProductPageIntent);
  *v14 = v8;
  v14[1] = sub_24EB4CF74;

  return v18(v8 + 13, a5, a6, a7, a8, v20, v15, v16);
}

uint64_t sub_24EB4CF74()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_24EB5B9B8;
  }

  else
  {
    v2 = sub_24EB4D088;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EB4D088()
{
  sub_24F92A9C8();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24EB4D0FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = v21;
  sub_24F928418();
  v8[16] = swift_task_alloc();
  v18 = (*(*a4 + 112) + **(*a4 + 112));
  v14 = swift_task_alloc();
  v8[17] = v14;
  v15 = type metadata accessor for ArcadePageIntent();
  v16 = sub_24EB5B300(&qword_27F229668, type metadata accessor for ArcadePageIntent);
  *v14 = v8;
  v14[1] = sub_24EB4D2E0;

  return v18(v8 + 13, a5, a6, a7, a8, v20, v15, v16);
}

uint64_t sub_24EB4D2E0()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_24EB4D468;
  }

  else
  {
    v2 = sub_24EB4D3F4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EB4D3F4()
{
  sub_24F92A9C8();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24EB4D468()
{
  if (qword_27F210FD8 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  __swift_project_boxed_opaque_existential_1(qword_27F39DCC8, qword_27F39DCE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  sub_24F928408();
  sub_24F9283F8();
  v0[5] = MEMORY[0x277D837D0];
  v0[2] = 0xD000000000000010;
  v0[3] = 0x800000024FA53DD0;
  sub_24F9283D8();
  sub_24E601704((v0 + 2), &qword_27F2129B0);
  sub_24F9283F8();
  sub_24F928428();
  swift_getErrorValue();
  v2 = v0[10];
  v3 = v0[11];
  v0[9] = v3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 6);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_1, v2, v3);
  sub_24F928458();
  sub_24E601704((v0 + 6), &qword_27F2129B0);
  sub_24F92A5A8();

  sub_24F92A9A8();

  v5 = v0[1];

  return v5();
}

uint64_t sub_24EB4D700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[16] = v20;
  sub_24F928418();
  v8[17] = swift_task_alloc();
  v8[13] = a5;
  v17 = (*(*a4 + 112) + **(*a4 + 112));
  v14 = swift_task_alloc();
  v8[18] = v14;
  v15 = sub_24EB57CE4();
  v8[19] = v15;
  *v14 = v8;
  v14[1] = sub_24EB4D8B0;

  return v17(v8 + 14, v8 + 13, a6, a7, a8, v19, &type metadata for ArcadeUpsellGridIntent, v15);
}

uint64_t sub_24EB4D8B0()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_24EB4DA38;
  }

  else
  {
    v2 = sub_24EB4D9C4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EB4D9C4()
{
  sub_24F92A9C8();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24EB4DA38()
{
  if (qword_27F210FD8 != -1)
  {
    swift_once();
  }

  v1 = v0[20];
  __swift_project_boxed_opaque_existential_1(qword_27F39DCC8, qword_27F39DCE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  sub_24F928408();
  sub_24F9283F8();
  v2 = sub_24F9284D8();
  v0[5] = MEMORY[0x277D837D0];
  v0[2] = v2;
  v0[3] = v3;
  sub_24F9283D8();
  sub_24E601704((v0 + 2), &qword_27F2129B0);
  sub_24F9283F8();
  sub_24F928428();
  swift_getErrorValue();
  v4 = v0[10];
  v5 = v0[11];
  v0[9] = v5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 6);
  (*(*(v5 - 8) + 16))(boxed_opaque_existential_1, v4, v5);
  sub_24F928458();
  sub_24E601704((v0 + 6), &qword_27F2129B0);
  sub_24F92A5A8();

  sub_24F92A9A8();

  v7 = v0[1];

  return v7();
}

uint64_t sub_24EB4DCD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = v21;
  sub_24F928418();
  v8[16] = swift_task_alloc();
  v18 = (*(*a4 + 112) + **(*a4 + 112));
  v14 = swift_task_alloc();
  v8[17] = v14;
  v15 = type metadata accessor for ArticlePageIntent();
  v16 = sub_24EB5B300(&qword_27F2296B0, type metadata accessor for ArticlePageIntent);
  *v14 = v8;
  v14[1] = sub_24EB4DEB8;

  return v18(v8 + 13, a5, a6, a7, a8, v20, v15, v16);
}

uint64_t sub_24EB4DEB8()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_24EB4DFCC;
  }

  else
  {
    v2 = sub_24EB5B9F8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EB4DFCC()
{
  if (qword_27F210FD8 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  __swift_project_boxed_opaque_existential_1(qword_27F39DCC8, qword_27F39DCE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  sub_24F928408();
  sub_24F9283F8();
  v0[5] = MEMORY[0x277D837D0];
  v0[2] = 0xD000000000000011;
  v0[3] = 0x800000024FA53E10;
  sub_24F9283D8();
  sub_24E601704((v0 + 2), &qword_27F2129B0);
  sub_24F9283F8();
  sub_24F928428();
  swift_getErrorValue();
  v2 = v0[10];
  v3 = v0[11];
  v0[9] = v3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 6);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_1, v2, v3);
  sub_24F928458();
  sub_24E601704((v0 + 6), &qword_27F2129B0);
  sub_24F92A5A8();

  sub_24F92A9A8();

  v5 = v0[1];

  return v5();
}

uint64_t sub_24EB4E260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = a5;
  v8[16] = v21;
  sub_24F928418();
  v8[17] = swift_task_alloc();
  v18 = (*(*a4 + 112) + **(*a4 + 112));
  v14 = swift_task_alloc();
  v8[18] = v14;
  v15 = type metadata accessor for ActionIntent();
  v16 = sub_24EB5B300(&qword_27F229720, type metadata accessor for ActionIntent);
  *v14 = v8;
  v14[1] = sub_24EB4A450;

  return v18(v8 + 13, a5, a6, a7, a8, v20, v15, v16);
}

uint64_t sub_24EB4E444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[17] = v21;
  sub_24F928418();
  v8[18] = swift_task_alloc();
  v8[13] = a5;
  v8[14] = a6;
  v17 = (*(*a4 + 112) + **(*a4 + 112));
  v14 = swift_task_alloc();
  v8[19] = v14;
  v15 = sub_24EB5959C();
  *v14 = v8;
  v14[1] = sub_24EB4E600;

  return v17(v8 + 15, v8 + 13, a7, a8, v19, v20, &type metadata for SearchHintsIntent, v15);
}

uint64_t sub_24EB4E600()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_24EB4E788;
  }

  else
  {
    v2 = sub_24EB4E714;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EB4E714()
{
  sub_24F92A9C8();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24EB4E788()
{
  if (qword_27F210FD8 != -1)
  {
    swift_once();
  }

  v1 = v0[20];
  __swift_project_boxed_opaque_existential_1(qword_27F39DCC8, qword_27F39DCE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  sub_24F928408();
  sub_24F9283F8();
  v0[5] = MEMORY[0x277D837D0];
  v0[2] = 0xD000000000000011;
  v0[3] = 0x800000024FA53DF0;
  sub_24F9283D8();
  sub_24E601704((v0 + 2), &qword_27F2129B0);
  sub_24F9283F8();
  sub_24F928428();
  swift_getErrorValue();
  v2 = v0[10];
  v3 = v0[11];
  v0[9] = v3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 6);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_1, v2, v3);
  sub_24F928458();
  sub_24E601704((v0 + 6), &qword_27F2129B0);
  sub_24F92A5A8();

  sub_24F92A9A8();

  v5 = v0[1];

  return v5();
}

uint64_t sub_24EB4EA1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 168) = a5;
  *(v8 + 176) = v21;
  sub_24F928418();
  *(v8 + 184) = swift_task_alloc();
  v14 = a5[2];
  *(v8 + 32) = a5[1];
  *(v8 + 48) = v14;
  *(v8 + 16) = *a5;
  v18 = (*(*a4 + 112) + **(*a4 + 112));
  v15 = swift_task_alloc();
  *(v8 + 192) = v15;
  v16 = sub_24E90E038();
  *v15 = v8;
  v15[1] = sub_24EB4EBD0;

  return v18(v8 + 152, v8 + 16, a6, a7, a8, v20, &type metadata for ArcadeSeeAllGamesPageIntent, v16);
}

uint64_t sub_24EB4EBD0()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = v2[21];
    v2[26] = *v3;
    v2[27] = v3[1];
    v4 = sub_24EB4ED6C;
  }

  else
  {
    v4 = sub_24EB4ECF8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24EB4ECF8()
{
  sub_24F92A9C8();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24EB4ED6C()
{
  v1 = v0;
  if (qword_27F210FD8 != -1)
  {
    swift_once();
  }

  v2 = v0[26];
  v3 = v0[27];
  v4 = v0[25];
  __swift_project_boxed_opaque_existential_1(qword_27F39DCC8, qword_27F39DCE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  sub_24F928408();
  sub_24F9283F8();
  v0[11] = MEMORY[0x277D837D0];
  v0[8] = v2;
  v0[9] = v3;

  sub_24F9283D8();
  sub_24E601704((v0 + 8), &qword_27F2129B0);
  sub_24F9283F8();
  sub_24F928428();
  swift_getErrorValue();
  v5 = v0[16];
  v6 = v0[17];
  v1[15] = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 12);
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_1, v5, v6);
  sub_24F928458();
  sub_24E601704((v1 + 12), &qword_27F2129B0);
  sub_24F92A5A8();

  sub_24F92A9A8();

  v8 = v1[1];

  return v8();
}

uint64_t sub_24EB4F000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = a5;
  v8[16] = v21;
  sub_24F928418();
  v8[17] = swift_task_alloc();
  v18 = (*(*a4 + 112) + **(*a4 + 112));
  v14 = swift_task_alloc();
  v8[18] = v14;
  v15 = type metadata accessor for InAppPurchaseInstallPageIntent();
  v16 = sub_24EB5B300(&qword_27F229678, type metadata accessor for InAppPurchaseInstallPageIntent);
  *v14 = v8;
  v14[1] = sub_24EB4A450;

  return v18(v8 + 13, a5, a6, a7, a8, v20, v15, v16);
}

uint64_t sub_24EB4F1E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = a5;
  v8[16] = v20;
  sub_24F928418();
  v8[17] = swift_task_alloc();
  v17 = (*(*a4 + 112) + **(*a4 + 112));
  v14 = swift_task_alloc();
  v8[18] = v14;
  v15 = sub_24EB5A110();
  *v14 = v8;
  v14[1] = sub_24EB4A450;

  return v17(v8 + 13, a5, a6, a7, a8, v19, &type metadata for ArcadeSeeAllGamesPageMoreIntent, v15);
}

uint64_t sub_24EB4F388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = a5;
  v8[16] = v21;
  sub_24F928418();
  v8[17] = swift_task_alloc();
  v18 = (*(*a4 + 112) + **(*a4 + 112));
  v14 = swift_task_alloc();
  v8[18] = v14;
  v15 = type metadata accessor for MSOPageIntent();
  v16 = sub_24EB5B300(&qword_27F229728, type metadata accessor for MSOPageIntent);
  *v14 = v8;
  v14[1] = sub_24EB4A450;

  return v18(v8 + 13, a5, a6, a7, a8, v20, v15, v16);
}

uint64_t sub_24EB4F56C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = v20;
  sub_24F928418();
  v8[16] = swift_task_alloc();
  v17 = (*(*a4 + 112) + **(*a4 + 112));
  v14 = swift_task_alloc();
  v8[17] = v14;
  v15 = sub_24EB5A728();
  *v14 = v8;
  v14[1] = sub_24EB4F710;

  return v17(v8 + 13, a5, a6, a7, a8, v19, &type metadata for TopChartsPageMoreIntent, v15);
}

uint64_t sub_24EB4F710()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_24EB4F824;
  }

  else
  {
    v2 = sub_24EB5B9F8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EB4F824()
{
  if (qword_27F210FD8 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  __swift_project_boxed_opaque_existential_1(qword_27F39DCC8, qword_27F39DCE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  sub_24F928408();
  sub_24F9283F8();
  v0[5] = MEMORY[0x277D837D0];
  v0[2] = 0xD000000000000017;
  v0[3] = 0x800000024FA53E30;
  sub_24F9283D8();
  sub_24E601704((v0 + 2), &qword_27F2129B0);
  sub_24F9283F8();
  sub_24F928428();
  swift_getErrorValue();
  v2 = v0[10];
  v3 = v0[11];
  v0[9] = v3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 6);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_1, v2, v3);
  sub_24F928458();
  sub_24E601704((v0 + 6), &qword_27F2129B0);
  sub_24F92A5A8();

  sub_24F92A9A8();

  v5 = v0[1];

  return v5();
}

uint64_t sub_24EB4FAB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = v21;
  sub_24F928418();
  v8[16] = swift_task_alloc();
  v17 = (*(*a4 + 112) + **(*a4 + 112));
  v13 = swift_task_alloc();
  v8[17] = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2296F8);
  v15 = sub_24E602068(&qword_27F229700, &qword_27F2296F8);
  *v13 = v8;
  v13[1] = sub_24EB4A750;

  return v17(v8 + 13, a5, a6, a7, a8, v20, v14, v15);
}

uint64_t sub_24EB4FCA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = v21;
  sub_24F928418();
  v8[16] = swift_task_alloc();
  v17 = (*(*a4 + 112) + **(*a4 + 112));
  v13 = swift_task_alloc();
  v8[17] = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2296E8);
  v15 = sub_24E602068(&qword_27F2296F0, &qword_27F2296E8);
  *v13 = v8;
  v13[1] = sub_24EB4AFB0;

  return v17(v8 + 13, a5, a6, a7, a8, v20, v14, v15);
}

uint64_t sub_24EB4FE90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[20] = a6;
  v8[21] = v23;
  v8[19] = a5;
  sub_24F928418();
  v8[22] = swift_task_alloc();
  v8[2] = a5;
  v8[3] = a6;
  v8[4] = a7;
  v8[5] = a8;
  v17 = (*(*a4 + 112) + **(*a4 + 112));
  v14 = swift_task_alloc();
  v8[23] = v14;
  v15 = sub_24EB59758();
  *v14 = v8;
  v14[1] = sub_24EB5005C;

  return v17(v8 + 17, v8 + 2, v19, v20, v21, v22, &type metadata for MSOProviderDataIntent, v15);
}

uint64_t sub_24EB5005C()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_24EB501E4;
  }

  else
  {
    v2 = sub_24EB50170;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EB50170()
{
  sub_24F92A9C8();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24EB501E4()
{
  v1 = v0;
  if (qword_27F210FD8 != -1)
  {
    swift_once();
  }

  v2 = v0[24];
  v3 = v0[19];
  v4 = v0[20];
  __swift_project_boxed_opaque_existential_1(qword_27F39DCC8, qword_27F39DCE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  sub_24F928408();
  sub_24F9283F8();
  v0[9] = MEMORY[0x277D837D0];
  v0[6] = v3;
  v0[7] = v4;

  sub_24F9283D8();
  sub_24E601704((v0 + 6), &qword_27F2129B0);
  sub_24F9283F8();
  sub_24F928428();
  swift_getErrorValue();
  v5 = v0[14];
  v6 = v0[15];
  v1[13] = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 10);
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_1, v5, v6);
  sub_24F928458();
  sub_24E601704((v1 + 10), &qword_27F2129B0);
  sub_24F92A5A8();

  sub_24F92A9A8();

  v8 = v1[1];

  return v8();
}

uint64_t sub_24EB50478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = a5;
  v8[16] = v20;
  sub_24F928418();
  v8[17] = swift_task_alloc();
  v17 = (*(*a4 + 112) + **(*a4 + 112));
  v14 = swift_task_alloc();
  v8[18] = v14;
  v15 = sub_24EB58CF0();
  *v14 = v8;
  v14[1] = sub_24EB4A450;

  return v17(v8 + 13, a5, a6, a7, a8, v19, &type metadata for ArcadeSubscriptionDecorationIntent, v15);
}

uint64_t sub_24EB5061C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = a5;
  v8[16] = v21;
  sub_24F928418();
  v8[17] = swift_task_alloc();
  v18 = (*(*a4 + 112) + **(*a4 + 112));
  v14 = swift_task_alloc();
  v8[18] = v14;
  v15 = type metadata accessor for SearchChartsAndCategoriesPageIntent();
  v16 = sub_24EB5B300(&qword_27F229620, type metadata accessor for SearchChartsAndCategoriesPageIntent);
  *v14 = v8;
  v14[1] = sub_24EB4A450;

  return v18(v8 + 13, a5, a6, a7, a8, v20, v15, v16);
}

uint64_t sub_24EB50800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 312) = a5;
  *(v8 + 320) = v26;
  sub_24F928418();
  *(v8 + 328) = swift_task_alloc();
  v14 = a5[7];
  *(v8 + 112) = a5[6];
  *(v8 + 128) = v14;
  v15 = a5[5];
  *(v8 + 80) = a5[4];
  *(v8 + 96) = v15;
  v16 = a5[11];
  *(v8 + 176) = a5[10];
  *(v8 + 192) = v16;
  v17 = a5[9];
  *(v8 + 144) = a5[8];
  *(v8 + 160) = v17;
  v18 = a5[1];
  *(v8 + 16) = *a5;
  *(v8 + 32) = v18;
  v19 = a5[3];
  *(v8 + 48) = a5[2];
  *(v8 + 64) = v19;
  v23 = (*(*a4 + 112) + **(*a4 + 112));
  v20 = swift_task_alloc();
  *(v8 + 336) = v20;
  v21 = sub_24EB5892C();
  *v20 = v8;
  v20[1] = sub_24EB509D4;

  return v23(v8 + 296, v8 + 16, a6, a7, a8, v25, &type metadata for SearchResultsPageIntent, v21);
}

uint64_t sub_24EB509D4()
{
  v2 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    v3 = v2[39];
    v2[44] = *v3;
    v2[45] = v3[1];
    v4 = sub_24EB50B70;
  }

  else
  {
    v4 = sub_24EB50AFC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24EB50AFC()
{
  sub_24F92A9C8();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24EB50B70()
{
  v1 = v0;
  if (qword_27F210FD8 != -1)
  {
    swift_once();
  }

  v2 = v0[44];
  v3 = v0[45];
  v4 = v0[43];
  __swift_project_boxed_opaque_existential_1(qword_27F39DCC8, qword_27F39DCE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  sub_24F928408();
  sub_24F9283F8();
  v0[29] = MEMORY[0x277D837D0];
  v0[26] = v2;
  v0[27] = v3;

  sub_24F9283D8();
  sub_24E601704((v0 + 26), &qword_27F2129B0);
  sub_24F9283F8();
  sub_24F928428();
  swift_getErrorValue();
  v5 = v0[34];
  v6 = v0[35];
  v1[33] = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 30);
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_1, v5, v6);
  sub_24F928458();
  sub_24E601704((v1 + 30), &qword_27F2129B0);
  sub_24F92A5A8();

  sub_24F92A9A8();

  v8 = v1[1];

  return v8();
}

uint64_t sub_24EB50E04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = a5;
  v8[16] = v20;
  sub_24F928418();
  v8[17] = swift_task_alloc();
  v17 = (*(*a4 + 112) + **(*a4 + 112));
  v14 = swift_task_alloc();
  v8[18] = v14;
  v15 = sub_24EB586B0();
  *v14 = v8;
  v14[1] = sub_24EB4A450;

  return v17(v8 + 13, a5, a6, a7, a8, v19, &type metadata for SearchResultsPageMoreIntent, v15);
}

uint64_t sub_24EB50FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = v22;
  sub_24F928418();
  v8[16] = swift_task_alloc();
  v14 = sub_24F929758();
  v8[17] = v14;
  v8[18] = *(v14 - 8);
  v15 = swift_task_alloc();
  v8[19] = v15;
  v8[13] = a5;
  v19 = (*(*a4 + 112) + **(*a4 + 112));
  v16 = swift_task_alloc();
  v8[20] = v16;
  v17 = sub_24EB58500();
  v8[21] = v17;
  *v16 = v8;
  v16[1] = sub_24EB511C0;

  return v19(v15, v8 + 13, a6, a7, a8, v21, &type metadata for MetricsFieldLintingIntent, v17);
}

uint64_t sub_24EB511C0()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_24EB51374;
  }

  else
  {
    v2 = sub_24EB512D4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EB512D4()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  sub_24F92A9C8();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24EB51374()
{
  if (qword_27F210FD8 != -1)
  {
    swift_once();
  }

  v1 = v0[22];
  __swift_project_boxed_opaque_existential_1(qword_27F39DCC8, qword_27F39DCE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  sub_24F928408();
  sub_24F9283F8();
  v2 = sub_24F9284D8();
  v0[5] = MEMORY[0x277D837D0];
  v0[2] = v2;
  v0[3] = v3;
  sub_24F9283D8();
  sub_24E601704((v0 + 2), &qword_27F2129B0);
  sub_24F9283F8();
  sub_24F928428();
  swift_getErrorValue();
  v4 = v0[10];
  v5 = v0[11];
  v0[9] = v5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 6);
  (*(*(v5 - 8) + 16))(boxed_opaque_existential_1, v4, v5);
  sub_24F928458();
  sub_24E601704((v0 + 6), &qword_27F2129B0);
  sub_24F92A5A8();

  sub_24F92A9A8();

  v7 = v0[1];

  return v7();
}

uint64_t sub_24EB5161C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[19] = a6;
  v8[20] = v22;
  v8[18] = a5;
  sub_24F928418();
  v8[21] = swift_task_alloc();
  v8[10] = a5;
  v8[11] = a6;
  v8[12] = a7;
  v17 = (*(*a4 + 112) + **(*a4 + 112));
  v14 = swift_task_alloc();
  v8[22] = v14;
  v15 = sub_24EB580FC();
  *v14 = v8;
  v14[1] = sub_24EB517DC;

  return v17(v8 + 16, v8 + 10, a8, v19, v20, v21, &type metadata for PurchasesDecorationIntent, v15);
}

uint64_t sub_24EB517DC()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_24EB5BA00;
  }

  else
  {
    v2 = sub_24EB518F0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EB518F0()
{
  sub_24F92A9C8();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24EB51964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[19] = a6;
  v8[20] = v22;
  v8[18] = a5;
  sub_24F928418();
  v8[21] = swift_task_alloc();
  v8[10] = a5;
  v8[11] = a6;
  v8[12] = a7;
  v17 = (*(*a4 + 112) + **(*a4 + 112));
  v14 = swift_task_alloc();
  v8[22] = v14;
  v15 = sub_24EB57FA0();
  *v14 = v8;
  v14[1] = sub_24EB51B24;

  return v17(v8 + 16, v8 + 10, a8, v19, v20, v21, &type metadata for BatchPurchaseDecorationIntent, v15);
}

uint64_t sub_24EB51B24()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_24EB5BA00;
  }

  else
  {
    v2 = sub_24EB5B9C0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EB51C38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 136) = v22;
  sub_24F928418();
  *(v8 + 144) = swift_task_alloc();
  *(v8 + 104) = a5;
  *(v8 + 112) = a6;
  *(v8 + 120) = a7;
  v17 = (*(*a4 + 112) + **(*a4 + 112));
  v14 = swift_task_alloc();
  *(v8 + 152) = v14;
  v15 = sub_24E7C6010();
  *(v8 + 160) = v15;
  *v14 = v8;
  v14[1] = sub_24EB51DFC;

  return v17(v8 + 121, v8 + 104, a8, v19, v20, v21, &type metadata for CancelPreorderIntent, v15);
}

uint64_t sub_24EB51DFC()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_24EB51F7C;
  }

  else
  {
    v2 = sub_24EB51F10;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EB51F10()
{
  sub_24F92A9C8();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24EB51F7C()
{
  if (qword_27F210FD8 != -1)
  {
    swift_once();
  }

  v1 = v0[21];
  __swift_project_boxed_opaque_existential_1(qword_27F39DCC8, qword_27F39DCE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  sub_24F928408();
  sub_24F9283F8();
  v2 = sub_24F9284D8();
  v0[5] = MEMORY[0x277D837D0];
  v0[2] = v2;
  v0[3] = v3;
  sub_24F9283D8();
  sub_24E601704((v0 + 2), &qword_27F2129B0);
  sub_24F9283F8();
  sub_24F928428();
  swift_getErrorValue();
  v4 = v0[10];
  v5 = v0[11];
  v0[9] = v5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 6);
  (*(*(v5 - 8) + 16))(boxed_opaque_existential_1, v4, v5);
  sub_24F928458();
  sub_24E601704((v0 + 6), &qword_27F2129B0);
  sub_24F92A5A8();

  sub_24F92A9A8();

  v7 = v0[1];

  return v7();
}

uint64_t sub_24EB52218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = v21;
  sub_24F928418();
  v8[16] = swift_task_alloc();
  v17 = (*(*a4 + 112) + **(*a4 + 112));
  v13 = swift_task_alloc();
  v8[17] = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229650);
  v15 = sub_24E602068(&qword_27F229658, &qword_27F229650);
  *v13 = v8;
  v13[1] = sub_24EB52404;

  return v17(v8 + 13, a5, a6, a7, a8, v20, v14, v15);
}

uint64_t sub_24EB52404()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_24EB52518;
  }

  else
  {
    v2 = sub_24EB5B9F8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EB52518()
{
  if (qword_27F210FD8 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  __swift_project_boxed_opaque_existential_1(qword_27F39DCC8, qword_27F39DCE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  sub_24F928408();
  sub_24F9283F8();
  v0[5] = MEMORY[0x277D837D0];
  v0[2] = 0xD000000000000011;
  v0[3] = 0x800000024FA53DB0;
  sub_24F9283D8();
  sub_24E601704((v0 + 2), &qword_27F2129B0);
  sub_24F9283F8();
  sub_24F928428();
  swift_getErrorValue();
  v2 = v0[10];
  v3 = v0[11];
  v0[9] = v3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 6);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_1, v2, v3);
  sub_24F928458();
  sub_24E601704((v0 + 6), &qword_27F2129B0);
  sub_24F92A5A8();

  sub_24F92A9A8();

  v5 = v0[1];

  return v5();
}

uint64_t sub_24EB527AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = v21;
  sub_24F928418();
  v8[16] = swift_task_alloc();
  v17 = (*(*a4 + 112) + **(*a4 + 112));
  v13 = swift_task_alloc();
  v8[17] = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229640);
  v15 = sub_24E602068(&qword_27F229648, &qword_27F229640);
  *v13 = v8;
  v13[1] = sub_24EB4AFB0;

  return v17(v8 + 13, a5, a6, a7, a8, v20, v14, v15);
}

uint64_t sub_24EB52998(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_24F92C6C8() + 1) & ~v5;
    do
    {
      sub_24F92D068();

      sub_24F92B218();
      v10 = sub_24F92D0B8();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

char *sub_24EB52B60(char *result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_24F92C6C8() + 1) & ~v5;
    do
    {
      sub_24E772674(*(a2 + 48) + 136 * v6, v20);
      sub_24F92D068();
      sub_24F92B218();
      sub_24F92B218();
      sub_24F92B218();
      sub_24F92B218();

      sub_24EDC9948(v19, v20[8]);
      sub_24EA1DCB8(v19, v20[7]);
      sub_24F92D088();
      sub_24F92D088();
      sub_24F92D088();
      v9 = sub_24F92D0B8();
      result = sub_24E7726D0(v20);
      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        result = (v11 + 136 * v3);
        v12 = (v11 + 136 * v6);
        if (v3 != v6 || result >= v12 + 136)
        {
          result = memmove(result, v12, 0x88uLL);
        }

        v13 = *(a2 + 56);
        v14 = (v13 + 8 * v3);
        v15 = (v13 + 8 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}