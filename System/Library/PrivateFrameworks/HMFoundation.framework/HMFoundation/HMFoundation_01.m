uint64_t sub_22AE0DF90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  *(v6 + 144) = a5;
  *(v6 + 152) = v5;
  *(v6 + 128) = a3;
  *(v6 + 136) = a4;
  *(v6 + 112) = a1;
  *(v6 + 120) = a2;
  v9 = a5[2];
  *(v6 + 160) = v9;
  v10 = a5[3];
  *(v6 + 168) = v10;
  v11 = a5[4];
  *(v6 + 176) = v11;
  v12 = a5[5];
  *(v6 + 184) = v12;
  v13 = a5[6];
  *(v6 + 192) = v13;
  v14 = a5[7];
  *(v6 + 200) = v14;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  *&v16 = v11;
  *(&v16 + 1) = v12;
  *(v6 + 32) = v16;
  *(v6 + 16) = v15;
  *(v6 + 48) = v13;
  *(v6 + 56) = v14;
  v17 = type metadata accessor for HierarchicalStateMachine.StateTransition();
  *(v6 + 208) = v17;
  v18 = *(v17 - 8);
  *(v6 + 216) = v18;
  v19 = *(v18 + 64) + 15;
  *(v6 + 224) = swift_task_alloc();
  v20 = sub_22AE76D84();
  *(v6 + 232) = v20;
  v21 = *(v20 - 8);
  *(v6 + 240) = v21;
  v22 = *(v21 + 64) + 15;
  *(v6 + 248) = swift_task_alloc();
  v23 = *(a5 - 1);
  *(v6 + 256) = v23;
  v24 = *(v23 + 64) + 15;
  *(v6 + 264) = swift_task_alloc();
  *(v6 + 64) = v9;
  *&v25 = v10;
  *(&v25 + 1) = v11;
  *&v26 = v12;
  *(&v26 + 1) = v13;
  *(v6 + 88) = v26;
  *(v6 + 72) = v25;
  *(v6 + 104) = v14;
  v27 = _s4NodeO13NodeStateTypeOMa();
  *(v6 + 272) = v27;
  v28 = *(v27 - 8);
  *(v6 + 280) = v28;
  v29 = *(v28 + 64) + 15;
  *(v6 + 288) = swift_task_alloc();
  *(v6 + 296) = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v6 + 304) = AssociatedTypeWitness;
  v31 = *(AssociatedTypeWitness - 8);
  *(v6 + 312) = v31;
  v32 = *(v31 + 64) + 15;
  *(v6 + 320) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22AE0E278, a4, 0);
}

uint64_t sub_22AE0E278()
{
  v1 = v0[39];
  v2 = v0[40];
  v3 = v0[37];
  v5 = v0[35];
  v4 = v0[36];
  v6 = v0[25];
  v62 = v6;
  v63 = v0[34];
  v61 = v0[24];
  v7 = v0[23];
  v60 = v0[22];
  v58 = v0[38];
  v59 = v0[21];
  v57 = v0[20];
  v8 = v0[18];
  v9 = v0[19];
  v10 = v0[15];
  (*(v7 + 24))();
  sub_22AE112A0(v8, v3);
  (*(v1 + 16))(v4, v2, v58);
  (*(v1 + 56))(v4, 0, 1, v58);
  LOBYTE(v10) = sub_22AE0F9D4(v3, v4, v57, v59, v60, v7, v61, v62);
  v11 = *(v5 + 8);
  v11(v4, v63);
  v11(v3, v63);
  if (v10)
  {
    v12 = v0[19];
    v13 = sub_22AE11B08(v0[18]);
    v0[41] = v14;
    v64 = (v13 + *v13);
    v15 = v13[1];
    v16 = swift_task_alloc();
    v0[42] = v16;
    *v16 = v0;
    v17 = sub_22AE0E880;
LABEL_3:
    v16[1] = v17;
    v18 = v0[16];
    v19 = v0[14];

    return v64(v19, v18);
  }

  v21 = v0[31];
  v22 = v0[32];
  v23 = v0[18];
  sub_22AE1178C(v0[40], v23, v21);
  if ((*(v22 + 48))(v21, 1, v23) == 1)
  {
    (*(v0[39] + 8))(v0[40], v0[38]);
    v24 = v0[40];
    v26 = v0[36];
    v25 = v0[37];
    v27 = v0[33];
    v28 = v0[28];
    (*(v0[30] + 8))(v0[31], v0[29]);

    v29 = v0[1];

    return v29();
  }

  else
  {
    v31 = v0[27];
    v30 = v0[28];
    v32 = v0[26];
    v33 = v0[14];
    (*(v0[32] + 32))(v0[33], v0[31], v0[18]);
    (*(v31 + 16))(v30, v33, v32);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v35 = v0[28];
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v42 = v0[20];
        v41 = v0[21];
        TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
        v44 = *(TupleTypeMetadata3 + 48);
        v45 = *(*(v42 - 8) + 8);
        v45(v35 + *(TupleTypeMetadata3 + 64), v42);
        (*(*(v41 - 8) + 8))(v35 + v44, v41);
        v45(v35, v42);
      }

      else
      {
        (*(v0[27] + 8))(v0[28], v0[26]);
      }

      v46 = v0[19];
      v47 = sub_22AE11B08(v0[18]);
      v0[43] = v48;
      v64 = (v47 + *v47);
      v49 = v47[1];
      v16 = swift_task_alloc();
      v0[44] = v16;
      *v16 = v0;
      v17 = sub_22AE0EA70;
      goto LABEL_3;
    }

    if (EnumCaseMultiPayload == 2)
    {
      v37 = v0[20];
      v36 = v0[21];
      v38 = swift_getTupleTypeMetadata3();
      v39 = *(v38 + 48);
      v40 = *(*(v37 - 8) + 8);
      v40(v35 + *(v38 + 64), v37);
      (*(*(v36 - 8) + 8))(v35 + v39, v36);
      v40(v35, v37);
    }

    else
    {
      (*(v0[27] + 8))(v0[28], v0[26]);
    }

    v50 = swift_task_alloc();
    v0[46] = v50;
    *v50 = v0;
    v50[1] = sub_22AE0EE28;
    v51 = v0[33];
    v52 = v0[17];
    v53 = v0[18];
    v54 = v0[15];
    v55 = v0[16];
    v56 = v0[14];

    return sub_22AE0DF90(v56, v54, v55, v52, v53);
  }
}

uint64_t sub_22AE0E880()
{
  v1 = *(*v0 + 336);
  v2 = *(*v0 + 328);
  v3 = *(*v0 + 136);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_22AE0E9AC, v3, 0);
}

uint64_t sub_22AE0E9AC()
{
  v1 = v0[37];
  v2 = v0[36];
  v3 = v0[33];
  v4 = v0[31];
  v5 = v0[28];
  (*(v0[39] + 8))(v0[40], v0[38]);

  v6 = v0[1];

  return v6();
}

uint64_t sub_22AE0EA70()
{
  v1 = *v0;
  v2 = *(*v0 + 352);
  v3 = *(*v0 + 344);
  v4 = *v0;

  v5 = swift_task_alloc();
  v1[45] = v5;
  *v5 = v4;
  v5[1] = sub_22AE0EC3C;
  v6 = v1[33];
  v7 = v1[18];
  v8 = v1[17];
  v9 = v1[16];
  v10 = v1[15];
  v11 = v1[14];

  return sub_22AE0DF90(v11, v10, v9, v8, v7);
}

uint64_t sub_22AE0EC3C()
{
  v1 = *(*v0 + 360);
  v2 = *(*v0 + 136);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22AE0ED4C, v2, 0);
}

uint64_t sub_22AE0ED4C()
{
  (*(v0[32] + 8))(v0[33], v0[18]);
  v1 = v0[37];
  v2 = v0[36];
  v3 = v0[33];
  v4 = v0[31];
  v5 = v0[28];
  (*(v0[39] + 8))(v0[40], v0[38]);

  v6 = v0[1];

  return v6();
}

uint64_t sub_22AE0EE28()
{
  v1 = *(*v0 + 368);
  v2 = *(*v0 + 136);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22AE0EF38, v2, 0);
}

uint64_t sub_22AE0EF38()
{
  v1 = v0[19];
  v2 = sub_22AE11B08(v0[18]);
  v0[47] = v3;
  v9 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  v0[48] = v5;
  *v5 = v0;
  v5[1] = sub_22AE0F038;
  v6 = v0[16];
  v7 = v0[14];

  return v9(v7, v6);
}

uint64_t sub_22AE0F038()
{
  v1 = *(*v0 + 384);
  v2 = *(*v0 + 376);
  v3 = *(*v0 + 136);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_22AE128B4, v3, 0);
}

uint64_t sub_22AE0F17C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a6;
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v10 = sub_22AE76D84();
  v7[9] = v10;
  v11 = *(v10 - 8);
  v7[10] = v11;
  v12 = *(v11 + 64) + 15;
  v7[11] = swift_task_alloc();
  v13 = *(v8 - 8);
  v8 -= 8;
  v7[12] = v13;
  v14 = *(v13 + 64) + 15;
  v7[13] = swift_task_alloc();
  v7[14] = *(v8 + 48);
  v7[15] = *(v8 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[16] = AssociatedTypeWitness;
  v16 = *(AssociatedTypeWitness - 8);
  v7[17] = v16;
  v17 = *(v16 + 64) + 15;
  v7[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22AE0F328, a5, 0);
}

uint64_t sub_22AE0F328()
{
  v1 = v0[18];
  v2 = v0[11];
  v3 = v0[12];
  v5 = v0[7];
  v4 = v0[8];
  v6 = v0[3];
  (*(v0[14] + 24))(v0[15]);
  sub_22AE1178C(v1, v5, v2);
  if ((*(v3 + 48))(v2, 1, v5) == 1)
  {
    (*(v0[10] + 8))(v0[11], v0[9]);
    v7 = swift_task_alloc();
    v0[21] = v7;
    *v7 = v0;
    v7[1] = sub_22AE0F828;
    v8 = v0[8];
LABEL_8:
    v22 = v0[6];
    v23 = v0[7];
    v24 = v0[5];
    v26 = v0[2];
    v25 = v0[3];

    return sub_22AE0DF90(v26, v25, v24, v22, v23);
  }

  v9 = v0[7];
  v10 = v0[4];
  (*(v0[12] + 32))(v0[13], v0[11], v9);
  if ((sub_22AE11D8C(v10, v9) & 1) == 0)
  {
    v20 = swift_task_alloc();
    v0[20] = v20;
    *v20 = v0;
    v20[1] = sub_22AE0F718;
    v21 = v0[13];
    goto LABEL_8;
  }

  v11 = swift_task_alloc();
  v0[19] = v11;
  *v11 = v0;
  v11[1] = sub_22AE0F554;
  v12 = v0[13];
  v13 = v0[6];
  v14 = v0[7];
  v15 = v0[4];
  v16 = v0[5];
  v18 = v0[2];
  v17 = v0[3];

  return sub_22AE0F17C(v18, v17, v15, v16, v13, v14);
}

uint64_t sub_22AE0F554()
{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22AE0F664, v2, 0);
}

uint64_t sub_22AE0F664()
{
  (*(v0[12] + 8))(v0[13], v0[7]);
  v1 = v0[13];
  v2 = v0[11];
  (*(v0[17] + 8))(v0[18], v0[16]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_22AE0F718()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22AE128D8, v2, 0);
}

uint64_t sub_22AE0F828()
{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22AE0F938, v2, 0);
}

uint64_t sub_22AE0F938()
{
  v1 = v0[13];
  v2 = v0[11];
  (*(v0[17] + 8))(v0[18], v0[16]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_22AE0F9D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v45 = a1;
  v46 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(AssociatedTypeWitness - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v17);
  v41 = &v40 - v18;
  v42 = a3;
  v48 = a3;
  v49 = a4;
  v50 = a5;
  v51 = a6;
  v43 = a6;
  v52 = a7;
  v53 = a8;
  v19 = _s4NodeO13NodeStateTypeOMa();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19, v22);
  v47 = &v40 - v23;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v25 = *(TupleTypeMetadata2 - 8);
  v26 = *(v25 + 64);
  v28 = MEMORY[0x28223BE20](TupleTypeMetadata2, v27);
  v30 = &v40 - v29;
  v31 = *(v28 + 48);
  v44 = v20;
  v32 = *(v20 + 16);
  v32(&v40 - v29, v45, v19);
  v32(&v30[v31], v46, v19);
  v46 = v15;
  v33 = *(v15 + 48);
  if (v33(v30, 1, AssociatedTypeWitness) == 1)
  {
    v34 = 1;
    if (v33(&v30[v31], 1, AssociatedTypeWitness) == 1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v32(v47, v30, v19);
    if (v33(&v30[v31], 1, AssociatedTypeWitness) != 1)
    {
      v35 = v46;
      v36 = v41;
      (*(v46 + 32))(v41, &v30[v31], AssociatedTypeWitness);
      swift_getAssociatedConformanceWitness();
      v37 = v47;
      v34 = sub_22AE76A44();
      v38 = *(v35 + 8);
      v38(v36, AssociatedTypeWitness);
      v38(v37, AssociatedTypeWitness);
LABEL_8:
      v25 = v44;
      goto LABEL_9;
    }

    (*(v46 + 8))(v47, AssociatedTypeWitness);
  }

  v34 = 0;
  v19 = TupleTypeMetadata2;
LABEL_9:
  (*(v25 + 8))(v30, v19);
  return v34 & 1;
}

uint64_t HierarchicalStateMachine.RootState<>.debugDescription.getter(_OWORD *a1, uint64_t a2)
{
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v3 = _s4NodeOMa();
  return sub_22AE0FDC4(v3, a2);
}

uint64_t sub_22AE0FDC4(void *a1, uint64_t a2)
{
  v3 = v2;
  v61 = a2;
  v6 = a1[2];
  v5 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  v10 = a1[7];
  v62 = v6;
  v63 = v5;
  v64 = v7;
  v65 = v8;
  v56 = v10;
  v57 = v9;
  v66 = v9;
  v67 = v10;
  v11 = _s4NodeO13NodeStateTypeOMa();
  v58 = *(v11 - 8);
  v59 = v11;
  v12 = *(v58 + 64);
  MEMORY[0x28223BE20](v11, v13);
  v60 = &v55 - v14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = *(AssociatedTypeWitness - 8);
  v17 = *(v16 + 64);
  v19 = MEMORY[0x28223BE20](AssociatedTypeWitness, v18);
  v21 = &v55 - v20;
  v22 = *(*(a1 - 1) + 64);
  MEMORY[0x28223BE20](v19, v23);
  v25 = (&v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v26 + 16))(v25, v3, a1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v55 = *v25;
    MEMORY[0x28223BE20](EnumCaseMultiPayload, v28);
    strcpy(&v55 - 64, "nodeState eventHandler stateTransitionHandler substates ");
    v29 = v59;
    v62 = v59;
    v63 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D8B0ED8, &qword_22AE81000);
    v64 = v63;
    v65 = sub_22AE76BB4();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v31 = swift_projectBox();
    v32 = *(v31 + *(TupleTypeMetadata + 80));
    v33 = v58;
    v34 = (*(v58 + 16))(v60, v31, v29);
    v62 = v32;
    MEMORY[0x28223BE20](v34, v35);
    *(&v55 - 8) = v6;
    *(&v55 - 7) = v5;
    *(&v55 - 6) = v7;
    *(&v55 - 5) = v8;
    v36 = v56;
    *(&v55 - 4) = v57;
    *(&v55 - 3) = v36;
    v37 = v61;
    *(&v55 - 2) = v61;
    KeyPath = swift_getKeyPath();
    v40 = MEMORY[0x28223BE20](KeyPath, v39);
    *(&v55 - 2) = v37;
    *(&v55 - 1) = v40;
    v41 = sub_22AE76BB4();

    WitnessTable = swift_getWitnessTable();
    v44 = sub_22AE10AEC(sub_22AE11210, (&v55 - 4), v41, MEMORY[0x277D837D0], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v43);

    v62 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B10F8, &qword_22AE80948);
    sub_22AE1123C();
    v45 = sub_22AE76A34();
    v47 = v46;

    v48 = v60;
    v62 = sub_22AE10F0C(v29);
    v63 = v49;
    MEMORY[0x231886110](5972026, 0xE300000000000000);
    MEMORY[0x231886110](v45, v47);

    MEMORY[0x231886110](93, 0xE100000000000000);
    v50 = v62;
    (*(v33 + 8))(v48, v29);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D8B0ED8, &qword_22AE81000);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v52 = *(v25 + *(TupleTypeMetadata3 + 48) + 8);

    v53 = *(v25 + *(TupleTypeMetadata3 + 64) + 8);

    (*(v16 + 32))(v21, v25, AssociatedTypeWitness);
    v50 = sub_22AE76EE4();
    (*(v16 + 8))(v21, AssociatedTypeWitness);
  }

  return v50;
}

