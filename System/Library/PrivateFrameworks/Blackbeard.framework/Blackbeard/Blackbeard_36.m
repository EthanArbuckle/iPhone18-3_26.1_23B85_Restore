uint64_t sub_1E6246DDC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_1E65D76F8();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = sub_1E65D9018();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  v9 = sub_1E65D7EB8();
  v2[10] = v9;
  v10 = *(v9 - 8);
  v2[11] = v10;
  v11 = *(v10 + 64) + 15;
  v2[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6246F54, 0, 0);
}

uint64_t sub_1E6246F54()
{
  v1 = v0[9];
  v3 = v0[2];
  v2 = v0[3];
  v4 = v2 + *(type metadata accessor for AppComposer() + 20);
  v5 = v4 + *(type metadata accessor for AppEnvironment() + 144);
  v6 = WorkoutPlanService.replaceWorkoutPlan.getter();
  v0[13] = v7;
  sub_1E6143D78(v1);
  v13 = (v6 + *v6);
  v8 = v6[1];
  v9 = swift_task_alloc();
  v0[14] = v9;
  *v9 = v0;
  v9[1] = sub_1E624709C;
  v10 = v0[12];
  v11 = v0[9];

  return v13(v10, v11);
}

uint64_t sub_1E624709C()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  v6 = *(*v1 + 56);
  v9 = *v1;
  *(*v1 + 120) = v0;

  (*(v5 + 8))(v4, v6);

  if (v0)
  {
    v7 = sub_1E624733C;
  }

  else
  {
    v7 = sub_1E6247230;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1E6247230()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v13 = v0[9];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[4];
  sub_1E65D7DC8();
  v7 = sub_1E65D76C8();
  v9 = v8;
  (*(v4 + 8))(v5, v6);
  v10 = sub_1E65D7DA8();
  (*(v2 + 8))(v1, v3);

  v11 = v0[1];

  return v11(v7, v9, v10);
}

uint64_t sub_1E624733C()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[6];

  v4 = v0[1];
  v5 = v0[15];

  return v4();
}

uint64_t sub_1E62473B8(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_1E65D9ED8();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077010, &qword_1E65F92B0) - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v7 = sub_1E65D8C28();
  v2[9] = v7;
  v8 = *(v7 - 8);
  v2[10] = v8;
  v9 = *(v8 + 64) + 15;
  v2[11] = swift_task_alloc();
  v10 = sub_1E65D9458();
  v2[12] = v10;
  v11 = *(v10 - 8);
  v2[13] = v11;
  v12 = *(v11 + 64) + 15;
  v2[14] = swift_task_alloc();
  v13 = sub_1E65E2778();
  v2[15] = v13;
  v14 = *(v13 - 8);
  v2[16] = v14;
  v15 = *(v14 + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v16 = sub_1E65D82F8();
  v2[19] = v16;
  v17 = *(v16 - 8);
  v2[20] = v17;
  v18 = *(v17 + 64) + 15;
  v2[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E624762C, 0, 0);
}

uint64_t sub_1E624762C()
{
  v1 = *(v0 + 32);
  *(v0 + 288) = *(type metadata accessor for AppComposer() + 20);
  v2 = type metadata accessor for AppEnvironment();
  *(v0 + 176) = v2;
  *(v0 + 292) = *(v2 + 48);
  v3 = CatalogService.requestCatalogSync.getter();
  *(v0 + 184) = v4;
  v8 = (v3 + *v3);
  v5 = v3[1];
  v6 = swift_task_alloc();
  *(v0 + 192) = v6;
  *v6 = v0;
  v6[1] = sub_1E6247750;

  return v8(1);
}

uint64_t sub_1E6247750()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *v1;

  v5 = *(v2 + 184);
  if (v0)
  {

    v6 = sub_1E624D4A4;
  }

  else
  {

    v6 = sub_1E6247898;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1E6247898()
{
  v1 = *(v0 + 32) + *(v0 + 288) + *(*(v0 + 176) + 52);
  v2 = ConfigurationService.queryConfiguration.getter();
  *(v0 + 200) = v3;
  v8 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  *(v0 + 208) = v5;
  *v5 = v0;
  v5[1] = sub_1E62479A8;
  v6 = *(v0 + 168);

  return v8(v6);
}

uint64_t sub_1E62479A8()
{
  v2 = *(*v1 + 208);
  v5 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = sub_1E6248360;
  }

  else
  {
    v3 = sub_1E6247ABC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E6247ABC()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 292);
  v3 = *(v0 + 288);
  v4 = *(v0 + 32);

  v5 = CatalogService.queryAllCatalogModalityReferences.getter();
  *(v0 + 224) = v6;
  v10 = (v5 + *v5);
  v7 = v5[1];
  v8 = swift_task_alloc();
  *(v0 + 232) = v8;
  *v8 = v0;
  v8[1] = sub_1E6247BD0;

  return v10();
}

uint64_t sub_1E6247BD0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 232);
  v6 = *v2;
  *(*v2 + 240) = v1;

  if (v1)
  {
    v7 = sub_1E6248424;
  }

  else
  {
    v8 = *(v4 + 224);

    *(v4 + 248) = a1;
    v7 = sub_1E6247D00;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1E6247D00()
{
  v2 = *(v0 + 240);
  v1 = *(v0 + 248);
  v3 = *(v0 + 292);
  v4 = *(v0 + 168);
  v18 = *(v0 + 88);
  v5 = *(v0 + 64);
  v6 = *(v0 + 32);
  v7 = v6 + *(v0 + 288);
  v8 = swift_task_alloc();
  *(v8 + 16) = v4;
  *(v8 + 24) = v6;
  v9 = sub_1E6405EE0(sub_1E624D488, v8, v1);

  *(v0 + 16) = v9;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077018, &qword_1E65F92E8);
  sub_1E5FED46C(&qword_1ED077020, &qword_1ED077018, &qword_1E65F92E8);
  *(v0 + 256) = sub_1E65E5E78();

  v10 = CatalogService.queryCatalogFilterOptions.getter();
  *(v0 + 264) = v11;
  v12 = sub_1E65D9758();
  (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
  sub_1E65E5D08();
  sub_1E65D8C18();
  v19 = (v10 + *v10);
  v13 = v10[1];
  v14 = swift_task_alloc();
  *(v0 + 272) = v14;
  *v14 = v0;
  v14[1] = sub_1E6247F6C;
  v15 = *(v0 + 112);
  v16 = *(v0 + 88);

  return v19(v15, v16);
}

uint64_t sub_1E6247F6C()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v4 = *v1;
  v2[35] = v0;

  v5 = v2[33];
  if (v0)
  {
    v6 = v2[32];
    (*(v2[10] + 8))(v2[11], v2[9]);

    v7 = sub_1E6248508;
  }

  else
  {
    (*(v2[10] + 8))(v2[11], v2[9]);

    v7 = sub_1E62480E8;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1E62480E8()
{
  v33 = v0;
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[15];
  v4 = v0[16];
  v6 = v0[13];
  v5 = v0[14];
  v7 = v0[12];
  v8 = v0[6];
  v9 = v0[7];
  v28 = v0[21];
  v30 = v0[5];
  sub_1E6092C40(v1);
  (*(v6 + 8))(v5, v7);
  (*(v4 + 16))(v2, v1, v3);
  sub_1E65D8268();
  v10 = sub_1E65D9EC8();
  (*(v8 + 8))(v9, v30);
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = sub_1E64F7464(*(v10 + 16), 0);
    v13 = sub_1E62598D0(&v32, v12 + 4, v11, v10);

    sub_1E5E24EE4();
    if (v13 == v11)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v12 = MEMORY[0x1E69E7CC0];
LABEL_5:
  v14 = v0[35];
  v32 = v12;
  sub_1E624C1F0(&v32);
  if (v14)
  {
  }

  else
  {
    v16 = v0[32];
    v18 = v0[20];
    v17 = v0[21];
    v19 = v0[18];
    v20 = v0[16];
    v21 = v0[17];
    v22 = v0[15];
    v25 = v0[19];
    v26 = v0[14];
    v27 = v0[11];
    v29 = v0[8];
    v31 = v0[7];
    v23 = v0[3];

    sub_1E65E2A98();
    (*(v20 + 8))(v19, v22);
    (*(v18 + 8))(v17, v25);

    v24 = v0[1];

    return v24();
  }
}

uint64_t sub_1E6248360()
{
  v1 = v0[25];

  v2 = v0[27];
  v3 = v0[21];
  v5 = v0[17];
  v4 = v0[18];
  v6 = v0[14];
  v7 = v0[11];
  v9 = v0[7];
  v8 = v0[8];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1E6248424()
{
  v1 = v0[28];
  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[19];

  (*(v3 + 8))(v2, v4);
  v5 = v0[30];
  v6 = v0[21];
  v8 = v0[17];
  v7 = v0[18];
  v9 = v0[14];
  v10 = v0[11];
  v12 = v0[7];
  v11 = v0[8];

  v13 = v0[1];

  return v13();
}

uint64_t sub_1E6248508()
{
  (*(v0[20] + 8))(v0[21], v0[19]);
  v1 = v0[35];
  v2 = v0[21];
  v4 = v0[17];
  v3 = v0[18];
  v5 = v0[14];
  v6 = v0[11];
  v8 = v0[7];
  v7 = v0[8];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1E62485DC@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v70 = a2;
  v68 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077028, &qword_1E65F92F0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v66 - v4;
  v6 = sub_1E65E2A48();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v67 = v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v69 = v66 - v11;
  v12 = sub_1E65D9ED8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65D8268();
  v17 = sub_1E65D9EB8();
  (*(v13 + 8))(v16, v12);
  v18 = sub_1E65D9D08();
  v20 = v19;
  LOBYTE(v16) = v21;
  LOBYTE(v13) = sub_1E637CFC0(v18, v19, v21 & 1, v17);

  sub_1E5F87058(v18, v20, v16 & 1);
  if ((v13 & 1) == 0)
  {
    goto LABEL_34;
  }

  v22 = sub_1E65D9D08();
  v24 = v23;
  v26 = v25;
  sub_1E628A07C(v5);
  sub_1E5F87058(v22, v24, v26 & 1);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1E5DFE50C(v5, &qword_1ED077028, &qword_1E65F92F0);
LABEL_34:
    v63 = 1;
    v62 = v70;
    goto LABEL_35;
  }

  (*(v7 + 32))(v69, v5, v6);
  v27 = v6;
  v28 = sub_1E65D9D08();
  v30 = v29;
  v32 = v31;
  v33 = v68 + *(type metadata accessor for AppComposer() + 20);
  v34 = (v33 + *(type metadata accessor for AppEnvironment() + 136));
  v35 = v34[4];
  __swift_project_boxed_opaque_existential_1(v34, v34[3]);
  v36 = sub_1E65DB448();
  *&v71 = v28;
  *(&v71 + 1) = v30;
  v32 &= 1u;
  v72 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073D40, &qword_1E65EED28);
  sub_1E65D7FB8();
  sub_1E5F87058(v28, v30, v32);
  if (v74 == 14)
  {
    (*(v7 + 8))(v69, v27);
    goto LABEL_34;
  }

  v68 = v27;
  v37 = sub_1E6289E48(v36 & 1, v74);
  if (!v38)
  {
    (*(v7 + 8))(v69, v68);
    goto LABEL_34;
  }

  v66[6] = v37;
  v66[5] = sub_1E65D9CF8();
  v39 = sub_1E65D9CD8();
  v66[3] = v40;
  v66[4] = v39;
  v41 = v69;
  (*(v7 + 16))(v67, v69, v68);
  v42 = sub_1E65D9D18();
  v66[1] = v43;
  v66[2] = v42;
  v44 = sub_1E65D9CE8();
  v45 = v41;
  v46 = v44;
  v47 = v44 + 56;
  v48 = 1 << *(v44 + 32);
  v49 = -1;
  if (v48 < 64)
  {
    v49 = ~(-1 << v48);
  }

  v50 = v49 & *(v44 + 56);
  v51 = (v48 + 63) >> 6;

  v52 = 0;
  v53 = MEMORY[0x1E69E7CC0];
  if (v50)
  {
    while (2)
    {
      v54 = v52;
LABEL_14:
      v55 = *(v46 + 48) + 24 * (__clz(__rbit64(v50)) | (v54 << 6));
      v56 = *(v55 + 16);
      v50 &= v50 - 1;
      v71 = *v55;
      v72 = v56;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077030, &qword_1E65F92F8);
      sub_1E65D7FB8();
      switch(v74)
      {
        case 0:
        case 2:
        case 9:
        case 12:
        case 13:
          goto LABEL_15;
        case 1:
          v73 = 0;
          goto LABEL_27;
        case 3:
          v57 = 2;
          goto LABEL_26;
        case 4:
          v57 = 1;
          goto LABEL_26;
        case 5:
          v57 = 3;
          goto LABEL_26;
        case 6:
          v57 = 4;
          goto LABEL_26;
        case 7:
          v57 = 5;
          goto LABEL_26;
        case 8:
          v57 = 6;
          goto LABEL_26;
        case 10:
          v57 = 7;
          goto LABEL_26;
        case 11:
          v57 = 8;
LABEL_26:
          v73 = v57;
LABEL_27:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v53 = sub_1E64F6D0C(0, *(v53 + 2) + 1, 1, v53);
          }

          v59 = *(v53 + 2);
          v58 = *(v53 + 3);
          v60 = v59 + 1;
          if (v59 >= v58 >> 1)
          {
            v66[0] = v59 + 1;
            v61 = sub_1E64F6D0C((v58 > 1), v59 + 1, 1, v53);
            v60 = v66[0];
            v53 = v61;
          }

          *(v53 + 2) = v60;
          v53[v59 + 32] = v73;
LABEL_15:
          v52 = v54;
          v45 = v69;
          if (!v50)
          {
            goto LABEL_11;
          }

          continue;
        default:
          goto LABEL_37;
      }
    }
  }

  while (1)
  {
LABEL_11:
    v54 = v52 + 1;
    if (__OFADD__(v52, 1))
    {
      __break(1u);
LABEL_37:
      JUMPOUT(0);
    }

    if (v54 >= v51)
    {
      break;
    }

    v50 = *(v47 + 8 * v54);
    ++v52;
    if (v50)
    {
      goto LABEL_14;
    }
  }

  sub_1E600CBF0(v53);

  v62 = v70;
  sub_1E65E2C98();
  (*(v7 + 8))(v45, v68);
  v63 = 0;
LABEL_35:
  v64 = sub_1E65E2CB8();
  return (*(*(v64 - 8) + 56))(v62, v63, 1, v64);
}

uint64_t sub_1E6248C28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_1E65D8048();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = sub_1E65D9158();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6248D48, 0, 0);
}

uint64_t sub_1E6248D48()
{
  v1 = v0[7];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v2 + *(type metadata accessor for AppComposer() + 20);
  v5 = v4 + *(type metadata accessor for AppEnvironment() + 48);
  v6 = CatalogService.filterCatalog.getter();
  v0[11] = v7;
  v8 = sub_1E65E27E8();
  v9 = sub_1E6245CCC(v8);

  sub_1E600A6B8(v9);

  v10 = sub_1E65E27F8();
  v11 = sub_1E6245CCC(v10);

  sub_1E600A6B8(v11);

  sub_1E65D8038();
  v17 = (v6 + *v6);
  v12 = v6[1];
  v13 = swift_task_alloc();
  v0[12] = v13;
  *v13 = v0;
  v13[1] = sub_1E6248F10;
  v14 = v0[10];
  v15 = v0[7];

  return v17(v14, v15);
}

uint64_t sub_1E6248F10()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 40);
  v9 = *v1;
  *(*v1 + 104) = v0;

  (*(v5 + 8))(v4, v6);

  if (v0)
  {
    v7 = sub_1E5FE0E84;
  }

  else
  {
    v7 = sub_1E62490A4;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1E62490A4()
{
  v2 = v0[9];
  v1 = v0[10];
  v6 = v0[8];
  v7 = v0[7];
  v5 = v0[2];
  sub_1E65D9108();
  sub_1E65D90D8();
  sub_1E65D9118();
  sub_1E65D90E8();
  sub_1E65D9128();
  sub_1E65D9138();
  sub_1E65D90B8();
  sub_1E65D90C8();
  sub_1E65E2708();
  (*(v2 + 8))(v1, v6);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1E62491C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_1E65DA308();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = sub_1E65D9388();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E62492E0, 0, 0);
}

uint64_t sub_1E62492E0()
{
  v1 = v0[7];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v2 + *(type metadata accessor for AppComposer() + 20);
  v5 = v4 + *(type metadata accessor for AppEnvironment() + 144);
  v6 = WorkoutPlanService.makeWorkoutPlanSchedule.getter();
  v0[11] = v7;
  sub_1E62FE8A0();
  v13 = (v6 + *v6);
  v8 = v6[1];
  v9 = swift_task_alloc();
  v0[12] = v9;
  *v9 = v0;
  v9[1] = sub_1E6249428;
  v10 = v0[10];
  v11 = v0[7];

  return v13(v10, v11);
}

uint64_t sub_1E6249428()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 40);
  v9 = *v1;
  *(*v1 + 104) = v0;

  (*(v5 + 8))(v4, v6);

  if (v0)
  {
    v7 = sub_1E6171EB8;
  }

  else
  {
    v7 = sub_1E62495BC;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1E62495BC()
{
  v2 = v0[9];
  v1 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  sub_1E61DADA0(v0[2]);
  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E6249678()
{
  v1 = v0[7];
  v0[8] = *(v1 + *(type metadata accessor for AppComposer() + 24));
  v0[9] = sub_1E65E6058();
  v0[10] = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E6249728, v3, v2);
}

uint64_t sub_1E6249728()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);

  sub_1E5E20198(1, v0 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1E62497A0, 0, 0);
}

uint64_t sub_1E62497A0()
{
  v1 = v0[9];
  v2 = v0[5];
  v3 = v0[6];
  v0[11] = v2;
  v0[12] = v3;
  v0[13] = __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v0[14] = *(v3 + 8);
  v0[15] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x6982000000000000;
  v0[16] = sub_1E65E6048();
  v5 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E624984C, v5, v4);
}

uint64_t sub_1E624984C()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[13];
  v4 = v0[14];
  v6 = v0[11];
  v5 = v0[12];

  v4(v6, v5);

  return MEMORY[0x1EEE6DFA0](sub_1E6115FB4, 0, 0);
}

uint64_t sub_1E62498D8(uint64_t a1, uint64_t a2)
{
  v2[29] = a1;
  v2[30] = a2;
  v3 = sub_1E65DA308();
  v2[31] = v3;
  v4 = *(v3 - 8);
  v2[32] = v4;
  v5 = *(v4 + 64) + 15;
  v2[33] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6249998, 0, 0);
}

uint64_t sub_1E6249998()
{
  v1 = v0[33];
  v3 = v0[29];
  v2 = v0[30];
  v4 = v2 + *(type metadata accessor for AppComposer() + 20);
  v5 = v4 + *(type metadata accessor for AppEnvironment() + 144);
  v6 = WorkoutPlanService.validateSchedule.getter();
  v0[34] = v7;
  sub_1E62FE8A0();
  v12 = (v6 + *v6);
  v8 = v6[1];
  v9 = swift_task_alloc();
  v0[35] = v9;
  *v9 = v0;
  v9[1] = sub_1E6249ADC;
  v10 = v0[33];

  return v12(v10);
}

uint64_t sub_1E6249ADC()
{
  v2 = *v1;
  v3 = *(*v1 + 280);
  v4 = *v1;
  *(*v1 + 288) = v0;

  v5 = v2[34];
  (*(v2[32] + 8))(v2[33], v2[31]);

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E6249CA0, 0, 0);
  }

  else
  {

    v6 = *(v4 + 8);

    return v6();
  }
}

uint64_t sub_1E6249CA0()
{
  v1 = v0[36];
  swift_getErrorValue();
  v2 = v0[17];
  v3 = v0[18];
  v4 = v0[19];
  v5 = sub_1E65D8B88();
  v0[5] = v5;
  v6 = sub_1E624D3E0(&qword_1ED077000, MEMORY[0x1E69CB928]);
  v0[6] = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  v8 = *(*(v5 - 8) + 104);
  v8(boxed_opaque_existential_1, *MEMORY[0x1E69CB910], v5);
  LOBYTE(v2) = sub_1E65E6CA8();
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  if (v2)
  {
    v9 = v0[36];
    v10 = sub_1E65E2728();
    sub_1E624D3E0(&qword_1ED077008, MEMORY[0x1E699F440]);
    swift_allocError();
    v12 = v11;
    v13 = MEMORY[0x1E699F430];
LABEL_3:
    (*(*(v10 - 8) + 104))(v12, *v13, v10);
    swift_willThrow();

    goto LABEL_9;
  }

  v14 = v0[36];
  swift_getErrorValue();
  v15 = v0[20];
  v16 = v0[21];
  v17 = v0[22];
  v0[10] = v5;
  v0[11] = v6;
  v18 = __swift_allocate_boxed_opaque_existential_1(v0 + 7);
  v8(v18, *MEMORY[0x1E69CB908], v5);
  LOBYTE(v15) = sub_1E65E6CA8();
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v19 = v0[36];
  if (v15)
  {
    v20 = sub_1E65E2728();
    sub_1E624D3E0(&qword_1ED077008, MEMORY[0x1E699F440]);
    swift_allocError();
    (*(*(v20 - 8) + 104))(v21, *MEMORY[0x1E699F428], v20);
    swift_willThrow();
  }

  else
  {
    v22 = v0[36];
    swift_getErrorValue();
    v23 = v0[23];
    v24 = v0[24];
    v25 = v0[25];
    v0[15] = v5;
    v0[16] = v6;
    v26 = __swift_allocate_boxed_opaque_existential_1(v0 + 12);
    v8(v26, *MEMORY[0x1E69CB918], v5);
    LOBYTE(v23) = sub_1E65E6CA8();
    __swift_destroy_boxed_opaque_existential_1(v0 + 12);
    v9 = v0[36];
    if (v23)
    {
      v10 = sub_1E65E2728();
      sub_1E624D3E0(&qword_1ED077008, MEMORY[0x1E699F440]);
      swift_allocError();
      v12 = v27;
      v13 = MEMORY[0x1E699F438];
      goto LABEL_3;
    }

    v28 = v0[36];
    swift_willThrow();
    v29 = v0[36];
  }

LABEL_9:
  v30 = v0[33];

  v31 = v0[1];

  return v31();
}

uint64_t sub_1E624A06C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v36 = a1;
  v38 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F78, &unk_1E65EA3F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v34 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v35 = &v34 - v10;
  v11 = sub_1E65D7848();
  v34 = *(v11 - 8);
  v12 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v37 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072958, &qword_1E65EC0F0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v34 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072960, &qword_1E65EC0F8);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v34 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075500, &qword_1E65F1B18);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = *a2;
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E65E4C98();
  v26 = v18;
  v27 = v34;
  (*(v19 + 8))(v22, v26);
  v28 = v35;
  sub_1E65E2648();
  sub_1E624D3E0(&qword_1ED076FF8, MEMORY[0x1E699F390]);
  sub_1E65E4DA8();
  sub_1E5DFE50C(v17, &qword_1ED072958, &qword_1E65EC0F0);
  sub_1E63969B4();
  v29 = type metadata accessor for AppState();
  v30 = *(v29 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
  sub_1E65E4C98();
  sub_1E5E1F544(v28);
  sub_1E5DFE50C(v7, &qword_1ED071F78, &unk_1E65EA3F0);
  v31 = *(v27 + 48);
  if (v31(v28, 1, v11) == 1)
  {
    sub_1E65D77C8();
    if (v31(v28, 1, v11) != 1)
    {
      sub_1E5DFE50C(v28, &qword_1ED071F80, &unk_1E65F4310);
    }
  }

  else
  {
    (*(v27 + 32))(v37, v28, v11);
  }

  v32 = *(v29 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  sub_1E65E0708();
  return sub_1E65E2738();
}

uint64_t sub_1E624A504@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v43 = a2;
  v44 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v43 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E8, &qword_1E65ED470);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v43 - v14;
  v16 = type metadata accessor for ArtworkContent();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for ArtworkDescriptor();
  v21 = (v20 - 8);
  v22 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = (&v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075DC8, &qword_1E65F3948) + 48);
  sub_1E5DFD1CC(a1, v15, &qword_1ED0734E8, &qword_1E65ED470);
  sub_1E5DFD1CC(a3, v11, &qword_1ED072340, &qword_1E65EA410);
  sub_1E65DB248();
  sub_1E5DFD1CC(v43, &v19[v25], &qword_1ED073548, &qword_1E65ED508);
  swift_storeEnumTagMultiPayload();
  v26 = *(a4 + *(type metadata accessor for AppComposer() + 20) + 8);
  v27 = sub_1E65DAE38();
  v28 = sub_1E65DAE38();
  v29 = sub_1E65E4B48();
  v30 = 4.0;
  if (v29)
  {
    v30 = 8.0;
  }

  v31 = 16.0;
  if (v29)
  {
    v31 = 18.0;
  }

  if (v27 == v28)
  {
    v32 = v31;
  }

  else
  {
    v32 = v30;
  }

  if (v27 == v28)
  {
    v33 = 12.0;
  }

  else
  {
    v33 = 8.0;
  }

  sub_1E5E1E458(v19, v24, type metadata accessor for ArtworkContent);
  *(v24 + v21[7]) = MEMORY[0x1E69E7CD0];
  v34 = (v24 + v21[8]);
  *v34 = 0.0;
  v34[1] = v32;
  v34[2] = v32;
  v34[3] = v33;
  *(v24 + v21[9]) = 1;
  v35 = (v24 + v21[10]);
  *v35 = 0;
  v35[1] = 0;
  v36 = v44;
  sub_1E64D2DD0(v24, a4, v44);
  v37 = sub_1E65E4B98();
  v39 = v38;
  v40 = v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077870, &unk_1E65FA560) + 36);
  sub_1E64D54B4(v24, a4, v40);
  sub_1E624D428(v24, type metadata accessor for ArtworkDescriptor);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0727A8, &qword_1E65EBC28);
  v42 = (v40 + *(result + 36));
  *v42 = v37;
  v42[1] = v39;
  return result;
}

uint64_t sub_1E624A854@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v178 = a3;
  v173 = a2;
  v176 = a1;
  v154 = a4;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0736E8, &qword_1E65ED948);
  v152 = *(v153 - 8);
  v4 = *(v152 + 64);
  MEMORY[0x1EEE9AC00](v153);
  v148 = &v133 - v5;
  v151 = sub_1E65E1398();
  v150 = *(v151 - 8);
  v6 = *(v150 + 64);
  MEMORY[0x1EEE9AC00](v151);
  v170 = &v133 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E65E1298();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v141 = &v133 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = sub_1E65E1208();
  v149 = *(v145 - 8);
  v11 = *(v149 + 64);
  MEMORY[0x1EEE9AC00](v145);
  v169 = &v133 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077760, &unk_1E66011D0);
  v166 = *(v13 - 8);
  v14 = *(v166 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v133 - v15;
  v17 = type metadata accessor for AppComposer();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17 - 8);
  v140 = &v133 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v161 = &v133 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v160 = &v133 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v158 = &v133 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v156 = &v133 - v29;
  v31 = v30;
  MEMORY[0x1EEE9AC00](v28);
  v33 = &v133 - v32;
  v34 = sub_1E65E1168();
  v143 = v34;
  v142 = *(v34 - 8);
  v35 = v142;
  v146 = *(v142 + 64);
  v36 = MEMORY[0x1EEE9AC00](v34);
  v147 = &v133 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x1EEE9AC00](v36);
  v171 = &v133 - v39;
  MEMORY[0x1EEE9AC00](v38);
  v41 = &v133 - v40;
  v144 = &v133 - v40;
  v42 = sub_1E65E1518();
  v167 = *(v42 - 8);
  v168 = v42;
  v139 = *(v167 + 64);
  v43 = MEMORY[0x1EEE9AC00](v42);
  v138 = &v133 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v172 = &v133 - v45;
  sub_1E65E14F8();
  (*(v35 + 104))(v41, *MEMORY[0x1E699E768], v34);
  v46 = v176;
  v157 = v33;
  sub_1E5E1D6F4(v176, v33, type metadata accessor for AppComposer);
  v47 = *(v18 + 80);
  v159 = ((v47 + 16) & ~v47) + v31;
  v48 = (v47 + 16) & ~v47;
  v177 = v48;
  v174 = v47 | 7;
  v49 = v47;
  v135 = swift_allocObject();
  v179 = type metadata accessor for AppComposer;
  sub_1E5E1E458(v33, v135 + v48, type metadata accessor for AppComposer);
  sub_1E5DFD1CC(v178, v16, &unk_1ED077760, &unk_1E66011D0);
  v50 = (*(v166 + 80) + 16) & ~*(v166 + 80);
  v155 = swift_allocObject();
  sub_1E624C114(v16, v155 + v50);
  sub_1E65E5148();
  v178 = sub_1E65E5138();
  v51 = v46;
  v52 = v156;
  v180 = type metadata accessor for AppComposer;
  sub_1E5E1D6F4(v46, v156, type metadata accessor for AppComposer);
  v175 = v49;
  v53 = (v49 + 32) & ~v49;
  v54 = v53 + v31;
  v55 = v53;
  v137 = v53;
  v162 = v31;
  v56 = (v53 + v31) & 0xFFFFFFFFFFFFFFF8;
  v136 = v53 + v31;
  v57 = swift_allocObject();
  v166 = v57;
  v134 = &unk_1E65F9200;
  v58 = v135;
  *(v57 + 16) = &unk_1E65F9200;
  *(v57 + 24) = v58;
  v59 = v57 + v55;
  v60 = v179;
  sub_1E5E1E458(v52, v59, v179);
  *(v57 + v54) = 0;
  v61 = v57 + v56;
  v163 = sub_1E624C184;
  v62 = v155;
  *(v61 + 8) = sub_1E624C184;
  *(v61 + 16) = v62;
  v63 = (v57 + ((v56 + 31) & 0xFFFFFFFFFFFFFFF8));
  v64 = MEMORY[0x1E69AB380];
  v65 = v178;
  *v63 = v178;
  v63[1] = v64;
  v66 = v51;
  v67 = v158;
  sub_1E5E1D6F4(v66, v158, type metadata accessor for AppComposer);
  v68 = (v175 + 48) & ~v175;
  v69 = v68 + v31;
  v70 = swift_allocObject();
  v71 = v134;
  v70[2] = v134;
  v70[3] = v58;
  v72 = v58;
  v70[4] = v65;
  v70[5] = MEMORY[0x1E69AB380];
  v73 = v70;
  sub_1E5E1E458(v67, v70 + v68, v60);
  v165 = v73;
  *(v73 + v69) = 0;
  v74 = v73 + ((v68 + v31) & 0xFFFFFFFFFFFFFFF8);
  v75 = v155;
  *(v74 + 1) = v163;
  *(v74 + 2) = v75;
  v76 = v176;
  v77 = v160;
  sub_1E5E1D6F4(v176, v160, v180);
  v78 = swift_allocObject();
  v78[2] = v71;
  v78[3] = v72;
  v78[4] = v65;
  v78[5] = MEMORY[0x1E69AB380];
  v79 = v78 + v68;
  v80 = v78;
  v164 = v78;
  v81 = v179;
  sub_1E5E1E458(v77, v79, v179);
  v82 = v80 + ((v69 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v82 = v163;
  *(v82 + 1) = v75;
  v82[16] = 0;
  v83 = v161;
  v84 = v180;
  sub_1E5E1D6F4(v76, v161, v180);
  v85 = swift_allocObject();
  v163 = v85;
  *(v85 + 16) = v71;
  *(v85 + 24) = v72;
  v86 = v81;
  sub_1E5E1E458(v83, v85 + v137, v81);
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  v87 = sub_1E642764C(MEMORY[0x1E69E7CC0]);
  v88 = v76;
  v155 = *v76;
  v89 = v157;
  sub_1E5E1D6F4(v76, v157, v84);
  sub_1E5DF650C(v173, &v183);
  v90 = (v175 + 24) & ~v175;
  v91 = (v162 + v90 + 7) & 0xFFFFFFFFFFFFFFF8;
  v92 = swift_allocObject();
  *(v92 + 16) = v87;
  v93 = v92 + v90;
  v94 = v92;
  v137 = v92;
  sub_1E5E1E458(v89, v93, v86);
  sub_1E5DF599C(&v183, v94 + v91);
  v95 = v156;
  sub_1E5E1D6F4(v76, v156, v84);
  v136 = swift_allocObject();
  v96 = v177;
  sub_1E5E1E458(v95, v136 + v177, v86);
  v97 = v158;
  sub_1E5E1D6F4(v88, v158, v84);
  v156 = swift_allocObject();
  sub_1E5E1E458(v97, v156 + v96, v86);
  v98 = v160;
  sub_1E5E1D6F4(v88, v160, v84);
  v99 = swift_allocObject();
  sub_1E5E1E458(v98, v99 + v96, v86);
  v100 = v161;
  sub_1E5E1D6F4(v88, v161, v84);
  v101 = swift_allocObject();
  sub_1E5E1E458(v100, v101 + v96, v86);
  v102 = v140;
  sub_1E5E1D6F4(v88, v140, v84);
  v103 = swift_allocObject();
  sub_1E5E1E458(v102, v103 + v96, v86);
  sub_1E65E1288();
  sub_1E65E11F8();
  sub_1E65E1388();
  v104 = v167;
  v105 = v168;
  v106 = v138;
  (*(v167 + 16))(v138, v172, v168);
  v107 = v157;
  sub_1E5E1D6F4(v88, v157, v84);
  v108 = v104;
  v109 = (*(v104 + 80) + 16) & ~*(v104 + 80);
  v110 = (v139 + v175 + v109) & ~v175;
  v111 = swift_allocObject();
  (*(v108 + 32))(v111 + v109, v106, v105);
  v112 = v179;
  sub_1E5E1E458(v107, v111 + v110, v179);
  type metadata accessor for AppFeature();
  sub_1E624D3E0(&qword_1EE2DBD90, type metadata accessor for AppFeature);
  sub_1E624D3E0(&qword_1EE2D6530, MEMORY[0x1E699E7A0]);
  v113 = v148;
  v114 = v145;
  sub_1E65E4DE8();
  sub_1E5E1D6F4(v88, v107, v180);
  v115 = (v159 + 7) & 0xFFFFFFFFFFFFFFF8;
  v116 = swift_allocObject();
  sub_1E5E1E458(v107, v116 + v177, v112);
  v117 = (v116 + v115);
  *v117 = v178;
  v117[1] = MEMORY[0x1E69AB380];
  v117[2] = &unk_1E65EB918;
  v117[3] = v166;
  v117[4] = &unk_1E65FA770;
  v117[5] = v165;
  v117[6] = &unk_1E65EB920;
  v117[7] = v164;
  v117[8] = &unk_1E65FA780;
  v117[9] = v163;

  v119 = v169;
  v118 = v170;
  v120 = sub_1E65E4F08();

  (*(v152 + 8))(v113, v153);
  (*(v150 + 8))(v118, v151);
  (*(v149 + 8))(v119, v114);
  v121 = v142;
  v122 = *(v142 + 16);
  v123 = v144;
  v124 = v143;
  v122(v171, v144, v143);
  sub_1E5E1D6F4(v176, v107, v180);
  sub_1E5DF650C(v173, &v183);
  v125 = swift_allocObject();
  sub_1E5E1E458(v107, v125 + v177, v179);
  sub_1E5DF599C(&v183, v125 + v115);
  v126 = v147;
  v122(v147, v123, v124);
  v127 = (*(v121 + 80) + 16) & ~*(v121 + 80);
  v128 = (v146 + v127 + 7) & 0xFFFFFFFFFFFFFFF8;
  v129 = swift_allocObject();
  (*(v121 + 32))(v129 + v127, v126, v124);
  *(v129 + v128) = v120;
  sub_1E65E3878();
  swift_retain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073808, &qword_1E65EDA90);
  sub_1E624D3E0(&qword_1EE2D6048, MEMORY[0x1E699ED90]);
  v130 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073810, &qword_1E65EDA98);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v181 = v130;
  v182 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_1E65E1488();

  (*(v121 + 8))(v123, v124);
  return (*(v167 + 8))(v172, v168);
}

uint64_t sub_1E624BA80(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735D0, &unk_1E65ED670) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072330, &qword_1E65EAB70) - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410) - 8) + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072338, qword_1E65EAB78) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E624BBC4, 0, 0);
}

uint64_t sub_1E624BBC4()
{
  v1 = v0[6];
  v2 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[2];
  v6 = v0[3];
  v7 = *MEMORY[0x1E69CBD48];
  v8 = sub_1E65D8F38();
  v9 = *(v8 - 8);
  (*(v9 + 104))(v2, v7, v8);
  (*(v9 + 56))(v2, 0, 1, v8);
  v10 = (v6 + *(type metadata accessor for AppComposer() + 36));
  v11 = *v10;
  v12 = v10[1];
  v13 = sub_1E65D74E8();
  (*(*(v13 - 8) + 56))(v1, 1, 1, v13);
  v14 = sub_1E65D9908();
  (*(*(v14 - 8) + 56))(v3, 1, 1, v14);
  v15 = sub_1E65D9F88();
  (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
  sub_1E5FA9D34(v11, v12);
  sub_1E65D7A28();
  v16 = sub_1E65D7A38();
  (*(*(v16 - 8) + 56))(v5, 0, 1, v16);

  v17 = v0[1];

  return v17();
}

unint64_t sub_1E624BE50(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077760, &unk_1E66011D0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v14 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072970, &qword_1E65EC120);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E65EA670;
  *(inited + 32) = 9;
  sub_1E5DFD1CC(a1, v5, &unk_1ED077760, &unk_1E66011D0);
  v7 = sub_1E65D76F8();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    sub_1E5DFE50C(v5, &unk_1ED077760, &unk_1E66011D0);
    v9 = 0;
    v10 = 0;
  }

  else
  {
    v9 = sub_1E65D76C8();
    v10 = v11;
    (*(v8 + 8))(v5, v7);
  }

  v14[0] = v9;
  v14[1] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072978, &unk_1E65F0E80);
  sub_1E5FEE0FC();
  sub_1E65E6848();
  v12 = sub_1E6427784(inited);
  swift_setDeallocating();
  sub_1E5DFE50C(inited + 32, &qword_1ED072988, &qword_1E65EC128);
  return v12;
}

uint64_t sub_1E624C038(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E624BA80(a1, v1 + v5);
}

uint64_t sub_1E624C114(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077760, &unk_1E66011D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E624C184()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077760, &unk_1E66011D0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1E624BE50(v2);
}

uint64_t sub_1E624C1F0(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1E636B26C(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_1E65E6BA8();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1E65E5F98();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_1E624C324(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1E624C324(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1E636AC44(v8);
      v8 = result;
    }

    v75 = (v8 + 16);
    v76 = *(v8 + 16);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = (v8 + 16 * v76);
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_1E624C870((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 8 * v17);
            *(v20 + 8 * v17) = *(v20 + 8 * v16);
            *(v20 + 8 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1E636ADD0(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v29 = *(v8 + 24);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_1E636ADD0((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v30;
    v31 = v8 + 32;
    v32 = (v8 + 32 + 16 * v5);
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v8 + 32);
          v34 = *(v8 + 40);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = (v8 + 16 * v30);
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = (v31 + 16 * v5);
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = (v8 + 16 * v30);
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = (v31 + 16 * v5);
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
        {
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
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v70 = (v31 + 16 * (v5 - 1));
        v71 = *v70;
        v72 = (v31 + 16 * v5);
        v73 = v72[1];
        sub_1E624C870((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = *(v8 + 16);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove((v31 + 16 * v5), v72 + 2, 16 * (v74 - 1 - v5));
        *(v8 + 16) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = v31 + 16 * v30;
      v38 = *(v37 - 64);
      v39 = *(v37 - 56);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 48);
      v41 = *(v37 - 40);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = (v8 + 16 * v30);
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = (v31 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 8 * v7 - 8;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= *v26)
    {
LABEL_29:
      ++v7;
      v22 += 8;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_1E624C870(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (v21 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t sub_1E624CA64(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
LABEL_13:
    v6 = 0;
    a3 = 0;
    goto LABEL_15;
  }

  if (!a3)
  {
    v6 = 0;
LABEL_15:
    v7 = a4;
LABEL_18:
    *result = a4;
    *(result + 8) = a5;
    *(result + 16) = v7;
    *(result + 24) = v6;
    return a3;
  }

  if (a3 < 0)
  {
    goto LABEL_20;
  }

  v5 = 0;
  v6 = 0;
  v7 = a4;
  while (1)
  {
    if (v6)
    {
      v6 = 1;
      a3 = v5;
      goto LABEL_18;
    }

    v6 = v7 == a5;
    if (v7 == a5)
    {
      v8 = 0;
      goto LABEL_9;
    }

    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

LABEL_9:
    *(a2 + 8 * v5) = v7;
    if (a3 - 1 == v5)
    {
      v7 = v8;
      goto LABEL_18;
    }

    ++v5;
    v7 = v8;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1E624CB08(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E624CBE0;

  return sub_1E6246DDC(a1, v1 + v5);
}

uint64_t sub_1E624CBE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*v3 + 16);
  v10 = *v3;

  v8 = *(v10 + 8);

  return v8(a1, a2, a3);
}

uint64_t sub_1E624CCF4(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E62473B8(a1, v1 + v5);
}

uint64_t sub_1E624CDD0()
{
  v2 = *(type metadata accessor for AppComposer() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1E621FCB8;

  return sub_1E621FDC4(v0 + v3);
}

uint64_t sub_1E624CE9C(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for AppComposer() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E6248C28(a1, a2, v2 + v7);
}

uint64_t sub_1E624CF80(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E6138698(a1, v1 + v5);
}

uint64_t sub_1E624D05C(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for AppComposer() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E62491C0(a1, a2, v2 + v7);
}

uint64_t sub_1E624D140()
{
  v2 = *(type metadata accessor for AppComposer() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E6249658(v0 + v3);
}

uint64_t sub_1E624D20C(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E62498D8(a1, v1 + v5);
}

uint64_t sub_1E624D2E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AppComposer() - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_1E624A06C(a1, v6, a2);
}

uint64_t sub_1E624D364(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(type metadata accessor for AppComposer() - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));
  return sub_1E64A5E34(a3, a2, a1);
}

uint64_t sub_1E624D3E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E624D428(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E624D4A8()
{
  v0 = sub_1E65D76A8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v26[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0741D8, &unk_1E6606270);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26[-v7];
  v9 = sub_1E65D92D8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v26[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072990, &qword_1E65EC130);
  sub_1E65E4C98();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    return 0;
  }

  if (!EnumCaseMultiPayload)
  {
    (*(v10 + 32))(v13, v8, v9);
LABEL_7:
    sub_1E65D7698();
    v17 = sub_1E65D92A8();
    (*(v1 + 8))(v4, v0);
    (*(v10 + 8))(v13, v9);
    if (v17)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  if (EnumCaseMultiPayload == 1)
  {
    v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077038, &qword_1E65F9300) + 48);
    (*(v10 + 32))(v13, v8, v9);
    (*(v1 + 8))(&v8[v15], v0);
    goto LABEL_7;
  }

  v18 = *v8;
  v19 = *(v8 + 1);
  v20 = *(v8 + 2);
  v21 = *(v8 + 4);

  v22 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v23 = sub_1E65E5C48();

  v24 = [v22 initWithDomain:v23 code:v20 userInfo:0];

  v26[15] = 4;
  sub_1E5FFF464();
  v25 = v24;
  LOBYTE(v23) = sub_1E65D97C8();

  if (v23)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E624D7E4(uint64_t a1, void *a2)
{
  v91 = a2;
  v3 = type metadata accessor for ItemContext();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v106 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for SearchItemContext();
  v6 = *(*(v95 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v95);
  v94 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v93 = &v77 - v9;
  v89 = sub_1E65DCCE8();
  v10 = *(v89 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v89);
  v85 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v88 = &v77 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077048, &qword_1E65F9380);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v100 = &v77 - v17;
  v103 = sub_1E65D9CC8();
  v18 = *(v103 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v103);
  v80 = &v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v77 = &v77 - v22;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072920, &qword_1E65EC040);
  v23 = *(*(v108 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v108);
  v92 = &v77 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v107 = &v77 - v27;
  v28 = a1 + 56;
  v29 = 1 << *(a1 + 32);
  v30 = -1;
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  v31 = v30 & *(a1 + 56);
  v32 = (v29 + 63) >> 6;
  v105 = v26 + 16;
  v98 = (v18 + 56);
  v84 = (v10 + 32);
  v82 = (v26 + 32);
  v81 = (v26 + 40);
  v83 = (v10 + 8);
  v101 = v26;
  v96 = (v18 + 48);
  v97 = (v26 + 8);
  v78 = v18;
  v79 = (v18 + 32);
  v104 = a1;

  v33 = 0;
  v87 = MEMORY[0x1E69E7CC0];
  v99 = v32;
  v90 = v3;
LABEL_4:
  v34 = v33;
  if (!v31)
  {
    goto LABEL_6;
  }

  do
  {
    v33 = v34;
LABEL_9:
    v35 = *(v104 + 48);
    v102 = *(v101 + 72);
    v36 = *(v101 + 16);
    v36(v107, v35 + v102 * (__clz(__rbit64(v31)) | (v33 << 6)), v108);
    sub_1E65E04E8();
    v37 = v106;
    if (swift_getEnumCaseMultiPayload() != 8)
    {
      sub_1E6254944(v37, type metadata accessor for ItemContext);
      v60 = 1;
LABEL_18:
      v61 = v100;
      goto LABEL_26;
    }

    v38 = v93;
    sub_1E62548DC(v37, v93, type metadata accessor for SearchItemContext);
    v39 = v94;
    sub_1E62548DC(v38, v94, type metadata accessor for SearchItemContext);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1E6254944(v39, type metadata accessor for SearchItemContext);
      v60 = 1;
      goto LABEL_18;
    }

    v40 = v39;
    v41 = *v84;
    v42 = v85;
    v43 = v89;
    (*v84)(v85, v40, v89);
    v41(v88, v42, v43);
    v44 = sub_1E65DCCB8();
    v46 = v45;
    v36(v92, v107, v108);
    v47 = v91;
    v48 = *v91;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v109 = *v47;
    v50 = v109;
    v86 = v44;
    v52 = sub_1E6215038(v44, v46);
    v53 = v50[2];
    v54 = (v51 & 1) == 0;
    v55 = v53 + v54;
    if (__OFADD__(v53, v54))
    {
      goto LABEL_36;
    }

    v56 = v51;
    if (v50[3] >= v55)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v59 = v109;
        if ((v51 & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      else
      {
        sub_1E6424B84();
        v59 = v109;
        if ((v56 & 1) == 0)
        {
          goto LABEL_23;
        }
      }
    }

    else
    {
      sub_1E641BE8C(v55, isUniquelyReferenced_nonNull_native);
      v57 = sub_1E6215038(v86, v46);
      if ((v56 & 1) != (v58 & 1))
      {
        goto LABEL_38;
      }

      v52 = v57;
      v59 = v109;
      if ((v56 & 1) == 0)
      {
LABEL_23:
        v59[(v52 >> 6) + 8] |= 1 << v52;
        v62 = (v59[6] + 16 * v52);
        *v62 = v86;
        v62[1] = v46;
        (*v82)(v59[7] + v52 * v102, v92, v108);
        v63 = v59[2];
        v64 = __OFADD__(v63, 1);
        v65 = v63 + 1;
        if (v64)
        {
          goto LABEL_37;
        }

        v59[2] = v65;
        goto LABEL_25;
      }
    }

    (*v81)(v59[7] + v52 * v102, v92, v108);

LABEL_25:
    *v91 = v59;
    v66 = v88;
    sub_1E65DCCB8();
    v67 = qword_1E65F9410[sub_1E65DCCA8()];
    v61 = v100;
    sub_1E65D9C88();
    (*v83)(v66, v89);
    v60 = 0;
LABEL_26:
    v31 &= v31 - 1;
    v68 = v103;
    (*v98)(v61, v60, 1, v103);
    (*v97)(v107, v108);
    if ((*v96)(v61, 1, v68) != 1)
    {
      v69 = *v79;
      v70 = v77;
      v71 = v103;
      (*v79)(v77, v61, v103);
      v69(v80, v70, v71);
      v72 = v87;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v72 = sub_1E64F610C(0, v72[2] + 1, 1, v72);
      }

      v74 = v72[2];
      v73 = v72[3];
      if (v74 >= v73 >> 1)
      {
        v72 = sub_1E64F610C(v73 > 1, v74 + 1, 1, v72);
      }

      v72[2] = v74 + 1;
      v75 = (*(v78 + 80) + 32) & ~*(v78 + 80);
      v87 = v72;
      v69(v72 + v75 + *(v78 + 72) * v74, v80, v103);
      v32 = v99;
      goto LABEL_4;
    }

    sub_1E5DFE50C(v61, &qword_1ED077048, &qword_1E65F9380);
    v34 = v33;
    v32 = v99;
  }

  while (v31);
LABEL_6:
  while (1)
  {
    v33 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      break;
    }

    if (v33 >= v32)
    {

      return v87;
    }

    v31 = *(v28 + 8 * v33);
    ++v34;
    if (v31)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  result = sub_1E65E6C68();
  __break(1u);
  return result;
}

uint64_t sub_1E624E170@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v41 = a1;
  v42 = a2;
  v2 = sub_1E65DCC68();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v37 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072040, &qword_1E65F0860);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = (v37 - v12);
  v14 = type metadata accessor for RouteDestination();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v40 = v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v37 - v18;
  sub_1E645CB58(v13);
  v39 = v15;
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1E5DFE50C(v13, &unk_1ED072040, &qword_1E65F0860);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072940, &qword_1E65EC0D0);
    return (*(*(v20 - 8) + 56))(v42, 1, 1, v20);
  }

  else
  {
    v37[0] = type metadata accessor for RouteDestination;
    sub_1E62548DC(v13, v19, type metadata accessor for RouteDestination);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072948, &qword_1E65EC0D8);
    v23 = v22[16];
    v24 = v22[20];
    v37[1] = v22[12];
    v38 = v24;
    v25 = v42;
    v26 = (v42 + v22[24]);
    (*(v3 + 104))(v9, *MEMORY[0x1E699EEB8], v2);
    (*(v3 + 16))(v7, v9, v2);
    sub_1E6254878(&qword_1ED077040, MEMORY[0x1E699EEC0]);
    sub_1E65E6848();
    (*(v3 + 8))(v9, v2);
    v27 = *MEMORY[0x1E6999B50];
    v28 = sub_1E65E4EB8();
    (*(*(v28 - 8) + 104))(v25 + v23, v27, v28);
    v29 = v40;
    sub_1E62549BC(v19, v40, type metadata accessor for RouteDestination);
    sub_1E5DF650C(v41, v43);
    v30 = (*(v39 + 80) + 16) & ~*(v39 + 80);
    v31 = swift_allocObject();
    sub_1E62548DC(v29, v31 + v30, v37[0]);
    sub_1E5DF599C(v43, v31 + ((v16 + v30 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v26 = &unk_1E65F9310;
    v26[1] = v31;
    sub_1E65E6068();
    sub_1E6254944(v19, type metadata accessor for RouteDestination);
    v32 = *MEMORY[0x1E6999B48];
    v33 = sub_1E65E4EA8();
    (*(*(v33 - 8) + 104))(v25 + v38, v32, v33);
    v34 = *MEMORY[0x1E6999AD8];
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072940, &qword_1E65EC0D0);
    v36 = *(v35 - 8);
    (*(v36 + 104))(v25, v34, v35);
    return (*(v36 + 56))(v25, 0, 1, v35);
  }
}

uint64_t sub_1E624E6AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072710, &qword_1E65EBB90);
  v69 = *(v70 - 8);
  v6 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v70);
  v67 = v55 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077D10, &unk_1E65FAA50);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v60 = v55 - v10;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072718, &qword_1E65EBB98);
  v68 = *(v66 - 8);
  v11 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v66);
  v65 = v55 - v12;
  v13 = type metadata accessor for AppComposer();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13 - 8);
  v63 = v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v81 = v55 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v80 = v55 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = v55 - v23;
  v26 = v25;
  v61 = v25;
  MEMORY[0x1EEE9AC00](v22);
  v28 = v55 - v27;
  sub_1E62549BC(v2, v55 - v27, type metadata accessor for AppComposer);
  sub_1E5DF650C(a1, &v87);
  v29 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v30 = (v29 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = *(v14 + 80);
  v32 = swift_allocObject();
  v83 = v32;
  sub_1E62548DC(v28, v32 + v29, type metadata accessor for AppComposer);
  sub_1E5DF599C(&v87, v32 + v30);
  sub_1E62549BC(v3, v24, type metadata accessor for AppComposer);
  v55[8] = *a2;
  v55[9] = *(a2 + 24);
  v55[10] = *(a2 + 40);
  v55[11] = *(a2 + 56);
  v55[12] = *(a2 + 72);
  v33 = swift_allocObject();
  v64 = v33;
  sub_1E62548DC(v24, v33 + v29, type metadata accessor for AppComposer);
  v34 = (v33 + v30);
  v35 = *(a2 + 48);
  v34[2] = *(a2 + 32);
  v34[3] = v35;
  v34[4] = *(a2 + 64);
  v36 = *(a2 + 16);
  *v34 = *a2;
  v34[1] = v36;
  v37 = v80;
  v58 = type metadata accessor for AppComposer;
  sub_1E62549BC(v3, v80, type metadata accessor for AppComposer);
  v57 = v31;
  v82 = swift_allocObject();
  v59 = type metadata accessor for AppComposer;
  sub_1E62548DC(v37, v82 + v29, type metadata accessor for AppComposer);
  v56 = v3;
  v38 = v81;
  sub_1E62549BC(v3, v81, type metadata accessor for AppComposer);
  v80 = swift_allocObject();
  sub_1E62548DC(v38, v80 + v29, type metadata accessor for AppComposer);
  v62 = *v3;
  v81 = type metadata accessor for ActionButtonDescriptor(0);
  v79 = type metadata accessor for ArtworkDescriptor();
  v78 = type metadata accessor for ContextMenu(0);
  v77 = type metadata accessor for ItemContext();
  v76 = type metadata accessor for ItemMetrics();
  v75 = type metadata accessor for SectionHeaderSubtitleDescriptor();
  v74 = type metadata accessor for SectionMetrics();
  v55[7] = type metadata accessor for ViewDescriptor();
  v73 = sub_1E6254878(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor);
  v72 = sub_1E6254878(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor);
  v71 = sub_1E6254878(&qword_1EE2DB8B0, type metadata accessor for ContextMenu);
  v55[6] = sub_1E6254878(&qword_1EE2DB720, type metadata accessor for ItemContext);
  v55[5] = sub_1E6254878(&qword_1EE2DB738, type metadata accessor for ItemContext);
  v55[4] = sub_1E6254878(&qword_1EE2DB730, type metadata accessor for ItemContext);
  v55[3] = sub_1E6254878(&qword_1EE2DB650, type metadata accessor for ItemMetrics);
  v55[2] = sub_1E6254878(&qword_1EE2D7D88, type metadata accessor for SectionHeaderSubtitleDescriptor);
  v55[1] = sub_1E6254878(&qword_1EE2DA950, type metadata accessor for SectionMetrics);
  sub_1E5DF11E0();
  sub_1E5DF1338();
  sub_1E6254878(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor);
  swift_unknownObjectRetain();

  sub_1E65DC178();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077D20, &qword_1E65FAA70);

  v40 = sub_1E65DC168();
  v85 = v39;
  v86 = sub_1E5FED46C(&qword_1EE2D6BA8, &qword_1ED077D20, &qword_1E65FAA70);
  v84 = v40;
  v41 = v65;
  sub_1E65DC248();
  v42 = v63;
  sub_1E62549BC(v56, v63, v58);
  v43 = (v57 + 32) & ~v57;
  v44 = (v61 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  *(v45 + 16) = 0x6372616553205654;
  *(v45 + 24) = 0xE900000000000068;
  sub_1E62548DC(v42, v45 + v43, v59);
  v46 = (v45 + v44);
  *v46 = sub_1E5F8AA74;
  v46[1] = 0;
  v47 = swift_allocObject();
  *(v47 + 16) = 0x6372616553205654;
  *(v47 + 24) = 0xE900000000000068;
  type metadata accessor for AppFeature();
  sub_1E6254878(&qword_1EE2DBD90, type metadata accessor for AppFeature);
  sub_1E5FED46C(&qword_1EE2D6BA0, &qword_1ED072718, &qword_1E65EBB98);
  v48 = v67;
  v49 = v66;
  sub_1E65E4DE8();
  v50 = swift_allocObject();
  v51 = v64;
  *(v50 + 16) = sub_1E6254AC4;
  *(v50 + 24) = v51;

  sub_1E65E4CC8();
  v52 = swift_allocObject();
  *(v52 + 16) = sub_1E6256260;
  *(v52 + 24) = v50;

  v53 = sub_1E65E4F08();

  (*(v69 + 8))(v48, v70);
  (*(v68 + 8))(v41, v49);
  return v53;
}

uint64_t sub_1E624F37C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_1E65E3B68();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E50, &qword_1E65ECC08) - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v7 = sub_1E65DCBA8();
  v2[10] = v7;
  v8 = *(v7 - 8);
  v2[11] = v8;
  v9 = *(v8 + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v10 = sub_1E65DCBE8();
  v2[15] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v2[16] = swift_task_alloc();
  v12 = sub_1E65DD0A8();
  v2[17] = v12;
  v13 = *(v12 - 8);
  v2[18] = v13;
  v14 = *(v13 + 64) + 15;
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v15 = sub_1E65DD128();
  v2[21] = v15;
  v16 = *(v15 - 8);
  v2[22] = v16;
  v17 = *(v16 + 64) + 15;
  v2[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E624F5F4, 0, 0);
}

uint64_t sub_1E624F5F4()
{
  v89 = v0;
  v1 = v0;
  v2 = *(v0 + 160);
  v3 = *(v0 + 136);
  v4 = *(v0 + 144);
  v6 = *(v0 + 120);
  v5 = *(v0 + 128);
  v7 = **(v0 + 24);
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E65DD078();
  v8 = *(v4 + 8);
  v8(v2, v3);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = (v1 + 184);
    v10 = *(v1 + 152);
    v11 = *(v1 + 136);
    v12 = *(v1 + 88);
    v84 = *(v1 + 80);
    v13 = *(v1 + 64);
    (*(*(v1 + 176) + 32))(*(v1 + 184), *(v1 + 128), *(v1 + 168));
    swift_getKeyPath();
    sub_1E65E4EC8();

    sub_1E65DD038();
    v8(v10, v11);
    v14 = *(v12 + 48);
    if (v14(v13, 1, v84) == 1)
    {
      v15 = *v9;
      v16 = sub_1E65DD118();
      if (*(v16 + 16))
      {
        (*(*(v1 + 88) + 16))(*(v1 + 72), v16 + ((*(*(v1 + 88) + 80) + 32) & ~*(*(v1 + 88) + 80)), *(v1 + 80));
        v17 = 0;
      }

      else
      {
        v17 = 1;
      }

      v21 = *(v1 + 80);
      v22 = *(v1 + 88);
      v24 = *(v1 + 64);
      v23 = *(v1 + 72);

      (*(v22 + 56))(v23, v17, 1, v21);
      if (v14(v24, 1, v21) != 1)
      {
        sub_1E5DFE50C(*(v1 + 64), &qword_1ED072E50, &qword_1E65ECC08);
      }
    }

    else
    {
      v18 = *(v1 + 80);
      v19 = *(v1 + 88);
      v20 = *(v1 + 72);
      (*(v19 + 32))(v20, *(v1 + 64), v18);
      (*(v19 + 56))(v20, 0, 1, v18);
    }

    v25 = *(v1 + 72);
    v26 = *(v1 + 80);
    if (v14(v25, 1, v26) != 1)
    {
      v34 = *(v1 + 104);
      v33 = *(v1 + 112);
      v36 = *(v1 + 88);
      v35 = *(v1 + 96);
      v37 = *(v1 + 56);
      (*(v36 + 32))(v33, v25, v26);
      sub_1E65DD1C8();
      v38 = *(v36 + 16);
      v38(v34, v33, v26);
      v38(v35, v33, v26);
      v39 = sub_1E65E3B48();
      v40 = sub_1E65E6338();
      v41 = os_log_type_enabled(v39, v40);
      v42 = *(v1 + 104);
      v44 = *(v1 + 80);
      v43 = *(v1 + 88);
      v86 = *(v1 + 56);
      v45 = *(v1 + 40);
      v79 = *(v1 + 32);
      if (v41)
      {
        v80 = *(v1 + 96);
        v78 = v38;
        v46 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        v88 = v77;
        *v46 = 136315394;
        v74 = sub_1E65DCB68();
        log = v39;
        v48 = v47;
        v75 = v40;
        v49 = *(v43 + 8);
        v49(v42, v44);
        v50 = sub_1E5DFD4B0(v74, v48, &v88);

        *(v46 + 4) = v50;
        *(v46 + 12) = 2048;
        v51 = v80;
        v52 = *(sub_1E65DCB88() + 16);

        v81 = v49;
        v49(v51, v44);
        *(v46 + 14) = v52;
        _os_log_impl(&dword_1E5DE9000, log, v75, "[Canvas] Scope section %s results:%ld", v46, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v77);
        MEMORY[0x1E694F1C0](v77, -1, -1);
        v53 = v46;
        v38 = v78;
        MEMORY[0x1E694F1C0](v53, -1, -1);
      }

      else
      {
        v54 = *(v43 + 8);
        v54(*(v1 + 96), v44);

        v81 = v54;
        v54(v42, v44);
      }

      (*(v45 + 8))(v86, v79);
      v55 = *(v1 + 112);
      v57 = *(v1 + 80);
      v56 = *(v1 + 88);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077050, &qword_1E65F93B0);
      v58 = *(v56 + 72);
      v59 = (*(v56 + 80) + 32) & ~*(v56 + 80);
      v60 = swift_allocObject();
      *(v60 + 16) = xmmword_1E65EA670;
      v87 = *(v1 + 16);
      v38(v60 + v59, v55, v57);
      v61 = swift_task_alloc();
      *(v61 + 16) = v87;
      v85 = sub_1E5F9F838(sub_1E62549A4, v61, v60);
      swift_setDeallocating();
      v81(v60 + v59, v57);
      swift_deallocClassInstance();

      v81(v55, v57);
      v32 = (v1 + 168);
      v31 = v1 + 176;
      goto LABEL_19;
    }

    (*(*(v1 + 176) + 8))(*v9, *(v1 + 168));
    sub_1E5DFE50C(v25, &qword_1ED072E50, &qword_1E65ECC08);
  }

  else
  {
    sub_1E6254944(*(v1 + 128), MEMORY[0x1E699EEA0]);
  }

  v9 = (v1 + 48);
  v27 = *(v1 + 48);
  sub_1E65DD1C8();
  v28 = sub_1E65E3B48();
  v29 = sub_1E65E6338();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_1E5DE9000, v28, v29, "[Canvas] No results", v30, 2u);
    MEMORY[0x1E694F1C0](v30, -1, -1);
  }

  v31 = v1 + 40;
  v32 = (v1 + 32);
  v85 = MEMORY[0x1E69E7CC0];
LABEL_19:
  v62 = *v9;
  v63 = *(v1 + 184);
  v65 = *(v1 + 152);
  v64 = *(v1 + 160);
  v66 = *(v1 + 128);
  v68 = *(v1 + 104);
  v67 = *(v1 + 112);
  v69 = *(v1 + 96);
  v70 = *(v1 + 64);
  v71 = *(v1 + 72);
  v82 = *(v1 + 56);
  v83 = *(v1 + 48);
  (*(*v31 + 8))(v62, *v32);

  v72 = *(v1 + 8);

  return v72(v85);
}

uint64_t sub_1E624FD44(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E60ABB70;

  return sub_1E624FDDC(a1);
}

uint64_t sub_1E624FDDC(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1E624FDFC, 0, 0);
}

uint64_t sub_1E624FDFC()
{
  v1 = v0[3];
  v2 = v0[4];
  v0[2] = MEMORY[0x1E69E7CC8];
  v3 = sub_1E624D7E4(v1, v0 + 2);
  v0[5] = v3;
  v4 = v2 + *(type metadata accessor for AppComposer() + 20);
  v5 = v4 + *(type metadata accessor for AppEnvironment() + 48);
  v6 = CatalogService.fetchRemoteCatalogLockups.getter();
  v0[6] = v7;
  v11 = (v6 + *v6);
  v8 = v6[1];
  v9 = swift_task_alloc();
  v0[7] = v9;
  *v9 = v0;
  v9[1] = sub_1E624FF40;

  return v11(28, v3);
}

uint64_t sub_1E624FF40(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v7 = sub_1E6250154;
  }

  else
  {
    v9 = v4[5];
    v8 = v4[6];

    v4[9] = a1;
    v7 = sub_1E6250078;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1E6250078()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[4];
  v4 = swift_task_alloc();
  *(v4 + 16) = v0 + 2;
  *(v4 + 24) = v3;
  v5 = sub_1E6404CB8(sub_1E62548C0, v4, v1);

  v6 = sub_1E600A848(v5);

  v7 = v0[2];

  v8 = v0[1];

  return v8(v6);
}

uint64_t sub_1E6250154()
{
  v2 = v0[5];
  v1 = v0[6];

  v3 = v0[2];

  v4 = v0[1];
  v5 = v0[8];

  return v4();
}

uint64_t sub_1E62501C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ItemContext();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SearchItemContext();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E62549BC(a1, v9, type metadata accessor for ItemContext);
  if (swift_getEnumCaseMultiPayload() == 8)
  {
    sub_1E62548DC(v9, v13, type metadata accessor for SearchItemContext);
    sub_1E624E170(a2, a3);
    return sub_1E6254944(v13, type metadata accessor for SearchItemContext);
  }

  else
  {
    sub_1E6254944(v9, type metadata accessor for ItemContext);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072940, &qword_1E65EC0D0);
    return (*(*(v15 - 8) + 56))(a3, 1, 1, v15);
  }
}

uint64_t sub_1E6250380(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v45 = a5;
  v46 = a6;
  v44 = a2;
  v41 = a1;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072810, &qword_1E65EBE08);
  v8 = *(v42 - 8);
  v43 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v40 = v36 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072828, &qword_1E65EBE20);
  v39 = *(v10 - 8);
  v11 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v36 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = v36 - v16;
  v38 = v36 - v16;
  v18 = sub_1E65DD0A8();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *a3;
  swift_getKeyPath();
  sub_1E65E4EC8();

  v37 = sub_1E6014274();
  (*(v19 + 8))(v22, v18);
  v24 = sub_1E65E60A8();
  (*(*(v24 - 8) + 56))(v17, 1, 1, v24);
  sub_1E5DFD1CC(v41, v13, &qword_1ED072828, &qword_1E65EBE20);
  v25 = v40;
  v26 = v42;
  (*(v8 + 16))(v40, v44, v42);
  v27 = *(a4 + 24);
  v36[1] = *a4;
  v36[2] = v27;
  v36[3] = *(a4 + 40);
  v41 = *(a4 + 56);
  v44 = *(a4 + 72);
  v28 = (*(v39 + 80) + 32) & ~*(v39 + 80);
  v29 = (v11 + *(v8 + 80) + v28) & ~*(v8 + 80);
  v30 = (v43 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  *(v31 + 24) = 0;
  sub_1E60E58D4(v13, v31 + v28);
  (*(v8 + 32))(v31 + v29, v25, v26);
  *(v31 + v30) = v37;
  v32 = (v31 + ((v30 + 15) & 0xFFFFFFFFFFFFFFF8));
  v33 = *(a4 + 64);
  v32[3] = *(a4 + 48);
  v32[4] = v33;
  v34 = *(a4 + 32);
  v32[1] = *(a4 + 16);
  v32[2] = v34;
  *v32 = *a4;
  swift_unknownObjectRetain();

  sub_1E6059EAC(0, 0, v38, v46, v31);
}

uint64_t sub_1E6250778(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_1E65DCBE8();
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v5 = sub_1E65DD0A8();
  v2[6] = v5;
  v6 = *(v5 - 8);
  v2[7] = v6;
  v7 = *(v6 + 64) + 15;
  v2[8] = swift_task_alloc();
  v8 = sub_1E65DD128();
  v2[9] = v8;
  v9 = *(v8 - 8);
  v2[10] = v9;
  v10 = *(v9 + 64) + 15;
  v2[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E62508C4, 0, 0);
}

uint64_t sub_1E62508C4()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  v5 = *(v0 + 32);
  v6 = **(v0 + 24);
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E65DD078();
  (*(v2 + 8))(v1, v3);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = *(v0 + 80);
    v7 = *(v0 + 88);
    v9 = *(v0 + 72);
    v18 = *(v0 + 16);
    (*(v8 + 32))(v7, *(v0 + 40), v9);
    v10 = sub_1E65DD118();
    v11 = swift_task_alloc();
    *(v11 + 16) = v18;
    v12 = sub_1E5F9F838(sub_1E6256264, v11, v10);

    (*(v8 + 8))(v7, v9);
  }

  else
  {
    sub_1E6254944(*(v0 + 40), MEMORY[0x1E699EEA0]);
    v12 = MEMORY[0x1E69E7CC0];
  }

  v13 = *(v0 + 88);
  v14 = *(v0 + 64);
  v15 = *(v0 + 40);

  v16 = *(v0 + 8);

  return v16(v12);
}

uint64_t sub_1E6250A8C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E60C34A4;

  return sub_1E6250B24(a1);
}

uint64_t sub_1E6250B24(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = sub_1E65D9CC8();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();
  v6 = sub_1E65DCA68();
  v2[10] = v6;
  v7 = *(v6 - 8);
  v2[11] = v7;
  v8 = *(v7 + 64) + 15;
  v2[12] = swift_task_alloc();
  v9 = type metadata accessor for ItemContext();
  v2[13] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v2[14] = swift_task_alloc();
  v11 = type metadata accessor for SearchItemContext();
  v2[15] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v13 = sub_1E65DCCE8();
  v2[18] = v13;
  v14 = *(v13 - 8);
  v2[19] = v14;
  v15 = *(v14 + 64) + 15;
  v2[20] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072920, &qword_1E65EC040);
  v2[21] = v16;
  v17 = *(v16 - 8);
  v2[22] = v17;
  v18 = *(v17 + 64) + 15;
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6250D88, 0, 0);
}

uint64_t sub_1E6250D88()
{
  v1 = MEMORY[0x1E69E7CC8];
  v0[2] = MEMORY[0x1E69E7CC8];
  v0[3] = v1;
  v94 = v0 + 3;
  v2 = v0[22];
  v3 = v0[19];
  v4 = v0[5];
  v5 = *(v4 + 56);
  v95 = v4 + 56;
  v6 = -1;
  v7 = -1 << *(v4 + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & v5;
  v9 = (63 - v7) >> 6;
  v100 = (v2 + 8);
  v91 = (v0[11] + 8);
  v92 = (v3 + 32);
  v90 = v0[8];
  v89 = (v3 + 8);
  v102 = v0[22];
  v88 = (v2 + 40);
  v101 = v0[5];

  v103 = 0;
  v10 = 0;
  v93 = v1;
  v99 = v9;
  while (2)
  {
    v11 = v10;
    while (1)
    {
      v0[26] = v103;
      v0[27] = v1;
      if (!v8)
      {
        while (1)
        {
          v10 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            __break(1u);
            goto LABEL_49;
          }

          if (v10 >= v9)
          {
            break;
          }

          v8 = *(v95 + 8 * v10);
          ++v11;
          if (v8)
          {
            goto LABEL_12;
          }
        }

        v81 = v0[5];
        v82 = v0[6];

        v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074CD0, &qword_1E660EF60);
        v84 = swift_task_alloc();
        v0[28] = v84;
        *(v84 + 16) = v94;
        *(v84 + 24) = v82;
        v85 = *(MEMORY[0x1E69E88A0] + 4);
        v86 = swift_task_alloc();
        v0[29] = v86;
        *v86 = v0;
        v86[1] = sub_1E625162C;
        v41 = &unk_1E65F93E8;
        v47 = (v0 + 4);
        v37 = v83;
        v38 = v83;
        v39 = 0;
        v40 = 0;
        v42 = v84;
        v43 = v83;

        return MEMORY[0x1EEE6DD58](v47, v37, v38, v39, v40, v41, v42, v43);
      }

      v10 = v11;
LABEL_12:
      v15 = v0[24];
      v14 = v0[25];
      v16 = v0[21];
      v18 = v0[13];
      v17 = v0[14];
      v19 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v96 = v102[9];
      v97 = v102[2];
      v97(v14, *(v101 + 48) + v96 * (v19 | (v10 << 6)), v16);
      v20 = v102[4];
      v20(v15, v14, v16);
      sub_1E65E04E8();
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        v12 = v0[14];
        (*v100)(v0[24], v0[21]);
        v13 = type metadata accessor for ItemContext;
        goto LABEL_6;
      }

      v22 = v0[16];
      v21 = v0[17];
      v23 = v0[15];
      sub_1E62548DC(v0[14], v21, type metadata accessor for SearchItemContext);
      sub_1E62548DC(v21, v22, type metadata accessor for SearchItemContext);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v12 = v0[16];
      if (EnumCaseMultiPayload == 1)
      {
        break;
      }

      (*v100)(v0[24], v0[21]);
      v13 = type metadata accessor for SearchItemContext;
LABEL_6:
      sub_1E6254944(v12, v13);
      v11 = v10;
      v9 = v99;
    }

    v25 = v0[12];
    v26 = v0[10];
    (*v92)(v0[20], v0[16], v0[18]);
    sub_1E65DCCD8();
    sub_1E65DCA58();
    (*v91)(v25, v26);
    v27 = sub_1E65DCBF8();
    v29 = v28;
    if (v27 == sub_1E65DCBF8() && v29 == v30)
    {

      v31 = 29;
    }

    else
    {
      v32 = sub_1E65E6C18();

      if (v32)
      {
        v31 = 29;
      }

      else
      {
        v31 = 28;
      }
    }

    v33 = v0[20];
    sub_1E65DCCB8();
    v34 = qword_1E65F9410[sub_1E65DCCA8()];
    v35 = v0[9];
    sub_1E65D9C88();
    sub_1E5E29474(v103);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v44 = sub_1E6417574(v31);
    v45 = v93[2];
    v46 = (v37 & 1) == 0;
    v47 = v45 + v46;
    if (__OFADD__(v45, v46))
    {
      __break(1u);
      goto LABEL_53;
    }

    v48 = v37;
    if (v93[3] >= v47)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v47 = sub_1E64257B0();
      }

LABEL_27:
      *v94 = v93;
      if ((v48 & 1) == 0)
      {
        v93[(v44 >> 6) + 8] |= 1 << v44;
        *(v93[6] + v44) = v31;
        *(v93[7] + 8 * v44) = MEMORY[0x1E69E7CC0];
        v49 = v93[2];
        v50 = __OFADD__(v49, 1);
        v51 = v49 + 1;
        if (v50)
        {
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
          return MEMORY[0x1EEE6DD58](v47, v37, v38, v39, v40, v41, v42, v43);
        }

        v93[2] = v51;
      }

      v52 = v93[7];
      v53 = *(v52 + 8 * v44);
      v54 = swift_isUniquelyReferenced_nonNull_native();
      *(v52 + 8 * v44) = v53;
      if ((v54 & 1) == 0)
      {
        v53 = sub_1E64F610C(0, v53[2] + 1, 1, v53);
        *(v52 + 8 * v44) = v53;
      }

      v56 = v53[2];
      v55 = v53[3];
      if (v56 >= v55 >> 1)
      {
        v53 = sub_1E64F610C(v55 > 1, v56 + 1, 1, v53);
        *(v52 + 8 * v44) = v53;
      }

      v57 = v0[23];
      v104 = v0[24];
      v58 = v0[20];
      v59 = v0[21];
      v60 = v0[9];
      v61 = v0[7];
      v53[2] = v56 + 1;
      (*(v90 + 32))(v53 + ((*(v90 + 80) + 32) & ~*(v90 + 80)) + *(v90 + 72) * v56, v60, v61);
      v62 = sub_1E65DCCB8();
      v64 = v63;
      v97(v57, v104, v59);
      v65 = v0[2];
      v66 = swift_isUniquelyReferenced_nonNull_native();
      v107 = v65;
      v47 = sub_1E6215038(v62, v64);
      v67 = v65[2];
      v68 = (v37 & 1) == 0;
      v50 = __OFADD__(v67, v68);
      v69 = v67 + v68;
      if (!v50)
      {
        v70 = v37;
        if (v65[3] >= v69)
        {
          if ((v66 & 1) == 0)
          {
            v80 = v47;
            sub_1E6424B84();
            v47 = v80;
          }
        }

        else
        {
          sub_1E641BE8C(v69, v66);
          v47 = sub_1E6215038(v62, v64);
          if ((v70 & 1) != (v71 & 1))
          {
            goto LABEL_49;
          }
        }

        v72 = v0[23];
        v105 = v0[24];
        v73 = v0[21];
        v98 = v0[20];
        v74 = v0[18];
        if (v70)
        {
          v75 = v47;

          v1 = v107;
          (*v88)(v107[7] + v75 * v96, v72, v73);
          (*v89)(v98, v74);
          (*v100)(v105, v73);
LABEL_44:
          v9 = v99;
          v0[2] = v1;
          v103 = sub_1E624E160;
          continue;
        }

        v76 = v62;
        v1 = v107;
        v107[(v47 >> 6) + 8] |= 1 << v47;
        v77 = (v107[6] + 16 * v47);
        *v77 = v76;
        v77[1] = v64;
        v20(v107[7] + v47 * v96, v72, v73);
        (*v89)(v98, v74);
        v47 = (*v100)(v105, v73);
        v78 = v107[2];
        v50 = __OFADD__(v78, 1);
        v79 = v78 + 1;
        if (!v50)
        {
          v107[2] = v79;
          goto LABEL_44;
        }

        goto LABEL_55;
      }

LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    break;
  }

  sub_1E641D4E8(v47, isUniquelyReferenced_nonNull_native);
  v47 = sub_1E6417574(v31);
  if ((v48 & 1) == (v37 & 1))
  {
    v44 = v47;
    goto LABEL_27;
  }

LABEL_49:

  return sub_1E65E6C68();
}

uint64_t sub_1E625162C()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v7 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v4 = sub_1E62518BC;
  }

  else
  {
    v5 = *(v2 + 224);

    v4 = sub_1E6251748;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E6251748()
{
  v1 = v0[30];
  v3 = v0[25];
  v2 = v0[26];
  v4 = v0[23];
  v5 = v0[24];
  v15 = v0[20];
  v16 = v0[17];
  v17 = v0[16];
  v18 = v0[14];
  v19 = v0[12];
  v20 = v0[9];
  v6 = v0[6];
  v7 = v0[4];
  v8 = swift_task_alloc();
  *(v8 + 16) = v0 + 2;
  *(v8 + 24) = v6;
  v9 = sub_1E6404CB8(sub_1E6256288, v8, v7);

  v10 = sub_1E600A848(v9);

  v11 = v0[3];

  v12 = v0[2];

  sub_1E5E29474(v2);

  v13 = v0[1];

  return v13(v10);
}

uint64_t sub_1E62518BC()
{
  v2 = v0[27];
  v1 = v0[28];
  v4 = v0[25];
  v3 = v0[26];
  v6 = v0[23];
  v5 = v0[24];
  v7 = v0[20];
  v9 = v0[16];
  v8 = v0[17];
  v10 = v0[14];
  v15 = v0[12];
  v16 = v0[9];

  v11 = v0[3];

  sub_1E5E29474(v3);

  v12 = v0[1];
  v13 = v0[30];

  return v12();
}

uint64_t sub_1E62519C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a3;
  v4[13] = a4;
  v4[10] = a1;
  v4[11] = a2;
  v5 = *(type metadata accessor for AppComposer() - 8);
  v4[14] = v5;
  v4[15] = *(v5 + 64);
  v4[16] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000) - 8) + 64) + 15;
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077058, &qword_1E65F93F0);
  v4[19] = v7;
  v8 = *(v7 - 8);
  v4[20] = v8;
  v9 = *(v8 + 64) + 15;
  v4[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6251B38, 0, 0);
}

uint64_t sub_1E6251B38()
{
  v40 = (v0 + 16);
  v1 = **(v0 + 96);
  v4 = *(v1 + 64);
  v3 = v1 + 64;
  v2 = v4;
  v43 = *(v0 + 112);
  v5 = -1;
  v6 = -1 << *(**(v0 + 96) + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v2;
  v8 = (63 - v6) >> 6;
  v45 = **(v0 + 96);

  v12 = 0;
  v44 = v3;
  v41 = v0;
  v42 = v8;
  while (v7)
  {
LABEL_10:
    v15 = *(v0 + 144);
    v46 = v15;
    v16 = *(v0 + 120);
    v17 = *(v0 + 128);
    v18 = *(v0 + 104);
    v19 = __clz(__rbit64(v7)) | (v12 << 6);
    v47 = *(*(v45 + 48) + v19);
    v48 = *(*(v45 + 56) + 8 * v19);
    v49 = *(v0 + 136);
    v20 = sub_1E65E60A8();
    v21 = *(v20 - 8);
    (*(v21 + 56))(v15, 1, 1, v20);
    sub_1E62549BC(v18, v17, type metadata accessor for AppComposer);
    v22 = (*(v43 + 80) + 32) & ~*(v43 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = 0;
    *(v23 + 24) = 0;
    sub_1E62548DC(v17, v23 + v22, type metadata accessor for AppComposer);
    *(v23 + v22 + v16) = v47;
    *(v23 + ((v22 + v16) & 0xFFFFFFFFFFFFFFF8) + 8) = v48;
    sub_1E5DFD1CC(v46, v49, &unk_1ED0735B0, &qword_1E65EA000);
    v24 = (*(v21 + 48))(v49, 1, v20);

    v25 = *(v41 + 136);
    if (v24 == 1)
    {
      sub_1E5DFE50C(*(v41 + 136), &unk_1ED0735B0, &qword_1E65EA000);
    }

    else
    {
      sub_1E65E6098();
      (*(v21 + 8))(v25, v20);
    }

    v0 = v41;
    if (*(v23 + 16))
    {
      v26 = *(v23 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v27 = sub_1E65E5FC8();
      v29 = v28;
      swift_unknownObjectRelease();
    }

    else
    {
      v27 = 0;
      v29 = 0;
    }

    v30 = **(v41 + 88);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074CD0, &qword_1E660EF60);
    v31 = (v29 | v27);
    if (v29 | v27)
    {
      v31 = v40;
      *v40 = 0;
      v40[1] = 0;
      *(v41 + 32) = v27;
      *(v41 + 40) = v29;
    }

    v13 = *(v41 + 144);
    v7 &= v7 - 1;
    *(v41 + 48) = 1;
    *(v41 + 56) = v31;
    *(v41 + 64) = v30;
    swift_task_create();

    v9 = sub_1E5DFE50C(v13, &unk_1ED0735B0, &qword_1E65EA000);
    v3 = v44;
    v8 = v42;
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      return MEMORY[0x1EEE6D8C8](v9, v10, v11);
    }

    if (v14 >= v8)
    {
      break;
    }

    v7 = *(v3 + 8 * v14);
    ++v12;
    if (v7)
    {
      v12 = v14;
      goto LABEL_10;
    }
  }

  v32 = *(v0 + 168);
  v33 = *(v0 + 88);

  v34 = *v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074CD0, &qword_1E660EF60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B740, &qword_1E65ED600);
  sub_1E65E6168();
  *(v0 + 176) = MEMORY[0x1E69E7CC0];
  v35 = sub_1E5FED46C(&qword_1ED077060, &qword_1ED077058, &qword_1E65F93F0);
  v36 = *(MEMORY[0x1E69E85A8] + 4);
  v37 = swift_task_alloc();
  *(v0 + 184) = v37;
  *v37 = v0;
  v37[1] = sub_1E6251FF8;
  v38 = *(v0 + 168);
  v10 = *(v0 + 152);
  v9 = v0 + 72;
  v11 = v35;

  return MEMORY[0x1EEE6D8C8](v9, v10, v11);
}

uint64_t sub_1E6251FF8()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v7 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v4 = v2[22];
    (*(v2[20] + 8))(v2[21], v2[19]);

    v5 = sub_1E62523A4;
  }

  else
  {
    v5 = sub_1E625212C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E625212C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[9];
  v5 = v3[22];
  if (v4)
  {
    v6 = *(v4 + 16);
    v7 = *(v5 + 16);
    v8 = v7 + v6;
    if (__OFADD__(v7, v6))
    {
      __break(1u);
    }

    else
    {
      v9 = v3[22];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v11 = v3[22];
      if (isUniquelyReferenced_nonNull_native && v8 <= *(v11 + 24) >> 1)
      {
        if (*(v4 + 16))
        {
          goto LABEL_6;
        }
      }

      else
      {
        if (v7 <= v8)
        {
          v25 = v7 + v6;
        }

        else
        {
          v25 = v7;
        }

        v11 = sub_1E64F66F0(isUniquelyReferenced_nonNull_native, v25, 1, v3[22]);
        if (*(v4 + 16))
        {
LABEL_6:
          v12 = (*(v11 + 24) >> 1) - *(v11 + 16);
          a1 = sub_1E65D8258();
          v13 = *(a1 - 8);
          if (v12 >= v6)
          {
            v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
            v15 = *(v13 + 72);
            swift_arrayInitWithCopy();

            if (!v6)
            {
              goto LABEL_18;
            }

            v16 = *(v11 + 16);
            v17 = __OFADD__(v16, v6);
            v18 = v16 + v6;
            if (!v17)
            {
              *(v11 + 16) = v18;
              goto LABEL_18;
            }

LABEL_24:
            __break(1u);
            return MEMORY[0x1EEE6D8C8](a1, a2, a3);
          }

LABEL_23:
          __break(1u);
          goto LABEL_24;
        }
      }

      if (!v6)
      {
LABEL_18:
        v3[22] = v11;
        v26 = sub_1E5FED46C(&qword_1ED077060, &qword_1ED077058, &qword_1E65F93F0);
        v27 = *(MEMORY[0x1E69E85A8] + 4);
        v28 = swift_task_alloc();
        v3[23] = v28;
        *v28 = v3;
        v28[1] = sub_1E6251FF8;
        v29 = v3[21];
        a2 = v3[19];
        a1 = (v3 + 9);
        a3 = v26;

        return MEMORY[0x1EEE6D8C8](a1, a2, a3);
      }
    }

    __break(1u);
    goto LABEL_23;
  }

  v19 = v3[18];
  v21 = v3[16];
  v20 = v3[17];
  v22 = v3[10];
  (*(v3[20] + 8))(v3[21], v3[19]);
  *v22 = v5;

  v23 = v3[1];

  return v23();
}

uint64_t sub_1E62523A4()
{
  v1 = v0[21];
  v2 = v0[17];
  v3 = v0[18];
  v4 = v0[16];

  v5 = v0[1];
  v6 = v0[24];

  return v5();
}

uint64_t sub_1E6252430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  *(v6 + 32) = a6;
  *(v6 + 72) = a5;
  *(v6 + 16) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1E6252458, 0, 0);
}

uint64_t sub_1E6252458()
{
  v1 = *(v0 + 24);
  v2 = v1 + *(type metadata accessor for AppComposer() + 20);
  v3 = v2 + *(type metadata accessor for AppEnvironment() + 48);
  v4 = CatalogService.fetchRemoteCatalogLockups.getter();
  *(v0 + 40) = v5;
  v11 = (v4 + *v4);
  v6 = v4[1];
  v7 = swift_task_alloc();
  *(v0 + 48) = v7;
  *v7 = v0;
  v7[1] = sub_1E6252578;
  v8 = *(v0 + 32);
  v9 = *(v0 + 72);

  return v11(v9, v8);
}

uint64_t sub_1E6252578(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v7 = sub_1E5F9E470;
  }

  else
  {
    v8 = *(v4 + 40);

    *(v4 + 64) = a1;
    v7 = sub_1E6232F90;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1E62526A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v95 = a3;
  v106 = a2;
  v107 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072668, &qword_1E65EB978);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = (&v82 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072670, &qword_1E65EB980);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v99 = &v82 - v12;
  v88 = type metadata accessor for ItemContext();
  v13 = *(*(v88 - 8) + 64);
  MEMORY[0x1EEE9AC00](v88);
  v98 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  v84 = *(v85 - 8);
  v15 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v85);
  v83 = &v82 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072610, &qword_1E65EB930);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v97 = &v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v87 = &v82 - v21;
  v94 = sub_1E65D7848();
  v92 = *(v94 - 8);
  v22 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v94);
  v90 = &v82 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_1E65DCA68();
  v89 = *(v91 - 8);
  v24 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v91);
  v26 = &v82 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0760D8, &qword_1E65F4990);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v93 = &v82 - v29;
  v30 = sub_1E65DCF98();
  v100 = *(v30 - 8);
  v101 = v30;
  v31 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v86 = &v82 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0760E0, &qword_1E65F4998);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v36 = &v82 - v35;
  v37 = sub_1E65DCCE8();
  v38 = *(v37 - 8);
  v39 = v38[8];
  MEMORY[0x1EEE9AC00](v37);
  v102 = &v82 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072920, &qword_1E65EC040);
  v103 = *(v41 - 8);
  v104 = v41;
  v42 = *(v103 + 64);
  v43 = MEMORY[0x1EEE9AC00](v41);
  v45 = &v82 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v105 = &v82 - v46;
  v96 = a1;
  v47 = sub_1E65D8078();
  v49 = *v106;
  if (*(*v106 + 16))
  {
    v82 = v9;
    v106 = v4;
    v50 = sub_1E6215038(v47, v48);
    v52 = v51;

    if (v52)
    {
      v53 = v104;
      v54 = *(v49 + 56) + *(v103 + 72) * v50;
      v55 = v103;
      (*(v103 + 16))(v45, v54, v104);
      v56 = v105;
      (*(v55 + 32))(v105, v45, v53);
      sub_1E628C28C(v36);
      v57 = v37;
      if ((v38[6])(v36, 1, v37) == 1)
      {
        (*(v55 + 8))(v56, v53);
        v58 = &qword_1ED0760E0;
        v59 = &qword_1E65F4998;
        v60 = v36;
      }

      else
      {
        (v38[4])(v102, v36, v37);
        sub_1E65DCCD8();
        v62 = v95;
        v63 = *v95;
        swift_getKeyPath();
        v64 = v90;
        sub_1E65E4EC8();

        v65 = v62 + *(type metadata accessor for AppComposer() + 20);
        v66 = type metadata accessor for AppEnvironment();
        v67 = v93;
        sub_1E645B850(v26, v64, (v65 + *(v66 + 136)), v93);
        (*(v92 + 8))(v64, v94);
        v68 = v26;
        v69 = v67;
        (*(v89 + 8))(v68, v91);
        v70 = v100;
        v71 = v67;
        v72 = v101;
        if ((*(v100 + 48))(v71, 1, v101) != 1)
        {
          v76 = *(v70 + 32);
          v95 = v38;
          v77 = v86;
          v76(v86, v69, v72);
          swift_getKeyPath();
          v78 = v83;
          sub_1E65E4EC8();

          v79 = *(v65 + 8);
          v94 = v57;
          v80 = v87;
          sub_1E6052A2C(v78, v79, v87);
          (*(v84 + 8))(v78, v85);
          v81 = v104;
          sub_1E65E04E8();
          sub_1E5DFD1CC(v80, v97, &qword_1ED072610, &qword_1E65EB930);
          sub_1E62E2980(v99);
          sub_1E60144DC(v82);
          v96 = type metadata accessor for ActionButtonDescriptor(0);
          v93 = type metadata accessor for ArtworkDescriptor();
          v92 = type metadata accessor for ContextMenu(0);
          v91 = type metadata accessor for ItemMetrics();
          v90 = type metadata accessor for ViewDescriptor();
          v89 = sub_1E6254878(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor);
          sub_1E6254878(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor);
          sub_1E6254878(&qword_1EE2DB8B0, type metadata accessor for ContextMenu);
          sub_1E6254878(&qword_1EE2DB720, type metadata accessor for ItemContext);
          sub_1E6254878(&qword_1EE2DB738, type metadata accessor for ItemContext);
          sub_1E6254878(&qword_1EE2DB730, type metadata accessor for ItemContext);
          sub_1E6254878(&qword_1EE2DB650, type metadata accessor for ItemMetrics);
          sub_1E6254878(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor);
          v73 = v107;
          sub_1E65E0488();
          sub_1E5DFE50C(v80, &qword_1ED072610, &qword_1E65EB930);
          (*(v100 + 8))(v77, v101);
          (v95[1])(v102, v94);
          (*(v103 + 8))(v105, v81);
          v61 = 0;
          goto LABEL_11;
        }

        (v38[1])(v102, v57);
        (*(v103 + 8))(v105, v104);
        v58 = &qword_1ED0760D8;
        v59 = &qword_1E65F4990;
        v60 = v69;
      }

      sub_1E5DFE50C(v60, v58, v59);
    }

    v61 = 1;
  }

  else
  {

    v61 = 1;
  }

  v73 = v107;
LABEL_11:
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072098, &qword_1E65EA780);
  return (*(*(v74 - 8) + 56))(v73, v61, 1, v74);
}

uint64_t sub_1E625325C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v4 = type metadata accessor for RouteResource();
  v3[6] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E62532F0, 0, 0);
}

uint64_t sub_1E62532F0()
{
  v1 = *(v0 + 48);
  sub_1E62549BC(*(v0 + 32), *(v0 + 56), type metadata accessor for RouteResource);
  if (swift_getEnumCaseMultiPayload() == 23)
  {
    v2 = *(v0 + 56);
    v3 = *(v0 + 40);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0778F0, &unk_1E65EA7F0);
    v5 = *(v4 + 48);
    sub_1E61B73EC(*(v2 + *(v4 + 64)), *(v2 + *(v4 + 64) + 8));
    v6 = sub_1E65E5528();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
    v7 = sub_1E65E57D8();
    (*(*(v7 - 8) + 8))(v2, v7);
    v8 = v3[3];
    v9 = v3[4];
    __swift_project_boxed_opaque_existential_1(v3, v8);
    *(v0 + 16) = 2;
    *(v0 + 24) = -64;
    *(v0 + 26) = 0;
    v10 = *(v9 + 72);
    v20 = (v10 + *v10);
    v11 = v10[1];
    v12 = swift_task_alloc();
    *(v0 + 80) = v12;
    *v12 = v0;
    v12[1] = sub_1E6253728;
    v13 = *(v0 + 32);

    return v20(v13, v0 + 16, 1, v0 + 26, v8, v9);
  }

  else
  {
    v15 = *(v0 + 40);
    sub_1E6254944(*(v0 + 56), type metadata accessor for RouteResource);
    v16 = v15[3];
    v17 = v15[4];
    __swift_project_boxed_opaque_existential_1(v15, v16);
    sub_1E600F5B0((v0 + 25));
    v18 = swift_task_alloc();
    *(v0 + 64) = v18;
    *v18 = v0;
    v18[1] = sub_1E62535EC;
    v19 = *(v0 + 32);

    return RoutingContext.appendDestination(_:priority:)(v19, (v0 + 25), v16, v17);
  }
}

uint64_t sub_1E62535EC()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E6253864, 0, 0);
  }

  else
  {
    v4 = v3[7];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_1E6253728()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  v3[11] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E62538C8, 0, 0);
  }

  else
  {
    v4 = v3[7];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_1E6253864()
{
  v1 = v0[9];
  v2 = v0[7];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1E62538C8()
{
  v1 = v0[11];
  v2 = v0[7];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1E625392C(uint64_t a1)
{
  v4 = *(type metadata accessor for RouteDestination() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5DFE6BC;

  return sub_1E625325C(a1, v1 + v5, v1 + v6);
}

uint64_t sub_1E6253A30(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072710, &qword_1E65EBB90);
  v73 = *(v74 - 8);
  v10 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v71 = v59 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077D10, &unk_1E65FAA50);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v65 = v59 - v14;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072718, &qword_1E65EBB98);
  v72 = *(v70 - 8);
  v15 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v70);
  v69 = v59 - v16;
  v17 = type metadata accessor for AppComposer();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17 - 8);
  v68 = v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v85 = v59 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v82 = v59 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = v59 - v26;
  v64 = v19;
  MEMORY[0x1EEE9AC00](v25);
  v29 = v59 - v28;
  v90[3] = a4;
  v90[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v90);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, a1, a4);
  v31 = a3;
  sub_1E62549BC(a3, v29, type metadata accessor for AppComposer);
  sub_1E5DF650C(v90, &v89);
  v32 = *(v18 + 80);
  v33 = (v32 + 16) & ~v32;
  v81 = v33 + v19;
  v34 = (v33 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  v84 = v35;
  sub_1E62548DC(v29, v35 + v33, type metadata accessor for AppComposer);
  sub_1E5DF599C(&v89, v35 + v34);
  sub_1E62549BC(v31, v27, type metadata accessor for AppComposer);
  v36 = *a2;
  v59[12] = a2[3];
  v59[13] = a2[5];
  v59[14] = a2[7];
  v59[15] = a2[9];
  v37 = swift_allocObject();
  v67 = v37;
  sub_1E62548DC(v27, v37 + v33, type metadata accessor for AppComposer);
  v38 = (v37 + v34);
  v39 = *(a2 + 3);
  v38[2] = *(a2 + 2);
  v38[3] = v39;
  v38[4] = *(a2 + 4);
  v40 = *(a2 + 1);
  *v38 = *a2;
  v38[1] = v40;
  v41 = v82;
  v62 = type metadata accessor for AppComposer;
  sub_1E62549BC(v31, v82, type metadata accessor for AppComposer);
  v61 = v32;
  v83 = swift_allocObject();
  v63 = type metadata accessor for AppComposer;
  sub_1E62548DC(v41, v83 + v33, type metadata accessor for AppComposer);
  v60 = v31;
  v42 = v85;
  sub_1E62549BC(v31, v85, type metadata accessor for AppComposer);
  v81 = swift_allocObject();
  sub_1E62548DC(v42, v81 + v33, type metadata accessor for AppComposer);
  v66 = *v31;
  v85 = type metadata accessor for ActionButtonDescriptor(0);
  v82 = type metadata accessor for ArtworkDescriptor();
  v80 = type metadata accessor for ContextMenu(0);
  v79 = type metadata accessor for ItemContext();
  v78 = type metadata accessor for ItemMetrics();
  v77 = type metadata accessor for SectionHeaderSubtitleDescriptor();
  v59[11] = type metadata accessor for SectionMetrics();
  v76 = type metadata accessor for ViewDescriptor();
  v59[10] = sub_1E6254878(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor);
  v75 = sub_1E6254878(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor);
  v59[9] = sub_1E6254878(&qword_1EE2DB8B0, type metadata accessor for ContextMenu);
  v59[8] = sub_1E6254878(&qword_1EE2DB720, type metadata accessor for ItemContext);
  v59[7] = sub_1E6254878(&qword_1EE2DB738, type metadata accessor for ItemContext);
  v59[6] = sub_1E6254878(&qword_1EE2DB730, type metadata accessor for ItemContext);
  v59[5] = sub_1E6254878(&qword_1EE2DB650, type metadata accessor for ItemMetrics);
  v59[4] = sub_1E6254878(&qword_1EE2D7D88, type metadata accessor for SectionHeaderSubtitleDescriptor);
  v59[3] = sub_1E6254878(&qword_1EE2DA950, type metadata accessor for SectionMetrics);
  v59[2] = sub_1E5DF11E0();
  v59[1] = sub_1E5DF1338();
  sub_1E6254878(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor);
  swift_unknownObjectRetain();

  sub_1E65DC178();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077D20, &qword_1E65FAA70);

  v44 = sub_1E65DC168();
  v87 = v43;
  v88 = sub_1E5FED46C(&qword_1EE2D6BA8, &qword_1ED077D20, &qword_1E65FAA70);
  v86 = v44;
  v45 = v69;
  sub_1E65DC248();
  v46 = v68;
  sub_1E62549BC(v60, v68, v62);
  v47 = (v61 + 32) & ~v61;
  v48 = (v64 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
  v49 = swift_allocObject();
  strcpy((v49 + 16), "Search Results");
  *(v49 + 31) = -18;
  sub_1E62548DC(v46, v49 + v47, v63);
  v50 = (v49 + v48);
  *v50 = sub_1E5F8AA74;
  v50[1] = 0;
  v51 = swift_allocObject();
  strcpy((v51 + 16), "Search Results");
  *(v51 + 31) = -18;
  type metadata accessor for AppFeature();
  sub_1E6254878(&qword_1EE2DBD90, type metadata accessor for AppFeature);
  sub_1E5FED46C(&qword_1EE2D6BA0, &qword_1ED072718, &qword_1E65EBB98);
  v52 = v71;
  v53 = v70;
  sub_1E65E4DE8();
  v54 = swift_allocObject();
  v55 = v67;
  *(v54 + 16) = sub_1E625477C;
  *(v54 + 24) = v55;

  sub_1E65E4CC8();
  v56 = swift_allocObject();
  *(v56 + 16) = sub_1E5FE9CE8;
  *(v56 + 24) = v54;

  v57 = sub_1E65E4F08();

  (*(v73 + 8))(v52, v74);
  (*(v72 + 8))(v45, v53);
  __swift_destroy_boxed_opaque_existential_1(v90);
  return v57;
}

uint64_t sub_1E625479C(uint64_t a1)
{
  v3 = *(type metadata accessor for AppComposer() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1E5FEE4D4;

  return sub_1E624FD44(a1);
}

uint64_t sub_1E6254878(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E62548DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E6254944(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E62549BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E6254AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(type metadata accessor for AppComposer() - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  return sub_1E6250380(a1, a2, (v4 + v10), v4 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8), a3, a4);
}

uint64_t sub_1E6254B9C(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5FEE4D4;

  return sub_1E6250778(a1, v1 + v5);
}

uint64_t sub_1E6254C74(uint64_t a1)
{
  v3 = *(type metadata accessor for AppComposer() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1E5FEE4D4;

  return sub_1E6250A8C(a1);
}

uint64_t objectdestroy_20Tm_0()
{
  v115 = type metadata accessor for AppComposer();
  v113 = *(*(v115 - 1) + 80);
  v111 = *(*(v115 - 1) + 64);
  v1 = *(v0 + 24);

  v114 = v0;
  v112 = (v113 + 32) & ~v113;
  v108 = v0 + v112;
  v2 = *(v0 + v112);

  v3 = (v0 + v112 + v115[5]);
  v4 = *v3;
  swift_unknownObjectRelease();
  v5 = type metadata accessor for AppEnvironment();
  v6 = v5[6];
  v110 = type metadata accessor for AccountService();
  v109 = *(v110[-1].Description + 1);
  v109(&v3[v6], v110);
  v7 = v5[7];
  v107 = type metadata accessor for AppStateService();
  v106 = *(v107[-1].Description + 1);
  v106(&v3[v7], v107);
  v8 = v5[8];
  v105 = type metadata accessor for ArchivedSessionService();
  v104 = *(v105[-1].Description + 1);
  v104(&v3[v8], v105);
  v9 = v5[9];
  v103 = type metadata accessor for AssetService();
  v102 = *(v103[-1].Description + 1);
  v102(&v3[v9], v103);
  v10 = v5[10];
  v101 = type metadata accessor for AwardsService();
  v100 = *(v101[-1].Description + 1);
  v100(&v3[v10], v101);
  v11 = v5[11];
  v99 = type metadata accessor for BookmarkService();
  v98 = *(v99[-1].Description + 1);
  v98(&v3[v11], v99);
  v12 = v5[12];
  v97 = type metadata accessor for CatalogService();
  v96 = *(v97[-1].Description + 1);
  v96(&v3[v12], v97);
  v13 = v5[13];
  v95 = type metadata accessor for ConfigurationService();
  v94 = *(v95[-1].Description + 1);
  v94(&v3[v13], v95);
  v14 = v5[14];
  v93 = type metadata accessor for ContentAvailabilityService();
  v92 = *(v93[-1].Description + 1);
  v92(&v3[v14], v93);
  v15 = v5[15];
  v91 = type metadata accessor for EngagementService();
  v90 = *(v91[-1].Description + 1);
  v90(&v3[v15], v91);
  v16 = v5[16];
  v89 = type metadata accessor for HealthDataService();
  v88 = *(v89[-1].Description + 1);
  v88(&v3[v16], v89);
  v17 = v5[17];
  v87 = type metadata accessor for InteropService();
  v86 = *(v87[-1].Description + 1);
  v86(&v3[v17], v87);
  v18 = v5[18];
  v85 = type metadata accessor for LocalizationService();
  v84 = *(v85[-1].Description + 1);
  v84(&v3[v18], v85);
  v19 = v5[19];
  v83 = type metadata accessor for MarketingService();
  v82 = *(v83[-1].Description + 1);
  v82(&v3[v19], v83);
  v20 = v5[20];
  v81 = type metadata accessor for MetricService();
  v80 = *(v81[-1].Description + 1);
  v80(&v3[v20], v81);
  v21 = v5[21];
  v79 = type metadata accessor for PersonalizationService();
  v78 = *(v79[-1].Description + 1);
  v78(&v3[v21], v79);
  v22 = v5[22];
  v77 = type metadata accessor for PlayerService();
  v76 = *(v77[-1].Description + 1);
  v76(&v3[v22], v77);
  v23 = v5[23];
  v75 = type metadata accessor for PrivacyPreferenceService();
  v74 = *(v75[-1].Description + 1);
  v74(&v3[v23], v75);
  v24 = v5[24];
  v73 = type metadata accessor for RecommendationService();
  v72 = *(v73[-1].Description + 1);
  v72(&v3[v24], v73);
  v25 = v5[25];
  v71 = type metadata accessor for RemoteBrowsingService();
  v70 = *(v71[-1].Description + 1);
  v70(&v3[v25], v71);
  v26 = v5[26];
  v69 = type metadata accessor for SearchService();
  v68 = *(v69[-1].Description + 1);
  v68(&v3[v26], v69);
  v27 = v5[27];
  v67 = type metadata accessor for ServiceSubscriptionService();
  v66 = *(v67[-1].Description + 1);
  v66(&v3[v27], v67);
  v28 = v5[28];
  v60 = type metadata accessor for SessionService();
  v65 = *(v60[-1].Description + 1);
  v65(&v3[v28], v60);
  v29 = v5[29];
  v30 = type metadata accessor for SharePlayService();
  v64 = *(v30[-1].Description + 1);
  v64(&v3[v29], v30);
  v31 = v5[30];
  v32 = type metadata accessor for SiriService();
  v63 = *(v32[-1].Description + 1);
  v63(&v3[v31], v32);
  v33 = v5[31];
  v34 = type metadata accessor for SyncService();
  v62 = *(v34[-1].Description + 1);
  v62(&v3[v33], v34);
  v35 = &v3[v5[32]];
  v36 = *(v35 + 1);

  v37 = *(v35 + 3);

  v38 = *(v35 + 5);

  v39 = v5[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v61 = *(QueueService[-1].Description + 1);
  v61(&v3[v39], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v3[v5[34]]);
  v41 = *&v3[v5[35]];

  v42 = v5[36];
  v43 = type metadata accessor for WorkoutPlanService();
  v59 = *(v43[-1].Description + 1);
  v59(&v3[v42], v43);
  v44 = *(v108 + v115[6]);

  v45 = (v108 + v115[7]);
  v46 = *v45;

  v47 = v45[1];

  v48 = v45 + *(type metadata accessor for AppDataItemResolver() + 24);
  v49 = *v48;
  swift_unknownObjectRelease();
  v109(&v48[v5[6]], v110);
  v106(&v48[v5[7]], v107);
  v104(&v48[v5[8]], v105);
  v102(&v48[v5[9]], v103);
  v100(&v48[v5[10]], v101);
  v98(&v48[v5[11]], v99);
  v96(&v48[v5[12]], v97);
  v94(&v48[v5[13]], v95);
  v92(&v48[v5[14]], v93);
  v90(&v48[v5[15]], v91);
  v88(&v48[v5[16]], v89);
  v86(&v48[v5[17]], v87);
  v84(&v48[v5[18]], v85);
  v82(&v48[v5[19]], v83);
  v80(&v48[v5[20]], v81);
  v78(&v48[v5[21]], v79);
  v76(&v48[v5[22]], v77);
  v74(&v48[v5[23]], v75);
  v72(&v48[v5[24]], v73);
  v70(&v48[v5[25]], v71);
  v68(&v48[v5[26]], v69);
  v66(&v48[v5[27]], v67);
  v65(&v48[v5[28]], v60);
  v64(&v48[v5[29]], v30);
  v63(&v48[v5[30]], v32);
  v62(&v48[v5[31]], v34);
  v50 = &v48[v5[32]];
  v51 = *(v50 + 1);

  v52 = *(v50 + 3);

  v53 = *(v50 + 5);

  v61(&v48[v5[33]], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v48[v5[34]]);
  v54 = *&v48[v5[35]];

  v59(&v48[v5[36]], v43);
  v55 = *(v108 + v115[8]);
  swift_unknownObjectRelease();
  if (*(v108 + v115[9] + 8) >= 0xCuLL)
  {
  }

  v56 = (v108 + v115[10]);
  if (v56[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v56);
  }

  v57 = *(v114 + ((v111 + v112 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_1E6255A3C(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E62519C4(a1, a2, v7, v6);
}

uint64_t sub_1E6255AF0(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = v5 + *(v4 + 64);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + (v6 & 0xFFFFFFFFFFFFFFF8) + 8);
  v10 = *(v1 + v6);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1E5DFE6BC;

  return sub_1E6252430(a1, v7, v8, v1 + v5, v10, v9);
}

uint64_t sub_1E6255C20@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = type metadata accessor for AppComposer();
  return sub_1E6050418(v4, *(v3 + *(v5 + 20) + 8), a1);
}

uint64_t objectdestroy_41Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072828, &qword_1E65EBE20) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072810, &qword_1E65EBE08);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  v9 = (v0 + v2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload <= 5)
    {
      if (EnumCaseMultiPayload == 4)
      {
        goto LABEL_14;
      }

LABEL_8:
      v11 = v9[1];

      goto LABEL_17;
    }

    if (EnumCaseMultiPayload != 6)
    {
      if (EnumCaseMultiPayload != 7)
      {
        goto LABEL_17;
      }

LABEL_13:
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
      goto LABEL_16;
    }

    type metadata accessor for ItemContext();
    v24 = swift_getEnumCaseMultiPayload();
    if (v24 > 4)
    {
      if (v24 <= 6)
      {
        if (v24 == 5)
        {
          v12 = sub_1E65E0248();
        }

        else
        {
          v12 = sub_1E65E3498();
        }

        goto LABEL_16;
      }

      switch(v24)
      {
        case 7:
          type metadata accessor for ProgramDetailItemContext();
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v12 = sub_1E65E3578();
            break;
          }

          goto LABEL_8;
        case 8:
          type metadata accessor for SearchItemContext();
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v12 = sub_1E65DCCE8();
          }

          else
          {
            v12 = sub_1E65DCF98();
          }

          break;
        case 9:
          v12 = sub_1E65E26E8();
          break;
        default:
          goto LABEL_17;
      }
    }

    else
    {
      if (v24 > 1)
      {
        if (v24 != 2)
        {
          if (v24 == 3)
          {
            v12 = sub_1E65DC508();
            goto LABEL_16;
          }

          type metadata accessor for LibraryItemContext();
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v12 = sub_1E65DF3B8();
            goto LABEL_16;
          }

          goto LABEL_8;
        }

LABEL_40:
        v26 = *v9;
        v27 = v9[1];
        v28 = *(v9 + 16);
        sub_1E5E483B8();
        goto LABEL_17;
      }

      if (!v24)
      {
        goto LABEL_40;
      }

      if (v24 != 1)
      {
        goto LABEL_17;
      }

      type metadata accessor for BrowseItemContext();
      v25 = swift_getEnumCaseMultiPayload();
      if (v25 > 3)
      {
        switch(v25)
        {
          case 4:
            v12 = sub_1E65DFDA8();
            break;
          case 5:
            v12 = sub_1E65DFC88();
            break;
          case 6:
            v12 = sub_1E65E0128();
            break;
          default:
            goto LABEL_17;
        }
      }

      else
      {
        if (!v25)
        {
          v12 = sub_1E65DFF38();
          goto LABEL_16;
        }

        if (v25 == 1)
        {
          goto LABEL_8;
        }

        if (v25 != 2)
        {
          goto LABEL_17;
        }

        v12 = sub_1E65DF978();
      }
    }

LABEL_16:
    (*(*(v12 - 8) + 8))(v0 + v2, v12);
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (!EnumCaseMultiPayload)
  {
LABEL_14:
    v13 = *v9;

    goto LABEL_17;
  }

  if (EnumCaseMultiPayload == 1)
  {
LABEL_15:
    v12 = sub_1E65D7968();
    goto LABEL_16;
  }

LABEL_17:
  v14 = (v2 + v3 + v6) & ~v6;
  v15 = (v7 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v5 + 8))(v0 + v14, v4);
  v16 = *(v0 + v15);

  v17 = (v0 + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8));
  v18 = *v17;
  swift_unknownObjectRelease();
  v19 = v17[3];

  v20 = v17[5];

  v21 = v17[7];

  v22 = v17[9];

  return swift_deallocObject();
}

uint64_t sub_1E62560B0(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072828, &qword_1E65EBE20) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072810, &qword_1E65EBE08) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v1 + 16);
  v13 = *(v1 + 24);
  v14 = *(v1 + v10);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_1E5DFA78C;

  return sub_1E612C8FC(a1, v12, v13, v1 + v6, v1 + v9, v14, v1 + v11);
}

uint64_t sub_1E62562A0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077068, &qword_1E65F9458);
  v33 = *(v2 - 8);
  v34 = v2;
  v3 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v32 = v29 - v4;
  v5 = type metadata accessor for AppComposer();
  v6 = v5 - 8;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v5);
  v10 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v29 - v11;
  v13 = sub_1E65DB1E8();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = sub_1E65DB188();
  v16 = *(v15 - 8);
  v30 = v15;
  v31 = v16;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29[1] = *a1;
  sub_1E5E1DEAC(a1, v12);
  v20 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v21 = swift_allocObject();
  sub_1E5E1FA80(v12, v21 + v20);
  v22 = *(v6 + 28);
  v23 = a1 + *(type metadata accessor for AppEnvironment() + 24) + v22;
  AccountService.makeAccountChangedStream.getter();
  sub_1E5E1DEAC(a1, v10);
  v24 = swift_allocObject();
  sub_1E5E1FA80(v10, v24 + v20);
  sub_1E65DB1D8();
  v35[3] = sub_1E65DB1A8();
  v35[4] = MEMORY[0x1E699D0C8];
  __swift_allocate_boxed_opaque_existential_1(v35);
  sub_1E65DB198();
  sub_1E65DB178();
  type metadata accessor for AppFeature();
  sub_1E625714C(&qword_1EE2DBD90, type metadata accessor for AppFeature);
  sub_1E625714C(&qword_1ED077070, MEMORY[0x1E699D0C0]);
  v25 = v32;
  v26 = v30;
  sub_1E65E4DE8();
  sub_1E65E4CC8();
  v27 = sub_1E65E4F08();
  (*(v33 + 8))(v25, v34);
  (*(v31 + 8))(v19, v26);
  return v27;
}

uint64_t sub_1E625670C()
{
  v1 = v0[2];
  v2 = v1 + *(type metadata accessor for AppComposer() + 20);
  v3 = v2 + *(type metadata accessor for AppEnvironment() + 24);
  v4 = AccountService.fetchPrimaryAccount.getter();
  v0[3] = v5;
  v9 = (v4 + *v4);
  v6 = v4[1];
  v7 = swift_task_alloc();
  v0[4] = v7;
  *v7 = v0;
  v7[1] = sub_1E6256820;

  return v9();
}

uint64_t sub_1E6256820(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v7 = sub_1E5F9D2C8;
  }

  else
  {
    *(v4 + 48) = a1;
    v7 = sub_1E6256948;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1E6256948()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[6];

  return v2(v3);
}

uint64_t sub_1E62569B0()
{
  v2 = *(type metadata accessor for AppComposer() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1E5FE99E8;

  return sub_1E62566EC(v0 + v3);
}

uint64_t sub_1E6256A7C(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0721B8, &qword_1E65EA990);
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v5 = *(v4 + 64) + 15;
  v2[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6256B48, 0, 0);
}

uint64_t sub_1E6256B48()
{
  v1 = v0[5];
  v2 = v1 + *(type metadata accessor for AppComposer() + 20);
  v3 = v2 + *(type metadata accessor for AppEnvironment() + 100);
  v4 = RemoteBrowsingService.makeRemoteBrowsingIdentityUpdatedStream.getter();
  v0[9] = v5;
  v10 = (v4 + *v4);
  v6 = v4[1];
  v7 = swift_task_alloc();
  v0[10] = v7;
  *v7 = v0;
  v7[1] = sub_1E6256C64;
  v8 = v0[8];

  return v10(v8);
}

uint64_t sub_1E6256C64()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E6256D7C, 0, 0);
}

uint64_t sub_1E6256D7C()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = v0[4];
  v4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076CF8, &qword_1E65F7F20);
  v5 = sub_1E6257194();
  v0[2] = v3;
  v0[3] = v5;
  v4[4] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(v4);
  sub_1E65E6188();
  (*(v2 + 8))(v1, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1E6256E74(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFA78C;

  return sub_1E6256A7C(a1, v1 + v5);
}

uint64_t sub_1E6256F50(uint64_t a1)
{
  v2 = sub_1E65DB1C8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1 + *(type metadata accessor for AppState() + 196);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074C70, &qword_1E65F10D0);
  (*(v3 + 16))(v6, v7 + *(v8 + 28), v2);
  return sub_1E65DB168();
}

uint64_t sub_1E6257050(uint64_t a1)
{
  v2 = sub_1E65DB1C8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65DB158();
  v7 = a1 + *(type metadata accessor for AppState() + 196);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074C70, &qword_1E65F10D0);
  return (*(v3 + 40))(v7 + *(v8 + 28), v6, v2);
}

uint64_t sub_1E625714C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E6257194()
{
  result = qword_1EE2D47A8;
  if (!qword_1EE2D47A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0721B8, &qword_1E65EA990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D47A8);
  }

  return result;
}

uint64_t sub_1E62571F8()
{
  if (*(v0 + qword_1ED078668))
  {
    v1 = *(v0 + qword_1ED078668 + 8);
    v2 = *(v0 + qword_1ED078668);
    swift_getObjectType();
    sub_1E6257A1C();
    swift_unknownObjectRetain();
    sub_1E65E51A8();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1E625729C()
{
  v1 = v0;
  v2 = sub_1E65E4F98();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1E61259CC();
  *v6 = sub_1E65E63C8();
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8020], v2);
  v7 = sub_1E65E4FC8();
  result = (*(v3 + 8))(v6, v2);
  if (v7)
  {
    v9 = *(v1 + qword_1ED078660);
    if (v9 >= 2)
    {
      v11 = v9;
      v10 = sub_1E65E5408();
      sub_1E6257A80(v9);
    }

    else
    {
      v10 = 0;
    }

    return v10 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1E62573E8()
{
  v1 = v0;
  v2 = sub_1E65E4F98();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1E61259CC();
  *v6 = sub_1E65E63C8();
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8020], v2);
  v7 = sub_1E65E4FC8();
  (*(v3 + 8))(v6, v2);
  if (v7)
  {
    v8 = *(v1 + qword_1ED078660);
    if (v8 >= 2)
    {
      v9 = v8;
      sub_1E65E5428();
      sub_1E6257A80(v8);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1E625752C()
{
  v1 = v0;
  v2 = sub_1E65E4F98();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1E61259CC();
  *v6 = sub_1E65E63C8();
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8020], v2);
  v7 = sub_1E65E4FC8();
  (*(v3 + 8))(v6, v2);
  if (v7)
  {
    v8 = *(v1 + qword_1ED078660);
    if (v8 >= 2)
    {
      v9 = v8;
      sub_1E65E53E8();
      sub_1E6257A80(v8);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1E6257670(void (*a1)(void))
{
  v3 = v1;
  v4 = sub_1E65E4F98();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1E61259CC();
  *v8 = sub_1E65E63C8();
  (*(v5 + 104))(v8, *MEMORY[0x1E69E8020], v4);
  v9 = sub_1E65E4FC8();
  (*(v5 + 8))(v8, v4);
  if (v9)
  {
    v10 = *(v3 + qword_1ED078660);
    if (v10 >= 2)
    {
      v11 = v10;
      a1();
      sub_1E6257A80(v10);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1E62577B4()
{
  v1 = v0;
  v2 = sub_1E65E4F98();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1E61259CC();
  *v6 = sub_1E65E63C8();
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8020], v2);
  v7 = sub_1E65E4FC8();
  result = (*(v3 + 8))(v6, v2);
  if (v7)
  {
    v9 = *(v1 + qword_1ED078660);
    if (v9 >= 2)
    {
      v11 = v9;
      v10 = sub_1E65E53F8();
      sub_1E6257A80(v9);
    }

    else
    {
      v10 = 0;
    }

    return v10 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E6257908(uint64_t a1, uint64_t a2)
{
  v4 = (v2 + qword_1ED078668);
  v5 = *(v2 + qword_1ED078668);
  *v4 = a1;
  v4[1] = a2;
  swift_unknownObjectRelease();

  return swift_unknownObjectRetain();
}

unint64_t sub_1E6257A1C()
{
  result = qword_1ED077078;
  if (!qword_1ED077078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED077080, qword_1E65F94F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED077078);
  }

  return result;
}

void sub_1E6257A80(id a1)
{
  if (a1 >= 2)
  {
  }
}

uint64_t sub_1E6257A90@<X0>(void (*a1)(uint64_t, uint64_t, uint64_t, uint64_t)@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  LODWORD(v119) = a2;
  v118 = a1;
  v125 = a3;
  v4 = sub_1E65D7268();
  v115 = *(v4 - 8);
  v116 = v4;
  v5 = *(v115 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v114 = &v107 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_1E65D7348();
  v7 = *(*(v113 - 8) + 64);
  MEMORY[0x1EEE9AC00](v113);
  v112 = &v107 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_1E65D72D8();
  v122 = *(v124 - 8);
  v9 = *(v122 + 64);
  v10 = MEMORY[0x1EEE9AC00](v124);
  v110 = &v107 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v111 = &v107 - v12;
  v13 = sub_1E65E1518();
  v120 = *(v13 - 8);
  v121 = v13;
  v14 = *(v120 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v127 = &v107 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E8, &qword_1E65ED470);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v117 = type metadata accessor for ArtworkContent();
  v20 = *(*(v117 - 8) + 64);
  MEMORY[0x1EEE9AC00](v117);
  v22 = &v107 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for ArtworkDescriptor();
  v24 = *(*(v23 - 1) + 64);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v107 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077088, &qword_1E65F9540);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v30 = &v107 - v29;
  v31 = sub_1E65E14B8();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v126 = &v107 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = v3;
  sub_1E65E1438();
  if ((*(v32 + 48))(v30, 1, v31) == 1)
  {
    sub_1E62587E8(v30);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072610, &qword_1E65EB930);
    return (*(*(v35 - 8) + 56))(v125, 1, 1, v35);
  }

  v37 = v125;
  v108 = v32;
  (*(v32 + 32))(v126, v30, v31);
  v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075DC8, &qword_1E65F3948) + 48);
  sub_1E65E14A8();
  sub_1E65E1498();
  sub_1E65DB248();
  v39 = v119;
  sub_1E60E4340(2, v119, &v22[v38]);
  swift_storeEnumTagMultiPayload();
  v40 = sub_1E65E14C8();
  v41 = sub_1E65E4B48();
  v42 = 4.0;
  if (v41)
  {
    v42 = 8.0;
  }

  v43 = 16.0;
  if (v41)
  {
    v43 = 18.0;
  }

  if (v40)
  {
    v44 = v43;
  }

  else
  {
    v44 = v42;
  }

  if (v40)
  {
    v45 = 12.0;
  }

  else
  {
    v45 = 8.0;
  }

  sub_1E617BA04(v22, v26);
  *&v26[v23[5]] = MEMORY[0x1E69E7CD0];
  v46 = &v26[v23[6]];
  *v46 = 0;
  *(v46 + 1) = v44;
  *(v46 + 2) = v44;
  *(v46 + 3) = v45;
  v26[v23[7]] = 1;
  v47 = &v26[v23[8]];
  *v47 = 0;
  *(v47 + 1) = 0;
  sub_1E65E14F8();
  v48 = v39;
  v49 = v26;
  v109 = v31;
  if (v48 < 2)
  {
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077090, &qword_1E65F9548);
    v51 = v50[16];
    v52 = v50[20];
    v53 = v50[24];
    v54 = v50[28];
    v55 = v50[32];
    v56 = v50[36];
    v57 = v37 + v50[40];
    sub_1E60169E8(v49, v37 + v50[12]);
    v58 = *MEMORY[0x1E699DA90];
    v59 = sub_1E65E0988();
    (*(*(v59 - 8) + 104))(v37 + v51, v58, v59);
    v119 = v49;
    v60 = *(v122 + 56);
    v61 = v124;
    v60(v37 + v52, 1, 1, v124);
    v60(v37 + v53, 1, 1, v61);
    v60(v37 + v54, 1, 1, v61);
    v62 = type metadata accessor for ActionButtonDescriptor(0);
    v63 = *(*(v62 - 8) + 56);
    v63(v37 + v55, 1, 1, v62);
    v63(v37 + v56, 1, 1, v62);
    v64 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076B10, &unk_1E6604120) + 48);
    v65 = sub_1E65E1458();
    (*(*(v65 - 8) + 16))(v57, v123, v65);
    v67 = v120;
    v66 = v121;
    v68 = v127;
    (*(v120 + 16))(v57 + v64, v127, v121);
    v69 = type metadata accessor for ViewDescriptor();
    swift_storeEnumTagMultiPayload();
    (*(*(v69 - 8) + 56))(v57, 0, 1, v69);
    sub_1E65E09F8();
    (*(v67 + 8))(v68, v66);
    v70 = v119;
LABEL_27:
    sub_1E61BF8AC(v70);
    (*(v108 + 8))(v126, v109);
    v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072610, &qword_1E65EB930);
    swift_storeEnumTagMultiPayload();
    return (*(*(v106 - 8) + 56))(v37, 0, 1, v106);
  }

  if (v48 == 3)
  {
    v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077090, &qword_1E65F9548);
    v72 = v71[16];
    v73 = v71[20];
    sub_1E60169E8(v49, v37 + v71[12]);
    v74 = *MEMORY[0x1E699DAA0];
    v75 = sub_1E65E0988();
    (*(*(v75 - 8) + 104))(v37 + v72, v74, v75);
    sub_1E65E1428();
    v76 = MEMORY[0x1E69686E8];
    v77 = v111;
    if (v78)
    {
      sub_1E65D7338();
      sub_1E65D72E8();
      v79 = v77;
      if (qword_1ED071AC8 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v113, qword_1ED0965D0);
      v80 = *v76;
      v82 = v114;
      v81 = v115;
      v83 = v116;
      (*(v115 + 104))(v114, v80, v116);
      sub_1E6258850();
      v84 = v124;
      sub_1E65D73C8();
      (*(v81 + 8))(v82, v83);
      v85 = v122;
      (*(v122 + 8))(v79, v84);
      v86 = 0;
    }

    else
    {
      v86 = 1;
      v84 = v124;
      v85 = v122;
    }

    v87 = 1;
    v118 = *(v85 + 56);
    v118(v37 + v73, v86, 1, v84);
    v88 = v71[24];
    sub_1E65E1448();
    if (v89)
    {
      v119 = v49;
      sub_1E65D7338();
      v90 = v110;
      sub_1E65D72E8();
      if (qword_1ED071AC0 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v113, qword_1ED0965B8);
      v92 = v114;
      v91 = v115;
      v93 = v116;
      (*(v115 + 104))(v114, *MEMORY[0x1E69686E8], v116);
      sub_1E6258850();
      v94 = v124;
      sub_1E65D73C8();
      (*(v91 + 8))(v92, v93);
      (*(v122 + 8))(v90, v94);
      v87 = 0;
      v49 = v119;
    }

    else
    {
      v94 = v124;
    }

    v95 = v87;
    v96 = v118;
    v118(v37 + v88, v95, 1, v94);
    v97 = v71[28];
    v98 = v37 + v71[32];
    v99 = v71[36];
    v124 = v71[40];
    v96(v37 + v97, 1, 1, v94);
    v100 = type metadata accessor for ActionButtonDescriptor(0);
    v102 = v120;
    v101 = v121;
    v103 = v127;
    (*(v120 + 16))(v98 + *(v100 + 20), v127, v121);
    type metadata accessor for ActionButtonDescriptor.Kind(0);
    swift_storeEnumTagMultiPayload();
    sub_1E65D76E8();
    v104 = *(*(v100 - 8) + 56);
    v104(v98, 0, 1, v100);
    v104(v37 + v99, 1, 1, v100);
    v105 = type metadata accessor for ViewDescriptor();
    (*(*(v105 - 8) + 56))(v37 + v124, 1, 1, v105);
    sub_1E65E09F8();
    (*(v102 + 8))(v103, v101);
    v70 = v49;
    goto LABEL_27;
  }

  result = sub_1E65E69D8();
  __break(1u);
  return result;
}

uint64_t sub_1E62587E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077088, &qword_1E65F9540);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E6258850()
{
  result = qword_1EE2D7280;
  if (!qword_1EE2D7280)
  {
    sub_1E65D72D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D7280);
  }

  return result;
}

uint64_t sub_1E62588A8@<X0>(uint64_t a1@<X8>)
{
  v107 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077750, &unk_1E66011C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v105 = &v100 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B58, &qword_1E65EC600);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v106 = &v100 - v7;
  v124 = sub_1E65DAA88();
  v8 = *(v124 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v124 - 8);
  v123 = &v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v100 - v12;
  v14 = sub_1E65D9388();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v113 = &v100 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1E65D76F8();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v111 = &v100 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_1E65DA878();
  v110 = *(v112 - 8);
  v20 = *(v110 + 64);
  v21 = MEMORY[0x1EEE9AC00](v112);
  v108 = &v100 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v109 = &v100 - v23;
  v103 = sub_1E65E2CF8();
  v102 = *(v103 - 8);
  v24 = *(v102 + 64);
  MEMORY[0x1EEE9AC00](v103);
  v101 = &v100 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076358, &qword_1E65F9EA0);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v122 = &v100 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v126 = &v100 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v125 = &v100 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v131 = (&v100 - v34);
  v104 = v1;
  v35 = sub_1E65E2048();
  v36 = v35 + 64;
  v37 = 1 << *(v35 + 32);
  v38 = -1;
  if (v37 < 64)
  {
    v38 = ~(-1 << v37);
  }

  v39 = v38 & *(v35 + 64);
  v40 = (v37 + 63) >> 6;
  v116 = (v8 + 16);
  v115 = v8 + 8;
  v121 = v8;
  v114 = v8 + 32;
  v127 = v35;

  v42 = 0;
  v43 = MEMORY[0x1E69E7CC0];
  v117 = v40;
  v118 = v36;
  v119 = v26;
  for (i = v13; v39; v40 = v117)
  {
    v130 = v43;
LABEL_9:
    v45 = __clz(__rbit64(v39)) | (v42 << 6);
    v46 = *(v127 + 56);
    v47 = (*(v127 + 48) + 16 * v45);
    v49 = *v47;
    v48 = v47[1];
    v50 = sub_1E65E2A38();
    v51 = *(v50 - 8);
    v52 = v46 + *(v51 + 72) * v45;
    v53 = v26;
    v54 = v131;
    (*(v51 + 16))(v131 + *(v26 + 48), v52, v50);
    *v54 = v49;
    v54[1] = v48;
    v55 = v125;
    sub_1E6259400(v54, v125);
    v56 = *(v55 + 8);

    v57 = *(v53 + 48);
    v58 = sub_1E65E2A18();
    v128 = v59;
    v129 = v58;
    v60 = *(v51 + 8);
    v60(v55 + v57, v50);
    v61 = v54;
    v62 = v53;
    v63 = v60;
    v64 = v126;
    sub_1E6259400(v61, v126);
    v65 = *(v64 + 8);

    v66 = *(v62 + 48);
    v67 = sub_1E65E2A28();
    v60(v64 + v66, v50);
    v68 = *(v67 + 16);
    if (v68)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B20, &qword_1E6609840);
      v69 = swift_allocObject();
      v70 = _swift_stdlib_malloc_size(v69);
      v71 = v70 - 32;
      if (v70 < 32)
      {
        v71 = v70 - 17;
      }

      v69[2] = v68;
      v69[3] = 2 * (v71 >> 4);
      v72 = sub_1E6259778(&v132, v69 + 4, v68, v67);
      result = sub_1E5E24EE4();
      if (v72 != v68)
      {
        goto LABEL_32;
      }
    }

    else
    {
    }

    v73 = v122;
    sub_1E6259400(v131, v122);
    v74 = *(v73 + 8);

    v75 = *(v62 + 48);
    v76 = sub_1E65E29F8();
    v63(v73 + v75, v50);
    v77 = *(v76 + 16);
    if (v77)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B20, &qword_1E6609840);
      v78 = swift_allocObject();
      v79 = _swift_stdlib_malloc_size(v78);
      v80 = v79 - 32;
      if (v79 < 32)
      {
        v80 = v79 - 17;
      }

      v78[2] = v77;
      v78[3] = 2 * (v80 >> 4);
      v81 = sub_1E6259778(&v132, v78 + 4, v77, v76);
      result = sub_1E5E24EE4();
      v83 = v123;
      v82 = v124;
      if (v81 != v77)
      {
        goto LABEL_33;
      }
    }

    else
    {

      v83 = v123;
      v82 = v124;
    }

    v84 = i;
    sub_1E65DAA48();
    (*v116)(v83, v84, v82);
    v43 = v130;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v43 = sub_1E64F6AF0(0, v43[2] + 1, 1, v43);
    }

    v86 = v43[2];
    v85 = v43[3];
    if (v86 >= v85 >> 1)
    {
      v43 = sub_1E64F6AF0(v85 > 1, v86 + 1, 1, v43);
    }

    v39 &= v39 - 1;
    v87 = v121;
    (*(v121 + 8))(v84, v82);
    sub_1E5DFE50C(v131, &qword_1ED076358, &qword_1E65F9EA0);
    v43[2] = v86 + 1;
    result = (*(v87 + 32))(v43 + ((*(v87 + 80) + 32) & ~*(v87 + 80)) + *(v87 + 72) * v86, v83, v82);
    v36 = v118;
    v26 = v119;
  }

  while (1)
  {
    v44 = v42 + 1;
    if (__OFADD__(v42, 1))
    {
      break;
    }

    if (v44 >= v40)
    {

      v88 = v101;
      sub_1E65E2078();
      v131 = sub_1E65E2CC8();
      v89 = *(v102 + 8);
      v90 = v103;
      v89(v88, v103);
      sub_1E65E2098();
      sub_1E65E2078();
      WorkoutPlanSchedule.weekdays.getter();
      v89(v88, v90);
      v91 = v109;
      v92 = sub_1E65DA848();
      MEMORY[0x1E6949A30](v92);
      v131 = sub_1E65E2058();
      (*(v110 + 16))(v108, v91, v112);
      sub_1E65E2078();
      sub_1E61DB264(v113);
      v89(v88, v90);
      sub_1E65E2088();
      v93 = v105;
      sub_1E65E2068();
      v94 = sub_1E65E1FC8();
      v95 = *(v94 - 8);
      if ((*(v95 + 48))(v93, 1, v94) == 1)
      {
        sub_1E5DFE50C(v93, &unk_1ED077750, &unk_1E66011C0);
        v96 = 1;
        v97 = v106;
      }

      else
      {
        v98 = v93;
        v97 = v106;
        sub_1E64C6E80(v106);
        (*(v95 + 8))(v98, v94);
        v96 = 0;
      }

      v99 = sub_1E65DA7C8();
      (*(*(v99 - 8) + 56))(v97, v96, 1, v99);
      sub_1E65D9BC8();
      return (*(v110 + 8))(v109, v112);
    }

    v39 = *(v36 + 8 * v44);
    ++v42;
    if (v39)
    {
      v130 = v43;
      v42 = v44;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_1E6259400(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076358, &qword_1E65F9EA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E62594D0(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v42 = a5(0);
  v44 = *(v42 - 8);
  v9 = *(v44 + 64);
  v10 = (MEMORY[0x1EEE9AC00])();
  v43 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v10);
  v41 = &v35 - v13;
  v14 = a4 + 56;
  v15 = -1 << *(a4 + 32);
  if (-v15 < 64)
  {
    v16 = ~(-1 << -v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v33 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v14;
    *(a1 + 16) = ~v15;
    *(a1 + 24) = v33;
    *(a1 + 32) = v17;
    return a3;
  }

  if (!a3)
  {
    v33 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v35 = -1 << *(a4 + 32);
    v36 = a1;
    result = 0;
    v18 = 0;
    v19 = (63 - v15) >> 6;
    v37 = v44 + 32;
    v38 = v44 + 16;
    a1 = 1;
    v39 = a4 + 56;
    v40 = a3;
    v20 = v41;
    while (v17)
    {
      v46 = a2;
LABEL_15:
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v45 = v18;
      v24 = a4;
      v25 = *(a4 + 48);
      v26 = v43;
      v27 = v44;
      v28 = *(v44 + 72);
      v29 = v42;
      (*(v44 + 16))(v43, v25 + v28 * (v23 | (v18 << 6)), v42);
      v30 = *(v27 + 32);
      v30(v20, v26, v29);
      v31 = v46;
      v30(v46, v20, v29);
      a3 = v40;
      if (a1 == v40)
      {
        v15 = v35;
        a1 = v36;
        a4 = v24;
        v33 = v45;
        v14 = v39;
        goto LABEL_25;
      }

      a2 = &v31[v28];
      result = a1;
      v32 = __OFADD__(a1++, 1);
      a4 = v24;
      v18 = v45;
      v14 = v39;
      if (v32)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v21 = v18;
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v22 >= v19)
      {
        break;
      }

      v17 = *(v14 + 8 * v22);
      ++v21;
      if (v17)
      {
        v46 = a2;
        v18 = v22;
        goto LABEL_15;
      }
    }

    v17 = 0;
    if (v19 <= v18 + 1)
    {
      v34 = v18 + 1;
    }

    else
    {
      v34 = v19;
    }

    v33 = v34 - 1;
    a3 = result;
    v15 = v35;
    a1 = v36;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_1E6259778(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1E62598D0(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_1E62599D0(void *result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + (v14 | (v9 << 6)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void sub_1E6259ACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (*(a3 + 8))(a2, a3);
  v4 = v3;
  if ((v3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1E65E6788();
    sub_1E5E0DFF4();
    sub_1E6259CD8();
    sub_1E65E6268();
    v6 = v23;
    v5 = v24;
    v7 = v25;
    v8 = v26;
    v9 = v27;
  }

  else
  {
    v10 = -1 << *(v3 + 32);
    v5 = v3 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(v3 + 56);

    v8 = 0;
    v6 = v4;
  }

  v20 = v7;
  v13 = (v7 + 64) >> 6;
  if (v6 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v14 = v8;
  v15 = v9;
  v16 = v8;
  if (v9)
  {
LABEL_12:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v6 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
    if (v18)
    {
      do
      {
        [v18 selector];
        if (sub_1E65D7978())
        {
          break;
        }

        v8 = v16;
        v9 = v17;
        if ((v6 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        v19 = sub_1E65E67F8();
        if (!v19)
        {
          break;
        }

        v21 = v19;
        sub_1E5E0DFF4();
        swift_dynamicCast();
        v18 = v22;
        v16 = v8;
        v17 = v9;
      }

      while (v22);
    }

LABEL_19:
    sub_1E5E24EE4();
  }

  else
  {
    while (1)
    {
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v16 >= v13)
      {
        goto LABEL_19;
      }

      v15 = *(v5 + 8 * v16);
      ++v14;
      if (v15)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

unint64_t sub_1E6259CD8()
{
  result = qword_1ED077098;
  if (!qword_1ED077098)
  {
    sub_1E5E0DFF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED077098);
  }

  return result;
}

uint64_t sub_1E6259D5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a1;
  v4[1] = a2;
  return MEMORY[0x1E694C310](v4, a3, &type metadata for JetSceneSessionModifier);
}

void sub_1E6259D94()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = v1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0770A0, &qword_1E65F95F8);
  sub_1E6259E20();
  sub_1E65E4748();
}

unint64_t sub_1E6259E20()
{
  result = qword_1EE2D4C40;
  if (!qword_1EE2D4C40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0770A0, &qword_1E65F95F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4C40);
  }

  return result;
}

uint64_t sub_1E6259E84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v144 = a1;
  v145 = a2;
  v129 = a3;
  v3 = sub_1E65D76F8();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v128 = &v112 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076460, &qword_1E65F56B0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v127 = &v112 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0752D8, &qword_1E660CC30);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v125 = &v112 - v11;
  v132 = sub_1E65D7268();
  v130 = *(v132 - 8);
  v12 = *(v130 + 64);
  MEMORY[0x1EEE9AC00](v132);
  v121 = &v112 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = sub_1E65D7848();
  v143 = *(v138 - 8);
  v14 = *(v143 + 64);
  MEMORY[0x1EEE9AC00](v138);
  v136 = &v112 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_1E65D72D8();
  v142 = *(v137 - 8);
  v16 = *(v142 + 64);
  v17 = MEMORY[0x1EEE9AC00](v137);
  v120 = &v112 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v141 = &v112 - v19;
  v20 = sub_1E65E0748();
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v140 = &v112 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v139 = &v112 - v24;
  v25 = sub_1E65D8BB8();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v119 = (&v112 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = type metadata accessor for ArtworkContent();
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v131 = &v112 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = type metadata accessor for ArtworkDescriptor();
  v31 = *(*(v135 - 8) + 64);
  MEMORY[0x1EEE9AC00](v135);
  v134 = &v112 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_1E65D9CC8();
  v33 = *(*(v126 - 8) + 64);
  MEMORY[0x1EEE9AC00](v126);
  v133 = &v112 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E78, &qword_1E65ECC50);
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v38 = &v112 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E80, &qword_1E65ECC58);
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v43 = &v112 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072198, &unk_1E660C690);
  v45 = *(*(v44 - 8) + 64);
  MEMORY[0x1EEE9AC00](v44 - 8);
  v47 = &v112 - v46;
  v48 = sub_1E65D9AC8();
  v49 = *(v48 - 8);
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v52 = &v112 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E65E4C98();
  sub_1E60EEE88(v47);
  sub_1E5DFE50C(v38, &qword_1ED072E78, &qword_1E65ECC50);
  (*(v40 + 8))(v43, v39);
  v53 = *(v49 + 48);
  v54 = v53(v47, 1, v48);
  v124 = v48;
  if (v54 == 1)
  {
    v55 = v143;
    MEMORY[0x1E6941490]();
    if (v53(v47, 1, v48) != 1)
    {
      sub_1E5DFE50C(v47, &qword_1ED072198, &unk_1E660C690);
    }
  }

  else
  {
    v55 = v143;
    (*(v49 + 32))(v52, v47, v48);
  }

  v123 = v49;
  v56 = sub_1E5F9B6D0(&unk_1F5FA8368);
  v57 = sub_1E63B0704(v56);

  v122 = v52;
  v143 = sub_1E625AE38();
  sub_1E65D8078();
  sub_1E65D80C8();
  sub_1E65D9C88();
  v58 = v119;
  sub_1E65D8128();
  v59 = v131;
  sub_1E63EB15C(v131);
  sub_1E625B0B0(v58);
  v60 = v145;
  v61 = *(v145 + 8);
  v62 = sub_1E65DAE38();
  v63 = sub_1E65DAE38();
  v64 = sub_1E65E4B48();
  v65 = 4.0;
  if (v64)
  {
    v65 = 8.0;
  }

  v66 = 16.0;
  if (v64)
  {
    v66 = 18.0;
  }

  if (v62 == v63)
  {
    v67 = v66;
  }

  else
  {
    v67 = v65;
  }

  if (v62 == v63)
  {
    v68 = 12.0;
  }

  else
  {
    v68 = 8.0;
  }

  v69 = v134;
  sub_1E617BA04(v59, v134);
  v70 = v135;
  *(v69 + *(v135 + 20)) = v57;
  v71 = v69 + v70[6];
  *v71 = 0;
  *(v71 + 8) = v67;
  *(v71 + 16) = v67;
  *(v71 + 24) = v68;
  *(v69 + v70[7]) = 1;
  v72 = (v69 + v70[8]);
  *v72 = 0;
  v72[1] = 0;
  v73 = sub_1E65D8248();
  swift_getKeyPath();
  v74 = v136;
  sub_1E65E4EC8();

  v131 = *(type metadata accessor for AppEnvironment() + 136);
  v75 = v120;
  sub_1E63C4134(v74, (v60 + v131), v73, v120);

  v77 = *(v55 + 8);
  v76 = v55 + 8;
  v78 = v138;
  v119 = v77;
  v77(v74, v138);
  v79 = v132;
  v80 = v130;
  v81 = v121;
  if (qword_1EE2D7250 != -1)
  {
    swift_once();
  }

  v118 = sub_1E65D7348();
  __swift_project_value_buffer(v118, qword_1EE2EA220);
  v82 = *(v80 + 104);
  v117 = *MEMORY[0x1E69686E8];
  v116 = v80 + 104;
  v115 = v82;
  v82(v81);
  v83 = sub_1E6016A4C(&qword_1EE2D7280, MEMORY[0x1E6968848]);
  v84 = v80;
  v85 = v137;
  v114 = v83;
  sub_1E65D73C8();
  v113 = *(v84 + 8);
  v113(v81, v79);
  v86 = v75;
  v87 = v142 + 8;
  v130 = *(v142 + 8);
  (v130)(v86, v85);
  sub_1E65E0738();
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E63C4134(v74, (v145 + v131), v143, v86);

  v88 = v74;
  v143 = v76;
  v89 = v119;
  v119(v88, v78);
  if (qword_1EE2D7248 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v118, qword_1EE2EA208);
  v90 = v132;
  v115(v81, v117, v132);
  sub_1E65D73C8();
  v113(v81, v90);
  (v130)(v86, v85);
  sub_1E65E0738();
  v91 = sub_1E65D8108();
  v142 = v87;
  if (v92 == -1)
  {
    v93 = 9;
  }

  else
  {
    v147 = v91;
    LOBYTE(v148) = v92 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073CE0, &qword_1E65EECC8);
    sub_1E65D7FB8();
    v93 = v146;
  }

  LODWORD(v132) = v93;
  v94 = v136;
  v136 = sub_1E65D8188();
  v95 = v125;
  sub_1E65D80E8();
  v96 = sub_1E65D76A8();
  v97 = (*(*(v96 - 8) + 48))(v95, 1, v96);
  sub_1E5DFE50C(v95, &qword_1ED0752D8, &qword_1E660CC30);
  v98 = sub_1E65D8238();
  v101 = v145;
  if (v100 == -1)
  {
    LODWORD(v125) = 4;
    v106 = v138;
  }

  else
  {
    v147 = v98;
    v148 = v99;
    v149 = v100 & 1;
    v102 = v98;
    v103 = v99;
    v104 = v100;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0758E0, &qword_1E65F1FE8);
    sub_1E65D7FB8();
    v105 = v104;
    v106 = v138;
    v101 = v145;
    sub_1E61281C8(v102, v103, v105);
    LODWORD(v125) = v146;
  }

  LODWORD(v121) = v97 != 1;
  v120 = sub_1E65D8078();
  v119 = v107;
  v118 = sub_1E65D81D8();
  v108 = sub_1E65D8248();
  swift_getKeyPath();
  sub_1E65E4EC8();

  v109 = v141;
  sub_1E63C4134(v94, (v101 + v131), v108, v141);

  v89(v94, v106);
  sub_1E622C018(v109, v127);
  (v130)(v109, v137);
  sub_1E65D76E8();
  sub_1E6016A4C(&qword_1EE2D9E98, type metadata accessor for ArtworkDescriptor);
  sub_1E6016A4C(&qword_1EE2D9EB0, type metadata accessor for ArtworkDescriptor);
  sub_1E6016A4C(&qword_1EE2D9EA8, type metadata accessor for ArtworkDescriptor);
  v110 = MEMORY[0x1E69CC888];
  sub_1E6016A4C(&qword_1EE2D7018, MEMORY[0x1E69CC888]);
  sub_1E6016A4C(&qword_1EE2D7030, v110);
  sub_1E6016A4C(&qword_1EE2D7028, v110);
  sub_1E65DFEB8();
  return (*(v123 + 8))(v122, v124);
}

uint64_t sub_1E625AE38()
{
  v0 = sub_1E65D9AC8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E65D80A8();
  v6 = sub_1E65D9AA8();
  v8 = v7;
  MEMORY[0x1E6941490]();
  v9 = sub_1E65D9AA8();
  v11 = v10;
  (*(v1 + 8))(v4, v0);
  if (v6 == v9 && v8 == v11)
  {
  }

  else
  {
    v13 = sub_1E65E6C18();

    if ((v13 & 1) == 0)
    {
      v14 = sub_1E65D8198();
      v15 = sub_1E65D9AA8();
      v17 = sub_1E637CA94(v15, v16, v14);

      if (v17)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E70, &unk_1E65ECC20);
        v18 = *(sub_1E65DADF8() - 8);
        v19 = *(v18 + 72);
        v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
        v21 = swift_allocObject();
        *(v21 + 16) = xmmword_1E65EB9E0;
        v22 = (v21 + v20);
        *v22 = sub_1E65D9AA8();
        v22[1] = v23;
        swift_storeEnumTagMultiPayload();
        *(v22 + v19) = 1;
        swift_storeEnumTagMultiPayload();
        v26 = v21;
        sub_1E5FA9E2C(v5);
        return v26;
      }
    }
  }

  return v5;
}

uint64_t sub_1E625B0B0(uint64_t a1)
{
  v2 = sub_1E65D8BB8();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E625B10C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077270, &unk_1E660D440);
    v2 = sub_1E65E6A28();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1E5DFA11C(*(a1 + 56) + 32 * v13, v36);
    *&v35 = v16;
    *(&v35 + 1) = v15;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;

    swift_dynamicCast();
    sub_1E6121EB8(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_1E6121EB8(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_1E6121EB8(v32, v33);
    v17 = *(v2 + 40);
    result = sub_1E65E6818();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_1E6121EB8(v33, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_1E625B3D4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075840, &qword_1E65F1DF8);
    v2 = sub_1E65E6A28();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
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
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = v14 | (v13 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        sub_1E604FBF8(*(a1 + 56) + 40 * v15, &v30);
        v28 = v18;
        v29 = v17;

        swift_dynamicCast();
        sub_1E6121EB8(&v24, v26);
        sub_1E6121EB8(v26, v27);
        sub_1E6121EB8(v27, &v25);
        result = sub_1E6215038(v18, v17);
        if (v19)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_1(v12);
          result = sub_1E6121EB8(&v25, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v20 = (v2[6] + 16 * result);
          *v20 = v18;
          v20[1] = v17;
          result = sub_1E6121EB8(&v25, (v2[7] + 32 * result));
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_21;
          }

          v2[2] = v23;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1E625B644(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077270, &unk_1E660D440);
    v2 = sub_1E65E6A28();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1E604FBF8(*(a1 + 56) + 40 * v13, v42);
    v40 = v16;
    v41 = v15;
    v37 = v42[0];
    v38 = v42[1];
    v39 = v43;
    v27 = v16;
    v28 = v15;

    swift_dynamicCast();
    v25[0] = v37;
    v25[1] = v38;
    v26 = v39;
    swift_dynamicCast();
    v33 = v29;
    v34 = v30;
    v35 = v31;
    sub_1E6121EB8(&v32, v36);
    v29 = v33;
    v30 = v34;
    v31 = v35;
    sub_1E6121EB8(v36, v25);
    v17 = *(v2 + 40);
    result = sub_1E65E6818();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v29;
    *(v11 + 16) = v30;
    *(v11 + 32) = v31;
    result = sub_1E6121EB8(v25, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1E625B930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for AppState() + 276);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074E58, &qword_1E65F1128) + 28);
  v5 = sub_1E65DD0A8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v3 + v4, v5);
}

uint64_t sub_1E625B9CC(uint64_t a1, uint64_t a2)
{
  v3 = a2 + *(type metadata accessor for AppState() + 276);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074E58, &qword_1E65F1128) + 28);
  v5 = sub_1E65DD0A8();
  v6 = *(*(v5 - 8) + 24);

  return v6(v3 + v4, a1, v5);
}

char *sub_1E625BAB8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(uint64_t))
{
  v49 = a1;
  v9 = sub_1E65E43B8();
  v47 = *(v9 - 8);
  v10 = v47;
  v11 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v44 = a2;
  v45 = a3;
  v46 = a4;
  v15 = sub_1E5DFD1CC(a2, &v43 - v14, a3, a4);
  a5(v15);
  v51 = sub_1E65E4AD8();
  v16 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074270, &qword_1E65EFF68));
  v17 = sub_1E65E4058();
  v18 = v48;
  *&v48[OBJC_IVAR____TtC10Blackbeard13BarButtonItem_hostingController] = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074278, &unk_1E65FBA70);
  v19 = *(v10 + 72);
  v20 = (*(v47 + 80) + 32) & ~*(v47 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1E65EA670;
  v22 = v17;
  sub_1E65E4398();
  v51 = v21;
  sub_1E6275330(&qword_1EE2D4BC0, MEMORY[0x1E697CC60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074280, &qword_1E65EFF70);
  sub_1E5FED46C(&qword_1EE2D4850, &qword_1ED074280, &qword_1E65EFF70);
  sub_1E65E6738();
  sub_1E65E4028();

  v23 = OBJC_IVAR____TtC10Blackbeard13BarButtonItem_presentationContextKey;
  v24 = sub_1E65D76F8();
  v25 = *(v24 - 8);
  v26 = v49;
  (*(v25 + 16))(&v18[v23]);
  v27 = type metadata accessor for BarButtonItem();
  v50.receiver = v18;
  v50.super_class = v27;
  v28 = objc_msgSendSuper2(&v50, sel_init);
  v29 = objc_allocWithZone(MEMORY[0x1E69DD250]);
  v30 = v28;
  v31 = [v29 init];
  [v30 setCustomView_];

  if (sub_1E65E4B48())
  {
    v32 = [v30 customView];
    if (v32)
    {
      v33 = v32;
      v34 = [objc_opt_self() clearColor];
      [v33 setBackgroundColor_];
    }
  }

  v35 = OBJC_IVAR____TtC10Blackbeard13BarButtonItem_hostingController;
  v36 = [*&v30[OBJC_IVAR____TtC10Blackbeard13BarButtonItem_hostingController] view];
  if (v36)
  {
    v37 = v36;
    v38 = [v30 customView];
    v39 = v37;
    if (v38)
    {
      v39 = v38;
      [v38 addSubview_];
    }
  }

  result = [*&v30[v35] view];
  if (result)
  {
    v41 = result;
    if (sub_1E65E4B48())
    {
      v42 = [objc_opt_self() clearColor];
    }

    else
    {
      v42 = 0;
    }

    [v41 setBackgroundColor_];

    sub_1E60942E4();
    sub_1E5DFE50C(v44, v45, v46);
    (*(v25 + 8))(v26, v24);
    return v30;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_1E625C054(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v42 = a1;
  v5 = sub_1E65E43B8();
  v41 = *(v5 - 8);
  v6 = v41;
  v7 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07A4C0, &qword_1E65F9930);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v38 = v10;
  v11 = *(v10 + 16);
  v40 = a2;
  v11(&v38 - v12, a2, v8);
  sub_1E5FED46C(&qword_1ED077318, &unk_1ED07A4C0, &qword_1E65F9930);
  v39 = v8;
  v44 = sub_1E65E4AD8();
  v13 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074270, &qword_1E65EFF68));
  v14 = sub_1E65E4058();
  *&v2[OBJC_IVAR____TtC10Blackbeard13BarButtonItem_hostingController] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074278, &unk_1E65FBA70);
  v15 = *(v6 + 72);
  v16 = (*(v41 + 80) + 32) & ~*(v41 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1E65EA670;
  v18 = v14;
  sub_1E65E4398();
  v44 = v17;
  sub_1E6275330(&qword_1EE2D4BC0, MEMORY[0x1E697CC60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074280, &qword_1E65EFF70);
  sub_1E5FED46C(&qword_1EE2D4850, &qword_1ED074280, &qword_1E65EFF70);
  sub_1E65E6738();
  sub_1E65E4028();

  v19 = OBJC_IVAR____TtC10Blackbeard13BarButtonItem_presentationContextKey;
  v20 = sub_1E65D76F8();
  v21 = *(v20 - 8);
  v22 = v42;
  (*(v21 + 16))(&v3[v19]);
  v23 = type metadata accessor for BarButtonItem();
  v43.receiver = v3;
  v43.super_class = v23;
  v24 = objc_msgSendSuper2(&v43, sel_init);
  v25 = objc_allocWithZone(MEMORY[0x1E69DD250]);
  v26 = v24;
  v27 = [v25 init];
  [v26 setCustomView_];

  if (sub_1E65E4B48())
  {
    v28 = [v26 customView];
    if (v28)
    {
      v29 = v28;
      v30 = [objc_opt_self() clearColor];
      [v29 setBackgroundColor_];
    }
  }

  v31 = OBJC_IVAR____TtC10Blackbeard13BarButtonItem_hostingController;
  v32 = [*&v26[OBJC_IVAR____TtC10Blackbeard13BarButtonItem_hostingController] view];
  if (v32)
  {
    v33 = v32;
    v34 = [v26 customView];
    [v34 addSubview_];
  }

  result = [*&v26[v31] view];
  if (result)
  {
    v36 = result;
    if (sub_1E65E4B48())
    {
      v37 = [objc_opt_self() clearColor];
    }

    else
    {
      v37 = 0;
    }

    [v36 setBackgroundColor_];

    sub_1E60942E4();
    (*(v38 + 8))(v40, v39);
    (*(v21 + 8))(v22, v20);
    return v26;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_1E625C58C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1E65E43B8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = sub_1E65DE628();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v40 = v12;
  v13 = *(v12 + 16);
  v42 = a2;
  v13(&v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v9);
  sub_1E6275330(&qword_1EE2D6898, MEMORY[0x1E699CBA0]);
  v41 = v9;
  v45 = sub_1E65E4AD8();
  v14 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074270, &qword_1E65EFF68));
  v15 = sub_1E65E4058();
  *&v3[OBJC_IVAR____TtC10Blackbeard13BarButtonItem_hostingController] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074278, &unk_1E65FBA70);
  v16 = *(v7 + 72);
  v17 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1E65EA670;
  v19 = v15;
  sub_1E65E4398();
  v45 = v18;
  sub_1E6275330(&qword_1EE2D4BC0, MEMORY[0x1E697CC60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074280, &qword_1E65EFF70);
  sub_1E5FED46C(&qword_1EE2D4850, &qword_1ED074280, &qword_1E65EFF70);
  sub_1E65E6738();
  sub_1E65E4028();

  v20 = OBJC_IVAR____TtC10Blackbeard13BarButtonItem_presentationContextKey;
  v21 = sub_1E65D76F8();
  v22 = *(v21 - 8);
  v23 = *(v22 + 16);
  v43 = a1;
  v23(&v3[v20], a1, v21);
  v24 = type metadata accessor for BarButtonItem();
  v44.receiver = v3;
  v44.super_class = v24;
  v25 = objc_msgSendSuper2(&v44, sel_init);
  v26 = objc_allocWithZone(MEMORY[0x1E69DD250]);
  v27 = v25;
  v28 = [v26 init];
  [v27 setCustomView_];

  if (sub_1E65E4B48())
  {
    v29 = [v27 customView];
    if (v29)
    {
      v30 = v29;
      v31 = [objc_opt_self() clearColor];
      [v30 setBackgroundColor_];
    }
  }

  v32 = OBJC_IVAR____TtC10Blackbeard13BarButtonItem_hostingController;
  v33 = [*&v27[OBJC_IVAR____TtC10Blackbeard13BarButtonItem_hostingController] view];
  if (v33)
  {
    v34 = v33;
    v35 = [v27 customView];
    [v35 addSubview_];
  }

  result = [*&v27[v32] view];
  if (result)
  {
    v37 = result;
    if (sub_1E65E4B48())
    {
      v38 = [objc_opt_self() clearColor];
    }

    else
    {
      v38 = 0;
    }

    [v37 setBackgroundColor_];

    sub_1E60942E4();
    (*(v40 + 8))(v42, v41);
    (*(v22 + 8))(v43, v21);
    return v27;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E625CAB4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735D0, &unk_1E65ED670) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072330, &qword_1E65EAB70) - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410) - 8) + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072338, qword_1E65EAB78) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  sub_1E65E6058();
  v2[8] = sub_1E65E6048();
  v8 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E625CC2C, v8, v7);
}

uint64_t sub_1E625CC2C()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v6 = v0[3];
  v5 = v0[4];
  v7 = v0[2];

  v8 = *MEMORY[0x1E69CBDB0];
  v9 = sub_1E65D8F38();
  v10 = *(v9 - 8);
  (*(v10 + 104))(v2, v8, v9);
  (*(v10 + 56))(v2, 0, 1, v9);
  v11 = (v6 + *(type metadata accessor for AppComposer() + 36));
  v12 = *v11;
  v13 = v11[1];
  v14 = sub_1E65D74E8();
  (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
  v15 = sub_1E65D9908();
  (*(*(v15 - 8) + 56))(v3, 1, 1, v15);
  v16 = sub_1E65D9F88();
  (*(*(v16 - 8) + 56))(v5, 1, 1, v16);
  sub_1E5FA9D34(v12, v13);
  sub_1E65D7A28();
  v17 = sub_1E65D7A38();
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);

  v18 = v0[1];

  return v18();
}

uint64_t sub_1E625CED4(uint64_t a1)
{
  v2 = sub_1E65D8A08();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v100 = &v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074588, &unk_1E65F0EC0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v99 = &v87 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072320, &unk_1E65EAB60);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v98 = &v87 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074590, &unk_1E65F0ED0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v97 = &v87 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074598, &unk_1E65FE820);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v93 = &v87 - v16;
  v17 = sub_1E65D8C88();
  v95 = *(v17 - 8);
  v96 = v17;
  v18 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v94 = &v87 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B500, &qword_1E65F0EE0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v90 = &v87 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v106 = &v87 - v24;
  v107 = sub_1E65D97D8();
  v92 = *(v107 - 8);
  v25 = *(v92 + 64);
  v26 = MEMORY[0x1EEE9AC00](v107);
  v89 = &v87 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v91 = &v87 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x1EEE9AC00](v29 - 8);
  v104 = &v87 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v103 = &v87 - v33;
  v105 = sub_1E65D8C98();
  v102 = *(v105 - 8);
  v34 = *(v102 + 64);
  MEMORY[0x1EEE9AC00](v105);
  v101 = &v87 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1E65D89F8();
  v88 = *(v36 - 8);
  v37 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v39 = &v87 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1E65DE3E8();
  v41 = *(v40 - 8);
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v44 = &v87 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for AppComposer();
  v46 = a1;
  v47 = (a1 + *(v45 + 32));
  v48 = *v47;
  v49 = v47[1];
  swift_getObjectType();
  sub_1E65DB678();
  v50 = sub_1E65E03C8();
  v52 = v51;
  if (v50 == sub_1E65E03C8() && v52 == v53)
  {
  }

  else
  {
    v54 = sub_1E65E6C18();

    if ((v54 & 1) == 0)
    {
      return result;
    }
  }

  v56 = v46 + *(v45 + 20);
  v57 = *(v56 + 8);
  v58 = sub_1E65DAE18();
  (*(v41 + 104))(v44, *MEMORY[0x1E69CAD28], v40);
  v59 = sub_1E637C87C(v44, v58);

  result = (*(v41 + 8))(v44, v40);
  if (v59)
  {
    v60 = v88;
    (*(v88 + 104))(v39, *MEMORY[0x1E69CB788], v36);
    sub_1E6171EC8(v39, 3);
    (*(v60 + 8))(v39, v36);
    v61 = *(type metadata accessor for AppEnvironment() + 80);
    v87 = v56;
    v88 = v61;
    v62 = MetricService.publishTrainerTipQuarantineRegionExited.getter();
    v62();

    v63 = v101;
    v64 = v102;
    v65 = v105;
    (*(v102 + 104))(v101, *MEMORY[0x1E69CBAF0], v105);
    v66 = sub_1E65D74E8();
    v67 = *(*(v66 - 8) + 56);
    v68 = v103;
    v67(v103, 1, 1, v66);
    v69 = v104;
    v67(v104, 1, 1, v66);
    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077248, &qword_1E65FE890);
    v71 = v70[12];
    v72 = v70[16];
    v73 = v91;
    v74 = &v91[v70[20]];
    (*(v64 + 16))(v91, v63, v65);
    sub_1E5DFD1CC(v68, &v73[v71], &qword_1ED072340, &qword_1E65EA410);
    sub_1E5DFD1CC(v69, &v73[v72], &qword_1ED072340, &qword_1E65EA410);
    *v74 = 0;
    *(v74 + 1) = 0;
    v75 = v92;
    v76 = v107;
    (*(v92 + 104))(v73, *MEMORY[0x1E69CC338], v107);
    v77 = sub_1E65D7A38();
    v78 = v106;
    (*(*(v77 - 8) + 56))(v106, 1, 1, v77);
    sub_1E6427784(MEMORY[0x1E69E7CC0]);
    (*(v75 + 16))(v89, v73, v76);
    sub_1E5DFD1CC(v78, v90, &unk_1ED07B500, &qword_1E65F0EE0);
    v79 = sub_1E65D9208();
    (*(*(v79 - 8) + 56))(v93, 1, 1, v79);
    v80 = sub_1E65D9218();
    (*(*(v80 - 8) + 56))(v97, 1, 1, v80);
    v81 = v98;
    sub_1E65D8CA8();
    v82 = sub_1E65D8CB8();
    (*(*(v82 - 8) + 56))(v81, 0, 1, v82);
    v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0745A0, &unk_1E65F0EE8);
    (*(*(v83 - 8) + 56))(v99, 1, 1, v83);
    v84 = sub_1E65D9928();
    (*(*(v84 - 8) + 56))(v100, 1, 1, v84);
    v85 = v94;
    sub_1E65D8C78();
    v86 = MetricService.record.getter();
    v86(v85);

    (*(v95 + 8))(v85, v96);
    sub_1E5DFE50C(v106, &unk_1ED07B500, &qword_1E65F0EE0);
    (*(v75 + 8))(v73, v107);
    sub_1E5DFE50C(v104, &qword_1ED072340, &qword_1E65EA410);
    sub_1E5DFE50C(v103, &qword_1ED072340, &qword_1E65EA410);
    return (*(v102 + 8))(v101, v105);
  }

  return result;
}

uint64_t sub_1E625DA00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v10 = type metadata accessor for AppComposer();
  v11 = (a1 + v10[9]);
  v12 = *v11;
  v13 = v11[1];
  v14 = *(a1 + v10[5] + 8);
  sub_1E5DFD1CC(a1 + v10[10], &v22, &unk_1ED074320, &unk_1E65EA730);
  sub_1E5DF650C(a4, &v23);
  v20[0] = v12;
  v20[1] = v13;
  v21 = v14;
  LODWORD(a4) = *(type metadata accessor for AppEnvironment() + 68);
  v15 = sub_1E5FA9D34(v12, v13);
  v16 = a5(v15);
  v19[3] = &type metadata for CatalogPageRoutingContextNavigator;
  v19[4] = sub_1E61379FC();
  v19[0] = swift_allocObject();
  sub_1E6137A50(v20, v19[0] + 16);
  v17 = v16(a2, a3, v19, v12, v13);

  sub_1E6137AAC(v20);
  __swift_destroy_boxed_opaque_existential_1(v19);
  return v17;
}

uint64_t sub_1E625DB94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppComposer();
  v5 = (a1 + v4[9]);
  v6 = *v5;
  v7 = v5[1];
  v8 = *(a1 + v4[5] + 8);
  sub_1E5DFD1CC(a1 + v4[10], &v15, &unk_1ED074320, &unk_1E65EA730);
  sub_1E5DF650C(a2, &v16);
  v13[0] = v6;
  v13[1] = v7;
  v14 = v8;
  LODWORD(a2) = *(type metadata accessor for AppEnvironment() + 68);
  sub_1E5FA9D34(v6, v7);
  active = InteropService.makeActiveWorkoutPlanViewController.getter();
  v12[3] = &type metadata for CatalogPageRoutingContextNavigator;
  v12[4] = sub_1E61379FC();
  v12[0] = swift_allocObject();
  sub_1E6137A50(v13, v12[0] + 16);
  v10 = active(0, v6, v7, v12);

  sub_1E6137AAC(v13);
  __swift_destroy_boxed_opaque_existential_1(v12);
  return v10;
}

uint64_t sub_1E625DCCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppComposer();
  v5 = (a1 + v4[9]);
  v6 = *v5;
  v7 = v5[1];
  v8 = *(a1 + v4[5] + 8);
  sub_1E5DFD1CC(a1 + v4[10], &v15, &unk_1ED074320, &unk_1E65EA730);
  sub_1E5DF650C(a2, &v16);
  v13[0] = v6;
  v13[1] = v7;
  v14 = v8;
  LODWORD(a2) = *(type metadata accessor for AppEnvironment() + 68);
  sub_1E5FA9D34(v6, v7);
  QueueView = InteropService.makeUpNextQueueViewController.getter();
  v12[3] = &type metadata for CatalogPageRoutingContextNavigator;
  v12[4] = sub_1E61379FC();
  v12[0] = swift_allocObject();
  sub_1E6137A50(v13, v12[0] + 16);
  v10 = QueueView(v12, v6, v7);

  sub_1E6137AAC(v13);
  __swift_destroy_boxed_opaque_existential_1(v12);
  return v10;
}

uint64_t sub_1E625DDFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for AppComposer();
  v9 = (a1 + v8[9]);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(a1 + v8[5] + 8);
  sub_1E5DFD1CC(a1 + v8[10], &v19, &unk_1ED074320, &unk_1E65EA730);
  sub_1E5DF650C(a4, &v20);
  v17[0] = v10;
  v17[1] = v11;
  v18 = v12;
  LODWORD(a4) = *(type metadata accessor for AppEnvironment() + 68);
  sub_1E5FA9D34(v10, v11);
  v13 = InteropService.makeWorkoutPlanAlternativeViewController.getter();
  v16[3] = &type metadata for CatalogPageRoutingContextNavigator;
  v16[4] = sub_1E61379FC();
  v16[0] = swift_allocObject();
  sub_1E6137A50(v17, v16[0] + 16);
  v14 = v13(a2, a3, v10, v11, v16);

  sub_1E6137AAC(v17);
  __swift_destroy_boxed_opaque_existential_1(v16);
  return v14;
}

uint64_t sub_1E625DF44(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077260, &qword_1E65F98D8);
  return sub_1E65E5B98() & 1;
}

uint64_t sub_1E625DFA8(uint64_t *a1)
{
  v2 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077260, &qword_1E65F98D8);
  return sub_1E65E5B58();
}

uint64_t sub_1E625DFF8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_1E65E4EC8();
}

void sub_1E625E020()
{
  v0 = sub_1E65E07B8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [*(Strong + qword_1EE2D9180) navigationItem];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
    sub_1E65E0668();
    sub_1E65E0798();
    v9 = v8;
    (*(v1 + 8))(v4, v0);
    [v7 setLargeTitleInsets_];
  }
}

uint64_t sub_1E625E194(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_1E65E5AF8();
  LODWORD(v2) = [v2 isValidJSONObject_];

  if (v2)
  {
  }

  else
  {
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v4 = sub_1E65E3B68();
    __swift_project_value_buffer(v4, qword_1EE2EA2A0);
    v5 = sub_1E65E3B48();
    v6 = sub_1E65E6328();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1E5DE9000, v5, v6, "Invalid JSON object.", v7, 2u);
      MEMORY[0x1E694F1C0](v7, -1, -1);
    }

    return 0;
  }

  return a1;
}

void sub_1E625E2DC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

char *sub_1E625E354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  ObjectType = swift_getObjectType();
  v13 = qword_1ED078640;
  *&v6[v13] = [objc_allocWithZone(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle_];
  *&v6[qword_1ED078660] = 0;
  v14 = &v6[qword_1ED078668];
  *v14 = 0;
  *(v14 + 1) = 0;
  *&v6[qword_1ED078648] = a1;
  v15 = &v6[qword_1ED078650];
  *v15 = a2;
  *(v15 + 1) = a3;
  v16 = &v6[qword_1ED078658];
  *v16 = a4;
  v16[1] = a5;

  sub_1E5F8711C(a4);
  v20.receiver = v6;
  v20.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v20, sel_initWithNibName_bundle_, 0, 0);
  [v17 setOverrideUserInterfaceStyle_];
  v18 = qword_1ED078640;
  [*&v17[qword_1ED078640] setHidesWhenStopped_];
  [*&v17[v18] setTranslatesAutoresizingMaskIntoConstraints_];
  sub_1E5E29474(a4);

  return v17;
}

uint64_t sub_1E625E524@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x1E694B900]();
  *a1 = result;
  return result;
}

uint64_t sub_1E625E550(uint64_t *a1)
{
  v1 = *a1;

  return MEMORY[0x1E694B910](v2);
}

char *sub_1E625E57C(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t a6)
{
  *&v1863 = a6;
  v1862 = a4;
  *&v1861 = a3;
  v1831 = a2;
  *&v1864 = a1;
  v7 = sub_1E65DAEB8();
  v1624 = *(v7 - 8);
  v1625 = v7;
  v8 = *(v1624 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v1623 = &v1597 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073D90, &unk_1E65FA3D0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v1621 = &v1597 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v1622 = &v1597 - v14;
  v15 = sub_1E65DCA88();
  v1647 = *(v15 - 8);
  v1648 = v15;
  v16 = *(v1647 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v1773 = &v1597 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1E65E63B8();
  v1645 = *(v18 - 8);
  v1646 = v18;
  v19 = *(v1645 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v1644 = &v1597 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1641 = sub_1E65E6398();
  v21 = *(*(v1641 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1641);
  v1643 = &v1597 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1E65E4F68();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v1640 = &v1597 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1765 = type metadata accessor for MetricService();
  Description = v1765[-1].Description;
  v26 = Description[8];
  MEMORY[0x1EEE9AC00](v1765);
  v1764 = &v1597 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1E65DD0A8();
  v1637 = *(v28 - 8);
  v1638 = v28;
  v29 = *(v1637 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v1763 = &v1597 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1601 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776A0, &qword_1E65F8030);
  v31 = *(*(v1601 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1601);
  v1600 = &v1597 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0770A8, &unk_1E65FA3E0);
  v34 = *(*(v33 - 8) + 64);
  v35 = MEMORY[0x1EEE9AC00](v33 - 8);
  v1611 = &v1597 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v1610 = &v1597 - v37;
  v1753 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776B0, &unk_1E65EDE50);
  v38 = *(*(v1753 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1753);
  v1776 = &v1597 - v39;
  v1772 = sub_1E65E3F88();
  v1771 = *(v1772 - 8);
  v40 = *(v1771 + 64);
  MEMORY[0x1EEE9AC00](v1772);
  v1769 = &v1597 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1770 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0738F0, &qword_1E65F7280);
  v1768 = *(v1770 - 8);
  v42 = *(v1768 + 64);
  MEMORY[0x1EEE9AC00](v1770);
  v1767 = &v1597 - v43;
  v1774 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776C0, &qword_1E65F9648);
  v44 = *(*(v1774 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1774);
  v1775 = &v1597 - v45;
  v1757 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0770B0, &unk_1E65FA3F0);
  v1756 = *(v1757 - 8);
  v46 = *(v1756 + 64);
  v47 = MEMORY[0x1EEE9AC00](v1757);
  v1755 = &v1597 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v1752 = &v1597 - v49;
  v1760 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776D0, &qword_1E65F9650);
  v50 = *(*(v1760 - 8) + 64);
  v51 = MEMORY[0x1EEE9AC00](v1760);
  v1754 = &v1597 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v51);
  v1821 = (&v1597 - v53);
  v1751 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0770B8, &unk_1E65FA400);
  v54 = *(*(v1751 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1751);
  v1844 = &v1597 - v55;
  v1824 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776E0, &qword_1E65EDC00);
  v1761 = *(v1824 - 8);
  v56 = *(v1761 + 64);
  v57 = MEMORY[0x1EEE9AC00](v1824);
  v1825 = &v1597 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1762 = v58;
  MEMORY[0x1EEE9AC00](v57);
  v1766 = (&v1597 - v59);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0770C0, &unk_1E65FA410);
  v61 = *(*(v60 - 8) + 64);
  v62 = MEMORY[0x1EEE9AC00](v60 - 8);
  v1750 = &v1597 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = MEMORY[0x1EEE9AC00](v62);
  v1786 = &v1597 - v65;
  v66 = MEMORY[0x1EEE9AC00](v64);
  v1749 = &v1597 - v67;
  MEMORY[0x1EEE9AC00](v66);
  v1785 = &v1597 - v68;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v70 = *(*(v69 - 8) + 64);
  v71 = MEMORY[0x1EEE9AC00](v69 - 8);
  v1612 = &v1597 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v71);
  v1742 = &v1597 - v73;
  v1744 = sub_1E65D7218();
  v74 = *(*(v1744 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1744);
  v1743 = &v1597 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1616 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0770C8, &unk_1E65FA420);
  v76 = *(*(v1616 - 8) + 64);
  v77 = MEMORY[0x1EEE9AC00](v1616);
  v1619 = &v1597 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = MEMORY[0x1EEE9AC00](v77);
  v1618 = &v1597 - v80;
  MEMORY[0x1EEE9AC00](v79);
  v1615 = &v1597 - v81;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776F0, &qword_1E65F9658);
  v83 = *(*(v82 - 8) + 64);
  v84 = MEMORY[0x1EEE9AC00](v82 - 8);
  v1617 = &v1597 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v84);
  v1620 = &v1597 - v86;
  v1857 = sub_1E65DEEA8();
  v1859 = *(v1857 - 8);
  v87 = *(v1859 + 8);
  MEMORY[0x1EEE9AC00](v1857);
  v1858 = (&v1597 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0));
  v1747 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073DE8, &unk_1E65FA430);
  v89 = *(*(v1747 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1747);
  v1748 = &v1597 - v90;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077700, &qword_1E65EEE38);
  v1631 = *(v91 - 8);
  v1632 = v91;
  v92 = *(v1631 + 64);
  MEMORY[0x1EEE9AC00](v91);
  v1630 = &v1597 - v93;
  v1635 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073DF8, &unk_1E65FA440);
  v94 = *(*(v1635 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1635);
  v1634 = &v1597 - v95;
  v1746 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077710, &qword_1E65EEE28);
  v96 = *(*(v1746 - 8) + 64);
  v97 = MEMORY[0x1EEE9AC00](v1746);
  v1639 = &v1597 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = MEMORY[0x1EEE9AC00](v97);
  v1633 = &v1597 - v100;
  MEMORY[0x1EEE9AC00](v99);
  v1636 = &v1597 - v101;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073E20, &unk_1E65FA450);
  v1603 = *(v102 - 8);
  v1604 = v102;
  v103 = *(v1603 + 64);
  MEMORY[0x1EEE9AC00](v102);
  v1602 = &v1597 - v104;
  v1607 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077720, &qword_1E65EEE40);
  v105 = *(*(v1607 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1607);
  v1606 = &v1597 - v106;
  v1745 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073E10, &unk_1E65FA460);
  v107 = *(*(v1745 - 8) + 64);
  v108 = MEMORY[0x1EEE9AC00](v1745);
  v1609 = &v1597 - ((v109 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = MEMORY[0x1EEE9AC00](v108);
  v1605 = &v1597 - v111;
  MEMORY[0x1EEE9AC00](v110);
  v1608 = &v1597 - v112;
  v1815 = sub_1E65D9048();
  v1733 = *(v1815 - 8);
  v113 = *(v1733 + 64);
  MEMORY[0x1EEE9AC00](v1815);
  v1732 = &v1597 - ((v114 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1814 = sub_1E65E58D8();
  v1731 = *(v1814 - 8);
  v115 = *(v1731 + 64);
  MEMORY[0x1EEE9AC00](v1814);
  v1730 = &v1597 - ((v116 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1729 = sub_1E65DA308();
  v1728 = *(v1729 - 8);
  v117 = *(v1728 + 64);
  MEMORY[0x1EEE9AC00](v1729);
  v1726 = &v1597 - ((v118 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1727 = sub_1E65E56B8();
  v1725 = *(v1727 - 8);
  v119 = *(v1725 + 64);
  MEMORY[0x1EEE9AC00](v1727);
  v1722 = &v1597 - ((v120 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1780 = sub_1E65D7EB8();
  v1779 = *(v1780 - 8);
  v121 = *(v1779 + 64);
  v122 = MEMORY[0x1EEE9AC00](v1780);
  v1650 = &v1597 - ((v123 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1599 = v123;
  MEMORY[0x1EEE9AC00](v122);
  v1778 = &v1597 - v124;
  v1823 = sub_1E65E55E8();
  v1782 = *(v1823 - 8);
  v125 = *(v1782 + 64);
  v126 = MEMORY[0x1EEE9AC00](v1823);
  v1649 = &v1597 - ((v127 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1598 = v127;
  MEMORY[0x1EEE9AC00](v126);
  v1818 = &v1597 - v128;
  v1710 = type metadata accessor for PlaylistType();
  v129 = *(*(v1710 - 8) + 64);
  v130 = MEMORY[0x1EEE9AC00](v1710);
  v1629 = (&v1597 - ((v131 + 15) & 0xFFFFFFFFFFFFFFF0));
  v132 = MEMORY[0x1EEE9AC00](v130);
  v1597 = (&v1597 - v133);
  MEMORY[0x1EEE9AC00](v132);
  v1759 = &v1597 - v134;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077730, &unk_1E65EA310);
  v136 = *(*(v135 - 8) + 64);
  MEMORY[0x1EEE9AC00](v135 - 8);
  v1739 = &v1597 - v137;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071EF8, &unk_1E65FA470);
  v139 = *(*(v138 - 8) + 64);
  MEMORY[0x1EEE9AC00](v138 - 8);
  v1738 = &v1597 - v140;
  v1737 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077740, &qword_1E65F9660);
  v1736 = *(v1737 - 8);
  v141 = *(v1736 + 64);
  MEMORY[0x1EEE9AC00](v1737);
  v1735 = &v1597 - v142;
  v1708 = sub_1E65DDE68();
  v1704 = *(v1708 - 8);
  v143 = *(v1704 + 64);
  MEMORY[0x1EEE9AC00](v1708);
  v1705 = &v1597 - ((v144 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1734 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0770D0, &unk_1E65FA480);
  v145 = *(*(v1734 - 8) + 64);
  v146 = MEMORY[0x1EEE9AC00](v1734);
  v1740 = &v1597 - ((v147 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v146);
  v1741 = &v1597 - v148;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077750, &unk_1E66011C0);
  v1706 = *(v149 - 8);
  v150 = *(v1706 + 64);
  v151 = MEMORY[0x1EEE9AC00](v149 - 8);
  v1812 = &v1597 - ((v152 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1707 = v152;
  MEMORY[0x1EEE9AC00](v151);
  v1817 = &v1597 - v153;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B60, &unk_1E65FA490);
  v1702 = *(v154 - 8);
  v155 = *(v1702 + 64);
  v156 = MEMORY[0x1EEE9AC00](v154 - 8);
  v1811 = &v1597 - ((v157 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1703 = v157;
  MEMORY[0x1EEE9AC00](v156);
  v1816 = &v1597 - v158;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077760, &unk_1E66011D0);
  v1699 = *(v159 - 8);
  v160 = *(v1699 + 64);
  v161 = MEMORY[0x1EEE9AC00](v159 - 8);
  v1711 = &v1597 - ((v162 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = MEMORY[0x1EEE9AC00](v161);
  v1810 = &v1597 - v164;
  v1813 = v165;
  MEMORY[0x1EEE9AC00](v163);
  v1839 = &v1597 - v166;
  v1693 = sub_1E65E52B8();
  v167 = *(*(v1693 - 8) + 64);
  v168 = MEMORY[0x1EEE9AC00](v1693);
  v1697 = (&v1597 - ((v169 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v168);
  v1720 = &v1597 - v170;
  v1698 = sub_1E65E5528();
  v1696 = *(v1698 - 8);
  v171 = *(v1696 + 64);
  MEMORY[0x1EEE9AC00](v1698);
  v1694 = &v1597 - ((v172 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1809 = sub_1E65E57D8();
  v1692 = *(v1809 - 8);
  v173 = *(v1692 + 64);
  MEMORY[0x1EEE9AC00](v1809);
  v1690 = &v1597 - ((v174 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B500, &qword_1E65F0EE0);
  v176 = *(*(v175 - 8) + 64);
  MEMORY[0x1EEE9AC00](v175 - 8);
  v1695 = &v1597 - v177;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077770, &unk_1E660C190);
  v179 = *(*(v178 - 8) + 64);
  MEMORY[0x1EEE9AC00](v178 - 8);
  v1691 = &v1597 - v180;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076220, &unk_1E65FA4A0);
  v182 = *(*(v181 - 8) + 64);
  MEMORY[0x1EEE9AC00](v181 - 8);
  v1688 = &v1597 - v183;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077780, &unk_1E66097F0);
  v1683 = *(v184 - 8);
  v185 = *(v1683 + 64);
  v186 = MEMORY[0x1EEE9AC00](v184 - 8);
  v1686 = &v1597 - ((v187 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1684 = v187;
  MEMORY[0x1EEE9AC00](v186);
  v1838 = &v1597 - v188;
  v1689 = sub_1E65D7848();
  v1687 = *(v1689 - 8);
  v189 = *(v1687 + 64);
  MEMORY[0x1EEE9AC00](v1689);
  v1842 = &v1597 - ((v190 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = sub_1E65E5C28();
  v192 = *(*(v191 - 8) + 64);
  MEMORY[0x1EEE9AC00](v191 - 8);
  v1819 = &v1597 - ((v193 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1777 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0770D8, &unk_1E65FA4B0);
  v1834 = *(v1777 - 8);
  v194 = *(v1834 + 8);
  v195 = MEMORY[0x1EEE9AC00](v1777);
  v1613 = &v1597 - ((v196 + 15) & 0xFFFFFFFFFFFFFFF0);
  v197 = MEMORY[0x1EEE9AC00](v195);
  v1614 = &v1597 - v198;
  v199 = MEMORY[0x1EEE9AC00](v197);
  v1685 = &v1597 - v200;
  MEMORY[0x1EEE9AC00](v199);
  v1808 = &v1597 - v201;
  v1717 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077790, &qword_1E65F9668);
  v1715 = *(v1717 - 8);
  v202 = *(v1715 + 64);
  MEMORY[0x1EEE9AC00](v1717);
  v1712 = &v1597 - v203;
  v1719 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0770E0, &unk_1E65FA4C0);
  v204 = *(*(v1719 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1719);
  v1718 = &v1597 - v205;
  v1723 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0777A0, &qword_1E65F9670);
  v206 = *(*(v1723 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1723);
  v1724 = &v1597 - v207;
  v1678 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0770E8, &unk_1E65FA4D0);
  v1675 = *(v1678 - 8);
  v208 = *(v1675 + 64);
  MEMORY[0x1EEE9AC00](v1678);
  v1674 = &v1597 - v209;
  v1682 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0777B0, &qword_1E65F9678);
  v1680 = *(v1682 - 8);
  v210 = *(v1680 + 64);
  MEMORY[0x1EEE9AC00](v1682);
  v1677 = &v1597 - v211;
  v1681 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0770F0, &unk_1E65FA4E0);
  v1679 = *(v1681 - 8);
  v212 = *(v1679 + 64);
  MEMORY[0x1EEE9AC00](v1681);
  v1676 = &v1597 - v213;
  v1673 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0777C0, &unk_1E65F84E0);
  v1672 = *(v1673 - 8);
  v214 = *(v1672 + 64);
  MEMORY[0x1EEE9AC00](v1673);
  v1671 = &v1597 - v215;
  v1721 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0770F8, &unk_1E65FA4F0);
  v216 = *(*(v1721 - 8) + 64);
  v217 = MEMORY[0x1EEE9AC00](v1721);
  v1713 = &v1597 - ((v218 + 15) & 0xFFFFFFFFFFFFFFF0);
  v219 = MEMORY[0x1EEE9AC00](v217);
  v1714 = &v1597 - v220;
  MEMORY[0x1EEE9AC00](v219);
  v1716 = &v1597 - v221;
  v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0777D0, &qword_1E65F9680);
  v223 = *(*(v222 - 8) + 64);
  v224 = MEMORY[0x1EEE9AC00](v222 - 8);
  v1783 = &v1597 - ((v225 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v224);
  v1784 = &v1597 - v226;
  v1668 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077100, &unk_1E65FA500);
  v227 = *(*(v1668 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1668);
  v1667 = &v1597 - v228;
  v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0777E0, &qword_1E65F9688);
  v230 = *(*(v229 - 8) + 64);
  v231 = MEMORY[0x1EEE9AC00](v229 - 8);
  v1798 = &v1597 - ((v232 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v231);
  v1801 = &v1597 - v233;
  v234 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077108, &unk_1E65FA510);
  v235 = *(*(v234 - 8) + 64);
  v236 = MEMORY[0x1EEE9AC00](v234 - 8);
  v1666 = &v1597 - ((v237 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v236);
  v1665 = &v1597 - v238;
  v1664 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0777F0, &qword_1E65F9690);
  v239 = *(*(v1664 - 8) + 64);
  v240 = MEMORY[0x1EEE9AC00](v1664);
  v1669 = &v1597 - ((v241 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v240);
  v1670 = &v1597 - v242;
  v1851 = sub_1E65D74E8();
  v1850 = *(v1851 - 1);
  v243 = *(v1850 + 64);
  v244 = MEMORY[0x1EEE9AC00](v1851);
  v1787 = &v1597 - ((v243 + 15) & 0xFFFFFFFFFFFFFFF0);
  v245 = MEMORY[0x1EEE9AC00](v244);
  v1840 = (&v1597 - v246);
  v247 = MEMORY[0x1EEE9AC00](v245);
  v1837 = &v1597 - v248;
  v249 = MEMORY[0x1EEE9AC00](v247);
  v1804 = &v1597 - v250;
  MEMORY[0x1EEE9AC00](v249);
  v1795 = &v1597 - v251;
  v1807 = sub_1E65E1518();
  v1806 = *(v1807 - 8);
  v252 = *(v1806 + 64);
  MEMORY[0x1EEE9AC00](v1807);
  v1805 = &v1597 - ((v253 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1849 = sub_1E65DB848();
  v1848 = *(v1849 - 8);
  v254 = *(v1848 + 8);
  v255 = MEMORY[0x1EEE9AC00](v1849);
  v1799 = &v1597 - ((v256 + 15) & 0xFFFFFFFFFFFFFFF0);
  v257 = MEMORY[0x1EEE9AC00](v255);
  v1800 = &v1597 - v258;
  v259 = MEMORY[0x1EEE9AC00](v257);
  v1796 = &v1597 - v260;
  v261 = MEMORY[0x1EEE9AC00](v259);
  v1797 = &v1597 - v262;
  v263 = MEMORY[0x1EEE9AC00](v261);
  v1802 = &v1597 - v264;
  MEMORY[0x1EEE9AC00](v263);
  v1803 = &v1597 - v265;
  v266 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0729A0, &unk_1E65FA520);
  v267 = *(*(v266 - 8) + 64);
  v268 = MEMORY[0x1EEE9AC00](v266 - 8);
  v1662 = &v1597 - ((v269 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v268);
  v1663 = &v1597 - v270;
  v271 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077800, &qword_1E65F9698);
  v272 = *(*(v271 - 8) + 64);
  v273 = MEMORY[0x1EEE9AC00](v271 - 8);
  v1660 = &v1597 - ((v274 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v273);
  v1661 = &v1597 - v275;
  v276 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072708, &unk_1E65FA530);
  v277 = *(*(v276 - 8) + 64);
  v278 = MEMORY[0x1EEE9AC00](v276 - 8);
  v1790 = &v1597 - ((v279 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v278);
  v1659 = &v1597 - v280;
  v281 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077810, &qword_1E65F96A0);
  v282 = *(*(v281 - 8) + 64);
  v283 = MEMORY[0x1EEE9AC00](v281 - 8);
  v1655 = &v1597 - ((v284 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v283);
  v1658 = &v1597 - v285;
  v286 = sub_1E65E0B48();
  v287 = *(*(v286 - 8) + 64);
  MEMORY[0x1EEE9AC00](v286 - 8);
  v1656 = &v1597 - ((v288 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1836 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077110, &unk_1E65FA540);
  v1657 = *(v1836 - 1);
  v289 = *(v1657 + 64);
  v290 = MEMORY[0x1EEE9AC00](v1836);
  v1791 = &v1597 - ((v291 + 15) & 0xFFFFFFFFFFFFFFF0);
  v292 = MEMORY[0x1EEE9AC00](v290);
  v1653 = &v1597 - v293;
  v294 = MEMORY[0x1EEE9AC00](v292);
  v1654 = &v1597 - v295;
  MEMORY[0x1EEE9AC00](v294);
  v1794 = &v1597 - v296;
  v1793 = sub_1E65D72D8();
  v1792 = *(v1793 - 8);
  v297 = *(v1792 + 64);
  MEMORY[0x1EEE9AC00](v1793);
  v1835 = (&v1597 - ((v298 + 15) & 0xFFFFFFFFFFFFFFF0));
  v1827 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077820, &qword_1E65F96A8);
  v299 = *(*(v1827 - 8) + 64);
  v300 = MEMORY[0x1EEE9AC00](v1827);
  v1628 = &v1597 - ((v301 + 15) & 0xFFFFFFFFFFFFFFF0);
  v302 = MEMORY[0x1EEE9AC00](v300);
  v1758 = &v1597 - v303;
  v304 = MEMORY[0x1EEE9AC00](v302);
  v1651 = &v1597 - v305;
  v306 = MEMORY[0x1EEE9AC00](v304);
  v1781 = &v1597 - v307;
  v308 = MEMORY[0x1EEE9AC00](v306);
  v1826 = &v1597 - v309;
  MEMORY[0x1EEE9AC00](v308);
  v1652 = &v1597 - v310;
  v311 = type metadata accessor for BrowsePage();
  v312 = *(*(v311 - 8) + 64);
  MEMORY[0x1EEE9AC00](v311);
  v314 = &v1597 - ((v313 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1853 = sub_1E65D76F8();
  v1854 = *(v1853 - 8);
  v315 = *(v1854 + 8);
  v316 = MEMORY[0x1EEE9AC00](v1853);
  v1822 = &v1597 - ((v315 + 15) & 0xFFFFFFFFFFFFFFF0);
  v317 = MEMORY[0x1EEE9AC00](v316);
  v1820 = &v1597 - v318;
  v319 = MEMORY[0x1EEE9AC00](v317);
  v1627 = &v1597 - v320;
  v321 = MEMORY[0x1EEE9AC00](v319);
  v1626 = &v1597 - v322;
  v323 = MEMORY[0x1EEE9AC00](v321);
  v1852 = &v1597 - v324;
  v325 = MEMORY[0x1EEE9AC00](v323);
  v1833 = &v1597 - v326;
  v327 = MEMORY[0x1EEE9AC00](v325);
  v1832 = &v1597 - v328;
  v329 = MEMORY[0x1EEE9AC00](v327);
  v1843 = (&v1597 - v330);
  v331 = MEMORY[0x1EEE9AC00](v329);
  v1789 = &v1597 - v332;
  v333 = MEMORY[0x1EEE9AC00](v331);
  v1788 = &v1597 - v334;
  MEMORY[0x1EEE9AC00](v333);
  v1845 = &v1597 - v335;
  v1701 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073DA8, &unk_1E65FA550);
  v336 = *(*(v1701 - 8) + 64);
  v337 = MEMORY[0x1EEE9AC00](v1701);
  v1700 = &v1597 - ((v338 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v337);
  v1709 = &v1597 - v339;
  v340 = type metadata accessor for AppComposer();
  v1855 = *(v340 - 8);
  v341 = *(v1855 + 8);
  v342 = MEMORY[0x1EEE9AC00](v340);
  v344 = &v1597 - ((v343 + 15) & 0xFFFFFFFFFFFFFFF0);
  v345 = MEMORY[0x1EEE9AC00](v342);
  v1829 = &v1597 - v346;
  v347 = MEMORY[0x1EEE9AC00](v345);
  v1828 = &v1597 - v348;
  v349 = MEMORY[0x1EEE9AC00](v347);
  v1847 = &v1597 - v350;
  v351 = MEMORY[0x1EEE9AC00](v349);
  v1846 = &v1597 - v352;
  v1856 = v353;
  MEMORY[0x1EEE9AC00](v351);
  v1860 = &v1597 - v354;
  v355 = type metadata accessor for RouteResource();
  v356 = *(*(v355 - 8) + 64);
  MEMORY[0x1EEE9AC00](v355);
  v358 = &v1597 - ((v357 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1875[3] = a5;
  v1875[4] = v1863;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1875);
  v360 = *(*(a5 - 1) + 16);
  v1830 = boxed_opaque_existential_1;
  v1841 = a5;
  v360(boxed_opaque_existential_1, v1861, a5);
  *&v1861 = v340;
  v361 = v1864 + *(v340 + 20);
  v362 = *(v361 + 8);
  sub_1E626F020(v1862, v358, type metadata accessor for RouteResource);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v793 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720B0, &unk_1E65EA270);
      v794 = &v358[v793[12]];
      v796 = *v794;
      v795 = v794[1];
      v1853 = v796;
      v1852 = v795;
      v797 = v793[16];
      v1848 = *&v358[v793[20]];
      v798 = v793[24];
      LODWORD(v1851) = v358[v793[28]];
      v799 = &v358[v793[32]];
      v1850 = *v799;
      LODWORD(v1849) = v799[8];
      v800 = v1839;
      sub_1E5FAB460(v358, v1839, &unk_1ED077760, &unk_1E66011D0);
      v801 = v1816;
      sub_1E5FAB460(&v358[v797], v1816, &qword_1ED072B60, &unk_1E65FA490);
      *&v1863 = v361;
      v802 = v1817;
      sub_1E5FAB460(&v358[v798], v1817, &unk_1ED077750, &unk_1E66011C0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E18, &qword_1E65FD850);
      v1862 = swift_allocBox();
      (*(v1704 + 104))(v1705, *MEMORY[0x1E69CAB38], v1708);
      LOBYTE(aBlock) = 0;
      sub_1E65DDC88();
      v1844 = type metadata accessor for AppComposer;
      v803 = v1860;
      sub_1E626F020(v1864, v1860, type metadata accessor for AppComposer);
      sub_1E5DFD1CC(v800, v1810, &unk_1ED077760, &unk_1E66011D0);
      sub_1E5DFD1CC(v802, v1812, &unk_1ED077750, &unk_1E66011C0);
      sub_1E5DFD1CC(v801, v1811, &qword_1ED072B60, &unk_1E65FA490);
      v804 = *(v1855 + 80);
      v805 = (v804 + 16) & ~v804;
      v1856 += v805;
      v1855 = v805;
      v1854 = (v804 | 7);
      v1845 = *(v1699 + 80);
      v806 = &v1856[v1845] & ~v1845;
      v1843 = (v804 | 7 | v1845);
      v807 = (v1813 + v806 + 7) & 0xFFFFFFFFFFFFFFF8;
      v808 = (*(v1706 + 80) + v807 + 8) & ~*(v1706 + 80);
      v809 = (v1707 + v808 + 7) & 0xFFFFFFFFFFFFFFF8;
      v810 = (*(v1702 + 80) + v809 + 9) & ~*(v1702 + 80);
      v1842 = (v810 + v1703);
      v1841 = ((v810 + v1703) & 0xFFFFFFFFFFFFFFF8);
      v811 = (v1841 + 23) & 0xFFFFFFFFFFFFFFF8;
      v812 = swift_allocObject();
      v1840 = type metadata accessor for AppComposer;
      sub_1E5E1E4C0(v803, v812 + v805, type metadata accessor for AppComposer);
      sub_1E5FAB460(v1810, v812 + v806, &unk_1ED077760, &unk_1E66011D0);
      *(v812 + v807) = v1848;
      sub_1E5FAB460(v1812, v812 + v808, &unk_1ED077750, &unk_1E66011C0);
      v813 = v812 + v809;
      *v813 = v1850;
      *(v813 + 8) = v1849;
      sub_1E5FAB460(v1811, v812 + v810, &qword_1ED072B60, &unk_1E65FA490);
      v1842[v812] = v1851;
      *(v1841 + v812 + 8) = v1862;
      v814 = (v812 + v811);
      v815 = v1852;
      *v814 = v1853;
      v814[1] = v815;
      LODWORD(v806) = *(type metadata accessor for AppEnvironment() + 72);

      v816 = LocalizationService.localizedDateComponentsFormatter.getter();
      *&v1863 = v816();

      v817 = v1864;
      v818 = v1846;
      v819 = v1844;
      sub_1E626F020(v1864, v1846, v1844);
      v820 = v1856;
      v1853 = swift_allocObject();
      v821 = v1855;
      sub_1E5E1E4C0(v818, v1855 + v1853, type metadata accessor for AppComposer);
      v822 = v1847;
      sub_1E626F020(v817, v1847, v819);
      sub_1E5DF650C(v1875, &aBlock);
      v823 = v1711;
      sub_1E5DFD1CC(v1839, v1711, &unk_1ED077760, &unk_1E66011D0);
      v824 = (v820 + 7) & 0xFFFFFFFFFFFFFFF8;
      v825 = (v1845 + v824 + 40) & ~v1845;
      v826 = swift_allocObject();
      sub_1E5E1E4C0(v822, v821 + v826, v1840);
      sub_1E5DF599C(&aBlock, v826 + v824);
      sub_1E5FAB460(v823, v826 + v825, &unk_1ED077760, &unk_1E66011D0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077870, &unk_1E65FA560);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072788, &qword_1E65EBC00);
      sub_1E5FEB2FC();
      sub_1E5FED46C(&qword_1EE2D6500, &qword_1ED072788, &qword_1E65EBC00);
      v827 = v1735;
      sub_1E65E26F8();
      sub_1E65E5148();
      sub_1E65E5138();
      v828 = sub_1E65E4FD8();
      v829 = v1738;
      (*(*(v828 - 8) + 56))(v1738, 1, 1, v828);
      if (qword_1EE2D49E0 != -1)
      {
        swift_once();
      }

      v830 = sub_1E65E5018();
      __swift_project_value_buffer(v830, qword_1EE2D49E8);
      v831 = sub_1E65E2E78();
      v832 = v1739;
      (*(*(v831 - 8) + 56))(v1739, 1, 1, v831);
      sub_1E5FED46C(&qword_1ED077120, &unk_1ED077740, &qword_1E65F9660);
      v833 = v1741;
      v834 = v1737;
      sub_1E65E4728();

      sub_1E5DFE50C(v832, &unk_1ED077730, &unk_1E65EA310);
      sub_1E5DFE50C(v829, &qword_1ED071EF8, &unk_1E65FA470);
      (*(v1736 + 8))(v827, v834);
      v835 = v1864;
      v836 = v1860;
      sub_1E626F020(v1864, v1860, type metadata accessor for AppComposer);
      v837 = swift_allocObject();
      sub_1E5E1E4C0(v836, v1855 + v837, type metadata accessor for AppComposer);

      v838 = (v833 + *(v1734 + 36));
      *v838 = sub_1E626CF38;
      v838[1] = v837;
      v839 = v1740;
      sub_1E5DFD1CC(v833, v1740, &qword_1ED0770D0, &unk_1E65FA480);
      v840 = *v835;
      v841 = *(v1861 + 32);
      v842 = swift_allocObject();
      v1864 = *(v835 + v841);
      *(v842 + 16) = v1864;
      v843 = v1858;
      v844 = v1857;
      if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
      {

        swift_unknownObjectRetain();
        sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
        v845 = v1565;
      }

      else
      {

        swift_unknownObjectRetain();
        v845 = MEMORY[0x1E69E7CD0];
      }

      (*(v1859 + 13))(v843, *MEMORY[0x1E699CE18], v844);
      v846 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0778E0, &unk_1E65FA5C0));
      v373 = sub_1E626E800(v839, v845, MEMORY[0x1E69E7CC0], v843, 0, 0, 0, 0, 0, 0, 0, v840, sub_1E6275B5C, v842);

      sub_1E5DFE50C(v833, &qword_1ED0770D0, &unk_1E65FA480);
      sub_1E5DFE50C(v1817, &unk_1ED077750, &unk_1E66011C0);
      sub_1E5DFE50C(v1816, &qword_1ED072B60, &unk_1E65FA490);
      sub_1E5DFE50C(v1839, &unk_1ED077760, &unk_1E66011D0);
      goto LABEL_265;
    case 2u:
      v652 = *v358;
      v651 = *(v358 + 1);
      *v314 = *v358;
      *(v314 + 1) = v651;
      swift_storeEnumTagMultiPayload();

      v653 = v1864;
      sub_1E617DC64(v314, &aBlock);
      sub_1E6272C28(v314, type metadata accessor for BrowsePage);
      if (v362 < 2)
      {
        *v314 = v652;
        *(v314 + 1) = v651;
        swift_storeEnumTagMultiPayload();

        v654 = v1781;
        sub_1E6508CD4(v1875, v314, &aBlock, v1781);
        sub_1E6272C28(v314, type metadata accessor for BrowsePage);
        sub_1E6272CEC();
        v655 = v1826;
        sub_1E5FEE4C8(v654);
        sub_1E5DFE50C(v654, &unk_1ED077820, &qword_1E65F96A8);
        v656 = v1758;
        sub_1E5FEE4C8(v655);
        sub_1E5DFE50C(v655, &unk_1ED077820, &qword_1E65F96A8);
        v657 = v1626;
        sub_1E65D76E8();
        v658 = v1627;
        sub_1E65D76E8();
        v659 = v1628;
        sub_1E5DFD1CC(v656, v1628, &unk_1ED077820, &qword_1E65F96A8);
        v1862 = sub_1E6388F1C(v652, v651, v658, v657, &aBlock);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A60, &qword_1E65F0870);
        v660 = swift_allocObject();
        *(v660 + 16) = xmmword_1E65F32F0;
        *(v660 + 32) = sub_1E638D9FC(v652, v651, v658, &aBlock, v653);
        *(v660 + 40) = [objc_opt_self() flexibleSpaceItem];
        v661 = sub_1E638AB3C(v652, v651, v657, &aBlock);

        *(v660 + 48) = v661;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077B30, &unk_1E65FA7D0);
        v662 = *v653;
        v663 = *(v1861 + 32);
        v664 = swift_allocObject();
        v1864 = *(v653 + v663);
        *(v664 + 16) = v1864;
        v665 = v1858;
        (*(v1859 + 13))(v1858, *MEMORY[0x1E699CE18], v1857);

        swift_unknownObjectRetain();
        *(&v1585 + 1) = sub_1E6275B5C;
        *&v1585 = v662;
        v373 = sub_1E630B390(v659, v1862, v660, v665, 0, 0, 0, 0, 1, 0, v1585, v664);

        sub_1E5DFE50C(v659, &unk_1ED077820, &qword_1E65F96A8);
        swift_unknownObjectRelease();

        v666 = *(v1854 + 1);
        v667 = v1853;
        v666(v658, v1853);
        v666(v657, v667);
        sub_1E5DFE50C(v1758, &unk_1ED077820, &qword_1E65F96A8);
        goto LABEL_265;
      }

      if (v362 != 3)
      {
        goto LABEL_330;
      }

      v1377 = v1860;
      sub_1E626F020(v653, v1860, type metadata accessor for AppComposer);
      sub_1E5DF650C(v1875, &v1867);
      v1378 = (*(v1855 + 80) + 16) & ~*(v1855 + 80);
      v1379 = &v1856[v1378 + 7] & 0xFFFFFFFFFFFFFFF8;
      v1380 = swift_allocObject();
      sub_1E5E1E4C0(v1377, v1380 + v1378, type metadata accessor for AppComposer);
      v1381 = (v1380 + v1379);
      *v1381 = v652;
      v1381[1] = v651;
      sub_1E5DF599C(&v1867, v1380 + ((v1379 + 23) & 0xFFFFFFFFFFFFFFF8));
      v1382 = sub_1E65E4438();
      v1383 = *v653;
      v1384 = *(v1861 + 32);
      v1385 = swift_allocObject();
      v1864 = *(v653 + v1384);
      *(v1385 + 16) = v1864;
      if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
      {

        swift_unknownObjectRetain();
        sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
        v1386 = v1575;
      }

      else
      {

        swift_unknownObjectRetain();
        v1386 = MEMORY[0x1E69E7CD0];
      }

      v1387 = v1858;
      (*(v1859 + 13))(v1858, *MEMORY[0x1E699CE18], v1857);
      objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077118, &qword_1E65F96B0));

      v1388 = sub_1E6275404(sub_1E6272FAC, v1380, v1382, v1386, MEMORY[0x1E69E7CC0], v1387, 0, 0, 0, 0, 0, 0, 0, v1383, sub_1E6275B5C, v1385, &qword_1ED077308, &qword_1E65F9920, &unk_1F5FB6EF0, sub_1E6275B70, sub_1E6275B6C);

      v1389 = v1831;
      if (v1831)
      {
        v1390 = v1831;
        v1391 = v1388;
        if ([v1390 isViewLoaded])
        {
          v1392 = [v1390 view];
          if (v1392)
          {
            v1393 = v1392;
            v1394 = [v1392 snapshotViewAfterScreenUpdates_];

            goto LABEL_263;
          }

          goto LABEL_322;
        }
      }

      else
      {
        v1552 = v1388;
      }

      v1394 = 0;
LABEL_263:
      v1553 = objc_allocWithZone(type metadata accessor for BlurViewController());
      v373 = sub_1E630B7AC(v1388, v1394);

      swift_unknownObjectRelease();

LABEL_264:

      goto LABEL_265;
    case 3u:
      LODWORD(v1862) = v362;
      v733 = *(v358 + 1);
      v1854 = *v358;
      v734 = v1854;
      v1851 = v733;
      LODWORD(v1863) = v358[16];
      LODWORD(v1861) = v358[17];
      v735 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AE0, &unk_1E65EA7B0);
      v736 = *(v735 + 80);
      v1853 = v735;
      v737 = v1792;
      v738 = v1835;
      v739 = v1793;
      (*(v1792 + 32))(v1835, &v358[v736], v1793);
      v740 = *(v735 + 80);
      *v314 = v734;
      v741 = v1851;
      *(v314 + 1) = v1851;
      v314[16] = v1863;
      v314[17] = v1861;
      v1852 = *(v737 + 16);
      (v1852)(&v314[v740], v738, v739);
      swift_storeEnumTagMultiPayload();

      sub_1E617DC64(v314, &aBlock);
      sub_1E6272C28(v314, type metadata accessor for BrowsePage);
      v742 = *(v1853 + 80);
      *v314 = v1854;
      *(v314 + 1) = v741;
      v314[16] = v1863;
      v314[17] = v1861;
      (v1852)(&v314[v742], v738, v739);
      swift_storeEnumTagMultiPayload();
      v743 = v1826;
      v744 = v1864;
      sub_1E6508CD4(v1875, v314, &aBlock, v1826);
      sub_1E6272C28(v314, type metadata accessor for BrowsePage);
      v1854 = type metadata accessor for AppComposer;
      v745 = v1860;
      sub_1E626F020(v744, v1860, type metadata accessor for AppComposer);
      v1853 = *(v1855 + 80);
      v746 = (v1853 + 17) & ~v1853;
      v747 = swift_allocObject();
      *(v747 + 16) = v1863;
      v1855 = type metadata accessor for AppComposer;
      sub_1E5E1E4C0(v745, v747 + v746, type metadata accessor for AppComposer);
      v748 = sub_1E6272CEC();
      v749 = v1653;
      v750 = v1827;
      sub_1E65E4718();

      sub_1E5DFE50C(v743, &unk_1ED077820, &qword_1E65F96A8);
      *&v1867 = v750;
      *(&v1867 + 1) = v748;
      swift_getOpaqueTypeConformance2();
      v751 = v1654;
      v752 = v1836;
      sub_1E5FEE4C8(v749);
      v753 = v1657;
      v754 = v1657 + 8;
      v755 = *(v1657 + 8);
      v755(v749, v752);
      v756 = v1794;
      sub_1E5FEE4C8(v751);
      *&v1861 = v754;
      v755(v751, v752);
      (*(v753 + 16))(v1791, v756, v752);
      v757 = *v1864;
      sub_1E626F020(v1864, v344, v1854);
      v758 = (v1853 + 16) & ~v1853;
      v759 = &v1856[v758];
      v760 = swift_allocObject();
      sub_1E5E1E4C0(v344, v760 + v758, v1855);
      v759[v760] = v1863;
      if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
      {

        sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
        v761 = v1563;
      }

      else
      {

        v761 = MEMORY[0x1E69E7CD0];
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077B20, &qword_1E65F9800);
      v762 = v1858;
      (*(v1859 + 13))(v1858, *MEMORY[0x1E699CE18], v1857);
      *(&v1587 + 1) = sub_1E6272F2C;
      *&v1587 = v757;
      v763 = v1791;
      v764 = sub_1E630B390(v1791, v761, MEMORY[0x1E69E7CC0], v762, 0, 0, 0, 0, 0, 0, v1587, v760);

      v755(v763, v1836);
      v373 = v764;
      sub_1E65D71F8();
      sub_1E6275330(&qword_1ED075EA8, MEMORY[0x1E6968678]);
      sub_1E65E5E48();
      v765 = sub_1E65E5C48();

      [v373 setTitle_];

      v766 = sub_1E6307A64();
      v767 = v766;
      if (v1862 > 1)
      {
        [v766 setLargeTitleDisplayMode_];
        swift_unknownObjectRelease();
      }

      else
      {
        [v766 setLargeTitleDisplayMode_];

        swift_unknownObjectRelease();

        v767 = v373;
      }

      v755(v1794, v1836);
      (*(v1792 + 8))(v1835, v1793);
      goto LABEL_265;
    case 4u:
      v501 = &v358[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720C0, &unk_1E65EA280) + 48)];
      v502 = *v501;
      v503 = v501[1];
      v408 = v1656;
      sub_1E5E1E4C0(v358, v1656, MEMORY[0x1E699DD40]);
      v504 = v1658;
      v505 = v502;
      v506 = v1864;
      sub_1E63DB038(v408, v505, v503, v1875, v1658);

      v507 = v1655;
      sub_1E5DFD1CC(v504, v1655, &unk_1ED077810, &qword_1E65F96A0);
      v508 = *v506;
      v509 = *(v1861 + 32);
      v510 = swift_allocObject();
      v1864 = *(v506 + v509);
      *(v510 + 16) = v1864;
      if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
      {

        swift_unknownObjectRetain();
        sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
        v511 = v1560;
      }

      else
      {

        swift_unknownObjectRetain();
        v511 = MEMORY[0x1E69E7CD0];
      }

      v512 = v1858;
      (*(v1859 + 13))(v1858, *MEMORY[0x1E699CE18], v1857);
      v513 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0771D8, &qword_1E65F97E8));
      v373 = sub_1E626CF50(v507, v511, MEMORY[0x1E69E7CC0], v512, 0, 0, 0, 0, 0, 0, 0, v508, sub_1E6272C24, v510);

      sub_1E5DFE50C(v504, &unk_1ED077810, &qword_1E65F96A0);
      v417 = MEMORY[0x1E699DD40];
      goto LABEL_257;
    case 5u:
      v854 = *v358;
      v855 = v1663;
      v856 = v1864;
      AppComposer.libraryGalleryViewBuilder(_:currentRoutingContext:)(v854, v1875, v1663);
      v857 = v1662;
      sub_1E5DFD1CC(v855, v1662, &qword_1ED0729A0, &unk_1E65FA520);
      v858 = *v856;
      v859 = *(v1861 + 32);
      v860 = swift_allocObject();
      v1864 = *(v856 + v859);
      *(v860 + 16) = v1864;
      if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
      {

        swift_unknownObjectRetain();
        sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
        v861 = v1566;
      }

      else
      {

        swift_unknownObjectRetain();
        v861 = MEMORY[0x1E69E7CD0];
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0771C8, &qword_1E65F97D8);
      v862 = v1858;
      (*(v1859 + 13))(v1858, *MEMORY[0x1E699CE18], v1857);
      *(&v1588 + 1) = sub_1E6275B5C;
      *&v1588 = v858;
      v863 = sub_1E630B390(v857, v861, MEMORY[0x1E69E7CC0], v862, 0, 0, 0, 0, 0, 0, v1588, v860);

      sub_1E5DFE50C(v857, &qword_1ED0729A0, &unk_1E65FA520);
      swift_getKeyPath();
      v373 = v863;
      v864 = v1842;
      sub_1E65E4EC8();

      sub_1E65DF548();
      (*(v1687 + 8))(v864, v1689);
      v865 = sub_1E65E5C48();

      [v373 setTitle_];

      v866 = sub_1E6307A64();
      [v866 setLargeTitleDisplayMode_];

      sub_1E5DFE50C(v855, &qword_1ED0729A0, &unk_1E65FA520);
      goto LABEL_265;
    case 6u:
      *&v1863 = *v358;
      v882 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AC0, &unk_1E65EA7C0);
      v883 = v361;
      v884 = *(v882 + 64);
      (*(v1848 + 4))(v1803, &v358[*(v882 + 48)], v1849);
      (*(v1806 + 32))(v1805, &v358[v884], v1807);
      v885 = v1861;
      v886 = v1864;
      v887 = (v1864 + *(v1861 + 36));
      v888 = *v887;
      v889 = v887[1];
      sub_1E617FDC0();
      v890 = sub_1E65DB818();
      v891 = sub_1E65DB838();
      v1862 = sub_1E625B3D4(v891);

      v892 = *(v885 + 32);
      v893 = swift_allocObject();
      v894 = *(v886 + v892);
      *&v1861 = v893;
      *(v893 + 16) = v894;
      swift_unknownObjectRetain();
      sub_1E65DB578();
      sub_1E65E1508();
      sub_1E65E1268();
      v895 = *v883;
      v896 = objc_allocWithZone(sub_1E65E1328());
      v897 = sub_1E65E5C48();

      v898 = sub_1E65E5C48();

      v899 = [v896 initWithServiceType:v897 placement:v898 bag:v895];

      v900 = v899;
      sub_1E65E14E8();
      if (v901)
      {
        v902 = sub_1E65E5C48();
      }

      else
      {
        v902 = 0;
      }

      [v900 setOfferHints_];

      v373 = v900;
      [v373 setAccount_];
      [v373 setAnonymousMetrics_];
      v1276 = sub_1E625E194(v1862);
      if (!v1276)
      {
        v1276 = sub_1E6215168(MEMORY[0x1E69E7CC0]);
      }

      sub_1E625B10C(v1276);

      v1277 = sub_1E65E5AF8();

      [v373 setMetricsOverlay_];

      sub_1E65DB588();
      v1278 = sub_1E65E5C48();

      [v373 setMediaClientIdentifier_];

      v1279 = [objc_opt_self() currentProcess];
      sub_1E65DB598();
      v1280 = sub_1E65E6348();

      [v373 setClientInfo_];

      v1281 = sub_1E65E1308();
      v1859 = type metadata accessor for AppComposer;
      v1282 = v1860;
      sub_1E626F020(v1864, v1860, type metadata accessor for AppComposer);
      sub_1E5DF650C(v1875, &aBlock);
      v1283 = (*(v1855 + 80) + 16) & ~*(v1855 + 80);
      v1284 = &v1856[v1283 + 7] & 0xFFFFFFFFFFFFFFF8;
      v1285 = (v1284 + 15) & 0xFFFFFFFFFFFFFFF8;
      v1286 = swift_allocObject();
      v1858 = type metadata accessor for AppComposer;
      sub_1E5E1E4C0(v1282, v1286 + v1283, type metadata accessor for AppComposer);
      v1287 = v1862;
      *(v1286 + v1284) = v1862;
      sub_1E5DF599C(&aBlock, v1286 + v1285);

      sub_1E65E13A8();

      v1288 = sub_1E65E1308();
      sub_1E626F020(v1864, v1282, v1859);
      sub_1E5DF650C(v1875, &aBlock);
      v1289 = swift_allocObject();
      sub_1E5E1E4C0(v1282, v1289 + v1283, v1858);
      *(v1289 + v1284) = v1287;
      sub_1E5DF599C(&aBlock, v1289 + v1285);
      sub_1E65E13B8();

      sub_1E65E1318();
      v993 = *(v1848 + 1);
      v994 = v1849;
      v993(v1802, v1849);
      (*(v1806 + 8))(v1805, v1807);
      v995 = v1803;
      goto LABEL_146;
    case 7u:
      v768 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720D0, &unk_1E65EA290);
      v769 = v1850;
      v770 = v1795;
      v771 = v1851;
      (*(v1850 + 32))(v1795, &v358[*(v768 + 48)], v1851);
      v772 = v1670;
      (*(v769 + 16))(v1670, v770, v771);
      v773 = v1864;
      v774 = v1860;
      sub_1E626F020(v1864, v1860, type metadata accessor for AppComposer);
      v775 = (*(v1855 + 80) + 16) & ~*(v1855 + 80);
      v776 = swift_allocObject();
      sub_1E5E1E4C0(v774, v776 + v775, type metadata accessor for AppComposer);
      v777 = (v772 + *(v1664 + 36));
      *v777 = sub_1E626CF38;
      v777[1] = v776;
      v778 = v1669;
      sub_1E5DFD1CC(v772, v1669, &unk_1ED0777F0, &qword_1E65F9690);
      v779 = *v773;
      v780 = *(v1861 + 32);
      v781 = swift_allocObject();
      v1864 = *(v773 + v780);
      *(v781 + 16) = v1864;
      if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
      {

        swift_unknownObjectRetain();
        sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
        v782 = v1564;
      }

      else
      {

        swift_unknownObjectRetain();
        v782 = MEMORY[0x1E69E7CD0];
      }

      v783 = v1858;
      (*(v1859 + 13))(v1858, *MEMORY[0x1E699CE18], v1857);
      v784 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0771C0, &qword_1E65F97D0));
      v373 = sub_1E626D770(v778, v782, MEMORY[0x1E69E7CC0], v783, 0, 0, 0, 0, 0, 0, 0, v779, sub_1E6275B5C, v781);

      sub_1E5DFE50C(v772, &unk_1ED0777F0, &qword_1E65F9690);
      (*(v769 + 8))(v1795, v771);
      (*(v1848 + 1))(v358, v1849);
      goto LABEL_265;
    case 8u:
      *&v1863 = *v358;
      v962 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED078600, &unk_1E65EA7D0);
      v963 = v361;
      v964 = *(v962 + 64);
      (*(v1848 + 4))(v1797, &v358[*(v962 + 48)], v1849);
      (*(v1850 + 32))(v1804, &v358[v964], v1851);
      v965 = v1861;
      v966 = v1864;
      v967 = (v1864 + *(v1861 + 36));
      v968 = *v967;
      v969 = v967[1];
      sub_1E617FDC0();
      v970 = sub_1E65DB818();
      v971 = sub_1E65DB838();
      v972 = sub_1E625B3D4(v971);

      v973 = *(v965 + 32);
      v974 = swift_allocObject();
      v1861 = *(v966 + v973);
      *(v974 + 16) = v1861;
      v975 = *v963;
      v976 = objc_allocWithZone(sub_1E65E1378());
      swift_unknownObjectRetain();
      v977 = sub_1E65D7448();
      v978 = [v976 initWithBag:v975 URL:v977];

      v373 = v978;
      [v373 setAccount_];
      [v373 setAnonymousMetrics_];
      v979 = sub_1E625E194(v972);
      v1862 = v974;
      v980 = v972;
      if (!v979)
      {
        v979 = sub_1E6215168(MEMORY[0x1E69E7CC0]);
      }

      sub_1E625B10C(v979);

      v981 = sub_1E65E5AF8();

      [v373 setMetricsOverlay_];

      sub_1E65DB588();
      v982 = sub_1E65E5C48();

      [v373 setMediaClientIdentifier_];

      v983 = [objc_opt_self() currentProcess];
      sub_1E65DB598();
      v984 = sub_1E65E6348();

      [v373 setClientInfo_];

      v985 = sub_1E65E1358();
      *&v1861 = type metadata accessor for AppComposer;
      v986 = v1860;
      sub_1E626F020(v1864, v1860, type metadata accessor for AppComposer);
      sub_1E5DF650C(v1875, &aBlock);
      v987 = (*(v1855 + 80) + 16) & ~*(v1855 + 80);
      v988 = (&v1856[v987 + 7] & 0xFFFFFFFFFFFFFFF8);
      v1859 = v988;
      v989 = (v988 + 15) & 0xFFFFFFFFFFFFFFF8;
      v990 = swift_allocObject();
      v1858 = type metadata accessor for AppComposer;
      sub_1E5E1E4C0(v986, v990 + v987, type metadata accessor for AppComposer);
      *(v988 + v990) = v980;
      sub_1E5DF599C(&aBlock, v990 + v989);

      sub_1E65E13A8();

      v991 = sub_1E65E1358();
      sub_1E626F020(v1864, v986, v1861);
      sub_1E5DF650C(v1875, &aBlock);
      v992 = swift_allocObject();
      sub_1E5E1E4C0(v986, v992 + v987, v1858);
      *(v1859 + v992) = v980;
      sub_1E5DF599C(&aBlock, v992 + v989);
      sub_1E65E13B8();

      sub_1E65E1368();
      v993 = *(v1848 + 1);
      v994 = v1849;
      v993(v1796, v1849);
      (*(v1850 + 8))(v1804, v1851);
      v995 = v1797;
LABEL_146:
      v993(v995, v994);
      goto LABEL_265;
    case 9u:
      v623 = *v358;
      v624 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED078600, &unk_1E65EA7D0);
      v625 = v361;
      v626 = *(v624 + 64);
      (*(v1848 + 4))(v1800, &v358[*(v624 + 48)], v1849);
      v1858 = *(v1850 + 32);
      (v1858)(v1837, &v358[v626], v1851);
      v627 = v1861;
      v628 = v1864;
      v629 = (v1864 + *(v1861 + 36));
      v630 = *v629;
      v631 = v629[1];
      sub_1E617FDC0();
      v632 = sub_1E65DB838();
      v633 = sub_1E625B3D4(v632);

      v634 = *(v627 + 32);
      v635 = swift_allocObject();
      v1863 = *(v628 + v634);
      v1862 = v635;
      *(v635 + 16) = v1863;
      v636 = objc_opt_self();
      swift_unknownObjectRetain();
      v637 = [v636 currentProcess];
      sub_1E65DB598();
      v638 = sub_1E65E6348();

      v639 = *v625;
      v640 = objc_allocWithZone(sub_1E65E12F8());
      *&v1863 = v623;
      v1859 = v638;
      v373 = [v640 initWithBag:v639 account:v623 clientInfo:v638];
      *&v1861 = v633;
      if (!sub_1E625E194(v633))
      {
        sub_1E6215168(MEMORY[0x1E69E7CC0]);
      }

      v641 = v1742;
      v642 = sub_1E65E5AF8();

      [v373 setMetricsOverlay_];

      v643 = v1837;
      sub_1E63265A8(v641);
      v644 = v1850;
      v645 = *(v1850 + 48);
      v646 = v1851;
      if (v645(v641, 1, v1851) == 1)
      {
        v647 = *(v644 + 16);
        v648 = v1787;
        v647(v1787, v643, v646);
        v649 = v645(v641, 1, v646);
        v650 = v1858;
        if (v649 != 1)
        {
          sub_1E5DFE50C(v641, &qword_1ED072340, &qword_1E65EA410);
        }
      }

      else
      {
        v648 = v1787;
        v650 = v1858;
        (v1858)(v1787, v641, v646);
      }

      v1225 = sub_1E65D7448();
      v1226 = [v373 loadURL_];

      v1227 = v648;
      v1228 = v1850;
      v1229 = v1840;
      (*(v1850 + 16))(v1840, v1227, v646);
      v1230 = (*(v1228 + 80) + 16) & ~*(v1228 + 80);
      v1231 = swift_allocObject();
      (v650)(v1231 + v1230, v1229, v646);
      *&v1872 = sub_1E6271D70;
      *(&v1872 + 1) = v1231;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      *&v1871 = sub_1E625E2DC;
      *(&v1871 + 1) = &block_descriptor_8;
      v1232 = _Block_copy(&aBlock);

      [v1226 addFinishBlock_];
      _Block_release(v1232);

      v1233 = sub_1E65E12D8();
      v1234 = v1860;
      sub_1E626F020(v1864, v1860, type metadata accessor for AppComposer);
      sub_1E5DF650C(v1875, &aBlock);
      v1235 = (*(v1855 + 80) + 16) & ~*(v1855 + 80);
      v1236 = &v1856[v1235 + 7] & 0xFFFFFFFFFFFFFFF8;
      v1237 = swift_allocObject();
      sub_1E5E1E4C0(v1234, v1237 + v1235, type metadata accessor for AppComposer);
      *(v1237 + v1236) = v1861;
      sub_1E5DF599C(&aBlock, v1237 + ((v1236 + 15) & 0xFFFFFFFFFFFFFFF8));
      sub_1E65E1338();

      sub_1E65E12E8();
      v1238 = *(v1228 + 8);
      v1238(v1787, v646);
      v1239 = *(v1848 + 1);
      v1240 = v1849;
      v1239(v1799, v1849);
      v1238(v1837, v646);
      v1239(v1800, v1240);
      goto LABEL_265;
    case 0xAu:
      v903 = *v358;
      v904 = *(v358 + 1);
      if (v362 < 2)
      {
        v1862 = type metadata accessor for AppComposer;
        v905 = v1860;
        sub_1E626F020(v1864, v1860, type metadata accessor for AppComposer);
        v906 = *(v1855 + 80);
        v1846 = &v1856[(v906 + 16) & ~v906];
        v907 = (v906 + 16) & ~v906;
        v1849 = v907;
        v1847 = v906 | 7;
        v908 = (v1846 + 7) & 0xFFFFFFFFFFFFFFF8;
        v909 = swift_allocObject();
        v1848 = type metadata accessor for AppComposer;
        sub_1E5E1E4C0(v905, v909 + v907, type metadata accessor for AppComposer);
        v910 = (v909 + v908);
        *v910 = v903;
        v910[1] = v904;

        sub_1E61F84B0(v903, v904, sub_1E6270D58, v909, &aBlock);

        AppComposer.modalityDetailViewBuilder(identifier:currentRoutingContext:)(v903, v904, v1875, v1785);
        v911 = v903;
        v1851 = v903;
        v912 = v1852;
        sub_1E65D76E8();
        v913 = v904;
        v914 = v1766;
        *v1766 = v911;
        *(v914 + 8) = v913;
        *&v1863 = v913;
        *(v914 + 16) = 4;
        swift_storeEnumTagMultiPayload();

        v915 = sub_1E6200DD8(v914, v912, &aBlock);
        sub_1E5DFE50C(v914, &unk_1ED0776E0, &qword_1E65EDC00);
        v1856 = *(v1854 + 2);
        (v1856)(v1820, v912, v1853);
        v916 = sub_1E65E4BA8();
        v917 = v1844;
        *v1844 = v916;
        *(v917 + 1) = v918;
        v1842 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07A3E0, &qword_1E65F9758) + 44);
        v919 = sub_1E65E4998();
        v920 = *(v1760 + 36);
        v1845 = sub_1E604C89C();

        v921 = v1821;
        v1843 = v915;
        sub_1E65DE568();
        *v921 = v919;
        v922 = v1863;
        *v914 = v1851;
        *(v914 + 8) = v922;
        *(v914 + 16) = 4;
        swift_storeEnumTagMultiPayload();
        sub_1E626F020(v1864, v1860, v1862);
        sub_1E5DFD1CC(v914, v1825, &unk_1ED0776E0, &qword_1E65EDC00);
        v923 = v1853;
        (v1856)(v1822, v912, v1853);
        v1862 = aBlock;
        v1856 = *(&v1871 + 1);
        v1855 = *(&v1872 + 1);
        v1851 = *(&v1873 + 1);
        v1850 = *(&v1874[0] + 1);
        v924 = &v1846[*(v1761 + 80)] & ~*(v1761 + 80);
        v925 = v1854;
        v926 = (v1762 + *(v1854 + 80) + v924) & ~*(v1854 + 80);
        v927 = swift_allocObject();
        sub_1E5E1E4C0(v1860, v927 + v1849, v1848);
        sub_1E5FAB460(v1825, v927 + v924, &unk_1ED0776E0, &qword_1E65EDC00);
        v925[4](v927 + v926, v1822, v923);
        v928 = (v927 + ((v315 + v926 + 7) & 0xFFFFFFFFFFFFFFF8));
        v929 = v1873;
        v928[2] = v1872;
        v928[3] = v929;
        v928[4] = v1874[0];
        v930 = v1871;
        *v928 = aBlock;
        v928[1] = v930;

        swift_unknownObjectRetain();

        v931 = v1767;
        sub_1E65DE4E8();
        sub_1E5DFE50C(v914, &unk_1ED0776E0, &qword_1E65EDC00);
        v932 = v1769;
        sub_1E65E3F78();
        sub_1E5FED46C(&qword_1EE2D68F0, &qword_1ED0738F0, &qword_1E65F7280);
        sub_1E6275330(&unk_1ED07A410, MEMORY[0x1E697C4E8]);
        v933 = v1775;
        v934 = v1770;
        v935 = v1772;
        sub_1E65E47D8();
        (*(v1771 + 8))(v932, v935);
        (*(v1768 + 8))(v931, v934);
        v936 = sub_1E65E49C8();
        KeyPath = swift_getKeyPath();
        *&v1867 = v936;
        v938 = sub_1E65E3D08();
        v939 = v1774;
        v940 = (v933 + *(v1774 + 36));
        *v940 = KeyPath;
        v940[1] = v938;
        v941 = *MEMORY[0x1E697E6E8];
        v942 = sub_1E65E3DD8();
        v943 = v1776;
        (*(*(v942 - 1) + 104))(v1776, v941, v942);
        sub_1E6275330(&qword_1EE2D4EF0, MEMORY[0x1E697E730]);
        if (sub_1E65E5B98())
        {
          v944 = &v1842[v1844];
          sub_1E626FD54();
          sub_1E5FED46C(&qword_1EE2D4460, &unk_1ED0776B0, &unk_1E65EDE50);
          v945 = v1752;
          sub_1E65E4848();
          sub_1E5DFE50C(v943, &unk_1ED0776B0, &unk_1E65EDE50);
          sub_1E5DFE50C(v933, &unk_1ED0776C0, &qword_1E65F9648);
          v946 = v1821;
          v947 = v1754;
          sub_1E5DFD1CC(v1821, v1754, &unk_1ED0776D0, &qword_1E65F9650);
          v948 = v1756;
          v949 = *(v1756 + 16);
          v950 = v1755;
          v951 = v1757;
          v949(v1755, v945, v1757);
          sub_1E5DFD1CC(v947, v944, &unk_1ED0776D0, &qword_1E65F9650);
          v952 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A440, &unk_1E65FA710);
          v949(&v944[*(v952 + 48)], v950, v951);
          v953 = *(v948 + 8);
          v953(v945, v951);
          sub_1E5DFE50C(v946, &unk_1ED0776D0, &qword_1E65F9650);
          v953(v950, v951);
          sub_1E5DFE50C(v947, &unk_1ED0776D0, &qword_1E65F9650);
          v954 = v1844;
          v955 = (v1844 + *(v1751 + 36));
          v956 = v1843;
          *v955 = sub_1E6275B64;
          v955[1] = v956;
          v957 = type metadata accessor for BarButtonItem();
          v955[2] = 0;
          v955[3] = 0;
          v958 = objc_allocWithZone(v957);

          v959 = sub_1E625BAB8(v1820, v954, &qword_1ED0770B8, &unk_1E65FA400, sub_1E627468C);

          (*(v1854 + 1))(v1852, v1853);
          sub_1E5DFD1CC(v1785, v1749, &qword_1ED0770C0, &unk_1E65FA410);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A60, &qword_1E65F0870);
          v943 = swift_allocObject();
          *(v943 + 16) = xmmword_1E65EA660;
          *(v943 + 32) = v959;
          v960 = v959;
          v961 = sub_1E65E4B48();
          *&v1863 = v960;
          if (v961)
          {
            v942 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
            v932 = 0;
          }

          else
          {
            v942 = [objc_opt_self() blackColor];
            v932 = 3;
          }

          v1510 = v1864;
          v931 = *v1864;
          v1511 = *(v1861 + 32);
          v939 = swift_allocObject();
          v1864 = *(v1510 + v1511);
          *(v939 + 16) = v1864;
          if (!(MEMORY[0x1E69E7CC0] >> 62))
          {
            goto LABEL_230;
          }

          goto LABEL_293;
        }

        __break(1u);
LABEL_292:
        __break(1u);
LABEL_293:
        if (sub_1E65E67C8())
        {

          swift_unknownObjectRetain();
          sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
          v1512 = v1568;
          goto LABEL_231;
        }

LABEL_230:

        swift_unknownObjectRetain();
        v1512 = MEMORY[0x1E69E7CD0];
LABEL_231:
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A80, &qword_1E65F9790);
        v1513 = v1858;
        (*(v1859 + 13))(v1858, *MEMORY[0x1E699CE18], v1857);
        *(&v1595 + 1) = sub_1E6275B5C;
        *&v1595 = v931;
        v1514 = v1749;
        v373 = sub_1E630B390(v1749, v1512, v943, v1513, 0, 0, v942, v932, 1, 0, v1595, v939);

        v374 = &qword_1ED0770C0;
        v375 = &unk_1E65FA410;
        sub_1E5DFE50C(v1514, &qword_1ED0770C0, &unk_1E65FA410);

        swift_unknownObjectRelease();
        v1418 = v1785;
LABEL_236:
        sub_1E5DFE50C(v1418, v374, v375);
        goto LABEL_265;
      }

      if (v362 != 3)
      {
        goto LABEL_337;
      }

      v1419 = v1864;
      v1420 = v1860;
      sub_1E626F020(v1864, v1860, type metadata accessor for AppComposer);
      sub_1E5DF650C(v1875, &aBlock);
      v1421 = (*(v1855 + 80) + 16) & ~*(v1855 + 80);
      v1422 = &v1856[v1421 + 7] & 0xFFFFFFFFFFFFFFF8;
      v1423 = swift_allocObject();
      sub_1E5E1E4C0(v1420, v1423 + v1421, type metadata accessor for AppComposer);
      v1424 = (v1423 + v1422);
      *v1424 = v903;
      v1424[1] = v904;
      sub_1E5DF599C(&aBlock, v1423 + ((v1422 + 23) & 0xFFFFFFFFFFFFFFF8));
      v1425 = sub_1E65E4438();
      v1426 = *v1419;
      v1427 = *(v1861 + 32);
      v1428 = swift_allocObject();
      v1864 = *(v1419 + v1427);
      *(v1428 + 16) = v1864;
      if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
      {

        swift_unknownObjectRetain();
        sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
        v1429 = v1577;
      }

      else
      {

        swift_unknownObjectRetain();
        v1429 = MEMORY[0x1E69E7CD0];
      }

      v1430 = v1858;
      (*(v1859 + 13))(v1858, *MEMORY[0x1E699CE18], v1857);
      objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077118, &qword_1E65F96B0));

      v1406 = sub_1E6275404(sub_1E6270D40, v1423, v1425, v1429, MEMORY[0x1E69E7CC0], v1430, 0, 0, 0, 0, 0, 0, 0, v1426, sub_1E6275B5C, v1428, &qword_1ED077308, &qword_1E65F9920, &unk_1F5FB6EF0, sub_1E6275B70, sub_1E6275B6C);

      v1407 = v1831;
      if (!v1831)
      {
        goto LABEL_220;
      }

      v1431 = v1831;
      v1432 = v1406;
      if (![v1431 isViewLoaded])
      {
        goto LABEL_221;
      }

      v1410 = [v1431 view];
      if (!v1410)
      {
LABEL_324:
        __break(1u);
        goto LABEL_325;
      }

      goto LABEL_219;
    case 0xBu:
      v418 = v1665;
      AppComposer.onboardingModalityDetailViewBuilder(modalityIdentifier:currentRoutingContext:)(*v358, *(v358 + 1), v1875, v1665);

      v384 = &qword_1ED077108;
      v385 = &unk_1E65FA510;
      sub_1E5DFD1CC(v418, v1666, &qword_1ED077108, &unk_1E65FA510);
      v419 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AB0, &unk_1E65FA790));
      v373 = sub_1E65E18F8();
      v398 = v418;
      goto LABEL_124;
    case 0xCu:
      v619 = *v358;
      v620 = *(v358 + 1);
      sub_1E5F94E00(*(v358 + 2), v358[24]);
      v621 = v361 + *(type metadata accessor for AppEnvironment() + 68);
      v622 = InteropService.makePrivacySplashViewController.getter();
      v373 = v622(v619, v620);

      goto LABEL_264;
    case 0xDu:
      v868 = *v358;
      v867 = *(v358 + 1);
      v869 = v1864;
      v870 = v362;
      sub_1E637E93C(*v358, v867, &aBlock);
      v871 = v1667;
      sub_1E64970E4(v868, v867, v1875, &aBlock, v1667);
      v872 = sub_1E626FB98();
      v873 = v1801;
      sub_1E6012F9C(v1668, v872);
      sub_1E5DFE50C(v871, &qword_1ED077100, &unk_1E65FA500);
      v874 = v1788;
      sub_1E65D76E8();
      v875 = v1789;
      sub_1E65D76E8();
      sub_1E5DFD1CC(v873, v1798, &unk_1ED0777E0, &qword_1E65F9688);
      v876 = sub_1E623EEE8(v868, v867, v874, v875, &aBlock);
      v877 = v870;
      v878 = v876;
      if (v877 >= 2)
      {
        v881 = v1854;
        if (v877 != 3)
        {
          goto LABEL_330;
        }

        v879 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A60, &qword_1E65F0870);
        v879 = swift_allocObject();
        *(v879 + 16) = xmmword_1E65F32F0;
        *(v879 + 32) = sub_1E623F674(v868, v867, v874, &aBlock);
        *(v879 + 40) = [objc_opt_self() flexibleSpaceItem];
        v880 = sub_1E62408B4(v868, v867, v875, &aBlock);

        *(v879 + 48) = v880;
        v881 = v1854;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0771B8, &qword_1E65F9750);
      v1411 = *v869;
      v1412 = *(v1861 + 32);
      v1413 = swift_allocObject();
      v1864 = *(v869 + v1412);
      *(v1413 + 16) = v1864;
      v1414 = v1858;
      (*(v1859 + 13))(v1858, *MEMORY[0x1E699CE18], v1857);

      swift_unknownObjectRetain();
      *(&v1593 + 1) = sub_1E6275B5C;
      *&v1593 = v1411;
      v1415 = v1798;
      v373 = sub_1E630B390(v1798, v878, v879, v1414, 0, 0, 0, 0, 1, 0, v1593, v1413);

      v374 = &unk_1ED0777E0;
      v375 = &qword_1E65F9688;
      sub_1E5DFE50C(v1415, &unk_1ED0777E0, &qword_1E65F9688);
      swift_unknownObjectRelease();

      v1416 = *(v881 + 1);
      v1417 = v1853;
      v1416(v1789, v1853);
      v1416(v1788, v1417);
      v1418 = v1801;
      goto LABEL_236;
    case 0xEu:
    case 0x13u:
    case 0x18u:
    case 0x26u:
    case 0x28u:
      goto LABEL_329;
    case 0xFu:
      v1030 = *v358;
      v1031 = *(v358 + 1);
      if (v362 < 2)
      {
        v1862 = type metadata accessor for AppComposer;
        v1032 = v1860;
        sub_1E626F020(v1864, v1860, type metadata accessor for AppComposer);
        v1033 = *(v1855 + 80);
        v1846 = &v1856[(v1033 + 16) & ~v1033];
        v1034 = (v1033 + 16) & ~v1033;
        v1849 = v1034;
        v1847 = v1033 | 7;
        v1035 = (v1846 + 7) & 0xFFFFFFFFFFFFFFF8;
        v1036 = swift_allocObject();
        v1848 = type metadata accessor for AppComposer;
        sub_1E5E1E4C0(v1032, v1036 + v1034, type metadata accessor for AppComposer);
        v1037 = (v1036 + v1035);
        *v1037 = v1030;
        v1037[1] = v1031;

        sub_1E61F84B0(v1030, v1031, sub_1E626FD38, v1036, &aBlock);

        AppComposer.trainerDetailViewBuilder(identifier:currentRoutingContext:)(v1030, v1031, v1875, v1786);
        v1038 = v1030;
        v1851 = v1030;
        v1039 = v1852;
        sub_1E65D76E8();
        v1040 = v1031;
        v1041 = v1766;
        *v1766 = v1038;
        *(v1041 + 8) = v1040;
        *&v1863 = v1040;
        *(v1041 + 16) = 3;
        swift_storeEnumTagMultiPayload();

        v1042 = sub_1E6200DD8(v1041, v1039, &aBlock);
        sub_1E5DFE50C(v1041, &unk_1ED0776E0, &qword_1E65EDC00);
        v1856 = *(v1854 + 2);
        (v1856)(v1820, v1039, v1853);
        v1043 = sub_1E65E4BA8();
        v1044 = v1844;
        *v1844 = v1043;
        *(v1044 + 1) = v1045;
        v1842 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07A3E0, &qword_1E65F9758) + 44);
        v1046 = sub_1E65E4998();
        v1047 = *(v1760 + 36);
        v1845 = sub_1E604C89C();

        v1048 = v1821;
        v1843 = v1042;
        sub_1E65DE568();
        *v1048 = v1046;
        v1049 = v1863;
        *v1041 = v1851;
        *(v1041 + 8) = v1049;
        *(v1041 + 16) = 3;
        swift_storeEnumTagMultiPayload();
        sub_1E626F020(v1864, v1860, v1862);
        sub_1E5DFD1CC(v1041, v1825, &unk_1ED0776E0, &qword_1E65EDC00);
        v1050 = v1853;
        (v1856)(v1822, v1039, v1853);
        v1862 = aBlock;
        v1856 = *(&v1871 + 1);
        v1855 = *(&v1872 + 1);
        v1851 = *(&v1873 + 1);
        v1850 = *(&v1874[0] + 1);
        v1051 = &v1846[*(v1761 + 80)] & ~*(v1761 + 80);
        v1052 = v1854;
        v1053 = (v1762 + *(v1854 + 80) + v1051) & ~*(v1854 + 80);
        v1054 = swift_allocObject();
        sub_1E5E1E4C0(v1860, v1054 + v1849, v1848);
        sub_1E5FAB460(v1825, v1054 + v1051, &unk_1ED0776E0, &qword_1E65EDC00);
        v1052[4](v1054 + v1053, v1822, v1050);
        v1055 = (v1054 + ((v315 + v1053 + 7) & 0xFFFFFFFFFFFFFFF8));
        v1056 = v1873;
        v1055[2] = v1872;
        v1055[3] = v1056;
        v1055[4] = v1874[0];
        v1057 = v1871;
        *v1055 = aBlock;
        v1055[1] = v1057;

        swift_unknownObjectRetain();

        v931 = v1767;
        sub_1E65DE4E8();
        sub_1E5DFE50C(v1041, &unk_1ED0776E0, &qword_1E65EDC00);
        v932 = v1769;
        sub_1E65E3F78();
        sub_1E5FED46C(&qword_1EE2D68F0, &qword_1ED0738F0, &qword_1E65F7280);
        sub_1E6275330(&unk_1ED07A410, MEMORY[0x1E697C4E8]);
        v1058 = v1775;
        v1059 = v1770;
        v1060 = v1772;
        sub_1E65E47D8();
        (*(v1771 + 8))(v932, v1060);
        (*(v1768 + 8))(v931, v1059);
        v1061 = sub_1E65E49C8();
        v1062 = swift_getKeyPath();
        *&v1867 = v1061;
        v1063 = sub_1E65E3D08();
        v939 = v1774;
        v1064 = (v1058 + *(v1774 + 36));
        *v1064 = v1062;
        v1064[1] = v1063;
        v1065 = *MEMORY[0x1E697E6E8];
        v942 = sub_1E65E3DD8();
        v943 = v1776;
        (*(*(v942 - 1) + 104))(v1776, v1065, v942);
        sub_1E6275330(&qword_1EE2D4EF0, MEMORY[0x1E697E730]);
        if (sub_1E65E5B98())
        {
          v1066 = &v1842[v1844];
          sub_1E626FD54();
          sub_1E5FED46C(&qword_1EE2D4460, &unk_1ED0776B0, &unk_1E65EDE50);
          v1067 = v1752;
          sub_1E65E4848();
          sub_1E5DFE50C(v943, &unk_1ED0776B0, &unk_1E65EDE50);
          sub_1E5DFE50C(v1058, &unk_1ED0776C0, &qword_1E65F9648);
          v1068 = v1821;
          v1069 = v1754;
          sub_1E5DFD1CC(v1821, v1754, &unk_1ED0776D0, &qword_1E65F9650);
          v1070 = v1756;
          v1071 = *(v1756 + 16);
          v1072 = v1755;
          v1073 = v1757;
          v1071(v1755, v1067, v1757);
          sub_1E5DFD1CC(v1069, v1066, &unk_1ED0776D0, &qword_1E65F9650);
          v1074 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A440, &unk_1E65FA710);
          v1071(&v1066[*(v1074 + 48)], v1072, v1073);
          v1075 = *(v1070 + 8);
          v1075(v1067, v1073);
          sub_1E5DFE50C(v1068, &unk_1ED0776D0, &qword_1E65F9650);
          v1075(v1072, v1073);
          sub_1E5DFE50C(v1069, &unk_1ED0776D0, &qword_1E65F9650);
          v1076 = v1844;
          v1077 = (v1844 + *(v1751 + 36));
          v1078 = v1843;
          *v1077 = sub_1E626FECC;
          v1077[1] = v1078;
          v1079 = type metadata accessor for BarButtonItem();
          v1077[2] = 0;
          v1077[3] = 0;
          v1080 = objc_allocWithZone(v1079);

          v1081 = sub_1E625BAB8(v1820, v1076, &qword_1ED0770B8, &unk_1E65FA400, sub_1E627468C);

          (*(v1854 + 1))(v1852, v1853);
          sub_1E5DFD1CC(v1786, v1750, &qword_1ED0770C0, &unk_1E65FA410);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A60, &qword_1E65F0870);
          v1082 = swift_allocObject();
          *(v1082 + 16) = xmmword_1E65EA660;
          *(v1082 + 32) = v1081;
          v1083 = v1081;
          v1084 = sub_1E65E4B48();
          *&v1863 = v1083;
          if (v1084)
          {
            v1085 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
            v1086 = 0;
          }

          else
          {
            v1085 = [objc_opt_self() blackColor];
            v1086 = 3;
          }

          v1515 = v1864;
          v1516 = *v1864;
          v1517 = *(v1861 + 32);
          v1518 = swift_allocObject();
          v1864 = *(v1515 + v1517);
          *(v1518 + 16) = v1864;
          if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
          {

            swift_unknownObjectRetain();
            sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
            v1519 = v1569;
          }

          else
          {

            swift_unknownObjectRetain();
            v1519 = MEMORY[0x1E69E7CD0];
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A80, &qword_1E65F9790);
          v1520 = v1858;
          (*(v1859 + 13))(v1858, *MEMORY[0x1E699CE18], v1857);
          *(&v1596 + 1) = sub_1E6275B5C;
          *&v1596 = v1516;
          v1521 = v1750;
          v373 = sub_1E630B390(v1750, v1519, v1082, v1520, 0, 0, v1085, v1086, 1, 0, v1596, v1518);

          v374 = &qword_1ED0770C0;
          v375 = &unk_1E65FA410;
          sub_1E5DFE50C(v1521, &qword_1ED0770C0, &unk_1E65FA410);

          swift_unknownObjectRelease();
          v1418 = v1786;
          goto LABEL_236;
        }

        goto LABEL_292;
      }

      if (v362 != 3)
      {
LABEL_337:
        *&aBlock = 0;
        *(&aBlock + 1) = 0xE000000000000000;
        sub_1E65E68A8();
        MEMORY[0x1E694D7C0](0xD000000000000026, 0x80000001E6615040);
        LOBYTE(v1867) = 2;
        sub_1E65E69B8();
        goto LABEL_330;
      }

      v1446 = v1864;
      v1447 = v1860;
      sub_1E626F020(v1864, v1860, type metadata accessor for AppComposer);
      sub_1E5DF650C(v1875, &aBlock);
      v1448 = (*(v1855 + 80) + 16) & ~*(v1855 + 80);
      v1449 = &v1856[v1448 + 7] & 0xFFFFFFFFFFFFFFF8;
      v1450 = swift_allocObject();
      sub_1E5E1E4C0(v1447, v1450 + v1448, type metadata accessor for AppComposer);
      v1451 = (v1450 + v1449);
      *v1451 = v1030;
      v1451[1] = v1031;
      sub_1E5DF599C(&aBlock, v1450 + ((v1449 + 23) & 0xFFFFFFFFFFFFFFF8));
      v1452 = sub_1E65E4438();
      v1453 = *v1446;
      v1454 = *(v1861 + 32);
      v1455 = swift_allocObject();
      v1864 = *(v1446 + v1454);
      *(v1455 + 16) = v1864;
      if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
      {

        swift_unknownObjectRetain();
        sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
        v1456 = v1578;
      }

      else
      {

        swift_unknownObjectRetain();
        v1456 = MEMORY[0x1E69E7CD0];
      }

      v1457 = v1858;
      (*(v1859 + 13))(v1858, *MEMORY[0x1E699CE18], v1857);
      objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077118, &qword_1E65F96B0));

      v1406 = sub_1E6275404(sub_1E626FD20, v1450, v1452, v1456, MEMORY[0x1E69E7CC0], v1457, 0, 0, 0, 0, 0, 0, 0, v1453, sub_1E6275B5C, v1455, &qword_1ED077308, &qword_1E65F9920, &unk_1F5FB6EF0, sub_1E6275B70, sub_1E6275B6C);

      v1407 = v1831;
      if (!v1831)
      {
        goto LABEL_220;
      }

      v1458 = v1831;
      v1459 = v1406;
      if (![v1458 isViewLoaded])
      {
        goto LABEL_221;
      }

      v1410 = [v1458 view];
      if (!v1410)
      {
LABEL_325:
        __break(1u);
        goto LABEL_326;
      }

      goto LABEL_219;
    case 0x10u:
      v514 = *v358;
      v515 = *(v358 + 1);
      sub_1E65D76E8();
      sub_1E65D76E8();
      sub_1E65D76E8();
      v516 = v514;
      v517 = v1864;
      LODWORD(v1862) = v362;
      v518 = v1864;
      sub_1E632331C(v514, v515, &aBlock);
      v1845 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DE0, &qword_1E65F84B0);
      v1839 = swift_allocBox();
      v519 = *v517;
      swift_getKeyPath();
      v520 = v1671;
      sub_1E65E4EC8();

      *&v1867 = v514;
      v1849 = v514;
      *(&v1867 + 1) = v515;
      v521 = v1673;
      sub_1E65E4D78();
      (*(v1672 + 8))(v520, v521);
      v1826 = v519;
      *&v1867 = sub_1E65E4ED8();
      v1851 = type metadata accessor for AppComposer;
      v522 = v1860;
      sub_1E626F020(v518, v1860, type metadata accessor for AppComposer);
      v523 = *(v1855 + 80);
      v1838 = &v1856[(v523 + 16) & ~v523];
      v524 = ((v523 + 16) & ~v523);
      v1848 = v524;
      v1856 = (v523 | 7);
      v525 = (v1838 + 7) & 0xFFFFFFFFFFFFFFF8;
      v1837 = (v525 + 16);
      v526 = swift_allocObject();
      v1855 = type metadata accessor for AppComposer;
      sub_1E5E1E4C0(v522, v524 + v526, type metadata accessor for AppComposer);
      v527 = (v526 + v525);
      *v527 = v516;
      v527[1] = v515;
      v1850 = v515;
      v528 = swift_allocObject();
      *(v528 + 16) = sub_1E626F228;
      *(v528 + 24) = v526;
      sub_1E65E3BB8();

      v529 = v1674;
      sub_1E65E3BD8();

      sub_1E5FED46C(&unk_1ED077940, &qword_1ED0770E8, &unk_1E65FA4D0);

      v530 = v1677;
      v531 = v1678;
      sub_1E65E3BE8();

      (*(v1675 + 8))(v529, v531);
      sub_1E5FED46C(&qword_1ED077138, &unk_1ED0777B0, &qword_1E65F9678);

      v532 = v1676;
      v533 = v1682;
      sub_1E65E3BD8();

      (*(v1680 + 8))(v530, v533);
      sub_1E5FED46C(&unk_1ED077950, &qword_1ED0770F0, &unk_1E65FA4E0);
      v534 = v1681;
      v1834 = sub_1E65E3BC8();
      (*(v1679 + 8))(v532, v534);
      v535 = v1864;
      v536 = v1860;
      sub_1E626F020(v1864, v1860, v1851);
      sub_1E5DF650C(v1875, &v1867);
      v1845 = aBlock;
      v1844 = *(&v1871 + 1);
      v1842 = *(&v1872 + 1);
      v1840 = *(&v1873 + 1);
      v1835 = *(&v1874[0] + 1);
      v537 = (v525 + 47) & 0xFFFFFFFFFFFFFFF8;
      v538 = swift_allocObject();
      v539 = v1848;
      sub_1E5E1E4C0(v536, v1848 + v538, v1855);
      sub_1E5DF599C(&v1867, &v538[v525]);
      v1831 = v538;
      v540 = &v538[v537];
      v541 = v1849;
      v542 = v1850;
      *v540 = v1849;
      v540[1] = v542;
      v543 = &v538[(v537 + 23) & 0xFFFFFFFFFFFFFFF8];
      v544 = v1874[0];
      *(v543 + 3) = v1873;
      *(v543 + 4) = v544;
      v545 = v1872;
      *(v543 + 1) = v1871;
      *(v543 + 2) = v545;
      *v543 = aBlock;
      v546 = v535;
      v547 = v1846;
      sub_1E626F020(v546, v1846, v1851);
      sub_1E5DF650C(v1875, v1866);
      v1836 = v525;
      v548 = (v525 + 23) & 0xFFFFFFFFFFFFFFF8;
      v549 = swift_allocObject();
      sub_1E5E1E4C0(v547, v539 + v549, v1855);
      v550 = (v549 + v525);
      *v550 = v541;
      v550[1] = v542;
      v1827 = v549;
      sub_1E5DF599C(v1866, v549 + v548);
      v551 = (v549 + ((v548 + 47) & 0xFFFFFFFFFFFFFFF8));
      v552 = v1873;
      v551[2] = v1872;
      v551[3] = v552;
      v551[4] = v1874[0];
      v553 = v1871;
      *v551 = aBlock;
      v551[1] = v553;
      v554 = v1847;
      sub_1E626F020(v1864, v1847, v1851);
      v555 = v1854;
      v556 = v1852;
      v557 = v1853;
      (*(v1854 + 2))(v1852, v1843, v1853);
      sub_1E5DF650C(v1875, v1865);
      v558 = &v1837[*(v555 + 80)] & ~*(v555 + 80);
      v559 = (v315 + v558 + 7) & 0xFFFFFFFFFFFFFFF8;
      v560 = swift_allocObject();
      v561 = v1848;
      v562 = v554;
      v563 = v1855;
      sub_1E5E1E4C0(v562, v1848 + v560, v1855);
      v564 = v560;
      v565 = (v1836 + v560);
      v566 = v1849;
      v567 = v1850;
      *v565 = v1849;
      v565[1] = v567;
      v568 = *(v555 + 4);
      v569 = v564 + v558;
      v570 = v564;
      v1846 = v564;
      v568(v569, v556, v557);
      sub_1E5DF599C(v1865, v570 + v559);
      v571 = (v570 + ((v559 + 47) & 0xFFFFFFFFFFFFFFF8));
      v572 = v1873;
      v571[2] = v1872;
      v571[3] = v572;
      v571[4] = v1874[0];
      v573 = v1871;
      *v571 = aBlock;
      v571[1] = v573;
      v574 = v1864;
      v575 = v1828;
      v576 = v1851;
      sub_1E626F020(v1864, v1828, v1851);
      v577 = swift_allocObject();
      v578 = v561;
      v579 = v561 + v577;
      v580 = v577;
      v1852 = v577;
      v581 = v563;
      sub_1E5E1E4C0(v575, v579, v563);
      v582 = (v1836 + v580);
      v583 = v1850;
      *v582 = v566;
      v582[1] = v583;
      v584 = v1829;
      sub_1E626F020(v574, v1829, v576);
      v585 = swift_allocObject();
      sub_1E5E1E4C0(v584, v578 + v585, v581);
      swift_bridgeObjectRetain_n();
      swift_unknownObjectRetain_n();
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077870, &unk_1E65FA560);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074380, &qword_1E65F0970);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077960, &unk_1E65FA670);
      sub_1E65E3368();
      sub_1E5FEB2FC();
      sub_1E5FED46C(&qword_1ED0743B0, &qword_1ED074380, &qword_1E65F0970);
      sub_1E626F664();
      sub_1E6275330(&qword_1ED077178, MEMORY[0x1E699EBD8]);
      v586 = v1712;
      v587 = v1864;
      sub_1E65E3098();
      v588 = sub_1E5FED46C(&unk_1ED0779F0, &unk_1ED077790, &qword_1E65F9668);
      v589 = v1718;
      v590 = v1717;
      sub_1E630FCD8(&aBlock, v1717, v588, v1718);
      (*(v1715 + 8))(v586, v590);
      v591 = v1860;
      sub_1E626F020(v587, v1860, v1851);
      v592 = swift_allocObject();
      sub_1E5E1E4C0(v591, v1848 + v592, v1855);
      sub_1E626F9E0();
      v593 = v1724;
      sub_1E6259D5C(sub_1E626CF38, v592, v1719);

      sub_1E5DFE50C(v589, &qword_1ED0770E0, &unk_1E65FA4C0);
      *&v1867 = v1834;
      v594 = swift_allocObject();
      v595 = v1873;
      v594[3] = v1872;
      v594[4] = v595;
      v594[5] = v1874[0];
      v596 = v1871;
      v594[1] = aBlock;
      v594[2] = v596;
      v597 = swift_allocObject();
      *(v597 + 16) = sub_1E626FADC;
      *(v597 + 24) = v594;
      swift_unknownObjectRetain();

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A00, &qword_1E65F9738);
      sub_1E626FB0C();
      sub_1E5FED46C(&qword_1ED077190, &unk_1ED077A00, &qword_1E65F9738);
      v598 = v1713;
      sub_1E65E4958();

      sub_1E5DFE50C(v593, &unk_1ED0777A0, &qword_1E65F9670);
      v599 = v1833;

      v600 = sub_1E5FED46C(&unk_1ED077A10, &qword_1ED0770F8, &unk_1E65FA4F0);
      v601 = v1714;
      v602 = v1721;
      sub_1E5FEE4C8(v598);
      v603 = v598;
      v604 = v1849;
      sub_1E5DFE50C(v603, &qword_1ED0770F8, &unk_1E65FA4F0);
      v605 = v1716;
      sub_1E5FEE4C8(v601);
      sub_1E5DFE50C(v601, &qword_1ED0770F8, &unk_1E65FA4F0);

      v606 = v1784;
      v607 = v602;
      v608 = v1832;
      sub_1E6012F9C(v607, v600);
      v379 = v1850;
      sub_1E5DFE50C(v605, &qword_1ED0770F8, &unk_1E65FA4F0);
      sub_1E5DFD1CC(v606, v1783, &unk_1ED0777D0, &qword_1E65F9680);
      v609 = v1863;
      v381 = v1841;
      v610 = v1830;
      v1860 = sub_1E62F1C0C(v604, v379, v1843, v608, v599, v1830, &aBlock, v587, v1841, v1863);
      if (v1862 >= 2)
      {
        if (v1862 != 3)
        {
          goto LABEL_330;
        }

        v614 = MEMORY[0x1E69E7CC0];
        v615 = v1854;
LABEL_168:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077198, &unk_1E65FA6B0);
        sub_1E65DC308();
        v1355 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
        v1356 = *(v1861 + 32);
        v1357 = swift_allocObject();
        v1864 = *(v587 + v1356);
        *(v1357 + 16) = v1864;
        v1358 = v1858;
        (*(v1859 + 13))(v1858, *MEMORY[0x1E699CE18], v1857);
        v1359 = v1826;

        swift_unknownObjectRetain();
        *(&v1592 + 1) = sub_1E6275B5C;
        *&v1592 = v1359;
        v1360 = v1783;
        v373 = sub_1E630B390(v1783, v1860, v614, v1358, v1355, 0, 0, 0, 1, 0, v1592, v1357);

        sub_1E5DFE50C(v1360, &unk_1ED0777D0, &qword_1E65F9680);
        v1361 = sub_1E6307A64();
        [v1361 setLargeTitleDisplayMode_];

        swift_unknownObjectRelease();

        sub_1E5DFE50C(v1784, &unk_1ED0777D0, &qword_1E65F9680);
        v1362 = *(v615 + 1);
        v1363 = v1853;
        v1362(v1833, v1853);
        v1362(v1832, v1363);
        v1362(v1843, v1363);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A20, &qword_1E65F9740);
        v611 = swift_allocObject();
        v611[4] = sub_1E62F3D80(v604, v379, v608, v610, &aBlock, v587, v381, v609);
        v376 = (v611 + 4);
        v611[5] = [objc_opt_self() flexibleSpaceItem];
        v612 = sub_1E62E68EC(v604, v379, v599, &aBlock);

        v613 = 0;
        v611[6] = v612;
        v614 = MEMORY[0x1E69E7CC0];
        *&v1867 = MEMORY[0x1E69E7CC0];
        v378 = 3;
        v615 = v1854;
LABEL_27:
        if (v613 <= 3)
        {
          v616 = 3;
        }

        else
        {
          v616 = v613;
        }

        while (1)
        {
          if (v613 == 3)
          {
            swift_setDeallocating();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0771A0, &unk_1E65FA6C0);
            swift_arrayDestroy();
            swift_deallocClassInstance();
            goto LABEL_168;
          }

          if (v616 == v613)
          {
            break;
          }

          v617 = v611[v613++ + 4];
          if (v617)
          {
            v381 = v617;
            MEMORY[0x1E694D8F0]();
            if (*((v1867 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v1867 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v618 = *((v1867 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_1E65E5F68();
              v615 = v1854;
            }

            sub_1E65E5FA8();
            v614 = v1867;
            goto LABEL_27;
          }
        }

        __break(1u);
LABEL_271:
        if (sub_1E65E67C8())
        {

          swift_unknownObjectRetain();
          sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
          v382 = v1558;
        }

        else
        {
LABEL_7:

          swift_unknownObjectRetain();
          v382 = MEMORY[0x1E69E7CD0];
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AD0, &unk_1E65FA7A0);
        v383 = v1858;
        (*(v1859 + 13))(v1858, *MEMORY[0x1E699CE18], v1857);
        *(&v1583 + 1) = sub_1E6275B5C;
        *&v1583 = v379;
        v373 = sub_1E630B390(v378, v382, MEMORY[0x1E69E7CC0], v383, 0, 0, 0, 0, 0, 0, v1583, v381);

        v384 = &unk_1ED077800;
        v385 = &qword_1E65F9698;
LABEL_123:
        sub_1E5DFE50C(v378, v384, v385);
        v1224 = sub_1E6307A64();
        [v1224 setLargeTitleDisplayMode_];

        v398 = v376;
LABEL_124:
        sub_1E5DFE50C(v398, v384, v385);
      }

LABEL_265:
      __swift_destroy_boxed_opaque_existential_1(v1875);
      return v373;
    case 0x11u:
      v1105 = *(v358 + 1);

      sub_1E65E5BA8();
      type metadata accessor for LocalizationBundle();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v1107 = [objc_opt_self() bundleForClass_];
      v1108 = v1864;
      v1109 = *v1864;
      swift_getKeyPath();
      sub_1E65E4EC8();

      *&aBlock = sub_1E65E5D48();
      *(&aBlock + 1) = v1110;
      sub_1E5F9AEA8();
      v1111 = v1808;
      sub_1E65E41C8();
      v1112 = v1685;
      v1113 = v1777;
      (*(v1834 + 2))(v1685, v1111, v1777);
      v1114 = *(v1861 + 32);
      v1115 = swift_allocObject();
      v1864 = *(v1108 + v1114);
      *(v1115 + 16) = v1864;
      if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
      {

        swift_unknownObjectRetain();
        sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
        v1116 = v1567;
      }

      else
      {

        swift_unknownObjectRetain();
        v1116 = MEMORY[0x1E69E7CD0];
      }

      v1117 = v1850;
      v1118 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720E0, &unk_1E65EA2A0) + 48);
      v1119 = v1858;
      (*(v1859 + 13))(v1858, *MEMORY[0x1E699CE18], v1857);
      v1120 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077920, &qword_1E65FA640));
      v373 = sub_1E626DF90(v1112, v1116, MEMORY[0x1E69E7CC0], v1119, 0, 0, 0, 0, 0, 0, 0, v1109, sub_1E6275B5C, v1115);

      (*(v1834 + 1))(v1808, v1113);
      (*(v1117 + 8))(&v358[v1118], v1851);
      goto LABEL_265;
    case 0x12u:
      v785 = *v358;
      v786 = *(v358 + 1);
      v787 = v358[16];
      v788 = sub_1E65DAE38();
      if (v788 == sub_1E65DAE38())
      {
        v789 = 30;
      }

      else
      {
        v789 = 24;
      }

      v790 = v1860;
      sub_1E626F020(v1864, v1860, type metadata accessor for AppComposer);
      v791 = (*(v1855 + 80) + 33) & ~*(v1855 + 80);
      v792 = swift_allocObject();
      *(v792 + 16) = v785;
      *(v792 + 24) = v786;
      *(v792 + 32) = v787;
      sub_1E5E1E4C0(v790, v792 + v791, type metadata accessor for AppComposer);
      objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077130, &qword_1E65F96C8));
      sub_1E626F21C();
      v373 = sub_1E625E354(v789, &unk_1E65FA600, v792, 0, 0);
      [v373 setModalPresentationStyle_];
      sub_1E5F94E14();
      goto LABEL_265;
    case 0x14u:
      v728 = *(v358 + 1);
      v1858 = *v358;
      v1857 = v728;
      v729 = *(v358 + 3);
      v1862 = *(v358 + 2);
      *&v1861 = v729;
      v1859 = *(v358 + 4);
      v730 = *(v358 + 6);
      v731 = *(v358 + 7);
      if (v362 > 1)
      {
        if (v362 != 3)
        {
          goto LABEL_330;
        }

        v732 = 24;
      }

      else if (v362)
      {
        v732 = 30;
      }

      else
      {
        v732 = 24;
        if (v358[40] < 2u)
        {
          v732 = 2;
        }
      }

      *&v1863 = v732;
      v1364 = v1856;
      v1365 = v1860;
      sub_1E626F020(v1864, v1860, type metadata accessor for AppComposer);
      v1366 = (*(v1855 + 80) + 16) & ~*(v1855 + 80);
      v1367 = &v1364[v1366 + 7] & 0xFFFFFFFFFFFFFFF8;
      v1368 = (v1367 + 23) & 0xFFFFFFFFFFFFFFF8;
      v1369 = (v1368 + 23) & 0xFFFFFFFFFFFFFFF8;
      v1370 = (v1369 + 15) & 0xFFFFFFFFFFFFFFF8;
      v1371 = swift_allocObject();
      sub_1E5E1E4C0(v1365, v1371 + v1366, type metadata accessor for AppComposer);
      v1372 = (v1371 + v1367);
      v1373 = v1857;
      *v1372 = v1858;
      v1372[1] = v1373;
      v1374 = (v1371 + v1368);
      v1375 = v1861;
      *v1374 = v1862;
      v1374[1] = v1375;
      *(v1371 + v1369) = v1859;
      *(v1371 + v1370) = v730;
      *(v1371 + ((v1370 + 15) & 0xFFFFFFFFFFFFFFF8)) = v731;
      objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077910, &qword_1E65F96C0));
      v1376 = v731;
      v373 = sub_1E625E354(v1863, &unk_1E65FA5F0, v1371, 0, 0);
      [v373 setModalPresentationStyle_];

      goto LABEL_265;
    case 0x15u:
      v1011 = *v358;
      v1012 = *(v358 + 1);
      v1013 = *(v358 + 2);
      v1014 = *(v358 + 3);
      v1015 = *(v358 + 4);
      v1016 = v358[40];
      v1017 = *(v358 + 6);
      v1018 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077900, &unk_1E65EA7E0);
      sub_1E5FAB460(&v358[*(v1018 + 112)], v1838, &unk_1ED077780, &unk_1E66097F0);
      v1862 = v1013;
      *&v1861 = v1014;
      v1859 = v1015;
      v1858 = v1011;
      v1857 = v1012;
      if (v362 > 1)
      {
        v1019 = v1864;
        v1020 = v1860;
        if (v362 != 3)
        {
          goto LABEL_330;
        }

        v1021 = 24;
      }

      else
      {
        v1019 = v1864;
        v1020 = v1860;
        if (v362)
        {
          v1021 = 30;
        }

        else
        {
          v1021 = 24;
          if (v1016 < 2)
          {
            v1021 = 2;
          }
        }
      }

      *&v1863 = v1021;
      sub_1E626F020(v1019, v1020, type metadata accessor for AppComposer);
      v1433 = v1686;
      sub_1E5DFD1CC(v1838, v1686, &unk_1ED077780, &unk_1E66097F0);
      v1434 = (*(v1855 + 80) + 16) & ~*(v1855 + 80);
      v1435 = &v1856[v1434 + 7] & 0xFFFFFFFFFFFFFFF8;
      v1436 = (v1435 + 23) & 0xFFFFFFFFFFFFFFF8;
      v1437 = (v1436 + 23) & 0xFFFFFFFFFFFFFFF8;
      v1438 = (v1437 + 15) & 0xFFFFFFFFFFFFFFF8;
      v1439 = (*(v1683 + 80) + v1438 + 8) & ~*(v1683 + 80);
      v1440 = swift_allocObject();
      sub_1E5E1E4C0(v1020, v1440 + v1434, type metadata accessor for AppComposer);
      v1441 = (v1440 + v1435);
      v1442 = v1857;
      *v1441 = v1858;
      v1441[1] = v1442;
      v1443 = (v1440 + v1436);
      v1444 = v1861;
      *v1443 = v1862;
      v1443[1] = v1444;
      *(v1440 + v1437) = v1859;
      *(v1440 + v1438) = v1017;
      sub_1E5FAB460(v1433, v1440 + v1439, &unk_1ED077780, &unk_1E66097F0);
      v1445 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077080, qword_1E65F94F8));
      v373 = sub_1E625E354(v1863, &unk_1E65FA5E0, v1440, 0, 0);
      [v373 setModalPresentationStyle_];
      sub_1E5DFE50C(v1838, &unk_1ED077780, &unk_1E66097F0);
      goto LABEL_265;
    case 0x16u:
      v668 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720F0, &unk_1E65EA2B0);
      v669 = v668[12];
      v670 = &v358[v668[16]];
      v672 = *v670;
      v671 = *(v670 + 1);
      *&v1864 = v672;
      *&v1863 = v671;
      v673 = v361;
      v674 = v668[20];
      v675 = &v358[v668[24]];
      v677 = *v675;
      v676 = *(v675 + 1);
      v1862 = v677;
      *&v1861 = v676;
      v678 = &v358[v668[28]];
      v679 = v678[1];
      v1860 = *v678;
      v680 = v668[32];
      v681 = v668[36];
      v682 = *(v358 + 1);
      aBlock = *v358;
      v1871 = v682;
      *&v1872 = *(v358 + 4);
      v683 = v1850;
      v684 = v1840;
      (*(v1850 + 32))(v1840, &v358[v669], v1851);
      v685 = v1688;
      sub_1E5FAB460(&v358[v674], v1688, &qword_1ED076220, &unk_1E65FA4A0);
      v686 = &v358[v680];
      v687 = v1691;
      sub_1E5FAB460(v686, v1691, &unk_1ED077770, &unk_1E660C190);
      v688 = &v358[v681];
      v689 = v1695;
      sub_1E5FAB460(v688, v1695, &unk_1ED07B500, &qword_1E65F0EE0);
      v690 = v673 + *(type metadata accessor for AppEnvironment() + 88);
      v691 = PlayerService.makeStandardPlayerViewController.getter();
      v373 = v691(&aBlock, v684, v1864, v1863, v685, v1862, v1861, v1860, v679, v689, v687);

      sub_1E5DFE50C(v689, &unk_1ED07B500, &qword_1E65F0EE0);
      sub_1E5DFE50C(v687, &unk_1ED077770, &unk_1E660C190);
      sub_1E5DFE50C(v685, &qword_1ED076220, &unk_1E65FA4A0);
      (*(v683 + 8))(v1840, v1851);
      sub_1E6009FC0(&aBlock);
      goto LABEL_265;
    case 0x17u:
      v692 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0778F0, &unk_1E65EA7F0);
      v693 = v361;
      v694 = v692[12];
      v695 = &v358[v692[16]];
      v696 = *(v695 + 1);
      *&v1864 = *v695;
      v697 = v1692;
      v698 = v358[v692[20]];
      v699 = v1690;
      (*(v1692 + 32))(v1690, v358, v1809);
      v700 = v1696;
      v701 = &v358[v694];
      v702 = v693;
      v703 = v1694;
      v704 = v1698;
      (*(v1696 + 32))(v1694, v701, v1698);
      v705 = v702 + *(type metadata accessor for AppEnvironment() + 88);
      v706 = PlayerService.makeTipPlayerViewController.getter();
      v707 = v1864;
      v373 = v706(v699, v703, v1864, v696, v698);

      sub_1E61B73EC(v707, v696);
      (*(v700 + 8))(v703, v704);
      (*(v697 + 8))(v699, v1809);
      goto LABEL_265;
    case 0x19u:
      if (v362 < 2)
      {
        v847 = *v358;
        v848 = (v1864 + *(v1861 + 36));
        v849 = *v848;
        v850 = v848[1];
        sub_1E5DFD1CC(v1864 + *(v1861 + 40), &v1871 + 8, &unk_1ED074320, &unk_1E65EA730);
        sub_1E5DF650C(v1875, v1874);
        *&aBlock = v849;
        *(&aBlock + 1) = v850;
        LOBYTE(v1871) = v362;
        v851 = *(type metadata accessor for AppEnvironment() + 68);
        sub_1E5FA9D34(v849, v850);
        active = InteropService.makeActiveWorkoutPlanViewController.getter();
        v1868 = &type metadata for CatalogPageRoutingContextNavigator;
        v1869 = sub_1E61379FC();
        *&v1867 = swift_allocObject();
        sub_1E6137A50(&aBlock, v1867 + 16);
        v853 = active(v847, v849, v850, &v1867);
LABEL_117:
        v373 = v853;

        sub_1E6137AAC(&aBlock);
LABEL_118:
        __swift_destroy_boxed_opaque_existential_1(&v1867);
        goto LABEL_265;
      }

      v1395 = v1864;
      if (v362 != 3)
      {
        goto LABEL_330;
      }

      v1396 = v1860;
      sub_1E626F020(v1864, v1860, type metadata accessor for AppComposer);
      sub_1E5DF650C(v1875, &aBlock);
      v1397 = (*(v1855 + 80) + 16) & ~*(v1855 + 80);
      v1398 = &v1856[v1397 + 7] & 0xFFFFFFFFFFFFFFF8;
      v1399 = swift_allocObject();
      sub_1E5E1E4C0(v1396, v1399 + v1397, type metadata accessor for AppComposer);
      sub_1E5DF599C(&aBlock, v1399 + v1398);
      v1400 = sub_1E65E4438();
      v1401 = *v1395;
      v1402 = *(v1861 + 32);
      v1403 = swift_allocObject();
      v1864 = *(v1395 + v1402);
      *(v1403 + 16) = v1864;
      if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
      {

        swift_unknownObjectRetain();
        sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
        v1404 = v1576;
      }

      else
      {

        swift_unknownObjectRetain();
        v1404 = MEMORY[0x1E69E7CD0];
      }

      v1405 = v1858;
      (*(v1859 + 13))(v1858, *MEMORY[0x1E699CE18], v1857);
      objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077118, &qword_1E65F96B0));

      v1406 = sub_1E6275404(sub_1E626F164, v1399, v1400, v1404, MEMORY[0x1E69E7CC0], v1405, 0, 0, 0, 0, 0, 0, 0, v1401, sub_1E6275B5C, v1403, &qword_1ED077308, &qword_1E65F9920, &unk_1F5FB6EF0, sub_1E6275B70, sub_1E6275B6C);

      v1407 = v1831;
      if (!v1831)
      {
        goto LABEL_220;
      }

      v1408 = v1831;
      v1409 = v1406;
      if (![v1408 isViewLoaded])
      {
        goto LABEL_221;
      }

      v1410 = [v1408 view];
      if (!v1410)
      {
LABEL_323:
        __break(1u);
        goto LABEL_324;
      }

      goto LABEL_219;
    case 0x1Au:
      v408 = v1720;
      sub_1E5E1E4C0(v358, v1720, MEMORY[0x1E69CD768]);
      v996 = v1697;
      sub_1E626F020(v408, v1697, MEMORY[0x1E69CD768]);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 3)
      {
        if (EnumCaseMultiPayload > 1)
        {
          if (EnumCaseMultiPayload != 3)
          {
            goto LABEL_329;
          }

          v1538 = v361 + *(type metadata accessor for AppEnvironment() + 68);
          v1539 = InteropService.makeNotificationViewController.getter();
          v373 = v1539();
        }

        else
        {
          if (EnumCaseMultiPayload)
          {
            sub_1E6272C28(v408, MEMORY[0x1E69CD768]);
            v373 = *v996;
            goto LABEL_265;
          }

          v1270 = v1850;
          v1271 = v1840;
          v1272 = v1851;
          (*(v1850 + 32))(v1840, v996, v1851);
          v1273 = v1612;
          (*(v1270 + 16))(v1612, v1271, v1272);
          (*(v1270 + 56))(v1273, 0, 1, v1272);
          v1274 = v361 + *(type metadata accessor for AppEnvironment() + 68);
          v1275 = InteropService.makeAccountPageViewController.getter();
          v373 = v1275(v1273);

          sub_1E5DFE50C(v1273, &qword_1ED072340, &qword_1E65EA410);
          (*(v1270 + 8))(v1271, v1272);
        }

        goto LABEL_256;
      }

      if (EnumCaseMultiPayload > 5)
      {
        if (EnumCaseMultiPayload != 6)
        {
          if (EnumCaseMultiPayload != 7)
          {
            goto LABEL_329;
          }

          v1544 = sub_1E65DAE38();
          if (v1544 == sub_1E65DAE38())
          {
            v1545 = 30;
          }

          else
          {
            v1545 = 24;
          }

          v1546 = v1860;
          sub_1E626F020(v1864, v1860, type metadata accessor for AppComposer);
          v1547 = (*(v1855 + 80) + 16) & ~*(v1855 + 80);
          v1548 = swift_allocObject();
          sub_1E5E1E4C0(v1546, v1548 + v1547, type metadata accessor for AppComposer);
          v1549 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077128, &unk_1E65FA5D0));
          v373 = sub_1E625E354(v1545, &unk_1E65F96B8, v1548, 0, 0);
          goto LABEL_256;
        }

        v1522 = MEMORY[0x1E697BAC8];
      }

      else
      {
        if (EnumCaseMultiPayload == 4)
        {
          v998 = v361 + *(type metadata accessor for AppEnvironment() + 68);
          v999 = InteropService.makePrivacyLinkListViewController.getter();
          sub_1E5DF650C(v1875, &aBlock);
          v1000 = swift_allocObject();
          sub_1E5DF599C(&aBlock, v1000 + 16);
          *(v1000 + 56) = v362 < 2;
          if (v362 >= 2)
          {
            v1001 = -64;
          }

          else
          {
            v1001 = 0;
          }

          *(v1000 + 64) = v1001;
          sub_1E5FA9D20((v362 < 2), v1001);
          v373 = v999(sub_1E626F154, v1000);

          sub_1E5F94E00((v362 < 2), v1001);
          goto LABEL_256;
        }

        v1522 = MEMORY[0x1E697BAD0];
      }

      v1540 = *v1522;
      sub_1E65E5C78();
      v1541 = v1612;
      sub_1E65D74C8();

      v1542 = v361 + *(type metadata accessor for AppEnvironment() + 68);
      v1543 = InteropService.makeAccountPageViewController.getter();
      v373 = v1543(v1541);

      sub_1E5DFE50C(v1541, &qword_1ED072340, &qword_1E65EA410);
LABEL_256:
      v417 = MEMORY[0x1E69CD768];
LABEL_257:
      sub_1E6272C28(v408, v417);
      goto LABEL_265;
    case 0x1Bu:
      v408 = v1759;
      sub_1E5E1E4C0(v358, v1759, type metadata accessor for PlaylistType);
      if (v362 < 2)
      {
        v409 = v1629;
        sub_1E626F020(v408, v1629, type metadata accessor for PlaylistType);
        v410 = swift_getEnumCaseMultiPayload();
        v411 = v1864;
        v412 = v1841;
        if (v410 == 1)
        {
          v414 = v1623;
          v413 = v1624;
          v415 = v409;
          v416 = v1625;
          (*(v1624 + 32))(v1623, v415, v1625);
          v373 = sub_1E621BAB4(v414, v1830, v411, v412, v1863);
          (*(v413 + 8))(v414, v416);
        }

        else
        {
          v373 = sub_1E621B934(*v409, v409[1], v1830, v1864, v1841, v1863);
        }

        v417 = type metadata accessor for PlaylistType;
        goto LABEL_257;
      }

      v1291 = v362 == 3;
      v1292 = v1864;
      v1293 = v1863;
      v1294 = v1841;
      if (!v1291)
      {
        goto LABEL_330;
      }

      v1295 = v1597;
      sub_1E626F020(v408, v1597, type metadata accessor for PlaylistType);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v1297 = v1623;
        v1296 = v1624;
        v1298 = v1295;
        v1299 = v1625;
        (*(v1624 + 32))(v1623, v1298, v1625);
        v1300 = sub_1E621BAB4(v1297, v1830, v1292, v1294, v1293);
        (*(v1296 + 8))(v1297, v1299);
      }

      else
      {
        v1300 = sub_1E621B934(*v1295, v1295[1], v1830, v1292, v1294, v1293);
      }

      v1523 = swift_allocObject();
      *(v1523 + 16) = v1300;
      v1524 = v1300;
      v1525 = sub_1E65E4438();
      v1526 = *v1292;
      v1527 = *(v1861 + 32);
      v1528 = swift_allocObject();
      v1864 = *(v1292 + v1527);
      *(v1528 + 16) = v1864;
      if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
      {

        swift_unknownObjectRetain();
        sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
        v1529 = v1574;
      }

      else
      {

        swift_unknownObjectRetain();
        v1529 = MEMORY[0x1E69E7CD0];
      }

      v1530 = v1858;
      (*(v1859 + 13))(v1858, *MEMORY[0x1E699CE18], v1857);
      objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077118, &qword_1E65F96B0));

      v1531 = sub_1E6275404(sub_1E626CB8C, v1523, v1525, v1529, MEMORY[0x1E69E7CC0], v1530, 0, 0, 0, 0, 0, 0, 0, v1526, sub_1E6275B5C, v1528, &qword_1ED077308, &qword_1E65F9920, &unk_1F5FB6EF0, sub_1E6275B70, sub_1E6275B6C);

      v1532 = v1831;
      if (v1831)
      {
        v1533 = v1831;
        v1534 = v1531;
        if ([v1533 isViewLoaded])
        {
          v1535 = [v1533 view];
          if (!v1535)
          {
LABEL_328:
            __break(1u);
LABEL_329:
            *&aBlock = 0;
            *(&aBlock + 1) = 0xE000000000000000;
            sub_1E65E68A8();
            MEMORY[0x1E694D7C0](0xD000000000000017, 0x80000001E6614EE0);
            sub_1E65E69B8();
            MEMORY[0x1E694D7C0](0xD000000000000015, 0x80000001E6614F00);
            while (1)
            {
LABEL_330:
              sub_1E65E69D8();
              __break(1u);
            }
          }

          v1536 = v1535;
          v1537 = [v1535 snapshotViewAfterScreenUpdates_];

LABEL_260:
          v1551 = objc_allocWithZone(type metadata accessor for BlurViewController());
          v373 = sub_1E630B7AC(v1531, v1537);

          sub_1E6272C28(v1759, type metadata accessor for PlaylistType);
          goto LABEL_265;
        }
      }

      else
      {
        v1550 = v1531;
      }

      v1537 = 0;
      goto LABEL_260;
    case 0x1Cu:
      v399 = v1854;
      v400 = v1852;
      v401 = v358;
      v402 = v1853;
      (*(v1854 + 4))(v1852, v401, v1853);
      v403 = (v1864 + *(v1861 + 36));
      v404 = *v403;
      v405 = v403[1];
      sub_1E5DFD1CC(v1864 + *(v1861 + 40), &v1871 + 8, &unk_1ED074320, &unk_1E65EA730);
      sub_1E5DF650C(v1875, v1874);
      *&aBlock = v404;
      *(&aBlock + 1) = v405;
      LOBYTE(v1871) = v362;
      v406 = *(type metadata accessor for AppEnvironment() + 68);
      sub_1E5FA9D34(v404, v405);
      v407 = InteropService.makeWorkoutPlanDetailViewController.getter();
      v1868 = &type metadata for CatalogPageRoutingContextNavigator;
      v1869 = sub_1E61379FC();
      *&v1867 = swift_allocObject();
      sub_1E6137A50(&aBlock, v1867 + 16);
      v373 = v407(v400, v404, v405, &v1867);

      sub_1E6137AAC(&aBlock);
      v399[1](v400, v402);
      goto LABEL_118;
    case 0x1Du:
      *&v1863 = v361;
      v1087 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077860, &unk_1E65EA800) + 48);
      v1088 = v362;
      v1089 = v1782;
      v1090 = *(v1782 + 32);
      v1090(v1818, v358, v1823);
      v1091 = v1779;
      v1092 = *(v1779 + 32);
      v1093 = &v358[v1087];
      v1094 = v1778;
      v1095 = v1780;
      v1092(v1778, v1093, v1780);
      if (v1088 >= 2)
      {
        v1862 = v1092;
        *&v1863 = v1090;
        v1460 = v1864;
        if (v1088 != 3)
        {
          goto LABEL_330;
        }

        v1461 = v1860;
        sub_1E626F020(v1864, v1860, type metadata accessor for AppComposer);
        v1462 = v1782 + 16;
        (*(v1782 + 16))(v1649, v1818, v1823);
        v1463 = v1779 + 16;
        (*(v1779 + 16))(v1650, v1778, v1095);
        sub_1E5DF650C(v1875, &aBlock);
        v1464 = (*(v1855 + 80) + 16) & ~*(v1855 + 80);
        v1465 = &v1856[*(v1462 + 64) + v1464] & ~*(v1462 + 64);
        v1466 = (v1598 + *(v1463 + 64) + v1465) & ~*(v1463 + 64);
        v1467 = v1460;
        v1468 = (v1599 + v1466 + 7) & 0xFFFFFFFFFFFFFFF8;
        v1469 = swift_allocObject();
        sub_1E5E1E4C0(v1461, v1469 + v1464, type metadata accessor for AppComposer);
        (v1863)(v1469 + v1465, v1649, v1823);
        (v1862)(v1469 + v1466, v1650, v1780);
        sub_1E5DF599C(&aBlock, v1469 + v1468);
        v1470 = sub_1E65E4438();
        v1471 = *v1467;
        v1472 = *(v1861 + 32);
        v1473 = swift_allocObject();
        v1864 = *(v1467 + v1472);
        *(v1473 + 16) = v1864;
        if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
        {

          swift_unknownObjectRetain();
          sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
          v1474 = v1579;
        }

        else
        {

          swift_unknownObjectRetain();
          v1474 = MEMORY[0x1E69E7CD0];
        }

        v1475 = v1831;
        v1476 = v1858;
        (*(v1859 + 13))(v1858, *MEMORY[0x1E699CE18], v1857);
        objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077118, &qword_1E65F96B0));

        v1477 = sub_1E6275404(sub_1E626C930, v1469, v1470, v1474, MEMORY[0x1E69E7CC0], v1476, 0, 0, 0, 0, 0, 0, 0, v1471, sub_1E6275B5C, v1473, &qword_1ED077308, &qword_1E65F9920, &unk_1F5FB6EF0, sub_1E6275B70, sub_1E6275B6C);

        if (v1475)
        {
          v1478 = v1475;
          v1479 = [v1478 isViewLoaded];
          v1480 = v1782;
          v1481 = v1818;
          if (v1479)
          {
            v1482 = [v1478 view];
            if (!v1482)
            {
LABEL_326:
              __break(1u);
              goto LABEL_327;
            }

            v1483 = v1482;
            v1484 = [v1482 snapshotViewAfterScreenUpdates_];
          }

          else
          {
            v1484 = 0;
          }

          v1555 = v1779;
          v1556 = v1823;
        }

        else
        {
          v1484 = 0;
          v1555 = v1779;
          v1556 = v1823;
          v1480 = v1782;
          v1481 = v1818;
        }

        v1557 = objc_allocWithZone(type metadata accessor for BlurViewController());
        v373 = sub_1E630B7AC(v1477, v1484);

        (*(v1555 + 8))(v1778, v1780);
        (*(v1480 + 8))(v1481, v1556);
        goto LABEL_265;
      }

      v1096 = (v1864 + *(v1861 + 36));
      v1097 = v1094;
      v1098 = *v1096;
      v1099 = v1096[1];
      sub_1E5DFD1CC(v1864 + *(v1861 + 40), &v1871 + 8, &unk_1ED074320, &unk_1E65EA730);
      sub_1E5DF650C(v1875, v1874);
      *&aBlock = v1098;
      *(&aBlock + 1) = v1099;
      LOBYTE(v1871) = v1088;
      v1100 = *(type metadata accessor for AppEnvironment() + 68);
      sub_1E5FA9D34(v1098, v1099);
      v1101 = InteropService.makeWorkoutPlanAlternativeViewController.getter();
      v1868 = &type metadata for CatalogPageRoutingContextNavigator;
      v1869 = sub_1E61379FC();
      *&v1867 = swift_allocObject();
      sub_1E6137A50(&aBlock, v1867 + 16);
      v1102 = v1818;
      v1103 = v1101(v1818, v1097, v1098, v1099, &v1867);

      sub_1E6137AAC(&aBlock);
      v1104 = v1097;
      v373 = v1103;
      (*(v1091 + 8))(v1104, v1095);
      (*(v1089 + 8))(v1102, v1823);
      goto LABEL_118;
    case 0x1Eu:
      v1126 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072110, &unk_1E65EA2D0);
      *&v1863 = *&v358[*(v1126 + 48)];
      v1862 = *&v358[*(v1126 + 64)];
      v1127 = v1725;
      v1128 = v1722;
      v1129 = v358;
      v1130 = v1727;
      (*(v1725 + 32))(v1722, v1129, v1727);
      v1131 = (v1864 + *(v1861 + 36));
      v1132 = *v1131;
      v1133 = v1131[1];
      sub_1E5DFD1CC(v1864 + *(v1861 + 40), &v1871 + 8, &unk_1ED074320, &unk_1E65EA730);
      sub_1E5DF650C(v1875, v1874);
      *&aBlock = v1132;
      *(&aBlock + 1) = v1133;
      LOBYTE(v1871) = v362;
      v1134 = *(type metadata accessor for AppEnvironment() + 68);
      sub_1E5FA9D34(v1132, v1133);
      v1135 = InteropService.makeWorkoutPlanPreferenceViewController.getter();
      v1868 = &type metadata for CatalogPageRoutingContextNavigator;
      v1869 = sub_1E61379FC();
      *&v1867 = swift_allocObject();
      sub_1E6137A50(&aBlock, v1867 + 16);
      v373 = v1135(v1132, v1133, v1128, v1863, v1862, &v1867);

      sub_1E6137AAC(&aBlock);
      (*(v1127 + 8))(v1128, v1130);
      goto LABEL_118;
    case 0x1Fu:
      *&v1863 = *&v358[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077850, &unk_1E65EA810) + 48)];
      v1002 = v1728;
      v1003 = v1726;
      v1004 = v358;
      v1005 = v1729;
      (*(v1728 + 32))(v1726, v1004, v1729);
      v1006 = (v1864 + *(v1861 + 36));
      v1007 = *v1006;
      v1008 = v1006[1];
      sub_1E5DFD1CC(v1864 + *(v1861 + 40), &v1871 + 8, &unk_1ED074320, &unk_1E65EA730);
      sub_1E5DF650C(v1875, v1874);
      *&aBlock = v1007;
      *(&aBlock + 1) = v1008;
      LOBYTE(v1871) = v362;
      v1009 = *(type metadata accessor for AppEnvironment() + 68);
      sub_1E5FA9D34(v1007, v1008);
      v1010 = InteropService.makeWorkoutPlanReviewViewController.getter();
      v1868 = &type metadata for CatalogPageRoutingContextNavigator;
      v1869 = sub_1E61379FC();
      *&v1867 = swift_allocObject();
      sub_1E6137A50(&aBlock, v1867 + 16);
      v373 = v1010(v1003, v1863, v1007, v1008, &v1867);

      sub_1E6137AAC(&aBlock);
      (*(v1002 + 8))(v1003, v1005);
      goto LABEL_118;
    case 0x20u:
      v1022 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072120, &qword_1E65EA2E0);
      *&v1863 = *&v358[*(v1022 + 48)];
      v1862 = *&v358[*(v1022 + 64)];
      v1023 = v1731;
      v1024 = v1730;
      (*(v1731 + 32))(v1730, v358, v1814);
      v1025 = (v1864 + *(v1861 + 36));
      v1026 = *v1025;
      v1027 = v1025[1];
      sub_1E5DFD1CC(v1864 + *(v1861 + 40), &v1871 + 8, &unk_1ED074320, &unk_1E65EA730);
      sub_1E5DF650C(v1875, v1874);
      *&aBlock = v1026;
      *(&aBlock + 1) = v1027;
      LOBYTE(v1871) = v362;
      v1028 = *(type metadata accessor for AppEnvironment() + 68);
      sub_1E5FA9D34(v1026, v1027);
      v1029 = InteropService.makeEditWorkoutPlanScheduleViewController.getter();
      v1868 = &type metadata for CatalogPageRoutingContextNavigator;
      v1869 = sub_1E61379FC();
      *&v1867 = swift_allocObject();
      sub_1E6137A50(&aBlock, v1867 + 16);
      v373 = v1029(v1024, v1862, v1863, v1026, v1027, &v1867);

      sub_1E6137AAC(&aBlock);
      (*(v1023 + 8))(v1024, v1814);
      goto LABEL_118;
    case 0x21u:
      v708 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077830, &qword_1E65F0F68);
      LODWORD(v1863) = v358[*(v708 + 48)];
      v709 = v358[*(v708 + 64)];
      v710 = v1733;
      v711 = v1732;
      (*(v1733 + 32))(v1732, v358, v1815);
      v712 = (v1864 + *(v1861 + 36));
      v713 = *v712;
      v714 = v712[1];
      sub_1E5DFD1CC(v1864 + *(v1861 + 40), &v1871 + 8, &unk_1ED074320, &unk_1E65EA730);
      sub_1E5DF650C(v1875, v1874);
      *&aBlock = v713;
      *(&aBlock + 1) = v714;
      LOBYTE(v1871) = v362;
      v715 = *(type metadata accessor for AppEnvironment() + 68);
      sub_1E5FA9D34(v713, v714);
      v716 = InteropService.makeWorkoutPlanSummaryViewController.getter();
      v1868 = &type metadata for CatalogPageRoutingContextNavigator;
      v1869 = sub_1E61379FC();
      *&v1867 = swift_allocObject();
      sub_1E6137A50(&aBlock, v1867 + 16);
      v373 = v716(v711, v1863, v709, &v1867, v713, v714);

      sub_1E6137AAC(&aBlock);
      (*(v710 + 8))(v711, v1815);
      goto LABEL_118;
    case 0x22u:
      v420 = v1864;
      v421 = v1860;
      sub_1E626F020(v1864, v1860, type metadata accessor for AppComposer);
      v422 = *(v1855 + 80);
      v423 = v1856;
      v1848 = &v1856[(v422 + 16) & ~v422];
      v1849 = (v422 + 16) & ~v422;
      *&v1863 = v422 | 7;
      v1844 = swift_allocObject();
      v1841 = type metadata accessor for AppComposer;
      sub_1E5E1E4C0(v421, v1844 + ((v422 + 16) & ~v422), type metadata accessor for AppComposer);
      sub_1E65E5148();
      LODWORD(v1862) = v362;
      v1855 = sub_1E65E5138();
      v424 = v1846;
      v1843 = type metadata accessor for AppComposer;
      sub_1E626F020(v420, v1846, type metadata accessor for AppComposer);
      v425 = &v423[(v422 + 32) & ~v422];
      v1840 = ((v422 + 32) & ~v422);
      v1839 = v425;
      v426 = swift_allocObject();
      v1851 = v426;
      v1838 = &unk_1E65F9820;
      v427 = v1844;
      *(v426 + 16) = &unk_1E65F9820;
      *(v426 + 24) = v427;
      sub_1E5E1E4C0(v424, v426 + ((v422 + 32) & ~v422), v1841);
      *(v426 + v425) = 0;
      v428 = v426 + (v425 & 0xFFFFFFFFFFFFFFF8);
      v1850 = sub_1E6172524;
      *(v428 + 8) = sub_1E6172524;
      *(v428 + 16) = 0;
      v429 = (v426 + (((v425 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8));
      v430 = MEMORY[0x1E69AB380];
      v431 = v1855;
      *v429 = v1855;
      v429[1] = v430;
      v432 = v1864;
      sub_1E626F020(v1864, v1847, type metadata accessor for AppComposer);
      v433 = &v1856[(v422 + 48) & ~v422];
      v1837 = ((v422 + 48) & ~v422);
      v434 = swift_allocObject();
      v435 = v1838;
      v436 = v1844;
      *(v434 + 16) = v1838;
      *(v434 + 24) = v436;
      *(v434 + 32) = v431;
      *(v434 + 40) = MEMORY[0x1E69AB380];
      v437 = v1841;
      sub_1E5E1E4C0(v1847, v434 + ((v422 + 48) & ~v422), v1841);
      *(v434 + v433) = 0;
      v438 = (v434 + (v433 & 0xFFFFFFFFFFFFFFF8));
      *(v438 + 1) = v1850;
      *(v438 + 2) = 0;
      v439 = v1828;
      sub_1E626F020(v432, v1828, v1843);
      v440 = (v433 + 7);
      v441 = v1855;
      v442 = v440 & 0xFFFFFFFFFFFFFFF8;
      v443 = swift_allocObject();
      *(v443 + 16) = v435;
      *(v443 + 24) = v436;
      *(v443 + 32) = v441;
      *(v443 + 40) = MEMORY[0x1E69AB380];
      v444 = v437;
      v445 = v443;
      sub_1E5E1E4C0(v439, &v1837[v443], v444);
      v446 = &v445[v442];
      *v446 = v1850;
      *(v446 + 1) = 0;
      v446[16] = 0;
      v447 = v1829;
      sub_1E626F020(v1864, v1829, v1843);
      v448 = swift_allocObject();
      v449 = v1844;
      *(v448 + 16) = v435;
      *(v448 + 24) = v449;
      sub_1E5E1E4C0(v447, v1840 + v448, v444);
      swift_retain_n();
      swift_retain_n();
      sub_1E65D76E8();
      v1846 = v434;
      v1856 = v445;
      v450 = v1849;
      v451 = v1848;
      v1850 = v448;
      v1847 = 0x80000001E6615070;
      if (v1862 >= 2)
      {
        if (v1862 != 3)
        {
          goto LABEL_330;
        }

        v1301 = v448;
        v1841 = type metadata accessor for AppComposer;
        v1302 = v1860;
        sub_1E626F020(v1864, v1860, type metadata accessor for AppComposer);
        sub_1E5DF650C(v1875, &aBlock);
        v1303 = ((v1848 + 7) & 0xFFFFFFFFFFFFFFF8);
        v1843 = v1303;
        v1304 = (v1303 + 47) & 0xFFFFFFFFFFFFFFF8;
        v1836 = v1304;
        v1305 = swift_allocObject();
        v1834 = type metadata accessor for AppComposer;
        sub_1E5E1E4C0(v1302, v1305 + v1849, type metadata accessor for AppComposer);
        sub_1E5DF599C(&aBlock, v1303 + v1305);
        v1844 = v1305;
        v1306 = (v1305 + v1304);
        v1307 = v1847;
        *v1306 = 0xD000000000000016;
        v1306[1] = v1307;
        v1308 = v1305 + ((v1304 + 23) & 0xFFFFFFFFFFFFFFF8);
        *v1308 = v1855;
        v1840 = &unk_1E65F9828;
        *(v1308 + 1) = MEMORY[0x1E69AB380];
        *(v1308 + 2) = &unk_1E65F9828;
        v1839 = &unk_1E65F9830;
        *(v1308 + 3) = v1851;
        *(v1308 + 4) = &unk_1E65F9830;
        v1838 = &unk_1E65F9838;
        *(v1308 + 5) = v1846;
        *(v1308 + 6) = &unk_1E65F9838;
        v1837 = &unk_1E65F9840;
        *(v1308 + 7) = v1856;
        *(v1308 + 8) = &unk_1E65F9840;
        *(v1308 + 9) = v1301;
        v1308[80] = 0;
        v1309 = v1864;
        v1310 = v1841;
        sub_1E626F020(v1864, v1302, v1841);
        v1847 = swift_allocObject();
        v1311 = v1849;
        sub_1E5E1E4C0(v1302, v1847 + v1849, type metadata accessor for AppComposer);
        sub_1E626F020(v1309, v1302, v1310);
        sub_1E5DF650C(v1875, &aBlock);
        v1312 = v1854;
        v1835 = *(v1854 + 2);
        v1313 = v1853;
        (v1835)(v1852, v1845, v1853);
        v1314 = v1836;
        v1315 = (v1836 + *(v1312 + 80) + 80) & ~*(v1312 + 80);
        v1316 = swift_allocObject();
        sub_1E5E1E4C0(v1302, v1316 + v1311, v1834);
        sub_1E5DF599C(&aBlock, v1843 + v1316);
        v1317 = (v1314 + v1316);
        v1841 = v1316;
        *v1317 = v1855;
        v1318 = v1840;
        v1317[1] = MEMORY[0x1E69AB380];
        v1317[2] = v1318;
        v1319 = v1839;
        v1317[3] = v1851;
        v1317[4] = v1319;
        v1320 = v1838;
        v1317[5] = v1846;
        v1317[6] = v1320;
        v1321 = v1837;
        v1317[7] = v1856;
        v1317[8] = v1321;
        v1317[9] = v1850;
        v1322 = v1852;
        v1312[4](v1316 + v1315, v1852, v1313);
        (v1835)(v1322, v1845, v1313);
        v1843 = type metadata accessor for ArtworkDescriptor();
        swift_retain_n();
        swift_retain_n();
        swift_retain_n();
        swift_retain_n();
        swift_retain_n();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077870, &unk_1E65FA560);
        v1840 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077B70, &unk_1E65FA820);
        v1839 = type metadata accessor for ItemMetrics();
        v1838 = type metadata accessor for SectionMetrics();
        type metadata accessor for ViewDescriptor();
        sub_1E6275330(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor);
        sub_1E5FEB2FC();
        sub_1E60728B0();
        sub_1E6275330(&qword_1EE2DB650, type metadata accessor for ItemMetrics);
        sub_1E5DF11E0();
        sub_1E6275330(&qword_1EE2DA950, type metadata accessor for SectionMetrics);
        sub_1E5DF1338();
        sub_1E6275330(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor);
        v1323 = v1602;
        sub_1E65E1EB8();
        v1324 = sub_1E65E2DA8();
        v1325 = 0;
        v1326 = 0;
        v1327 = 0;
        v1328 = 0;
        v1329 = 0;
        v1330 = 0;
        v1331 = 0;
        v1332 = 0;
        v1333 = 0;
        v1334 = 0;
        if (v1324)
        {
          v1333 = &unk_1E65F9840;
          v1331 = &unk_1E65F9838;
          v1329 = &unk_1E65F9830;
          v1327 = &unk_1E65F9828;
          v1326 = MEMORY[0x1E69AB380];
          v1325 = v1855;
          v1328 = v1851;
          v1330 = v1846;
          v1332 = v1856;
          v1334 = v1850;
        }

        *&aBlock = v1325;
        *(&aBlock + 1) = v1326;
        *&v1871 = v1327;
        *(&v1871 + 1) = v1328;
        *&v1872 = v1329;
        *(&v1872 + 1) = v1330;
        *&v1873 = v1331;
        *(&v1873 + 1) = v1332;
        *&v1874[0] = v1333;
        *(&v1874[0] + 1) = v1334;
        sub_1E5FED46C(&qword_1ED073E28, &qword_1ED073E20, &unk_1E65FA450);
        v1335 = v1606;
        v1336 = v1604;
        sub_1E630FFE8(&aBlock, v1604, v1606);
        (*(v1603 + 8))(v1323, v1336);
        v491 = v1864;
        v1337 = v1860;
        sub_1E626F020(v1864, v1860, type metadata accessor for AppComposer);
        v1338 = swift_allocObject();
        sub_1E5E1E4C0(v1337, v1338 + v1849, type metadata accessor for AppComposer);
        sub_1E6072124();
        v1339 = v1605;
        sub_1E6259D5C(sub_1E6274210, v1338, v1607);

        sub_1E5DFE50C(v1335, &unk_1ED077720, &qword_1E65EEE40);
        sub_1E6072098();
        v495 = v1608;
        v1340 = v1745;
        sub_1E5FEE4C8(v1339);
        v497 = &qword_1ED073E10;
        v498 = &unk_1E65FA460;
        sub_1E5DFE50C(v1339, &qword_1ED073E10, &unk_1E65FA460);
        v499 = v1609;
        sub_1E5FEE4C8(v495);
        sub_1E6071E58();
        v500 = v1748;
        sub_1E62DFB74(v499, v1746, v1340);
      }

      else
      {
        v1841 = type metadata accessor for AppComposer;
        v452 = v1860;
        sub_1E626F020(v1864, v1860, type metadata accessor for AppComposer);
        sub_1E5DF650C(v1875, &aBlock);
        v453 = (v451 + 7) & 0xFFFFFFFFFFFFFFF8;
        v1837 = v453;
        v454 = (v451 + 55) & 0xFFFFFFFFFFFFFFF8;
        v455 = swift_allocObject();
        v456 = v450;
        v457 = v455;
        v1844 = v455;
        v1835 = type metadata accessor for AppComposer;
        sub_1E5E1E4C0(v452, v455 + v456, type metadata accessor for AppComposer);
        sub_1E5DF599C(&aBlock, v457 + v453);
        *(v457 + v453 + 40) = 0;
        v458 = (v457 + v454);
        v459 = v1847;
        *v458 = 0xD000000000000016;
        v458[1] = v459;
        v460 = (v457 + ((v454 + 23) & 0xFFFFFFFFFFFFFFF8));
        v461 = v1855;
        *v460 = v1855;
        v1843 = &unk_1E65F9828;
        v460[1] = MEMORY[0x1E69AB380];
        v460[2] = &unk_1E65F9828;
        v1840 = &unk_1E65F9830;
        v460[3] = v1851;
        v460[4] = &unk_1E65F9830;
        v1839 = &unk_1E65F9838;
        v460[5] = v434;
        v460[6] = &unk_1E65F9838;
        v1838 = &unk_1E65F9840;
        v460[7] = v1856;
        v460[8] = &unk_1E65F9840;
        v460[9] = v1850;
        v462 = v1864;
        v463 = v1841;
        sub_1E626F020(v1864, v452, v1841);
        v1847 = swift_allocObject();
        v464 = v1849;
        sub_1E5E1E4C0(v452, v1847 + v1849, type metadata accessor for AppComposer);
        sub_1E626F020(v462, v452, v463);
        sub_1E5DF650C(v1875, &aBlock);
        v465 = v1854;
        v1836 = *(v1854 + 2);
        v466 = v1853;
        (v1836)(v1852, v1845, v1853);
        v467 = v1837;
        v468 = (v1837 + 47) & 0xFFFFFFFFFFFFFFF8;
        v469 = (v468 + *(v465 + 80) + 80) & ~*(v465 + 80);
        v470 = swift_allocObject();
        sub_1E5E1E4C0(v1860, v470 + v464, v1835);
        sub_1E5DF599C(&aBlock, &v467[v470]);
        v471 = (v470 + v468);
        v1841 = v470;
        *v471 = v461;
        v472 = v1843;
        v471[1] = MEMORY[0x1E69AB380];
        v471[2] = v472;
        v473 = v1840;
        v471[3] = v1851;
        v471[4] = v473;
        v474 = v1839;
        v471[5] = v1846;
        v471[6] = v474;
        v475 = v1838;
        v471[7] = v1856;
        v471[8] = v475;
        v471[9] = v1850;
        v476 = v1852;
        v465[4]((v470 + v469), v1852, v466);
        (v1836)(v476, v1845, v466);
        v1843 = type metadata accessor for ArtworkDescriptor();
        swift_retain_n();
        swift_retain_n();
        swift_retain_n();
        swift_retain_n();
        swift_retain_n();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077870, &unk_1E65FA560);
        v1840 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077B70, &unk_1E65FA820);
        v1839 = type metadata accessor for ItemMetrics();
        v1838 = type metadata accessor for SectionMetrics();
        type metadata accessor for ViewDescriptor();
        sub_1E6275330(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor);
        sub_1E5FEB2FC();
        sub_1E60728B0();
        sub_1E6275330(&qword_1EE2DB650, type metadata accessor for ItemMetrics);
        sub_1E5DF11E0();
        sub_1E6275330(&qword_1EE2DA950, type metadata accessor for SectionMetrics);
        sub_1E5DF1338();
        sub_1E6275330(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor);
        v477 = v1630;
        sub_1E65E2448();
        v478 = sub_1E65E2DA8();
        v479 = 0;
        v480 = 0;
        v481 = 0;
        v482 = 0;
        v483 = 0;
        v484 = 0;
        v485 = 0;
        v486 = 0;
        v487 = 0;
        v488 = 0;
        if (v478)
        {
          v487 = MEMORY[0x1E69AB380];
          v486 = &unk_1E65F9828;
          v484 = &unk_1E65F9830;
          v482 = &unk_1E65F9838;
          v480 = &unk_1E65F9840;
          v479 = v1850;
          v481 = v1856;
          v483 = v1846;
          v485 = v1851;
          v488 = v1855;
        }

        *&aBlock = v488;
        *(&aBlock + 1) = v487;
        *&v1871 = v486;
        *(&v1871 + 1) = v485;
        *&v1872 = v484;
        *(&v1872 + 1) = v483;
        *&v1873 = v482;
        *(&v1873 + 1) = v481;
        *&v1874[0] = v480;
        *(&v1874[0] + 1) = v479;
        sub_1E5FED46C(&unk_1ED077C70, &unk_1ED077700, &qword_1E65EEE38);
        v489 = v1634;
        v490 = v1632;
        sub_1E630FFE8(&aBlock, v1632, v1634);
        (*(v1631 + 8))(v477, v490);
        v491 = v1864;
        v492 = v1860;
        sub_1E626F020(v1864, v1860, type metadata accessor for AppComposer);
        v493 = swift_allocObject();
        sub_1E5E1E4C0(v492, v493 + v1849, type metadata accessor for AppComposer);
        sub_1E6071EE4();
        v494 = v1633;
        sub_1E6259D5C(sub_1E6274210, v493, v1635);

        sub_1E5DFE50C(v489, &qword_1ED073DF8, &unk_1E65FA440);
        sub_1E6071E58();
        v495 = v1636;
        v496 = v1746;
        sub_1E5FEE4C8(v494);
        v497 = &unk_1ED077710;
        v498 = &qword_1E65EEE28;
        sub_1E5DFE50C(v494, &unk_1ED077710, &qword_1E65EEE28);
        v499 = v1639;
        sub_1E5FEE4C8(v495);
        sub_1E6072098();
        v500 = v1748;
        sub_1E62DFC6C(v499, v496);
      }

      sub_1E6071DCC();
      v1341 = v1700;
      sub_1E62DFC6C(v500, v1747);
      sub_1E5DFE50C(v500, &qword_1ED073DE8, &unk_1E65FA430);
      sub_1E5DFE50C(v499, v497, v498);
      sub_1E5DFE50C(v495, v497, v498);
      (*(v1854 + 1))(v1845, v1853);
      sub_1E6274228();
      v1342 = v1709;
      sub_1E5FEE4C8(v1341);
      sub_1E5DFE50C(v1341, &qword_1ED073DA8, &unk_1E65FA550);
      v1343 = *v491;
      v1344 = *(v1861 + 32);
      v1345 = swift_allocObject();
      v1864 = *(v491 + v1344);
      *(v1345 + 16) = v1864;
      if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
      {

        swift_unknownObjectRetain();
        sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
        v1346 = v1561;
      }

      else
      {

        swift_unknownObjectRetain();
        v1346 = MEMORY[0x1E69E7CD0];
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077200, &unk_1E65FA8D0);
      v1347 = v1858;
      (*(v1859 + 13))(v1858, *MEMORY[0x1E699CE18], v1857);
      *(&v1591 + 1) = sub_1E6275B5C;
      *&v1591 = v1343;
      v1348 = sub_1E630B390(v1342, v1346, MEMORY[0x1E69E7CC0], v1347, 0, 0, 0, 0, 0, 0, v1591, v1345);

      sub_1E5DFE50C(v1342, &qword_1ED073DA8, &unk_1E65FA550);
      v373 = v1348;
      sub_1E65E5BA8();
      type metadata accessor for LocalizationBundle();
      v1349 = swift_getObjCClassFromMetadata();
      v1350 = [objc_opt_self() bundleForClass_];
      swift_getKeyPath();
      sub_1E65E4EC8();

      sub_1E65E5D48();
      v1351 = sub_1E65E5C48();

      [v373 setTitle_];

      v1352 = sub_1E6307A64();
      v1353 = v1352;
      if (v1862 > 1)
      {
        v1354 = 2;
      }

      else
      {
        v1354 = 1;
      }

      [v1352 setLargeTitleDisplayMode_];

      goto LABEL_265;
    case 0x23u:
      swift_storeEnumTagMultiPayload();
      v717 = v1864;
      sub_1E617DC64(v314, &aBlock);
      sub_1E6272C28(v314, type metadata accessor for BrowsePage);
      swift_storeEnumTagMultiPayload();
      v718 = v1781;
      sub_1E6508CD4(v1875, v314, &aBlock, v1781);
      sub_1E6272C28(v314, type metadata accessor for BrowsePage);
      sub_1E6272CEC();
      v719 = v1826;
      sub_1E5FEE4C8(v718);
      sub_1E5DFE50C(v718, &unk_1ED077820, &qword_1E65F96A8);
      v720 = v1652;
      sub_1E5FEE4C8(v719);
      sub_1E5DFE50C(v719, &unk_1ED077820, &qword_1E65F96A8);
      v721 = v1651;
      sub_1E5DFD1CC(v720, v1651, &unk_1ED077820, &qword_1E65F96A8);
      v722 = *v717;
      v723 = *(v1861 + 32);
      v724 = swift_allocObject();
      v1864 = *(v717 + v723);
      *(v724 + 16) = v1864;
      if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
      {

        swift_unknownObjectRetain();
        sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
        v725 = v1562;
      }

      else
      {

        swift_unknownObjectRetain();
        v725 = MEMORY[0x1E69E7CD0];
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077B30, &unk_1E65FA7D0);
      v726 = v1858;
      (*(v1859 + 13))(v1858, *MEMORY[0x1E699CE18], v1857);
      *(&v1586 + 1) = sub_1E6275B5C;
      *&v1586 = v722;
      v373 = sub_1E630B390(v721, v725, MEMORY[0x1E69E7CC0], v726, 0, 0, 0, 0, 1, 0, v1586, v724);

      v384 = &unk_1ED077820;
      v385 = &qword_1E65F96A8;
      sub_1E5DFE50C(v721, &unk_1ED077820, &qword_1E65F96A8);
      v727 = sub_1E6307A64();
      [v727 setLargeTitleDisplayMode_];

      swift_unknownObjectRelease();

      v398 = v720;
      goto LABEL_124;
    case 0x24u:
      v386 = v1659;
      v387 = v1864;
      AppComposer.forYouViewBuilder(currentRoutingContext:)(v1875, v1659);
      sub_1E5DFD1CC(v386, v1790, &qword_1ED072708, &unk_1E65FA530);
      v388 = sub_1E65DAE38();
      v389 = sub_1E65DAE38();
      v390 = *v387;
      v391 = *(v1861 + 32);
      v392 = swift_allocObject();
      v1864 = *(v387 + v391);
      *(v392 + 16) = v1864;
      if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
      {

        swift_unknownObjectRetain();
        sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
        v393 = v1559;
      }

      else
      {

        swift_unknownObjectRetain();
        v393 = MEMORY[0x1E69E7CD0];
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0771D0, &qword_1E65F97E0);
      v394 = v388 != v389;
      v395 = v1858;
      (*(v1859 + 13))(v1858, *MEMORY[0x1E699CE18], v1857);
      *(&v1584 + 1) = sub_1E6275B5C;
      *&v1584 = v390;
      v396 = v1790;
      v373 = sub_1E630B390(v1790, v393, MEMORY[0x1E69E7CC0], v395, 0, 0, 0, 0, v394, 0, v1584, v392);

      v384 = &qword_1ED072708;
      v385 = &unk_1E65FA530;
      sub_1E5DFE50C(v396, &qword_1ED072708, &unk_1E65FA530);
      v397 = sub_1E6307A64();
      [v397 setLargeTitleDisplayMode_];

      v398 = v386;
      goto LABEL_124;
    case 0x25u:
      v376 = v1661;
      v377 = v1864;
      AppComposer.libraryViewBuilder(currentRoutingContext:)(v1875, v1661);
      v378 = v1660;
      sub_1E5DFD1CC(v376, v1660, &unk_1ED077800, &qword_1E65F9698);
      v379 = *v377;
      v380 = *(v1861 + 32);
      v381 = swift_allocObject();
      v1864 = *(v377 + v380);
      *(v381 + 1) = v1864;
      if (!(MEMORY[0x1E69E7CC0] >> 62))
      {
        goto LABEL_7;
      }

      goto LABEL_271;
    case 0x27u:
      if (v362 < 2)
      {
        v1136 = (v1864 + *(v1861 + 32));
        v1137 = v1864;
        v1138 = *v1136;
        *&v1861 = v1136[1];
        v1139 = v1861;
        v1140 = swift_allocObject();
        v1851 = v1140;
        *(v1140 + 16) = v1138;
        *(v1140 + 24) = v1139;
        v1141 = v361;
        v1142 = *v1137;
        swift_getKeyPath();
        swift_unknownObjectRetain();
        sub_1E65E4EC8();

        v1143 = type metadata accessor for AppEnvironment();
        v1144 = Description;
        (Description[2])(v1764, v1141 + *(v1143 + 80), v1765);
        sub_1E65E5148();
        swift_unknownObjectRetain();
        v1862 = sub_1E65E5138();
        v1145 = type metadata accessor for SearchMetricsMonitor();
        v1146 = *(v1145 + 48);
        v1147 = *(v1145 + 52);
        v1859 = swift_allocObject();
        v1858 = OBJC_IVAR____TtC10Blackbeard20SearchMetricsMonitor_queue;
        sub_1E5DEF738(0, &qword_1EE2D4600, 0x1E69E9610);
        sub_1E65E4F58();
        *&aBlock = MEMORY[0x1E69E7CC0];
        sub_1E6275330(&qword_1EE2D4610, MEMORY[0x1E69E8030]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07A450, &qword_1E65F8060);
        sub_1E5FED46C(&qword_1EE2D4820, &unk_1ED07A450, &qword_1E65F8060);
        sub_1E65E6738();
        (*(v1645 + 104))(v1644, *MEMORY[0x1E69E8090], v1646);
        v1148 = sub_1E65E63E8();
        v1149 = v1859;
        *(v1858 + v1859) = v1148;
        (*(v1637 + 32))(v1149 + OBJC_IVAR____TtC10Blackbeard20SearchMetricsMonitor_currentState, v1763, v1638);
        v1150 = MEMORY[0x1E69AB380];
        *(v1149 + 2) = v1862;
        *(v1149 + 3) = v1150;
        (v1144[4])(v1149 + OBJC_IVAR____TtC10Blackbeard20SearchMetricsMonitor_metricService, v1764, v1765);
        v1151 = (v1149 + OBJC_IVAR____TtC10Blackbeard20SearchMetricsMonitor_navigationTracker);
        v1152 = v1861;
        *v1151 = v1138;
        v1151[1] = v1152;
        v1153 = v1864;
        v1154 = v1860;
        *&v1861 = type metadata accessor for AppComposer;
        sub_1E626F020(v1864, v1860, type metadata accessor for AppComposer);
        v1155 = *(v1855 + 80);
        v1849 = &v1856[(v1155 + 16) & ~v1155];
        v1850 = (v1155 + 16) & ~v1155;
        v1156 = v1856;
        v1157 = swift_allocObject();
        v1858 = type metadata accessor for AppComposer;
        v1854 = v1157;
        sub_1E5E1E4C0(v1154, v1157 + ((v1155 + 16) & ~v1155), type metadata accessor for AppComposer);
        v1158 = v1846;
        sub_1E626F020(v1153, v1846, type metadata accessor for AppComposer);
        v1159 = (v1155 + 32) & ~v1155;
        v1845 = v1159;
        v1160 = &v1156[v1159] & 0xFFFFFFFFFFFFFFF8;
        v1844 = &v1156[v1159];
        v1161 = swift_allocObject();
        v1857 = v1161;
        v1852 = &unk_1E65FA760;
        *(v1161 + 16) = &unk_1E65FA760;
        *(v1161 + 24) = v1157;
        sub_1E5E1E4C0(v1158, v1161 + v1159, v1858);
        v1156[v1159 + v1161] = 0;
        v1162 = v1161 + v1160;
        v1853 = sub_1E6172524;
        *(v1162 + 8) = sub_1E6172524;
        *(v1162 + 16) = 0;
        v1163 = (v1161 + ((v1160 + 31) & 0xFFFFFFFFFFFFFFF8));
        v1164 = v1862;
        *v1163 = v1862;
        v1165 = MEMORY[0x1E69AB380];
        v1163[1] = MEMORY[0x1E69AB380];
        v1166 = v1864;
        v1167 = v1847;
        sub_1E626F020(v1864, v1847, v1861);
        v1168 = (v1155 + 48) & ~v1155;
        v1169 = &v1856[v1168];
        v1170 = &v1856[v1168] & 0xFFFFFFFFFFFFFFF8;
        v1171 = swift_allocObject();
        v1172 = v1852;
        v1173 = v1854;
        v1171[2] = v1852;
        v1171[3] = v1173;
        v1171[4] = v1164;
        v1171[5] = v1165;
        v1174 = v1171;
        v1175 = v1858;
        sub_1E5E1E4C0(v1167, v1171 + v1168, v1858);
        v1855 = v1174;
        v1169[v1174] = 0;
        v1176 = v1174 + v1170;
        *(v1176 + 1) = v1853;
        *(v1176 + 2) = 0;
        v1177 = v1166;
        v1178 = v1166;
        v1179 = v1828;
        v1180 = v1861;
        sub_1E626F020(v1178, v1828, v1861);
        v1181 = swift_allocObject();
        v1182 = v1854;
        *(v1181 + 2) = v1172;
        *(v1181 + 3) = v1182;
        v1183 = v1862;
        *(v1181 + 4) = v1862;
        *(v1181 + 5) = MEMORY[0x1E69AB380];
        v1184 = v1181 + v1168;
        v1185 = v1181;
        sub_1E5E1E4C0(v1179, v1184, v1175);
        v1186 = v1185 + ((v1169 + 7) & 0xFFFFFFFFFFFFFFF8);
        v1848 = v1185;
        *v1186 = v1853;
        *(v1186 + 1) = 0;
        v1186[16] = 0;
        v1187 = v1829;
        sub_1E626F020(v1177, v1829, v1180);
        v1188 = swift_allocObject();
        *(v1188 + 16) = v1852;
        *(v1188 + 24) = v1182;
        v1189 = v1188;
        v1853 = v1188;
        sub_1E5E1E4C0(v1187, v1188 + v1845, v1175);
        *&aBlock = v1183;
        *(&aBlock + 1) = MEMORY[0x1E69AB380];
        *&v1871 = &unk_1E65EB918;
        *(&v1871 + 1) = v1857;
        *&v1872 = &unk_1E65FA770;
        *(&v1872 + 1) = v1855;
        *&v1873 = &unk_1E65EB920;
        *(&v1873 + 1) = v1185;
        *&v1874[0] = &unk_1E65FA780;
        *(&v1874[0] + 1) = v1189;
        swift_retain_n();
        swift_retain_n();
        v1190 = v1177;
        v1854 = sub_1E6253A30(v1830, &aBlock, v1177, v1841, v1863);
        v1191 = v1773;
        sub_1E63D53AC(v1854, v1773);
        v1192 = v1859;

        v1852 = sub_1E61C9468(v1191, v1192);
        v1193 = v1192;

        *&v1863 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07A460, &qword_1E65F97C8);
        v1194 = v1860;
        sub_1E626F020(v1190, v1860, v1861);
        sub_1E5DF650C(v1875, &v1867);
        v1195 = (v1849 + 7) & 0xFFFFFFFFFFFFFFF8;
        v1196 = (v1195 + 47) & 0xFFFFFFFFFFFFFFF8;
        v1197 = swift_allocObject();
        sub_1E5E1E4C0(v1194, v1197 + v1850, v1175);
        sub_1E5DF599C(&v1867, v1197 + v1195);
        v1198 = (v1197 + v1196);
        v1199 = v1873;
        v1198[2] = v1872;
        v1198[3] = v1199;
        v1198[4] = v1874[0];
        v1200 = v1871;
        *v1198 = aBlock;
        v1198[1] = v1200;
        *(v1197 + ((v1196 + 87) & 0xFFFFFFFFFFFFFFF8)) = v1193;
        v1201 = v1846;
        sub_1E626F020(v1190, v1846, v1861);
        sub_1E5DF650C(v1875, v1866);
        v1202 = (v1155 + 24) & ~v1155;
        v1203 = &v1856[v1202 + 7] & 0xFFFFFFFFFFFFFFF8;
        v1204 = (v1203 + 15) & 0xFFFFFFFFFFFFFFF8;
        v1205 = (v1204 + 47) & 0xFFFFFFFFFFFFFFF8;
        v1206 = swift_allocObject();
        *(v1206 + 16) = v1852;
        sub_1E5E1E4C0(v1201, v1206 + v1202, v1858);
        *(v1206 + v1203) = v1854;
        sub_1E5DF599C(v1866, v1206 + v1204);
        v1207 = (v1206 + v1205);
        v1208 = v1873;
        v1207[2] = v1872;
        v1207[3] = v1208;
        v1207[4] = v1874[0];
        v1209 = v1871;
        *v1207 = aBlock;
        v1207[1] = v1209;
        *(v1206 + ((v1205 + 87) & 0xFFFFFFFFFFFFFFF8)) = v1859;

        v373 = sub_1E65DCC78();
        (*(v1647 + 8))(v1773, v1648);
        goto LABEL_265;
      }

      v1502 = v1864;
      if (v362 != 3)
      {
        goto LABEL_330;
      }

      v1503 = v1600;
      sub_1E62284FC(v1875, v1600);
      v1504 = sub_1E622B4E0();
      v365 = v1610;
      sub_1E6012F9C(v1601, v1504);
      sub_1E5DFE50C(v1503, &unk_1ED0776A0, &qword_1E65F8030);
      v367 = v1611;
      sub_1E5DFD1CC(v365, v1611, &qword_1ED0770A8, &unk_1E65FA3E0);
      v1505 = *v1502;
      v1506 = *(v1861 + 32);
      v1507 = swift_allocObject();
      v1864 = *(v1502 + v1506);
      *(v1507 + 16) = v1864;
      if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
      {

        swift_unknownObjectRetain();
        sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
        v1508 = v1581;
      }

      else
      {

        swift_unknownObjectRetain();
        v1508 = MEMORY[0x1E69E7CD0];
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AA0, &qword_1E65F9798);
      v1509 = v1858;
      (*(v1859 + 13))(v1858, *MEMORY[0x1E699CE18], v1857);
      *(&v1594 + 1) = sub_1E6275B5C;
      *&v1594 = v1505;
      v373 = sub_1E630B390(v367, v1508, MEMORY[0x1E69E7CC0], v1509, 0, 0, 0, 0, 0, 0, v1594, v1507);

      v374 = &qword_1ED0770A8;
      v375 = &unk_1E65FA3E0;
      goto LABEL_227;
    case 0x29u:
      v1210 = (v1864 + *(v1861 + 36));
      v1211 = *v1210;
      v1212 = v1210[1];
      sub_1E5DFD1CC(v1864 + *(v1861 + 40), &v1871 + 8, &unk_1ED074320, &unk_1E65EA730);
      sub_1E5DF650C(v1875, v1874);
      *&aBlock = v1211;
      *(&aBlock + 1) = v1212;
      LOBYTE(v1871) = v362;
      v1213 = *(type metadata accessor for AppEnvironment() + 68);
      sub_1E5FA9D34(v1211, v1212);
      v1214 = InteropService.makeAccountSettingsViewController.getter();
      v1868 = &type metadata for CatalogPageRoutingContextNavigator;
      v1869 = sub_1E61379FC();
      *&v1867 = swift_allocObject();
      sub_1E6137A50(&aBlock, v1867 + 16);
      v853 = v1214(&v1867);
      goto LABEL_117;
    case 0x2Au:
      v1215 = sub_1E65DDF08();
      *(&v1871 + 1) = v1215;
      *&v1872 = sub_1E6275330(&qword_1EE2D6AF0, MEMORY[0x1E69CAC00]);
      v1216 = __swift_allocate_boxed_opaque_existential_1(&aBlock);
      (*(*(v1215 - 8) + 104))(v1216, *MEMORY[0x1E69CABE8], v1215);
      LOBYTE(v1215) = sub_1E65DAF58();
      __swift_destroy_boxed_opaque_existential_1(&aBlock);
      v1217 = v1852;
      if (v1215)
      {
        sub_1E65D76E8();
        v376 = v1622;
        v1218 = v1864;
        sub_1E606A028(v1875, v1217, v1622);
        (*(v1854 + 1))(v1217, v1853);
        v378 = v1621;
        sub_1E5DFD1CC(v376, v1621, &qword_1ED073D90, &unk_1E65FA3D0);
        v1219 = *v1218;
        v1220 = *(v1861 + 32);
        v1221 = swift_allocObject();
        v1864 = *(v1218 + v1220);
        *(v1221 + 16) = v1864;
        if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
        {

          swift_unknownObjectRetain();
          sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
          v1222 = v1572;
        }

        else
        {

          swift_unknownObjectRetain();
          v1222 = MEMORY[0x1E69E7CD0];
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077930, &qword_1E65F96F8);
        v1223 = v1858;
        (*(v1859 + 13))(v1858, *MEMORY[0x1E699CE18], v1857);
        *(&v1589 + 1) = sub_1E6275B5C;
        *&v1589 = v1219;
        v373 = sub_1E630B390(v378, v1222, MEMORY[0x1E69E7CC0], v1223, 0, 0, 0, 0, 0, 0, v1589, v1221);

        v384 = &qword_1ED073D90;
        v385 = &unk_1E65FA3D0;
        goto LABEL_123;
      }

      sub_1E65E5BA8();
      type metadata accessor for LocalizationBundle();
      v1257 = swift_getObjCClassFromMetadata();
      v1258 = [objc_opt_self() bundleForClass_];
      v1259 = v1864;
      v1260 = *v1864;
      swift_getKeyPath();
      sub_1E65E4EC8();

      *&aBlock = sub_1E65E5D48();
      *(&aBlock + 1) = v1261;
      sub_1E5F9AEA8();
      v1262 = v1614;
      sub_1E65E41C8();
      v1263 = v1613;
      v1264 = v1777;
      (*(v1834 + 2))(v1613, v1262, v1777);
      v1265 = *(v1861 + 32);
      v1266 = swift_allocObject();
      v1864 = *(v1259 + v1265);
      *(v1266 + 16) = v1864;
      if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
      {

        swift_unknownObjectRetain();
        sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
        v1267 = v1573;
      }

      else
      {

        swift_unknownObjectRetain();
        v1267 = MEMORY[0x1E69E7CD0];
      }

      v1268 = v1858;
      (*(v1859 + 13))(v1858, *MEMORY[0x1E699CE18], v1857);
      v1269 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077920, &qword_1E65FA640));
      v373 = sub_1E626DF90(v1263, v1267, MEMORY[0x1E69E7CC0], v1268, 0, 0, 0, 0, 0, 0, 0, v1260, sub_1E6275B5C, v1266);

      (*(v1834 + 1))(v1262, v1264);
      goto LABEL_265;
    case 0x2Bu:
      if (v362 < 2)
      {
        v1121 = (v1864 + *(v1861 + 36));
        v1122 = *v1121;
        v1123 = v1121[1];
        sub_1E5DFD1CC(v1864 + *(v1861 + 40), &v1871 + 8, &unk_1ED074320, &unk_1E65EA730);
        sub_1E5DF650C(v1875, v1874);
        *&aBlock = v1122;
        *(&aBlock + 1) = v1123;
        LOBYTE(v1871) = v362;
        v1124 = *(type metadata accessor for AppEnvironment() + 68);
        sub_1E5FA9D34(v1122, v1123);
        QueueView = InteropService.makeUpNextQueueViewController.getter();
        v1868 = &type metadata for CatalogPageRoutingContextNavigator;
        v1869 = sub_1E61379FC();
        *&v1867 = swift_allocObject();
        sub_1E6137A50(&aBlock, v1867 + 16);
        v853 = QueueView(&v1867, v1122, v1123);
        goto LABEL_117;
      }

      v1485 = v1864;
      if (v362 != 3)
      {
        goto LABEL_330;
      }

      v1486 = v1860;
      sub_1E626F020(v1864, v1860, type metadata accessor for AppComposer);
      sub_1E5DF650C(v1875, &aBlock);
      v1487 = (*(v1855 + 80) + 16) & ~*(v1855 + 80);
      v1488 = &v1856[v1487 + 7] & 0xFFFFFFFFFFFFFFF8;
      v1489 = swift_allocObject();
      sub_1E5E1E4C0(v1486, v1489 + v1487, type metadata accessor for AppComposer);
      sub_1E5DF599C(&aBlock, v1489 + v1488);
      v1490 = sub_1E65E4438();
      v1491 = *v1485;
      v1492 = *(v1861 + 32);
      v1493 = swift_allocObject();
      v1864 = *(v1485 + v1492);
      *(v1493 + 16) = v1864;
      if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
      {

        swift_unknownObjectRetain();
        sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
        v1494 = v1580;
      }

      else
      {

        swift_unknownObjectRetain();
        v1494 = MEMORY[0x1E69E7CD0];
      }

      v1495 = v1858;
      (*(v1859 + 13))(v1858, *MEMORY[0x1E699CE18], v1857);
      objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077118, &qword_1E65F96B0));

      v1406 = sub_1E6275404(sub_1E626CB74, v1489, v1490, v1494, MEMORY[0x1E69E7CC0], v1495, 0, 0, 0, 0, 0, 0, 0, v1491, sub_1E6275B5C, v1493, &qword_1ED077308, &qword_1E65F9920, &unk_1F5FB6EF0, sub_1E6275B70, sub_1E6275B6C);

      v1407 = v1831;
      if (v1831)
      {
        v1496 = v1831;
        v1497 = v1406;
        if ([v1496 isViewLoaded])
        {
          v1410 = [v1496 view];
          if (!v1410)
          {
LABEL_327:
            __break(1u);
            goto LABEL_328;
          }

LABEL_219:
          v1498 = v1410;
          v1499 = [v1410 snapshotViewAfterScreenUpdates_];

LABEL_222:
          v1501 = objc_allocWithZone(type metadata accessor for BlurViewController());
          v373 = sub_1E630B7AC(v1406, v1499);

          goto LABEL_265;
        }
      }

      else
      {
LABEL_220:
        v1500 = v1406;
      }

LABEL_221:
      v1499 = 0;
      goto LABEL_222;
    default:
      v363 = *v358;
      v364 = *(v358 + 1);
      if (v362 >= 3)
      {
        v1241 = v1615;
        v1242 = v1864;
        AppComposer.awardDetailViewBuilder(for:currentRoutingContext:)(v363, *(v358 + 1), v1875, v1615);

        v1243 = sub_1E6273064();
        v1244 = v1620;
        sub_1E6012F9C(v1616, v1243);
        sub_1E5DFE50C(v1241, &qword_1ED0770C8, &unk_1E65FA420);
        v1245 = v1617;
        sub_1E5DFD1CC(v1244, v1617, &unk_1ED0776F0, &qword_1E65F9658);
        v1246 = *v1242;
        v1247 = *(v1861 + 32);
        v1248 = swift_allocObject();
        v1864 = *(v1242 + v1247);
        *(v1248 + 16) = v1864;
        if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
        {

          swift_unknownObjectRetain();
          sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
          v1249 = v1571;
        }

        else
        {

          swift_unknownObjectRetain();
          v1249 = MEMORY[0x1E69E7CD0];
        }

        v1250 = v1831;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077B60, &qword_1E65F9810);
        v1251 = v1858;
        (*(v1859 + 13))(v1858, *MEMORY[0x1E699CE18], v1857);
        *(&v1590 + 1) = sub_1E6275B5C;
        *&v1590 = v1246;
        v1252 = sub_1E630B390(v1245, v1249, MEMORY[0x1E69E7CC0], v1251, 0, 0, 0, 0, 0, 0, v1590, v1248);

        sub_1E5DFE50C(v1245, &unk_1ED0776F0, &qword_1E65F9658);
        if (v1250 && (v1253 = v1250, [v1253 isViewLoaded]))
        {
          v1254 = [v1253 view];
          if (!v1254)
          {
            __break(1u);
LABEL_322:
            __break(1u);
            goto LABEL_323;
          }

          v1255 = v1254;
          v1256 = [v1254 snapshotViewAfterScreenUpdates_];
        }

        else
        {
          v1256 = 0;
        }

        v1290 = objc_allocWithZone(type metadata accessor for BlurViewController());
        v373 = sub_1E630B7AC(v1252, v1256);

        sub_1E5DFE50C(v1244, &unk_1ED0776F0, &qword_1E65F9658);
        goto LABEL_265;
      }

      v365 = v1618;
      v366 = v1864;
      AppComposer.awardDetailViewBuilder(for:currentRoutingContext:)(v363, *(v358 + 1), v1875, v1618);

      v367 = v1619;
      sub_1E5DFD1CC(v365, v1619, &qword_1ED0770C8, &unk_1E65FA420);
      v368 = *v366;
      v369 = *(v1861 + 32);
      v370 = swift_allocObject();
      v1864 = *(v366 + v369);
      *(v370 + 16) = v1864;
      if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
      {

        swift_unknownObjectRetain();
        sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
        v371 = v1570;
      }

      else
      {

        swift_unknownObjectRetain();
        v371 = MEMORY[0x1E69E7CD0];
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0771F8, &unk_1E65FA7F0);
      v372 = v1858;
      (*(v1859 + 13))(v1858, *MEMORY[0x1E699CE18], v1857);
      *(&v1582 + 1) = sub_1E6275B5C;
      *&v1582 = v368;
      v373 = sub_1E630B390(v367, v371, MEMORY[0x1E69E7CC0], v372, 0, 0, 0, 0, 0, 0, v1582, v370);

      v374 = &qword_1ED0770C8;
      v375 = &unk_1E65FA420;
LABEL_227:
      sub_1E5DFE50C(v367, v374, v375);
      v1418 = v365;
      goto LABEL_236;
  }
}