uint64_t sub_22BF5EE78@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = *(a1 + 24);

  v9 = sub_22C2721D4();
  *a3 = v5;
  *(a3 + 8) = v9;
  *(a3 + 16) = v10;
  *(a3 + 24) = v6;
  *(a3 + 32) = v7;
  *(a3 + 40) = v8;
  *(a3 + 48) = a2;
}

uint64_t sub_22BF5EEF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_22C272D14();
  v16 = a2;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  sub_22BF442E8(sub_22BF68FB4, v15, v11);

  v12 = sub_22C272CF4();
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = a4;
  v14[5] = a5;
  v14[6] = a6;
  sub_22BF442E8(sub_22BF68FD0, v14, v12);
}

uint64_t sub_22BF5EFD8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, int a7)
{
  v19 = a7;
  v9 = *a1;
  v10 = a1[1];
  v18[0] = sub_22C2721D4();
  v18[1] = v11;

  v12 = sub_22BE1B18C();
  MEMORY[0x2318AB8D0](v12);

  v13 = sub_22BF53DC0();

  sub_22C1A8734(v18, v13);
  result = sub_22C26A128(v13, a5);
  if ((result & 1) == 0)
  {

    sub_22BE78B20();
    v15 = *(*a6 + 16);
    result = sub_22BE78C0C(v15);
    v16 = *a6;
    *(v16 + 16) = v15 + 1;
    v17 = v16 + 32 * v15;
    *(v17 + 32) = v13;
    *(v17 + 40) = v9;
    *(v17 + 48) = v10;
    *(v17 + 56) = v19;
  }

  return result;
}

void sub_22BF5F0E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v76 = a8;
  v80 = a7;
  v87 = a5;
  v88 = a6;
  v86 = a3;
  v71 = type metadata accessor for ToolboxVersion(0);
  v13 = *(*(v71 - 8) + 64);
  MEMORY[0x28223BE20](v71);
  v72 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22C2720A4();
  v74 = *(v15 - 8);
  v16 = *(v74 + 64);
  MEMORY[0x28223BE20](v15);
  v75 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22BE5CE4C(&qword_27D90B740, &qword_22C28ED18);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v71 - v20;
  v89 = sub_22C26E504();
  v22 = *(v89 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v89);
  v82 = &v71 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v79 = &v71 - v26;
  if (a2 < a1)
  {
LABEL_27:
    __break(1u);
  }

  else
  {
    v73 = v15;
    v90 = v9;
    v85 = a9;
    sub_22C26D134(a1, a2, a4);
    v83 = v28;
    v30 = v29;
    v31 = 0;
    v33 = v32 >> 1;
    v84 = MEMORY[0x277D84F90];
    v77 = v27;
    v78 = v22;
    v81 = (v22 + 32);
LABEL_3:
    v34 = (v27 + 56 * v30);
    while (v33 != v30)
    {
      if (v30 >= v33)
      {
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v35 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        goto LABEL_26;
      }

      v36 = v21;
      v37 = *(v34 + 3);
      v38 = *(v34 + 4);
      v39 = *(v34 + 6);
      v40 = *(v34 + 40);
      v41 = *(v34 + 2);
      v91 = *v34;
      v92 = v41;
      v93 = v37;
      v94 = v38;
      v95 = v40;
      v96 = v39;

      v42 = v90;
      sub_22BF5F7BC(v31, &v91, v86, v36);
      v90 = v42;
      if (v42)
      {

        swift_unknownObjectRelease();
        return;
      }

      v21 = v36;
      if (sub_22BE1AEA8(v36, 1, v89) != 1)
      {
        v43 = *v81;
        v44 = v79;
        v45 = v89;
        (*v81)(v79, v36, v89);
        v43(v82, v44, v45);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_22BE678C0(0, *(v84 + 16) + 1, 1, v84);
          v84 = v50;
        }

        v46 = v78;
        v48 = *(v84 + 16);
        v47 = *(v84 + 24);
        if (v48 >= v47 >> 1)
        {
          sub_22BE678C0(v47 > 1, v48 + 1, 1, v84);
          v84 = v51;
        }

        ++v30;
        v49 = v84;
        *(v84 + 16) = v48 + 1;
        v43((v49 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v48), v82, v89);
        v31 = v35;
        v27 = v77;
        goto LABEL_3;
      }

      sub_22BE233E8(v36, &qword_27D90B740, &qword_22C28ED18);
      ++v31;
      v34 = (v34 + 56);
      ++v30;
    }

    swift_unknownObjectRelease();
    v52 = v80;
    v53 = *(v80 + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport22ToolEmbeddingsDatabase_database);
    v54 = v90;
    sub_22C26E354();
    if (v54)
    {
    }

    else
    {

      if (v76)
      {
        v55 = *(v76 + 16);

        if (v55)
        {
          v56 = v75;
          sub_22C271B14();

          v57 = sub_22C272084();
          v58 = sub_22C273784();

          if (os_log_type_enabled(v57, v58))
          {
            v59 = swift_slowAlloc();
            v60 = swift_slowAlloc();
            v97 = v60;
            *v59 = 136315138;
            v61 = v52;
            v62 = *(v52 + 144);
            v63 = *(v61 + 152);
            sub_22BE1BD3C((v61 + 120), v62);
            v64 = v72;
            (*(v63 + 16))(v62, v63);
            v65 = *(v71 + 20);
            v66 = sub_22C26FDE4();
            v68 = v67;
            v69 = sub_22C26FDF4();
            (*(*(v69 - 8) + 8))(&v64[v65], v69);
            v70 = sub_22BE61C88(v66, v68, &v97);

            *(v59 + 4) = v70;
            _os_log_impl(&dword_22BE15000, v57, v58, "ToolEmbeddingToolDatabase: received cancellation request. Cancelling %s toolbox.", v59, 0xCu);
            sub_22BE26B64(v60);
            MEMORY[0x2318AD180](v60, -1, -1);
            MEMORY[0x2318AD180](v59, -1, -1);

            (*(v74 + 8))(v75, v73);
          }

          else
          {

            (*(v74 + 8))(v56, v73);
          }
        }

        else
        {
        }
      }
    }
  }
}

uint64_t sub_22BF5F7BC@<X0>(unint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v59 = a3;
  v60 = a1;
  v58 = a4;
  v6 = sub_22C2720A4();
  *&v57 = *(v6 - 8);
  v7 = *(v57 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22C273064();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = type metadata accessor for ToolboxDatabasePayload(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a2[2];
  v17 = *(a2 + 40);
  *v15 = a2[1];
  *(v15 + 1) = v16;
  v15[16] = v17;
  swift_storeEnumTagMultiPayload();

  v19 = MEMORY[0x2318ACA20](v18);
  if (qword_281079BC0 != -1)
  {
    swift_once();
  }

  sub_22BE29F88(&qword_2810799A0, type metadata accessor for ToolboxDatabasePayload);
  v20 = sub_22C26DC04();
  if (v4)
  {
    objc_autoreleasePoolPop(v19);
    return sub_22BF680B4();
  }

  v54 = v6;
  v23 = v20;
  v24 = v21;
  objc_autoreleasePoolPop(v19);
  v25 = sub_22C26DC34();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  sub_22C26DC24();
  sub_22C273054();
  v55 = v23;
  v56 = v24;
  v28 = sub_22C273044();
  v30 = v29;

  if (!v30)
  {
    sub_22C271AD4();
    v49 = sub_22C272084();
    v50 = sub_22C2737A4();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_22BE15000, v49, v50, "Could not convert tool definition representation to a json string", v51, 2u);
      MEMORY[0x2318AD180](v51, -1, -1);
    }

    (*(v57 + 8))(v9, v54);
    sub_22BF38764();
    swift_allocError();
    *v52 = 9;
    swift_willThrow();
    sub_22BE29DD4(v55, v56);
    return sub_22BF680B4();
  }

  sub_22BE5CE4C(&qword_27D90B748, &qword_22C28ED20);
  v31 = (sub_22BE5CE4C(&qword_27D90B750, &qword_22C28ED28) - 8);
  v32 = *(*v31 + 72);
  v33 = (*(*v31 + 80) + 32) & ~*(*v31 + 80);
  v34 = swift_allocObject();
  v57 = xmmword_22C275160;
  *(v34 + 16) = xmmword_22C275160;
  v35 = (v34 + v33 + v31[14]);
  sub_22C26E484();
  *v35 = v28;
  v35[1] = v30;
  v36 = *MEMORY[0x277D78288];
  v37 = sub_22C26E4D4();
  (*(*(v37 - 8) + 104))(v35, v36, v37);
  sub_22C26E494();
  sub_22BE29F88(&qword_28107F310, MEMORY[0x277D78248]);
  v38 = sub_22C272E84();
  v39 = a2[6];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v61 = v38;
  sub_22BF65E20(v39, sub_22BF67FC0, 0, isUniquelyReferenced_nonNull_native, &v61);
  v41 = *a2;
  sub_22BE5CE4C(&qword_27D90B718, &qword_22C28EC48);
  result = swift_allocObject();
  *(result + 16) = v57;
  if ((v60 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v59 + 16) > v60)
  {
    v42 = result;
    v43 = *(v59 + 8 * v60 + 32);

    v44 = sub_22C2734C4();
    v46 = v45;

    *(v42 + 32) = v44;
    *(v42 + 40) = v46;
    v47 = v58;
    sub_22C26E4E4();
    sub_22BF680B4();
    v48 = sub_22C26E504();
    return sub_22BE19DC4(v47, 0, 1, v48);
  }

  __break(1u);
  return result;
}

uint64_t sub_22BF5FDE0()
{
  sub_22BE183F0();
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport22ToolEmbeddingsDatabase_database);
  sub_22C26E374();
  sub_22BE1A26C();

  return v2();
}

uint64_t *sub_22BF5FE48()
{
  sub_22BF1CE1C((v0 + 2));
  sub_22BE26B64(v0 + 15);
  sub_22BE26B64(v0 + 20);
  v1 = v0[25];

  v2 = OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport22ToolEmbeddingsDatabase_databaseBaseURL;
  v3 = sub_22C26DF64();
  sub_22BE18524(v3);
  (*(v4 + 8))(v0 + v2);
  sub_22BE25F54();
  sub_22BF680B4();
  v5 = *(v0 + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport22ToolEmbeddingsDatabase_database);

  v6 = OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport22ToolEmbeddingsDatabase_signposter;
  v7 = sub_22C272024();
  sub_22BE18524(v7);
  (*(v8 + 8))(v0 + v6);
  v9 = *(v0 + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport22ToolEmbeddingsDatabase_accessToken);

  return v0;
}