void sub_22AE1034C(_OWORD *a1)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  _s4NodeOMa();
  if (v1 <= 0x3F)
  {
    sub_22AE106BC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_22AE103E4(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 40);
  v6 = *(a3 + 16);
  v7 = (((*(*(swift_getAssociatedTypeWitness() - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = v7 + 17;
  v9 = v7 == -16;
  v10 = 9;
  if (!v9)
  {
    v10 = v8;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x7FFFFFFF)
  {
    goto LABEL_23;
  }

  v11 = ((v10 + 30) & 0xFFFFFFFFFFFFFFF8) + 16;
  v12 = v11 & 0xFFFFFFF8;
  v13 = a2 - 2147483645;
  if ((v11 & 0xFFFFFFF8) != 0)
  {
    v13 = 2;
  }

  if (v13 >= 0x10000)
  {
    v14 = 4;
  }

  else
  {
    v14 = 2;
  }

  if (v13 < 0x100)
  {
    v15 = 1;
  }

  else
  {
    v15 = v14;
  }

  if (v15 == 4)
  {
    v16 = *(a1 + v11);
    if (v16)
    {
      goto LABEL_19;
    }

LABEL_23:
    v19 = *((a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v19 >= 0xFFFFFFFF)
    {
      LODWORD(v19) = -1;
    }

    if ((v19 + 1) >= 2)
    {
      return v19;
    }

    else
    {
      return 0;
    }
  }

  if (v15 != 2)
  {
    v16 = *(a1 + v11);
    if (v16)
    {
      goto LABEL_19;
    }

    goto LABEL_23;
  }

  v16 = *(a1 + v11);
  if (!v16)
  {
    goto LABEL_23;
  }

LABEL_19:
  v18 = v16 - 1;
  if (v12)
  {
    v18 = 0;
    LODWORD(v12) = *a1;
  }

  return (v12 | v18) + 0x7FFFFFFF;
}

void sub_22AE10520(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 40);
  v8 = *(a4 + 16);
  v9 = (((*(*(swift_getAssociatedTypeWitness() - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = v9 + 17;
  v11 = v9 == -16;
  v12 = 9;
  if (!v11)
  {
    v12 = v10;
  }

  v13 = ((v12 + 30) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (a3 < 0x7FFFFFFF)
  {
    v16 = 0;
  }

  else
  {
    v14 = a3 - 2147483645;
    if (((v12 + 30) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v16 = 1;
    }

    else
    {
      v16 = v15;
    }
  }

  if (a2 > 0x7FFFFFFE)
  {
    if (((v12 + 30) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v17 = a2 - 2147483646;
    }

    else
    {
      v17 = 1;
    }

    if (((v12 + 30) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      bzero(a1, v13);
      *a1 = a2 - 0x7FFFFFFF;
    }

    if (v16 > 1)
    {
      if (v16 == 2)
      {
        *(a1 + v13) = v17;
      }

      else
      {
        *(a1 + v13) = v17;
      }
    }

    else if (v16)
    {
      *(a1 + v13) = v17;
    }
  }

  else
  {
    if (v16 <= 1)
    {
      if (v16)
      {
        *(a1 + v13) = 0;
        if (!a2)
        {
          return;
        }

LABEL_29:
        *((a1 + v12 + 7) & 0xFFFFFFFFFFFFFFF8) = a2;
        return;
      }

LABEL_28:
      if (!a2)
      {
        return;
      }

      goto LABEL_29;
    }

    if (v16 == 2)
    {
      *(a1 + v13) = 0;
      goto LABEL_28;
    }

    *(a1 + v13) = 0;
    if (a2)
    {
      goto LABEL_29;
    }
  }
}

void sub_22AE106BC()
{
  if (!qword_27D8B1070[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D8B0ED8, &qword_22AE81000);
    v0 = sub_22AE76D84();
    if (!v1)
    {
      atomic_store(v0, qword_27D8B1070);
    }
  }
}

uint64_t sub_22AE10728(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 16);
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D8B0ED8, &qword_22AE81000);
  result = swift_getTupleTypeMetadata3();
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22AE107E4(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 40);
  v6 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = ((((*(*(AssociatedTypeWitness - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((((*(*(AssociatedTypeWitness - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) == 0xFFFFFFFFFFFFFFF0)
  {
    v8 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_27;
  }

  v9 = v8 | 1;
  if ((v8 | 1) <= 3)
  {
    v10 = ((a2 + 1) >> 8) + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v9];
      if (*&a1[v9])
      {
        goto LABEL_23;
      }
    }

    else
    {
      v13 = *&a1[v9];
      if (v13)
      {
        goto LABEL_23;
      }
    }

LABEL_27:
    v17 = a1[v8];
    if (v17 >= 2)
    {
      return (v17 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  if (!v12)
  {
    goto LABEL_27;
  }

  v13 = a1[v9];
  if (!a1[v9])
  {
    goto LABEL_27;
  }

LABEL_23:
  v15 = (v13 - 1) << (8 * v9);
  if (v9 <= 3)
  {
    v16 = *a1;
  }

  else
  {
    v15 = 0;
    v16 = *a1;
  }

  return (v16 | v15) + 255;
}

void sub_22AE10910(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 40);
  v8 = *(a4 + 16);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = ((((*(v9 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((((*(v9 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) == 0xFFFFFFFFFFFFFFF0)
  {
    v10 = 8;
  }

  v11 = v10 | 1;
  if (a3 < 0xFF)
  {
    v14 = 0;
    if (a2 > 0xFE)
    {
      goto LABEL_16;
    }

LABEL_24:
    if (v14 > 1)
    {
      if (v14 != 2)
      {
        *&a1[v11] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_34;
      }

      *&a1[v11] = 0;
    }

    else if (v14)
    {
      a1[v11] = 0;
      if (!a2)
      {
        return;
      }

LABEL_34:
      a1[v10] = -a2;
      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (v11 <= 3)
  {
    v12 = ((a3 + 1) >> 8) + 1;
  }

  else
  {
    v12 = 2;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 <= 0xFE)
  {
    goto LABEL_24;
  }

LABEL_16:
  v15 = a2 - 255;
  bzero(a1, v10 | 1);
  if (v11 <= 3)
  {
    v16 = (v15 >> 8) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v11 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_21:
      if (v14 == 2)
      {
        *&a1[v11] = v16;
      }

      else
      {
        *&a1[v11] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_21;
    }
  }

  if (v14)
  {
    a1[v11] = v16;
  }
}

uint64_t sub_22AE10A84@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v4 = *(a1 + a2 - 8);
  v8 = *(a1 + a2 - 56);
  v9 = *(a1 + a2 - 40);
  v10 = *(a1 + a2 - 24);
  v5 = _s4NodeOMa();
  result = sub_22AE0FDC4(v5, v4);
  *a3 = result;
  a3[1] = v7;
  return result;
}

uint64_t sub_22AE10AEC(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v39 = a8;
  v48 = a1;
  v49 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v50 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v52 = *(AssociatedTypeWitness - 8);
  v16 = *(v52 + 64);
  v18 = MEMORY[0x28223BE20](AssociatedTypeWitness, v17);
  v20 = &v37 - v19;
  v21 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](v18, v22);
  v46 = &v37 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = swift_getAssociatedTypeWitness();
  v40 = *(v24 - 8);
  v41 = v24;
  v25 = *(v40 + 64);
  MEMORY[0x28223BE20](v24, v26);
  v28 = &v37 - v27;
  v29 = sub_22AE76D04();
  if (!v29)
  {
    return sub_22AE76B64();
  }

  v51 = v29;
  v55 = sub_22AE76E34();
  v42 = sub_22AE76E44();
  sub_22AE76E14();
  result = sub_22AE76CF4();
  if ((v51 & 0x8000000000000000) == 0)
  {
    v37 = v11;
    v38 = a5;
    v31 = 0;
    v43 = (v52 + 16);
    v44 = (v52 + 8);
    v45 = v8;
    while (!__OFADD__(v31, 1))
    {
      v52 = v31 + 1;
      v32 = sub_22AE76D34();
      v33 = v20;
      v34 = v20;
      v35 = AssociatedTypeWitness;
      (*v43)(v33);
      v32(v54, 0);
      v36 = v53;
      v48(v34, v50);
      if (v36)
      {
        (*v44)(v34, v35);
        (*(v40 + 8))(v28, v41);

        return (*(v37 + 32))(v39, v50, v38);
      }

      v53 = 0;
      (*v44)(v34, v35);
      sub_22AE76E24();
      result = sub_22AE76D14();
      ++v31;
      v20 = v34;
      if (v52 == v51)
      {
        (*(v40 + 8))(v28, v41);
        return v55;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22AE10F0C(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 40);
  v5 = *(a1 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 64);
  v10 = MEMORY[0x28223BE20](AssociatedTypeWitness, v9);
  v12 = &v20 - v11;
  v13 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20](v10, v14);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16, v2, a1);
  if ((*(v7 + 48))(v16, 1, AssociatedTypeWitness) == 1)
  {
    return 0x3E746F6F723CLL;
  }

  (*(v7 + 32))(v12, v16, AssociatedTypeWitness);
  v19 = sub_22AE76EE4();
  (*(v7 + 8))(v12, AssociatedTypeWitness);
  return v19;
}

uint64_t sub_22AE1111C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4[2];
  v10 = v4[3];
  v11 = v4[4];
  v12 = v4[5];
  v13 = v4[6];
  v14 = v4[7];
  v15 = swift_task_alloc();
  *(v5 + 16) = v15;
  *v15 = v5;
  v15[1] = sub_22ADEE1E0;

  return sub_22AE0CF74(a1, a2, a3, a4, v9);
}

unint64_t sub_22AE1123C()
{
  result = qword_27D8B1100[0];
  if (!qword_27D8B1100[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D8B10F8, &qword_22AE80948);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D8B1100);
  }

  return result;
}

uint64_t sub_22AE112A0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(*(a1 - 1) + 64);
  MEMORY[0x28223BE20](a1, v2);
  v7 = (&v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = *v7;
    v11 = a1[3];
    v12 = a1[4];
    v13 = a1[5];
    v14 = a1[6];
    v15 = a1[7];
    v26 = a1[2];
    v10 = v26;
    v27 = v11;
    v28 = v12;
    v29 = v13;
    v30 = v14;
    v31 = v15;
    _s4NodeO13NodeStateTypeOMa();
    sub_22AE76BB4();
    v16 = swift_projectBox();
    v26 = v10;
    v27 = v11;
    v28 = v12;
    v29 = v13;
    v30 = v14;
    v31 = v15;
    v17 = _s4NodeO13NodeStateTypeOMa();
    (*(*(v17 - 8) + 16))(a2, v16, v17);
  }

  else
  {
    v19 = a1[5];
    v20 = a1[2];
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D8B0ED8, &qword_22AE81000);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v23 = *(v7 + *(TupleTypeMetadata3 + 48) + 8);

    v24 = *(v7 + *(TupleTypeMetadata3 + 64) + 8);

    v25 = *(AssociatedTypeWitness - 8);
    (*(v25 + 32))(a2, v7, AssociatedTypeWitness);
    return (*(v25 + 56))(a2, 0, 1, AssociatedTypeWitness);
  }
}

uint64_t sub_22AE1150C(uint64_t a1)
{
  v3 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20](a1, v1);
  v5 = (&v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v6 + 16))(v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v9 = *v5;
    MEMORY[0x28223BE20](EnumCaseMultiPayload, v8);
    strcpy(&v23 - 64, "nodeState eventHandler stateTransitionHandler substates ");
    v10 = *(a1 + 32);
    v23 = *(a1 + 16);
    v24 = v10;
    v25 = *(a1 + 48);
    *&v23 = _s4NodeO13NodeStateTypeOMa();
    *(&v23 + 1) = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D8B0ED8, &qword_22AE81000);
    *&v24 = *(&v23 + 1);
    *(&v24 + 1) = sub_22AE76BB4();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v12 = (swift_projectBox() + *(TupleTypeMetadata + 48));
    v13 = *v12;
    v14 = v12[1];
  }

  else
  {
    v15 = *(a1 + 40);
    v16 = *(a1 + 16);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D8B0ED8, &qword_22AE81000);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v19 = (v5 + *(TupleTypeMetadata3 + 48));
    v13 = *v19;
    v20 = v19[1];
    v21 = *(v5 + *(TupleTypeMetadata3 + 64) + 8);

    (*(*(AssociatedTypeWitness - 8) + 8))(v5, AssociatedTypeWitness);
  }

  return v13;
}

uint64_t sub_22AE1178C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 - 1);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v9 = (&v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v6 + 16))(v9, v10, a2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v13 = *v9;
    MEMORY[0x28223BE20](EnumCaseMultiPayload, v12);
    strcpy(&v30 - 64, "nodeState eventHandler stateTransitionHandler substates ");
    v14 = a2[2];
    v15 = a2[3];
    v16 = a2[4];
    v17 = a2[5];
    v31 = a1;
    v32 = a3;
    v18 = a2[6];
    v19 = a2[7];
    v33 = v14;
    v34 = v15;
    v35 = v16;
    v36 = v17;
    v37 = v18;
    v38 = v19;
    v33 = _s4NodeO13NodeStateTypeOMa();
    v34 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D8B0ED8, &qword_22AE81000);
    v35 = v34;
    v36 = sub_22AE76BB4();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v21 = swift_projectBox();
    v30 = &v30;
    v33 = *(v21 + *(TupleTypeMetadata + 80));
    MEMORY[0x28223BE20](v21, v22);
    *(&v30 - 8) = v14;
    *(&v30 - 7) = v15;
    *(&v30 - 6) = v16;
    *(&v30 - 5) = v17;
    *(&v30 - 4) = v18;
    *(&v30 - 3) = v19;
    *(&v30 - 2) = v31;
    sub_22AE76BB4();

    swift_getWitnessTable();
    sub_22AE76AF4();
  }

  else
  {
    v24 = a2[5];
    v25 = a2[2];
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D8B0ED8, &qword_22AE81000);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v28 = *(v9 + *(TupleTypeMetadata3 + 48) + 8);

    v29 = *(v9 + *(TupleTypeMetadata3 + 64) + 8);

    (*(v6 + 56))(a3, 1, 1, a2);
    return (*(*(AssociatedTypeWitness - 8) + 8))(v9, AssociatedTypeWitness);
  }
}

uint64_t sub_22AE11B08(uint64_t a1)
{
  v3 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20](a1, v1);
  v5 = (&v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v6 + 16))(v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v9 = *v5;
    MEMORY[0x28223BE20](EnumCaseMultiPayload, v8);
    strcpy(&v23 - 64, "nodeState eventHandler stateTransitionHandler substates ");
    v10 = *(a1 + 32);
    v23 = *(a1 + 16);
    v24 = v10;
    v25 = *(a1 + 48);
    *&v23 = _s4NodeO13NodeStateTypeOMa();
    *(&v23 + 1) = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D8B0ED8, &qword_22AE81000);
    *&v24 = *(&v23 + 1);
    *(&v24 + 1) = sub_22AE76BB4();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v12 = (swift_projectBox() + *(TupleTypeMetadata + 64));
    v13 = *v12;
    v14 = v12[1];
  }

  else
  {
    v15 = *(a1 + 40);
    v16 = *(a1 + 16);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D8B0ED8, &qword_22AE81000);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v19 = *(v5 + *(TupleTypeMetadata3 + 48) + 8);

    v20 = (v5 + *(TupleTypeMetadata3 + 64));
    v13 = *v20;
    v21 = v20[1];
    (*(*(AssociatedTypeWitness - 8) + 8))(v5, AssociatedTypeWitness);
  }

  return v13;
}

uint64_t sub_22AE11D8C(uint64_t a1, void *a2)
{
  v3 = v2;
  v70 = a1;
  v6 = a2[2];
  v5 = a2[3];
  v7 = a2[4];
  v8 = a2[5];
  v9 = a2[6];
  v10 = a2[7];
  v72 = v6;
  v73 = v5;
  v67 = v7;
  v68 = v5;
  v74 = v7;
  v75 = v8;
  v65 = v10;
  v66 = v9;
  v76 = v9;
  v77 = v10;
  v69 = _s4NodeO13NodeStateTypeOMa();
  v71 = *(v69 - 8);
  v11 = v71[8];
  v13 = MEMORY[0x28223BE20](v69, v12);
  v15 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v61 - v17;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20 = *(AssociatedTypeWitness - 8);
  v21 = *(v20 + 64);
  v23 = MEMORY[0x28223BE20](AssociatedTypeWitness, v22);
  v64 = &v61 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v23, v25);
  v28 = &v61 - v27;
  v29 = *(*(a2 - 1) + 64);
  MEMORY[0x28223BE20](v26, v30);
  v32 = (&v61 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v33 + 16))(v32, v3, a2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v62 = v6;
    v36 = *v32;
    MEMORY[0x28223BE20](EnumCaseMultiPayload, v35);
    strcpy(&v61 - 64, "nodeState eventHandler stateTransitionHandler substates ");
    v37 = v20;
    v38 = v69;
    v72 = v69;
    v73 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D8B0ED8, &qword_22AE81000);
    v74 = v73;
    v75 = sub_22AE76BB4();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v61 = v36;
    v40 = swift_projectBox();
    v41 = *(v40 + *(TupleTypeMetadata + 80));
    v42 = v71[2];
    v42(v18, v40, v38);
    v63 = v18;
    v43 = v38;
    v44 = v37;
    v42(v15, v18, v43);
    if ((*(v37 + 48))(v15, 1, AssociatedTypeWitness) == 1)
    {
      v45 = v71[1];

      v46 = v69;
      v47 = v45(v15, v69);
      v49 = v70;
      v50 = v62;
LABEL_7:
      v72 = v41;
      MEMORY[0x28223BE20](v47, v48);
      v57 = v67;
      v58 = v68;
      *(&v61 - 8) = v50;
      *(&v61 - 7) = v58;
      *(&v61 - 6) = v57;
      *(&v61 - 5) = v8;
      v59 = v65;
      *(&v61 - 4) = v66;
      *(&v61 - 3) = v59;
      *(&v61 - 2) = v49;
      sub_22AE76BB4();
      swift_getWitnessTable();
      v54 = sub_22AE76B14();
      (v71[1])(v63, v46);

      return v54 & 1;
    }

    v55 = v64;
    (*(v37 + 32))(v64, v15, AssociatedTypeWitness);
    v50 = v62;
    swift_getAssociatedConformanceWitness();

    v49 = v70;
    v56 = sub_22AE76A44();
    v47 = (*(v44 + 8))(v55, AssociatedTypeWitness);
    v46 = v69;
    if ((v56 & 1) == 0)
    {
      goto LABEL_7;
    }

    (v71[1])(v63, v69);

    v54 = 1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D8B0ED8, &qword_22AE81000);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v52 = *(v32 + *(TupleTypeMetadata3 + 48) + 8);

    v53 = *(v32 + *(TupleTypeMetadata3 + 64) + 8);

    (*(v20 + 32))(v28, v32, AssociatedTypeWitness);
    swift_getAssociatedConformanceWitness();
    v54 = sub_22AE76A44();
    (*(v20 + 8))(v28, AssociatedTypeWitness);
  }

  return v54 & 1;
}

uint64_t sub_22AE123E4()
{
  v1 = *(v0 + 64);
  v4 = *(v0 + 16);
  v5 = *(v0 + 32);
  v6 = *(v0 + 48);
  v2 = _s4NodeOMa();
  return sub_22AE11D8C(v1, v2) & 1;
}

uint64_t sub_22AE12450(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return AssociatedTypeWitness;
}

uint64_t sub_22AE124C0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 40);
  v6 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 84);
  v10 = v9 - 1;
  if (!v9)
  {
    v10 = 0;
  }

  v11 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!v9)
  {
    ++v11;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 > v10)
  {
    v12 = 8 * v11;
    if (v11 > 3)
    {
      goto LABEL_8;
    }

    v14 = ((a2 - v10 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v14))
    {
      v13 = *(a1 + v11);
      if (v13)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v14 <= 0xFF)
      {
        if (v14 < 2)
        {
          goto LABEL_26;
        }

LABEL_8:
        v13 = *(a1 + v11);
        if (!*(a1 + v11))
        {
          goto LABEL_26;
        }

LABEL_15:
        v15 = (v13 - 1) << v12;
        if (v11 > 3)
        {
          v15 = 0;
        }

        if (v11)
        {
          if (v11 > 3)
          {
            LODWORD(v11) = 4;
          }

          if (v11 > 2)
          {
            if (v11 == 3)
            {
              LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              LODWORD(v11) = *a1;
            }
          }

          else if (v11 == 1)
          {
            LODWORD(v11) = *a1;
          }

          else
          {
            LODWORD(v11) = *a1;
          }
        }

        return v10 + (v11 | v15) + 1;
      }

      v13 = *(a1 + v11);
      if (*(a1 + v11))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_26:
  if (v9 < 2)
  {
    return 0;
  }

  v17 = (*(v8 + 48))(a1);
  if (v17 >= 2)
  {
    return v17 - 1;
  }

  else
  {
    return 0;
  }
}

void sub_22AE12664(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 40);
  v8 = *(a4 + 16);
  v9 = 0;
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = *(v10 + 84);
  v12 = v11 - 1;
  if (v11)
  {
    v13 = *(v10 + 64);
  }

  else
  {
    v12 = 0;
    v13 = *(v10 + 64) + 1;
  }

  if (a3 <= v12)
  {
    goto LABEL_15;
  }

  if (v13 <= 3)
  {
    v14 = ((a3 - v12 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
    if (HIWORD(v14))
    {
      v9 = 4;
      if (v12 >= a2)
      {
        goto LABEL_25;
      }

      goto LABEL_16;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    else
    {
      v15 = 2;
    }

    if (v14 >= 2)
    {
      v9 = v15;
    }

    else
    {
      v9 = 0;
    }

LABEL_15:
    if (v12 >= a2)
    {
      goto LABEL_25;
    }

    goto LABEL_16;
  }

  v9 = 1;
  if (v12 >= a2)
  {
LABEL_25:
    if (v9 > 1)
    {
      if (v9 != 2)
      {
        *&a1[v13] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      *&a1[v13] = 0;
    }

    else if (v9)
    {
      a1[v13] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_32;
    }

    if (!a2)
    {
      return;
    }

LABEL_32:
    if (v11 >= 2)
    {
      v19 = *(v10 + 56);

      v19(a1, a2 + 1);
    }

    return;
  }

LABEL_16:
  v16 = ~v12 + a2;
  if (v13 >= 4)
  {
    bzero(a1, v13);
    *a1 = v16;
    v17 = 1;
    if (v9 > 1)
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  v17 = (v16 >> (8 * v13)) + 1;
  if (!v13)
  {
LABEL_39:
    if (v9 > 1)
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  v18 = v16 & ~(-1 << (8 * v13));
  bzero(a1, v13);
  if (v13 == 3)
  {
    *a1 = v18;
    a1[2] = BYTE2(v18);
    goto LABEL_39;
  }

  if (v13 == 2)
  {
    *a1 = v18;
    if (v9 > 1)
    {
LABEL_43:
      if (v9 == 2)
      {
        *&a1[v13] = v17;
      }

      else
      {
        *&a1[v13] = v17;
      }

      return;
    }
  }

  else
  {
    *a1 = v16;
    if (v9 > 1)
    {
      goto LABEL_43;
    }
  }

LABEL_40:
  if (v9)
  {
    a1[v13] = v17;
  }
}

uint64_t sub_22AE128DC(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    result = swift_getTupleTypeMetadata3();
    if (v6 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22AE12970(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (((((v3 + *(*(*(a3 + 24) - 8) + 80)) & ~*(*(*(a3 + 24) - 8) + 80)) + *(*(*(a3 + 24) - 8) + 64) + *(*(*(a3 + 16) - 8) + 80)) & ~*(*(*(a3 + 16) - 8) + 80)) + v3 <= v3)
  {
    v4 = *(*(*(a3 + 16) - 8) + 64);
  }

  else
  {
    v4 = ((((v3 + *(*(*(a3 + 24) - 8) + 80)) & ~*(*(*(a3 + 24) - 8) + 80)) + *(*(*(a3 + 24) - 8) + 64) + *(*(*(a3 + 16) - 8) + 80)) & ~*(*(*(a3 + 16) - 8) + 80)) + v3;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_26;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 252) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v9 < 2)
    {
LABEL_26:
      v11 = *(a1 + v4);
      if (v11 >= 4)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_26;
  }

LABEL_15:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 253;
}

void sub_22AE12B10(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  v6 = ((((v5 + *(*(*(a4 + 24) - 8) + 80)) & ~*(*(*(a4 + 24) - 8) + 80)) + *(*(*(a4 + 24) - 8) + 64) + *(*(*(a4 + 16) - 8) + 80)) & ~*(*(*(a4 + 16) - 8) + 80)) + v5;
  if (v6 <= v5)
  {
    v6 = *(*(*(a4 + 16) - 8) + 64);
  }

  v7 = v6 + 1;
  if (a3 < 0xFD)
  {
    v8 = 0;
  }

  else if (v7 <= 3)
  {
    v11 = ((a3 + ~(-1 << (8 * v7)) - 252) >> (8 * v7)) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFC)
  {
    v9 = a2 - 253;
    if (v7 >= 4)
    {
      bzero(a1, v6 + 1);
      *a1 = v9;
      v10 = 1;
      if (v8 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v10 = (v9 >> (8 * v7)) + 1;
    if (v6 != -1)
    {
      v13 = v9 & ~(-1 << (8 * v7));
      bzero(a1, v7);
      if (v7 != 3)
      {
        if (v7 == 2)
        {
          *a1 = v13;
          if (v8 > 1)
          {
LABEL_39:
            if (v8 == 2)
            {
              *&a1[v7] = v10;
            }

            else
            {
              *&a1[v7] = v10;
            }

            return;
          }
        }

        else
        {
          *a1 = v9;
          if (v8 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v8)
        {
          a1[v7] = v10;
        }

        return;
      }

      *a1 = v13;
      a1[2] = BYTE2(v13);
    }

    if (v8 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v8 <= 1)
  {
    if (v8)
    {
      a1[v7] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v6] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v8 == 2)
  {
    *&a1[v7] = 0;
    goto LABEL_24;
  }

  *&a1[v7] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

void *sub_22AE12D68(_OWORD *a1)
{
  v4 = v1[1];
  v3 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  if (v4 | v5)
  {
    if (v5)
    {
      v10 = v1[4];
    }

    else
    {
      v10 = 0;
    }

    if (v4)
    {
      v11 = v3;
    }

    else
    {
      v11 = 0;
    }

    v12 = swift_allocObject();
    v13 = a1[2];
    *(v12 + 16) = a1[1];
    *(v12 + 32) = v13;
    *(v12 + 48) = a1[3];
    *(v12 + 64) = v4;
    *(v12 + 72) = v11;
    *(v12 + 80) = v5;
    *(v12 + 88) = v10;
    v9 = &unk_22AE81020;
  }

  else
  {
    v7 = swift_allocObject();
    v8 = a1[2];
    v7[1] = a1[1];
    v7[2] = v8;
    v7[3] = a1[3];
    v9 = &unk_22AE81010;
  }

  v14 = v9;
  sub_22ADF69C0(v4);
  sub_22ADF69C0(v5);
  return v14;
}

uint64_t HierarchicalStateMachine.__allocating_init(stateValueType:eventType:delegateEventType:builder:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(__int128 *__return_ptr, uint64_t))
{
  v6 = v4[11];
  v7 = v4[12];
  v8 = v4[13];
  v9 = v4[14];
  v10 = v4[15];
  *&v27 = v4[10];
  *(&v27 + 1) = v6;
  v11 = v27;
  *&v28 = v7;
  *(&v28 + 1) = v8;
  *&v29 = v9;
  *(&v29 + 1) = v10;
  v12 = type metadata accessor for HierarchicalStateMachine.RootState();
  v13 = *(*(v12 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v12 - 8, v14);
  v17 = (&v24[-1] - v16);
  a4(&v27, v15);
  v25[2] = v29;
  v25[3] = v30;
  v26 = v31;
  v25[0] = v27;
  v25[1] = v28;
  v18 = v11;
  v24[0] = v11;
  v24[1] = v6;
  v24[2] = v7;
  v24[3] = v8;
  v24[4] = v9;
  v24[5] = v10;
  v19 = type metadata accessor for HierarchicalStateMachine.RootState.RootStateBuilder.Components();
  v20 = *(v19 - 8);
  (*(v20 + 16))(v24, &v27, v19);
  sub_22AE0CC50(v25, v18, v6, v7, v8, v9, v10, v17);
  v21 = HierarchicalStateMachine.__allocating_init(rootState:)(v17);
  (*(v20 + 8))(&v27, v19);
  return v21;
}

uint64_t HierarchicalStateMachine.__allocating_init(initialValue:eventType:delegateEventType:builder:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(__int128 *__return_ptr, uint64_t))
{
  v36 = a4;
  v38 = a1;
  v7 = v4[10];
  v6 = v4[11];
  v8 = v4[12];
  v9 = v4[13];
  v10 = v4[15];
  v37 = v4[14];
  *&v44 = v7;
  *(&v44 + 1) = v6;
  v11 = v6;
  *&v45 = v8;
  *(&v45 + 1) = v9;
  v12 = v8;
  v13 = v9;
  *&v46 = v37;
  *(&v46 + 1) = v10;
  v35 = v10;
  v14 = type metadata accessor for HierarchicalStateMachine.RootState();
  v15 = *(*(v14 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v14 - 8, v16);
  v40 = (&v34 - v18);
  v39 = *(v7 - 8);
  v19 = v39;
  v20 = *(v39 + 64);
  v22 = MEMORY[0x28223BE20](v17, v21);
  v24 = &v34 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36(&v44, v22);
  (*(v19 + 16))(v24, a1, v7);
  v42[2] = v46;
  v42[3] = v47;
  v43 = v48;
  v42[0] = v44;
  v42[1] = v45;
  v41[0] = v7;
  v25 = v11;
  v41[1] = v11;
  v26 = v12;
  v41[2] = v12;
  v27 = v13;
  v41[3] = v13;
  v28 = v37;
  v41[4] = v37;
  v41[5] = v10;
  v29 = type metadata accessor for HierarchicalStateMachine.RootState.RootStateBuilder.Components();
  v30 = *(v29 - 8);
  (*(v30 + 16))(v41, &v44, v29);
  v31 = v40;
  sub_22AE0CC50(v42, v7, v25, v26, v27, v28, v35, v40);
  v32 = HierarchicalStateMachine.__allocating_init(initialValue:rootState:)(v24, v31);
  (*(v30 + 8))(&v44, v29);
  (*(v39 + 8))(v38, v7);
  return v32;
}

uint64_t static HierarchicalStateMachine.makeStartedMachine(initialValue:eventType:delegateEventType:builder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](sub_22AE13310, 0, 0);
}

uint64_t sub_22AE13310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 48);
  v5 = *(v3 + 56);
  *(v3 + 64) = HierarchicalStateMachine.__allocating_init(stateValueType:eventType:delegateEventType:builder:)(a1, a2, a3, *(v3 + 40));
  v6 = swift_task_alloc();
  *(v3 + 72) = v6;
  *v6 = v3;
  v6[1] = sub_22AE133BC;
  v7 = *(v3 + 16);

  return HierarchicalStateMachine.start(with:)(v7);
}

uint64_t sub_22AE133BC()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v6 = *v0;

  v3 = *(v6 + 8);
  v4 = *(v1 + 64);

  return v3(v4);
}

uint64_t sub_22AE134C8(uint64_t *a1, _OWORD *a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[4];
  v28 = a1[3];
  v29 = a1[6];
  v32 = a1[7];
  v30 = a1[5];
  v31 = a1[8];
  v36 = *a1;

  v33 = a2[1];
  v34 = a2[2];
  v35 = a2[3];
  _s4NodeOMa();
  sub_22AE76BB4();
  swift_getWitnessTable();
  sub_22AE76B84();
  v7 = v2[1];
  v8 = v7;
  v9 = v7;
  v10 = v2[2];
  if (!v7)
  {
    sub_22ADF69C0(v4);
    v8 = v2[1];
    v11 = v2[2];
    v9 = v4;
    v10 = v5;
  }

  sub_22ADF69C0(v7);
  sub_22ADF73A0(v8);
  v2[1] = v9;
  v2[2] = v10;
  v12 = v2[3];
  v13 = v12;
  v14 = v12;
  v15 = v2[4];
  if (!v12)
  {
    v14 = v28;
    sub_22ADF69C0(v28);
    v13 = v2[3];
    v16 = v2[4];
    v15 = v6;
  }

  sub_22ADF69C0(v12);
  sub_22ADF73A0(v13);
  v2[3] = v14;
  v2[4] = v15;
  v17 = v2[5];
  v18 = v17;
  v19 = v17;
  v20 = v2[6];
  if (!v17)
  {
    v20 = v29;
    v19 = v30;
    sub_22ADF69C0(v30);
    v18 = v2[5];
    v21 = v2[6];
  }

  sub_22ADF69C0(v17);
  sub_22ADF73A0(v18);
  v2[5] = v19;
  v2[6] = v20;
  v22 = v2[7];
  v23 = v22;
  v24 = v22;
  v25 = v2[8];
  if (!v22)
  {
    v25 = v31;
    v24 = v32;
    sub_22ADF69C0(v32);
    v23 = v2[7];
    v26 = v2[8];
  }

  sub_22ADF69C0(v22);
  result = sub_22ADF73A0(v23);
  v2[7] = v24;
  v2[8] = v25;
  return result;
}

uint64_t sub_22AE136C0(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_22ADEE1DC;

  return v6();
}

uint64_t sub_22AE137A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 104) = a7;
  *(v8 + 112) = a8;
  *(v8 + 88) = a5;
  *(v8 + 96) = a6;
  *(v8 + 72) = a3;
  *(v8 + 80) = a4;
  *(v8 + 56) = v16;
  *(v8 + 64) = a1;
  *(v8 + 16) = a7;
  *(v8 + 24) = a8;
  *(v8 + 32) = v14;
  *(v8 + 48) = v15;
  v9 = type metadata accessor for HierarchicalStateMachine.StateTransition();
  *(v8 + 120) = v9;
  v10 = *(v9 - 8);
  *(v8 + 128) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 136) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22AE13894, 0, 0);
}

uint64_t sub_22AE13894()
{
  (*(v0[16] + 16))(v0[17], v0[8], v0[15]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v14 = v0[11];
      if (v14)
      {
        v15 = v0[12];
        v16 = v0[11];
        v21 = (v14 + *v14);
        v17 = v14[1];
        v6 = swift_task_alloc();
        v0[19] = v6;
        *v6 = v0;
        v7 = sub_22AE13CEC;
        goto LABEL_9;
      }

      goto LABEL_12;
    }
  }

  else if (!EnumCaseMultiPayload)
  {
    v2 = v0[9];
    if (v2)
    {
      v3 = v0[10];
      v4 = v0[9];
      v21 = (v2 + *v2);
      v5 = v2[1];
      v6 = swift_task_alloc();
      v0[18] = v6;
      *v6 = v0;
      v7 = sub_22AE13B78;
LABEL_9:
      v6[1] = v7;

      return v21();
    }

LABEL_12:
    (*(v0[16] + 8))(v0[17], v0[15]);
    goto LABEL_13;
  }

  v8 = v0[17];
  v10 = v0[13];
  v9 = v0[14];
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v12 = *(TupleTypeMetadata3 + 48);
  v13 = *(*(v10 - 8) + 8);
  v13(v8 + *(TupleTypeMetadata3 + 64), v10);
  (*(*(v9 - 8) + 8))(v8 + v12, v9);
  v13(v8, v10);
LABEL_13:
  v19 = v0[17];

  v20 = v0[1];

  return v20();
}

uint64_t sub_22AE13B78()
{
  v1 = *(*v0 + 144);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22AE13C74, 0, 0);
}

uint64_t sub_22AE13C74()
{
  (*(v0[16] + 8))(v0[17], v0[15]);
  v1 = v0[17];

  v2 = v0[1];

  return v2();
}

uint64_t sub_22AE13CEC()
{
  v1 = *(*v0 + 152);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22AE1858C, 0, 0);
}

uint64_t static HierarchicalStateMachine.RootState.RootStateBuilder.buildBlock(_:)()
{
  _s4NodeOMa();
  sub_22AE76A04();
  type metadata accessor for HierarchicalStateMachine.RootState.RootStateBuilder.Components();
  sub_22AE76BB4();
  swift_getWitnessTable();
  return sub_22AE76B04();
}

uint64_t sub_22AE13F10(uint64_t a1, uint64_t *a2)
{
  v6 = v2[1];
  v7 = v2[2];
  v8 = v2[3];
  v4 = type metadata accessor for HierarchicalStateMachine.RootState.RootStateBuilder.Components();
  return sub_22AE134C8(a2, v4);
}

double static HierarchicalStateMachine.RootState.RootStateBuilder.buildExpression(_:)@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  return sub_22AE14154(a1, a2, a3, a4, a5, a6, type metadata accessor for HierarchicalStateMachine.RootState.BuilderTypes.State, a7, sub_22AE13FC0);
}

{
  return sub_22AE14154(a1, a2, a3, a4, a5, a6, type metadata accessor for HierarchicalStateMachine.RootState.BuilderTypes.CompositeState, a7, sub_22AE142A8);
}

uint64_t sub_22AE13FC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 + 40);
  v7 = *(a1 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D8B0ED8, &qword_22AE81000);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v10 = (a2 + *(TupleTypeMetadata3 + 48));
  v11 = (a2 + *(TupleTypeMetadata3 + 64));
  (*(*(AssociatedTypeWitness - 8) + 16))(a2, v3, AssociatedTypeWitness);
  v12 = *(a1 + 72);
  v13 = (v3 + *(a1 + 68));
  v14 = v13[1];
  *v10 = *v13;
  v10[1] = v14;
  v15 = v3 + v12;
  v16 = *(v3 + v12);
  v17 = *(v15 + 8);
  *v11 = v16;
  v11[1] = v17;
  v19 = *(a1 + 24);
  v20 = *(a1 + 48);
  _s4NodeOMa();
  swift_storeEnumTagMultiPayload();
}

double sub_22AE14154@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t (*a7)(void, uint64_t *)@<X7>, uint64_t a8@<X8>, void (*a9)(uint64_t))
{
  v23 = a1;
  v24 = a2;
  v25 = a3;
  v26 = a4;
  v27 = a5;
  v28 = a6;
  v16 = _s4NodeOMa();
  sub_22AE76EF4();
  v17 = *(*(v16 - 8) + 72);
  v18 = *(*(v16 - 8) + 80);
  swift_allocObject();
  v19 = sub_22AE76B34();
  v23 = a1;
  v24 = a2;
  v25 = a3;
  v26 = a4;
  v27 = a5;
  v28 = a6;
  v20 = a7(0, &v23);
  a9(v20);
  sub_22AE76BB4();
  *a8 = v19;
  result = 0.0;
  *(a8 + 8) = 0u;
  *(a8 + 24) = 0u;
  *(a8 + 40) = 0u;
  *(a8 + 56) = 0u;
  return result;
}

uint64_t sub_22AE142A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 40);
  v22 = *(a1 + 32);
  v23 = *(a1 + 24);
  v20 = *(a1 + 56);
  v21 = *(a1 + 48);
  _s4NodeO13NodeStateTypeOMa();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D8B0ED8, &qword_22AE81000);
  _s4NodeOMa();
  sub_22AE76BB4();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v19 = swift_allocBox();
  v8 = v7;
  v9 = (v7 + TupleTypeMetadata[12]);
  v10 = (v7 + TupleTypeMetadata[16]);
  v11 = TupleTypeMetadata[20];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  (*(v13 + 16))(v8, v2, AssociatedTypeWitness);
  (*(v13 + 56))(v8, 0, 1, AssociatedTypeWitness);
  v14 = (v2 + *(a1 + 72));
  v15 = v14[1];
  *v9 = *v14;
  v9[1] = v15;
  v16 = (v2 + *(a1 + 76));
  v17 = v16[1];
  *v10 = *v16;
  v10[1] = v17;
  *(v8 + v11) = *(v2 + *(a1 + 68));
  *a2 = v19;
  _s4NodeOMa();
  swift_storeEnumTagMultiPayload();
}

double static HierarchicalStateMachine.RootState.RootStateBuilder.buildExpression(_:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];

  _s4NodeOMa();
  *a2 = sub_22AE76A04();
  *(a2 + 8) = v4;
  *(a2 + 16) = v3;
  result = 0.0;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  return result;
}

{
  v4 = *a1;
  v3 = a1[1];

  _s4NodeOMa();
  *a2 = sub_22AE76A04();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = v4;
  *(a2 + 32) = v3;
  result = 0.0;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  return result;
}

{
  v4 = *a1;
  v3 = a1[1];

  _s4NodeOMa();
  *a2 = sub_22AE76A04();
  result = 0.0;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = v4;
  *(a2 + 48) = v3;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  return result;
}

{
  v4 = *a1;
  v3 = a1[1];

  _s4NodeOMa();
  *a2 = sub_22AE76A04();
  result = 0.0;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = v4;
  *(a2 + 64) = v3;
  return result;
}

uint64_t sub_22AE1478C(uint64_t *a1, _OWORD *a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v18 = a1[3];
  v6 = a1[4];
  v22 = *a1;

  v19 = a2[1];
  v20 = a2[2];
  v21 = a2[3];
  _s4NodeOMa();
  sub_22AE76BB4();
  swift_getWitnessTable();
  sub_22AE76B84();
  v7 = v2[1];
  v8 = v7;
  v9 = v7;
  v10 = v2[2];
  if (!v7)
  {
    sub_22ADF69C0(v4);
    v8 = v2[1];
    v11 = v2[2];
    v9 = v4;
    v10 = v5;
  }

  sub_22ADF69C0(v7);
  sub_22ADF73A0(v8);
  v2[1] = v9;
  v2[2] = v10;
  v12 = v2[3];
  v13 = v12;
  v14 = v12;
  v15 = v2[4];
  if (!v12)
  {
    v14 = v18;
    sub_22ADF69C0(v18);
    v13 = v2[3];
    v16 = v2[4];
    v15 = v6;
  }

  sub_22ADF69C0(v12);
  result = sub_22ADF73A0(v13);
  v2[3] = v14;
  v2[4] = v15;
  return result;
}

uint64_t static HierarchicalStateMachine.RootState.CompositeStateBuilder.buildBlock(_:)()
{
  _s4NodeOMa();
  sub_22AE76A04();
  type metadata accessor for HierarchicalStateMachine.RootState.CompositeStateBuilder.Components();
  sub_22AE76BB4();
  swift_getWitnessTable();
  return sub_22AE76B04();
}

uint64_t sub_22AE149F8(uint64_t a1, uint64_t a2)
{
  v5 = *a2;
  v2 = *(a2 + 24);
  v6 = *(a2 + 8);
  v7 = v2;
  v3 = type metadata accessor for HierarchicalStateMachine.RootState.CompositeStateBuilder.Components();
  return sub_22AE1478C(&v5, v3);
}

double static HierarchicalStateMachine.RootState.CompositeStateBuilder.buildExpression(_:)@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  return sub_22AE14AF0(a1, a2, a3, a4, a5, a6, type metadata accessor for HierarchicalStateMachine.RootState.BuilderTypes.State, a7, sub_22AE13FC0);
}

