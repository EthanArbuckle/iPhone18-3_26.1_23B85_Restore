uint64_t sub_20C63E37C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20C63E3B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF080, &qword_20C654360);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C63E424(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20C63E48C(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for BubbleTipAction();
  v1[3] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  sub_20C64E160();
  v1[5] = sub_20C64E150();
  v5 = sub_20C64E130();
  v1[6] = v5;
  v1[7] = v4;

  return MEMORY[0x2822009F8](sub_20C63E554, v5, v4);
}

uint64_t sub_20C63E554()
{
  v2 = v0[3];
  v1 = v0[4];
  swift_storeEnumTagMultiPayload();
  v3 = *(MEMORY[0x277D043C8] + 4);
  v4 = swift_task_alloc();
  v0[8] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7CFC40, &unk_20C6583C0);
  *v4 = v0;
  v4[1] = sub_20C63E614;
  v6 = v0[4];
  v7 = v0[2];

  return MEMORY[0x282159B08](v6, v5);
}

uint64_t sub_20C63E614()
{
  v1 = *v0;
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 32);
  v7 = *v0;

  sub_20C640D18(v3, type metadata accessor for BubbleTipAction);
  v4 = *(v1 + 56);
  v5 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_20C640E78, v5, v4);
}

uint64_t sub_20C63E76C(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for BubbleTipAction();
  v1[3] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  sub_20C64E160();
  v1[5] = sub_20C64E150();
  v5 = sub_20C64E130();
  v1[6] = v5;
  v1[7] = v4;

  return MEMORY[0x2822009F8](sub_20C63E834, v5, v4);
}

uint64_t sub_20C63E834()
{
  v2 = v0[3];
  v1 = v0[4];
  swift_storeEnumTagMultiPayload();
  v3 = *(MEMORY[0x277D043C8] + 4);
  v4 = swift_task_alloc();
  v0[8] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7CFC40, &unk_20C6583C0);
  *v4 = v0;
  v4[1] = sub_20C63E8F4;
  v6 = v0[4];
  v7 = v0[2];

  return MEMORY[0x282159B08](v6, v5);
}

uint64_t sub_20C63E8F4()
{
  v1 = *v0;
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 32);
  v7 = *v0;

  sub_20C640D18(v3, type metadata accessor for BubbleTipAction);
  v4 = *(v1 + 56);
  v5 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_20C62ADE4, v5, v4);
}

uint64_t sub_20C63EA4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  sub_20C64E160();
  v4[5] = sub_20C64E150();
  v6 = sub_20C64E130();

  return MEMORY[0x2822009F8](sub_20C63EAE8, v6, v5);
}

uint64_t sub_20C63EAE8()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];

  v5 = *v4;
  v6 = *(v4 + 8);
  v5(v3, v2);
  v7 = v0[1];

  return v7();
}

uint64_t sub_20C63EB6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  sub_20C64E160();
  v4[5] = sub_20C64E150();
  v6 = sub_20C64E130();
  v4[6] = v6;
  v4[7] = v5;

  return MEMORY[0x2822009F8](sub_20C63EC08, v6, v5);
}

uint64_t sub_20C63EC08()
{
  v1 = v0[2];
  v2 = *(v1 + 40);
  v8 = (*(v1 + 32) + **(v1 + 32));
  v3 = *(*(v1 + 32) + 4);
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_20C63ECFC;
  v6 = v0[3];
  v5 = v0[4];

  return v8(v6, v5);
}

uint64_t sub_20C63ECFC()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *v1;
  *(*v1 + 72) = v0;

  v5 = *(v2 + 56);
  v6 = *(v2 + 48);
  if (v0)
  {
    v7 = sub_20C63EE38;
  }

  else
  {
    v7 = sub_20C628D5C;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_20C63EE38()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_20C63EE9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[15] = a3;
  v4[16] = a4;
  v4[13] = a1;
  v4[14] = a2;
  v5 = type metadata accessor for BubbleTipAction();
  v4[17] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[18] = swift_task_alloc();
  v4[19] = sub_20C64E160();
  v4[20] = sub_20C64E150();
  v8 = sub_20C64E130();
  v4[21] = v8;
  v4[22] = v7;

  return MEMORY[0x2822009F8](sub_20C63EF6C, v8, v7);
}

uint64_t sub_20C63EF6C()
{
  v1 = v0[14];
  v2 = *(v1 + 24);
  v8 = (*(v1 + 16) + **(v1 + 16));
  v3 = *(*(v1 + 16) + 4);
  v4 = swift_task_alloc();
  v0[23] = v4;
  *v4 = v0;
  v4[1] = sub_20C63F064;
  v5 = v0[15];
  v6 = v0[16];

  return v8(v0 + 7, v5, v6);
}

uint64_t sub_20C63F064()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v4 = *v1;
  *(*v1 + 192) = v0;

  v5 = *(v2 + 176);
  v6 = *(v2 + 168);
  if (v0)
  {
    v7 = sub_20C63F814;
  }

  else
  {
    v7 = sub_20C63F1A0;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_20C63F1A0()
{
  v1 = v0[10];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = *(v1 - 8);
  v4 = *(v3 + 64) + 15;
  v5 = swift_task_alloc();
  (*(v3 + 16))(v5, v2, v1);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_20C64E180();

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v6 = v0[19];
  v7 = sub_20C64E150();
  v0[25] = v7;
  v8 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v9 = *(MEMORY[0x277D856D8] + 4);
  v10 = swift_task_alloc();
  v0[26] = v10;
  *v10 = v0;
  v10[1] = sub_20C63F378;
  v11 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 12, v7, v11);
}

uint64_t sub_20C63F378()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v8 = *v1;

  if (!v0)
  {
    v5 = v2[25];

    v6 = v2[21];
    v7 = v2[22];

    return MEMORY[0x2822009F8](sub_20C63F48C, v6, v7);
  }

  return result;
}

uint64_t sub_20C63F48C()
{
  v1 = v0[12];
  v0[27] = v1;
  if (v1)
  {
    v2 = v0[17];
    v3 = v0[18];
    sub_20C640E2C();
    v4 = v1;
    sub_20C64D0D0();
    swift_storeEnumTagMultiPayload();
    v5 = *(MEMORY[0x277D043C8] + 4);
    v6 = swift_task_alloc();
    v0[28] = v6;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7CFC40, &unk_20C6583C0);
    *v6 = v0;
    v6[1] = sub_20C63F5D8;
    v8 = v0[18];
    v9 = v0[13];

    return MEMORY[0x282159B08](v8, v7);
  }

  else
  {
    v10 = v0[20];
    v11 = v0[18];

    __swift_destroy_boxed_opaque_existential_1(v0 + 2);

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_20C63F5D8()
{
  v1 = *v0;
  v2 = *(*v0 + 224);
  v3 = *(*v0 + 144);
  v7 = *v0;

  sub_20C640D18(v3, type metadata accessor for BubbleTipAction);
  v4 = *(v1 + 176);
  v5 = *(v1 + 168);

  return MEMORY[0x2822009F8](sub_20C63F730, v5, v4);
}

uint64_t sub_20C63F730()
{
  v1 = *(v0 + 152);
  v2 = sub_20C64E150();
  *(v0 + 200) = v2;
  v3 = *(v0 + 48);
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, *(v0 + 40));
  v4 = *(MEMORY[0x277D856D8] + 4);
  v5 = swift_task_alloc();
  *(v0 + 208) = v5;
  *v5 = v0;
  v5[1] = sub_20C63F378;
  v6 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 96, v2, v6);
}

uint64_t sub_20C63F814()
{
  v1 = v0[20];
  v2 = v0[18];

  v3 = v0[1];
  v4 = v0[24];

  return v3();
}

uint64_t sub_20C63F884(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for BubbleTipAction();
  v3[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  sub_20C64E160();
  v3[7] = sub_20C64E150();
  v7 = sub_20C64E130();
  v3[8] = v7;
  v3[9] = v6;

  return MEMORY[0x2822009F8](sub_20C63F950, v7, v6);
}

uint64_t sub_20C63F950()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  *v1 = v0[3];
  v1[1] = v3;
  swift_storeEnumTagMultiPayload();
  v4 = *(MEMORY[0x277D043C8] + 4);

  v5 = swift_task_alloc();
  v0[10] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7CFC40, &unk_20C6583C0);
  *v5 = v0;
  v5[1] = sub_20C63FA24;
  v7 = v0[6];
  v8 = v0[2];

  return MEMORY[0x282159B08](v7, v6);
}

uint64_t sub_20C63FA24()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 48);
  v7 = *v0;

  sub_20C640D18(v3, type metadata accessor for BubbleTipAction);
  v4 = *(v1 + 72);
  v5 = *(v1 + 64);

  return MEMORY[0x2822009F8](sub_20C63FB7C, v5, v4);
}

uint64_t sub_20C63FB7C()
{
  v2 = v0[6];
  v1 = v0[7];

  v3 = v0[1];

  return v3();
}

uint64_t sub_20C63FBE8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_20C62B4BC;

  return sub_20C63F884(a1, v5, v4);
}