uint64_t sub_22BF5FF24()
{
  sub_22BF5FE48();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_22BF5FF7C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x800000022C2D4B30 == a2;
  if (v3 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x75626972746E6F63 && a2 == 0xEC0000006E6F6974)
  {

    return 1;
  }

  else
  {
    v7 = sub_22C274014();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_22BF60050(char a1)
{
  if (a1)
  {
    return 0x75626972746E6F63;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_22BF60094()
{
  sub_22BE18378();
  v3 = v1 == 0x64496C6F6F74 && v2 == 0xE600000000000000;
  if (v3 || (sub_22BE3554C(), (sub_22C274014() & 1) != 0))
  {

    return 0;
  }

  else if (v1 == 0x75626972746E6F63 && v0 == 0xEC0000006E6F6974)
  {

    return 1;
  }

  else
  {
    sub_22BE3554C();
    v6 = sub_22C274014();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

void sub_22BF60148()
{
  sub_22BE19130();
  v3 = v2;
  v4 = sub_22BE5CE4C(&qword_27D90B7D0, &qword_22C28F160);
  v5 = sub_22BE179D8(v4);
  v61 = v6;
  v62 = v5;
  v8 = *(v7 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE1A174();
  v58 = v10;
  v11 = sub_22BE5CE4C(&qword_27D90B7D8, &qword_22C28F168);
  sub_22BE179D8(v11);
  v60 = v12;
  v14 = *(v13 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v15);
  sub_22BE1A174();
  sub_22BE183BC();
  v59 = sub_22C272CA4();
  v16 = sub_22BE179D8(v59);
  v64 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22BE17A44();
  v63 = v20;
  v21 = sub_22BE5CE4C(&qword_27D90B7E0, &qword_22C28F170);
  sub_22BE179D8(v21);
  v57 = v22;
  v24 = *(v23 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v25);
  sub_22BE234F4();
  v26 = type metadata accessor for ToolboxDatabasePayload(0);
  v27 = sub_22BE18000(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  sub_22BE179EC();
  v32 = (v31 - v30);
  v33 = sub_22BE5CE4C(&qword_27D90B7E8, &qword_22C28F178);
  sub_22BE179D8(v33);
  v35 = *(v34 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v36);
  sub_22BE1AB80();
  v37 = *(v3 + 24);
  v38 = *(v3 + 32);
  v39 = sub_22BE18944();
  sub_22BE26950(v39, v40);
  sub_22BF69868();
  sub_22BE23550();
  sub_22C274234();
  sub_22BE37584();
  sub_22BF6805C();
  sub_22BE36658();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v47 = *v32;
    v48 = v32[1];
    v49 = *(v32 + 16);
    sub_22BF699B8();
    sub_22C273EE4();
    sub_22BE1A6BC();
    sub_22C273F54();

    if (!v0)
    {
      sub_22BF69A0C();
      sub_22C273FA4();
    }

    (*(v57 + 8))(v1, v21);
    goto LABEL_14;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v51 = *v32;
    v50 = v32[1];
    v52 = *(v32 + 16);
    sub_22BF698BC();
    sub_22C273EE4();
    sub_22BE291B0();
    sub_22C273F54();

    if (!v0)
    {
      sub_22BF69A0C();
      sub_22C273FA4();
    }

    (*(v61 + 8))(v58, v62);
LABEL_14:
    v54 = sub_22BE2399C();
    v56 = v33;
    goto LABEL_15;
  }

  v65 = *(v32 + *(sub_22BE5CE4C(&qword_27D90B720, &qword_22C28EC50) + 48));
  (*(v64 + 32))(v63, v32, v59);
  sub_22BF69964();
  sub_22C273EE4();
  sub_22BE19274();
  sub_22BE29F88(v42, v43);
  sub_22C273FA4();
  if (v0)
  {
    v44 = *(v60 + 8);
  }

  else
  {
    sub_22BF69A0C();
    sub_22C273FA4();
    v53 = *(v60 + 8);
  }

  v45 = sub_22BE37B20();
  v46(v45);
  (*(v64 + 8))(v63, v59);
  v54 = sub_22BE2399C();
  v56 = v33;
LABEL_15:
  v55(v54, v56);
  sub_22BE35D48();
  sub_22BE18478();
}

void sub_22BF60728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12)
{
  sub_22BE19130();
  v16 = v15;
  v92 = sub_22BE5CE4C(&qword_27D90B7B0, &qword_22C28F138);
  sub_22BE179D8(v92);
  v89 = v17;
  v19 = *(v18 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v20);
  sub_22BE1A174();
  v91 = sub_22BE5CE4C(&qword_27D90B7B8, &qword_22C28F140);
  sub_22BE179D8(v91);
  v22 = *(v21 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v23);
  sub_22BE1A174();
  v24 = sub_22BE5CE4C(&qword_27D90B7C0, &qword_22C28F148);
  sub_22BE179D8(v24);
  v90 = v25;
  v27 = *(v26 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v28);
  sub_22BE1A174();
  v95 = sub_22BE5CE4C(&qword_27D90B7C8, &unk_22C28F150);
  sub_22BE179D8(v95);
  v93 = v29;
  v31 = *(v30 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v32);
  sub_22BE1AB80();
  v33 = type metadata accessor for ToolboxDatabasePayload(0);
  v34 = sub_22BE18000(v33);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  sub_22BE183AC();
  sub_22BE27A50();
  MEMORY[0x28223BE20](v37);
  sub_22BE486EC();
  MEMORY[0x28223BE20](v38);
  sub_22BE2017C();
  MEMORY[0x28223BE20](v39);
  sub_22BE324EC();
  v40 = v16[4];
  sub_22BE26950(v16, v16[3]);
  sub_22BF69868();
  sub_22BE23550();
  sub_22C274214();
  if (v13)
  {
    goto LABEL_9;
  }

  v87 = v14;
  v88 = v12;
  v41 = sub_22C273ED4();
  sub_22BE7C5C4(v41, 0);
  if (v43 == v42 >> 1)
  {
LABEL_8:
    v55 = sub_22C273B34();
    sub_22BE196B4();
    v57 = v56;
    v58 = *(sub_22BE5CE4C(&qword_27D907968, &qword_22C2768D0) + 48);
    *v57 = v33;
    sub_22C273DF4();
    sub_22BE1B198();
    v59 = *MEMORY[0x277D84160];
    sub_22BE1BC24(v55);
    (*(v60 + 104))(v57);
    swift_willThrow();
    swift_unknownObjectRelease();
    v61 = sub_22BE25034();
    v62(v61);
LABEL_9:
    v63 = v16;
LABEL_10:
    sub_22BE26B64(v63);
    sub_22BE18478();
    return;
  }

  sub_22BE38A18();
  if (v45 < (v46 >> 1))
  {
    v49 = *(v48 + v47);
    v50 = sub_22BE39FEC(v44, v46 >> 1, v45, v46, v47);
    sub_22BE7C5C0(v50);
    v52 = v51;
    v54 = v53;
    swift_unknownObjectRelease();
    if (v52 == v54 >> 1)
    {
      if (v49)
      {
        if (v49 == 1)
        {
          sub_22BF69964();
          sub_22C273DE4();
          sub_22C272CA4();
          sub_22BE19274();
          sub_22BE29F88(v64, v65);
          sub_22C273EB4();
          v94 = *(sub_22BE5CE4C(&qword_27D90B720, &qword_22C28EC50) + 48);
          sub_22BF69910();
          sub_22C273EB4();
          swift_unknownObjectRelease();
          v72 = sub_22BE25034();
          v73(v72);
          v74 = *(v93 + 8);
          v75 = sub_22BE1B62C();
          v76(v75);
          swift_storeEnumTagMultiPayload();
          sub_22BE185FC();
LABEL_14:
          sub_22BF68168();
          sub_22BE185FC();
          sub_22BF68168();
          v63 = v16;
          goto LABEL_10;
        }

        sub_22BF698BC();
        sub_22BF6AB8C();
        sub_22BE22B1C();
        v66 = sub_22C273E64();
        v71 = v70;
        v96 = v66;
        sub_22BF69910();
        sub_22BF6AC08();
        sub_22C273EB4();
        swift_unknownObjectRelease();
        v82 = *(v89 + 8);
        v83 = sub_22BE33BE8();
        v84(v83);
        v85 = sub_22BE2593C();
        v86(v85);
        *v88 = v96;
        *(v88 + 8) = v71;
        *(v88 + 16) = a12;
        sub_22BE336E8();
      }

      else
      {
        sub_22BF699B8();
        sub_22BF6AB8C();
        sub_22BE22B1C();
        v67 = sub_22C273E64();
        v69 = v68;
        sub_22BF69910();
        sub_22BF6AC08();
        sub_22C273EB4();
        swift_unknownObjectRelease();
        v77 = *(v90 + 8);
        v78 = sub_22BE33BE8();
        v79(v78);
        v80 = sub_22BE2593C();
        v81(v80);
        *v87 = v67;
        *(v87 + 8) = v69;
        *(v87 + 16) = v97;
      }

      swift_storeEnumTagMultiPayload();
      sub_22BE185FC();
      goto LABEL_14;
    }

    goto LABEL_8;
  }

  __break(1u);
}

uint64_t sub_22BF60FA4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x800000022C2D4B30 == a2;
  if (v3 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65706F6373 && a2 == 0xE500000000000000;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x65726F6373 && a2 == 0xE500000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_22C274014();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_22BF610BC(char a1)
{
  if (!a1)
  {
    return 0xD000000000000011;
  }

  if (a1 == 1)
  {
    return 0x65706F6373;
  }

  return 0x65726F6373;
}

uint64_t sub_22BF61110(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64496C6F6F74 && a2 == 0xE600000000000000;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65726F6373 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_22C274014();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_22BF611D0(char a1)
{
  if (a1)
  {
    return 0x65726F6373;
  }

  else
  {
    return 0x64496C6F6F74;
  }
}

uint64_t sub_22BF61200()
{
  sub_22BE18378();
  v3 = v1 == sub_22BE3C478() && v0 == v2;
  if (v3 || (sub_22BE3554C(), (sub_22C274014() & 1) != 0))
  {

    return 0;
  }

  else
  {
    v5 = v1 == 0x6E61747369737361 && v0 == 0xEF616D6568635374;
    if (v5 || (sub_22BE3554C(), (sub_22C274014() & 1) != 0))
    {

      return 1;
    }

    else if (v1 == 0x6341746E65696C63 && v0 == 0xEC0000006E6F6974)
    {

      return 2;
    }

    else
    {
      sub_22BE3554C();
      v7 = sub_22C274014();

      if (v7)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_22BF612EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64496C6F6F74 && a2 == 0xE600000000000000;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65706F6373 && a2 == 0xE500000000000000;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x65726F6373 && a2 == 0xE500000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_22C274014();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_22BF613F8(char a1)
{
  if (!a1)
  {
    return 0x64496C6F6F74;
  }

  if (a1 == 1)
  {
    return 0x65706F6373;
  }

  return 0x65726F6373;
}

void sub_22BF61444(uint64_t a1)
{
  v2 = sub_22BE5CE4C(&qword_27D90B868, &qword_22C28F1D0);
  v3 = sub_22BE179D8(v2);
  v89 = v4;
  v90 = v3;
  v6 = *(v5 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  sub_22BE1A174();
  v88[1] = v8;
  v9 = sub_22BE5CE4C(&qword_27D90B870, &qword_22C28F1D8);
  v10 = sub_22BE179D8(v9);
  v92 = v11;
  v93 = v10;
  v13 = *(v12 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v14);
  sub_22BE1A174();
  v91 = v15;
  sub_22BE183BC();
  v16 = sub_22C272CA4();
  v17 = sub_22BE179D8(v16);
  v94 = v18;
  v95 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22BE17A44();
  v96 = v21;
  v22 = sub_22BE5CE4C(&qword_27D90B878, &qword_22C28F1E0);
  sub_22BE179D8(v22);
  v88[0] = v23;
  v25 = *(v24 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v26);
  sub_22BE1B01C();
  v27 = type metadata accessor for ToolboxSearchOutput(0);
  v28 = sub_22BE18000(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  sub_22BE179EC();
  v33 = (v32 - v31);
  v34 = sub_22BE5CE4C(&qword_27D90B880, &qword_22C28F1E8);
  v99 = sub_22BE179D8(v34);
  v100 = v35;
  v37 = *(v36 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v38);
  v40 = v88 - v39;
  v42 = *(a1 + 24);
  v41 = *(a1 + 32);
  v43 = sub_22BE336E8();
  sub_22BE26950(v43, v44);
  sub_22BF69B5C();
  v45 = v40;
  sub_22C274234();
  sub_22BF6805C();
  sub_22BE37B20();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v62 = *v33;
    v63 = v33[1];
    LODWORD(v97) = *(v33 + 16);
    v64 = *(v33 + 5);
    v105 = 0;
    sub_22BF69C58();
    sub_22C273EE4();
    v104 = 0;
    sub_22BE260B8();
    v65 = v98;
    sub_22C273F54();

    if (v65)
    {
      v66 = sub_22BE39058();
      v67(v66, v22);
    }

    else
    {
      v103 = v97;
      v102 = 1;
      sub_22BF40E6C();
      sub_22C273F34();
      v73 = v88[0];
      v101 = 2;
      sub_22C273F84();
      v74 = *(v73 + 8);
      v75 = sub_22BE23108();
      v76(v75);
    }

    v77 = *(v100 + 8);
    v78 = sub_22BE1AEE4();
    goto LABEL_15;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v47 = sub_22BE5CE4C(&qword_27D90B6F0, &qword_22C28EC20);
    LODWORD(v97) = *(v33 + *(v47 + 48));
    v48 = *(v33 + *(v47 + 64));
    v50 = v94;
    v49 = v95;
    v51 = *(v94 + 32);
    v52 = v96;
    v53 = sub_22BE426E8();
    v54(v53);
    v110 = 1;
    sub_22BF69C04();
    sub_22C273EE4();
    v109 = 0;
    sub_22BE19274();
    sub_22BE29F88(v55, v56);
    v57 = v93;
    v58 = v98;
    sub_22C273FA4();
    if (v58)
    {
      v59 = *(v92 + 8);
      v60 = sub_22BE41FB4();
      v61(v60);
      (*(v50 + 8))(v52, v49);
    }

    else
    {
      v108 = v97;
      v107 = 1;
      sub_22BF40E6C();
      sub_22C273F34();
      v106 = 2;
      sub_22C273F84();
      v84 = v96;
      v85 = sub_22BE1A194();
      v86(v85, v57);
      (*(v50 + 8))(v84, v49);
    }

    v87 = *(v100 + 8);
    v78 = sub_22BE18240();
LABEL_15:
    v80(v78, v79);
    goto LABEL_16;
  }

  v68 = *v33;
  v69 = v33[1];
  v70 = *(v33 + 4);
  v113 = 2;
  sub_22BF69BB0();
  v71 = v99;
  sub_22C273EE4();
  v112 = 0;
  sub_22BE194F8();
  v72 = v98;
  sub_22C273F54();

  if (!v72)
  {
    v111 = 1;
    sub_22BE22B1C();
    sub_22C273F84();
  }

  v81 = *(v89 + 8);
  v82 = sub_22BE33BE8();
  v83(v82);
  (*(v100 + 8))(v45, v71);
LABEL_16:
  sub_22BE35D48();
}

void sub_22BF61AE8(uint64_t *a1)
{
  v82 = sub_22BE5CE4C(&qword_27D90B828, &qword_22C28F1B0);
  sub_22BE179D8(v82);
  v6 = *(v5 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  sub_22BE1A174();
  v86 = sub_22BE5CE4C(&qword_27D90B830, &qword_22C28F1B8);
  sub_22BE179D8(v86);
  v9 = *(v8 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE1A174();
  v81 = sub_22BE5CE4C(&qword_27D90B838, &qword_22C28F1C0);
  sub_22BE179D8(v81);
  v12 = *(v11 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v13);
  sub_22BE1A174();
  v85 = sub_22BE5CE4C(&qword_27D90B840, &qword_22C28F1C8);
  sub_22BE179D8(v85);
  v84 = v14;
  v16 = *(v15 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v17);
  sub_22BE1AB80();
  v18 = type metadata accessor for ToolboxSearchOutput(0);
  v19 = sub_22BE18000(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22BE183AC();
  sub_22BE27A50();
  MEMORY[0x28223BE20](v22);
  sub_22BE1AF10();
  MEMORY[0x28223BE20](v23);
  sub_22BE23858();
  MEMORY[0x28223BE20](v24);
  sub_22BE324EC();
  v25 = a1[4];
  sub_22BE26950(a1, a1[3]);
  sub_22BF69B5C();
  sub_22BE23550();
  sub_22C274214();
  if (v89)
  {
    goto LABEL_10;
  }

  v80 = v2;
  v90 = v18;
  v26 = v85;
  v27 = sub_22C273ED4();
  sub_22BE7C5C4(v27, 0);
  if (v29 == v28 >> 1)
  {
LABEL_9:
    v41 = sub_22C273B34();
    sub_22BE196B4();
    v43 = v42;
    v44 = *(sub_22BE5CE4C(&qword_27D907968, &qword_22C2768D0) + 48);
    *v43 = v90;
    sub_22C273DF4();
    sub_22BE1B198();
    v45 = *MEMORY[0x277D84160];
    sub_22BE1BC24(v41);
    (*(v46 + 104))(v43);
    swift_willThrow();
    swift_unknownObjectRelease();
    v47 = sub_22BE1A194();
    v48(v47, v26);
LABEL_10:
    sub_22BE26B64(a1);
LABEL_11:
    sub_22BE35D48();
    return;
  }

  sub_22BE38A18();
  if (v31 < (v32 >> 1))
  {
    v35 = *(v34 + v33);
    v36 = sub_22BE39FEC(v30, v32 >> 1, v31, v32, v33);
    sub_22BE7C5C0(v36);
    v38 = v37;
    v40 = v39;
    swift_unknownObjectRelease();
    if (v38 == v40 >> 1)
    {
      if (v35)
      {
        if (v35 != 1)
        {
          sub_22BF69BB0();
          sub_22BE41DB4();
          sub_22BE22B1C();
          v52 = sub_22C273E64();
          v57 = v56;
          v88 = v52;
          sub_22C273E94();
          v59 = v58;
          swift_unknownObjectRelease();
          v60 = sub_22BE1A194();
          v61(v60, v82);
          v62 = sub_22BE410A0();
          v63(v62, v85);
          *v1 = v88;
          *(v1 + 8) = v57;
          *(v1 + 16) = v59;
          sub_22BE1A6BC();
          swift_storeEnumTagMultiPayload();
          sub_22BE1B3E4();
          sub_22BF68168();
          v64 = a1;
LABEL_15:
          sub_22BE1B3E4();
          sub_22BE1B73C();
          sub_22BF68168();
          sub_22BE26B64(v64);
          goto LABEL_11;
        }

        sub_22BF69C04();
        sub_22BE41DB4();
        sub_22C272CA4();
        sub_22BE19274();
        sub_22BE29F88(v49, v50);
        sub_22C273EB4();
        v83 = sub_22BE5CE4C(&qword_27D90B6F0, &qword_22C28EC20);
        v53 = *(v83 + 48);
        sub_22BF40F04();
        sub_22C273E44();
        sub_22C273E94();
        v66 = v65;
        swift_unknownObjectRelease();
        v67 = *(v83 + 64);
        v68 = sub_22BF6AA14();
        v69(v68);
        v70 = *(v84 + 8);
        v71 = sub_22BE291B0();
        v72(v71);
        *(v80 + v67) = v66;
        swift_storeEnumTagMultiPayload();
        sub_22BE1B3E4();
      }

      else
      {
        sub_22BF69C58();
        sub_22BE41DB4();
        v51 = sub_22C273E64();
        v55 = v54;
        v87 = v51;
        sub_22BF40F04();
        sub_22C273E44();
        sub_22C273E94();
        v74 = v73;
        swift_unknownObjectRelease();
        v75 = sub_22BE25034();
        v76(v75);
        v77 = *(v84 + 8);
        v78 = sub_22BE1AB74();
        v79(v78);
        *v3 = v87;
        *(v3 + 8) = v55;
        *(v3 + 16) = v91;
        *(v3 + 20) = v74;
        swift_storeEnumTagMultiPayload();
        sub_22BE1B3E4();
      }

      sub_22BF68168();
      v64 = a1;
      goto LABEL_15;
    }

    v26 = v85;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_22BF624B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6576697469736F70 && a2 == 0xE800000000000000;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657669746167656ELL && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_22C274014();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_22BF62584(char a1)
{
  if (a1)
  {
    return 0x657669746167656ELL;
  }

  else
  {
    return 0x6576697469736F70;
  }
}

void sub_22BF625B4()
{
  sub_22BE19130();
  v33 = v0;
  v2 = v1;
  v3 = sub_22BE5CE4C(&qword_27D90B810, &qword_22C28F198);
  v4 = sub_22BE179D8(v3);
  v32[1] = v5;
  v32[2] = v4;
  v7 = *(v6 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE1B01C();
  v32[0] = sub_22BE5CE4C(&qword_27D90B818, &qword_22C28F1A0);
  sub_22BE179D8(v32[0]);
  v10 = v9;
  v12 = *(v11 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v13);
  v15 = v32 - v14;
  v16 = sub_22BE5CE4C(&qword_27D90B820, &qword_22C28F1A8);
  sub_22BE179D8(v16);
  v18 = v17;
  v20 = *(v19 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v21);
  v23 = *(v2 + 24);
  v22 = *(v2 + 32);
  v24 = sub_22BE1B73C();
  sub_22BE26950(v24, v25);
  sub_22BF69A60();
  sub_22C274234();
  v26 = (v18 + 8);
  if (v33)
  {
    sub_22BF69AB4();
    sub_22BF6AC08();
    sub_22C273EE4();
    v27 = sub_22BE39058();
    v28(v27);
  }

  else
  {
    sub_22BF69B08();
    sub_22BF6AC08();
    sub_22C273EE4();
    (*(v10 + 8))(v15, v32[0]);
  }

  v29 = *v26;
  v30 = sub_22BF6AC14();
  v31(v30);
  sub_22BE18478();
}

void sub_22BF62810()
{
  sub_22BE19130();
  v59 = v0;
  v2 = v1;
  v58 = sub_22BE5CE4C(&qword_27D90B7F0, &qword_22C28F180);
  sub_22BE179D8(v58);
  v56 = v3;
  v5 = *(v4 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  v7 = sub_22BE5CE4C(&qword_27D90B7F8, &qword_22C28F188);
  sub_22BE179D8(v7);
  v55 = v8;
  v10 = *(v9 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  v13 = &v52 - v12;
  v14 = sub_22BE5CE4C(&qword_27D90B800, &qword_22C28F190);
  sub_22BE179D8(v14);
  v57 = v15;
  v17 = *(v16 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v18);
  sub_22BE1B01C();
  v19 = v2[4];
  sub_22BE26950(v2, v2[3]);
  sub_22BF69A60();
  v20 = v59;
  sub_22C274214();
  if (v20)
  {
    goto LABEL_8;
  }

  v53 = v7;
  v54 = v13;
  v59 = v2;
  v21 = sub_22C273ED4();
  sub_22BE7C5C4(v21, 0);
  if (v23 == v22 >> 1)
  {
LABEL_7:
    v36 = sub_22C273B34();
    sub_22BE196B4();
    v38 = v37;
    v39 = *(sub_22BE5CE4C(&qword_27D907968, &qword_22C2768D0) + 48);
    *v38 = &type metadata for ToolBoxIndexedEmeddingContribution;
    sub_22C273DF4();
    sub_22BE1B198();
    v40 = *MEMORY[0x277D84160];
    sub_22BE1BC24(v36);
    (*(v41 + 104))(v38);
    swift_willThrow();
    swift_unknownObjectRelease();
    v42 = sub_22BE39058();
    v43(v42, v14);
    v2 = v59;
LABEL_8:
    sub_22BE26B64(v2);
LABEL_9:
    sub_22BE18478();
    return;
  }

  sub_22BE38A18();
  v52 = 0;
  if (v25 < (v26 >> 1))
  {
    v29 = *(v28 + v27);
    v30 = sub_22BE39FEC(v24, v26 >> 1, v25, v26, v27);
    sub_22BE7C5C0(v30);
    v32 = v31;
    v34 = v33;
    swift_unknownObjectRelease();
    if (v32 == v34 >> 1)
    {
      if (v29)
      {
        LODWORD(v55) = v29;
        sub_22BF69AB4();
        sub_22BF6ABB0();
        v35 = v57;
        swift_unknownObjectRelease();
        v46 = sub_22BE2593C();
        v47(v46);
        v48 = *(v35 + 8);
      }

      else
      {
        sub_22BF69B08();
        v44 = v54;
        sub_22BF6ABB0();
        v45 = v57;
        swift_unknownObjectRelease();
        (*(v55 + 8))(v44, v53);
        v51 = *(v45 + 8);
      }

      v49 = sub_22BE23108();
      v50(v49);
      sub_22BE26B64(v59);
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_22BF62C58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BF5FF7C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BF62C80(uint64_t a1)
{
  v2 = sub_22BF69964();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BF62CBC(uint64_t a1)
{
  v2 = sub_22BF69964();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BF62CF8(uint64_t a1)
{
  v2 = sub_22BF698BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BF62D34(uint64_t a1)
{
  v2 = sub_22BF698BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BF62D70(uint64_t a1)
{
  v2 = sub_22BF69868();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BF62DAC(uint64_t a1)
{
  v2 = sub_22BF69868();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BF62DE8(uint64_t a1)
{
  v2 = sub_22BF699B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BF62E24(uint64_t a1)
{
  v2 = sub_22BF699B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BF62E98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BF60FA4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BF62EC0(uint64_t a1)
{
  v2 = sub_22BF69C04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BF62EFC(uint64_t a1)
{
  v2 = sub_22BF69C04();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BF62F40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BF61110(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BF62F68(uint64_t a1)
{
  v2 = sub_22BF69BB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BF62FA4(uint64_t a1)
{
  v2 = sub_22BF69BB0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BF62FE0(uint64_t a1)
{
  v2 = sub_22BF69B5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BF6301C(uint64_t a1)
{
  v2 = sub_22BF69B5C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BF63060@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BF612EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BF63088(uint64_t a1)
{
  v2 = sub_22BF69C58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BF630C4(uint64_t a1)
{
  v2 = sub_22BF69C58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BF63138@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BF624B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BF63160(uint64_t a1)
{
  v2 = sub_22BF69A60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BF6319C(uint64_t a1)
{
  v2 = sub_22BF69A60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BF631D8(uint64_t a1)
{
  v2 = sub_22BF69AB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BF63214(uint64_t a1)
{
  v2 = sub_22BF69AB4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BF63250(uint64_t a1)
{
  v2 = sub_22BF69B08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BF6328C(uint64_t a1)
{
  v2 = sub_22BF69B08();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_22BF632C8(_BYTE *a1@<X8>)
{
  sub_22BF62810();
  if (!v1)
  {
    *a1 = v3 & 1;
  }
}

uint64_t sub_22BF63324(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C61626F6C67 && a2 == 0xE600000000000000;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C61636F6CLL && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_22C274014();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_22BF633E4(char a1)
{
  if (a1)
  {
    return 0x6C61636F6CLL;
  }

  else
  {
    return 0x6C61626F6C67;
  }
}

uint64_t sub_22BF6341C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BF63324(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BF63444(uint64_t a1)
{
  v2 = sub_22BF66D0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BF63480(uint64_t a1)
{
  v2 = sub_22BF66D0C();

  return MEMORY[0x2821FE720](a1, v2);
}

void ToolBoxAllowList.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  v12 = v11;
  v14 = v13;
  v15 = sub_22BE5CE4C(&qword_27D90B668, &qword_22C28E6C0);
  sub_22BE179D8(v15);
  v17 = v16;
  v19 = *(v18 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v20);
  sub_22BE234F4();
  v21 = v12[3];
  v22 = v12[4];
  v23 = sub_22BE1A6BC();
  sub_22BE26950(v23, v24);
  sub_22BF66D0C();
  sub_22BE33A2C();
  if (v10)
  {
    sub_22BE26B64(v12);
  }

  else
  {
    sub_22BE5CE4C(&qword_27D90B670, &qword_22C28E6C8);
    sub_22BF6AA28(&qword_28106DB78);
    sub_22BE376D8();
    sub_22BE376D8();
    v25 = *(v17 + 8);
    v26 = sub_22BE18240();
    v27(v26);
    *v14 = a10;
    v14[1] = a10;

    sub_22BE26B64(v12);
  }

  sub_22BE19650();
  sub_22BE18478();
}

uint64_t sub_22BF6365C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449656C646E7562 && a2 == 0xE900000000000073;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7364496C6F6F74 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_22C274014();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_22BF6372C(char a1)
{
  if (a1)
  {
    return 0x7364496C6F6F74;
  }

  else
  {
    return 0x6449656C646E7562;
  }
}

uint64_t sub_22BF63788@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BF6365C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BF637B0(uint64_t a1)
{
  v2 = sub_22BF66D60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BF637EC(uint64_t a1)
{
  v2 = sub_22BF66D60();

  return MEMORY[0x2821FE720](a1, v2);
}

void ToolDenyList.encode(to:)()
{
  sub_22BE19130();
  v2 = v1;
  v3 = sub_22BE5CE4C(&qword_27D90B678, &qword_22C28E6D0);
  sub_22BE179D8(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE1AB80();
  v9 = *v0;
  v18 = v0[1];
  v10 = *(v2 + 24);
  v11 = *(v2 + 32);
  v12 = sub_22BE1AEE4();
  sub_22BE26950(v12, v13);
  v14 = sub_22BF66D60();

  sub_22BE23550();
  sub_22C274234();
  sub_22BE5CE4C(&qword_27D90B670, &qword_22C28E6C8);
  sub_22BF66DB4(&qword_27D90B680);
  sub_22BE29390();

  if (!v14)
  {
    sub_22BE5CE4C(&qword_27D90B688, &qword_22C28E6D8);
    sub_22BF66E74(&qword_27D90B690, sub_22BF66E20);
    sub_22BE29390();
  }

  v15 = *(v5 + 8);
  v16 = sub_22BE1AB74();
  v17(v16);
  sub_22BE35D48();
  sub_22BE18478();
}

void ToolDenyList.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  v12 = v11;
  v14 = v13;
  v15 = sub_22BE5CE4C(&qword_27D90B6A0, &qword_22C28E6E0);
  sub_22BE179D8(v15);
  v17 = v16;
  v19 = *(v18 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v20);
  sub_22BE234F4();
  v21 = v12[3];
  v22 = v12[4];
  v23 = sub_22BE1A6BC();
  sub_22BE26950(v23, v24);
  sub_22BF66D60();
  sub_22BE33A2C();
  if (v10)
  {
    sub_22BE26B64(v12);
  }

  else
  {
    sub_22BE5CE4C(&qword_27D90B670, &qword_22C28E6C8);
    sub_22BF6AA28(&qword_28106DB78);
    sub_22BE204D4();
    sub_22BE5CE4C(&qword_27D90B688, &qword_22C28E6D8);
    sub_22BF66E74(&qword_28106DB88, sub_22BF66EEC);
    sub_22BE204D4();
    v25 = *(v17 + 8);
    v26 = sub_22BE18240();
    v27(v26);
    *v14 = a10;
    v14[1] = a10;

    sub_22BE26B64(v12);
  }

  sub_22BE19650();
  sub_22BE18478();
}

uint64_t sub_22BF63BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = a1 == a5 && a2 == a6;
  if (v12 || (v13 = sub_22C274014(), result = 0, (v13 & 1) != 0))
  {
    if (a3 == a7 && a4 == a8)
    {
      return 1;
    }

    else
    {
      sub_22BE3554C();

      return sub_22C274014();
    }
  }

  return result;
}

uint64_t sub_22BF63C5C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64496C6F6F74 && a2 == 0xE600000000000000;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_22C274014();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_22BF63D20(char a1)
{
  if (a1)
  {
    return 0x6449656C646E7562;
  }

  else
  {
    return 0x64496C6F6F74;
  }
}

void sub_22BF63D54()
{
  sub_22BE19130();
  v2 = v1;
  v3 = sub_22BE5CE4C(&qword_27D90B6B8, &qword_22C28EB68);
  sub_22BE179D8(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE1B01C();
  v10 = *(v2 + 24);
  v9 = *(v2 + 32);
  v11 = sub_22BE261AC();
  sub_22BE26950(v11, v12);
  sub_22BF67478();
  sub_22C274234();
  sub_22BE180C8();
  sub_22C273F54();
  if (!v0)
  {
    sub_22C273F54();
  }

  v13 = *(v5 + 8);
  v14 = sub_22BE291B0();
  v15(v14);
  sub_22BE18478();
}

uint64_t sub_22BF63E94()
{
  sub_22C272F44();
  sub_22BE22C8C();

  return sub_22C272F44();
}

uint64_t sub_22BF63EE0()
{
  sub_22C274154();
  sub_22C272F44();
  sub_22BE22C8C();
  sub_22C272F44();
  return sub_22C2741A4();
}

void sub_22BF63F4C()
{
  sub_22BE19130();
  v2 = v1;
  v3 = sub_22BE5CE4C(&qword_27D90B6C0, &unk_22C28EB70);
  sub_22BE179D8(v3);
  v5 = *(v4 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE1B01C();
  v7 = v2[3];
  v8 = v2[4];
  v9 = sub_22BE1B62C();
  sub_22BE26950(v9, v10);
  sub_22BF67478();
  sub_22C274214();
  if (!v0)
  {
    sub_22C273E64();
    sub_22C273E64();
    v11 = sub_22BE17B24();
    v12(v11);
  }

  sub_22BE26B64(v2);
  sub_22BE196A8();
  sub_22BE19650();
  sub_22BE18478();
}

uint64_t sub_22BF64118@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BF63C5C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BF64140(uint64_t a1)
{
  v2 = sub_22BF67478();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BF6417C(uint64_t a1)
{
  v2 = sub_22BF67478();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_22BF641B8(void *a1@<X8>)
{
  sub_22BF63F4C();
  if (!v1)
  {
    *a1 = v3;
    a1[1] = v4;
    a1[2] = v5;
    a1[3] = v6;
  }
}

void sub_22BF641E8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_22BF63D54();
}

uint64_t sub_22BF64208()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  return sub_22BF63EE0();
}

uint64_t sub_22BF64214()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  return sub_22BF63E94();
}

uint64_t sub_22BF64220()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_22C274154();
  sub_22C272F44();
  sub_22C272F44();
  return sub_22C2741A4();
}

uint64_t sub_22BF642A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_22BE5CE4C(&qword_27D90B730, &qword_22C28ECF8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, a1, v7);
  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;
  (*(v8 + 32))(v13 + v12, v11, v7);

  sub_22C270284();
}

uint64_t sub_22BF64404(int *a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 24) = a3;
  v7 = (a1 + *a1);
  v4 = a1[1];
  v5 = swift_task_alloc();
  *(v3 + 32) = v5;
  *v5 = v3;
  v5[1] = sub_22BF644F0;

  return v7();
}

uint64_t sub_22BF644F0()
{
  sub_22BE183F0();
  sub_22BE190F0();
  sub_22BE232FC();
  *v3 = v2;
  v5 = *(v4 + 32);
  v6 = *v1;
  sub_22BE18C2C();
  *v7 = v6;
  *(v8 + 40) = v0;

  sub_22BE201FC();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22BF645E8()
{
  sub_22BE183F0();
  v1 = *(v0 + 24);
  sub_22BE5CE4C(&qword_27D90B730, &qword_22C28ECF8);
  sub_22C2735F4();
  sub_22BE17A94();

  return v2();
}

uint64_t sub_22BF64658()
{
  sub_22BE183F0();
  v1 = v0[3];
  v0[2] = v0[5];
  sub_22BE5CE4C(&qword_27D90B730, &qword_22C28ECF8);
  sub_22C2735E4();
  sub_22BE17A94();

  return v2();
}

id sub_22BF646D8()
{
  v7[1] = *MEMORY[0x277D85DE8];
  v1 = sub_22C272E44();

  v7[0] = 0;
  v2 = [v0 initWithDictionary:v1 error:v7];

  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    sub_22C26DE84();

    swift_willThrow();
  }

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

id sub_22BF647C0(uint64_t a1, uint64_t a2)
{
  v10[1] = *MEMORY[0x277D85DE8];
  sub_22BE45D84(0, &qword_28106DAE8, 0x277CCABB0);
  v4 = sub_22C273484();

  v10[0] = 0;
  v5 = [v2 initWithShape:v4 dataType:a2 error:v10];

  if (v5)
  {
    v6 = v10[0];
  }

  else
  {
    v7 = v10[0];
    sub_22C26DE84();

    swift_willThrow();
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t sub_22BF648BC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_22C273FC4();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for ToolBoxToolSearchResult(0);
        v6 = sub_22C273534();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for ToolBoxToolSearchResult(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_22BF64C3C(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_22BF649EC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_22BF649EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for ToolBoxToolSearchResult(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v28 - v12;
  result = MEMORY[0x28223BE20](v11);
  v17 = &v28 - v16;
  v30 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v35 = v18;
    v29 = v19;
    v23 = v18 + v19 * a3;
    while (2)
    {
      v33 = v20;
      v34 = a3;
      v31 = v23;
      v32 = v22;
      do
      {
        sub_22BF6805C();
        sub_22BF6805C();
        v24 = *(v8 + 20);
        v25 = *&v17[v24];
        v26 = *&v13[v24];
        sub_22BF680B4();
        result = sub_22BF680B4();
        if (v26 >= v25)
        {
          break;
        }

        if (!v35)
        {
          __break(1u);
          return result;
        }

        sub_22BF68168();
        swift_arrayInitWithTakeFrontToBack();
        result = sub_22BF68168();
        v20 += v21;
        v23 += v21;
      }

      while (!__CFADD__(v22++, 1));
      a3 = v34 + 1;
      v20 = v33 + v29;
      v22 = v32 - 1;
      v23 = v31 + v29;
      if (v34 + 1 != v30)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_22BF64C3C(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v115 = a1;
  v9 = type metadata accessor for ToolBoxToolSearchResult(0);
  v122 = *(v9 - 8);
  v10 = *(v122 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v118 = &v111 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v126 = &v111 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v127 = &v111 - v16;
  result = MEMORY[0x28223BE20](v15);
  v19 = &v111 - v18;
  v123 = a3;
  v20 = a3[1];
  if (v20 < 1)
  {
    v22 = MEMORY[0x277D84F90];
LABEL_100:
    v5 = *v115;
    if (!*v115)
    {
      goto LABEL_141;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_102:
      v105 = (v22 + 16);
      v106 = *(v22 + 16);
      for (i = v22; v106 >= 2; v22 = i)
      {
        if (!*v123)
        {
          goto LABEL_138;
        }

        v107 = (v22 + 16 * v106);
        v22 = *v107;
        v108 = &v105[2 * v106];
        v109 = *(v108 + 1);
        sub_22BF65594(*v123 + *(v122 + 72) * *v107, *v123 + *(v122 + 72) * *v108, *v123 + *(v122 + 72) * v109, v5);
        if (v6)
        {
          break;
        }

        if (v109 < v22)
        {
          goto LABEL_126;
        }

        if (v106 - 2 >= *v105)
        {
          goto LABEL_127;
        }

        *v107 = v22;
        v107[1] = v109;
        v110 = *v105 - v106;
        if (*v105 < v106)
        {
          goto LABEL_128;
        }

        v106 = *v105 - 1;
        result = sub_22C115E84(v108 + 16, v110, v108);
        *v105 = v106;
      }
    }

LABEL_135:
    result = sub_22C115CA4(v22);
    v22 = result;
    goto LABEL_102;
  }

  v113 = a4;
  v21 = 0;
  v22 = MEMORY[0x277D84F90];
  v128 = result;
  while (1)
  {
    v23 = v21;
    v24 = v21 + 1;
    if (v21 + 1 < v20)
    {
      v25 = *v123;
      v26 = *(v122 + 72);
      v125 = v21 + 1;
      v27 = v25 + v26 * v24;
      v120 = v25;
      v121 = v20;
      v28 = result;
      sub_22BF6805C();
      v5 = v23;
      v29 = v127;
      sub_22BF6805C();
      v30 = *(v28 + 20);
      v31 = *&v19[v30];
      v32 = *&v29[v30];
      sub_22BF680B4();
      sub_22BF680B4();
      v33 = v121;
      v114 = v5;
      v34 = v5 + 2;
      i = v26;
      v35 = v120 + v26 * (v5 + 2);
      while (1)
      {
        v36 = v34;
        if (++v125 >= v33)
        {
          break;
        }

        sub_22BF6805C();
        v5 = v127;
        sub_22BF6805C();
        v37 = *(v128 + 20);
        v38 = *&v19[v37];
        v39 = *(v5 + v37);
        sub_22BF680B4();
        sub_22BF680B4();
        v33 = v121;
        v35 += i;
        v27 += i;
        v34 = v36 + 1;
        if (v32 < v31 == v39 >= v38)
        {
          goto LABEL_9;
        }
      }

      v125 = v33;
LABEL_9:
      if (v32 >= v31)
      {
        v24 = v125;
        v23 = v114;
        result = v128;
      }

      else
      {
        v24 = v125;
        if (v125 < v114)
        {
          goto LABEL_132;
        }

        result = v128;
        if (v114 >= v125)
        {
          v23 = v114;
        }

        else
        {
          v5 = v22;
          v112 = v6;
          if (v33 >= v36)
          {
            v40 = v36;
          }

          else
          {
            v40 = v33;
          }

          v41 = i * (v40 - 1);
          v42 = i * v40;
          v43 = v114 * i;
          v44 = v114;
          do
          {
            if (v44 != --v24)
            {
              v45 = *v123;
              if (!*v123)
              {
                goto LABEL_139;
              }

              sub_22BF68168();
              v46 = v43 < v41 || v45 + v43 >= (v45 + v42);
              if (v46)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v43 != v41)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_22BF68168();
            }

            ++v44;
            v41 -= i;
            v42 -= i;
            v43 += i;
          }

          while (v44 < v24);
          v6 = v112;
          v22 = v5;
          result = v128;
          v24 = v125;
          v23 = v114;
        }
      }
    }

    v47 = v123[1];
    if (v24 < v47)
    {
      if (__OFSUB__(v24, v23))
      {
        goto LABEL_131;
      }

      if (v24 - v23 < v113)
      {
        break;
      }
    }

LABEL_47:
    if (v24 < v23)
    {
      goto LABEL_130;
    }

    v60 = result;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v102 = *(v22 + 16);
      sub_22BE6614C();
      v22 = v103;
    }

    v61 = *(v22 + 16);
    v62 = v61 + 1;
    if (v61 >= *(v22 + 24) >> 1)
    {
      sub_22BE6614C();
      v22 = v104;
    }

    result = v60;
    *(v22 + 16) = v62;
    v63 = v22 + 32;
    v64 = (v22 + 32 + 16 * v61);
    *v64 = v23;
    v64[1] = v24;
    v121 = *v115;
    if (!v121)
    {
      goto LABEL_140;
    }

    v125 = v24;
    if (v61)
    {
      i = v22;
      while (1)
      {
        v65 = v62 - 1;
        v66 = (v63 + 16 * (v62 - 1));
        v67 = (v22 + 16 * v62);
        if (v62 >= 4)
        {
          break;
        }

        if (v62 == 3)
        {
          v68 = *(v22 + 32);
          v69 = *(v22 + 40);
          v78 = __OFSUB__(v69, v68);
          v70 = v69 - v68;
          v71 = v78;
LABEL_68:
          if (v71)
          {
            goto LABEL_117;
          }

          v83 = *v67;
          v82 = v67[1];
          v84 = __OFSUB__(v82, v83);
          v85 = v82 - v83;
          v86 = v84;
          if (v84)
          {
            goto LABEL_120;
          }

          v87 = v66[1];
          v88 = v87 - *v66;
          if (__OFSUB__(v87, *v66))
          {
            goto LABEL_123;
          }

          if (__OFADD__(v85, v88))
          {
            goto LABEL_125;
          }

          if (v85 + v88 >= v70)
          {
            if (v70 < v88)
            {
              v65 = v62 - 2;
            }

            goto LABEL_90;
          }

          goto LABEL_83;
        }

        if (v62 < 2)
        {
          goto LABEL_119;
        }

        v90 = *v67;
        v89 = v67[1];
        v78 = __OFSUB__(v89, v90);
        v85 = v89 - v90;
        v86 = v78;
LABEL_83:
        if (v86)
        {
          goto LABEL_122;
        }

        v92 = *v66;
        v91 = v66[1];
        v78 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v78)
        {
          goto LABEL_124;
        }

        if (v93 < v85)
        {
          goto LABEL_97;
        }

LABEL_90:
        if (v65 - 1 >= v62)
        {
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
          goto LABEL_134;
        }

        if (!*v123)
        {
          goto LABEL_137;
        }

        v5 = v19;
        v97 = (v63 + 16 * (v65 - 1));
        v98 = *v97;
        v99 = v65;
        v100 = v63 + 16 * v65;
        v22 = *(v100 + 8);
        sub_22BF65594(*v123 + *(v122 + 72) * *v97, *v123 + *(v122 + 72) * *v100, *v123 + *(v122 + 72) * v22, v121);
        if (v6)
        {
        }

        if (v22 < v98)
        {
          goto LABEL_112;
        }

        v6 = *(i + 16);
        if (v99 > v6)
        {
          goto LABEL_113;
        }

        *v97 = v98;
        v97[1] = v22;
        if (v99 >= v6)
        {
          goto LABEL_114;
        }

        v62 = v6 - 1;
        sub_22C115E84((v100 + 16), v6 - 1 - v99, v100);
        v22 = i;
        *(i + 16) = v6 - 1;
        v101 = v6 > 2;
        v6 = 0;
        result = v128;
        v19 = v5;
        if (!v101)
        {
          goto LABEL_97;
        }
      }

      v72 = v63 + 16 * v62;
      v73 = *(v72 - 64);
      v74 = *(v72 - 56);
      v78 = __OFSUB__(v74, v73);
      v75 = v74 - v73;
      if (v78)
      {
        goto LABEL_115;
      }

      v77 = *(v72 - 48);
      v76 = *(v72 - 40);
      v78 = __OFSUB__(v76, v77);
      v70 = v76 - v77;
      v71 = v78;
      if (v78)
      {
        goto LABEL_116;
      }

      v79 = v67[1];
      v80 = v79 - *v67;
      if (__OFSUB__(v79, *v67))
      {
        goto LABEL_118;
      }

      v78 = __OFADD__(v70, v80);
      v81 = v70 + v80;
      if (v78)
      {
        goto LABEL_121;
      }

      if (v81 >= v75)
      {
        v95 = *v66;
        v94 = v66[1];
        v78 = __OFSUB__(v94, v95);
        v96 = v94 - v95;
        if (v78)
        {
          goto LABEL_129;
        }

        if (v70 < v96)
        {
          v65 = v62 - 2;
        }

        goto LABEL_90;
      }

      goto LABEL_68;
    }

LABEL_97:
    v20 = v123[1];
    v21 = v125;
    if (v125 >= v20)
    {
      goto LABEL_100;
    }
  }

  v48 = v23 + v113;
  if (__OFADD__(v23, v113))
  {
    goto LABEL_133;
  }

  if (v48 >= v47)
  {
    v48 = v123[1];
  }

  if (v48 < v23)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v24 == v48)
  {
    goto LABEL_47;
  }

  i = v22;
  v112 = v6;
  v49 = *v123;
  v50 = *(v122 + 72);
  v51 = *v123 + v50 * (v24 - 1);
  v52 = -v50;
  v114 = v23;
  v53 = v23 - v24;
  v116 = v50;
  v117 = v48;
  v54 = v49 + v24 * v50;
LABEL_40:
  v125 = v24;
  v119 = v54;
  v120 = v53;
  v121 = v51;
  v55 = v51;
  v5 = v128;
  while (1)
  {
    sub_22BF6805C();
    v56 = v127;
    sub_22BF6805C();
    v57 = *(v5 + 20);
    v58 = *&v19[v57];
    v59 = *&v56[v57];
    sub_22BF680B4();
    result = sub_22BF680B4();
    if (v59 >= v58)
    {
LABEL_45:
      v24 = v125 + 1;
      v51 = v121 + v116;
      v53 = v120 - 1;
      v54 = v119 + v116;
      if (v125 + 1 == v117)
      {
        v24 = v117;
        v6 = v112;
        v22 = i;
        result = v128;
        v23 = v114;
        goto LABEL_47;
      }

      goto LABEL_40;
    }

    if (!v49)
    {
      break;
    }

    sub_22BF68168();
    v5 = v128;
    swift_arrayInitWithTakeFrontToBack();
    sub_22BF68168();
    v55 += v52;
    v54 += v52;
    v46 = __CFADD__(v53++, 1);
    if (v46)
    {
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
  return result;
}

uint64_t sub_22BF65594(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v57 = type metadata accessor for ToolBoxToolSearchResult(0);
  v9 = *(*(v57 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v57);
  v56 = v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10);
  v14 = v51 - v13;
  v16 = *(v15 + 72);
  if (!v16)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  v17 = a2 - a1;
  v18 = a2 - a1 == 0x8000000000000000 && v16 == -1;
  if (v18)
  {
    goto LABEL_61;
  }

  v19 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_62;
  }

  v21 = v17 / v16;
  v60 = a1;
  v59 = a4;
  v22 = v19 / v16;
  v51[1] = v4;
  if (v17 / v16 >= v19 / v16)
  {
    sub_22BE68268(a2, v19 / v16, a4);
    v31 = a4 + v22 * v16;
    v32 = -v16;
    v33 = v31;
    v34 = a3;
    v53 = a1;
    v54 = -v16;
LABEL_37:
    v55 = a2 + v32;
    v35 = v34;
    v51[0] = v33;
    while (1)
    {
      if (v31 <= a4)
      {
        v60 = a2;
        v58 = v33;
        goto LABEL_59;
      }

      if (a2 <= a1)
      {
        break;
      }

      v52 = v33;
      v36 = a2;
      v37 = a4;
      v38 = v35 + v54;
      v39 = v31 + v54;
      v40 = v31;
      v41 = v35;
      sub_22BF6805C();
      v42 = v14;
      v43 = v56;
      sub_22BF6805C();
      v44 = *(v57 + 20);
      v45 = *&v42[v44];
      v46 = *&v43[v44];
      v14 = v42;
      sub_22BF680B4();
      sub_22BF680B4();
      if (v46 < v45)
      {
        v48 = v41 < v36 || v38 >= v36;
        v34 = v38;
        a4 = v37;
        if (v48)
        {
          a2 = v55;
          swift_arrayInitWithTakeFrontToBack();
          v33 = v52;
          a1 = v53;
          v32 = v54;
          v31 = v40;
        }

        else
        {
          v33 = v52;
          v18 = v41 == v36;
          v32 = v54;
          v49 = v55;
          a2 = v55;
          v31 = v40;
          a1 = v53;
          if (!v18)
          {
            v50 = v52;
            swift_arrayInitWithTakeBackToFront();
            v31 = v40;
            a2 = v49;
            v33 = v50;
          }
        }

        goto LABEL_37;
      }

      v47 = v41 < v40 || v38 >= v40;
      a4 = v37;
      if (v47)
      {
        swift_arrayInitWithTakeFrontToBack();
        v35 = v38;
        v31 = v39;
        v33 = v39;
        a2 = v36;
        a1 = v53;
      }

      else
      {
        v33 = v39;
        v18 = v40 == v41;
        v35 = v38;
        v31 = v39;
        a2 = v36;
        a1 = v53;
        if (!v18)
        {
          swift_arrayInitWithTakeBackToFront();
          v35 = v38;
          v31 = v39;
          v33 = v39;
        }
      }
    }

    v60 = a2;
    v58 = v51[0];
  }

  else
  {
    sub_22BE68268(a1, v17 / v16, a4);
    v23 = a4 + v21 * v16;
    v58 = v23;
    while (a4 < v23 && a2 < a3)
    {
      sub_22BF6805C();
      v25 = v56;
      sub_22BF6805C();
      v26 = *(v57 + 20);
      v27 = *&v14[v26];
      v28 = *&v25[v26];
      sub_22BF680B4();
      sub_22BF680B4();
      if (v28 >= v27)
      {
        if (a1 < a4 || a1 >= a4 + v16)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a4)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v59 = a4 + v16;
        a4 += v16;
      }

      else
      {
        if (a1 < a2 || a1 >= a2 + v16)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v16;
      }

      a1 += v16;
      v60 = a1;
    }
  }

LABEL_59:
  sub_22C115CE4(&v60, &v59, &v58);
  return 1;
}

uint64_t sub_22BF65A28(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v54 = a5;
  v47 = sub_22C272224();
  v9 = *(v47 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v47);
  v44 = v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = v43 - v13;
  v15 = sub_22BE5CE4C(&qword_27D90B708, &qword_22C28EC38);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = (v43 - v17);
  sub_22BF68520(a1, a2, a3, v52);
  v48 = v52[0];
  v49 = v52[1];
  v50 = v52[2];
  v51 = v53;
  v45 = v9;
  v46 = (v9 + 32);
  v43[4] = v9 + 8;
  v43[5] = v9 + 16;
  v43[3] = v9 + 40;
  v43[1] = a1;

  v43[0] = a3;

  while (1)
  {
    sub_22BF6855C(v18);
    v19 = sub_22BE5CE4C(&qword_27D90B700, &qword_22C28EC30);
    if (sub_22BE1AEA8(v18, 1, v19) == 1)
    {
      sub_22BE4926C();
    }

    v21 = *v18;
    v20 = v18[1];
    v22 = *v46;
    v23 = v14;
    (*v46)(v14, v18 + *(v19 + 48), v47);
    v24 = *v54;
    v26 = sub_22BE3B674(v21, v20);
    v27 = *(v24 + 16);
    v28 = (v25 & 1) == 0;
    if (__OFADD__(v27, v28))
    {
      break;
    }

    v29 = v25;
    if (*(v24 + 24) >= v27 + v28)
    {
      if ((a4 & 1) == 0)
      {
        sub_22BE5CE4C(&qword_27D90B6E8, &qword_22C28EC18);
        sub_22C273C54();
      }
    }

    else
    {
      v30 = v54;
      sub_22C24FDD4();
      v31 = *v30;
      v32 = sub_22BE3B674(v21, v20);
      if ((v29 & 1) != (v33 & 1))
      {
        goto LABEL_16;
      }

      v26 = v32;
    }

    v34 = *v54;
    if (v29)
    {
      v36 = v44;
      v35 = v45;
      v14 = v23;
      v37 = v47;
      (*(v45 + 16))(v44, v23, v47);
      (*(v35 + 8))(v23, v37);

      (*(v35 + 40))(v34[7] + *(v35 + 72) * v26, v36, v37);
      a4 = 1;
    }

    else
    {
      v34[(v26 >> 6) + 8] |= 1 << v26;
      v38 = (v34[6] + 16 * v26);
      *v38 = v21;
      v38[1] = v20;
      v14 = v23;
      v22((v34[7] + *(v45 + 72) * v26), v23, v47);
      v39 = v34[2];
      v40 = __OFADD__(v39, 1);
      v41 = v39 + 1;
      if (v40)
      {
        goto LABEL_15;
      }

      v34[2] = v41;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  result = sub_22C2740B4();
  __break(1u);
  return result;
}

uint64_t sub_22BF65E20(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t *a5)
{
  v72 = a5;
  v54 = a4;
  v8 = sub_22C26E4D4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v60 = v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v65 = v53 - v13;
  v14 = sub_22C26E494();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22BE5CE4C(&qword_27D90B760, &qword_22C28ED38);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = v53 - v21;
  sub_22BF68520(a1, a2, a3, v70);
  v66 = v70[0];
  v67 = v70[1];
  v68 = v70[2];
  v63 = (v9 + 32);
  v64 = (v15 + 32);
  v69 = v71;
  v58 = v9 + 16;
  v57 = v9 + 8;
  v59 = v15;
  v56 = (v15 + 8);
  v23 = v18;
  v24 = v54;
  v62 = v9;
  v55 = v9 + 40;
  v53[2] = a1;

  v53[1] = a3;

  for (i = v22; ; v22 = i)
  {
    sub_22BF688C8(v22);
    v25 = sub_22BE5CE4C(&qword_27D90B750, &qword_22C28ED28);
    if (sub_22BE1AEA8(v22, 1, v25) == 1)
    {
      sub_22BE4926C();
    }

    v26 = *(v25 + 48);
    v27 = *v64;
    (*v64)(v23, v22, v14);
    v28 = *v63;
    v29 = &v22[v26];
    v30 = v8;
    (*v63)(v65, v29, v8);
    v31 = *v72;
    sub_22BE609E0();
    v34 = v33;
    v35 = *(v31 + 16);
    v36 = (v32 & 1) == 0;
    if (__OFADD__(v35, v36))
    {
      break;
    }

    v37 = v32;
    if (*(v31 + 24) >= v35 + v36)
    {
      if ((v24 & 1) == 0)
      {
        sub_22BE5CE4C(&qword_27D907230, &qword_22C28ED40);
        sub_22C273C54();
      }
    }

    else
    {
      v38 = v72;
      sub_22C24FDFC();
      v39 = *v38;
      sub_22BE609E0();
      if ((v37 & 1) != (v41 & 1))
      {
        goto LABEL_17;
      }

      v34 = v40;
    }

    v42 = *v72;
    if (v37)
    {
      v43 = v62;
      v44 = v60;
      v45 = v23;
      v46 = v14;
      v47 = v65;
      v8 = v30;
      (*(v62 + 16))(v60, v65, v30);
      v48 = v47;
      v14 = v46;
      v23 = v45;
      (*(v43 + 8))(v48, v30);
      (*v56)(v45, v14);
      (*(v43 + 40))(v42[7] + *(v43 + 72) * v34, v44, v30);
    }

    else
    {
      v42[(v34 >> 6) + 8] |= 1 << v34;
      v27((v42[6] + *(v59 + 72) * v34), v23, v14);
      v8 = v30;
      v28((v42[7] + *(v62 + 72) * v34), v65, v30);
      v49 = v42[2];
      v50 = __OFADD__(v49, 1);
      v51 = v49 + 1;
      if (v50)
      {
        goto LABEL_16;
      }

      v42[2] = v51;
    }

    v24 = 1;
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  result = sub_22C2740B4();
  __break(1u);
  return result;
}

uint64_t sub_22BF6633C()
{
  sub_22BE18378();
  v19[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 32);
  v2 = v1 & 0x3F;
  v3 = ((1 << v1) + 63) >> 6;

  if (v2 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    sub_22C1A7AFC(0, v3, v19 - ((8 * v3 + 15) & 0x3FFFFFFFFFFFFFF0));
    sub_22BF6AC40();
    v9 = sub_22BF66568(v5, v6, v7, v8);
    if (!v3)
    {
      v10 = v9;

LABEL_4:
      v11 = *MEMORY[0x277D85DE8];
      return v10;
    }

    swift_willThrow();

    __break(1u);
  }

  else
  {
    swift_slowAlloc();

    sub_22BF6AC40();
    v10 = sub_22BF664D8(v13, v14, v15, v16);

    if (!v3)
    {

      v17 = sub_22BE3D494();
      MEMORY[0x2318AD180](v17);
      goto LABEL_4;
    }
  }

  v18 = sub_22BE3D494();
  result = MEMORY[0x2318AD180](v18);
  __break(1u);
  return result;
}

void *sub_22BF664D8(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_22BF66568(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_22BF66568(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v54 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v55 = 0;
    v29 = 0;
    v30 = 1 << *(a3 + 32);
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    else
    {
      v31 = -1;
    }

    v32 = v31 & *(a3 + 56);
    v33 = (v30 + 63) >> 6;
    v34 = a4 + 56;
LABEL_28:
    while (v32)
    {
      v35 = __clz(__rbit64(v32));
      v53 = (v32 - 1) & v32;
LABEL_35:
      v51 = v35 | (v29 << 6);
      v38 = (*(v5 + 48) + 16 * v51);
      v40 = *v38;
      v39 = v38[1];
      v41 = *(v4 + 40);
      sub_22C274154();

      sub_22C272F44();
      v42 = sub_22C2741A4();
      v43 = ~(-1 << *(v4 + 32));
      do
      {
        v44 = v42 & v43;
        if (((*(v34 + (((v42 & v43) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v42 & v43)) & 1) == 0)
        {

          v4 = a4;
          v32 = v53;
          goto LABEL_28;
        }

        v45 = (*(a4 + 48) + 16 * v44);
        if (*v45 == v40 && v45[1] == v39)
        {
          break;
        }

        v47 = sub_22C274014();
        v42 = v44 + 1;
      }

      while ((v47 & 1) == 0);

      *(v54 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
      v28 = __OFADD__(v55++, 1);
      v4 = a4;
      v32 = v53;
      if (v28)
      {
        goto LABEL_50;
      }
    }

    v36 = v29;
    while (1)
    {
      v29 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v29 >= v33)
      {
LABEL_46:

        return sub_22BF6690C(v54, a2, v55, v5);
      }

      v37 = *(v5 + 56 + 8 * v29);
      ++v36;
      if (v37)
      {
        v35 = __clz(__rbit64(v37));
        v53 = (v37 - 1) & v37;
        goto LABEL_35;
      }
    }
  }

  else
  {
    v55 = 0;
    v6 = 0;
    v48 = a4 + 56;
    v7 = 1 << *(a4 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(a4 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = a3 + 56;
    v50 = v10;
LABEL_6:
    while (v9)
    {
      v12 = __clz(__rbit64(v9));
      v52 = (v9 - 1) & v9;
LABEL_13:
      v15 = (*(v4 + 48) + 16 * (v12 | (v6 << 6)));
      v17 = *v15;
      v16 = v15[1];
      v18 = *(v5 + 40);
      sub_22C274154();

      sub_22C272F44();
      v19 = sub_22C2741A4();
      v20 = v5;
      v21 = ~(-1 << *(v5 + 32));
      do
      {
        v22 = v19 & v21;
        v23 = (v19 & v21) >> 6;
        v24 = 1 << (v19 & v21);
        if ((v24 & *(v11 + 8 * v23)) == 0)
        {

          v5 = v20;
          v4 = a4;
          v10 = v50;
          v9 = v52;
          goto LABEL_6;
        }

        v25 = (*(v20 + 48) + 16 * v22);
        if (*v25 == v17 && v25[1] == v16)
        {
          break;
        }

        v27 = sub_22C274014();
        v19 = v22 + 1;
      }

      while ((v27 & 1) == 0);

      v9 = v52;
      v54[v23] |= v24;
      v28 = __OFADD__(v55++, 1);
      v5 = v20;
      v4 = a4;
      v10 = v50;
      if (v28)
      {
        goto LABEL_49;
      }
    }

    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_46;
      }

      v14 = *(v48 + 8 * v6);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v52 = (v14 - 1) & v14;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

uint64_t sub_22BF6690C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_22BE5CE4C(&qword_27D907898, &qword_22C275B88);
  result = sub_22C273A44();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = *(v9 + 40);
    sub_22C274154();

    sub_22C272F44();
    result = sub_22C2741A4();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v9 + 48) + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_22BF66B28(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_22BE5CE4C(&qword_27D90B738, &qword_22C28ED10);
  result = sub_22C273A44();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    v17 = *(v9 + 40);
    result = sub_22C274144();
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v9 + 48) + 8 * v21) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

unint64_t sub_22BF66D0C()
{
  result = qword_28107B648[0];
  if (!qword_28107B648[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28107B648);
  }

  return result;
}

unint64_t sub_22BF66D60()
{
  result = qword_28107CBF0[0];
  if (!qword_28107CBF0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28107CBF0);
  }

  return result;
}

uint64_t sub_22BF66DB4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_22BE7431C(&qword_27D90B670, &qword_22C28E6C8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22BF66E20()
{
  result = qword_27D90B698;
  if (!qword_27D90B698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B698);
  }

  return result;
}

uint64_t sub_22BF66E74(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_22BE7431C(&qword_27D90B688, &qword_22C28E6D8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22BF66EEC()
{
  result = qword_28106E360;
  if (!qword_28106E360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106E360);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ToolBoxUtility(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_22BF67014()
{
  result = sub_22C26DF64();
  if (v1 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = _s19SentinelFileManagerVMa();
    if (v2 <= 0x3F)
    {
      v5 = *(result - 8) + 64;
      result = sub_22C272024();
      if (v3 <= 0x3F)
      {
        v6 = *(result - 8) + 64;
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_22BF67154(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22BF67194(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_22BF67214()
{
  result = qword_27D90B6A8;
  if (!qword_27D90B6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B6A8);
  }

  return result;
}

unint64_t sub_22BF6726C()
{
  result = qword_27D90B6B0;
  if (!qword_27D90B6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B6B0);
  }

  return result;
}

unint64_t sub_22BF672C4()
{
  result = qword_28106E368;
  if (!qword_28106E368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106E368);
  }

  return result;
}

unint64_t sub_22BF6731C()
{
  result = qword_28107CBE0;
  if (!qword_28107CBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28107CBE0);
  }

  return result;
}

unint64_t sub_22BF67374()
{
  result = qword_28107CBE8;
  if (!qword_28107CBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28107CBE8);
  }

  return result;
}

unint64_t sub_22BF673CC()
{
  result = qword_28107B638;
  if (!qword_28107B638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28107B638);
  }

  return result;
}

unint64_t sub_22BF67424()
{
  result = qword_28107B640;
  if (!qword_28107B640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28107B640);
  }

  return result;
}

unint64_t sub_22BF67478()
{
  result = qword_28106E380[0];
  if (!qword_28106E380[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28106E380);
  }

  return result;
}

uint64_t sub_22BF674CC(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        result = sub_22BF679B0(*(*(v2 + 48) + ((v9 << 9) | (8 * v10))));
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_22BF675C4(unint64_t a1, uint64_t a2)
{
  v3 = a2;
  v51 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    v3 = MEMORY[0x277D84FA0];
LABEL_36:
    v34 = *MEMORY[0x277D85DE8];
    return v3;
  }

  v40 = 0;
  v4 = 0;
  v6 = a1 + 56;
  v5 = *(a1 + 56);
  v7 = -1;
  v8 = -1 << *(a1 + 32);
  v44 = ~v8;
  v45 = a1 + 56;
  if (-v8 < 64)
  {
    v9 = ~(-1 << -v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & v5;
  v11 = (63 - v8) >> 6;
  v12 = a2 + 56;
  v13 = 1;
  v46 = a1;
  if ((v9 & v5) == 0)
  {
LABEL_7:
    v15 = v4;
    while (1)
    {
      v14 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        goto LABEL_38;
      }

      if (v14 >= v11)
      {
        break;
      }

      v10 = *(v6 + 8 * v14);
      ++v15;
      if (v10)
      {
        goto LABEL_11;
      }
    }

LABEL_35:
    sub_22BE4926C();
    goto LABEL_36;
  }

LABEL_6:
  v14 = v4;
LABEL_11:
  v16 = __clz(__rbit64(v10));
  v10 &= v10 - 1;
  v2 = *(*(a1 + 48) + ((v14 << 9) | (8 * v16)));
  v17 = *(v3 + 40);
  v18 = sub_22C274144();
  v19 = -1 << *(v3 + 32);
  v20 = ~v19;
  while (1)
  {
    v4 = v18 & v20;
    v6 = (v18 & v20) >> 6;
    v7 = 1 << (v18 & v20);
    if ((v7 & *(v12 + 8 * v6)) == 0)
    {
      v4 = v14;
      v6 = v45;
      a1 = v46;
      v7 = -1;
      if (v10)
      {
        goto LABEL_6;
      }

      goto LABEL_7;
    }

    if (*(*(v3 + 48) + 8 * v4) == v2)
    {
      break;
    }

    v18 = v4 + 1;
  }

  v48 = v44;
  v49 = v14;
  v50 = v10;
  v47[0] = v46;
  v47[1] = v45;
  v13 = (63 - v19) >> 6;
  v2 = 8 * v13;

  if (v13 > 0x80)
  {
    goto LABEL_39;
  }

  while (1)
  {
    v41 = v13;
    v42 = &v40;
    MEMORY[0x28223BE20](v21);
    v13 = &v40 - v22;
    memcpy(&v40 - v22, (v3 + 56), v2);
    v23 = *(v3 + 16);
    *(v13 + 8 * v6) &= ~v7;
    v24 = v23 - 1;
    v4 = 1;
    v7 = v45;
    v6 = v46;
LABEL_19:
    v43 = v24;
LABEL_20:
    while (v10)
    {
LABEL_25:
      v26 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v2 = *(*(v6 + 48) + ((v14 << 9) | (8 * v26)));
      v27 = *(v3 + 40);
      v28 = sub_22C274144();
      v29 = ~(-1 << *(v3 + 32));
      while (1)
      {
        v30 = v28 & v29;
        v31 = (v28 & v29) >> 6;
        v32 = 1 << (v28 & v29);
        if ((v32 & *(v12 + 8 * v31)) == 0)
        {
          break;
        }

        v28 = v30 + 1;
        if (*(*(v3 + 48) + 8 * v30) == v2)
        {
          v33 = *(v13 + 8 * v31);
          *(v13 + 8 * v31) = v33 & ~v32;
          if ((v33 & v32) == 0)
          {
            goto LABEL_20;
          }

          v24 = v43 - 1;
          if (__OFSUB__(v43, 1))
          {
            __break(1u);
          }

          if (v43 == 1)
          {

            v3 = MEMORY[0x277D84FA0];
            goto LABEL_35;
          }

          goto LABEL_19;
        }
      }
    }

    while (1)
    {
      v25 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v25 >= v11)
      {
        v3 = sub_22BF66B28(v13, v41, v43, v3);
        goto LABEL_35;
      }

      v10 = *(v7 + 8 * v25);
      ++v14;
      if (v10)
      {
        v14 = v25;
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v36 = swift_slowAlloc();
  v37 = v40;
  v38 = sub_22BF67C18(v36, v13, (v3 + 56), v13, v3, v4, v47);
  if (!v37)
  {
    v39 = v38;

    MEMORY[0x2318AD180](v36, -1, -1);
    v44 = v48;
    v3 = v39;
    goto LABEL_35;
  }

  result = MEMORY[0x2318AD180](v36, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_22BF679B0(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = sub_22C274144();
  v7 = ~(-1 << *(v4 + 32));
  while (1)
  {
    v8 = v6 & v7;
    if (((1 << (v6 & v7)) & *(v4 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      return 0;
    }

    if (*(*(v4 + 48) + 8 * v8) == a1)
    {
      break;
    }

    v6 = v8 + 1;
  }

  v10 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v2;
  v14 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_22C1ABE5C();
    v12 = v14;
  }

  v9 = *(*(v12 + 48) + 8 * v8);
  sub_22BF67CA0(v8);
  *v2 = v14;
  return v9;
}

uint64_t sub_22BF67A9C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v8 = result;
  v9 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v10 = v9 - 1;
  v11 = a3 + 56;
LABEL_2:
  while (1)
  {
    v12 = a5[3];
    v13 = a5[4];
    if (!v13)
    {
      break;
    }

    v14 = a5[3];
LABEL_7:
    v15 = *(*(*a5 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    a5[3] = v14;
    a5[4] = (v13 - 1) & v13;
    v16 = *(a3 + 40);
    result = sub_22C274144();
    v17 = ~(-1 << *(a3 + 32));
    while (1)
    {
      v18 = result & v17;
      v19 = (result & v17) >> 6;
      v20 = 1 << (result & v17);
      if ((v20 & *(v11 + 8 * v19)) == 0)
      {
        break;
      }

      result = v18 + 1;
      if (*(*(a3 + 48) + 8 * v18) == v15)
      {
        v21 = v8[v19];
        v8[v19] = v21 & ~v20;
        if ((v21 & v20) == 0)
        {
          goto LABEL_2;
        }

        if (__OFSUB__(v10--, 1))
        {
          goto LABEL_16;
        }

        if (v10)
        {
          goto LABEL_2;
        }

        return MEMORY[0x277D84FA0];
      }
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= ((a5[2] + 64) >> 6))
    {
      a5[3] = v12;
      a5[4] = 0;

      return sub_22BF66B28(v8, a2, v10, a3);
    }

    v13 = *(a5[1] + 8 * v14);
    ++v12;
    if (v13)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_22BF67C18(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  v12 = sub_22BF67A9C(a1, a2, a5, a6, a7);

  return v12;
}

unint64_t sub_22BF67CA0(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(v3 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_22C2739D4();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 40);
        v11 = *(v3 + 48);
        v12 = (v11 + 8 * v6);
        v13 = *v12;
        v14 = sub_22C274144() & v7;
        if (v2 >= v9)
        {
          if (v14 >= v9 && v2 >= v14)
          {
LABEL_15:
            v17 = (v11 + 8 * v2);
            if (v2 != v6 || v17 >= v12 + 1)
            {
              *v17 = *v12;
              v2 = v6;
            }
          }
        }

        else if (v14 >= v9 || v2 >= v14)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_22BF67E18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_22C272224();
  (*(*(v7 - 8) + 16))(a1, a4, v7);

  return a2;
}

uint64_t sub_22BF67E98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_22C26E494();
  (*(*(v8 - 8) + 16))(a1, a3, v8);
  v9 = sub_22C26E4D4();
  v10 = *(*(v9 - 8) + 16);

  return v10(a2, a4, v9);
}

uint64_t sub_22BF67F50@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(sub_22BE5CE4C(&qword_27D90B6F8, &qword_22C28EC28) + 48);
  v5 = sub_22BE5CE4C(&qword_27D90B700, &qword_22C28EC30);
  result = sub_22BF67E18(a2 + *(v5 + 48), *a1, a1[1], a1 + v4);
  *a2 = result;
  a2[1] = v7;
  return result;
}

uint64_t sub_22BF67FC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(sub_22BE5CE4C(&qword_27D90B758, &qword_22C28ED30) + 48);
  v5 = a2 + *(sub_22BE5CE4C(&qword_27D90B750, &qword_22C28ED28) + 48);

  return sub_22BF67E98(a2, v5, a1, a1 + v4);
}

uint64_t sub_22BF6805C()
{
  sub_22BE18378();
  v2 = v1(0);
  sub_22BE18000(v2);
  v4 = *(v3 + 16);
  v5 = sub_22BE19454();
  v6(v5);
  return v0;
}

uint64_t sub_22BF680B4()
{
  v1 = sub_22BE17BC4();
  v3 = v2(v1);
  sub_22BE18524(v3);
  (*(v4 + 8))(v0);
  return v0;
}

unint64_t sub_22BF68104()
{
  result = qword_28106DF80;
  if (!qword_28106DF80)
  {
    sub_22BE7431C(&qword_27D90B348, &qword_22C28CA00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106DF80);
  }

  return result;
}

uint64_t sub_22BF68168()
{
  sub_22BE18378();
  v2 = v1(0);
  sub_22BE18000(v2);
  v4 = *(v3 + 32);
  v5 = sub_22BE19454();
  v6(v5);
  return v0;
}

unint64_t sub_22BF681E0(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < result >> 16)
  {
    __break(1u);
LABEL_9:
    sub_22BE22C8C();
    result = sub_22BF68278(v5, v6, v7);
    if ((result & 1) == 0)
    {
      v8 = result;
      sub_22BE22C8C();
      return v8 & 0xC | sub_22C26CCB8(v9, v10, v11) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_22BF68278(unint64_t result, unint64_t a2, unint64_t a3)
{
  v5 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((result & 0xC) == 4 << v5)
  {
    result = sub_22C192BB0(result, a2, a3);
  }

  v6 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 < result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_22BF682E8(unint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v4 = a1;
  }

  v5 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v5 = 11;
  }

  v6 = v5 | (v4 << 16);
  v7 = sub_22BF681E0(0xFuLL, a1, a2);
  result = sub_22BF681E0(v6, a1, a2);
  v9 = result >> 14;
  if (v7 >> 14 < result >> 14)
  {
    for (i = 0; ; ++i)
    {
      v11 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        result = sub_22C2730F4();
        v7 = result;
      }

      else
      {
        v12 = v7 >> 16;
        if ((a2 & 0x2000000000000000) != 0)
        {
          v22 = a1;
          v23 = a2 & 0xFFFFFFFFFFFFFFLL;
          v13 = *(&v22 + v12);
        }

        else
        {
          result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a1 & 0x1000000000000000) == 0)
          {
            result = sub_22C273B44();
          }

          v13 = *(result + v12);
        }

        v14 = v13;
        v15 = __clz(v13 ^ 0xFF) - 24;
        if (v14 >= 0)
        {
          LOBYTE(v15) = 1;
        }

        v7 = ((v12 + v15) << 16) | 5;
      }

      if (v9 <= v7 >> 14)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
    return result;
  }

  if (v9 < v7 >> 14)
  {
    v11 = 0;
    while (!__OFSUB__(v11--, 1))
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        result = sub_22C273104();
        v7 = result;
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v22 = a1;
          v23 = a2 & 0xFFFFFFFFFFFFFFLL;
          if ((*(&v22 + (v7 >> 16) - 1) & 0xC0) == 0x80)
          {
            v20 = &v22 + (v7 >> 16) - 2;
            v19 = 1;
            do
            {
              ++v19;
              v21 = *v20--;
            }

            while ((v21 & 0xC0) == 0x80);
          }

          else
          {
            v19 = 1;
          }
        }

        else
        {
          result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a1 & 0x1000000000000000) == 0)
          {
            result = sub_22C273B44();
          }

          v17 = 0;
          do
          {
            v18 = *(result + (v7 >> 16) - 1 + v17--) & 0xC0;
          }

          while (v18 == 128);
          v19 = -v17;
        }

        v7 = (v7 - (v19 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
      }

      if (v9 >= v7 >> 14)
      {
        return v11;
      }
    }

    goto LABEL_42;
  }

  return 0;
}

uint64_t sub_22BF68520@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

uint64_t sub_22BF6855C@<X0>(uint64_t a1@<X8>)
{
  v42 = sub_22BE5CE4C(&qword_27D90B6F8, &qword_22C28EC28);
  v3 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42);
  v5 = &v39 - v4;
  v6 = sub_22C272224();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22BE5CE4C(&qword_27D90B710, &qword_22C28EC40);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v44 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v13);
  v17 = &v39 - v16;
  v18 = *v1;
  v19 = v1[1];
  v20 = v1[2];
  v21 = v1[3];
  v22 = v1[4];
  v39 = v5;
  v43 = v20;
  if (v22)
  {
    v41 = a1;
    v23 = v21;
LABEL_7:
    v40 = (v22 - 1) & v22;
    v24 = __clz(__rbit64(v22)) | (v23 << 6);
    v25 = (*(v18 + 48) + 16 * v24);
    v26 = *v25;
    v27 = v25[1];
    (*(v7 + 16))(v10, *(v18 + 56) + *(v7 + 72) * v24, v6);
    v28 = v42;
    v29 = *(v42 + 48);
    *v17 = v26;
    *(v17 + 1) = v27;
    v30 = v10;
    v31 = v28;
    (*(v7 + 32))(&v17[v29], v30, v6);
    sub_22BE19DC4(v17, 0, 1, v31);

    v32 = v40;
    a1 = v41;
LABEL_8:
    *v1 = v18;
    v1[1] = v19;
    v33 = v44;
    v1[2] = v43;
    v1[3] = v21;
    v1[4] = v32;
    v34 = v1[5];
    v35 = v1[6];
    sub_22BEBFD18();
    v36 = 1;
    if (sub_22BE1AEA8(v33, 1, v31) != 1)
    {
      v37 = v39;
      sub_22BEBFD18();
      v34(v37);
      sub_22BE233E8(v37, &qword_27D90B6F8, &qword_22C28EC28);
      v36 = 0;
    }

    v38 = sub_22BE5CE4C(&qword_27D90B700, &qword_22C28EC30);
    return sub_22BE19DC4(a1, v36, 1, v38);
  }

  else
  {
    while (1)
    {
      v23 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v23 >= ((v20 + 64) >> 6))
      {
        v31 = v42;
        sub_22BE19DC4(&v39 - v16, 1, 1, v42);
        v32 = 0;
        goto LABEL_8;
      }

      v22 = *(v19 + 8 * v23);
      ++v21;
      if (v22)
      {
        v41 = a1;
        v21 = v23;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22BF688C8@<X0>(uint64_t a1@<X8>)
{
  v57 = a1;
  v58 = sub_22BE5CE4C(&qword_27D90B758, &qword_22C28ED30);
  v2 = *(*(v58 - 8) + 64);
  MEMORY[0x28223BE20](v58);
  v4 = &v47 - v3;
  v53 = sub_22C26E4D4();
  v5 = *(v53 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v53);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22C26E494();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22BE5CE4C(&qword_27D90B768, &qword_22C28ED48);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v16);
  v54 = &v47 - v20;
  v55 = v1;
  v21 = *v1;
  v22 = v1[1];
  v23 = v1[2];
  v24 = v1[3];
  v25 = v1[4];
  v48 = v4;
  v56 = v23;
  if (v25)
  {
    v52 = v18;
    v26 = v24;
LABEL_8:
    v50 = v13;
    v51 = (v25 - 1) & v25;
    v28 = __clz(__rbit64(v25)) | (v26 << 6);
    v29 = v21;
    (*(v10 + 16))(v13, *(v21 + 48) + *(v10 + 72) * v28, v9);
    v30 = v53;
    (*(v5 + 16))(v8, *(v29 + 56) + *(v5 + 72) * v28, v53);
    v31 = v58;
    v49 = *(v58 + 48);
    v32 = v54;
    v33 = v9;
    v34 = v51;
    (*(v10 + 32))(v54, v50, v33);
    v35 = v32;
    (*(v5 + 32))(&v32[v49], v8, v30);
    v27 = v31;
    v36 = 0;
    v18 = v52;
LABEL_9:
    v37 = 1;
    v38 = v27;
    sub_22BE19DC4(v35, v36, 1, v27);
    v40 = v55;
    v39 = v56;
    *v55 = v29;
    v40[1] = v22;
    v40[2] = v39;
    v40[3] = v24;
    v40[4] = v34;
    v41 = v40[5];
    v42 = v40[6];
    sub_22BEBFD18();
    v43 = sub_22BE1AEA8(v18, 1, v38);
    v44 = v57;
    if (v43 != 1)
    {
      v45 = v48;
      sub_22BEBFD18();
      v41(v45);
      sub_22BE233E8(v45, &qword_27D90B758, &qword_22C28ED30);
      v37 = 0;
    }

    v46 = sub_22BE5CE4C(&qword_27D90B750, &qword_22C28ED28);
    return sub_22BE19DC4(v44, v37, 1, v46);
  }

  else
  {
    v27 = v58;
    while (1)
    {
      v26 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v26 >= ((v23 + 64) >> 6))
      {
        v34 = 0;
        v36 = 1;
        v35 = v54;
        v29 = v21;
        goto LABEL_9;
      }

      v25 = *(v22 + 8 * v26);
      ++v24;
      if (v25)
      {
        v52 = v18;
        v24 = v26;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

void *sub_22BF68CE0@<X0>(uint64_t a1@<X0>, void *(*a2)(uint64_t *__return_ptr)@<X1>, void *a3@<X8>)
{
  result = sub_22BF45408(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

void sub_22BF68D28(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  sub_22BF500A4(a1, a2);
}

unint64_t sub_22BF68D44()
{
  result = qword_28107C818[0];
  if (!qword_28107C818[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28107C818);
  }

  return result;
}

uint64_t sub_22BF68DB4()
{
  sub_22BE201F0();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = swift_task_alloc();
  v7 = sub_22BE23AE4(v6);
  *v7 = v8;
  sub_22BE1C1CC(v7);
  sub_22BE3E808();

  return sub_22BF56DE4(v9, v10, v11, v12, v13, v5);
}

uint64_t sub_22BF68E68()
{
  sub_22BE183FC();
  v2 = sub_22BE5CE4C(&qword_27D90B730, &qword_22C28ECF8);
  sub_22BE19448(v2);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_22BE40D78;

  return sub_22BF64404(v5, v6, v0 + v4);
}

uint64_t sub_22BF69008()
{
  sub_22BE183F0();
  v1 = swift_task_alloc();
  v2 = sub_22BE23AE4(v1);
  *v2 = v3;
  v4 = sub_22BE1C1CC(v2);

  return sub_22BF521B0(v4, v0);
}

uint64_t sub_22BF69090()
{
  sub_22BE2035C();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[6];
  v5 = v0[7];
  v7 = swift_task_alloc();
  v8 = sub_22BE23AE4(v7);
  *v8 = v9;
  sub_22BE1C1CC(v8);
  sub_22BE3E808();

  return sub_22BF54168(v10, v11, v12, v13, v14, v6, v5);
}

uint64_t sub_22BF69184()
{
  sub_22BE183F0();
  v1 = swift_task_alloc();
  v2 = sub_22BE23AE4(v1);
  *v2 = v3;
  v4 = sub_22BE1C1CC(v2);

  return sub_22BF5FDC0(v4, v0);
}

uint64_t sub_22BF6920C()
{
  sub_22BE183F0();
  v1 = swift_task_alloc();
  v2 = sub_22BE23AE4(v1);
  *v2 = v3;
  v4 = sub_22BE1C1CC(v2);

  return sub_22BF53FD8(v4, v0);
}

uint64_t sub_22BF69294(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 25))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22BF692D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_22BF69328(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_22BF69344(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22BF69384(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_22BF693F0()
{
  sub_22BF69490();
  if (v0 <= 0x3F)
  {
    sub_22BF69510();
    if (v1 <= 0x3F)
    {
      sub_22BF69638(319, &qword_28106DDE0);
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_22BF69490()
{
  if (!qword_28106DDF0)
  {
    sub_22BE7431C(&qword_27D90B798, &qword_22C28EEB8);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_28106DDF0);
    }
  }
}

void sub_22BF69510()
{
  if (!qword_28106DEF0)
  {
    sub_22C272CA4();
    sub_22BE7431C(&qword_27D90B798, &qword_22C28EEB8);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_28106DEF0);
    }
  }
}

uint64_t sub_22BF69598()
{
  sub_22BF69638(319, &qword_28106DDE8);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_22BF6968C();
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return v1;
}

void sub_22BF69638(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_22BF6968C()
{
  if (!qword_28106DEF8)
  {
    sub_22C272CA4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_28106DEF8);
    }
  }
}

unint64_t sub_22BF6970C()
{
  result = qword_27D90B7A0;
  if (!qword_27D90B7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B7A0);
  }

  return result;
}

unint64_t sub_22BF69764()
{
  result = qword_27D90B7A8;
  if (!qword_27D90B7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B7A8);
  }

  return result;
}

unint64_t sub_22BF697BC()
{
  result = qword_28106E370;
  if (!qword_28106E370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106E370);
  }

  return result;
}

unint64_t sub_22BF69814()
{
  result = qword_28106E378;
  if (!qword_28106E378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106E378);
  }

  return result;
}

unint64_t sub_22BF69868()
{
  result = qword_281079A00;
  if (!qword_281079A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281079A00);
  }

  return result;
}

unint64_t sub_22BF698BC()
{
  result = qword_2810799E8;
  if (!qword_2810799E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810799E8);
  }

  return result;
}

unint64_t sub_22BF69910()
{
  result = qword_281073850;
  if (!qword_281073850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281073850);
  }

  return result;
}

unint64_t sub_22BF69964()
{
  result = qword_2810799B8;
  if (!qword_2810799B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810799B8);
  }

  return result;
}

unint64_t sub_22BF699B8()
{
  result = qword_2810799D0;
  if (!qword_2810799D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810799D0);
  }

  return result;
}

unint64_t sub_22BF69A0C()
{
  result = qword_281073858;
  if (!qword_281073858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281073858);
  }

  return result;
}

unint64_t sub_22BF69A60()
{
  result = qword_281073898[0];
  if (!qword_281073898[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281073898);
  }

  return result;
}

unint64_t sub_22BF69AB4()
{
  result = qword_27D90B808;
  if (!qword_27D90B808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B808);
  }

  return result;
}

unint64_t sub_22BF69B08()
{
  result = qword_281073870;
  if (!qword_281073870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281073870);
  }

  return result;
}

unint64_t sub_22BF69B5C()
{
  result = qword_27D90B848;
  if (!qword_27D90B848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B848);
  }

  return result;
}

unint64_t sub_22BF69BB0()
{
  result = qword_27D90B850;
  if (!qword_27D90B850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B850);
  }

  return result;
}

unint64_t sub_22BF69C04()
{
  result = qword_27D90B858;
  if (!qword_27D90B858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B858);
  }

  return result;
}

unint64_t sub_22BF69C58()
{
  result = qword_27D90B860;
  if (!qword_27D90B860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B860);
  }

  return result;
}

_BYTE *sub_22BF69D1C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = sub_22BE22BD0(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_22BF69E14(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = sub_22BE22BD0(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_22BF69EF0()
{
  result = qword_27D90B888;
  if (!qword_27D90B888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B888);
  }

  return result;
}

unint64_t sub_22BF69F48()
{
  result = qword_27D90B890;
  if (!qword_27D90B890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B890);
  }

  return result;
}

unint64_t sub_22BF69FA0()
{
  result = qword_27D90B898;
  if (!qword_27D90B898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B898);
  }

  return result;
}

unint64_t sub_22BF69FF8()
{
  result = qword_27D90B8A0;
  if (!qword_27D90B8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B8A0);
  }

  return result;
}

unint64_t sub_22BF6A050()
{
  result = qword_27D90B8A8;
  if (!qword_27D90B8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B8A8);
  }

  return result;
}

unint64_t sub_22BF6A0A8()
{
  result = qword_27D90B8B0;
  if (!qword_27D90B8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B8B0);
  }

  return result;
}

unint64_t sub_22BF6A100()
{
  result = qword_27D90B8B8;
  if (!qword_27D90B8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B8B8);
  }

  return result;
}

unint64_t sub_22BF6A158()
{
  result = qword_27D90B8C0;
  if (!qword_27D90B8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B8C0);
  }

  return result;
}

unint64_t sub_22BF6A1B0()
{
  result = qword_27D90B8C8;
  if (!qword_27D90B8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B8C8);
  }

  return result;
}

unint64_t sub_22BF6A208()
{
  result = qword_27D90B8D0;
  if (!qword_27D90B8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B8D0);
  }

  return result;
}

unint64_t sub_22BF6A260()
{
  result = qword_27D90B8D8;
  if (!qword_27D90B8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B8D8);
  }

  return result;
}

unint64_t sub_22BF6A2B8()
{
  result = qword_27D90B8E0;
  if (!qword_27D90B8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B8E0);
  }

  return result;
}

unint64_t sub_22BF6A310()
{
  result = qword_27D90B8E8;
  if (!qword_27D90B8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B8E8);
  }

  return result;
}

unint64_t sub_22BF6A368()
{
  result = qword_27D90B8F0;
  if (!qword_27D90B8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B8F0);
  }

  return result;
}

unint64_t sub_22BF6A3C0()
{
  result = qword_27D90B8F8;
  if (!qword_27D90B8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B8F8);
  }

  return result;
}

unint64_t sub_22BF6A418()
{
  result = qword_27D90B900;
  if (!qword_27D90B900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B900);
  }

  return result;
}

unint64_t sub_22BF6A470()
{
  result = qword_27D90B908;
  if (!qword_27D90B908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B908);
  }

  return result;
}

unint64_t sub_22BF6A4C8()
{
  result = qword_281073860;
  if (!qword_281073860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281073860);
  }

  return result;
}

unint64_t sub_22BF6A520()
{
  result = qword_281073868;
  if (!qword_281073868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281073868);
  }

  return result;
}

unint64_t sub_22BF6A578()
{
  result = qword_281073878;
  if (!qword_281073878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281073878);
  }

  return result;
}

unint64_t sub_22BF6A5D0()
{
  result = qword_281073880;
  if (!qword_281073880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281073880);
  }

  return result;
}

unint64_t sub_22BF6A628()
{
  result = qword_281073888;
  if (!qword_281073888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281073888);
  }

  return result;
}

unint64_t sub_22BF6A680()
{
  result = qword_281073890;
  if (!qword_281073890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281073890);
  }

  return result;
}

unint64_t sub_22BF6A6D8()
{
  result = qword_2810799C0;
  if (!qword_2810799C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810799C0);
  }

  return result;
}

unint64_t sub_22BF6A730()
{
  result = qword_2810799C8;
  if (!qword_2810799C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810799C8);
  }

  return result;
}

unint64_t sub_22BF6A788()
{
  result = qword_2810799A8;
  if (!qword_2810799A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810799A8);
  }

  return result;
}

unint64_t sub_22BF6A7E0()
{
  result = qword_2810799B0;
  if (!qword_2810799B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810799B0);
  }

  return result;
}

unint64_t sub_22BF6A838()
{
  result = qword_2810799D8;
  if (!qword_2810799D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810799D8);
  }

  return result;
}

unint64_t sub_22BF6A890()
{
  result = qword_2810799E0;
  if (!qword_2810799E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810799E0);
  }

  return result;
}

unint64_t sub_22BF6A8E8()
{
  result = qword_2810799F0;
  if (!qword_2810799F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810799F0);
  }

  return result;
}

unint64_t sub_22BF6A940()
{
  result = qword_2810799F8;
  if (!qword_2810799F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810799F8);
  }

  return result;
}

uint64_t sub_22BF6AA28(unint64_t *a1)
{

  return sub_22BF66DB4(a1);
}

uint64_t sub_22BF6AA80()
{

  return sub_22C26FDF4();
}

uint64_t sub_22BF6AAA8(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  v5 = (a1->n128_u64 + v2 + *(v3 + 56));
  v6 = a1 + v2;

  return sub_22BF53E38(v6, v5, 1);
}

uint64_t sub_22BF6AAF0()
{
  v2 = *(v0 + 8);
  result = *(v1 - 336);
  v4 = *(v1 - 392);
  return result;
}

uint64_t sub_22BF6AB0C()
{
  v1 = *(v0 - 240);
  v2 = *(*(v0 - 248) + 8);
  return *(v0 - 232);
}

double sub_22BF6AB50()
{
  *(v1 + 4) = v0;
  *(v1 + 12) = 2048;
  result = v2 - v3;
  *(v1 + 14) = v2 - v3;
  return result;
}

uint64_t sub_22BF6AB68()
{
  v1 = *(*(v0 - 168) + 8);
  result = *(v0 - 144);
  v3 = *(v0 - 448);
  return result;
}

uint64_t sub_22BF6AB8C()
{
  v2 = *(v0 - 248);

  return sub_22C273DE4();
}

uint64_t sub_22BF6ABB0()
{
  v2 = *(v0 - 144);

  return sub_22C273DE4();
}

char *sub_22BF6ABE0(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  result = a1 + v3;
  v5 = &result[*(v2 + 48)];
  return result;
}

__n128 *sub_22BF6ABF4(__n128 *result, __n128 a2)
{
  result[1] = a2;
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_22BF6AC2C()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 208);
  return result;
}

uint64_t sub_22BF6AC60()
{
  v2 = *(v0 + 8);
  result = *(v1 - 120);
  v4 = *(v1 - 456);
  return result;
}

uint64_t sub_22BF6AC74(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = *(v6 - 72);

  return sub_22BF58A38(a1, a2, a3, a4, v5, v4);
}

uint64_t sub_22BF6AC94()
{

  return swift_beginAccess();
}

uint64_t sub_22BF6ACAC()
{

  return sub_22C26E484();
}

uint64_t sub_22BF6ACC4()
{
}

void sub_22BF6ACDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_22BE19130();
  a22 = v27;
  a23 = v28;
  sub_22BE18A40();
  v29 = _s19SentinelFileManagerVMa();
  v30 = sub_22BE19448(v29);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  sub_22BE179EC();
  v33 = sub_22BF6D97C();
  v34 = sub_22BE179D8(v33);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  sub_22BE18DFC();
  v26(&a13);
  if (v23)
  {
    sub_22C271AD4();
    sub_22BE26A04();
    v37 = v23;
    v38 = sub_22C272084();
    sub_22C2737A4();
    sub_22BE22C98();
    if (sub_22BE25044())
    {
      sub_22BE2B808();
      v47 = sub_22BE3E5CC();
      v48 = swift_slowAlloc();
      *v25 = 136315394;
      v49 = v33;
      v50 = v48;
      v39 = *v24;
      v40 = v24[1];

      sub_22BF249B8(v24);
      sub_22BE61C88(v39, v40, &v50);
      sub_22BE25AE8();
      sub_22BE2316C();
      v41 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 14) = v41;
      *v47 = v41;
      sub_22BE1A6F8(&dword_22BE15000, v42, v43, "%s Failed to access sentinel file: %@");
      sub_22BE33928(v47, &qword_27D907870, &qword_22C27AB50);
      sub_22BE18614();
      sub_22BE26B64(v48);
      sub_22BE18614();
      sub_22BE3B050();

      v44 = sub_22BE1928C();
      v46 = v49;
    }

    else
    {

      sub_22BF249B8(v24);
      v44 = sub_22BE1928C();
      v46 = v33;
    }

    v45(v44, v46);
    swift_willThrow();
  }

  sub_22BE19650();
  sub_22BE18478();
}

void sub_22BF6AEE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19130();
  a19 = v25;
  a20 = v26;
  sub_22BE18A40();
  v27 = _s19SentinelFileManagerVMa();
  v28 = sub_22BE19448(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  sub_22BE179EC();
  v31 = sub_22BF6D97C();
  v32 = sub_22BE179D8(v31);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  sub_22BE18DFC();
  v23(&v46);
  if (v20)
  {
    sub_22C271AD4();
    sub_22BE26A04();
    v35 = v20;
    v36 = sub_22C272084();
    sub_22C2737A4();

    if (sub_22BE25044())
    {
      sub_22BE2B808();
      v43 = sub_22BE3E5CC();
      v44 = swift_slowAlloc();
      a10 = v44;
      sub_22BE1AC00(4.8151e-34);
      sub_22BF249B8(v21);
      sub_22BE61C88(v31, v24, &a10);

      sub_22BE196FC();
      v37 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 14) = v37;
      *v43 = v37;
      sub_22BE1A6F8(&dword_22BE15000, v38, v39, "%s Failed to access sentinel file: %@");
      sub_22BE33928(v43, &qword_27D907870, &qword_22C27AB50);
      sub_22BE183C8();
      sub_22BE26B64(v44);
      sub_22BE183C8();
      sub_22BE3B050();

      v40 = sub_22BE1928C();
      v42 = v45;
    }

    else
    {

      sub_22BF249B8(v21);
      v40 = sub_22BE1928C();
      v42 = v31;
    }

    v41(v40, v42);
    swift_willThrow();
  }

  sub_22BE18478();
}

void sub_22BF6B0F4()
{
  sub_22BE19130();
  sub_22BE18A40();
  v3 = _s19SentinelFileManagerVMa();
  v4 = sub_22BE19448(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22BE179EC();
  v7 = sub_22BF6D97C();
  v8 = sub_22BE179D8(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE18DFC();
  v2();
  if (v0)
  {
    sub_22C271AD4();
    sub_22BE26A04();
    v11 = v0;
    v12 = sub_22C272084();
    sub_22C2737A4();
    sub_22BE22C98();
    if (sub_22BE25044())
    {
      sub_22BE2B808();
      v13 = sub_22BE3E5CC();
      v21 = sub_22BE25720(v13);
      sub_22BE1A2F0(4.8151e-34);
      sub_22BF249B8(v1);
      sub_22BE19F84();
      sub_22BE25AE8();
      sub_22BE2316C();
      v14 = _swift_stdlib_bridgeErrorToNSError();
      sub_22BE1C354(v14);
      sub_22BE1A6F8(&dword_22BE15000, v15, v16, "%s Failed to access sentinel file: %@");
      sub_22BE33928(v7, &qword_27D907870, &qword_22C27AB50);
      sub_22BE18614();
      sub_22BE26B64(v21);
      sub_22BE18614();
      sub_22BE3B050();

      v17 = sub_22BE1928C();
      v19 = v20;
    }

    else
    {

      sub_22BF249B8(v1);
      v17 = sub_22BE1928C();
      v19 = v7;
    }

    v18(v17, v19);
    swift_willThrow();
  }

  sub_22BE19650();
  sub_22BE18478();
}

void sub_22BF6B2C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19130();
  a19 = v25;
  a20 = v26;
  sub_22BE18A40();
  v27 = _s19SentinelFileManagerVMa();
  v28 = sub_22BE19448(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  sub_22BE179EC();
  v31 = sub_22BF6D97C();
  v32 = sub_22BE179D8(v31);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  sub_22BE18DFC();
  v23(&v46);
  if (v20)
  {
    sub_22C271AD4();
    sub_22BE26A04();
    v35 = v20;
    v36 = sub_22C272084();
    sub_22C2737A4();

    if (sub_22BE25044())
    {
      sub_22BE2B808();
      v43 = sub_22BE3E5CC();
      v44 = swift_slowAlloc();
      a10 = v44;
      sub_22BE1AC00(4.8151e-34);
      sub_22BF249B8(v21);
      sub_22BE61C88(v31, v24, &a10);

      sub_22BE196FC();
      v37 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 14) = v37;
      *v43 = v37;
      sub_22BE1A6F8(&dword_22BE15000, v38, v39, "%s Failed to access sentinel file: %@");
      sub_22BE33928(v43, &qword_27D907870, &qword_22C27AB50);
      sub_22BE183C8();
      sub_22BE26B64(v44);
      sub_22BE183C8();
      sub_22BE3B050();

      v40 = sub_22BE1928C();
      v42 = v45;
    }

    else
    {

      sub_22BF249B8(v21);
      v40 = sub_22BE1928C();
      v42 = v31;
    }

    v41(v40, v42);
    swift_willThrow();
  }

  sub_22BE18478();
}

void sub_22BF6B4D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, unsigned __int8 a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_22BE19130();
  a22 = v24;
  a23 = v25;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v49 = sub_22C26DF64();
  v40 = sub_22BE179D8(v49);
  v42 = v41;
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v40);
  sub_22BE179EC();
  v47 = v46 - v45;
  a13 = 2;
  static ToolEmbeddingsDatabasePaths.storagePath<A, B>(toolboxDelegate:planGenerationToolboxDelegate:replica:overridenBaseURL:)(v39, v37, &a13, v35, v33, v31, v29, v27, v46 - v45);
  if (qword_281079BA0 != -1)
  {
    swift_once();
  }

  v48 = sub_22C271C14();
  sub_22BE199F4(v48, qword_281079BA8);
  _s11AccessTokenCMa();
  sub_22BF6D914(&qword_281079C90, _s11AccessTokenCMa);
  sub_22C271BC4();
  if (v23)
  {
    sub_22BF6D434();
    swift_allocError();
  }

  (*(v42 + 8))(v47, v49);
  sub_22BE18478();
}

id sub_22BF6B6B8()
{
  result = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  qword_27D9BA5B0 = result;
  return result;
}

uint64_t sub_22BF6B6EC(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_22BF6B748(a1);
  return v5;
}

uint64_t sub_22BF6B748(uint64_t a1)
{
  v3 = a1;
  v4 = *v1;
  if (qword_27D906398 != -1)
  {
    sub_22BE1B3FC();
    a1 = swift_once();
  }

  MEMORY[0x28223BE20](a1);
  sub_22BF6BBA0(sub_22BF6D8AC);
  if (v2)
  {

    v9 = *(*v1 + 48);
    v10 = *(*v1 + 52);
    result = swift_deallocPartialClassInstance();
    __break(1u);
  }

  else
  {
    v5 = OBJC_IVAR____TtCC30IntelligenceFlowPlannerSupport22ToolEmbeddingsDatabase11AccessToken_databaseURL;
    v6 = sub_22C26DF64();
    sub_22BE18000(v6);
    (*(v7 + 32))(v1 + v5, v3);
    return v1;
  }

  return result;
}

uint64_t sub_22BF6B8B4(uint64_t a1)
{
  v3 = sub_22C26DF64();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22C2720A4();
  v25 = *(v8 - 8);
  v9 = *(v25 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C271AD4();
  (*(v4 + 16))(v7, a1, v3);
  v12 = sub_22C272084();
  v13 = sub_22C2737C4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v23 = v8;
    v15 = v14;
    v22 = swift_slowAlloc();
    v26 = v22;
    *v15 = 136315138;
    sub_22BF6D914(&qword_28107F350, MEMORY[0x277CC9260]);
    v16 = sub_22C273FD4();
    v24 = v1;
    v18 = v17;
    (*(v4 + 8))(v7, v3);
    v19 = sub_22BE61C88(v16, v18, &v26);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_22BE15000, v12, v13, "Initializing access token for %s", v15, 0xCu);
    v20 = v22;
    sub_22BE26B64(v22);
    MEMORY[0x2318AD180](v20, -1, -1);
    MEMORY[0x2318AD180](v15, -1, -1);

    return (*(v25 + 8))(v11, v23);
  }

  else
  {

    (*(v4 + 8))(v7, v3);
    return (*(v25 + 8))(v11, v8);
  }
}

uint64_t sub_22BF6BC18()
{
  if (qword_27D906398 != -1)
  {
    sub_22BE1B3FC();
    swift_once();
  }

  v1 = qword_27D9BA5B0;

  [v1 lock];
  sub_22BF6BCE8();
  [v1 unlock];

  v2 = OBJC_IVAR____TtCC30IntelligenceFlowPlannerSupport22ToolEmbeddingsDatabase11AccessToken_databaseURL;
  v3 = sub_22C26DF64();
  sub_22BE18000(v3);
  (*(v4 + 8))(v0 + v2);
  return v0;
}

void sub_22BF6BCE8()
{
  v1 = v0;
  v2 = sub_22C2720A4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v33 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v30 - v7;
  sub_22C271AD4();

  v9 = sub_22C272084();
  v10 = sub_22C2737C4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v31 = v0;
    v12 = v11;
    v13 = swift_slowAlloc();
    v34 = v13;
    *v12 = 136315138;
    sub_22C26DF64();
    v32 = v3;
    sub_22BF6D914(&qword_28107F350, MEMORY[0x277CC9260]);
    v14 = sub_22C273FD4();
    v16 = sub_22BE61C88(v14, v15, &v34);
    v3 = v32;

    *(v12 + 4) = v16;
    _os_log_impl(&dword_22BE15000, v9, v10, "De-Initializing access token for %s and performing clean up work", v12, 0xCu);
    sub_22BE26B64(v13);
    MEMORY[0x2318AD180](v13, -1, -1);
    v17 = v12;
    v1 = v31;
    MEMORY[0x2318AD180](v17, -1, -1);
  }

  v18 = *(v3 + 8);
  v18(v8, v2);
  v19 = v1;
  sub_22BF6C06C();
  v20 = v33;
  if (v1)
  {
    sub_22C271AD4();
    v21 = v1;
    v22 = sub_22C272084();
    v23 = sub_22C2737A4();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = v2;
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      v27 = v19;
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 4) = v28;
      *v26 = v28;
      _os_log_impl(&dword_22BE15000, v22, v23, "Unable to perform database sync and recovery: %@", v25, 0xCu);
      sub_22BE33928(v26, &qword_27D907870, &qword_22C27AB50);
      MEMORY[0x2318AD180](v26, -1, -1);
      v29 = v25;
      v2 = v24;
      MEMORY[0x2318AD180](v29, -1, -1);
    }

    else
    {
    }

    v18(v20, v2);
  }
}

void sub_22BF6C06C()
{
  v180 = *MEMORY[0x277D85DE8];
  v158 = sub_22C2720A4();
  v157 = *(v158 - 8);
  v0 = *(v157 + 64);
  v1 = MEMORY[0x28223BE20](v158);
  v156 = &v152 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x28223BE20](v1);
  v153 = &v152 - v4;
  v5 = MEMORY[0x28223BE20](v3);
  v155 = &v152 - v6;
  MEMORY[0x28223BE20](v5);
  v154 = &v152 - v7;
  v8 = sub_22BE5CE4C(&qword_27D90B658, &unk_22C28E620);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v159 = &v152 - v10;
  v11 = _s19SentinelFileManagerVMa();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v173 = &v152 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v171 = &v152 - v15;
  v166 = sub_22BE5CE4C(&qword_27D90B660, &qword_22C28FE00);
  v16 = *(*(v166 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v166);
  v165 = &v152 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v174 = &v152 - v19;
  v20 = sub_22C26DEA4();
  v163 = *(v20 - 8);
  v164 = v20;
  v21 = *(v163 + 64);
  MEMORY[0x28223BE20](v20);
  v162 = &v152 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = sub_22C26DF64();
  v170 = *(v172 - 8);
  v23 = *(v170 + 64);
  v24 = MEMORY[0x28223BE20](v172);
  v176 = &v152 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v177 = &v152 - v26;
  v27 = sub_22C271FF4();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  v30 = MEMORY[0x28223BE20](v27);
  v32 = &v152 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v34 = &v152 - v33;
  v168 = sub_22C272024();
  v35 = *(v168 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v168);
  v38 = &v152 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C270B44();
  sub_22C271FE4();
  v39 = sub_22C272014();
  v40 = sub_22C2737F4();
  if (sub_22C273824())
  {
    v41 = swift_slowAlloc();
    v169 = v27;
    v42 = v41;
    *v41 = 0;
    v43 = sub_22C271FD4();
    _os_signpost_emit_with_name_impl(&dword_22BE15000, v39, v40, v43, "ToolEmeddingsDatabase.AccessTokenManager.LastReferenceDropped.CleanUpState", "", v42, 2u);
    v44 = v42;
    v27 = v169;
    MEMORY[0x2318AD180](v44, -1, -1);
  }

  (*(v28 + 16))(v32, v34, v27);
  v45 = sub_22C272064();
  v46 = *(v45 + 48);
  v47 = *(v45 + 52);
  swift_allocObject();
  v169 = sub_22C272054();
  (*(v28 + 8))(v34, v27);
  (*(v35 + 8))(v38, v168);
  v48 = sub_22C271C34();
  v49 = *(v48 + 48);
  v50 = *(v48 + 52);
  swift_allocObject();
  v168 = sub_22C271C44();
  v160 = OBJC_IVAR____TtCC30IntelligenceFlowPlannerSupport22ToolEmbeddingsDatabase11AccessToken_databaseURL;
  v178 = 0x796C6E4F64616572;
  v179 = 0xE800000000000000;
  v51 = *MEMORY[0x277CC91D8];
  v52 = v162;
  v53 = v163;
  v54 = *(v163 + 104);
  v55 = v164;
  v54(v162, v51, v164);
  v161 = sub_22BE699D0();
  sub_22C26DF54();
  v56 = *(v53 + 8);
  v56(v52, v55);
  v178 = 0x7469725764616572;
  v179 = 0xE900000000000065;
  v54(v52, v51, v55);
  sub_22C26DF54();
  v56(v52, v55);
  v57 = v166;
  v58 = *(v166 + 48);
  type metadata accessor for ToolEmbeddingsDatabase(0);
  v59 = v174;
  sub_22BF4319C(v174, &v174[v58]);
  v60 = v165;
  sub_22BF4375C(v59, v165);
  v61 = *(v57 + 48);
  v62 = v171;
  sub_22BF437CC(v60, v171);
  sub_22BF249B8(v60 + v61);
  sub_22BF4375C(v59, v60);
  v63 = v173;
  sub_22BF437CC(v60 + *(v57 + 48), v173);
  v64 = sub_22BF249B8(v60);
  MEMORY[0x28223BE20](v64);
  *(&v152 - 2) = v63;
  if (qword_281079B90 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_281079B98);
  v65 = v167;
  sub_22BF6ACDC(&dword_281079B98, sub_22BF43830, (&v152 - 4), v63, v66, v67, v68, v69, v152, v153, SWORD2(v153), SBYTE6(v153), SHIBYTE(v153), v154, v155, v156, v157, v158, v159, v160, v161, v162, v163);
  if (!v65)
  {
    v71 = v70;
    os_unfair_lock_unlock(&dword_281079B98);
    if (v71)
    {
      sub_22BF2CC4C();
    }

    MEMORY[0x28223BE20](v72);
    *(&v152 - 2) = v62;
    os_unfair_lock_lock(&dword_281079B98);
    sub_22BF6ACDC(&dword_281079B98, sub_22BF4386C, (&v152 - 4), v62, v73, v74, v75, v76, v152, v153, SWORD2(v153), SBYTE6(v153), SHIBYTE(v153), v154, v155, v156, v157, v158, v159, v160, v161, v162, v163);
    v78 = v77;
    os_unfair_lock_unlock(&dword_281079B98);
    if (v78)
    {
      sub_22BF2CC4C();
    }

    v80 = v62;
    MEMORY[0x28223BE20](v79);
    *(&v152 - 2) = v63;
    os_unfair_lock_lock(&dword_281079B98);
    v81 = v159;
    sub_22BF6B0F4();
    os_unfair_lock_unlock(&dword_281079B98);
    v88 = sub_22C26E164();
    v89 = sub_22BE1AEA8(v81, 1, v88);
    v90 = sub_22BE33928(v81, &qword_27D90B658, &unk_22C28E620);
    if (v89 == 1 || (v91 = sub_22BF2C188(v90), (v92 & 1) != 0))
    {
      v93 = v156;
      sub_22C271AD4();
      v94 = sub_22C272084();
      v95 = sub_22C2737C4();
      if (os_log_type_enabled(v94, v95))
      {
        v96 = swift_slowAlloc();
        *v96 = 0;
        _os_log_impl(&dword_22BE15000, v94, v95, "ToolEmbeddingsDatabase: No database available at readWrite path", v96, 2u);
        MEMORY[0x2318AD180](v96, -1, -1);
      }

      (*(v157 + 8))(v93, v158);
      sub_22BE33928(v59, &qword_27D90B660, &qword_22C28FE00);
      v97 = *(v170 + 8);
      v98 = v172;
      v97(v176, v172);
      v97(v177, v98);
      sub_22BF249B8(v63);
      v86 = v80;
      goto LABEL_14;
    }

    v99 = *&v91;
    v100 = v80;
    v101 = COERCE_DOUBLE(sub_22BF2C188(v91));
    if ((v102 & 1) == 0 && v99 <= v101)
    {
      v103 = v154;
      sub_22C271AD4();

      v104 = sub_22C272084();
      v105 = sub_22C2737C4();

      if (os_log_type_enabled(v104, v105))
      {
        v106 = swift_slowAlloc();
        v107 = swift_slowAlloc();
        LODWORD(v167) = v105;
        v108 = v107;
        v178 = v107;
        *v106 = 136315138;
        sub_22BF6D914(&qword_28107F350, MEMORY[0x277CC9260]);
        v83 = v172;
        v109 = sub_22C273FD4();
        v111 = sub_22BE61C88(v109, v110, &v178);

        *(v106 + 4) = v111;
        _os_log_impl(&dword_22BE15000, v104, v167, "ToolEmbeddingsDatabase: No need to copy readWrite to readOnly, as it readOnly is already the latest for %s", v106, 0xCu);
        sub_22BE26B64(v108);
        MEMORY[0x2318AD180](v108, -1, -1);
        MEMORY[0x2318AD180](v106, -1, -1);

        (*(v157 + 8))(v154, v158);
        sub_22BE33928(v174, &qword_27D90B660, &qword_22C28FE00);
        v82 = *(v170 + 8);
        v82(v176, v83);
      }

      else
      {

        (*(v157 + 8))(v103, v158);
        sub_22BE33928(v59, &qword_27D90B660, &qword_22C28FE00);
        v82 = *(v170 + 8);
        v83 = v172;
        v82(v176, v172);
      }

      v84 = v177;
      goto LABEL_12;
    }

    v112 = v155;
    sub_22C271AD4();

    v113 = sub_22C272084();
    v114 = sub_22C2737C4();

    if (os_log_type_enabled(v113, v114))
    {
      v115 = swift_slowAlloc();
      v116 = swift_slowAlloc();
      v178 = v116;
      *v115 = 136315138;
      sub_22BF6D914(&qword_28107F350, MEMORY[0x277CC9260]);
      v117 = sub_22C273FD4();
      v119 = sub_22BE61C88(v117, v118, &v178);

      *(v115 + 4) = v119;
      _os_log_impl(&dword_22BE15000, v113, v114, "ToolEmbeddingsDatabase: Copying readWrite to readOnly for %s", v115, 0xCu);
      sub_22BE26B64(v116);
      MEMORY[0x2318AD180](v116, -1, -1);
      MEMORY[0x2318AD180](v115, -1, -1);

      v120 = *(v157 + 8);
      v121 = v155;
    }

    else
    {

      v120 = *(v157 + 8);
      v121 = v112;
    }

    v175 = v120;
    v120(v121, v158);
    v122 = objc_opt_self();
    v123 = [v122 defaultManager];
    v124 = v176;
    sub_22C26DF14();
    v125 = sub_22C272FF4();

    v126 = [v123 fileExistsAtPath_];

    if (!v126)
    {

      sub_22BE33928(v174, &qword_27D90B660, &qword_22C28FE00);
      v141 = *(v170 + 8);
      v142 = v172;
      v141(v124, v172);
      v141(v177, v142);
      v85 = v173;
      goto LABEL_13;
    }

    v127 = [v122 defaultManager];
    v128 = v177;
    sub_22C26DF14();
    v129 = sub_22C272FF4();

    v130 = [v127 fileExistsAtPath_];

    if (v130)
    {
      v131 = [v122 defaultManager];
      v132 = sub_22C26DEE4();
      v178 = 0;
      v133 = [v131 removeItemAtURL:v132 error:&v178];

      if (!v133)
      {
        v144 = v178;
        sub_22C26DE84();

        swift_willThrow();

        v63 = v173;
        v136 = v176;
        v128 = v177;
        goto LABEL_38;
      }

      v134 = v178;
      v128 = v177;
    }

    v135 = [v122 defaultManager];
    v136 = v176;
    v137 = sub_22C26DEE4();
    v138 = sub_22C26DEE4();
    v178 = 0;
    v139 = [v135 copyItemAtURL:v137 toURL:v138 error:&v178];

    if (v139)
    {
      v140 = v178;
      sub_22BF2B1C8();
      v63 = v173;
      v146 = v153;
      sub_22C271AD4();
      v147 = sub_22C272084();
      v148 = sub_22C2737C4();
      v149 = os_log_type_enabled(v147, v148);
      v145 = v174;
      if (v149)
      {
        v150 = swift_slowAlloc();
        *v150 = 0;
        _os_log_impl(&dword_22BE15000, v147, v148, "ToolEmbeddingsDatabase: Successfully copied readWrite to readOnly", v150, 2u);
        MEMORY[0x2318AD180](v150, -1, -1);

        v151 = v153;
      }

      else
      {

        v151 = v146;
      }

      v175(v151, v158);
      goto LABEL_11;
    }

    v143 = v178;
    sub_22C26DE84();

    swift_willThrow();

    v63 = v173;
LABEL_38:
    v145 = v174;
LABEL_11:
    sub_22BE33928(v145, &qword_27D90B660, &qword_22C28FE00);
    v82 = *(v170 + 8);
    v83 = v172;
    v82(v136, v172);
    v84 = v128;
LABEL_12:
    v82(v84, v83);
    v85 = v63;
LABEL_13:
    sub_22BF249B8(v85);
    v86 = v100;
LABEL_14:
    sub_22BF249B8(v86);
    sub_22BF6D528();

    v87 = *MEMORY[0x277D85DE8];
    return;
  }

  os_unfair_lock_unlock(&dword_281079B98);
  __break(1u);
}

uint64_t sub_22BF6D2F4()
{
  sub_22BF6BC18();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t _s11AccessTokenCMa()
{
  result = qword_27D90B910;
  if (!qword_27D90B910)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22BF6D3A0()
{
  result = sub_22C26DF64();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_22BF6D434()
{
  result = qword_27D90B920;
  if (!qword_27D90B920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B920);
  }

  return result;
}

unint64_t sub_22BF6D4D4()
{
  result = qword_27D90B928;
  if (!qword_27D90B928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B928);
  }

  return result;
}

uint64_t sub_22BF6D528()
{
  v0 = sub_22C272034();
  v21 = *(v0 - 8);
  v1 = *(v21 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v19[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = sub_22C271FF4();
  v4 = *(v22 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v22);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_22C272024();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22C270B44();
  v13 = sub_22C272014();
  sub_22C272044();
  v20 = sub_22C2737E4();
  if (sub_22C273824())
  {

    sub_22C272074();

    v14 = v21;
    if ((*(v21 + 88))(v3, v0) == *MEMORY[0x277D85B00])
    {
      v15 = "[Error] Interval already ended";
    }

    else
    {
      (*(v14 + 8))(v3, v0);
      v15 = "";
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = sub_22C271FD4();
    _os_signpost_emit_with_name_impl(&dword_22BE15000, v13, v20, v17, "ToolEmeddingsDatabase.AccessTokenManager.LastReferenceDropped.CleanUpState", v15, v16, 2u);
    MEMORY[0x2318AD180](v16, -1, -1);
  }

  (*(v4 + 8))(v7, v22);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_22BF6D814@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D41D58];
  v3 = sub_22C271C24();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_22BF6D8C8()
{
  v0 = sub_22C271C14();
  sub_22BE952A4(v0, qword_281079BA8);
  sub_22BE199F4(v0, qword_281079BA8);
  return sub_22C271C04();
}

uint64_t sub_22BF6D914(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22BF6D97C()
{

  return sub_22C2720A4();
}

uint64_t ToolEmbeddingsDatabaseReplica.rawValue.getter()
{
  if (*v0)
  {
    result = 0x7469725764616572;
  }

  else
  {
    result = 0x796C6E4F64616572;
  }

  *v0;
  return result;
}

uint64_t static ToolEmbeddingsDatabasePaths.storagePath<A, B>(toolboxDelegate:planGenerationToolboxDelegate:replica:overridenBaseURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v53 = a7;
  v54 = a8;
  v51 = a5;
  v52 = a6;
  v49 = a1;
  v50 = a2;
  v56 = a9;
  v55 = sub_22C26DEA4();
  sub_22BE17C68();
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22BE179EC();
  v18 = v17 - v16;
  v19 = sub_22BE5CE4C(&qword_27D908088, &qword_22C278EC0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v49 - v21;
  v23 = sub_22C26DF64();
  sub_22BE17C68();
  v25 = v24;
  v27 = *(v26 + 64);
  v29 = MEMORY[0x28223BE20](v28);
  v31 = &v49 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v29);
  v34 = &v49 - v33;
  MEMORY[0x28223BE20](v32);
  v36 = &v49 - v35;
  v37 = *a3;
  sub_22BF6DDAC(a4, v22);
  if (sub_22BE1AEA8(v22, 1, v23) == 1)
  {
    sub_22BF6DE1C(v22);
    sub_22C271A84();
    LOBYTE(v57) = v37;
    static ToolEmbeddingsDatabasePaths.baseRelativeStoragePath<A, B>(toolboxDelegate:planGenerationToolboxDelegate:replica:)(v49, v50, &v57, v51, v52, v53, v54, v31);
    v38 = sub_22C26DF14();
    v40 = v39;
    v41 = *(v25 + 8);
    v41(v31, v23);
    v57 = v38;
    v58 = v40;
    v42 = v55;
    (*(v12 + 104))(v18, *MEMORY[0x277CC91D8], v55);
    sub_22BE699D0();
    sub_22C26DF54();
    (*(v12 + 8))(v18, v42);

    return (v41)(v34, v23);
  }

  else
  {
    v44 = v12;
    v45 = v55;
    v46 = *(v25 + 32);
    v46(v36, v22, v23);
    if (v37 == 2)
    {
      return (v46)(v56, v36, v23);
    }

    else
    {
      v47 = 0x796C6E4F64616572;
      if (v37)
      {
        v47 = 0x7469725764616572;
        v48 = 0xE900000000000065;
      }

      else
      {
        v48 = 0xE800000000000000;
      }

      v57 = v47;
      v58 = v48;
      (*(v44 + 104))(v18, *MEMORY[0x277CC91D8], v45);
      sub_22BE699D0();
      sub_22C26DF54();
      (*(v44 + 8))(v18, v45);

      return (*(v25 + 8))(v36, v23);
    }
  }
}

uint64_t sub_22BF6DDAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE5CE4C(&qword_27D908088, &qword_22C278EC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BF6DE1C(uint64_t a1)
{
  v2 = sub_22BE5CE4C(&qword_27D908088, &qword_22C278EC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static ToolEmbeddingsDatabasePaths.baseRelativeStoragePath<A, B>(toolboxDelegate:planGenerationToolboxDelegate:replica:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v86 = a7;
  v87 = a5;
  v96 = a6;
  v94 = a4;
  v85 = a2;
  v98 = a1;
  v90 = a8;
  v9 = type metadata accessor for ToolboxVersion(0);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  sub_22BE179EC();
  v82 = (v13 - v12);
  v14 = sub_22C26DEA4();
  sub_22BE17C68();
  v16 = v15;
  v102 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22BE179EC();
  v22 = v21 - v20;
  v23 = sub_22BE5CE4C(&qword_27D908088, &qword_22C278EC0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = &v78 - v25;
  v99 = sub_22C26DF64();
  sub_22BE17C68();
  v91 = v27;
  v29 = *(v28 + 64);
  v31 = MEMORY[0x28223BE20](v30);
  v78 = &v78 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v80 = &v78 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v97 = &v78 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v95 = &v78 - v38;
  MEMORY[0x28223BE20](v37);
  v83 = &v78 - v39;
  v84 = *a3;
  sub_22BE19DC4(v26, 1, 1, v40);
  v41 = *MEMORY[0x277CC91D8];
  v42 = *(v16 + 104);
  v42(v22, v41, v14);
  v100 = v16 + 104;
  v101 = v42;
  sub_22C26DF44();
  v81 = *(v96 + 16);
  v43 = v82;
  v81(v94);
  v44 = *(v10 + 28);
  v45 = sub_22C26FDE4();
  v47 = v46;
  v48 = sub_22C26FDF4();
  v49 = v43 + v44;
  v50 = v43;
  (*(*(v48 - 8) + 8))(v49, v48);
  v103 = v45;
  v104 = v47;
  v51 = v14;
  v42(v22, v41, v14);
  v92 = sub_22BE699D0();
  v52 = v80;
  sub_22C26DF54();
  v53 = *(v102 + 8);
  v102 += 8;
  v79 = v53;
  (v53)(v22, v14);

  v88 = *(v91 + 8);
  v93 = v91 + 8;
  v54 = v99;
  v88(v52, v99);
  (v81)(v94, v96);
  v55 = v41;
  v56 = *v50;
  sub_22BF6E584(v50);
  v103 = v56;
  v103 = sub_22C273FD4();
  v104 = v57;
  v58 = v41;
  v89 = v41;
  v59 = v101;
  v101(v22, v58, v51);
  v60 = v97;
  sub_22C26DF54();
  v61 = sub_22BE1BF88();
  v62 = v79;
  v79(v61);

  v63 = v54;
  v64 = v88;
  v88(v60, v63);
  v103 = (*(v86 + 40))(v87);
  v104 = v65;
  v59(v22, v55, v51);
  v66 = v83;
  v67 = v95;
  sub_22C26DF54();
  v68 = sub_22BE1BF88();
  v62(v68);

  v69 = v99;
  v64(v67, v99);
  v103 = 0x786F426C6F6F74;
  v104 = 0xE700000000000000;
  v101(v22, v89, v51);
  sub_22C26DF54();
  v70 = sub_22BE1BF88();
  v62(v70);
  result = (v64)(v66, v69);
  if (v84 != 2)
  {
    v72 = 0x796C6E4F64616572;
    if (v84)
    {
      v72 = 0x7469725764616572;
      v73 = 0xE900000000000065;
    }

    else
    {
      v73 = 0xE800000000000000;
    }

    v103 = v72;
    v104 = v73;
    v101(v22, v89, v51);
    v74 = v78;
    v75 = v90;
    sub_22C26DF54();
    v76 = sub_22BE1BF88();
    v62(v76);

    v77 = v99;
    v88(v75, v99);
    return (*(v91 + 32))(v75, v74, v77);
  }

  return result;
}

uint64_t sub_22BF6E584(uint64_t a1)
{
  v2 = type metadata accessor for ToolboxVersion(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

IntelligenceFlowPlannerSupport::ToolEmbeddingsDatabaseReplica_optional __swiftcall ToolEmbeddingsDatabaseReplica.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22C273DC4();

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

unint64_t sub_22BF6E654()
{
  result = qword_27D90B930;
  if (!qword_27D90B930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B930);
  }

  return result;
}

uint64_t sub_22BF6E6CC@<X0>(uint64_t *a1@<X8>)
{
  result = ToolEmbeddingsDatabaseReplica.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for ToolEmbeddingsDatabasePaths(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ToolEmbeddingsDatabaseReplica(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t static ToolkitCacheKey.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_22C274014();
  }
}

uint64_t ToolkitCacheKey.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_22C272F44();
}

uint64_t ToolkitCacheKey.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_22C274154();
  sub_22C272F44();
  return sub_22C2741A4();
}

uint64_t sub_22BF6E910()
{
  v1 = *v0;
  v2 = v0[1];
  sub_22C274154();
  sub_22C272F44();
  return sub_22C2741A4();
}

uint64_t ToolkitCache.init(parameters:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22BE5CE4C(&qword_27D90B938, &qword_22C28FF30);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v7 = sub_22C271BB4();
  v8 = sub_22C271B74();
  sub_22BE18524(v8);
  (*(v9 + 8))(a1);
  *(v2 + 16) = v7;
  return v2;
}

uint64_t ToolkitCache.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

unint64_t sub_22BF6EA18()
{
  result = qword_28107BC40;
  if (!qword_28107BC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28107BC40);
  }

  return result;
}

uint64_t sub_22BF6EA6C(uint64_t a1, uint64_t a2)
{
  result = sub_22BF6EB10(&qword_27D90B940, a2, type metadata accessor for ToolkitCache);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22BF6EB10(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for ToolRetrievalLimitForQueryDecoration(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t ToolQuery.query.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ToolQuery.init(query:appBundleIds:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t ToolQuery.Output.definition.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22C270B74();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ToolQuery.Output.init(definition:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22C270B74();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_22BF6ED70(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6974696E69666564 && a2 == 0xEA00000000006E6FLL)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_22C274014();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22BF6EE10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BF6ED70(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22BF6EE3C(uint64_t a1)
{
  v2 = sub_22BF6F008();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BF6EE78(uint64_t a1)
{
  v2 = sub_22BF6F008();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ToolQuery.Output.encode(to:)(void *a1)
{
  v2 = sub_22BE5CE4C(&qword_27D90B948, &qword_22C2900C0);
  sub_22BE179D8(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  v9 = &v12 - v8;
  v10 = a1[4];
  sub_22BE1BD3C(a1, a1[3]);
  sub_22BF6F008();
  sub_22C274234();
  sub_22C270B74();
  sub_22BF6F2F8(&qword_27D90B958);
  sub_22C273FA4();
  return (*(v4 + 8))(v9, v2);
}

unint64_t sub_22BF6F008()
{
  result = qword_27D90B950;
  if (!qword_27D90B950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B950);
  }

  return result;
}

uint64_t ToolQuery.Output.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = sub_22C270B74();
  v4 = sub_22BE179D8(v3);
  v27 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v28 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22BE5CE4C(&qword_27D90B960, &qword_22C2900C8);
  sub_22BE179D8(v9);
  v11 = v10;
  v13 = *(v12 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v14);
  v16 = &v25 - v15;
  v17 = type metadata accessor for ToolQuery.Output();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1[4];
  sub_22BE1BD3C(a1, a1[3]);
  sub_22BF6F008();
  v22 = v29;
  sub_22C274214();
  if (!v22)
  {
    v23 = v27;
    sub_22BF6F2F8(&qword_27D90B968);
    sub_22C273EB4();
    (*(v11 + 8))(v16, v9);
    (*(v23 + 32))(v20, v28, v3);
    sub_22BF6F33C(v20, v26);
  }

  return sub_22BE26B64(a1);
}

uint64_t type metadata accessor for ToolQuery.Output()
{
  result = qword_27D90B990;
  if (!qword_27D90B990)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22BF6F2F8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_22C270B74();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22BF6F33C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolQuery.Output();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static ToolQuery.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (v5 = sub_22C274014(), result = 0, (v5 & 1) != 0))
  {
    if (v2)
    {
      if (v3)
      {

        v7 = sub_22BF6FB9C(v2, v3);

        if (v7)
        {
          return 1;
        }
      }
    }

    else if (!v3)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_22BF6F464(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7972657571 && a2 == 0xE500000000000000;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C646E7542707061 && a2 == 0xEC00000073644965)
  {

    return 1;
  }

  else
  {
    v7 = sub_22C274014();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_22BF6F52C(char a1)
{
  if (a1)
  {
    return 0x6C646E7542707061;
  }

  else
  {
    return 0x7972657571;
  }
}

uint64_t sub_22BF6F570@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BF6F464(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BF6F598(uint64_t a1)
{
  v2 = sub_22BF6FD44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BF6F5D4(uint64_t a1)
{
  v2 = sub_22BF6FD44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ToolQuery.encode(to:)(void *a1)
{
  v4 = sub_22BE5CE4C(&qword_27D90B970, &unk_22C2900D0);
  sub_22BE179D8(v4);
  v17 = v5;
  v7 = *(v6 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - v9;
  v11 = *v1;
  v12 = v1[1];
  v16 = v1[2];
  v13 = a1[4];
  sub_22BE1BD3C(a1, a1[3]);
  sub_22BF6FD44();
  sub_22C274234();
  v20 = 0;
  sub_22C273F54();
  if (!v2)
  {
    v18 = v16;
    v19 = 1;
    sub_22BE5CE4C(&qword_27D90B670, &qword_22C28E6C8);
    sub_22BF66DB4(&qword_27D90B680);
    sub_22C273F34();
  }

  return (*(v17 + 8))(v10, v4);
}

uint64_t ToolQuery.hash(into:)(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  sub_22C272F44();
  if (!v5)
  {
    return sub_22C274174();
  }

  sub_22C274174();

  return sub_22BF6FF38(a1, v5);
}

uint64_t ToolQuery.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_22C274154();
  sub_22C272F44();
  sub_22C274174();
  if (v3)
  {
    sub_22BF6FF38(__src, v3);
  }

  return sub_22C2741A4();
}

uint64_t ToolQuery.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_22BE5CE4C(&qword_27D90B980, &qword_22C2900E0);
  sub_22BE179D8(v5);
  v7 = *(v6 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  v9 = a1[4];
  sub_22BE1BD3C(a1, a1[3]);
  sub_22BF6FD44();
  sub_22C274214();
  if (v2)
  {
    return sub_22BE26B64(a1);
  }

  v10 = sub_22C273E64();
  v12 = v11;
  sub_22BE5CE4C(&qword_27D90B670, &qword_22C28E6C8);
  sub_22BF66DB4(&qword_28106DB78);
  sub_22C273E44();
  v13 = sub_22BE17B54();
  v14(v13);
  *a2 = v10;
  a2[1] = v12;
  a2[2] = v16;

  sub_22BE26B64(a1);
}

uint64_t sub_22BF6FB20()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_22C274154();
  sub_22C272F44();
  sub_22C274174();
  if (v3)
  {
    sub_22BF6FF38(__src, v3);
  }

  return sub_22C2741A4();
}

uint64_t sub_22BF6FB9C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v22 = result;
  if (v7)
  {
    while (2)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_13:
      v12 = (*(result + 48) + 16 * (v9 | (v3 << 6)));
      v14 = *v12;
      v13 = v12[1];
      v15 = *(a2 + 40);
      sub_22C274154();

      sub_22C272F44();
      v16 = sub_22C2741A4();
      v17 = ~(-1 << *(a2 + 32));
      do
      {
        v18 = v16 & v17;
        if (((*(a2 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
        {

          return 0;
        }

        v19 = (*(a2 + 48) + 16 * v18);
        if (*v19 == v14 && v19[1] == v13)
        {
          break;
        }

        v21 = sub_22C274014();
        v16 = v18 + 1;
      }

      while ((v21 & 1) == 0);

      result = v22;
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_22BF6FD44()
{
  result = qword_27D90B978;
  if (!qword_27D90B978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B978);
  }

  return result;
}

uint64_t sub_22BF6FD98(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v27 = result;
  if (v7)
  {
    while (2)
    {
      v9 = __clz(__rbit64(v7));
      v28 = (v7 - 1) & v7;
LABEL_13:
      v12 = *(*(result + 48) + 8 * (v9 | (v3 << 6)));
      v13 = *(a2 + 40);
      sub_22C274154();

      sub_22BEB8E5C(v30, v12, v14, v15, v16, v17, v18, v19, v26, v27, v28, v30[0], v30[1], v30[2], v30[3], v30[4], v30[5], v30[6], v30[7], v30[8]);
      v20 = sub_22C2741A4();
      v21 = ~(-1 << *(a2 + 32));
      do
      {
        v22 = v20 & v21;
        if (((*(a2 + 56 + (((v20 & v21) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v20 & v21)) & 1) == 0)
        {

          return 0;
        }

        v23 = *(*(a2 + 48) + 8 * v22);

        sub_22BEA5C9C();
        v25 = v24;

        v20 = v22 + 1;
      }

      while ((v25 & 1) == 0);

      result = v27;
      v7 = v29;
      if (v29)
      {
        continue;
      }

      break;
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v28 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22BF6FF38(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_22C2741A4();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  for (i = 0; v5; v8 ^= v15)
  {
    v10 = i;
LABEL_9:
    v11 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v12 = (*(a2 + 48) + ((v10 << 10) | (16 * v11)));
    v13 = *v12;
    v14 = v12[1];
    sub_22C274154();

    sub_22C272F44();
    v15 = sub_22C2741A4();
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x2318AC860](v8);
    }

    v5 = *(a2 + 56 + 8 * v10);
    ++i;
    if (v5)
    {
      i = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_22BF70090()
{
  result = qword_27D90B988;
  if (!qword_27D90B988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B988);
  }

  return result;
}

uint64_t sub_22BF7011C()
{
  result = sub_22C270B74();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ToolQuery.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ToolQuery.Output.CodingKeys(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_22BF70314()
{
  result = qword_27D90B9A0;
  if (!qword_27D90B9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B9A0);
  }

  return result;
}

unint64_t sub_22BF7036C()
{
  result = qword_27D90B9A8;
  if (!qword_27D90B9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B9A8);
  }

  return result;
}

unint64_t sub_22BF703C4()
{
  result = qword_27D90B9B0;
  if (!qword_27D90B9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B9B0);
  }

  return result;
}

unint64_t sub_22BF7041C()
{
  result = qword_27D90B9B8;
  if (!qword_27D90B9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B9B8);
  }

  return result;
}

unint64_t sub_22BF70474()
{
  result = qword_27D90B9C0;
  if (!qword_27D90B9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B9C0);
  }

  return result;
}

unint64_t sub_22BF704CC()
{
  result = qword_27D90B9C8;
  if (!qword_27D90B9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B9C8);
  }

  return result;
}

uint64_t sub_22BF70520(uint64_t *a1)
{
  v2 = *(sub_22BE5CE4C(&unk_27D907700, &qword_22C290BA0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_22C1160D8(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_22BF86F80(v7);
  *a1 = v3;
  return result;
}

uint64_t sub_22BF705DC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  *a2 = v4;
  return result;
}

void sub_22BF70748(_BYTE *a1@<X8>, unsigned __int8 *a2@<X0>)
{
  v3 = *v2;
  v4 = *a2;
  sub_22BF70754(a1);
}

uint64_t sub_22BF70784@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *v2;
  if ((*v2 & result) != 0)
  {
    *v2 = v3 & ~result;
  }

  *a2 = v3 & result;
  a2[1] = (v3 & result) == 0;
  return result;
}

uint64_t sub_22BF707B8@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *v2;
  v4 = *v2 & result;
  *v2 |= result;
  *a2 = v4;
  a2[1] = (v3 & result) == 0;
  return result;
}

uint64_t sub_22BF708B8@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = HydrationOptions.init(rawValue:)(*a1, &v4);
  *a2 = v4;
  a2[1] = 0;
  return result;
}

uint64_t sub_22BF708F8@<X0>(_BYTE *a1@<X8>)
{
  result = HydrationOptions.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_22BF70924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v18 = swift_task_alloc();
  *(v9 + 16) = v18;
  *v18 = v9;
  v18[1] = sub_22BE40CC8;

  return ConcurrencySafeToolExecutionInterface.hydrate(value:)(a1, a2, a3, a4, v14, v15, v16, v17, a9);
}

uint64_t sub_22BF709E4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22BE40CC8;

  return sub_22BF71158(a1, a2, 0);
}

uint64_t ConcurrencySafeToolExecutionInterface.hydrate(value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_22BE3FDF4();
  sub_22BE2035C();
  *(v9 + 32) = 0;
  v11 = *(v10 + 88);
  sub_22BE2573C();
  v27 = v12 + *v12;
  v14 = *(v13 + 4);
  v15 = swift_task_alloc();
  v16 = sub_22BE23AE4(v15);
  *v16 = v17;
  v16[1] = sub_22BF70BC8;
  sub_22BE239DC();

  return v23(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27);
}

uint64_t sub_22BF70BC8()
{
  sub_22BE183F0();
  sub_22BE190F0();
  sub_22BE232FC();
  *v3 = v2;
  v5 = *(v4 + 16);
  v6 = *v1;
  sub_22BE18C2C();
  *v7 = v6;
  *(v8 + 24) = v0;

  if (v0)
  {
    sub_22BE201FC();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    sub_22BE17A94();

    return v12();
  }
}

uint64_t sub_22BF70CDC()
{
  sub_22BE17A94();
  v1 = *(v0 + 24);
  return v2();
}

uint64_t sub_22BF70D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v14 = swift_task_alloc();
  *(v10 + 16) = v14;
  *v14 = v10;
  v14[1] = sub_22BF8894C;

  return ConcurrencySafeToolExecutionInterface.hydrate(values:)(a1, a2, a3, v15, v16, v17, v18, v19, a9, a10);
}

uint64_t sub_22BF70DAC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22BF8894C;

  return (sub_22BF72DB4)(a1, 0);
}

uint64_t ConcurrencySafeToolExecutionInterface.hydrate(values:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BF88C68();
  sub_22BE2035C();
  *(v10 + 32) = 0;
  v12 = *(v11 + 96);
  sub_22BE1AC20();
  v28 = v13 + *v13;
  v15 = *(v14 + 4);
  v16 = swift_task_alloc();
  v17 = sub_22BE2C6B0(v16);
  *v17 = v18;
  sub_22BE23AF4(v17);
  sub_22BF88C54();

  return v23(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10);
}

uint64_t sub_22BF70F74()
{
  sub_22BE183F0();
  v3 = v2;
  sub_22BE190F0();
  sub_22BE232FC();
  *v5 = v4;
  v7 = *(v6 + 16);
  v8 = *v1;
  sub_22BE18C2C();
  *v9 = v8;
  *(v10 + 24) = v0;

  if (v0)
  {
    sub_22BE201FC();

    return MEMORY[0x2822009F8](v11, v12, v13);
  }

  else
  {
    sub_22BE2589C();

    return v14(v3);
  }
}

uint64_t sub_22BF71090()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22BE40CC8;

  return ConcurrencySafeToolExecutionInterface.hydrate(value:options:)();
}

uint64_t sub_22BF71158(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 224) = a2;
  *(v4 + 232) = v3;
  *(v4 + 344) = a3;
  *(v4 + 216) = a1;
  v5 = sub_22C2720A4();
  *(v4 + 240) = v5;
  v6 = *(v5 - 8);
  *(v4 + 248) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 256) = swift_task_alloc();
  v8 = *(*(sub_22BE5CE4C(&qword_27D907400, &unk_22C274F90) - 8) + 64) + 15;
  *(v4 + 264) = swift_task_alloc();
  *(v4 + 272) = swift_task_alloc();
  v9 = sub_22C272874();
  *(v4 + 280) = v9;
  v10 = *(v9 - 8);
  *(v4 + 288) = v10;
  v11 = *(v10 + 64) + 15;
  *(v4 + 296) = swift_task_alloc();
  *(v4 + 304) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BF712CC, 0, 0);
}

uint64_t sub_22BF712CC()
{
  sub_22BE183F0();
  (*(v0[36] + 16))(v0[38], v0[28], v0[35]);
  static SessionInjectionContext<>.inherited.getter(v0 + 2);
  v1 = sub_22BE17D50();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_22BF71344()
{
  sub_22BE1C1B4();
  sub_22BE2B984(v0 + 16, v0 + 96, &qword_27D90B178, &qword_22C28BE40);
  if (*(v0 + 120))
  {
    sub_22BE49224((v0 + 96), v0 + 56);
    v1 = *(v0 + 80);
    v2 = *(v0 + 88);
    sub_22BF88D74((v0 + 56));
    v3 = *(v2 + 8);
    sub_22BE2573C();
    v35 = v4 + *v4;
    v6 = *(v5 + 4);
    v7 = swift_task_alloc();
    *(v0 + 312) = v7;
    sub_22BE2B838(&qword_27D907DA8);
    sub_22BE19FA0(&qword_27D907D90);
    sub_22BE36CAC();
    *v7 = v8;
    v7[1] = sub_22BF71608;
    v9 = *(v0 + 304);
    v10 = *(v0 + 280);
    sub_22BE23898(v11, *(v0 + 264));

    __asm { BRAA            X8, X16 }
  }

  v13 = *(v0 + 272);
  v14 = *(v0 + 280);
  sub_22BE33928(v0 + 96, &qword_27D90B178, &qword_22C28BE40);
  sub_22BE1A140();
  sub_22BE19DC4(v15, v16, v17, v14);
  v19 = *(v0 + 272);
  v18 = *(v0 + 280);
  sub_22BE3555C();
  if (!v20)
  {
    sub_22BE3C49C();
    sub_22BE33928(v0 + 16, &qword_27D90B178, &qword_22C28BE40);
    v29 = sub_22BF88968();
    v30(v29, v18);
    v31 = sub_22BE3BF10();
    v32(v31);

    sub_22BE1A26C();
    sub_22BE2330C();

    __asm { BRAA            X1, X16 }
  }

  sub_22BE33928(v19, &qword_27D907400, &unk_22C274F90);
  swift_task_alloc();
  sub_22BE33A50();
  *(v0 + 320) = v21;
  *v21 = v22;
  sub_22BE3E908(v21);
  sub_22BE2330C();

  return sub_22BF7C380(v23, v24, v25, v26);
}

uint64_t sub_22BF71608()
{
  sub_22BE183F0();
  sub_22BE190F0();
  v2 = *(v1 + 312);
  v3 = *v0;
  sub_22BE18C2C();
  *v4 = v3;

  v5 = sub_22BE17D50();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_22BF71918()
{
  sub_22BE183F0();
  sub_22BE190F0();
  sub_22BE232FC();
  *v3 = v2;
  v5 = *(v4 + 320);
  v6 = *v1;
  sub_22BE18C2C();
  *v7 = v6;
  *(v8 + 328) = v0;

  sub_22BE201FC();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22BF71A10()
{
  sub_22BE1C1B4();
  sub_22BE2B984(v0 + 16, v0 + 176, &qword_27D90B178, &qword_22C28BE40);
  if (*(v0 + 200))
  {
    sub_22BE49224((v0 + 176), v0 + 136);
    v1 = *(v0 + 160);
    v2 = *(v0 + 168);
    sub_22BF88D74((v0 + 136));
    v3 = *(v2 + 16);
    sub_22BE2573C();
    v34 = v4 + *v4;
    v6 = *(v5 + 4);
    v7 = swift_task_alloc();
    *(v0 + 336) = v7;
    sub_22BE2B838(&qword_27D907DA8);
    sub_22BE19FA0(&qword_27D907D90);
    sub_22BE36CAC();
    *v7 = v8;
    v7[1] = sub_22BF71D7C;
    v9 = *(v0 + 296);
    v10 = *(v0 + 280);
    sub_22BE30F2C(v11);
    sub_22BE25494();

    __asm { BRAA            X8, X16 }
  }

  sub_22BE22C8C();
  sub_22BE33928(v14, v15, v16);
  v18 = *(v0 + 296);
  v17 = *(v0 + 304);
  v19 = *(v0 + 280);
  v20 = *(v0 + 288);
  v22 = *(v0 + 264);
  v21 = *(v0 + 272);
  v35 = *(v0 + 256);
  v23 = *(v0 + 216);
  sub_22BE22C8C();
  sub_22BE33928(v24, v25, v26);
  v27 = sub_22BF88968();
  v28(v27, v19);
  v29 = *(v20 + 32);
  sub_22BE2B734();
  v30();

  sub_22BE1A26C();

  return v31();
}

uint64_t sub_22BF71C60()
{
  sub_22BE183FC();
  v1 = v0[38];
  v2 = v0[35];
  v3 = v0[36];
  sub_22BE33928((v0 + 2), &qword_27D90B178, &qword_22C28BE40);
  v4 = *(v3 + 8);
  v5 = sub_22BE18944();
  v6(v5);
  v7 = sub_22BE17D50();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22BF71CF0()
{
  sub_22BE183FC();
  v2 = v0[37];
  v1 = v0[38];
  v4 = v0[33];
  v3 = v0[34];
  v5 = v0[32];

  sub_22BE17A94();
  v7 = v0[41];

  return v6();
}

uint64_t sub_22BF71D7C()
{
  sub_22BE183F0();
  sub_22BE190F0();
  v2 = *(v1 + 336);
  v3 = *v0;
  sub_22BE18C2C();
  *v4 = v3;

  v5 = sub_22BE17D50();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_22BF71E60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE384FC();
  sub_22BE2035C();
  sub_22BE26B64(v10 + 17);
  v11 = v10[37];
  v12 = v10[38];
  v13 = v10[35];
  v14 = v10[36];
  v16 = v10[33];
  v15 = v10[34];
  v17 = v10[32];
  v18 = v10[27];
  sub_22BE33928((v10 + 2), &qword_27D90B178, &qword_22C28BE40);
  v19 = sub_22BE35FA4();
  v20(v19);
  v21 = *(v14 + 32);
  sub_22BE376A8();
  v22();

  sub_22BE1A26C();
  sub_22BF88C3C();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
}

uint64_t ConcurrencySafeToolExecutionInterface.hydrate(value:options:)()
{
  sub_22BE183F0();
  v3 = v2;
  *(v1 + 240) = v4;
  *(v1 + 248) = v0;
  *(v1 + 224) = v5;
  *(v1 + 232) = v6;
  *(v1 + 216) = v7;
  v8 = sub_22C2720A4();
  *(v1 + 256) = v8;
  sub_22BE17A18(v8);
  *(v1 + 264) = v9;
  v11 = *(v10 + 64);
  *(v1 + 272) = sub_22BE25184();
  v12 = *(*(sub_22BE5CE4C(&qword_27D907400, &unk_22C274F90) - 8) + 64);
  *(v1 + 280) = sub_22BE3602C();
  *(v1 + 288) = swift_task_alloc();
  v13 = sub_22C272874();
  *(v1 + 296) = v13;
  sub_22BE17A18(v13);
  *(v1 + 304) = v14;
  v16 = *(v15 + 64);
  *(v1 + 312) = sub_22BE3602C();
  *(v1 + 320) = swift_task_alloc();
  *(v1 + 360) = *v3;
  v17 = sub_22BE17D50();

  return MEMORY[0x2822009F8](v17, v18, v19);
}