{
  return sub_22AE14AF0(a1, a2, a3, a4, a5, a6, type metadata accessor for HierarchicalStateMachine.RootState.BuilderTypes.CompositeState, a7, sub_22AE142A8);
}

double sub_22AE14AF0@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t (*a7)(void, uint64_t *)@<X7>, uint64_t a8@<X8>, void (*a9)(uint64_t))
{
  v23 = a1;
  v24 = a2;
  v25 = a3;
  v26 = a4;
  v27 = a5;
  v28 = a6;
  v16 = _s4NodeOMa();
  sub_22AE76EF4();
  v17 = *(*(v16 - 8) + 72);
  v18 = *(*(v16 - 8) + 80);
  swift_allocObject();
  v19 = sub_22AE76B34();
  v23 = a1;
  v24 = a2;
  v25 = a3;
  v26 = a4;
  v27 = a5;
  v28 = a6;
  v20 = a7(0, &v23);
  a9(v20);
  sub_22AE76BB4();
  *a8 = v19;
  result = 0.0;
  *(a8 + 8) = 0u;
  *(a8 + 24) = 0u;
  return result;
}

uint64_t static HierarchicalStateMachine.RootState.CompositeStateBuilder.buildExpression(_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];

  _s4NodeOMa();
  result = sub_22AE76A04();
  *a2 = result;
  a2[1] = v4;
  a2[3] = 0;
  a2[4] = 0;
  a2[2] = v3;
  return result;
}