uint64_t sub_20C63FC98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BubbleTipFeature(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C63FCFC(uint64_t a1)
{
  v4 = *(type metadata accessor for BubbleTipFeature(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_20C62B4BC;

  return sub_20C63EE9C(a1, v1 + v5, v7, v8);
}

uint64_t objectdestroy_3Tm_0()
{
  v1 = (type metadata accessor for BubbleTipFeature(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;
  v5 = *(v0 + v2 + 8);

  v6 = *(v4 + 24);

  v7 = *(v4 + 40);

  v8 = v1[7];
  v9 = sub_20C64CF70();
  (*(*(v9 - 8) + 8))(v4 + v8, v9);
  v10 = *(v0 + v3 + 8);

  return swift_deallocObject();
}

uint64_t sub_20C63FF24(uint64_t a1)
{
  v4 = *(type metadata accessor for BubbleTipFeature(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_20C5EE6B4;

  return sub_20C63EB6C(a1, v1 + v5, v7, v8);
}

uint64_t sub_20C64003C(uint64_t a1)
{
  v4 = *(type metadata accessor for BubbleTipFeature(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_20C62B4BC;

  return sub_20C63EA4C(a1, v1 + v5, v7, v8);
}

uint64_t sub_20C64019C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_20C640230()
{
  result = qword_281105F50;
  if (!qword_281105F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281105F50);
  }

  return result;
}

uint64_t sub_20C6402F4()
{
  result = sub_20C64CF70();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_20C640370()
{
  sub_20C640460(319, &qword_2811057A0);
  if (v0 <= 0x3F)
  {
    sub_20C640418();
    if (v1 <= 0x3F)
    {
      sub_20C640460(319, &qword_2811057B0);
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_20C640418()
{
  if (!qword_281106838)
  {
    v0 = sub_20C64CF70();
    if (!v1)
    {
      atomic_store(v0, &qword_281106838);
    }
  }
}

void sub_20C640460(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    sub_20C64CF70();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_20C640514(uint64_t a1, uint64_t a2)
{
  v96 = a2;
  v3 = sub_20C64CF70();
  v4 = *(v3 - 8);
  v97 = v3;
  v98 = v4;
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v92 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v95 = &v89 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v89 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v91 = &v89 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v94 = &v89 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v90 = &v89 - v18;
  MEMORY[0x28223BE20](v17);
  v93 = &v89 - v19;
  v20 = _s16FitnessMarketing14TaskIdentifierOMa_0(0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v89 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v89 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v89 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = &v89 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFC38, &qword_20C6583B8);
  v34 = *(*(v33 - 8) + 64);
  v35 = MEMORY[0x28223BE20](v33 - 8);
  v37 = &v89 - v36;
  v38 = (&v89 + *(v35 + 56) - v36);
  sub_20C63E424(a1, &v89 - v36, _s16FitnessMarketing14TaskIdentifierOMa_0);
  sub_20C63E424(v96, v38, _s16FitnessMarketing14TaskIdentifierOMa_0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_20C63E424(v37, v32, _s16FitnessMarketing14TaskIdentifierOMa_0);
      v41 = *v32;
      v40 = *(v32 + 1);
      v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFC30, &qword_20C658270) + 48);
      if (swift_getEnumCaseMultiPayload())
      {
        (*(v98 + 8))(&v32[v42], v97);
LABEL_25:

        goto LABEL_26;
      }

      v75 = *v38;
      v74 = v38[1];
      v76 = *(v98 + 32);
      v77 = &v32[v42];
      v78 = v97;
      v76(v93, v77, v97);
      v79 = v38 + v42;
      v80 = v90;
      v76(v90, v79, v78);
      if (v41 == v75 && v40 == v74)
      {
      }

      else
      {
        v82 = sub_20C64E430();

        if ((v82 & 1) == 0)
        {
          v83 = v97;
          v59 = *(v98 + 8);
          v59(v80, v97);
          v60 = v93;
          v61 = v83;
          goto LABEL_34;
        }
      }

      v86 = v93;
      v45 = sub_20C64CF50();
      v69 = v97;
      v87 = *(v98 + 8);
      v87(v80, v97);
      goto LABEL_41;
    }

    sub_20C63E424(v37, v30, _s16FitnessMarketing14TaskIdentifierOMa_0);
    v48 = *v30;
    v47 = *(v30 + 1);
    v49 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFC30, &qword_20C658270) + 48);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v98 + 8))(&v30[v49], v97);
      goto LABEL_25;
    }

    v51 = *v38;
    v50 = v38[1];
    v52 = *(v98 + 32);
    v53 = &v30[v49];
    v54 = v97;
    v52(v94, v53, v97);
    v55 = v38 + v49;
    v56 = v91;
    v52(v91, v55, v54);
    if (v48 == v51 && v47 == v50)
    {
    }

    else
    {
      v58 = sub_20C64E430();

      if ((v58 & 1) == 0)
      {
        v59 = *(v98 + 8);
        v59(v56, v54);
        v60 = v94;
        v61 = v54;
LABEL_34:
        v59(v60, v61);
        sub_20C640D18(v37, _s16FitnessMarketing14TaskIdentifierOMa_0);
        goto LABEL_27;
      }
    }

    v84 = v94;
    v45 = sub_20C64CF50();
    v85 = *(v98 + 8);
    v85(v56, v54);
    v85(v84, v54);
LABEL_42:
    sub_20C640D18(v37, _s16FitnessMarketing14TaskIdentifierOMa_0);
    return v45 & 1;
  }

  if (EnumCaseMultiPayload != 2)
  {
    sub_20C63E424(v37, v24, _s16FitnessMarketing14TaskIdentifierOMa_0);
    v63 = *v24;
    v62 = *(v24 + 1);
    v64 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFC28, &qword_20C658248) + 48);
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      (*(v98 + 8))(&v24[v64], v97);
      goto LABEL_25;
    }

    v66 = *v38;
    v65 = v38[1];
    v67 = *(v98 + 32);
    v68 = &v24[v64];
    v69 = v97;
    v67(v95, v68, v97);
    v70 = v38 + v64;
    v71 = v92;
    v67(v92, v70, v69);
    if (v63 == v66 && v62 == v65)
    {
    }

    else
    {
      v73 = sub_20C64E430();

      if ((v73 & 1) == 0)
      {
        v59 = *(v98 + 8);
        v59(v71, v69);
        v60 = v95;
        v61 = v69;
        goto LABEL_34;
      }
    }

    v86 = v95;
    v45 = sub_20C64CF50();
    v87 = *(v98 + 8);
    v87(v71, v69);
LABEL_41:
    v87(v86, v69);
    goto LABEL_42;
  }

  sub_20C63E424(v37, v27, _s16FitnessMarketing14TaskIdentifierOMa_0);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v44 = v97;
    v43 = v98;
    (*(v98 + 32))(v12, v38, v97);
    v45 = sub_20C64CF50();
    v46 = *(v43 + 8);
    v46(v12, v44);
    v46(v27, v44);
    goto LABEL_42;
  }

  (*(v98 + 8))(v27, v97);
LABEL_26:
  sub_20C5DBFC4(v37, &qword_27C7CFC38, &qword_20C6583B8);
LABEL_27:
  v45 = 0;
  return v45 & 1;
}

uint64_t sub_20C640D18(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

unint64_t sub_20C640E2C()
{
  result = qword_281105778;
  if (!qword_281105778)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281105778);
  }

  return result;
}

uint64_t MarketingInlineEnvironment.init(resolveMarketingOffer:refreshMarketingOffer:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t sub_20C640E88(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_20C640ED0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_20C640F58(uint64_t a1, char a2, uint64_t (*a3)(uint64_t *))
{
  v4 = a1;
  v5 = a2 & 1;
  return a3(&v4);
}

uint64_t sub_20C640F98@<X0>(void *a1@<X0>, uint64_t (**a2)(uint64_t a1)@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC16FitnessMarketing27MarketingWebViewCoordinator_onPurchase);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_20C60FA78;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_20C5D6A4C(v4);
}

uint64_t sub_20C641038(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_20C60FA38;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC16FitnessMarketing27MarketingWebViewCoordinator_onPurchase);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_20C5D6A4C(v3);
  return sub_20C60B3F4(v8, v9);
}

uint64_t MarketingWebViewCoordinator.onPurchase.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC16FitnessMarketing27MarketingWebViewCoordinator_onPurchase);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];
  sub_20C5D6A4C(v3);
  return v3;
}

uint64_t MarketingWebViewCoordinator.onPurchase.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC16FitnessMarketing27MarketingWebViewCoordinator_onPurchase);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_20C60B3F4(v6, v7);
}

id MarketingWebViewCoordinator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MarketingWebViewCoordinator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void MarketingWebViewCoordinator.webViewController(_:handle:completion:)(uint64_t a1, uint64_t a2, void (*a3)(void, void *), uint64_t a4)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = [objc_allocWithZone(MEMORY[0x277CEE878]) initWithRequest:a2 presentingViewController:Strong];
    v10 = [v9 performAuthentication];
    v14[4] = a3;
    v14[5] = a4;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 1107296256;
    v14[2] = sub_20C641E84;
    v14[3] = &block_descriptor_0;
    v11 = _Block_copy(v14);

    [v10 addFinishBlock_];
    _Block_release(v11);
  }

  else
  {
    sub_20C60FAC0();
    v12 = swift_allocError();
    *v13 = 0;
    v13[1] = 0;
    v13[2] = 1;
    a3(0, v12);
  }
}

{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = [objc_allocWithZone(MEMORY[0x277CEE868]) initWithRequest:a2 presentingViewController:Strong];
    v10 = [v9 present];
    v14[4] = a3;
    v14[5] = a4;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 1107296256;
    v14[2] = sub_20C641E84;
    v14[3] = &block_descriptor_3;
    v11 = _Block_copy(v14);

    [v10 addFinishBlock_];
    _Block_release(v11);
  }

  else
  {
    sub_20C60FAC0();
    v12 = swift_allocError();
    *v13 = 0;
    v13[1] = 0;
    v13[2] = 1;
    a3(0, v12);
  }
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_20C641688(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

void sub_20C64172C(void *a1, int a2, void *a3, void *a4, void *aBlock, void (*a6)(id, id, void *))
{
  v10 = _Block_copy(aBlock);
  _Block_copy(v10);
  v11 = a3;
  v12 = a4;
  v13 = a1;
  a6(v12, v13, v10);
  _Block_release(v10);
  _Block_release(v10);
}

void sub_20C6417D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_20C64CEA0();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

void sub_20C6418F4(uint64_t a1, uint64_t a2, void (**a3)(void, void, void))
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = objc_allocWithZone(MEMORY[0x277CEE878]);
    _Block_copy(a3);
    v9 = [v8 initWithRequest:a1 presentingViewController:v7];
    v10 = [v9 performAuthentication];
    v15[4] = sub_20C641E74;
    v15[5] = v5;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 1107296256;
    v15[2] = sub_20C641E84;
    v15[3] = &block_descriptor_14;
    v11 = _Block_copy(v15);

    [v10 addFinishBlock_];
    _Block_release(v11);
  }

  else
  {
    sub_20C60FAC0();
    v12 = swift_allocError();
    *v13 = 0;
    v13[1] = 0;
    v13[2] = 1;
    _Block_copy(a3);
    v14 = sub_20C64CEA0();
    (a3)[2](a3, 0, v14);
  }
}

void sub_20C641AEC(uint64_t a1, uint64_t a2, void (**a3)(void, void, void))
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = objc_allocWithZone(MEMORY[0x277CEE868]);
    _Block_copy(a3);
    v9 = [v8 initWithRequest:a1 presentingViewController:v7];
    v10 = [v9 present];
    v15[4] = sub_20C641E4C;
    v15[5] = v5;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 1107296256;
    v15[2] = sub_20C641E84;
    v15[3] = &block_descriptor_8;
    v11 = _Block_copy(v15);

    [v10 addFinishBlock_];
    _Block_release(v11);
  }

  else
  {
    sub_20C60FAC0();
    v12 = swift_allocError();
    *v13 = 0;
    v13[1] = 0;
    v13[2] = 1;
    _Block_copy(a3);
    v14 = sub_20C64CEA0();
    (a3)[2](a3, 0, v14);
  }
}

void sub_20C641CE4(void *a1, void *a2)
{
  v3 = v2 + OBJC_IVAR____TtC16FitnessMarketing27MarketingWebViewCoordinator_onPurchase;
  if (a1)
  {
    swift_beginAccess();
    v5 = *v3;
    if (*v3)
    {
      v6 = *(v3 + 8);
      v7 = a1;
      sub_20C5D6A4C(v5);
      v5(a1, 0);
      sub_20C60B3F4(v5, v6);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *v3;
    if (*v3)
    {
      v10 = *(v3 + 8);
      if (a2)
      {
        v11 = a2;
      }

      else
      {
        sub_20C60FAC0();
        v11 = swift_allocError();
        *v12 = 0;
        v12[1] = 0;
        v12[2] = 2;
      }

      sub_20C5D6A4C(v9);
      v13 = a2;
      v9(v11, 1);
      sub_20C60B3F4(v9, v10);
    }
  }
}

uint64_t sub_20C641E88(uint64_t a1)
{
  v2 = sub_20C6432A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C641EC4(uint64_t a1)
{
  v2 = sub_20C6432A8();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_20C641F00()
{
  v1 = *v0;
  v2 = 0x61546E6F69746361;
  v3 = 0x6570704177656976;
  if (v1 != 6)
  {
    v3 = 0x6173694477656976;
  }

  v4 = 0x616C507465736572;
  if (v1 != 4)
  {
    v4 = 0xD000000000000010;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x657461676976616ELL;
  if (v1 != 2)
  {
    v5 = 0xD000000000000018;
  }

  if (*v0)
  {
    v2 = 0xD000000000000014;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_20C64202C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_20C644BBC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_20C642054(uint64_t a1)
{
  v2 = sub_20C642FA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C642090(uint64_t a1)
{
  v2 = sub_20C642FA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C6420CC(uint64_t a1)
{
  v2 = sub_20C643254();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C642108(uint64_t a1)
{
  v2 = sub_20C643254();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C642144(uint64_t a1)
{
  v2 = sub_20C643200();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C642180(uint64_t a1)
{
  v2 = sub_20C643200();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C6421BC(uint64_t a1)
{
  v2 = sub_20C6431AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C6421F8(uint64_t a1)
{
  v2 = sub_20C6431AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C642234(uint64_t a1)
{
  v2 = sub_20C643158();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C642270(uint64_t a1)
{
  v2 = sub_20C643158();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C6422AC(uint64_t a1)
{
  v2 = sub_20C643104();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C6422E8(uint64_t a1)
{
  v2 = sub_20C643104();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C642324(uint64_t a1)
{
  v2 = sub_20C6430B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C642360(uint64_t a1)
{
  v2 = sub_20C6430B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C64239C(uint64_t a1)
{
  v2 = sub_20C64305C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C6423D8(uint64_t a1)
{
  v2 = sub_20C64305C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BubbleTipAction.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFCC0, &qword_20C658470);
  v89 = *(v2 - 8);
  v90 = v2;
  v3 = *(v89 + 64);
  MEMORY[0x28223BE20](v2);
  v88 = &v64 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFCC8, &qword_20C658478);
  v86 = *(v5 - 8);
  v87 = v5;
  v6 = *(v86 + 64);
  MEMORY[0x28223BE20](v5);
  v85 = &v64 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFCD0, &qword_20C658480);
  v83 = *(v8 - 8);
  v84 = v8;
  v9 = *(v83 + 64);
  MEMORY[0x28223BE20](v8);
  v82 = &v64 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFCD8, &qword_20C658488);
  v80 = *(v11 - 8);
  v81 = v11;
  v12 = *(v80 + 64);
  MEMORY[0x28223BE20](v11);
  v78 = &v64 - v13;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFCE0, &qword_20C658490);
  v77 = *(v79 - 8);
  v14 = *(v77 + 64);
  MEMORY[0x28223BE20](v79);
  v76 = &v64 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFCE8, &qword_20C658498);
  v74 = *(v16 - 8);
  v75 = v16;
  v17 = *(v74 + 64);
  MEMORY[0x28223BE20](v16);
  v71 = &v64 - v18;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFCF0, &unk_20C6584A0);
  v72 = *(v73 - 8);
  v19 = *(v72 + 64);
  MEMORY[0x28223BE20](v73);
  v70 = &v64 - v20;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFC20, &qword_20C658240);
  v68 = *(v69 - 8);
  v21 = *(v68 + 64);
  MEMORY[0x28223BE20](v69);
  v67 = &v64 - v22;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFCF8, &unk_20C6584B0);
  v65 = *(v66 - 8);
  v23 = *(v65 + 64);
  MEMORY[0x28223BE20](v66);
  v25 = &v64 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFC18, &qword_20C658238);
  v64 = *(v26 - 8);
  v27 = *(v64 + 64);
  MEMORY[0x28223BE20](v26);
  v29 = &v64 - v28;
  v30 = type metadata accessor for BubbleTipAction();
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30);
  v33 = (&v64 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFD00, &qword_20C6584C0);
  v35 = *(v34 - 8);
  v92 = v34;
  v93 = v35;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  v38 = &v64 - v37;
  v39 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C642FA4();
  sub_20C64E500();
  sub_20C642FF8(v91, v33);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v100 = 6;
        sub_20C6430B0();
        v45 = v85;
        v46 = v92;
        sub_20C64E3B0();
        v48 = v86;
        v47 = v87;
      }

      else
      {
        v101 = 7;
        sub_20C64305C();
        v45 = v88;
        v46 = v92;
        sub_20C64E3B0();
        v48 = v89;
        v47 = v90;
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      v98 = 4;
      sub_20C643158();
      v45 = v78;
      v46 = v92;
      sub_20C64E3B0();
      v48 = v80;
      v47 = v81;
    }

    else
    {
      v99 = 5;
      sub_20C643104();
      v45 = v82;
      v46 = v92;
      sub_20C64E3B0();
      v48 = v83;
      v47 = v84;
    }

    (*(v48 + 8))(v45, v47);
    return (*(v93 + 8))(v38, v46);
  }

  else
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v49 = *v33;
        v50 = v33[1];
        v96 = 2;
        sub_20C643200();
        v51 = v71;
        v52 = v92;
        sub_20C64E3B0();
        v53 = v75;
        sub_20C64E3E0();

        (*(v74 + 8))(v51, v53);
        return (*(v93 + 8))(v38, v52);
      }

      v61 = *v33;
      v97 = 3;
      sub_20C6431AC();
      v62 = v76;
      v59 = v92;
      sub_20C64E3B0();
      v63 = v79;
      sub_20C64E3F0();
      (*(v77 + 8))(v62, v63);
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        v41 = v64;
        (*(v64 + 32))(v29, v33, v26);
        v94 = 0;
        sub_20C6432A8();
        v42 = v92;
        sub_20C64E3B0();
        sub_20C5E5558(&qword_27C7CFD58, &qword_27C7CFC18, &qword_20C658238);
        v43 = v66;
        sub_20C64E410();
        (*(v65 + 8))(v25, v43);
        (*(v41 + 8))(v29, v26);
        return (*(v93 + 8))(v38, v42);
      }

      v54 = v68;
      v55 = v67;
      v56 = v33;
      v57 = v69;
      (*(v68 + 32))(v67, v56, v69);
      v95 = 1;
      sub_20C643254();
      v58 = v70;
      v59 = v92;
      sub_20C64E3B0();
      sub_20C5E5558(&qword_27C7CFD48, &qword_27C7CFC20, &qword_20C658240);
      v60 = v73;
      sub_20C64E410();
      (*(v72 + 8))(v58, v60);
      (*(v54 + 8))(v55, v57);
    }

    return (*(v93 + 8))(v38, v59);
  }
}

uint64_t type metadata accessor for BubbleTipAction()
{
  result = qword_281105E78;
  if (!qword_281105E78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_20C642FA4()
{
  result = qword_27C7CFD08;
  if (!qword_27C7CFD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFD08);
  }

  return result;
}

uint64_t sub_20C642FF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BubbleTipAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_20C64305C()
{
  result = qword_27C7CFD10;
  if (!qword_27C7CFD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFD10);
  }

  return result;
}

unint64_t sub_20C6430B0()
{
  result = qword_27C7CFD18;
  if (!qword_27C7CFD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFD18);
  }

  return result;
}

unint64_t sub_20C643104()
{
  result = qword_27C7CFD20;
  if (!qword_27C7CFD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFD20);
  }

  return result;
}

unint64_t sub_20C643158()
{
  result = qword_27C7CFD28;
  if (!qword_27C7CFD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFD28);
  }

  return result;
}

unint64_t sub_20C6431AC()
{
  result = qword_27C7CFD30;
  if (!qword_27C7CFD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFD30);
  }

  return result;
}

unint64_t sub_20C643200()
{
  result = qword_27C7CFD38;
  if (!qword_27C7CFD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFD38);
  }

  return result;
}

unint64_t sub_20C643254()
{
  result = qword_27C7CFD40;
  if (!qword_27C7CFD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFD40);
  }

  return result;
}

unint64_t sub_20C6432A8()
{
  result = qword_27C7CFD50;
  if (!qword_27C7CFD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFD50);
  }

  return result;
}

uint64_t BubbleTipAction.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v107 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFD60, &qword_20C6584C8);
  v94 = *(v3 - 8);
  v95 = v3;
  v4 = *(v94 + 64);
  MEMORY[0x28223BE20](v3);
  v106 = &v76 - v5;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFD68, &qword_20C6584D0);
  v92 = *(v93 - 8);
  v6 = *(v92 + 64);
  MEMORY[0x28223BE20](v93);
  v101 = &v76 - v7;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFD70, &qword_20C6584D8);
  v90 = *(v91 - 8);
  v8 = *(v90 + 64);
  MEMORY[0x28223BE20](v91);
  v100 = &v76 - v9;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFD78, &qword_20C6584E0);
  v88 = *(v89 - 8);
  v10 = *(v88 + 64);
  MEMORY[0x28223BE20](v89);
  v99 = &v76 - v11;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFD80, &qword_20C6584E8);
  v87 = *(v86 - 8);
  v12 = *(v87 + 64);
  MEMORY[0x28223BE20](v86);
  v105 = &v76 - v13;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFD88, &qword_20C6584F0);
  v84 = *(v85 - 8);
  v14 = *(v84 + 64);
  MEMORY[0x28223BE20](v85);
  v97 = &v76 - v15;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFD90, &qword_20C6584F8);
  v82 = *(v83 - 8);
  v16 = *(v82 + 64);
  MEMORY[0x28223BE20](v83);
  v98 = &v76 - v17;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFD98, &qword_20C658500);
  v81 = *(v103 - 8);
  v18 = *(v81 + 64);
  MEMORY[0x28223BE20](v103);
  v96 = &v76 - v19;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFDA0, &unk_20C658508);
  v108 = *(v104 - 8);
  v20 = *(v108 + 64);
  MEMORY[0x28223BE20](v104);
  v22 = &v76 - v21;
  v102 = type metadata accessor for BubbleTipAction();
  v23 = *(*(v102 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v102);
  v26 = &v76 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = (&v76 - v28);
  v30 = MEMORY[0x28223BE20](v27);
  v32 = &v76 - v31;
  v33 = MEMORY[0x28223BE20](v30);
  v35 = &v76 - v34;
  MEMORY[0x28223BE20](v33);
  v37 = &v76 - v36;
  v39 = a1[3];
  v38 = a1[4];
  v110 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v39);
  sub_20C642FA4();
  v40 = v109;
  sub_20C64E4F0();
  if (!v40)
  {
    v77 = v29;
    v78 = v26;
    v80 = v35;
    v79 = v32;
    v42 = v103;
    v41 = v104;
    v44 = v105;
    v43 = v106;
    v109 = v37;
    v45 = v107;
    v46 = sub_20C64E3A0();
    v47 = (2 * *(v46 + 16)) | 1;
    v111 = v46;
    v112 = v46 + 32;
    v113 = 0;
    v114 = v47;
    v48 = sub_20C5DD220();
    if (v48 != 8 && v113 == v114 >> 1)
    {
      if (v48 > 3u)
      {
        if (v48 > 5u)
        {
          v57 = v45;
          if (v48 == 6)
          {
            v115 = 6;
            sub_20C6430B0();
            v64 = v101;
            sub_20C64E320();
            v59 = v108;
            (*(v92 + 8))(v64, v93);
          }

          else
          {
            v115 = 7;
            sub_20C64305C();
            sub_20C64E320();
            v59 = v108;
            (*(v94 + 8))(v43, v95);
          }
        }

        else
        {
          v57 = v45;
          if (v48 == 4)
          {
            v115 = 4;
            sub_20C643158();
            v58 = v99;
            sub_20C64E320();
            v59 = v108;
            (*(v88 + 8))(v58, v89);
          }

          else
          {
            v115 = 5;
            sub_20C643104();
            v68 = v100;
            sub_20C64E320();
            v59 = v108;
            (*(v90 + 8))(v68, v91);
          }
        }

        (*(v59 + 8))(v22, v41);
        swift_unknownObjectRelease();
        v60 = v109;
        swift_storeEnumTagMultiPayload();
        goto LABEL_24;
      }

      if (v48 > 1u)
      {
        if (v48 == 2)
        {
          v115 = 2;
          sub_20C643200();
          v61 = v97;
          sub_20C64E320();
          v62 = v41;
          v63 = v85;
          v70 = sub_20C64E360();
          v72 = v71;
          (*(v84 + 8))(v61, v63);
          (*(v108 + 8))(v22, v62);
          swift_unknownObjectRelease();
          v50 = v77;
          *v77 = v70;
          v50[1] = v72;
        }

        else
        {
          v115 = 3;
          sub_20C6431AC();
          sub_20C64E320();
          v69 = v86;
          v74 = sub_20C64E370();
          (*(v87 + 8))(v44, v69);
          (*(v108 + 8))(v22, v41);
          swift_unknownObjectRelease();
          v75 = v74 & 1;
          v50 = v78;
          *v78 = v75;
        }
      }

      else
      {
        if (v48)
        {
          v115 = 1;
          sub_20C643254();
          v65 = v98;
          sub_20C64E320();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFC20, &qword_20C658240);
          sub_20C5E5558(&qword_27C7CFDA8, &qword_27C7CFC20, &qword_20C658240);
          v66 = v79;
          v67 = v83;
          sub_20C64E390();
          (*(v82 + 8))(v65, v67);
          (*(v108 + 8))(v22, v41);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v73 = v66;
LABEL_23:
          v60 = v109;
          sub_20C6441A0(v73, v109);
          v57 = v45;
LABEL_24:
          sub_20C6441A0(v60, v57);
          return __swift_destroy_boxed_opaque_existential_1(v110);
        }

        v115 = 0;
        sub_20C6432A8();
        v49 = v96;
        sub_20C64E320();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFC18, &qword_20C658238);
        sub_20C5E5558(&qword_27C7CFDB0, &qword_27C7CFC18, &qword_20C658238);
        sub_20C64E390();
        (*(v81 + 8))(v49, v42);
        (*(v108 + 8))(v22, v41);
        swift_unknownObjectRelease();
        v50 = v80;
      }

      swift_storeEnumTagMultiPayload();
      v73 = v50;
      goto LABEL_23;
    }

    v51 = sub_20C64E290();
    swift_allocError();
    v52 = v41;
    v54 = v53;
    v55 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE088, &qword_20C64F6A0) + 48);
    *v54 = v102;
    sub_20C64E330();
    sub_20C64E280();
    (*(*(v51 - 8) + 104))(v54, *MEMORY[0x277D84160], v51);
    swift_willThrow();
    (*(v108 + 8))(v22, v52);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v110);
}

uint64_t sub_20C6441A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BubbleTipAction();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_20C644234()
{
  sub_20C6442EC(319, &qword_281105B58, &qword_281105780, 0x277CEE490);
  if (v0 <= 0x3F)
  {
    sub_20C6442EC(319, &qword_281105B50, &qword_281105778, 0x277CEE488);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_20C6442EC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_20C5F94D4(255, a3, a4);
    v5 = sub_20C64D0C0();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_20C6443D8()
{
  result = qword_27C7CFDB8;
  if (!qword_27C7CFDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFDB8);
  }

  return result;
}

unint64_t sub_20C644430()
{
  result = qword_27C7CFDC0;
  if (!qword_27C7CFDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFDC0);
  }

  return result;
}

unint64_t sub_20C644488()
{
  result = qword_27C7CFDC8;
  if (!qword_27C7CFDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFDC8);
  }

  return result;
}

unint64_t sub_20C6444E0()
{
  result = qword_27C7CFDD0;
  if (!qword_27C7CFDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFDD0);
  }

  return result;
}