{
  v4 = *a1;
  v3 = a1[1];

  _s4NodeOMa();
  result = sub_22AE76A04();
  *a2 = result;
  a2[1] = 0;
  a2[2] = 0;
  a2[3] = v4;
  a2[4] = v3;
  return result;
}

uint64_t sub_22AE14D64(uint64_t *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = *v1;
  v5 = *v1;
  v6 = *v1;
  v7 = v1[1];
  if (!*v1)
  {
    v6 = *a1;
    v7 = a1[1];
    sub_22ADF69C0(*a1);
    v5 = *v1;
    v8 = v1[1];
  }

  sub_22ADF69C0(v4);
  sub_22ADF73A0(v5);
  *v1 = v6;
  v1[1] = v7;
  v9 = v1[2];
  v10 = v9;
  v11 = v9;
  v12 = v1[3];
  if (!v9)
  {
    sub_22ADF69C0(v2);
    v10 = v1[2];
    v13 = v1[3];
    v11 = v2;
    v12 = v3;
  }

  sub_22ADF69C0(v9);
  result = sub_22ADF73A0(v10);
  v1[2] = v11;
  v1[3] = v12;
  return result;
}

uint64_t static HierarchicalStateMachine.RootState.StateBuilder.buildBlock(_:)()
{
  type metadata accessor for HierarchicalStateMachine.RootState.StateBuilder.Components();
  sub_22AE76BB4();
  swift_getWitnessTable();
  return sub_22AE76B04();
}

uint64_t sub_22AE14F00(uint64_t a1, _OWORD *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  type metadata accessor for HierarchicalStateMachine.RootState.StateBuilder.Components();
  return sub_22AE14D64(v4);
}

uint64_t static HierarchicalStateMachine.RootState.StateBuilder.buildExpression(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
  a2[2] = 0;
  a2[3] = 0;
}

{
  v2 = *a1;
  v3 = a1[1];
  *a2 = 0;
  a2[1] = 0;
  a2[2] = v2;
  a2[3] = v3;
}

uint64_t HierarchicalStateMachine.RootState.BuilderTypes.State.init(_:eventHandler:stateTransitionHandler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a6, a1, AssociatedTypeWitness);
  result = type metadata accessor for HierarchicalStateMachine.RootState.BuilderTypes.State();
  v12 = (a6 + *(result + 68));
  *v12 = a2;
  v12[1] = a3;
  v13 = (a6 + *(result + 72));
  *v13 = a4;
  v13[1] = a5;
  return result;
}

void *HierarchicalStateMachine.RootState.BuilderTypes.State.init(_:builder:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t *__return_ptr)@<X1>, uint64_t a3@<X3>, void *a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  a2(&v37);
  v17 = v37;
  v16 = v38;
  v34 = v39;
  v35 = v40;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v36 = a8;
  (*(*(AssociatedTypeWitness - 8) + 32))(a8, a1, AssociatedTypeWitness);
  if (v17)
  {
    v19 = a5;
    v20 = v17;
    v21 = v16;
    v22 = a9;
  }

  else
  {
    v21 = swift_allocObject();
    v21[2] = a3;
    v21[3] = a4;
    v21[4] = a5;
    v21[5] = a6;
    v22 = a9;
    v21[6] = a7;
    v21[7] = a9;
    v19 = a5;
    v20 = &unk_22AE809E0;
  }

  v32 = a6;
  v37 = a3;
  v38 = a4;
  v39 = v19;
  v40 = a6;
  v41 = a7;
  v42 = v22;
  v23 = a4;
  v24 = a3;
  v25 = v22;
  v33 = type metadata accessor for HierarchicalStateMachine.RootState.BuilderTypes.State();
  v26 = (v36 + *(v33 + 68));
  *v26 = v20;
  v26[1] = v21;
  sub_22ADF69C0(v17);
  if (v34)
  {
    sub_22ADF69C0(v34);
    sub_22ADF73A0(v17);
    sub_22ADF73A0(v34);
    v27 = swift_allocObject();
    v27[2] = a3;
    v27[3] = v23;
    v27[4] = v19;
    v27[5] = v32;
    v27[6] = a7;
    v27[7] = v25;
    v27[8] = v34;
    v27[9] = v35;
    v28 = &unk_22AE80A10;
    v29 = v32;
  }

  else
  {
    sub_22ADF73A0(v17);
    sub_22ADF73A0(0);
    v27 = swift_allocObject();
    v27[2] = a3;
    v27[3] = v23;
    v29 = v32;
    v27[4] = v19;
    v27[5] = v32;
    v27[6] = a7;
    v27[7] = v25;
    v28 = &unk_22AE809F0;
  }

  result = swift_allocObject();
  result[2] = v24;
  result[3] = v23;
  result[4] = v19;
  result[5] = v29;
  result[6] = a7;
  result[7] = v25;
  result[8] = v28;
  result[9] = v27;
  v31 = (v36 + *(v33 + 72));
  *v31 = &unk_22AE80A00;
  v31[1] = result;
  return result;
}

uint64_t sub_22AE15308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_22AE18584, 0, 0);
}

uint64_t sub_22AE1532C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v10 = (a4 + *a4);
  v7 = a4[1];
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_22ADEE1DC;

  return v10(a2, a3);
}

uint64_t sub_22AE15430(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_22ADEE1DC;

  return v7();
}

void *HierarchicalStateMachine.RootState.BuilderTypes.CompositeState.init(_:eventHandler:stateTransitionHandler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = *(AssociatedTypeWitness - 8);
  (*(v18 + 16))(a9, a1, AssociatedTypeWitness);
  v19 = a8;
  _s4NodeOMa();
  v20 = sub_22AE76B64();
  (*(v18 + 8))(a1, AssociatedTypeWitness);
  v21 = type metadata accessor for HierarchicalStateMachine.RootState.BuilderTypes.CompositeState();
  *(a9 + v21[17]) = v20;
  v22 = swift_allocObject();
  v22[2] = a6;
  v22[3] = a7;
  v22[4] = v19;
  v22[5] = a10;
  v22[6] = a11;
  v22[7] = a12;
  v22[8] = a2;
  v22[9] = a3;
  v23 = (a9 + v21[18]);
  *v23 = &unk_22AE80A20;
  v23[1] = v22;
  result = swift_allocObject();
  result[2] = a6;
  result[3] = a7;
  result[4] = v19;
  result[5] = a10;
  result[6] = a11;
  result[7] = a12;
  result[8] = a4;
  result[9] = a5;
  v25 = (a9 + v21[19]);
  *v25 = &unk_22AE80A30;
  v25[1] = result;
  return result;
}

uint64_t sub_22AE15704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  v11 = (a5 + *a5);
  v8 = a5[1];
  v9 = swift_task_alloc();
  *(v5 + 16) = v9;
  *v9 = v5;
  v9[1] = sub_22ADEE1DC;

  return v11(a1, a2);
}

uint64_t sub_22AE1580C(uint64_t a1, uint64_t a2, int *a3)
{
  v8 = (a3 + *a3);
  v5 = a3[1];
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_22ADEE1DC;

  return v8(a1);
}

void *HierarchicalStateMachine.RootState.BuilderTypes.CompositeState.init(_:builder:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t *__return_ptr)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  a2(&v36);
  v16 = v36;
  v17 = v37;
  v32 = v38;
  v33 = v39;
  v34 = v40;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = a1;
  v20 = a4;
  v21 = a8;
  (*(*(AssociatedTypeWitness - 8) + 32))(a8, v19, AssociatedTypeWitness);
  v36 = a3;
  v37 = v20;
  v38 = a5;
  v39 = a6;
  v40 = a7;
  v41 = a9;
  v22 = type metadata accessor for HierarchicalStateMachine.RootState.BuilderTypes.CompositeState();
  v35 = v21;
  *(v21 + v22[17]) = v16;
  if (v17)
  {
    v23 = v17;
    v24 = v32;
  }

  else
  {
    v24 = swift_allocObject();
    v24[2] = a3;
    v24[3] = v20;
    v24[4] = a5;
    v24[5] = a6;
    v24[6] = a7;
    v24[7] = a9;
    v23 = &unk_22AE80A40;
  }

  v25 = (v21 + v22[18]);
  *v25 = v23;
  v25[1] = v24;

  sub_22ADF69C0(v17);
  if (v33)
  {
    sub_22ADF69C0(v33);

    sub_22ADF73A0(v17);
    sub_22ADF73A0(v33);
    v26 = swift_allocObject();
    v27 = a9;
    v26[2] = a3;
    v26[3] = v20;
    v26[4] = a5;
    v26[5] = a6;
    v26[6] = a7;
    v26[7] = a9;
    v26[8] = v33;
    v26[9] = v34;
    v28 = &unk_22AE80A60;
  }

  else
  {

    sub_22ADF73A0(v17);
    sub_22ADF73A0(0);
    v26 = swift_allocObject();
    v27 = a9;
    v26[2] = a3;
    v26[3] = v20;
    v26[4] = a5;
    v26[5] = a6;
    v26[6] = a7;
    v26[7] = a9;
    v28 = &unk_22AE80A50;
  }

  v29 = v28;
  result = swift_allocObject();
  result[2] = a3;
  result[3] = v20;
  result[4] = a5;
  result[5] = a6;
  result[6] = a7;
  result[7] = v27;
  result[8] = v29;
  result[9] = v26;
  v31 = (v35 + v22[19]);
  *v31 = &unk_22AE80A58;
  v31[1] = result;
  return result;
}

uint64_t HierarchicalStateMachine.RootState.BuilderTypes.OnStateTransition.stateTransitionHandler.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t HierarchicalStateMachine.RootState.BuilderTypes.OnStateTransition.stateTransitionHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

void *sub_22AE15CD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  result = swift_allocObject();
  result[2] = a3;
  result[3] = a4;
  result[4] = a5;
  result[5] = a6;
  result[6] = a7;
  result[7] = a8;
  result[8] = a1;
  result[9] = a2;
  *a9 = a11;
  a9[1] = result;
  return result;
}

uint64_t sub_22AE15D54(uint64_t a1, uint64_t a2, int *a3)
{
  v8 = (a3 + *a3);
  v5 = a3[1];
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_22ADEE1E0;

  return v8(a1);
}

uint64_t HierarchicalStateMachine.RootState.BuilderTypes.OnStateTransition.init(stateTransitionHandler:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_22AE15E54(uint64_t a1, uint64_t a2, int *a3)
{
  v8 = (a3 + *a3);
  v5 = a3[1];
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_22ADEE1DC;

  return v8(a2);
}

uint64_t sub_22AE15F4C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_22ADEE1DC;

  return v6();
}

uint64_t sub_22AE16064@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v7 = a2 + a3;
  v9 = *a1;
  v8 = a1[1];
  v10 = swift_allocObject();
  v11 = *(v7 - 32);
  *(v10 + 16) = *(v7 - 48);
  *(v10 + 32) = v11;
  *(v10 + 48) = *(v7 - 16);
  *(v10 + 64) = v9;
  *(v10 + 72) = v8;
  *a5 = a4;
  a5[1] = v10;
}

uint64_t sub_22AE160DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  v12 = (a5 + *a5);
  v9 = a5[1];
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_22ADEE1DC;

  return v12(a2, a3, a4);
}

uint64_t sub_22AE161EC(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a3 + a4;
  v10 = *a1;
  v9 = a1[1];
  v11 = swift_allocObject();
  v12 = *(v8 - 32);
  *(v11 + 16) = *(v8 - 48);
  *(v11 + 32) = v12;
  *(v11 + 48) = *(v8 - 16);
  *(v11 + 64) = v10;
  *(v11 + 72) = v9;
  v13 = a2[1];

  *a2 = a6;
  a2[1] = v11;
  return result;
}

uint64_t sub_22AE16268(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_22ADEE1DC;

  return v8();
}

uint64_t sub_22AE16398(int *a1)
{
  v5 = (a1 + *a1);
  v2 = a1[1];
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22ADEE1DC;

  return v5();
}

uint64_t sub_22AE164A0(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *a1;
  v8 = a1[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = v8;
  v11 = a2[1];

  *a2 = a6;
  a2[1] = v10;
  return result;
}

uint64_t sub_22AE16558(uint64_t a1, uint64_t a2)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  v7 = v2[6];
  v8 = v2[7];
  return sub_22AE149F8(a1, a2);
}

uint64_t sub_22AE16594(uint64_t a1, _OWORD *a2)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  v7 = v2[6];
  v8 = v2[7];
  return sub_22AE14F00(a1, a2);
}

uint64_t sub_22AE165D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4[2];
  v10 = v4[3];
  v11 = v4[4];
  v12 = v4[5];
  v13 = v4[6];
  v14 = v4[7];
  v15 = swift_task_alloc();
  *(v5 + 16) = v15;
  *v15 = v5;
  v15[1] = sub_22ADEE1DC;

  return sub_22AE15308(a1, a2, a3, a4, v9);
}

uint64_t sub_22AE166C4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v6 = v0[7];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_22ADEE1DC;

  return sub_22ADF6E7C();
}

void sub_22AE167B4()
{
  v2 = v0[3];
  v10 = v0[2];
  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[6];
  v5 = v0[7];
  v8 = v0[8];
  v7 = v0[9];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_22ADEE1DC;

  JUMPOUT(0x22AE15430);
}

void sub_22AE168A8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v9 = *(v0 + 40);
  v6 = *(v0 + 56);
  v5 = *(v0 + 64);
  v7 = *(v0 + 72);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_22ADEE1DC;

  JUMPOUT(0x22AE1532CLL);
}

uint64_t sub_22AE169B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 16);
  v10 = *(v4 + 24);
  v17 = *(v4 + 32);
  v12 = *(v4 + 48);
  v11 = *(v4 + 56);
  v14 = *(v4 + 64);
  v13 = *(v4 + 72);
  v15 = swift_task_alloc();
  *(v5 + 16) = v15;
  *v15 = v5;
  v15[1] = sub_22ADEE1DC;

  return sub_22AE15704(a1, a2, a3, a4, v14);
}

uint64_t sub_22AE16ABC(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v10 = v2[6];
  v9 = v2[7];
  v12 = v2[8];
  v11 = v2[9];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_22ADEE1DC;

  return sub_22AE1580C(a1, a2, v12);
}