unint64_t sub_20C644538()
{
  result = qword_27C7CFDD8;
  if (!qword_27C7CFDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFDD8);
  }

  return result;
}

unint64_t sub_20C644590()
{
  result = qword_27C7CFDE0;
  if (!qword_27C7CFDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFDE0);
  }

  return result;
}

unint64_t sub_20C6445E8()
{
  result = qword_27C7CFDE8;
  if (!qword_27C7CFDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFDE8);
  }

  return result;
}

unint64_t sub_20C644640()
{
  result = qword_27C7CFDF0;
  if (!qword_27C7CFDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFDF0);
  }

  return result;
}

unint64_t sub_20C644698()
{
  result = qword_27C7CFDF8;
  if (!qword_27C7CFDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFDF8);
  }

  return result;
}

unint64_t sub_20C6446F0()
{
  result = qword_27C7CFE00;
  if (!qword_27C7CFE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFE00);
  }

  return result;
}

unint64_t sub_20C644748()
{
  result = qword_27C7CFE08;
  if (!qword_27C7CFE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFE08);
  }

  return result;
}

unint64_t sub_20C6447A0()
{
  result = qword_27C7CFE10;
  if (!qword_27C7CFE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFE10);
  }

  return result;
}

unint64_t sub_20C6447F8()
{
  result = qword_27C7CFE18;
  if (!qword_27C7CFE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFE18);
  }

  return result;
}

unint64_t sub_20C644850()
{
  result = qword_27C7CFE20;
  if (!qword_27C7CFE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFE20);
  }

  return result;
}

unint64_t sub_20C6448A8()
{
  result = qword_27C7CFE28;
  if (!qword_27C7CFE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFE28);
  }

  return result;
}

unint64_t sub_20C644900()
{
  result = qword_27C7CFE30;
  if (!qword_27C7CFE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFE30);
  }

  return result;
}

unint64_t sub_20C644958()
{
  result = qword_27C7CFE38;
  if (!qword_27C7CFE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFE38);
  }

  return result;
}

unint64_t sub_20C6449B0()
{
  result = qword_27C7CFE40;
  if (!qword_27C7CFE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFE40);
  }

  return result;
}

unint64_t sub_20C644A08()
{
  result = qword_27C7CFE48;
  if (!qword_27C7CFE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFE48);
  }

  return result;
}

unint64_t sub_20C644A60()
{
  result = qword_27C7CFE50;
  if (!qword_27C7CFE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFE50);
  }

  return result;
}

unint64_t sub_20C644AB8()
{
  result = qword_27C7CFE58;
  if (!qword_27C7CFE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFE58);
  }

  return result;
}

unint64_t sub_20C644B10()
{
  result = qword_27C7CFE60;
  if (!qword_27C7CFE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFE60);
  }

  return result;
}

unint64_t sub_20C644B68()
{
  result = qword_27C7CFE68;
  if (!qword_27C7CFE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFE68);
  }

  return result;
}

uint64_t sub_20C644BBC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x61546E6F69746361 && a2 == 0xEC00000064657070;
  if (v4 || (sub_20C64E430() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x800000020C65A680 == a2 || (sub_20C64E430() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x657461676976616ELL && a2 == 0xED00004C52556F54 || (sub_20C64E430() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000018 && 0x800000020C65A6A0 == a2 || (sub_20C64E430() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x616C507465736572 && a2 == 0xEE00746E656D6563 || (sub_20C64E430() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x800000020C65A6C0 == a2 || (sub_20C64E430() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6570704177656976 && a2 == 0xEC00000064657261 || (sub_20C64E430() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6173694477656976 && a2 == 0xEF64657261657070)
  {

    return 7;
  }

  else
  {
    v6 = sub_20C64E430();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_20C644E78@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v75 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFE70, &qword_20C658E48);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v69 = v62 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFE78, &qword_20C658E50);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v68 = v62 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFE80, &qword_20C658E58);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v67 = v62 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFE88, &qword_20C658E60);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v64 = v62 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFE90, &qword_20C658E68);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v65 = v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v66 = v62 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFE98, &qword_20C658E70);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v70 = v62 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFEA0, &qword_20C658E78);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v71 = v62 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFEA8, &qword_20C658E80);
  v27 = *(v26 - 8);
  v72 = v26;
  v73 = v27;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v63 = v62 - v29;
  v30 = sub_20C64CE90();
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v32 = sub_20C64CE30();
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32);
  v34 = sub_20C64CE50();
  v74 = *(v34 - 8);
  v35 = *(v74 + 64);
  v36 = MEMORY[0x28223BE20](v34);
  v62[0] = v62 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v39 = v62 - v38;
  v62[1] = a1;
  sub_20C64CF80();
  v40 = sub_20C64CFC0();
  v42 = v41;

  if (v42)
  {
    v43 = v40;
  }

  else
  {
    v43 = 0;
  }

  if (v42)
  {
    v44 = v42;
  }

  else
  {
    v44 = 0xE000000000000000;
  }

  sub_20C64CE20();
  sub_20C6457AC(&qword_27C7CFEB0, MEMORY[0x277CC8B30]);
  v80 = sub_20C64E0C0();
  v81 = v45;
  v78 = 16421;
  v79 = 0xE200000000000000;
  v76 = v43;
  v77 = v44;
  sub_20C602C18();
  sub_20C64E200();

  sub_20C64CE80();
  v46 = v34;
  sub_20C64CE60();
  v80 = 28197;
  v81 = 0xE200000000000000;
  v47 = sub_20C64CFE0();
  v48 = v70;
  (*(*(v47 - 8) + 56))(v70, 1, 1, v47);
  sub_20C6457AC(&qword_27C7CFEB8, MEMORY[0x277CC8C40]);
  v49 = v71;
  sub_20C64CEB0();
  v50 = v72;
  sub_20C5DBFC4(v48, &qword_27C7CFE98, &qword_20C658E70);
  if ((*(v73 + 48))(v49, 1, v50) == 1)
  {
    sub_20C5DBFC4(v49, &qword_27C7CFEA0, &qword_20C658E78);
    v51 = v74;
  }

  else
  {
    v52 = v63;
    sub_20C6457F4(v49, v63);
    sub_20C64CF80();
    v73 = v46;
    sub_20C64E070();

    sub_20C64CE80();
    v53 = v62[0];
    sub_20C64CE60();
    v54 = sub_20C64D8F0();
    (*(*(v54 - 8) + 56))(v64, 1, 1, v54);
    v55 = sub_20C64D900();
    (*(*(v55 - 8) + 56))(v67, 1, 1, v55);
    v56 = sub_20C64D910();
    (*(*(v56 - 8) + 56))(v68, 1, 1, v56);
    v57 = sub_20C64D8E0();
    (*(*(v57 - 8) + 56))(v69, 1, 1, v57);
    v58 = v66;
    sub_20C64D920();
    v59 = sub_20C64D930();
    (*(*(v59 - 8) + 56))(v58, 0, 1, v59);
    sub_20C645864(v58, v65);
    sub_20C6458D4();
    v46 = v73;
    sub_20C64CE70();
    sub_20C5DBFC4(v58, &qword_27C7CFE90, &qword_20C658E68);
    sub_20C645928();
    sub_20C64CE40();
    v60 = v74;
    (*(v74 + 8))(v53, v46);
    sub_20C5DBFC4(v52, &qword_27C7CFEA8, &qword_20C658E80);
    v51 = v60;
  }

  return (*(v51 + 32))(v75, v39, v46);
}

uint64_t sub_20C6457AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20C6457F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFEA8, &qword_20C658E80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C645864(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFE90, &qword_20C658E68);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_20C6458D4()
{
  result = qword_27C7CFEC0;
  if (!qword_27C7CFEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFEC0);
  }

  return result;
}

unint64_t sub_20C645928()
{
  result = qword_27C7CFEC8;
  if (!qword_27C7CFEC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CFEA8, &qword_20C658E80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFEC8);
  }

  return result;
}

uint64_t sub_20C64598C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v78 = a8;
  v89 = a7;
  v86 = a5;
  v87 = a6;
  v84 = a3;
  v85 = a4;
  v83 = a2;
  v81 = a1;
  v92 = a9;
  v82 = a11;
  v73 = a10;
  v90 = sub_20C64D320();
  v12 = *(*(v90 - 8) + 64);
  MEMORY[0x28223BE20](v90);
  v91 = v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = *(a8 + 24);
  sub_20C64D700();
  v93 = sub_20C64D2E0();
  v88 = *(v93 - 8);
  v14 = *(v88 + 64);
  MEMORY[0x28223BE20](v93);
  v75 = v63 - v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF1F0, &qword_20C6570E0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF9B0, &qword_20C6570E8);
  sub_20C64D2E0();
  swift_getTupleTypeMetadata3();
  sub_20C64DE30();
  swift_getWitnessTable();
  sub_20C64DD60();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF9B8, &qword_20C6570F0);
  sub_20C64D2E0();
  sub_20C64D2E0();
  sub_20C64D2E0();
  sub_20C64D2E0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF9C0, &qword_20C6570F8);
  v16 = sub_20C64D2E0();
  WitnessTable = swift_getWitnessTable();
  v18 = sub_20C5E5558(&qword_2811058B0, &qword_27C7CF9B8, &qword_20C6570F0);
  v127 = WitnessTable;
  v128 = v18;
  v125 = swift_getWitnessTable();
  v126 = MEMORY[0x277CDF918];
  v19 = MEMORY[0x277CDF918];
  v123 = swift_getWitnessTable();
  v124 = v19;
  v121 = swift_getWitnessTable();
  v122 = v19;
  v20 = swift_getWitnessTable();
  v21 = sub_20C5E5558(&qword_281105988, &qword_27C7CF9C0, &qword_20C6570F8);
  v119 = v20;
  v120 = v21;
  v63[1] = v16;
  v63[2] = swift_getWitnessTable();
  v66 = sub_20C64D340();
  v65 = sub_20C64D2E0();
  v69 = *(v65 - 8);
  v22 = *(v69 + 64);
  MEMORY[0x28223BE20](v65);
  v24 = v63 - v23;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF180, &qword_20C654520);
  v70 = sub_20C64D2E0();
  v72 = *(v70 - 8);
  v25 = *(v72 + 64);
  MEMORY[0x28223BE20](v70);
  v64 = v63 - v26;
  v74 = sub_20C64D2E0();
  v79 = *(v74 - 8);
  v27 = *(v79 + 64);
  MEMORY[0x28223BE20](v74);
  v68 = v63 - v28;
  v67 = sub_20C64D2E0();
  v80 = *(v67 - 8);
  v29 = *(v80 + 64);
  v30 = MEMORY[0x28223BE20](v67);
  v71 = v63 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v76 = v63 - v32;
  v33 = v77;
  v34 = v78;
  v35 = *(v78 + 40);
  v36 = v75;
  sub_20C64DAF0();
  sub_20C64DDF0();
  v95 = *(v34 + 16);
  v96 = v33;
  v37 = *(v34 + 32);
  v97 = v73;
  v98 = v37;
  v99 = v35;
  v100 = v82;
  v101 = v83;
  v102 = v84;
  v103 = v94;
  v104 = v85;
  v105 = v86;
  v106 = v87;
  v107 = v89;
  v38 = sub_20C614C94(&qword_281105888, MEMORY[0x277CDE470]);
  v117 = v35;
  v118 = v38;
  v39 = v93;
  v40 = swift_getWitnessTable();
  sub_20C64DB70();
  (*(v88 + 8))(v36, v39);
  v41 = v34;
  sub_20C62E988(v34);
  swift_getKeyPath();
  sub_20C64DF30();

  v42 = v116;
  v43 = *(v90 + 20);
  v44 = *MEMORY[0x277CE0118];
  v45 = sub_20C64D4A0();
  v46 = v91;
  (*(*(v45 - 8) + 104))(&v91[v43], v44, v45);
  *v46 = v42;
  v46[1] = v42;
  v47 = swift_getWitnessTable();
  v114 = v40;
  v115 = v47;
  v48 = v65;
  v49 = swift_getWitnessTable();
  sub_20C614C94(&qword_2811059A0, MEMORY[0x277CDFC08]);
  v50 = v64;
  sub_20C64DBD0();
  sub_20C614724(v46);
  (*(v69 + 8))(v24, v48);
  sub_20C62E988(v41);
  swift_getKeyPath();
  sub_20C64DF30();

  v51 = sub_20C5E5558(&qword_281105B18, &qword_27C7CF180, &qword_20C654520);
  v112 = v49;
  v113 = v51;
  v52 = v70;
  v53 = swift_getWitnessTable();
  v54 = v68;
  sub_20C64DA30();
  (*(v72 + 8))(v50, v52);
  sub_20C64D790();
  sub_20C62E988(v41);
  swift_getKeyPath();
  sub_20C64DF30();

  v110 = v53;
  v111 = MEMORY[0x277CE01B0];
  v55 = v74;
  v56 = swift_getWitnessTable();
  v57 = v71;
  sub_20C64DB80();
  (*(v79 + 8))(v54, v55);
  v108 = v56;
  v109 = MEMORY[0x277CDF918];
  v58 = v67;
  v59 = swift_getWitnessTable();
  v60 = v76;
  sub_20C606460(v57, v58, v59);
  v61 = *(v80 + 8);
  v61(v57, v58);
  sub_20C606460(v60, v58, v59);
  return (v61)(v60, v58);
}

uint64_t sub_20C6463E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v59 = a7;
  v68 = a5;
  v69 = a6;
  v66 = a3;
  v67 = a4;
  v65 = a2;
  v63 = a1;
  v83 = a9;
  v62 = a14;
  v61 = a13;
  v60 = a12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF1F0, &qword_20C6570E0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF9B0, &qword_20C6570E8);
  sub_20C64D2E0();
  swift_getTupleTypeMetadata3();
  sub_20C64DE30();
  swift_getWitnessTable();
  v15 = sub_20C64DD60();
  v57 = *(v15 - 8);
  v16 = *(v57 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v56 - v17;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF9B8, &qword_20C6570F0);
  v64 = sub_20C64D2E0();
  v72 = *(v64 - 8);
  v19 = *(v72 + 64);
  MEMORY[0x28223BE20](v64);
  v56 = &v56 - v20;
  v73 = sub_20C64D2E0();
  v78 = *(v73 - 8);
  v21 = *(v78 + 64);
  MEMORY[0x28223BE20](v73);
  v58 = &v56 - v22;
  v74 = sub_20C64D2E0();
  v79 = *(v74 - 8);
  v23 = *(v79 + 64);
  MEMORY[0x28223BE20](v74);
  v70 = &v56 - v24;
  v76 = sub_20C64D2E0();
  v81 = *(v76 - 8);
  v25 = *(v81 + 64);
  MEMORY[0x28223BE20](v76);
  v71 = &v56 - v26;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF9C0, &qword_20C6570F8);
  v77 = sub_20C64D2E0();
  v82 = *(v77 - 8);
  v27 = *(v82 + 64);
  v28 = MEMORY[0x28223BE20](v77);
  v75 = &v56 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v80 = &v56 - v30;
  sub_20C64D4D0();
  v84 = a8;
  v85 = a10;
  v32 = v60;
  v31 = v61;
  v86 = a11;
  v87 = v60;
  v88 = v61;
  v89 = v62;
  v90 = v63;
  v91 = v65;
  v92 = v66;
  v93 = v67;
  v94 = v68;
  v95 = v69;
  v96 = v59;
  sub_20C64DD50();
  WitnessTable = swift_getWitnessTable();
  v34 = v56;
  sub_20C64DB20();
  (*(v57 + 8))(v18, v15);
  LODWORD(v69) = sub_20C64D790();
  v107 = a8;
  v108 = a10;
  v109 = v32;
  v110 = v31;
  v35 = type metadata accessor for MarketingInlineView();
  sub_20C62E988(v35);
  swift_getKeyPath();
  sub_20C64DF30();

  v36 = sub_20C5E5558(&qword_2811058B0, &qword_27C7CF9B8, &qword_20C6570F0);
  v105 = WitnessTable;
  v106 = v36;
  v37 = v64;
  v38 = swift_getWitnessTable();
  v39 = v58;
  sub_20C64DB80();
  (*(v72 + 8))(v34, v37);
  sub_20C64D7C0();
  sub_20C62E988(v35);
  swift_getKeyPath();
  sub_20C64DF30();

  v40 = MEMORY[0x277CDF918];
  v103 = v38;
  v104 = MEMORY[0x277CDF918];
  v41 = v73;
  v42 = swift_getWitnessTable();
  v43 = v70;
  sub_20C64DB80();
  (*(v78 + 8))(v39, v41);
  sub_20C64D7B0();
  v101 = v42;
  v102 = v40;
  v44 = v74;
  v45 = swift_getWitnessTable();
  v46 = v71;
  sub_20C64DB80();
  (*(v79 + 8))(v43, v44);
  sub_20C64DE00();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFED0, &qword_20C658EB0);
  v99 = v45;
  v100 = v40;
  v47 = v76;
  v48 = swift_getWitnessTable();
  sub_20C64802C();
  v49 = v75;
  sub_20C64DA00();
  (*(v81 + 8))(v46, v47);
  v50 = sub_20C5E5558(&qword_281105988, &qword_27C7CF9C0, &qword_20C6570F8);
  v97 = v48;
  v98 = v50;
  v51 = v77;
  v52 = swift_getWitnessTable();
  v53 = v80;
  sub_20C606460(v49, v51, v52);
  v54 = *(v82 + 8);
  v54(v49, v51);
  sub_20C606460(v53, v51, v52);
  return (v54)(v53, v51);
}

uint64_t sub_20C646C64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(uint64_t)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, __int128 a12, uint64_t a13)
{
  v187 = a8;
  WitnessTable = a3;
  v172 = a7;
  v173 = a6;
  v164 = a1;
  v179 = a9;
  v186 = a10;
  v171 = *(a11 - 8);
  v16 = *(v171 + 64);
  v185 = a12;
  MEMORY[0x28223BE20](a1);
  v169 = &v148 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = v18;
  v178 = sub_20C64D2E0();
  v175 = *(v178 - 8);
  v19 = *(v175 + 64);
  v20 = MEMORY[0x28223BE20](v178);
  v177 = &v148 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v176 = &v148 - v22;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFEE0, &qword_20C658EF0);
  v23 = *(*(v152 - 8) + 64);
  MEMORY[0x28223BE20](v152);
  v154 = &v148 - v24;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFEE8, &qword_20C658EF8);
  v25 = *(*(v153 - 8) + 64);
  MEMORY[0x28223BE20](v153);
  v157 = &v148 - v26;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFEF0, &qword_20C658F00);
  v167 = *(v180 - 8);
  v27 = *(v167 + 64);
  v28 = MEMORY[0x28223BE20](v180);
  v156 = &v148 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v155 = &v148 - v30;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF9B0, &qword_20C6570E8);
  v31 = *(*(v168 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v168);
  v170 = &v148 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v189 = &v148 - v34;
  v35 = sub_20C64D880();
  v183 = *(v35 - 8);
  v184 = v35;
  v36 = *(v183 + 64);
  MEMORY[0x28223BE20](v35);
  v182 = &v148 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE290, &unk_20C655580);
  v38 = *(*(v181 - 8) + 64);
  MEMORY[0x28223BE20](v181);
  v40 = &v148 - v39;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF210, &qword_20C6545D8);
  v41 = *(*(v158 - 8) + 64);
  MEMORY[0x28223BE20](v158);
  v43 = &v148 - v42;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF218, &qword_20C6545E0);
  v44 = *(*(v159 - 8) + 64);
  MEMORY[0x28223BE20](v159);
  v162 = &v148 - v45;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF1E0, &qword_20C6545B8);
  v46 = *(*(v161 - 8) + 64);
  MEMORY[0x28223BE20](v161);
  v163 = &v148 - v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF1E8, &qword_20C6545C0);
  v49 = *(v48 - 8);
  v50 = *(v49 + 64);
  v51 = MEMORY[0x28223BE20](v48);
  v53 = &v148 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v51);
  v160 = &v148 - v54;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF1F0, &qword_20C6570E0);
  v55 = *(*(v165 - 8) + 64);
  v56 = MEMORY[0x28223BE20](v165);
  v166 = &v148 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v56);
  v58 = MEMORY[0x277CDFA10];
  v190 = &v148 - v59;
  if (a2)
  {
    v148 = v49;
    v149 = v48;
    v150 = a4;
    v151 = a5;
    *&v203 = v164;
    *(&v203 + 1) = a2;
    sub_20C602C18();

    v60 = sub_20C64D970();
    v62 = v61;
    *&v203 = v60;
    *(&v203 + 1) = v61;
    v64 = v63 & 1;
    LOBYTE(v204) = v63 & 1;
    *(&v204 + 1) = v65;
    v66 = *v58;
    v67 = sub_20C64D2B0();
    (*(*(v67 - 8) + 104))(v40, v66, v67);
    sub_20C614C94(&qword_281105B08, MEMORY[0x277CDFA28]);
    result = sub_20C64E010();
    if ((result & 1) == 0)
    {
      __break(1u);
      goto LABEL_11;
    }

    sub_20C5E5558(&qword_281105758, &qword_27C7CE290, &unk_20C655580);
    sub_20C64DAB0();
    sub_20C614CDC(v40);
    sub_20C5E56C0(v60, v62, v64);

    sub_20C64D820();
    sub_20C64D830();
    sub_20C64D870();

    v70 = v182;
    v69 = v183;
    v71 = v184;
    (*(v183 + 104))(v182, *MEMORY[0x277CE0A10], v184);
    v72 = sub_20C64D8A0();

    (*(v69 + 8))(v70, v71);
    KeyPath = swift_getKeyPath();
    v74 = &v43[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF200, &unk_20C655C60) + 36)];
    *v74 = KeyPath;
    v74[1] = v72;
    LODWORD(v72) = sub_20C64D5A0();
    *&v43[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF208, &qword_20C6545D0) + 36)] = v72;
    *&v203 = v187;
    *(&v203 + 1) = v186;
    v204 = v185;
    v75 = type metadata accessor for MarketingInlineView();
    sub_20C62E988(v75);
    swift_getKeyPath();
    sub_20C64DF30();

    v76 = v207;
    v77 = swift_getKeyPath();
    v78 = &v43[*(v158 + 36)];
    *v78 = v77;
    *(v78 + 1) = v76;
    v78[16] = 0;
    sub_20C64DE00();
    sub_20C64D330();
    v79 = v162;
    sub_20C5E5658(v43, v162, &qword_27C7CF210, &qword_20C6545D8);
    v80 = (v79 + *(v159 + 36));
    v81 = v199;
    v82 = v201;
    v83 = v202;
    v80[4] = v200;
    v80[5] = v82;
    v80[6] = v83;
    v84 = v197;
    *v80 = v196;
    v80[1] = v84;
    v80[2] = v198;
    v80[3] = v81;
    LOBYTE(v76) = sub_20C64D7C0();
    sub_20C64D1A0();
    v86 = v85;
    v88 = v87;
    v90 = v89;
    v92 = v91;
    v93 = v79;
    v94 = v163;
    sub_20C5E5658(v93, v163, &qword_27C7CF218, &qword_20C6545E0);
    v95 = v94 + *(v161 + 36);
    *v95 = v76;
    *(v95 + 8) = v86;
    *(v95 + 16) = v88;
    *(v95 + 24) = v90;
    *(v95 + 32) = v92;
    *(v95 + 40) = 0;
    v96 = swift_getKeyPath();
    sub_20C5E5658(v94, v53, &qword_27C7CF1E0, &qword_20C6545B8);
    v97 = v149;
    v98 = &v53[*(v149 + 36)];
    *v98 = v96;
    v98[1] = 0x3FE8A3D70A3D70A4;
    v99 = v160;
    sub_20C5E5658(v53, v160, &qword_27C7CF1E8, &qword_20C6545C0);
    v100 = v99;
    v101 = v190;
    sub_20C5E5658(v100, v190, &qword_27C7CF1E8, &qword_20C6545C0);
    (*(v148 + 56))(v101, 0, 1, v97);
    a4 = v150;
    a5 = v151;
  }

  else
  {
    (*(v49 + 56))();
  }

  v102 = MEMORY[0x277CDFA10];
  if (!a5)
  {
    v137 = 1;
    v136 = v189;
    v132 = v180;
    goto LABEL_9;
  }

  *&v203 = a4;
  *(&v203 + 1) = a5;
  sub_20C602C18();

  v103 = sub_20C64D970();
  v105 = v104;
  *&v203 = v103;
  *(&v203 + 1) = v104;
  v107 = v106 & 1;
  LOBYTE(v204) = v106 & 1;
  *(&v204 + 1) = v108;
  v109 = *v102;
  v110 = sub_20C64D2B0();
  (*(*(v110 - 8) + 104))(v40, v109, v110);
  sub_20C614C94(&qword_281105B08, MEMORY[0x277CDFA28]);
  result = sub_20C64E010();
  if (result)
  {
    sub_20C5E5558(&qword_281105758, &qword_27C7CE290, &unk_20C655580);
    v111 = v154;
    sub_20C64DAB0();
    sub_20C614CDC(v40);
    sub_20C5E56C0(v103, v105, v107);

    sub_20C64D7F0();
    v113 = v182;
    v112 = v183;
    v114 = v184;
    (*(v183 + 104))(v182, *MEMORY[0x277CE0A10], v184);
    v115 = sub_20C64D8A0();

    (*(v112 + 8))(v113, v114);
    v116 = swift_getKeyPath();
    v117 = (v111 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF200, &unk_20C655C60) + 36));
    *v117 = v116;
    v117[1] = v115;
    LODWORD(v116) = sub_20C64D5C0();
    *(v111 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF208, &qword_20C6545D0) + 36)) = v116;
    v118 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFEF8, &qword_20C658F08) + 36);
    v119 = *MEMORY[0x277CE13B8];
    v120 = sub_20C64DE20();
    (*(*(v120 - 8) + 104))(v111 + v118, v119, v120);
    *&v203 = v187;
    *(&v203 + 1) = v186;
    v204 = v185;
    v121 = type metadata accessor for MarketingInlineView();
    sub_20C62E988(v121);
    swift_getKeyPath();
    sub_20C64DF30();

    v122 = *(&v207 + 1);
    v123 = swift_getKeyPath();
    v124 = v111 + *(v152 + 36);
    *v124 = v123;
    *(v124 + 8) = v122;
    *(v124 + 16) = 0;
    sub_20C64DE00();
    sub_20C64D330();
    v125 = v157;
    sub_20C5E5658(v111, v157, &qword_27C7CFEE0, &qword_20C658EF0);
    v126 = (v125 + *(v153 + 36));
    v127 = v208;
    v126[4] = v207;
    v126[5] = v127;
    v126[6] = v209;
    v128 = v204;
    *v126 = v203;
    v126[1] = v128;
    v129 = v206;
    v126[2] = v205;
    v126[3] = v129;
    v130 = swift_getKeyPath();
    v131 = v156;
    sub_20C5E5658(v125, v156, &qword_27C7CFEE8, &qword_20C658EF8);
    v132 = v180;
    v133 = (v131 + *(v180 + 36));
    *v133 = v130;
    v133[1] = 0x3FE999999999999ALL;
    v134 = v131;
    v135 = v155;
    sub_20C5E5658(v134, v155, &qword_27C7CFEF0, &qword_20C658F00);
    v136 = v189;
    sub_20C5E5658(v135, v189, &qword_27C7CFEF0, &qword_20C658F00);
    v137 = 0;