uint64_t sub_22AE16BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4[2];
  v10 = v4[3];
  v11 = v4[4];
  v12 = v4[5];
  v13 = v4[6];
  v14 = v4[7];
  v15 = swift_task_alloc();
  *(v5 + 16) = v15;
  *v15 = v5;
  v15[1] = sub_22ADEE1DC;

  return sub_22AE0CF74(a1, a2, a3, a4, v9);
}

uint64_t sub_22AE16C9C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v6 = v0[7];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_22ADEE1DC;

  return sub_22ADF6E7C();
}

uint64_t sub_22AE16D8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 16);
  v10 = *(v4 + 24);
  v17 = *(v4 + 32);
  v12 = *(v4 + 48);
  v11 = *(v4 + 56);
  v14 = *(v4 + 64);
  v13 = *(v4 + 72);
  v15 = swift_task_alloc();
  *(v5 + 16) = v15;
  *v15 = v5;
  v15[1] = sub_22ADEE1DC;

  return sub_22AE15704(a1, a2, a3, a4, v14);
}

uint64_t sub_22AE16E90(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v10 = v2[6];
  v9 = v2[7];
  v12 = v2[8];
  v11 = v2[9];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_22ADEE1DC;

  return sub_22AE15D54(a1, a2, v12);
}

uint64_t keypath_get_61Tm@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X4>, void *a3@<X8>)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  *a3 = a2;
  a3[1] = v7;
}

uint64_t sub_22AE17028()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_22AE17088(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_22AE170D0(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_22AE17150()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_22AE171A0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_22AE171E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22AE17260()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_22AE1729C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t sub_22AE172F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_22AE1734C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 16);
  result = swift_getAssociatedTypeWitness();
  if (v4 <= 0x3F)
  {
    result = sub_22AE1777C();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22AE173E8(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 40);
  v6 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 84);
  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (v10 >= a2)
  {
    goto LABEL_28;
  }

  v12 = ((((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v13 = v12 & 0xFFFFFFF8;
  if ((v12 & 0xFFFFFFF8) != 0)
  {
    v14 = 2;
  }

  else
  {
    v14 = a2 - v10 + 1;
  }

  if (v14 >= 0x10000)
  {
    v15 = 4;
  }

  else
  {
    v15 = 2;
  }

  if (v14 < 0x100)
  {
    v15 = 1;
  }

  if (v14 >= 2)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v17 = *(a1 + v12);
      if (!v17)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v17 = *(a1 + v12);
      if (!v17)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v16 || (v17 = *(a1 + v12)) == 0)
  {
LABEL_28:
    if (v9 < 0x7FFFFFFF)
    {
      v21 = *((a1 + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v21 >= 0xFFFFFFFF)
      {
        LODWORD(v21) = -1;
      }

      return (v21 + 1);
    }

    else
    {
      v20 = *(v8 + 48);

      return v20(a1);
    }
  }

  v19 = v17 - 1;
  if (v13)
  {
    v19 = 0;
    LODWORD(v13) = *a1;
  }

  return v10 + (v13 | v19) + 1;
}

void sub_22AE17584(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 40);
  v8 = *(a4 + 16);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 64);
  if (v10 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  v13 = ((((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v12 >= a3)
  {
    v16 = 0;
    v17 = a2 - v12;
    if (a2 <= v12)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (((((v11 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = a3 - v12 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    v17 = a2 - v12;
    if (a2 <= v12)
    {
LABEL_17:
      if (v16 > 1)
      {
        if (v16 != 2)
        {
          *(a1 + v13) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_33;
        }

        *(a1 + v13) = 0;
      }

      else if (v16)
      {
        *(a1 + v13) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return;
      }

LABEL_33:
      if (v10 < 0x7FFFFFFF)
      {
        v21 = ((a1 + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v21 = a2 & 0x7FFFFFFF;
          v21[1] = 0;
        }

        else
        {
          *v21 = (a2 - 1);
        }
      }

      else
      {
        v20 = *(v9 + 56);

        v20(a1, a2);
      }

      return;
    }
  }

  if (((((v11 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v18 = v17;
  }

  else
  {
    v18 = 1;
  }

  if (((((v11 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v19 = ~v12 + a2;
    bzero(a1, v13);
    *a1 = v19;
  }

  if (v16 > 1)
  {
    if (v16 == 2)
    {
      *(a1 + v13) = v18;
    }

    else
    {
      *(a1 + v13) = v18;
    }
  }

  else if (v16)
  {
    *(a1 + v13) = v18;
  }
}

unint64_t sub_22AE1777C()
{
  result = qword_27D8B1788[0];
  if (!qword_27D8B1788[0])
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, qword_27D8B1788);
  }

  return result;
}

unint64_t sub_22AE177CC(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 16);
  result = swift_getAssociatedTypeWitness();
  if (v5 <= 0x3F)
  {
    v8 = *(a1 + 24);
    v9 = *(a1 + 48);
    _s4NodeOMa();
    result = sub_22AE76BB4();
    if (v6 <= 0x3F)
    {
      result = sub_22AE1777C();
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_22AE178B8(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 40);
  v6 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 84);
  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (v10 >= a2)
  {
    goto LABEL_28;
  }

  v12 = ((((((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v13 = v12 & 0xFFFFFFF8;
  if ((v12 & 0xFFFFFFF8) != 0)
  {
    v14 = 2;
  }

  else
  {
    v14 = a2 - v10 + 1;
  }

  if (v14 >= 0x10000)
  {
    v15 = 4;
  }

  else
  {
    v15 = 2;
  }

  if (v14 < 0x100)
  {
    v15 = 1;
  }

  if (v14 >= 2)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v17 = *(a1 + v12);
      if (!v17)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v17 = *(a1 + v12);
      if (!v17)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v16 || (v17 = *(a1 + v12)) == 0)
  {
LABEL_28:
    if (v9 < 0x7FFFFFFF)
    {
      v21 = *((a1 + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v21 >= 0xFFFFFFFF)
      {
        LODWORD(v21) = -1;
      }

      return (v21 + 1);
    }

    else
    {
      v20 = *(v8 + 48);

      return v20(a1);
    }
  }

  v19 = v17 - 1;
  if (v13)
  {
    v19 = 0;
    LODWORD(v13) = *a1;
  }

  return v10 + (v13 | v19) + 1;
}

void sub_22AE17A5C(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 40);
  v8 = *(a4 + 16);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 64);
  if (v10 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  v13 = ((((((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v12 >= a3)
  {
    v16 = 0;
    v17 = a2 - v12;
    if (a2 <= v12)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (((((((v11 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = a3 - v12 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    v17 = a2 - v12;
    if (a2 <= v12)
    {
LABEL_17:
      if (v16 > 1)
      {
        if (v16 != 2)
        {
          *(a1 + v13) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_33;
        }

        *(a1 + v13) = 0;
      }

      else if (v16)
      {
        *(a1 + v13) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return;
      }

LABEL_33:
      if (v10 < 0x7FFFFFFF)
      {
        v21 = ((a1 + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v22 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v22 = (a2 - 1);
        }

        *v21 = v22;
      }

      else
      {
        v20 = *(v9 + 56);

        v20(a1, a2);
      }

      return;
    }
  }

  if (((((((v11 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v18 = v17;
  }

  else
  {
    v18 = 1;
  }

  if (((((((v11 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v19 = ~v12 + a2;
    bzero(a1, v13);
    *a1 = v19;
  }

  if (v16 > 1)
  {
    if (v16 == 2)
    {
      *(a1 + v13) = v18;
    }

    else
    {
      *(a1 + v13) = v18;
    }
  }

  else if (v16)
  {
    *(a1 + v13) = v18;
  }
}

uint64_t sub_22AE17C58()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_22AE17CAC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_22AE17D00()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_22AE17D54()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_22AE17DD8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22ADEE1DC;

  return sub_22AE16398(v2);
}

uint64_t sub_22AE17E84(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22ADEE1DC;

  return sub_22AE136C0(a1, v5);
}

void sub_22AE17F3C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v9 = *(v0 + 40);
  v6 = *(v0 + 56);
  v5 = *(v0 + 64);
  v7 = *(v0 + 72);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_22ADEE1DC;

  JUMPOUT(0x22AE16268);
}

void sub_22AE18048()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v9 = *(v0 + 32);
  v5 = *(v0 + 48);
  v4 = *(v0 + 56);
  v7 = *(v0 + 64);
  v6 = *(v0 + 72);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_22ADEE1DC;

  JUMPOUT(0x22AE160DCLL);
}

void sub_22AE18150()
{
  v2 = v0[3];
  v11 = v0[2];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v8 = v0[8];
  v7 = v0[9];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_22ADEE1DC;

  JUMPOUT(0x22AE15F4CLL);
}

void sub_22AE18248()
{
  v2 = v0[3];
  v10 = v0[2];
  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[6];
  v5 = v0[7];
  v8 = v0[8];
  v7 = v0[9];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_22ADEE1DC;

  JUMPOUT(0x22AE15E54);
}

uint64_t sub_22AE18340()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v6 = v0[7];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_22ADEE1DC;

  return sub_22AE04D2C();
}

uint64_t sub_22AE18418(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 24);
  v16 = *(v2 + 16);
  v15 = *(v2 + 32);
  v8 = *(v2 + 48);
  v7 = *(v2 + 56);
  v9 = *(v2 + 64);
  v10 = *(v2 + 72);
  v12 = *(v2 + 80);
  v11 = *(v2 + 88);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_22ADEE1E0;

  return sub_22AE137A8(a1, a2, v9, v10, v12, v11, v16, v6);
}

unint64_t StateMachineError.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_22AE76DD4();

  MEMORY[0x231886110](v1, v2);
  MEMORY[0x231886110](41, 0xE100000000000000);
  return 0xD000000000000013;
}

unint64_t sub_22AE1862C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_22AE76DD4();

  MEMORY[0x231886110](v1, v2);
  MEMORY[0x231886110](41, 0xE100000000000000);
  return 0xD000000000000013;
}

uint64_t sub_22AE186B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22AE18700(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_22AE18830(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22AE188A0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_22AE189E0(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_22AE18C48()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B1B20, &qword_22AE81248);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_22AE76FF4();
  qword_27D8B0BC8 = result;
  return result;
}

uint64_t static Flow.flow.getter()
{
  if (qword_27D8B0BD0 != -1)
  {
    swift_once();
  }

  sub_22AE77004();
  return v1;
}

uint64_t sub_22AE18D30()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B1B18, &qword_22AE81240);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_22AE76FF4();
  qword_27D8B0BA8 = result;
  return result;
}

uint64_t sub_22AE18DE8()
{
  sub_22AE76A64();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B1B18, &qword_22AE81240);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_22AE76FF4();
  qword_27D8B0BD8 = result;
  return result;
}

uint64_t sub_22AE18E9C(void *a1, void *a2)
{
  if (*a1 != -1)
  {
    v4 = a2;
    swift_once();
    a2 = v4;
  }

  v2 = *a2;
  sub_22AE77004();
  return v5;
}

uint64_t sub_22AE18EF0()
{
  v0 = sub_22AE768B4();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  if (qword_27D8B0BE0 != -1)
  {
    swift_once();
  }

  sub_22AE77004();
  if (qword_27D8B0BB0 != -1)
  {
    swift_once();
  }

  sub_22AE77004();
  sub_22AE76894();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B1B10, &qword_22AE81238);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_22AE76FF4();
  qword_27D8B0BB8 = result;
  return result;
}

uint64_t sub_22AE19050(void *a1, uint64_t *a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v6 = *a2;
  }
}

uint64_t static Flow.logger.getter()
{
  if (qword_27D8B0BC0 != -1)
  {
    swift_once();
  }

  return sub_22AE77004();
}

uint64_t static Flow.withNewFlow<A>(_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = _s12HMFoundation4FlowO03newB0ySo7HMFFlowCSS_SStFZ_0(a1, a2, a3, a4);
  v5 = sub_22AE76A64();
  v6 = v4;
  static Flow.with<A>(_:subsystem:category:_:)(v4, v5);
}

uint64_t static Flow.with<A>(_:subsystem:category:_:)(uint64_t a1, uint64_t a2)
{
  if (qword_27D8B0BD0 != -1)
  {
    v4 = a1;
    v3 = a2;
    swift_once();
    a1 = v4;
    a2 = v3;
  }

  MEMORY[0x28223BE20](a1, a2);
  return sub_22AE77024();
}

uint64_t static Flow.withNewFlow<A>(_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return MEMORY[0x2822009F8](sub_22AE193B0, 0, 0);
}

uint64_t sub_22AE193B0()
{
  v1 = *(v0 + 72);
  v11 = *(v0 + 56);
  v2 = _s12HMFoundation4FlowO03newB0ySo7HMFFlowCSS_SStFZ_0(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));
  *(v0 + 80) = v2;
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v11;
  v4 = sub_22AE76A64();
  v6 = v5;
  *(v0 + 96) = v5;
  v7 = v2;
  v8 = swift_task_alloc();
  *(v0 + 104) = v8;
  *v8 = v0;
  v8[1] = sub_22AE194F8;
  v9 = *(v0 + 16);
  v13 = *(v0 + 72);

  return static Flow.with<A>(_:subsystem:category:_:)(v9, v2, v4, v6, 0x746C7561666544, 0xE700000000000000, &unk_22AE811C0, v3);
}

uint64_t sub_22AE194F8()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v9 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_22AE19688;
  }

  else
  {
    v6 = v2[11];
    v5 = v2[12];
    v7 = v2[10];

    v4 = sub_22AE19624;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22AE19624()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22AE19688()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];

  v4 = v0[1];
  v5 = v0[14];

  return v4();
}

uint64_t static Flow.with<A>(_:subsystem:category:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = a8;
  v8[11] = v10;
  v8[8] = a6;
  v8[9] = a7;
  v8[6] = a4;
  v8[7] = a5;
  v8[4] = a2;
  v8[5] = a3;
  v8[3] = a1;
  return MEMORY[0x2822009F8](sub_22AE19738, 0, 0);
}

uint64_t sub_22AE19738()
{
  if (qword_27D8B0BD0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 88);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v5 = *(v0 + 40);
  v4 = *(v0 + 48);
  *(v0 + 16) = *(v0 + 32);
  v6 = swift_task_alloc();
  *(v0 + 96) = v6;
  v7 = *(v0 + 72);
  *(v6 + 16) = v1;
  *(v6 + 24) = v3;
  *(v6 + 32) = v2;
  *(v6 + 40) = v5;
  *(v6 + 48) = v4;
  *(v6 + 56) = v7;
  v8 = *(MEMORY[0x277D85A70] + 4);
  v9 = swift_task_alloc();
  *(v0 + 104) = v9;
  *v9 = v0;
  v9[1] = sub_22AE198A8;
  v10 = *(v0 + 24);
  v13 = *(v0 + 88);

  return MEMORY[0x282200908](v10, v0 + 16, &unk_22AE811D8, v6, 0, 0, 0xD000000000000017, 0x800000022AE82D10);
}

uint64_t sub_22AE198A8()
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 96);
  v4 = *v1;
  *(v4 + 112) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22AE199F8, 0, 0);
  }

  else
  {
    v5 = *(v4 + 8);

    return v5();
  }
}

uint64_t static Flow.withChildFlow<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v47 = a6;
  v48 = a5;
  v45 = a3;
  v46 = a4;
  v40 = a1;
  v41 = a2;
  v6 = sub_22AE768B4();
  v43 = *(v6 - 8);
  v44 = v6;
  v7 = *(v43 + 64);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22AE76854();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27D8B0BD0 != -1)
  {
    swift_once();
  }

  sub_22AE77004();
  v17 = v49[0];
  v42 = v10;
  if (!v49[0])
  {
    v17 = [objc_opt_self() untrackedPlaceholderFlow];
  }

  v18 = [objc_opt_self() internalOnlyInitializer];
  v49[0] = 0;
  v49[1] = 0xE000000000000000;
  sub_22AE76DD4();

  strcpy(v49, "[ChildFlow: ");
  BYTE5(v49[1]) = 0;
  HIWORD(v49[1]) = -5120;
  v19 = [v18 UUID];
  sub_22AE76824();

  sub_22AE1C52C();
  v20 = sub_22AE76EE4();
  MEMORY[0x231886110](v20);

  v21 = *(v12 + 8);
  v21(v16, v11);
  MEMORY[0x231886110](0x3A746E6572615020, 0xE900000000000020);
  v22 = [v17 UUID];
  sub_22AE76824();

  v23 = sub_22AE76EE4();
  MEMORY[0x231886110](v23);

  v21(v16, v11);
  MEMORY[0x231886110](8285, 0xE200000000000000);
  MEMORY[0x231886110](v40, v41);
  v25 = v49[0];
  v24 = v49[1];
  if (qword_27D8B0BC0 != -1)
  {
    swift_once();
  }

  v26 = v42;
  sub_22AE77004();

  v27 = sub_22AE76884();
  v28 = sub_22AE76D54();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v49[0] = v30;
    *v29 = 136315138;
    v31 = sub_22AE1B678(v25, v24, v49);

    *(v29 + 4) = v31;
    _os_log_impl(&dword_22ADEC000, v27, v28, "%s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v30);
    MEMORY[0x231887EA0](v30, -1, -1);
    MEMORY[0x231887EA0](v29, -1, -1);
  }

  else
  {
  }

  v32 = (*(v43 + 8))(v26, v44);
  MEMORY[0x28223BE20](v32, v33);
  v35 = v45;
  v34 = v46;
  *(&v39 - 4) = v48;
  *(&v39 - 3) = v35;
  *(&v39 - 2) = v34;
  v36 = sub_22AE76A64();
  v37 = v18;
  static Flow.with<A>(_:subsystem:category:_:)(v18, v36);
}

id static Flow.flowOrUntracked.getter()
{
  if (qword_27D8B0BD0 != -1)
  {
    swift_once();
  }

  sub_22AE77004();
  result = v2;
  if (!v2)
  {
    v1 = [objc_opt_self() untrackedPlaceholderFlow];

    return v1;
  }

  return result;
}

uint64_t static Flow.withChildFlow<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  v7 = sub_22AE768B4();
  v6[9] = v7;
  v8 = *(v7 - 8);
  v6[10] = v8;
  v9 = *(v8 + 64) + 15;
  v6[11] = swift_task_alloc();
  v10 = sub_22AE76854();
  v6[12] = v10;
  v11 = *(v10 - 8);
  v6[13] = v11;
  v12 = *(v11 + 64) + 15;
  v6[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22AE1A0E0, 0, 0);
}

uint64_t sub_22AE1A0E0()
{
  v37 = v0;
  if (qword_27D8B0BD0 != -1)
  {
    swift_once();
  }

  sub_22AE77004();
  v1 = *(v0 + 16);
  if (!v1)
  {
    v1 = [objc_opt_self() untrackedPlaceholderFlow];
  }

  *(v0 + 120) = v1;
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);
  v4 = *(v0 + 96);
  v5 = *(v0 + 32);
  v35 = *(v0 + 40);
  v6 = [objc_opt_self() internalOnlyInitializer];
  *(v0 + 128) = v6;
  sub_22AE76DD4();

  strcpy(v36, "[ChildFlow: ");
  BYTE5(v36[1]) = 0;
  HIWORD(v36[1]) = -5120;
  v40 = v6;
  v7 = [v6 UUID];
  sub_22AE76824();

  sub_22AE1C52C();
  v8 = sub_22AE76EE4();
  MEMORY[0x231886110](v8);

  v9 = *(v2 + 8);
  v9(v3, v4);
  MEMORY[0x231886110](0x3A746E6572615020, 0xE900000000000020);
  v10 = [v1 UUID];
  sub_22AE76824();

  v11 = sub_22AE76EE4();
  MEMORY[0x231886110](v11);

  v9(v3, v4);
  MEMORY[0x231886110](8285, 0xE200000000000000);
  MEMORY[0x231886110](v5, v35);
  v13 = v36[0];
  v12 = v36[1];
  if (qword_27D8B0BC0 != -1)
  {
    swift_once();
  }

  v14 = *(v0 + 88);
  sub_22AE77004();

  v15 = sub_22AE76884();
  v16 = sub_22AE76D54();

  v17 = os_log_type_enabled(v15, v16);
  v18 = *(v0 + 80);
  v19 = *(v0 + 88);
  v20 = *(v0 + 72);
  if (v17)
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v36[0] = v22;
    *v21 = 136315138;
    v23 = sub_22AE1B678(v13, v12, v36);

    *(v21 + 4) = v23;
    _os_log_impl(&dword_22ADEC000, v15, v16, "%s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    MEMORY[0x231887EA0](v22, -1, -1);
    MEMORY[0x231887EA0](v21, -1, -1);
  }

  else
  {
  }

  (*(v18 + 8))(v19, v20);
  v24 = *(v0 + 64);
  v25 = swift_task_alloc();
  *(v0 + 136) = v25;
  v26 = *(v0 + 48);
  *(v25 + 16) = v24;
  *(v25 + 24) = v26;
  v27 = sub_22AE76A64();
  v29 = v28;
  *(v0 + 144) = v28;
  v30 = v40;
  v31 = v40;
  v32 = swift_task_alloc();
  *(v0 + 152) = v32;
  *v32 = v0;
  v32[1] = sub_22AE1A554;
  v33 = *(v0 + 24);
  v39 = *(v0 + 64);

  return static Flow.with<A>(_:subsystem:category:_:)(v33, v30, v27, v29, 0x746C7561666544, 0xE700000000000000, &unk_22AE811F0, v25);
}

uint64_t sub_22AE1A554()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v9 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v4 = sub_22AE1A708;
  }

  else
  {
    v6 = v2[17];
    v5 = v2[18];
    v7 = v2[16];

    v4 = sub_22AE1A680;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22AE1A680()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 112);
  v3 = *(v0 + 88);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_22AE1A708()
{
  v2 = v0[17];
  v1 = v0[18];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[14];
  v6 = v0[11];

  v7 = v0[1];
  v8 = v0[20];

  return v7();
}

uint64_t sub_22AE1A7AC(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22ADEE1DC;

  return v7(a1);
}

uint64_t sub_22AE1A8A4(uint64_t a1, uint64_t a2)
{
  if (qword_27D8B0BB0 != -1)
  {
    v3 = a1;
    v4 = a2;
    swift_once();
    a1 = v3;
    a2 = v4;
  }

  MEMORY[0x28223BE20](a1, a2);
  return sub_22AE77024();
}

uint64_t sub_22AE1A9E4(uint64_t a1, uint64_t a2)
{
  if (qword_27D8B0BE0[0] != -1)
  {
    v3 = a1;
    v4 = a2;
    swift_once();
    a1 = v3;
    a2 = v4;
  }

  MEMORY[0x28223BE20](a1, a2);
  return sub_22AE77024();
}

uint64_t sub_22AE1AB20@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v15[0] = a2;
  v15[1] = a4;
  v6 = sub_22AE768B4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27D8B0BC0 != -1)
  {
    swift_once();
  }

  if (qword_27D8B0BE0[0] != -1)
  {
    swift_once();
  }

  sub_22AE77004();

  v12 = sub_22AE76894();
  MEMORY[0x28223BE20](v12, v13);
  v15[-4] = a3;
  v15[-3] = a1;
  v15[-2] = v15[0];
  sub_22AE77024();
  return (*(v7 + 8))(v11, v6);
}

uint64_t sub_22AE1AD2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = a7;
  v8[11] = a8;
  v8[8] = a5;
  v8[9] = a6;
  v8[6] = a3;
  v8[7] = a4;
  v8[4] = a1;
  v8[5] = a2;
  return MEMORY[0x2822009F8](sub_22AE1AD58, 0, 0);
}

uint64_t sub_22AE1AD58()
{
  if (qword_27D8B0BB0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 88);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v5 = *(v0 + 40);
  v4 = *(v0 + 48);
  *(v0 + 16) = v5;
  *(v0 + 24) = v4;
  v6 = swift_task_alloc();
  *(v0 + 96) = v6;
  v7 = *(v0 + 72);
  *(v6 + 16) = v1;
  *(v6 + 24) = v3;
  *(v6 + 32) = v2;
  *(v6 + 40) = v5;
  *(v6 + 48) = v4;
  *(v6 + 56) = v7;
  v8 = *(MEMORY[0x277D85A70] + 4);
  v9 = swift_task_alloc();
  *(v0 + 104) = v9;
  *v9 = v0;
  v9[1] = sub_22AE198A8;
  v10 = *(v0 + 32);
  v13 = *(v0 + 88);

  return MEMORY[0x282200908](v10, v0 + 16, &unk_22AE81210, v6, 0, 0, 0xD000000000000017, 0x800000022AE82D10);
}

uint64_t sub_22AE1AEC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = a7;
  v8[11] = a8;
  v8[8] = a5;
  v8[9] = a6;
  v8[6] = a3;
  v8[7] = a4;
  v8[4] = a1;
  v8[5] = a2;
  return MEMORY[0x2822009F8](sub_22AE1AEF4, 0, 0);
}

uint64_t sub_22AE1AEF4()
{
  if (qword_27D8B0BE0[0] != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  *(v0 + 16) = *(v0 + 40);
  *(v0 + 24) = v3;
  v5 = swift_task_alloc();
  *(v0 + 96) = v5;
  v6 = *(v0 + 64);
  *(v5 + 16) = v1;
  *(v5 + 24) = v4;
  *(v5 + 32) = v6;
  *(v5 + 48) = v2;
  v7 = *(MEMORY[0x277D85A70] + 4);
  v8 = swift_task_alloc();
  *(v0 + 104) = v8;
  *v8 = v0;
  v8[1] = sub_22AE1B058;
  v9 = *(v0 + 32);
  v12 = *(v0 + 88);

  return MEMORY[0x282200908](v9, v0 + 16, &unk_22AE81220, v5, 0, 0, 0xD000000000000017, 0x800000022AE82D10);
}

uint64_t sub_22AE1B058()
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 96);
  v4 = *v1;
  *(v4 + 112) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22AE1C998, 0, 0);
  }

  else
  {
    v5 = *(v4 + 8);

    return v5();
  }
}

uint64_t sub_22AE1B1A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[6] = a3;
  v6[7] = a4;
  v6[4] = a1;
  v6[5] = a2;
  v7 = sub_22AE768B4();
  v6[10] = v7;
  v8 = *(v7 - 8);
  v6[11] = v8;
  v9 = *(v8 + 64) + 15;
  v6[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22AE1B270, 0, 0);
}

uint64_t sub_22AE1B270()
{
  if (qword_27D8B0BC0 != -1)
  {
    swift_once();
  }

  if (qword_27D8B0BE0[0] != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 96);
  v2 = *(v0 + 72);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  v13 = *(v0 + 56);
  sub_22AE77004();
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);

  sub_22AE76894();
  v7 = swift_task_alloc();
  *(v0 + 104) = v7;
  *(v7 + 16) = v2;
  *(v7 + 24) = v13;
  v8 = *(MEMORY[0x277D85A70] + 4);
  v9 = swift_task_alloc();
  *(v0 + 112) = v9;
  *v9 = v0;
  v9[1] = sub_22AE1B43C;
  v10 = *(v0 + 96);
  v11 = *(v0 + 32);
  v15 = *(v0 + 72);

  return MEMORY[0x282200908](v11, v10, &unk_22AE81230, v7, 0, 0, 0xD000000000000017, 0x800000022AE82D10);
}

uint64_t sub_22AE1B43C()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 104);
  v5 = *(*v1 + 96);
  v6 = *(*v1 + 88);
  v7 = *(*v1 + 80);
  v8 = *v1;
  *(*v1 + 120) = v0;

  (*(v6 + 8))(v5, v7);

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22AE1B614, 0, 0);
  }

  else
  {
    v9 = *(v2 + 96);

    v10 = *(v8 + 8);

    return v10();
  }
}

uint64_t sub_22AE1B614()
{
  v1 = v0[12];

  v2 = v0[1];
  v3 = v0[15];

  return v2();
}

uint64_t sub_22AE1B678(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_22AE1B744(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_22AE1C920(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_22AE1B744(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_22AE1B850(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_22AE76DF4();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_22AE1B850(uint64_t a1, unint64_t a2)
{
  v4 = sub_22AE1B89C(a1, a2);
  sub_22AE1B9CC(&unk_283EBB298);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_22AE1B89C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_22AE1BAB8(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_22AE76DF4();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_22AE76AB4();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_22AE1BAB8(v10, 0);
        result = sub_22AE76DC4();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_22AE1B9CC(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_22AE1BB2C(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_22AE1BAB8(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B0D48, &qword_22AE804A0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_22AE1BB2C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B0D48, &qword_22AE804A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_22AE1BC38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v30 = a3;
  v31 = sub_22AE768B4();
  v5 = *(v31 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v31, v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22AE76854();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = 0x203A776F6C465BLL;
  v34 = 0xE700000000000000;
  if (qword_27D8B0BD0 != -1)
  {
    swift_once();
  }

  sub_22AE77004();
  v16 = v32;
  if (v32)
  {
    v17 = [v32 UUID];

    sub_22AE76824();
    v18 = sub_22AE76804();
    v20 = v19;
    (*(v11 + 8))(v15, v10);
  }

  else
  {
    v18 = 0;
    v20 = 0xE000000000000000;
  }

  MEMORY[0x231886110](v18, v20);

  MEMORY[0x231886110](8285, 0xE200000000000000);
  MEMORY[0x231886110](a1, a2);
  v22 = v33;
  v21 = v34;
  if (qword_27D8B0BC0 != -1)
  {
    swift_once();
  }

  sub_22AE77004();

  v23 = sub_22AE76884();
  v24 = v30();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v33 = v26;
    *v25 = 136315138;
    v27 = sub_22AE1B678(v22, v21, &v33);

    *(v25 + 4) = v27;
    _os_log_impl(&dword_22ADEC000, v23, v24, "%s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x231887EA0](v26, -1, -1);
    MEMORY[0x231887EA0](v25, -1, -1);
  }

  else
  {
  }

  return (*(v5 + 8))(v9, v31);
}

id _s12HMFoundation4FlowO03newB0ySo7HMFFlowCSS_SStFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v33 = sub_22AE768B4();
  v6 = *(v33 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v33, v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22AE76854();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [objc_opt_self() internalOnlyInitializer];
  v34 = 0;
  v35 = 0xE000000000000000;
  sub_22AE76DD4();

  v34 = 0x776F6C4677654E5BLL;
  v35 = 0xEA0000000000203ALL;
  v32 = v17;
  v18 = [v17 UUID];
  sub_22AE76824();

  v19 = sub_22AE76804();
  v21 = v20;
  (*(v12 + 8))(v16, v11);
  MEMORY[0x231886110](v19, v21);

  MEMORY[0x231886110](0x7574616546227B20, 0xED0000223A226572);
  MEMORY[0x231886110](a1, a2);
  MEMORY[0x231886110](542997794, 0xE400000000000000);
  MEMORY[0x231886110](v30, v31);
  v23 = v34;
  v22 = v35;
  if (qword_27D8B0BC0 != -1)
  {
    swift_once();
  }

  sub_22AE77004();

  v24 = sub_22AE76884();
  v25 = sub_22AE76D54();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v34 = v27;
    *v26 = 136315138;
    v28 = sub_22AE1B678(v23, v22, &v34);

    *(v26 + 4) = v28;
    _os_log_impl(&dword_22ADEC000, v24, v25, "%s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v27);
    MEMORY[0x231887EA0](v27, -1, -1);
    MEMORY[0x231887EA0](v26, -1, -1);
  }

  else
  {
  }

  (*(v6 + 8))(v10, v33);
  return v32;
}

uint64_t sub_22AE1C348()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return v1();
}

uint64_t sub_22AE1C39C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22ADEE1E0;

  return sub_22AE0B3D8(a1, v5);
}

uint64_t sub_22AE1C450(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_22ADEE1DC;

  return sub_22AE1AD2C(a1, v5, v6, v7, v8, v9, v10, v4);
}

unint64_t sub_22AE1C52C()
{
  result = qword_27D8B0D00;
  if (!qword_27D8B0D00)
  {
    sub_22AE76854();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8B0D00);
  }

  return result;
}

uint64_t sub_22AE1C584(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22ADEE1DC;

  return sub_22AE1A7AC(a1, v5);
}

uint64_t sub_22AE1C648(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_22ADEE1DC;

  return sub_22AE1AEC8(a1, v5, v6, v7, v8, v9, v10, v4);
}

uint64_t sub_22AE1C724(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22ADEE1DC;

  return sub_22AE1B1A8(a1, v5, v6, v7, v8, v4);
}

uint64_t sub_22AE1C7EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22ADEE1DC;

  return sub_22AE1A7AC(a1, v5);
}

uint64_t sub_22AE1C8FC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  return sub_22AE1AB20(v1[5], v1[6], v1[2], a1);
}

uint64_t sub_22AE1C920(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

id static HMFLogging.logHandle.getter()
{
  swift_getMetatypeMetadata();
  sub_22AE76F14();
  v0 = HMFGetOSLogHandle();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t static HMFLogging.logger.getter()
{
  v0 = static HMFLogging.logHandle.getter();

  return MEMORY[0x282200E08](v0);
}

uint64_t HMFLogging.logger.getter()
{
  v0 = static HMFLogging.logHandle.getter();

  return MEMORY[0x282200E08](v0);
}

uint64_t HMF.NetworkInterfaceType.hashValue.getter()
{
  v1 = *v0;
  sub_22AE76FB4();
  MEMORY[0x231886640](v1);
  return sub_22AE76FD4();
}

uint64_t sub_22AE1CB04()
{
  v1 = *v0;
  sub_22AE76FB4();
  MEMORY[0x231886640](v1);
  return sub_22AE76FD4();
}

uint64_t sub_22AE1CB78()
{
  v1 = *v0;
  sub_22AE76FB4();
  MEMORY[0x231886640](v1);
  return sub_22AE76FD4();
}

uint64_t HMF.WifiNetworkInfo.init(SSID:BSSID:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t HMF.WifiNetworkInfo.SSID.getter()
{
  v1 = *v0;
  sub_22AE1CBFC(*v0, *(v0 + 8));
  return v1;
}

uint64_t sub_22AE1CBFC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t HMF.WifiNetworkInfo.BSSID.getter()
{
  v1 = *(v0 + 16);
  sub_22AE1CBFC(v1, *(v0 + 24));
  return v1;
}

__n128 HMF.NetworkInfo.init(name:type:macAddress:ipv4Addresses:ipv6Addresses:wifiInfo:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  result = *a8;
  v10 = *(a8 + 16);
  *(a9 + 56) = *a8;
  v11 = *a3;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = v11;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 72) = v10;
  return result;
}

uint64_t HMF.NetworkInfo.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t HMF.NetworkInfo.macAddress.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t HMF.NetworkInfo.wifiInfo.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[7];
  v3 = v1[8];
  v4 = v1[9];
  v5 = v1[10];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_22AE1CD38(v2, v3, v4, v5);
}

uint64_t sub_22AE1CD38(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 >> 60 != 15)
  {
    sub_22AE1CBFC(result, a2);

    return sub_22AE1CBFC(a3, a4);
  }

  return result;
}

__n128 HMF.NetworkServiceInfo.init(isPrimary:interfaceName:confirmedInterfaceName:ipv4Addresses:routerIPv4:networkSignatureV4:ipv6Addresses:routerIPv6:networkSignatureV6:)@<Q0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, __n128 a12, uint64_t a13)
{
  result = a12;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  *(a9 + 96) = a12;
  *(a9 + 112) = a13;
  return result;
}

uint64_t HMF.NetworkServiceInfo.interfaceName.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t HMF.NetworkServiceInfo.confirmedInterfaceName.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t HMF.NetworkServiceInfo.routerIPv4.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t HMF.NetworkServiceInfo.networkSignatureV4.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t HMF.NetworkServiceInfo.routerIPv6.getter()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return v1;
}

uint64_t HMF.NetworkServiceInfo.networkSignatureV6.getter()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return v1;
}

unint64_t sub_22AE1CEF4()
{
  result = qword_27D8B1B28;
  if (!qword_27D8B1B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8B1B28);
  }

  return result;
}

uint64_t _s20NetworkInterfaceTypeOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s20NetworkInterfaceTypeOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_22AE1D0D0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 32))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_22AE1D124(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12HMFoundation3HMFO15WifiNetworkInfoVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_22AE1D1D0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22AE1D218(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_22AE1D2A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_22AE1D2F0(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t AsyncSerialQueue.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  *(v0 + 120) = *sub_22AE76864();
  *(v0 + 128) = sub_22AE08EA0;
  *(v0 + 136) = 0;

  return v0;
}

uint64_t sub_22AE1D3BC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B1B40, &qword_22AE816E8);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_22AE76FF4();
  qword_27D8B0CF0 = result;
  return result;
}

uint64_t AsyncSerialQueue.init()()
{
  swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  *(v0 + 120) = *sub_22AE76864();
  *(v0 + 128) = sub_22AE08EA0;
  *(v0 + 136) = 0;

  return v0;
}

uint64_t sub_22AE1D468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27D8B0EE8, &qword_22AE80718) - 8) + 64) + 15;
  v5[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22AE1D50C, v4, 0);
}

uint64_t sub_22AE1D50C()
{
  if (qword_27D8B0CF8 != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  sub_22AE77004();
  LOBYTE(v1) = sub_22AE1ECA0(v1, v0[6]);

  if (v1)
  {
    v2 = v0[11];
    v3 = *(v2 + 136);
    (*(v2 + 128))(sub_22AE1ED48, 0, "HMFoundation/AsyncSerialQueue.swift", 35, 2, 114);
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  }

  v4 = v0[12];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B0EE0, &qword_22AE81610);
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_task_alloc();
  v0[13] = v6;
  *v6 = v0;
  v6[1] = sub_22AE1D6A4;
  v8 = v0[11];
  v7 = v0[12];
  v9 = v0[9];
  v10 = v0[10];
  v11 = v0[7];
  v12 = v0[8];

  return sub_22AE1E3B4(v11, v7, v12, v9, v10);
}

uint64_t sub_22AE1D6A4()
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 96);
  v4 = *v1;
  v4[14] = v0;

  sub_22AE02D5C(v3, qword_27D8B0EE8, &qword_22AE80718);
  if (v0)
  {
    v5 = v4[11];

    return MEMORY[0x2822009F8](sub_22AE1D818, v5, 0);
  }

  else
  {
    v6 = v4[12];

    v7 = v4[1];

    return v7();
  }
}

uint64_t sub_22AE1D818()
{
  v1 = v0[12];

  v2 = v0[1];
  v3 = v0[14];

  return v2();
}

uint64_t sub_22AE1D87C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x2822009F8](sub_22AE1D8A0, v3, 0);
}

uint64_t sub_22AE1D8A0()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  *(v0 + 16) = 0;
  sub_22AE09960();
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = v2;
  *(v3 + 24) = v0 + 16;
  *(v3 + 32) = v1;
  *(v3 + 40) = v4;
  v5 = *(MEMORY[0x277D859E0] + 4);
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  *v6 = v0;
  v6[1] = sub_22AE1D9BC;

  return MEMORY[0x2822007B8]();
}

uint64_t sub_22AE1D9BC()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_22AE1DAE8, v3, 0);
}