LABEL_9:
    v138 = (*(v167 + 56))(v136, v137, 1, v132);
    v139 = v169;
    v173(v138);
    sub_20C64D7B0();
    v140 = v177;
    v141 = v174;
    sub_20C64DB80();
    (*(v171 + 8))(v139, v141);
    v195[3] = a13;
    v195[4] = MEMORY[0x277CDF918];
    v142 = v178;
    WitnessTable = swift_getWitnessTable();
    v143 = v176;
    sub_20C606460(v140, v142, WitnessTable);
    v144 = v175;
    v145 = *(v175 + 8);
    v145(v140, v142);
    v146 = v166;
    sub_20C5E574C(v190, v166, &qword_27C7CF1F0, &qword_20C6570E0);
    v195[0] = v146;
    v147 = v170;
    sub_20C5E574C(v136, v170, &qword_27C7CF9B0, &qword_20C6570E8);
    v195[1] = v147;
    (*(v144 + 16))(v140, v143, v142);
    v195[2] = v140;
    v194[0] = v165;
    v194[1] = v168;
    v194[2] = v142;
    v191 = sub_20C648434(&qword_2811059B0, &qword_27C7CF1F0, &qword_20C6570E0, sub_20C6481AC);
    v192 = sub_20C648434(&qword_2811059C0, &qword_27C7CF9B0, &qword_20C6570E8, sub_20C6484B0);
    v193 = WitnessTable;
    sub_20C610B6C(v195, 3uLL, v194);
    v145(v143, v142);
    sub_20C5DBFC4(v189, &qword_27C7CF9B0, &qword_20C6570E8);
    sub_20C5DBFC4(v190, &qword_27C7CF1F0, &qword_20C6570E0);
    v145(v140, v142);
    sub_20C5DBFC4(v147, &qword_27C7CF9B0, &qword_20C6570E8);
    return sub_20C5DBFC4(v146, &qword_27C7CF1F0, &qword_20C6570E0);
  }

LABEL_11:
  __break(1u);
  return result;
}

__n128 sub_20C647E6C@<Q0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF238, &unk_20C654690);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_20C6544F0;
  v3 = objc_opt_self();
  v4 = [v3 secondarySystemBackgroundColor];
  sub_20C64DC40();
  *(v2 + 32) = sub_20C64DDA0();
  *(v2 + 40) = v5;
  v6 = [v3 secondarySystemBackgroundColor];
  sub_20C64DC40();
  *(v2 + 48) = sub_20C64DDA0();
  *(v2 + 56) = v7;
  sub_20C64DC00();
  *(v2 + 64) = sub_20C64DDA0();
  *(v2 + 72) = v8;
  sub_20C64DE60();
  sub_20C64DE50();
  sub_20C64DDB0();
  sub_20C64D2A0();
  v9 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFED0, &qword_20C658EB0) + 36));
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFED8, &qword_20C658EB8) + 28);
  v11 = *MEMORY[0x277CDF3C0];
  v12 = sub_20C64D1F0();
  (*(*(v12 - 8) + 104))(v9 + v10, v11, v12);
  *v9 = swift_getKeyPath();
  *(a1 + 32) = v16;
  result = v15;
  *a1 = v14;
  *(a1 + 16) = v15;
  return result;
}

unint64_t sub_20C64802C()
{
  result = qword_281105B00;
  if (!qword_281105B00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CFED0, &qword_20C658EB0);
    sub_20C611C14();
    sub_20C5E5558(&qword_2811058C0, &qword_27C7CFED8, &qword_20C658EB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281105B00);
  }

  return result;
}

uint64_t sub_20C6480E4(uint64_t a1)
{
  v2 = sub_20C64D1F0();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_20C64D380();
}

unint64_t sub_20C6481AC()
{
  result = qword_2811059B8;
  if (!qword_2811059B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF1E8, &qword_20C6545C0);
    sub_20C648264();
    sub_20C5E5558(&qword_2811058C8, &qword_27C7CEDD0, &unk_20C653790);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811059B8);
  }

  return result;
}

unint64_t sub_20C648264()
{
  result = qword_2811059D8;
  if (!qword_2811059D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF1E0, &qword_20C6545B8);
    sub_20C6482F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811059D8);
  }

  return result;
}

unint64_t sub_20C6482F0()
{
  result = qword_2811059F0;
  if (!qword_2811059F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF218, &qword_20C6545E0);
    sub_20C64837C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811059F0);
  }

  return result;
}

unint64_t sub_20C64837C()
{
  result = qword_281105A28;
  if (!qword_281105A28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF210, &qword_20C6545D8);
    sub_20C622A8C();
    sub_20C5E5558(&qword_281105890, &qword_27C7CEDE0, &qword_20C6537A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281105A28);
  }

  return result;
}

uint64_t sub_20C648434(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_20C6484B0()
{
  result = qword_2811059C8;
  if (!qword_2811059C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CFEF0, &qword_20C658F00);
    sub_20C648568();
    sub_20C5E5558(&qword_2811058C8, &qword_27C7CEDD0, &unk_20C653790);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811059C8);
  }

  return result;
}

unint64_t sub_20C648568()
{
  result = qword_2811059E0;
  if (!qword_2811059E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CFEE8, &qword_20C658EF8);
    sub_20C6485F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811059E0);
  }

  return result;
}

unint64_t sub_20C6485F4()
{
  result = qword_2811059F8;
  if (!qword_2811059F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CFEE0, &qword_20C658EF0);
    sub_20C6486AC();
    sub_20C5E5558(&qword_281105890, &qword_27C7CEDE0, &qword_20C6537A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811059F8);
  }

  return result;
}

unint64_t sub_20C6486AC()
{
  result = qword_281105A30;
  if (!qword_281105A30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CFEF8, &qword_20C658F08);
    sub_20C622A8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281105A30);
  }

  return result;
}

uint64_t MarketingInlineState.activeStorefrontLocale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_20C64CFE0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t MarketingInlineState.artworkCropCode.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MarketingInlineState() + 20);

  return sub_20C648830(v3, a1);
}

uint64_t type metadata accessor for MarketingInlineState()
{
  result = qword_281106578;
  if (!qword_281106578)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20C648830(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF1B8, &unk_20C657110);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 MarketingInlineState.layout.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MarketingInlineState() + 28);
  v4 = *(v3 + 48);
  *(a1 + 32) = *(v3 + 32);
  *(a1 + 48) = v4;
  *(a1 + 64) = *(v3 + 64);
  result = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = result;
  return result;
}

uint64_t MarketingInlineState.placement.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MarketingInlineState() + 32);
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
}

uint64_t MarketingInlineState.loadState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MarketingInlineState() + 40);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF9E8, &qword_20C657250);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MarketingInlineState.loadState.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MarketingInlineState() + 40);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF9E8, &qword_20C657250);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

__n128 MarketingInlineState.init(activeStorefrontLocale:artworkCropCode:isInternalBuild:layout:placement:platform:loadState:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char *a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v15 = *a5;
  v16 = *(a5 + 1);
  v17 = *(a5 + 2);
  v18 = sub_20C64CFE0();
  (*(*(v18 - 8) + 32))(a8, a1, v18);
  v19 = type metadata accessor for MarketingInlineState();
  sub_20C648C1C(a2, a8 + v19[5]);
  *(a8 + v19[6]) = a3;
  v20 = a8 + v19[8];
  *v20 = v15;
  *(v20 + 8) = v16;
  *(v20 + 16) = v17;
  *(a8 + v19[9]) = a6;
  v21 = v19[10];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF9E8, &qword_20C657250);
  (*(*(v22 - 8) + 32))(a8 + v21, a7, v22);
  v23 = a8 + v19[7];
  v24 = *(a4 + 48);
  *(v23 + 32) = *(a4 + 32);
  *(v23 + 48) = v24;
  *(v23 + 64) = *(a4 + 64);
  result = *(a4 + 16);
  *v23 = *a4;
  *(v23 + 16) = result;
  return result;
}