uint64_t sub_22AE1DAE8()
{
  result = *(v0 + 16);
  if (result)
  {
    return (*(v0 + 8))();
  }

  __break(1u);
  return result;
}

uint64_t sub_22AE1DB0C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v30 = a4;
  v31 = a6;
  v32 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B0EE0, &qword_22AE81610);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v29 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B0D18, &qword_22AE80330);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8, v17);
  v19 = &v29 - v18;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v20 = sub_22AE76C34();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  (*(v10 + 16))(v14, a1, v9);
  v21 = sub_22AE09960();
  v22 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v23 = (v11 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 2) = a3;
  *(v24 + 3) = v21;
  *(v24 + 4) = v31;
  *(v24 + 5) = a3;
  (*(v10 + 32))(&v24[v22], v14, v9);
  v25 = &v24[v23];
  *v25 = v30;
  *(v25 + 1) = a5;
  swift_retain_n();

  v26 = sub_22AE1E130(0, 0, v19, &unk_22AE816E0, v24);
  v27 = *v32;
  *v32 = v26;
}

uint64_t sub_22AE1DD84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[2] = a1;
  v8[3] = a4;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27D8B0EE8, &qword_22AE80718) - 8) + 64) + 15;
  v8[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22AE1DE2C, a4, 0);
}

uint64_t sub_22AE1DE2C()
{
  v1 = v0[8];
  v2 = v0[4];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B0EE0, &qword_22AE81610);
  v4 = *(v3 - 8);
  (*(v4 + 16))(v1, v2, v3);
  (*(v4 + 56))(v1, 0, 1, v3);
  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_22AE1DF58;
  v7 = v0[7];
  v6 = v0[8];
  v8 = v0[5];
  v9 = v0[6];
  v10 = v0[2];
  v11 = v0[3];

  return sub_22AE1E3B4(v10, v6, v8, v9, v7);
}

uint64_t sub_22AE1DF58()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *v1;
  v4[10] = v0;

  sub_22AE02D5C(v3, qword_27D8B0EE8, &qword_22AE80718);
  if (v0)
  {
    v5 = v4[3];

    return MEMORY[0x2822009F8](sub_22AE1E0CC, v5, 0);
  }

  else
  {
    v6 = v4[8];

    v7 = v4[1];

    return v7();
  }
}

uint64_t sub_22AE1E0CC()
{
  v1 = v0[8];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t sub_22AE1E130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B0D18, &qword_22AE80330);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = &v27[-1] - v12;
  v28[0] = a4;
  v28[1] = a5;
  sub_22AE02CF4(a3, &v27[-1] - v12, &qword_27D8B0D18, &qword_22AE80330);
  v14 = sub_22AE76C34();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v13, 1, v14);

  if (v16 == 1)
  {
    sub_22AE02D5C(v13, &qword_27D8B0D18, &qword_22AE80330);
  }

  else
  {
    sub_22AE76C24();
    (*(v15 + 8))(v13, v14);
  }

  v18 = *(a5 + 16);
  v17 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = sub_22AE76BC4();
    v21 = v20;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22 = sub_22AE76A84();
      v23 = *(v22 + 16);
      sub_22AE1F788(v22 + 32, v28, v27);

      v24 = v27[0];
      sub_22AE02D5C(a3, &qword_27D8B0D18, &qword_22AE80330);

      return v24;
    }
  }

  else
  {
    v19 = 0;
    v21 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_22AE02D5C(a3, &qword_27D8B0D18, &qword_22AE80330);
  if (v21 | v19)
  {
    v27[1] = 0;
    v27[2] = 0;
    v27[3] = v19;
    v27[4] = v21;
  }

  return swift_task_create();
}

uint64_t sub_22AE1E3B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[9] = a5;
  v6[10] = v5;
  v6[7] = a3;
  v6[8] = a4;
  v6[5] = a1;
  v6[6] = a2;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27D8B0EE8, &qword_22AE80718) - 8) + 64) + 15;
  v6[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22AE1E458, v5, 0);
}

uint64_t sub_22AE1E458()
{
  v1 = v0[10];
  swift_beginAccess();
  v2 = *(*(v1 + 120) + 24);
  v3 = v0[10];
  if (v2 || (*(v3 + 112) & 1) != 0)
  {
    v4 = v0[6];
    sub_22AE09960();
    v5 = swift_task_alloc();
    v0[12] = v5;
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = *(MEMORY[0x277D859E0] + 4);
    v7 = swift_task_alloc();
    v0[13] = v7;
    *v7 = v0;
    v7[1] = sub_22AE1E6D8;

    return MEMORY[0x2822007B8]();
  }

  else
  {
    v8 = v0[11];
    v9 = v0[6];
    *(v3 + 112) = 1;
    sub_22AE02CF4(v9, v8, qword_27D8B0EE8, &qword_22AE80718);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B0EE0, &qword_22AE81610);
    v11 = *(v10 - 8);
    v12 = (*(v11 + 48))(v8, 1, v10);
    v13 = v0[11];
    if (v12 == 1)
    {
      sub_22AE02D5C(v0[11], qword_27D8B0EE8, &qword_22AE80718);
    }

    else
    {
      sub_22AE76BD4();
      (*(v11 + 8))(v13, v10);
    }

    v14 = swift_task_alloc();
    v0[14] = v14;
    *v14 = v0;
    v14[1] = sub_22AE1E8A0;
    v15 = v0[9];
    v16 = v0[10];
    v17 = v0[7];
    v18 = v0[8];
    v19 = v0[5];

    return sub_22AE1ED98(v19, v17, v18, v15);
  }
}

uint64_t sub_22AE1E6D8()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 80);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_22AE1E804, v3, 0);
}

uint64_t sub_22AE1E804()
{
  v1 = swift_task_alloc();
  v0[14] = v1;
  *v1 = v0;
  v1[1] = sub_22AE1E8A0;
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[5];

  return sub_22AE1ED98(v6, v4, v5, v2);
}

uint64_t sub_22AE1E8A0()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *v1;
  *(*v1 + 120) = v0;

  v5 = *(v2 + 80);
  if (v0)
  {
    v6 = sub_22AE1EA38;
  }

  else
  {
    v6 = sub_22AE1E9CC;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22AE1E9CC()
{
  v2 = v0[10];
  v1 = v0[11];
  sub_22AE1F0E4();

  v3 = v0[1];

  return v3();
}

uint64_t sub_22AE1EA38()
{
  v2 = v0[10];
  v1 = v0[11];
  sub_22AE1F0E4();

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

uint64_t sub_22AE1EAA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27D8B0EE8, &qword_22AE80718);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = &v18 - v9;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  result = *(a2 + 120);
  v12 = *(result + 24);
  v13 = v12 + 1;
  if (__OFADD__(v12, 1))
  {
    __break(1u);
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *(a2 + 120);
    if (*(v15 + 16) < v13 || (isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_22AE1F844(isUniquelyReferenced_nonNull_native, v13);
      v15 = *(a2 + 120);
    }

    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B0EE0, &qword_22AE81610);
    v17 = *(v16 - 8);
    sub_22AE1FAC0((v15 + 16), v15 + ((*(v17 + 80) + 40) & ~*(v17 + 80)), a1);
    swift_endAccess();
    sub_22AE02CF4(a3, v10, qword_27D8B0EE8, &qword_22AE80718);
    if ((*(v17 + 48))(v10, 1, v16) == 1)
    {
      return sub_22AE02D5C(v10, qword_27D8B0EE8, &qword_22AE80718);
    }

    else
    {
      sub_22AE76BD4();
      return (*(v17 + 8))(v10, v16);
    }
  }

  return result;
}

BOOL sub_22AE1ECA0(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = *(a2 + 40);
  v5 = sub_22AE76FA4();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  do
  {
    v9 = *(*(a2 + 48) + 8 * v7);
    result = v9 == a1;
    if (v9 == a1)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
  }

  while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  return result;
}

uint64_t sub_22AE1ED98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[7] = a4;
  v5[8] = v4;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  return MEMORY[0x2822009F8](sub_22AE1EDC0, v4, 0);
}

uint64_t sub_22AE1EDC0()
{
  v13 = v0;
  if (qword_27D8B0CF8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v11 = *(v0 + 40);
  sub_22AE77004();
  sub_22AE20088(&v12, v1);
  v3 = *(v0 + 16);
  *(v0 + 72) = v3;
  *(v0 + 24) = v3;
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v11;
  v5 = sub_22AE09960();
  v6 = *(MEMORY[0x277D85A70] + 4);
  v7 = swift_task_alloc();
  *(v0 + 88) = v7;
  *v7 = v0;
  v7[1] = sub_22AE1EF54;
  v8 = *(v0 + 56);
  v9 = *(v0 + 32);
  v15 = 120;
  v16 = v8;

  return MEMORY[0x282200908](v9, v0 + 24, &unk_22AE816C0, v4, v1, v5, 0xD000000000000023, 0x800000022AE82C10);
}

uint64_t sub_22AE1EF54()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *v1;
  v5[12] = v0;

  if (v0)
  {
    v6 = v5[8];

    return MEMORY[0x2822009F8](sub_22AE1F0CC, v6, 0);
  }

  else
  {
    v7 = v5[1];

    return v7();
  }
}

uint64_t sub_22AE1F0E4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27D8B0EE8, &qword_22AE80718);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8, v3);
  v5 = &v19 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B0EE0, &qword_22AE81610);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  result = MEMORY[0x28223BE20](v6, v9);
  v12 = &v19 - v11;
  if (*(v0 + 112) != 1)
  {
    __break(1u);
    goto LABEL_16;
  }

  swift_beginAccess();
  if (*(*(v0 + 120) + 24) >= 1)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22AE207E0();
    }

    v13 = *(v0 + 120);
    result = (*(v7 + 32))(v5, &v13[((*(v7 + 80) + 40) & ~*(v7 + 80)) + *(v7 + 72) * *(v13 + 4)], v6);
    v14 = *(v13 + 4);
    v15 = __OFADD__(v14, 1);
    v16 = v14 + 1;
    if (!v15)
    {
      v17 = *(v13 + 3);
      if (v16 >= *(v13 + 2))
      {
        v16 = 0;
      }

      *(v13 + 4) = v16;
      if (!__OFSUB__(v17, 1))
      {
        v18 = 0;
        *(v13 + 3) = v17 - 1;
        goto LABEL_11;
      }

LABEL_17:
      __break(1u);
      return result;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v18 = 1;
LABEL_11:
  (*(v7 + 56))(v5, v18, 1, v6);
  swift_endAccess();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    result = sub_22AE02D5C(v5, qword_27D8B0EE8, &qword_22AE80718);
    *(v0 + 112) = 0;
  }

  else
  {
    (*(v7 + 32))(v12, v5, v6);
    sub_22AE76BD4();
    return (*(v7 + 8))(v12, v6);
  }

  return result;
}

uint64_t AsyncSerialQueue.deinit()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 136);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t AsyncSerialQueue.__deallocating_deinit()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 136);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t dispatch thunk of AsyncSerialQueue.performAndWait<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 176);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_22ADEE1E0;

  return v14(a1, a2, a3, a4);
}

uint64_t dispatch thunk of AsyncSerialQueue.perform<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 184);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_22AE1F68C;

  return v12(a1, a2, a3);
}

uint64_t sub_22AE1F68C(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_22AE1F788@<X0>(uint64_t result@<X0>, uint64_t *a2@<X5>, uint64_t *a3@<X8>)
{
  if (result)
  {
    v4 = *a2;
    v5 = a2[1];

    result = swift_task_create();
    *a3 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

size_t sub_22AE1F844(char a1, uint64_t a2)
{
  v5 = *v2;
  v6 = (*v2 + 16);
  v7 = *v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B0EE0, &qword_22AE81610);
  v9 = v8;
  if (v7 >= a2)
  {
    v18 = *(v8 - 8);
    v19 = *(v18 + 80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B1B30, &qword_22AE816B0);
    v20 = *(v18 + 72);
    v15 = swift_allocObject();
    v21 = *(v5 + 24);
    *(v15 + 16) = v7;
    *(v15 + 24) = v21;
    if (v21 >= 1)
    {
      sub_22AE1FF20(v15 + 16, v15 + ((v19 + 40) & ~v19), v6, v5 + ((v19 + 40) & ~v19));
    }

    goto LABEL_19;
  }

  sub_22AE76874();
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  if (a1)
  {
    v12 = *(v5 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B1B30, &qword_22AE816B0);
    v13 = *(v10 + 72);
    v14 = (v11 + 40) & ~v11;
    v15 = swift_allocObject();
    result = _swift_stdlib_malloc_size(v15);
    if (v13)
    {
      if (result - v14 != 0x8000000000000000 || v13 != -1)
      {
        *(v15 + 16) = (result - v14) / v13;
        *(v15 + 24) = v12;
        *(v15 + 32) = 0;
        if (v12 >= 1)
        {
          sub_22AE1FBA0(v15 + 16, v15 + v14, v6, v5 + v14);
          *(v5 + 24) = 0;
        }

LABEL_19:

        *v2 = v15;
        return result;
      }

      goto LABEL_22;
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B1B30, &qword_22AE816B0);
  v22 = *(v10 + 72);
  v23 = (v11 + 40) & ~v11;
  v15 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v15);
  if (!v22)
  {
    goto LABEL_21;
  }

  if (result - v23 != 0x8000000000000000 || v22 != -1)
  {
    v25 = *(v5 + 24);
    *(v15 + 16) = (result - v23) / v22;
    *(v15 + 24) = v25;
    *(v15 + 32) = 0;
    if (v25 >= 1)
    {
      sub_22AE1FDAC(v15 + 16, v15 + v23, v6, v5 + v23);
    }

    goto LABEL_19;
  }

LABEL_23:
  __break(1u);
  return result;
}

void *sub_22AE1FAC0(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result[1];
  v4 = result[2];
  v5 = v4 + v3;
  if (!__OFADD__(v4, v3))
  {
    v8 = result;
    if ((v3 & 0x8000000000000000) == 0)
    {
      v9 = __OFSUB__(v5, *result);
      if (v5 < *result || (v5 -= *result, !v9))
      {
LABEL_9:
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B0EE0, &qword_22AE81610);
        result = (*(*(v10 - 8) + 16))(a2 + *(*(v10 - 8) + 72) * v5, a3, v10);
        v11 = v8[1];
        v9 = __OFADD__(v11, 1);
        v12 = v11 + 1;
        if (!v9)
        {
          v8[1] = v12;
          return result;
        }

        goto LABEL_12;
      }

      __break(1u);
    }

    if (v5 < 0)
    {
      v9 = __OFADD__(v5, *result);
      v5 += *result;
      if (v9)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

void sub_22AE1FBA0(uint64_t a1, unint64_t a2, void *a3, unint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_35;
  }

  v8 = a3[1];
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B0EE0, &qword_22AE81610) - 8);
  if (v5 < v8)
  {
    v10 = v8 - v5;
    if (!__OFSUB__(v8, v5))
    {
      v11 = v5;
      v12 = a4;
      goto LABEL_6;
    }

LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v12 = 0;
  v10 = 0;
  v11 = v8;
LABEL_6:
  if (v10)
  {
    v13 = v5 < v8;
  }

  else
  {
    v13 = 0;
  }

  if (v13)
  {
    v14 = v12;
  }

  else
  {
    v14 = 0;
  }

  if (v11 < 1)
  {
    v11 = 0;
    if (v5 >= v8)
    {
      return;
    }

    goto LABEL_23;
  }

  if (!a4)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v15 = a4 + *(v9 + 72) * v4;
  if (v15 > a2 || v15 + *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B0EE0, &qword_22AE81610) - 8) + 72) * v11 <= a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B0EE0, &qword_22AE81610);
    swift_arrayInitWithTakeFrontToBack();
  }

  else if (v15 != a2)
  {
    swift_arrayInitWithTakeBackToFront();
    if (v5 >= v8)
    {
      return;
    }

    goto LABEL_23;
  }

  if (v5 >= v8)
  {
    return;
  }

LABEL_23:
  if (v10 < 1)
  {
    return;
  }

  if (!v14)
  {
LABEL_37:
    __break(1u);
    return;
  }

  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B0EE0, &qword_22AE81610) - 8) + 72);
  v17 = a2 + v16 * v11;
  v18 = v14 + v16 * v10;
  if (v17 < v14 || v17 >= v18)
  {
    swift_arrayInitWithTakeFrontToBack();
  }

  else if (v17 != v14)
  {
    swift_arrayInitWithTakeBackToFront();
  }
}

void sub_22AE1FDAC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_15;
  }

  v7 = a3[1];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B0EE0, &qword_22AE81610) - 8);
  if (v5 < v7)
  {
    v9 = v7 - v5;
    if (!__OFSUB__(v7, v5))
    {
      v10 = a4;
      if (v5 < 1)
      {
        goto LABEL_5;
      }

      goto LABEL_8;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = 0;
  v9 = 0;
  if (v7 < 1)
  {
LABEL_5:
    if (v5 >= v7)
    {
      return;
    }

    goto LABEL_10;
  }

LABEL_8:
  if (!a4)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = a4 + *(v8 + 72) * v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B0EE0, &qword_22AE81610);
  swift_arrayInitWithCopy();
  if (v5 >= v7)
  {
    return;
  }

LABEL_10:
  if (v9 < 1)
  {
    return;
  }

  if (!v10)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B0EE0, &qword_22AE81610) - 8) + 72);
  swift_arrayInitWithCopy();
}

void sub_22AE1FF20(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_15;
  }

  v7 = a3[1];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B0EE0, &qword_22AE81610) - 8);
  if (v5 < v7)
  {
    v9 = v7 - v5;
    if (!__OFSUB__(v7, v5))
    {
      v10 = a4;
      if (v5 < 1)
      {
        goto LABEL_9;
      }

LABEL_7:
      if (a4)
      {
        v11 = a4 + *(v8 + 72) * v4;
        v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B0EE0, &qword_22AE81610) - 8) + 72);
        swift_arrayInitWithCopy();
        goto LABEL_9;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = 0;
  v9 = 0;
  if (v7 >= 1)
  {
    goto LABEL_7;
  }