uint64_t sub_20C648C1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF1B8, &unk_20C657110);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_20C648C8C()
{
  v1 = *v0;
  v2 = 0x436B726F77747261;
  v3 = 0x6D726F6674616C70;
  if (v1 != 5)
  {
    v3 = 0x7461745364616F6CLL;
  }

  v4 = 0x74756F79616CLL;
  if (v1 != 3)
  {
    v4 = 0x6E656D6563616C70;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0x6E7265746E497369;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000016;
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

uint64_t sub_20C648D84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_20C64A164(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_20C648DAC(uint64_t a1)
{
  v2 = sub_20C6491C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C648DE8(uint64_t a1)
{
  v2 = sub_20C6491C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MarketingInlineState.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFF00, &qword_20C658FA0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C6491C4();
  sub_20C64E500();
  LOBYTE(v24) = 0;
  sub_20C64CFE0();
  sub_20C64A3D0(&qword_27C7CE110, MEMORY[0x277CC9788]);
  sub_20C64E410();
  if (!v2)
  {
    v11 = type metadata accessor for MarketingInlineState();
    v12 = v11[5];
    LOBYTE(v24) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF1B8, &unk_20C657110);
    sub_20C64997C(&qword_27C7CFF10);
    sub_20C64E410();
    v13 = *(v3 + v11[6]);
    v29 = 2;
    sub_20C64E3F0();
    v14 = (v3 + v11[7]);
    v15 = v14[3];
    v26 = v14[2];
    v27 = v15;
    v28 = v14[4];
    v16 = v14[1];
    v24 = *v14;
    v25 = v16;
    v23 = 3;
    sub_20C649218();
    sub_20C64E410();
    v17 = v3 + v11[8];
    v18 = *(v17 + 8);
    v19 = *(v17 + 16);
    LOBYTE(v24) = *v17;
    *(&v24 + 1) = v18;
    *&v25 = v19;
    v23 = 4;
    sub_20C626170();

    sub_20C64E410();

    LOBYTE(v24) = *(v3 + v11[9]);
    v23 = 5;
    sub_20C5F8B88();
    sub_20C64E410();
    v20 = v11[10];
    LOBYTE(v24) = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF9E8, &qword_20C657250);
    sub_20C649AB8(&qword_27C7CFF30);
    sub_20C64E410();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_20C6491C4()
{
  result = qword_27C7CFF08;
  if (!qword_27C7CFF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFF08);
  }

  return result;
}

unint64_t sub_20C649218()
{
  result = qword_27C7CFF28;
  if (!qword_27C7CFF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFF28);
  }

  return result;
}

uint64_t MarketingInlineState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF9E8, &qword_20C657250);
  v31 = *(v33 - 8);
  v3 = *(v31 + 64);
  MEMORY[0x28223BE20](v33);
  v34 = &v30 - v4;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF1B8, &unk_20C657110);
  v5 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35);
  v7 = &v30 - v6;
  v8 = sub_20C64CFE0();
  v36 = *(v8 - 8);
  v9 = *(v36 + 64);
  MEMORY[0x28223BE20](v8);
  v38 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFF38, &qword_20C658FA8);
  v37 = *(v40 - 8);
  v11 = *(v37 + 64);
  MEMORY[0x28223BE20](v40);
  v13 = &v30 - v12;
  v14 = type metadata accessor for MarketingInlineState();
  v15 = *(*(v14 - 1) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C6491C4();
  v39 = v13;
  v19 = v41;
  sub_20C64E4F0();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = v36;
  LOBYTE(v44) = 0;
  sub_20C64A3D0(&qword_27C7CE148, MEMORY[0x277CC9788]);
  sub_20C64E390();
  v21 = *(v20 + 32);
  v41 = v8;
  v21(v17, v38, v8);
  LOBYTE(v44) = 1;
  sub_20C64997C(&qword_27C7CFF40);
  sub_20C64E390();
  sub_20C648C1C(v7, &v17[v14[5]]);
  LOBYTE(v44) = 2;
  v22 = a1;
  v17[v14[6]] = sub_20C64E370() & 1;
  v50 = 3;
  sub_20C649A64();
  sub_20C64E390();
  v23 = v37;
  v24 = &v17[v14[7]];
  v25 = v47;
  *(v24 + 2) = v46;
  *(v24 + 3) = v25;
  *(v24 + 4) = v48;
  v26 = v45;
  *v24 = v44;
  *(v24 + 1) = v26;
  v49 = 4;
  sub_20C626280();
  sub_20C64E390();
  v27 = &v17[v14[8]];
  *v27 = v42;
  *(v27 + 8) = v43;
  v49 = 5;
  sub_20C5F8CA8();
  sub_20C64E390();
  v17[v14[9]] = v42;
  v42 = 6;
  sub_20C649AB8(&qword_27C7CFF50);
  v28 = v33;
  sub_20C64E390();
  (*(v23 + 8))(v39, v40);
  (*(v31 + 32))(&v17[v14[10]], v34, v28);
  sub_20C649B8C(v17, v32);
  __swift_destroy_boxed_opaque_existential_1(v22);
  return sub_20C649BF0(v17);
}

uint64_t sub_20C649914(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF1B8, &unk_20C657110);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20C64997C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF1B8, &unk_20C657110);
    v3 = MEMORY[0x277D09E00];
    sub_20C64A3D0(&qword_27C7CFF18, MEMORY[0x277D09E00]);
    sub_20C64A3D0(&qword_27C7CFF20, v3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_20C649A64()
{
  result = qword_27C7CFF48;
  if (!qword_27C7CFF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFF48);
  }

  return result;
}

uint64_t sub_20C649AB8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF9E8, &qword_20C657250);
    sub_20C64A3D0(&qword_27C7CF730, type metadata accessor for MarketingOffer);
    sub_20C64A3D0(&qword_27C7CF738, type metadata accessor for MarketingOffer);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_20C649B8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MarketingInlineState();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C649BF0(uint64_t a1)
{
  v2 = type metadata accessor for MarketingInlineState();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s16FitnessMarketing0B11InlineStateV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((MEMORY[0x20F300320]() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for MarketingInlineState();
  v5 = v4[5];
  sub_20C64D040();
  v6 = MEMORY[0x277D09E00];
  sub_20C64A3D0(&qword_281106810, MEMORY[0x277D09E00]);
  sub_20C64A3D0(&qword_281106808, v6);
  if ((sub_20C64D080() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + v4[6]) != *(a2 + v4[6]))
  {
    return 0;
  }

  v7 = (a1 + v4[7]);
  v8 = v7[3];
  v30 = v7[2];
  v31 = v8;
  v32 = v7[4];
  v9 = v7[1];
  v28 = *v7;
  v29 = v9;
  v10 = (a2 + v4[7]);
  v11 = v10[3];
  v25 = v10[2];
  v26 = v11;
  v27 = v10[4];
  v12 = v10[1];
  v23 = *v10;
  v24 = v12;
  if (!_s16FitnessMarketing0B12InlineLayoutV2eeoiySbAC_ACtFZ_0(&v28, &v23))
  {
    return 0;
  }

  v13 = v4[8];
  v14 = *(a1 + v13 + 8);
  v15 = *(a1 + v13 + 16);
  LOBYTE(v28) = *(a1 + v13);
  *(&v28 + 1) = v14;
  *&v29 = v15;
  v16 = a2 + v13;
  v18 = *(v16 + 8);
  v17 = *(v16 + 16);
  LOBYTE(v23) = *v16;
  *(&v23 + 1) = v18;
  *&v24 = v17;

  LOBYTE(v15) = _s16FitnessMarketing0B9PlacementV2eeoiySbAC_ACtFZ_0(&v28, &v23);

  if ((v15 & 1) == 0 || *(a1 + v4[9]) != *(a2 + v4[9]))
  {
    return 0;
  }

  v19 = v4[10];
  v20 = type metadata accessor for MarketingOffer();
  v21 = sub_20C64A3D0(qword_2811061C0, type metadata accessor for MarketingOffer);

  return MEMORY[0x282159AE8](a1 + v19, a2 + v19, v20, v21);
}

void sub_20C649EF0()
{
  sub_20C64CFE0();
  if (v0 <= 0x3F)
  {
    sub_20C5D3DF8();
    if (v1 <= 0x3F)
    {
      sub_20C649FB8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20C649FB8()
{
  if (!qword_2811057F0)
  {
    type metadata accessor for MarketingOffer();
    sub_20C64A3D0(qword_2811061C0, type metadata accessor for MarketingOffer);
    v0 = sub_20C64DEB0();
    if (!v1)
    {
      atomic_store(v0, &qword_2811057F0);
    }
  }
}

unint64_t sub_20C64A060()
{
  result = qword_27C7CFF58;
  if (!qword_27C7CFF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFF58);
  }

  return result;
}

unint64_t sub_20C64A0B8()
{
  result = qword_27C7CFF60;
  if (!qword_27C7CFF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFF60);
  }

  return result;
}

unint64_t sub_20C64A110()
{
  result = qword_27C7CFF68;
  if (!qword_27C7CFF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFF68);
  }

  return result;
}

uint64_t sub_20C64A164(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000016 && 0x800000020C6597F0 == a2 || (sub_20C64E430() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x436B726F77747261 && a2 == 0xEF65646F43706F72 || (sub_20C64E430() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E7265746E497369 && a2 == 0xEF646C6975426C61 || (sub_20C64E430() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74756F79616CLL && a2 == 0xE600000000000000 || (sub_20C64E430() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E656D6563616C70 && a2 == 0xE900000000000074 || (sub_20C64E430() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6D726F6674616C70 && a2 == 0xE800000000000000 || (sub_20C64E430() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7461745364616F6CLL && a2 == 0xE900000000000065)
  {

    return 6;
  }

  else
  {
    v5 = sub_20C64E430();

    if (v5)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_20C64A3D0(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *MarketingInlineLayout.init(style:aspectRatio:bottomPadding:topPadding:cornerRadius:horizontalMargins:horizontalPadding:titleLineLimit:subtitleLineLimit:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>, double a9@<D4>, double a10@<D5>, double a11@<D6>)
{
  *a4 = *result;
  *(a4 + 8) = a5;
  *(a4 + 16) = a6;
  *(a4 + 24) = a7;
  *(a4 + 32) = a8;
  *(a4 + 40) = a9;
  *(a4 + 48) = a10;
  *(a4 + 56) = a11;
  *(a4 + 64) = a2;
  *(a4 + 72) = a3;
  return result;
}

double MarketingInlineLayout.aspectRatio.getter()
{
  result = *(v0 + 8);
  v2 = *(v0 + 16);
  return result;
}

unint64_t sub_20C64A488(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x656C797473;
    v6 = 0x61506D6F74746F62;
    if (a1 != 2)
    {
      v6 = 0x6964646150706F74;
    }

    if (a1)
    {
      v5 = 0x6152746365707361;
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
    v1 = 0xD000000000000011;
    v2 = 0x6E694C656C746974;
    if (a1 != 7)
    {
      v2 = 0xD000000000000011;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x615272656E726F63;
    if (a1 != 4)
    {
      v3 = 0xD000000000000011;
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

uint64_t sub_20C64A5D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_20C64B4D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_20C64A60C(uint64_t a1)
{
  v2 = sub_20C64B020();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C64A648(uint64_t a1)
{
  v2 = sub_20C64B020();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MarketingInlineLayout.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFF70, &qword_20C659190);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v20 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v10 = *(v1 + 2);
  v12 = *(v1 + 3);
  v11 = *(v1 + 4);
  v14 = *(v1 + 5);
  v13 = *(v1 + 6);
  v15 = *(v1 + 7);
  v16 = *(v1 + 9);
  v20[1] = *(v1 + 8);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C64B020();
  sub_20C64E500();
  LOBYTE(v21) = v8;
  v23 = 0;
  sub_20C64B074();
  v18 = v20[2];
  sub_20C64E410();
  if (!v18)
  {
    v21 = v9;
    v22 = v10;
    v23 = 1;
    type metadata accessor for CGSize(0);
    sub_20C64B11C(&qword_27C7CFF88);
    sub_20C64E410();
    v21 = v12;
    v23 = 2;
    sub_20C5EB44C();
    sub_20C64E410();
    v21 = v11;
    v23 = 3;
    sub_20C64E410();
    v21 = v14;
    v23 = 4;
    sub_20C64E410();
    v21 = v13;
    v23 = 5;
    sub_20C64E410();
    v21 = v15;
    v23 = 6;
    sub_20C64E410();
    LOBYTE(v21) = 7;
    sub_20C64E400();
    LOBYTE(v21) = 8;
    sub_20C64E400();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t MarketingInlineLayout.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFF90, &qword_20C659198);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C64B020();
  sub_20C64E4F0();
  if (!v2)
  {
    v25 = 0;
    sub_20C64B0C8();
    sub_20C64E390();
    v11 = v23;
    type metadata accessor for CGSize(0);
    v25 = 1;
    sub_20C64B11C(&qword_27C7CFFA0);
    sub_20C64E390();
    v12 = v23;
    v13 = v24;
    v25 = 2;
    sub_20C5EB4A0();
    sub_20C64E390();
    v14 = v23;
    v25 = 3;
    sub_20C64E390();
    v15 = v23;
    v25 = 4;
    sub_20C64E390();
    v16 = v23;
    v25 = 5;
    sub_20C64E390();
    v17 = v23;
    v25 = 6;
    sub_20C64E390();
    v18 = v23;
    LOBYTE(v23) = 7;
    v20 = sub_20C64E380();
    LOBYTE(v23) = 8;
    v21 = sub_20C64E380();
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    *(a2 + 8) = v12;
    *(a2 + 16) = v13;
    *(a2 + 24) = v14;
    *(a2 + 32) = v15;
    *(a2 + 40) = v16;
    *(a2 + 48) = v17;
    *(a2 + 56) = v18;
    *(a2 + 64) = v20;
    *(a2 + 72) = v21;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t MarketingInlineLayout.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v9 = *(v0 + 8);
  v8 = *(v0 + 9);
  MEMORY[0x20F301800](*v0);
  if (v1 == 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v1;
  }

  MEMORY[0x20F301820](*&v10);
  if (v2 == 0.0)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = v2;
  }

  MEMORY[0x20F301820](*&v11);
  if (v3 == 0.0)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = v3;
  }

  MEMORY[0x20F301820](*&v12);
  if (v4 == 0.0)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = v4;
  }

  MEMORY[0x20F301820](*&v13);
  if (v5 == 0.0)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = v5;
  }

  MEMORY[0x20F301820](*&v14);
  if (v6 == 0.0)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = v6;
  }

  MEMORY[0x20F301820](*&v15);
  if (v7 == 0.0)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = v7;
  }

  MEMORY[0x20F301820](*&v16);
  MEMORY[0x20F301800](v9);
  return MEMORY[0x20F301800](v8);
}

uint64_t MarketingInlineLayout.hashValue.getter()
{
  sub_20C64E4A0();
  MarketingInlineLayout.hash(into:)();
  return sub_20C64E4E0();
}

uint64_t sub_20C64AEFC()
{
  sub_20C64E4A0();
  MarketingInlineLayout.hash(into:)();
  return sub_20C64E4E0();
}

uint64_t sub_20C64AF40()
{
  sub_20C64E4A0();
  MarketingInlineLayout.hash(into:)();
  return sub_20C64E4E0();
}

BOOL _s16FitnessMarketing0B12InlineLayoutV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  result = 0;
  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 8), *(a2 + 8)), vceqq_f64(*(a1 + 24), *(a2 + 24))))))
  {
    v5 = *(a1 + 5) != *(a2 + 5) || *(a1 + 6) != *(a2 + 6) || *(a1 + 7) != *(a2 + 7);
    if (!v5 && ((*a1 ^ *a2) & 1) == 0 && *(a1 + 8) == *(a2 + 8))
    {
      return *(a1 + 9) == *(a2 + 9);
    }
  }

  return result;
}

unint64_t sub_20C64B020()
{
  result = qword_27C7CFF78;
  if (!qword_27C7CFF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFF78);
  }

  return result;
}

unint64_t sub_20C64B074()
{
  result = qword_27C7CFF80;
  if (!qword_27C7CFF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFF80);
  }

  return result;
}