LABEL_9:
  if (v5 < v7 && v9 >= 1)
  {
    if (v10)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B0EE0, &qword_22AE81610);
      swift_arrayInitWithCopy();
      return;
    }

LABEL_17:
    __break(1u);
  }
}

uint64_t sub_22AE20088(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = sub_22AE76FA4();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = *(v5 + 48);
      if (*(v11 + 8 * v9) == a2)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    a2 = *(v11 + 8 * v9);
  }

  else
  {
LABEL_5:
    v12 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    sub_22AE20390(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v15;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_22AE2016C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B1B38, &unk_22AE816C8);
  result = sub_22AE76DB4();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    v27 = v2;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      result = sub_22AE76FA4();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    if (v9 >= 64)
    {
      bzero((v3 + 56), 8 * v12);
    }

    else
    {
      *v8 = -1 << v9;
    }

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_22AE20390(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_22AE2016C(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_22AE204B0();
      a2 = v7;
      goto LABEL_12;
    }

    sub_22AE205F0(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  result = sub_22AE76FA4();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22AE76F24();
  __break(1u);
  return result;
}

void *sub_22AE204B0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B1B38, &unk_22AE816C8);
  v2 = *v0;
  v3 = sub_22AE76DA4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_22AE205F0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B1B38, &unk_22AE816C8);
  result = sub_22AE76DB4();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      result = sub_22AE76FA4();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_26:

    *v2 = v6;
  }

  return result;
}

uint64_t sub_22AE207E0()
{
  v1 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B0EE0, &qword_22AE81610);
  v3 = *(v1 + 16);
  v4 = *(v2 - 8);
  v5 = *(v4 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B1B30, &qword_22AE816B0);
  v6 = *(v4 + 72);
  v7 = swift_allocObject();
  v8 = *(v1 + 24);
  *(v7 + 16) = v3;
  *(v7 + 24) = v8;
  if (v8 >= 1)
  {
    sub_22AE1FF20(v7 + 16, v7 + ((v5 + 40) & ~v5), (v1 + 16), v1 + ((v5 + 40) & ~v5));
  }

  *v0 = v7;
  return result;
}

uint64_t sub_22AE208E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22ADEE1DC;

  return sub_22AE0B3D8(a1, v5);
}

uint64_t sub_22AE20998(uint64_t a1)
{
  v3 = v2;
  v5 = v1[4];
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B0EE0, &qword_22AE81610) - 8);
  v7 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[5];
  v11 = (v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_22ADEE1DC;

  return sub_22AE1DD84(a1, v8, v9, v10, v1 + v7, v12, v13, v5);
}

uint64_t unsafeCast<A, B>(_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](a1, a1);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  return swift_dynamicCast();
}

uint64_t unsafeSendableCast(_:)(uint64_t a1)
{
  return sub_22AE20C88(a1, &qword_27D8B1B48, &qword_22AE816F8, &qword_27D8B1B50, &qword_22AE81700);
}

{
  return sub_22AE20C88(a1, &qword_27D8B1B58, &qword_22AE81708, &qword_27D8B1B60, &qword_22AE81710);
}

uint64_t unsafeSendableCast(_:)(void *a1)
{
  v1 = a1[3];
  v2 = __swift_project_boxed_opaque_existential_1(a1, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B0D60, &qword_22AE80500);

  return unsafeCast<A, B>(_:)(v2, v1);
}

uint64_t sub_22AE20C88(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  swift_dynamicCast();
  return v10;
}

void sub_22AE22F88(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_22AE23094(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_22AE23474(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_22AE27530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22AE2790C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL HMFDataIsReversed(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = 0;
  if (v3 && v4)
  {
    v7 = [v3 length];
    if (v7 == [v5 length])
    {
      v8 = [v3 bytes];
      v9 = 0;
      v10 = [v5 bytes] - 1;
      do
      {
        v11 = [v3 length];
        v6 = v11 <= v9;
        if (v11 <= v9)
        {
          break;
        }

        v12 = *(v8 + v9++);
        v13 = *(v10 + [v3 length]);
        --v10;
      }

      while (v12 == v13);
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

id HMFHTTPProtocolVersionString(unint64_t a1)
{
  if (a1 > 2)
  {
    v2 = 0;
  }

  else
  {
    v2 = **(&unk_2786E6F10 + a1);
  }

  return v2;
}

id __copy_helper_block_e8_40n11_8_8_t0w8_s8(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = *(a2 + 40);
  result = *(a2 + 48);
  *(a1 + 48) = result;
  return result;
}

void sub_22AE2B704(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *HMFWiFiAssertionOptionsDescription(unint64_t a1)
{
  if (a1)
  {
    v2 = [MEMORY[0x277CBEB18] array];
    v3 = 1;
    do
    {
      if (v3 == 1 && (a1 & 1) != 0)
      {
        [v2 addObject:@"Foreground"];
      }

      v3 *= 2;
    }

    while (v3 - 1 < a1);
    v4 = [v2 componentsJoinedByString:{@", "}];
  }

  else
  {
    v4 = @"None";
  }

  return v4;
}

void __HMFLocationAuthorizationStopMonitoring(void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (v1)
  {
    os_unfair_lock_lock_with_options();
    if ([*(v1 + 5) hmf_isEmpty])
    {
      v2 = objc_autoreleasePoolPush();
      v3 = v1;
      v4 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = HMFGetLogIdentifier(v3);
        *buf = 138543362;
        v16 = v5;
        _os_log_impl(&dword_22ADEC000, v4, OS_LOG_TYPE_INFO, "%{public}@Stop monitoring", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v2);
      v6 = v3[11];
      if (v6)
      {
        v7 = v6;
        v8 = v3[11];
        v3[11] = 0;

        v9 = dispatch_time(0, 1000000000);
        v10 = v3[8];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = ____HMFLocationAuthorizationStopMonitoring_block_invoke;
        block[3] = &unk_2786E6C80;
        v14 = v7;
        v11 = v7;
        dispatch_after(v9, v10, block);
      }

      os_unfair_lock_unlock(v1 + 2);
      __HMFLocationAuthorizationUpdateState(v3, 0);
    }

    else
    {
      os_unfair_lock_unlock(v1 + 2);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void sub_22AE2E730(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, id a18)
{
  objc_destroyWeak((v20 + 40));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a18);
  os_unfair_lock_unlock((v18 + v19));
  _Unwind_Resume(a1);
}

void sub_22AE2F0B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, id a17)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a17);
  _Unwind_Resume(a1);
}

void sub_22AE2F5A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __CoreLocationLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreLocationLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void __HMFLocationAuthorizationUpdateState(void *a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = objc_autoreleasePoolPush();
  v5 = v3;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier(v5);
    v9 = 138543618;
    v10 = v7;
    v11 = 2048;
    v12 = a2;
    _os_log_impl(&dword_22ADEC000, v6, OS_LOG_TYPE_INFO, "%{public}@Updating authorization state to %ld", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  [(os_unfair_lock_s *)v5 willChangeValueForKey:@"isMonitoring"];
  os_unfair_lock_lock_with_options();
  *&v5[8]._os_unfair_lock_opaque = a2;
  os_unfair_lock_unlock(v5 + 2);
  [(os_unfair_lock_s *)v5 didChangeValueForKey:@"isMonitoring"];

  v8 = *MEMORY[0x277D85DE8];
}

id HMFDescribeCollection(void *a1)
{
  v1 = MEMORY[0x277CCAB68];
  v2 = a1;
  v3 = objc_alloc_init(v1);
  HMFDescribeIntoBufferWithIndent(v3, &stru_283EBDA30, v2);

  v4 = [v3 copy];

  return v4;
}

void HMFDescribeIntoBufferWithIndent(void *a1, void *a2, void *a3)
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 _stringRepresentation];
LABEL_8:
      v9 = v8;
      goto LABEL_9;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v8 = [v7 description];
      goto LABEL_8;
    }

    if (([v7 conformsToProtocol:&unk_283EE3178] & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if ([v7 conformsToProtocol:&unk_283ED5BE0] & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
            {
              v24 = v7;
              [v5 appendString:@"{\n"];
              v25 = [v6 stringByAppendingString:@"    "];
              v35[0] = MEMORY[0x277D85DD0];
              v35[1] = 3221225472;
              v35[2] = __HMFDescribeIntoBufferWithIndent_block_invoke;
              v35[3] = &unk_2786E72B8;
              v26 = v5;
              v36 = v26;
              v37 = v25;
              v27 = v25;
              [v24 enumerateKeysAndObjectsUsingBlock:v35];

              [v26 appendString:v6];
              [v26 appendString:@"}"];

              goto LABEL_11;
            }

            v28 = [v6 length];
            v29 = [v7 description];
            v9 = v29;
            if (v28)
            {
              v30 = [v29 _stringRepresentation];
              [v5 appendString:v30];

              goto LABEL_10;
            }

LABEL_9:
            [v5 appendString:v9];
LABEL_10:

            goto LABEL_11;
          }
        }
      }
    }

    v11 = v7;
    objc_opt_class();
    v32 = v7;
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v12 = CFSTR("{(\n");
      v13 = @"}");
    }

    else
    {
      v12 = CFSTR("(\n");
      v13 = @"");
    }

    v31 = v13;
    [v5 appendString:v12];
    v14 = [v11 count];
    v33 = v6;
    v15 = [v6 stringByAppendingString:@"    "];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v16 = [v11 objectEnumerator];
    v17 = [v16 countByEnumeratingWithState:&v38 objects:v42 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v39;
      do
      {
        v20 = 0;
        v34 = v14;
        v21 = v14 - 1;
        do
        {
          if (*v39 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v22 = *(*(&v38 + 1) + 8 * v20);
          [v5 appendString:v15];
          HMFDescribeIntoBufferWithIndent(v5, v15, v22);
          if (v21 == v20)
          {
            v23 = @"\n";
          }

          else
          {
            v23 = @",\n";
          }

          [v5 appendString:v23];
          ++v20;
        }

        while (v18 != v20);
        v18 = [v16 countByEnumeratingWithState:&v38 objects:v42 count:16];
        v14 = v34 - v20;
      }

      while (v18);
    }

    v6 = v33;
    [v5 appendString:v33];
    [v5 appendString:v31];

    v7 = v32;
  }

  else
  {
    [v5 appendString:@"(null)"];
  }

LABEL_11:

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __HMFDescribeIntoBufferWithIndent_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = a3;
  v8 = a2;
  [v5 appendString:v6];
  HMFDescribeIntoBufferWithIndent(*(a1 + 32), *(a1 + 40), v8);

  [*(a1 + 32) appendString:@" = "];
  HMFDescribeIntoBufferWithIndent(*(a1 + 32), *(a1 + 40), v7);

  v9 = *(a1 + 32);

  return [v9 appendString:@";\n"];
}

id __getPlatformInformationForKey(void *a1)
{
  v1 = a1;
  v2 = *MEMORY[0x277CD2898];
  v3 = IOServiceMatching("IOPlatformExpertDevice");
  MatchingService = IOServiceGetMatchingService(v2, v3);
  if (!MatchingService)
  {
    goto LABEL_6;
  }

  v5 = MatchingService;
  CFProperty = IORegistryEntryCreateCFProperty(MatchingService, v1, *MEMORY[0x277CBECE8], 0);
  if (!CFProperty)
  {
    IOObjectRelease(v5);
LABEL_6:
    v10 = 0;
    goto LABEL_12;
  }

  v7 = CFProperty;
  v8 = CFGetTypeID(CFProperty);
  if (v8 == CFStringGetTypeID())
  {
    v9 = [v7 copy];
  }

  else
  {
    v11 = CFGetTypeID(v7);
    if (v11 != CFDataGetTypeID())
    {
      v10 = 0;
      goto LABEL_11;
    }

    v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v7 encoding:4];
  }

  v10 = v9;
LABEL_11:
  IOObjectRelease(v5);
  CFRelease(v7);
LABEL_12:

  return v10;
}

uint64_t HMFOperatingSystemVersionCompare(void *a1, void *a2)
{
  if (*a1 > *a2)
  {
    return 1;
  }

  if (*a1 < *a2)
  {
    return -1;
  }

  v3 = a1[1];
  v4 = a2[1];
  if (v3 > v4)
  {
    return 1;
  }

  if (v3 < v4)
  {
    return -1;
  }

  v5 = a1[2];
  v6 = a2[2];
  v7 = v5 <= v6;
  if (v5 >= v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = -1;
  }

  if (v7)
  {
    return v8;
  }

  else
  {
    return 1;
  }
}

uint64_t __thenBlockForFinallyBlock_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = HMFFuture;
  v5 = (*(*(a1 + 32) + 16))();
  if (HMFFuture)
  {
    v4 = [HMFFuture _futureWithOutcome:v5, v6];
  }

  else
  {
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __thenBlockForFinallyBlock_block_invoke_2;
  v11[3] = &unk_2786E7328;
  v7 = v3;
  v12 = v7;
  v8 = [(__objc2_class *)v4 then:v11];
  if (!v8)
  {
    _HMFPreconditionFailure(@"future");
  }

  v9 = v8;

  return 3;
}

uint64_t __recoverBlockForFinallyBlock_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = HMFFuture;
  v5 = (*(*(a1 + 32) + 16))();
  if (HMFFuture)
  {
    v4 = [HMFFuture _futureWithOutcome:v5, v6];
  }

  else
  {
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __recoverBlockForFinallyBlock_block_invoke_2;
  v11[3] = &unk_2786E7328;
  v7 = v3;
  v12 = v7;
  v8 = [(__objc2_class *)v4 then:v11];
  if (!v8)
  {
    _HMFPreconditionFailure(@"future");
  }

  v9 = v8;

  return 3;
}

uint64_t __recoverBlockForFinallyBlock_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
    objc_claimAutoreleasedReturnValue();
  }

  return 2;
}

void sub_22AE34E88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id HMFRandomDataWithLength(unint64_t a1)
{
  v2 = [MEMORY[0x277CBEB28] dataWithCapacity:a1];
  if (a1)
  {
    v3 = 0;
    v4 = 0;
    v5 = 4;
    do
    {
      if (a1 >= v5)
      {
        v6 = v5;
      }

      else
      {
        v6 = a1;
      }

      v8 = arc4random();
      v4 += 4;
      [v2 appendBytes:&v8 length:v6 + v3];
      v5 += 4;
      v3 -= 4;
    }

    while (v4 < a1);
  }

  return v2;
}

uint64_t HMFRandomUInt32()
{
  bytes = 0;
  if (SecRandomCopyBytes(*MEMORY[0x277CDC540], 4uLL, &bytes))
  {
    return arc4random();
  }

  else
  {
    return bytes;
  }
}

double HMFSecondsFromMachTime(uint64_t a1)
{
  info = 0;
  mach_timebase_info(&info);
  return (info.numer * a1 / info.denom) / 1000000000.0;
}

BOOL HMFIsInternalBuild()
{
  v0 = +[HMFProductInfo productInfo];
  v1 = [v0 productVariant] == 3;

  return v1;
}

BOOL HMFIsDeveloperBuild()
{
  v0 = +[HMFProductInfo productInfo];
  v1 = [v0 productVariant] == 1;

  return v1;
}

BOOL HMFIsCustomerBuild()
{
  v0 = +[HMFProductInfo productInfo];
  v1 = [v0 productVariant] == 0;

  return v1;
}

BOOL HMFIsCarrierBuild()
{
  v0 = +[HMFProductInfo productInfo];
  v1 = [v0 productVariant] == 2;

  return v1;
}

id HMFEncodedRootObject(void *a1)
{
  v1 = a1;
  v2 = objc_autoreleasePoolPush();
  v3 = [[HMFOSTransaction alloc] initWithName:@"com.apple.HMFoundation.hmfutilities.encode-root."];
  v4 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
  [v4 encodeObject:v1 forKey:*MEMORY[0x277CCA308]];
  [v4 finishEncoding];
  v5 = [v4 encodedData];

  objc_autoreleasePoolPop(v2);

  return v5;
}

uint64_t HMFApproximateSizeOfPlistValue(uint64_t a1)
{
  v1 = [MEMORY[0x277CBEB18] arrayWithObject:a1];
  if ([v1 count])
  {
    v2 = 0;
    while (1)
    {
      v3 = [v1 objectAtIndexedSubscript:0];
      [v1 removeObjectAtIndex:0];
      v4 = CFGetTypeID(v3);
      if (v4 == CFBooleanGetTypeID())
      {
        v5 = v2 + 6;
      }

      else
      {
        v5 = v2 + 5;
        if (v4 == CFNumberGetTypeID())
        {
          ByteSize = CFNumberGetByteSize(v3);
        }

        else
        {
          if (v4 == CFDateGetTypeID())
          {
            v5 = v2 + 13;
            goto LABEL_18;
          }

          if (v4 == CFStringGetTypeID())
          {
            Length = CFStringGetLength(v3);
            usedBufLen = 0;
            v16.location = 0;
            v16.length = Length;
            Bytes = CFStringGetBytes(v3, v16, 0x600u, 0, 0, 0, 0, &usedBufLen);
            v9 = usedBufLen;
            if (usedBufLen != Length || Bytes == 0)
            {
              v9 = 2 * Length;
            }

            v5 += v9;
            goto LABEL_18;
          }

          if (v4 != CFDataGetTypeID())
          {
            if (v4 == CFArrayGetTypeID())
            {
              [v1 addObjectsFromArray:v3];
            }

            else if (v4 == CFDictionaryGetTypeID())
            {
              v11 = v3;
              v12 = [(__CFString *)v11 allKeys];
              [v1 addObjectsFromArray:v12];

              v13 = [(__CFString *)v11 allValues];

              [v1 addObjectsFromArray:v13];
            }

            goto LABEL_18;
          }

          ByteSize = CFDataGetLength(v3);
        }

        v5 += ByteSize;
      }

LABEL_18:

      v2 = v5;
      if (![v1 count])
      {
        goto LABEL_27;
      }
    }
  }

  v5 = 0;
LABEL_27:

  return v5;
}

void sub_22AE37A2C(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_22AE3A750(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  os_unfair_lock_unlock((v14 + v15));
  _Unwind_Resume(a1);
}

__CFString *HMFStringFromMemoryEvent(uint64_t a1)
{
  if ((a1 - 1) >= 5)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"<Unknown value: %ld>", a1];
  }

  else
  {
    v2 = off_2786E7460[a1 - 1];
  }

  return v2;
}

void serverDidInvalidate(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  v4 = [v3 object];
  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = v4;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = HMFGetLogIdentifier(v6);
      v11 = 138543362;
      v12 = v8;
      _os_log_impl(&dword_22ADEC000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Server invalidated", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    v9 = [v6 delegate];
    [v9 serverDidInvalidate:v6];
  }

  v10 = *MEMORY[0x277D85DE8];
}