unint64_t sub_20C64B0C8()
{
  result = qword_27C7CFF98;
  if (!qword_27C7CFF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFF98);
  }

  return result;
}

uint64_t sub_20C64B11C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CGSize(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_20C64B164()
{
  result = qword_27C7CFFA8;
  if (!qword_27C7CFFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFFA8);
  }

  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_20C64B1D4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[80])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_20C64B218(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MarketingInlineLayout.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MarketingInlineLayout.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_20C64B3D4()
{
  result = qword_27C7CFFB0;
  if (!qword_27C7CFFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFFB0);
  }

  return result;
}

unint64_t sub_20C64B42C()
{
  result = qword_27C7CFFB8;
  if (!qword_27C7CFFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFFB8);
  }

  return result;
}

unint64_t sub_20C64B484()
{
  result = qword_27C7CFFC0[0];
  if (!qword_27C7CFFC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27C7CFFC0);
  }

  return result;
}

uint64_t sub_20C64B4D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C797473 && a2 == 0xE500000000000000;
  if (v4 || (sub_20C64E430() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6152746365707361 && a2 == 0xEB000000006F6974 || (sub_20C64E430() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x61506D6F74746F62 && a2 == 0xED0000676E696464 || (sub_20C64E430() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6964646150706F74 && a2 == 0xEA0000000000676ELL || (sub_20C64E430() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x615272656E726F63 && a2 == 0xEC00000073756964 || (sub_20C64E430() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x800000020C65A6E0 == a2 || (sub_20C64E430() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x800000020C65A700 == a2 || (sub_20C64E430() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6E694C656C746974 && a2 == 0xEE0074696D694C65 || (sub_20C64E430() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000011 && 0x800000020C65A720 == a2)
  {

    return 8;
  }

  else
  {
    v6 = sub_20C64E430();

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

__n128 MarketingInlineFeature.init(environment:)@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t MarketingInlineFeature.reduce(localState:sharedState:sideEffects:action:)(uint64_t a1, uint64_t a2, void **a3, char a4)
{
  v51 = a3;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEA38, &qword_20C652AA0);
  v7 = *(v50 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v50);
  v11 = &v44[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v13 = &v44[-v12];
  v14 = v4[1];
  v15 = v4[2];
  v16 = v4[3];
  v47 = *v4;
  v48 = v15;
  v17 = (a2 + *(type metadata accessor for MarketingInlineState() + 32));
  v45 = *v17;
  v18 = *(v17 + 2);
  v46 = *(v17 + 1);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF830, &qword_20C656700);
  v49 = v19[12];
  v20 = v19[16];
  v21 = v19[20];
  v22 = v19[24];
  if (a4)
  {
    v23 = &v11[v22];
    v53 = 1;
    sub_20C64BD04();

    sub_20C64E230();
    v24 = *MEMORY[0x277D043F0];
    v25 = sub_20C64DF10();
    (*(*(v25 - 8) + 104))(&v11[v20], v24, v25);
    v26 = *MEMORY[0x277D043E0];
    v27 = sub_20C64DF00();
    (*(*(v27 - 8) + 104))(&v11[v21], v26, v27);
    v28 = swift_allocObject();
    v29 = v48;
    *(v28 + 16) = v47;
    *(v28 + 24) = v14;
    *(v28 + 32) = v29;
    *(v28 + 40) = v16;
    *(v28 + 48) = v45;
    *(v28 + 56) = v46;
    *(v28 + 64) = v18;
    *v23 = &unk_20C6593D8;
    v23[1] = v28;

    sub_20C64E170();
    (*(v7 + 104))(v11, *MEMORY[0x277D043B0], v50);
    v30 = v51;
    v31 = *v51;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = sub_20C5F87A4(0, v31[2] + 1, 1, v31);
    }

    v33 = v31[2];
    v32 = v31[3];
    v34 = v33 + 1;
    if (v33 >= v32 >> 1)
    {
      v31 = sub_20C5F87A4(v32 > 1, v33 + 1, 1, v31);
    }

    v13 = v11;
  }

  else
  {
    v35 = &v13[v22];
    v52 = 0;
    sub_20C64BD04();

    sub_20C64E230();
    v36 = *MEMORY[0x277D043F0];
    v37 = sub_20C64DF10();
    (*(*(v37 - 8) + 104))(&v13[v20], v36, v37);
    v38 = *MEMORY[0x277D043E0];
    v39 = sub_20C64DF00();
    (*(*(v39 - 8) + 104))(&v13[v21], v38, v39);
    v40 = swift_allocObject();
    v41 = v48;
    *(v40 + 16) = v47;
    *(v40 + 24) = v14;
    *(v40 + 32) = v41;
    *(v40 + 40) = v16;
    *(v40 + 48) = v45;
    *(v40 + 56) = v46;
    *(v40 + 64) = v18;
    *v35 = &unk_20C6593E8;
    v35[1] = v40;

    sub_20C64E170();
    (*(v7 + 104))(v13, *MEMORY[0x277D043B0], v50);
    v30 = v51;
    v31 = *v51;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = sub_20C5F87A4(0, v31[2] + 1, 1, v31);
    }

    v33 = v31[2];
    v42 = v31[3];
    v34 = v33 + 1;
    if (v33 >= v42 >> 1)
    {
      v31 = sub_20C5F87A4(v42 > 1, v33 + 1, 1, v31);
    }
  }

  v31[2] = v34;
  result = (*(v7 + 32))(v31 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v33, v13);
  *v30 = v31;
  return result;
}

unint64_t sub_20C64BD04()
{
  result = qword_281106290;
  if (!qword_281106290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281106290);
  }

  return result;
}

uint64_t sub_20C64BD58(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 40) = sub_20C64E160();
  *(v8 + 48) = sub_20C64E150();
  *(v8 + 16) = a6;
  *(v8 + 24) = a7;
  *(v8 + 32) = a8;
  v16 = (a2 + *a2);
  v13 = a2[1];
  v14 = swift_task_alloc();
  *(v8 + 56) = v14;
  *v14 = v8;
  v14[1] = sub_20C64BE90;

  return v16(v8 + 16);
}

uint64_t sub_20C64BE90()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 40);
  v7 = *v0;

  v5 = sub_20C64E130();

  return MEMORY[0x2822009F8](sub_20C64C5C8, v5, v4);
}

uint64_t sub_20C64BFCC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 40) = sub_20C64E160();
  *(v8 + 48) = sub_20C64E150();
  *(v8 + 16) = a6;
  *(v8 + 24) = a7;
  *(v8 + 32) = a8;
  v16 = (a4 + *a4);
  v13 = a4[1];
  v14 = swift_task_alloc();
  *(v8 + 56) = v14;
  *v14 = v8;
  v14[1] = sub_20C64C104;

  return v16(v8 + 16);
}

uint64_t sub_20C64C104()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 40);
  v7 = *v0;

  v5 = sub_20C64E130();

  return MEMORY[0x2822009F8](sub_20C636AFC, v5, v4);
}

uint64_t sub_20C64C240(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v10 = *(v1 + 48);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_20C5EE6B4;

  return sub_20C64BFCC(a1, v4, v5, v6, v7, v10, v8, v9);
}

uint64_t objectdestroyTm_2()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[8];

  return swift_deallocObject();
}

uint64_t sub_20C64C36C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v10 = *(v1 + 48);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_20C62B4BC;

  return sub_20C64BD58(a1, v4, v5, v6, v7, v10, v8, v9);
}

unint64_t sub_20C64C448()
{
  result = qword_281106350;
  if (!qword_281106350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281106350);
  }

  return result;
}

unint64_t sub_20C64C4A0()
{
  result = qword_281106358;
  if (!qword_281106358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281106358);
  }

  return result;
}

unint64_t sub_20C64C4F8()
{
  result = qword_281106588[0];
  if (!qword_281106588[0])
  {
    type metadata accessor for MarketingInlineState();
    result = swift_getWitnessTable();
    atomic_store(result, qword_281106588);
  }

  return result;
}

unint64_t sub_20C64C574()
{
  result = qword_281106288;
  if (!qword_281106288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281106288);
  }

  return result;
}

double sub_20C64C5CC(void *a1)
{
  v1 = a1;
  AudioLanguageEngagementSheetHostingController.preferredContentSize.getter();

  return 624.0;
}

void AudioLanguageEngagementSheetHostingController.preferredContentSize.getter()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 window];

    if (v3)
    {
      [v3 frame];
      v5 = v4;
      v7 = v6;
      v9 = v8;
      v11 = v10;

      v12.origin.x = v5;
      v12.origin.y = v7;
      v12.size.width = v9;
      v12.size.height = v11;
      CGRectGetHeight(v12);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_20C64C6F8(void *a1, double a2, double a3)
{
  v5 = a1;
  AudioLanguageEngagementSheetHostingController.preferredContentSize.setter(a2, a3);
}

id AudioLanguageEngagementSheetHostingController.preferredContentSize.setter(double a1, double a2)
{
  v6.receiver = v2;
  v6.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v6, sel_setPreferredContentSize_, a1, a2);
}

void (*AudioLanguageEngagementSheetHostingController.preferredContentSize.modify(uint64_t *a1))(objc_super **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  AudioLanguageEngagementSheetHostingController.preferredContentSize.getter();
  *(v4 + 16) = 0x4083800000000000;
  *(v4 + 24) = v5;
  return sub_20C64C82C;
}

void sub_20C64C82C(objc_super **a1)
{
  v1 = *a1;
  v2 = *&(*a1)[1].receiver;
  v3 = *&(*a1)[1].super_class;
  receiver = (*a1)[2].receiver;
  ObjectType = swift_getObjectType();
  v1->receiver = receiver;
  v1->super_class = ObjectType;
  [(objc_super *)v1 setPreferredContentSize:v2, v3];

  free(v1);
}

uint64_t AudioLanguageEngagementSheetHostingController.__allocating_init(rootView:)(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v1);
  v5 = sub_20C64CC44(a1);
  (*(*(*(v2 + class metadata base offset for AudioLanguageEngagementSheetHostingController) - 8) + 8))(a1);
  return v5;
}

uint64_t AudioLanguageEngagementSheetHostingController.init(rootView:)(uint64_t a1)
{
  v3 = *MEMORY[0x277D85000] & *v1;
  v4 = sub_20C64CC44(a1);
  (*(*(*(v3 + class metadata base offset for AudioLanguageEngagementSheetHostingController) - 8) + 8))(a1);
  return v4;
}

void *AudioLanguageEngagementSheetHostingController.init(coder:rootView:)(uint64_t a1, uint64_t a2)
{
  v4 = *((*MEMORY[0x277D85000] & *v2) + class metadata base offset for AudioLanguageEngagementSheetHostingController);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  (*(v5 + 16))(&v12 - v7);
  v8 = sub_20C64D520();
  v9 = *(v5 + 8);
  v10 = v8;
  v9(a2, v4);
  if (v8)
  {
  }

  return v8;
}

id AudioLanguageEngagementSheetHostingController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id AudioLanguageEngagementSheetHostingController.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id AudioLanguageEngagementSheetHostingController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20C64CC44(uint64_t a1)
{
  v2 = *(*(*((*MEMORY[0x277D85000] & *v1) + class metadata base offset for AudioLanguageEngagementSheetHostingController) - 8) + 64);
  MEMORY[0x28223BE20](a1);
  (*(v4 + 16))(&v6 - v3);
  return sub_20C64D530();
}