uint64_t sub_2527B427C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[28] = a5;
  v6[29] = a6;
  v6[26] = a1;
  v6[27] = a4;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCE00, &qword_2528C5D20) - 8) + 64) + 15;
  v6[30] = swift_task_alloc();
  v8 = sub_2528BE8B0();
  v6[31] = v8;
  v9 = *(v8 - 8);
  v6[32] = v9;
  v10 = *(v9 + 64) + 15;
  v6[33] = swift_task_alloc();
  v11 = *(*(type metadata accessor for SceneEntity() - 8) + 64) + 15;
  v6[34] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2527B43A4, 0, 0);
}

uint64_t sub_2527B43A4()
{
  v2 = *(v0 + 264);
  v1 = *(v0 + 272);
  v3 = *(v0 + 248);
  v4 = *(v0 + 256);
  v5 = *(v0 + 240);
  v6 = *(v0 + 216);
  v11 = *(v0 + 224);
  sub_2528BE790();
  *(v0 + 184) = v6;
  *(v0 + 192) = v11;
  sub_2527B18B8();
  sub_2528BE5B0();
  sub_2528BE8A0();
  (*(v4 + 8))(v2, v3);
  v7 = swift_task_alloc();
  *(v0 + 280) = v7;
  *v7 = v0;
  v7[1] = sub_2527B44D8;
  v8 = *(v0 + 272);
  v9 = *(v0 + 240);

  return sub_2527F75E4(v0 + 16, v8, v9);
}

uint64_t sub_2527B44D8()
{
  v1 = *(*v0 + 280);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2527B45D4, 0, 0);
}

uint64_t sub_2527B45D4()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    *(v0 + 128) = *(v0 + 16);
    v2 = *(v0 + 48);
    *(v0 + 144) = *(v0 + 32);
    *(v0 + 160) = v2;
    *(v0 + 176) = *(v0 + 64);
    *(v0 + 136) = v1;
    sub_2527B5D5C();
    sub_2528BFA10();
    v3 = *(v0 + 144);
    *(v0 + 72) = *(v0 + 128);
    *(v0 + 88) = v3;
    *(v0 + 104) = *(v0 + 160);
    *(v0 + 120) = *(v0 + 176);
    sub_2527B5DB0(v0 + 72);
  }

  v5 = *(v0 + 264);
  v4 = *(v0 + 272);
  v6 = *(v0 + 240);
  **(v0 + 208) = v1 == 0;

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_2527B46C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[11] = a1;
  v6[12] = a2;
  return MEMORY[0x2822009F8](sub_2527B46E8, 0, 0);
}

uint64_t sub_2527B46E8()
{
  v1 = *(v0 + 104);
  sub_2528BE790();
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(MEMORY[0x277D15D70] + 4);
  v5 = swift_task_alloc();
  *(v0 + 120) = v5;
  *v5 = v0;
  v5[1] = sub_2527B47A4;
  v6 = *(v0 + 112);
  v7 = *(v0 + 96);

  return MEMORY[0x28216FB38](v2, v3, v6);
}

uint64_t sub_2527B47A4()
{
  v2 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_2527B48DC;
  }

  else
  {
    v3 = sub_2527B48B8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2527B48B8()
{
  v1 = *(v0 + 88);
  *v1 = 0;
  *(v1 + 8) = 2;
  return (*(v0 + 8))();
}

uint64_t sub_2527B48DC()
{
  v16 = v0;
  v1 = *(v0 + 128);
  *(v0 + 32) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC210, &qword_2528C6230);
  type metadata accessor for HMError(0);
  if ((swift_dynamicCast() & 1) != 0 && (v3 = *(v0 + 40), *(v0 + 72) = v3, sub_2527B5D14(&qword_27F4FC0D0, type metadata accessor for HMError), sub_2528BEBE0(), v3, sub_2527A0688(*(v0 + 80), &v15), v4 = v15, v15 != 20))
  {
    v12 = *(v0 + 88);

    *v12 = v4;
    *(v12 + 8) = 0;
  }

  else
  {
    v5 = *(v0 + 128);
    *(v0 + 48) = v5;
    v6 = v5;
    v7 = swift_dynamicCast();
    v8 = *(v0 + 128);
    v9 = *(v0 + 88);
    if (v7)
    {
      v10 = *(v0 + 56);
      *(v0 + 64) = v10;
      sub_2527B5D14(&qword_27F4FC0D0, type metadata accessor for HMError);
      v11 = sub_2528BEC00();

      *v9 = v11;
      *(v9 + 8) = 1;
    }

    else
    {

      *v9 = 10;
      *(v9 + 8) = 0;
    }
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_2527B4AD0@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4FB6C8 != -1)
  {
    swift_once();
  }

  v2 = sub_2528BEC40();
  v3 = __swift_project_value_buffer(v2, qword_27F502920);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2527B4B78(uint64_t a1)
{
  v4 = *v1;
  v5 = v1[1];
  v6 = v1[2];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25271F3AC;

  return sub_2527B19C4(a1, v4, v5, v6);
}

uint64_t sub_2527B4C2C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2527B524C();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

uint64_t sub_2527B4C58(uint64_t a1)
{
  v2 = sub_2527B18B8();

  return MEMORY[0x28210B538](a1, v2);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_2527B4CA8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_2527B4CF0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2527B4D40()
{
  v0 = type metadata accessor for SceneEntity();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  sub_2528C0E70();

  strcpy(v8, "homeEntity: ");
  sub_2528BE790();
  v4 = sub_2528C0A10();
  MEMORY[0x2530A80B0](v4);

  MEMORY[0x2530A80B0](0x6E45656E6563730ALL, 0xEE00203A79746974);
  sub_2528BE790();
  v5 = sub_2528C0A10();
  MEMORY[0x2530A80B0](v5);

  MEMORY[0x2530A80B0](0x74756F656D69740ALL, 0xEA0000000000203ALL);
  sub_2528BE790();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCE10, &unk_2528C6280);
  v6 = sub_2528C0A10();
  MEMORY[0x2530A80B0](v6);

  return v8[0];
}

uint64_t sub_2527B4F50()
{
  v0 = type metadata accessor for HomeEntity(0);
  v1 = sub_2527B5AC8();
  MEMORY[0x2530A60E0](v1, v0, &type metadata for ActivateSceneIntentHomeResolver, v1);
  sub_2527B5D14(&qword_27F4FC4A0, type metadata accessor for HomeEntity);

  return sub_2528BEAA0();
}

uint64_t sub_2527B4FFC@<X0>(uint64_t a1@<X8>)
{
  v10[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD888, &unk_2528C8FE0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v10 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC450, &qword_2528C3F10);
  swift_getKeyPath();
  v12 = sub_2528BE9C0();
  v6 = type metadata accessor for SceneEntity();
  v7 = sub_2527B5A20();
  MEMORY[0x2530A60E0](&v13, &v12, v6, &type metadata for SceneEntityFromNameResolver, v7);

  swift_getKeyPath();
  v11 = sub_2528BE9C0();
  v8 = sub_2527B5A74();
  MEMORY[0x2530A60E0](&v12, &v11, v6, &type metadata for SceneEntityFromSceneTypeResolver, v8);

  v11 = v13;
  sub_2527B5D14(&qword_27F4FC4E0, type metadata accessor for SceneEntity);
  sub_2528BEA50();
  sub_2528BEAA0();

  v10[4] = v12;
  sub_2528BEA50();
  v10[2] = v7;
  v10[3] = &type metadata for SceneEntityFromNameResolver;
  sub_2528BEA90();

  (*(v2 + 8))(v5, v1);
}

uint64_t sub_2527B524C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCC78, &unk_2528C5B30);
  v47 = *(v0 - 8);
  v48 = v0;
  v1 = *(v47 + 64);
  MEMORY[0x28223BE20](v0);
  v46 = &v40 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC470, &unk_2528CDE00);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v45 = &v40 - v5;
  v52 = sub_2528BE950();
  v6 = *(v52 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v52);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCC80, &unk_2528C6080);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v14;
  MEMORY[0x28223BE20](v12);
  v16 = &v40 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v40 - v19;
  v42 = &v40 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC130, &unk_2528C6A80);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v40 - v23;
  v49 = &v40 - v23;
  v25 = sub_2528BEC40();
  v55 = v25;
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCC88, &unk_2528C5B40);
  sub_2528BEC20();
  v28 = *(v26 + 56);
  v54 = v26 + 56;
  v56 = v28;
  v28(v24, 1, 1, v25);
  v29 = type metadata accessor for HomeEntity(0);
  (*(*(v29 - 8) + 56))(v20, 1, 1, v29);
  v30 = sub_2528BE630();
  v31 = *(*(v30 - 8) + 56);
  v31(v16, 1, 1, v30);
  v31(v14, 1, 1, v30);
  v50 = *MEMORY[0x277CBA308];
  v32 = *(v6 + 104);
  v51 = v6 + 104;
  v53 = v32;
  v33 = v9;
  v32(v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD860, &unk_2528C8FC0);
  v43 = MEMORY[0x277CBA480];
  sub_25272275C(&qword_27F4FD868, &qword_27F4FD860, &unk_2528C8FC0);
  sub_2527B5D14(&qword_27F4FCC90, type metadata accessor for HomeEntity);
  v34 = v49;
  v35 = v41;
  v40 = v16;
  v44 = sub_2528BE7E0();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD870, &unk_2528CDE10);
  sub_2528BEC20();
  v56(v34, 1, 1, v55);
  v36 = type metadata accessor for SceneEntity();
  (*(*(v36 - 8) + 56))(v45, 1, 1, v36);
  v31(v16, 1, 1, v30);
  v31(v35, 1, 1, v30);
  v53(v33, v50, v52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD878, &unk_2528C8FD0);
  sub_25272275C(&qword_27F4FD880, &qword_27F4FD878, &unk_2528C8FD0);
  sub_2527B5D14(&qword_27F4FC518, type metadata accessor for SceneEntity);
  v37 = v49;
  v38 = v40;
  sub_2528BE7E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCCF8, &unk_2528C5B80);
  sub_2528BEC20();
  v56(v37, 1, 1, v55);
  v57 = 0;
  v58 = 1;
  v31(v38, 1, 1, v30);
  (*(v47 + 104))(v46, *MEMORY[0x277CB9ED0], v48);
  v53(v33, v50, v52);
  sub_2528BE820();
  return v44;
}

unint64_t sub_2527B5A20()
{
  result = qword_27F4FD890;
  if (!qword_27F4FD890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD890);
  }

  return result;
}

unint64_t sub_2527B5A74()
{
  result = qword_27F4FD898;
  if (!qword_27F4FD898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD898);
  }

  return result;
}

unint64_t sub_2527B5AC8()
{
  result = qword_27F4FD8A0;
  if (!qword_27F4FD8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD8A0);
  }

  return result;
}

uint64_t sub_2527B5B1C()
{
  v0 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD858, &qword_2528C8FB8) - 8) + 80);

  return sub_2527BB568();
}

uint64_t sub_2527B5B88(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_25271F3AC;

  return sub_2527B427C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_2527B5C50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeEntity(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2527B5CB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2527B5D14(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2527B5D5C()
{
  result = qword_27F4FD8A8;
  if (!qword_27F4FD8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD8A8);
  }

  return result;
}

uint64_t sub_2527B5E04()
{
  v0 = sub_2528BEC40();
  __swift_allocate_value_buffer(v0, qword_27F502938);
  __swift_project_value_buffer(v0, qword_27F502938);
  return sub_2528BEC20();
}

uint64_t sub_2527B5E68(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD948, &qword_2528C94A0);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v2[6] = *(v4 + 64);
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2527B5F3C, 0, 0);
}

uint64_t sub_2527B5F3C()
{
  v1 = v0[3];
  sub_2527B63D8();
  if (qword_27F4FBB40 != -1)
  {
    swift_once();
  }

  v2 = v0[3];
  v3 = sub_2528C08B0();
  v0[8] = __swift_project_value_buffer(v3, qword_27F5025C8);
  sub_2527BC5E4(v2);
  if (qword_27F4FBB48 != -1)
  {
    swift_once();
  }

  v4 = v0[3];
  v5 = sub_2528C0820();
  v0[9] = __swift_project_value_buffer(v5, qword_27F5025E0);
  v0[10] = sub_2528B8DD4(v4);
  v6 = swift_task_alloc();
  v0[11] = v6;
  *v6 = v0;
  v6[1] = sub_2527B60DC;
  v7 = v0[2];
  v8 = v0[3];

  return sub_2527B65F4(v7);
}

uint64_t sub_2527B60DC()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_2527B6328;
  }

  else
  {
    v3 = sub_2527B61F0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2527B61F0()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[7];
  v4 = v0[5];
  v6 = v0[3];
  v5 = v0[4];
  (*(v4 + 16))(v3, v0[2], v5);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  (*(v4 + 32))(v8 + v7, v3, v5);
  sub_2527BDBD8(v6, v1, sub_2527C3D8C);

  sub_2527BE824(v6);

  v9 = v0[1];

  return v9();
}

uint64_t sub_2527B6328()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[8];
  v4 = v0[3];
  sub_2527BFDCC(v4, v0[10], v1);
  sub_2527C0C70(v4, v1);
  swift_willThrow();

  v5 = v0[12];
  v6 = v0[7];

  v7 = v0[1];

  return v7();
}

uint64_t sub_2527B63D8()
{
  v1 = v0;
  v2 = *v0;
  sub_2528BE790();
  v3 = *(v13 + 16);

  if (!v3)
  {
    if (qword_27F4FBB40 != -1)
    {
      swift_once();
    }

    v12 = sub_2528C08B0();
    __swift_project_value_buffer(v12, qword_27F5025C8);
    v8 = sub_2528C0890();
    v9 = sub_2528C0CF0();
    if (!os_log_type_enabled(v8, v9))
    {
      goto LABEL_12;
    }

    v10 = swift_slowAlloc();
    *v10 = 0;
    v11 = "Attributes are empty";
    goto LABEL_11;
  }

  v4 = v1[1];
  sub_2528BE790();
  v5 = *(v13 + 16);

  if (v5)
  {
    return result;
  }

  if (qword_27F4FBB40 != -1)
  {
    swift_once();
  }

  v7 = sub_2528C08B0();
  __swift_project_value_buffer(v7, qword_27F5025C8);
  v8 = sub_2528C0890();
  v9 = sub_2528C0CF0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    v11 = "Devices are empty";
LABEL_11:
    _os_log_impl(&dword_252711000, v8, v9, v11, v10, 2u);
    MEMORY[0x2530A8D80](v10, -1, -1);
  }

LABEL_12:

  type metadata accessor for HomeAppIntentError();
  sub_2527C3FAC(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

uint64_t sub_2527B65F4(uint64_t a1)
{
  v2[49] = a1;
  v2[50] = v1;
  v3 = type metadata accessor for HomeEntity(0);
  v2[51] = v3;
  v4 = *(v3 - 8);
  v2[52] = v4;
  v5 = *(v4 + 64) + 15;
  v2[53] = swift_task_alloc();
  v6 = sub_2528C0690();
  v2[54] = v6;
  v7 = *(v6 - 8);
  v2[55] = v7;
  v8 = *(v7 + 64) + 15;
  v2[56] = swift_task_alloc();
  v9 = *(*(type metadata accessor for TriggerRecurrenceWeekdaysEntity(0) - 8) + 64) + 15;
  v2[57] = swift_task_alloc();
  v10 = sub_2528BECF0();
  v2[58] = v10;
  v11 = *(v10 - 8);
  v2[59] = v11;
  v12 = *(v11 + 64) + 15;
  v2[60] = swift_task_alloc();
  v13 = *(*(type metadata accessor for TriggerEventType(0) - 8) + 64) + 15;
  v2[61] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDB8, &unk_2528C5CC0) - 8) + 64) + 15;
  v2[62] = swift_task_alloc();
  v15 = sub_2528BF400();
  v2[63] = v15;
  v16 = *(v15 - 8);
  v2[64] = v16;
  v17 = *(v16 + 64) + 15;
  v2[65] = swift_task_alloc();
  v2[66] = swift_task_alloc();
  v18 = sub_2528BEE30();
  v2[67] = v18;
  v19 = *(v18 - 8);
  v2[68] = v19;
  v20 = *(v19 + 64) + 15;
  v2[69] = swift_task_alloc();
  v21 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDA8, &unk_2528C5CB0) - 8) + 64) + 15;
  v2[70] = swift_task_alloc();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD090, &unk_2528C95C0);
  v2[71] = v22;
  v23 = *(*(v22 - 8) + 64) + 15;
  v2[72] = swift_task_alloc();
  v24 = type metadata accessor for HomeEntity.SnapshotPair(0);
  v2[73] = v24;
  v25 = *(*(v24 - 8) + 64) + 15;
  v2[74] = swift_task_alloc();
  v26 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC480, &unk_2528C7FA0) - 8) + 64) + 15;
  v2[75] = swift_task_alloc();
  v27 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80) - 8) + 64) + 15;
  v2[76] = swift_task_alloc();
  v2[77] = swift_task_alloc();
  v2[78] = swift_task_alloc();
  v28 = sub_2528C05D0();
  v2[79] = v28;
  v29 = *(v28 - 8);
  v2[80] = v29;
  v30 = *(v29 + 64) + 15;
  v2[81] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2527B6A48, 0, 0);
}

uint64_t sub_2527B6A48()
{
  v1 = v0[81];
  v2 = v0[80];
  v3 = v0[79];
  v4 = v0[78];
  v5 = v0[75];
  v6 = v0[50];
  sub_2528C05B0();
  v0[82] = *(v6 + 16);
  sub_2528BE790();
  v0[83] = *(v6 + 8);
  sub_2528BE790();
  v7 = v0[42];
  v0[84] = v7;
  (*(v2 + 16))(v5, v1, v3);
  (*(v2 + 56))(v5, 0, 1, v3);
  v8 = swift_task_alloc();
  v0[85] = v8;
  *v8 = v0;
  v8[1] = sub_2527B6B9C;
  v9 = v0[78];
  v10 = v0[75];

  return sub_25277ECE4(v9, v7, 0, v10);
}

uint64_t sub_2527B6B9C(uint64_t a1)
{
  v2 = *(*v1 + 680);
  v3 = *(*v1 + 672);
  v4 = *(*v1 + 624);
  v5 = *(*v1 + 600);
  v7 = *v1;
  *(*v1 + 688) = a1;

  sub_2527213D8(v5, &qword_27F4FC480, &unk_2528C7FA0);
  sub_2527213D8(v4, &qword_27F4FC488, &unk_2528C3F80);

  return MEMORY[0x2822009F8](sub_2527B6D1C, 0, 0);
}

uint64_t sub_2527B6D1C()
{
  v1 = v0[86];
  if (*(v1 + 16) != 1)
  {
    v23 = v0[81];
    v24 = v0[80];
    v25 = v0[79];
    v26 = v0[58];
    v27 = v0[59];

    type metadata accessor for HomeAppIntentError();
    sub_2527C3FAC(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError);
    swift_allocError();
    v29 = v28;
    v30 = (v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDD0, &qword_2528C5CE0) + 48));
    (*(v27 + 56))(v29, 1, 1, v26);
    *v30 = 0;
    v30[1] = 0;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v24 + 8))(v23, v25);
LABEL_13:
    v50 = v0[81];
    v51 = v0[78];
    v52 = v0[77];
    v53 = v0[76];
    v54 = v0[75];
    v55 = v0[74];
    v56 = v0[72];
    v57 = v0[70];
    v58 = v0[69];
    v59 = v0[66];
    v62 = v0[65];
    v63 = v0[62];
    v64 = v0[61];
    v65 = v0[60];
    v66 = v0[57];
    v67 = v0[56];
    v68 = v0[53];

    v60 = v0[1];

    return v60();
  }

  v2 = v0[70];
  v3 = v0[86];
  sub_2527D38F8(v1, v2);

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDC0, &unk_2528C5CD0);
  if ((*(*(v4 - 8) + 48))(v2, 1, v4) == 1)
  {
    sub_2527213D8(v0[70], &qword_27F4FCDA8, &unk_2528C5CB0);
    v5 = v0[82];
    v6 = v0[77];
    v8 = v0[51];
    v7 = v0[52];
    type metadata accessor for HomeAppIntentError();
    sub_2527C3FAC(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError);
    swift_allocError();
    v10 = v9;
    sub_2528BE790();
    v11 = *(v7 + 48);
    v12 = 1;
    if (!v11(v6, 1, v8))
    {
      (*(v0[59] + 16))(v10, v0[77], v0[58]);
      v12 = 0;
    }

    v13 = v0[82];
    v14 = v0[76];
    v16 = v0[58];
    v15 = v0[59];
    v17 = v0[51];
    sub_2527213D8(v0[77], &qword_27F4FC488, &unk_2528C3F80);
    (*(v15 + 56))(v10, v12, 1, v16);
    v18 = (v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDD0, &qword_2528C5CE0) + 48));
    sub_2528BE790();
    v19 = v11(v14, 1, v17);
    v20 = v0[76];
    if (v19)
    {
      sub_2527213D8(v20, &qword_27F4FC488, &unk_2528C3F80);
      v21 = 0;
      v22 = 0;
    }

    else
    {
      v43 = v0[53];
      v44 = v0[51];
      v45 = v0[76];
      sub_2527C3E7C(v20, v43, type metadata accessor for HomeEntity);
      sub_2527213D8(v45, &qword_27F4FC488, &unk_2528C3F80);
      v46 = *(v43 + *(v44 + 20));
      sub_2528BE6B0();
      v21 = v0[32];
      v22 = v0[33];
      sub_2527C3F4C(v43, type metadata accessor for HomeEntity);
    }

    v47 = v0[81];
    v48 = v0[80];
    v49 = v0[79];
    *v18 = v21;
    v18[1] = v22;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v48 + 8))(v47, v49);
    goto LABEL_13;
  }

  v31 = v0[74];
  v32 = v0[72];
  v33 = v0[71];
  v34 = v0[70];
  v69 = v0[69];
  v35 = v0[58];
  v36 = v0[59];
  v37 = *(v4 + 48);
  v38 = *(v33 + 48);
  (*(v36 + 32))(v32, v34, v35);
  sub_2527C3EE4(v34 + v37, v32 + v38, type metadata accessor for HomeEntity.SnapshotPair);
  sub_2527C3EE4(v32 + *(v33 + 48), v31, type metadata accessor for HomeEntity.SnapshotPair);
  v39 = *(v36 + 8);
  v0[87] = v39;
  v0[88] = (v36 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v39(v32, v35);
  sub_2528BF2F0();
  v40 = *(MEMORY[0x277D151F0] + 4);
  v41 = swift_task_alloc();
  v0[89] = v41;
  *v41 = v0;
  v41[1] = sub_2527B7324;
  v42 = v0[69];

  return MEMORY[0x28216E680]();
}

uint64_t sub_2527B7324(uint64_t a1)
{
  v2 = *(*v1 + 712);
  v3 = *(*v1 + 552);
  v4 = *(*v1 + 544);
  v5 = *(*v1 + 536);
  v7 = *v1;
  *(*v1 + 720) = a1;

  (*(v4 + 8))(v3, v5);

  return MEMORY[0x2822009F8](sub_2527B7484, 0, 0);
}

uint64_t sub_2527B7484()
{
  v141 = v0;
  v1 = *(v0 + 720);
  if (!v1)
  {
    sub_2527C3F4C(*(v0 + 592), type metadata accessor for HomeEntity.SnapshotPair);
    v23 = *(v0 + 656);
    v24 = *(v0 + 616);
    v26 = *(v0 + 408);
    v25 = *(v0 + 416);
    type metadata accessor for HomeAppIntentError();
    sub_2527C3FAC(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError);
    swift_allocError();
    v28 = v27;
    sub_2528BE790();
    v29 = *(v25 + 48);
    v30 = 1;
    if (!v29(v24, 1, v26))
    {
      (*(*(v0 + 472) + 16))(v28, *(v0 + 616), *(v0 + 464));
      v30 = 0;
    }

    v31 = *(v0 + 656);
    v32 = *(v0 + 608);
    v34 = *(v0 + 464);
    v33 = *(v0 + 472);
    v35 = *(v0 + 408);
    sub_2527213D8(*(v0 + 616), &qword_27F4FC488, &unk_2528C3F80);
    (*(v33 + 56))(v28, v30, 1, v34);
    v36 = (v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDD0, &qword_2528C5CE0) + 48));
    sub_2528BE790();
    v37 = v29(v32, 1, v35);
    v38 = *(v0 + 608);
    if (v37)
    {
      sub_2527213D8(v38, &qword_27F4FC488, &unk_2528C3F80);
      v39 = 0;
      v40 = 0;
    }

    else
    {
      v41 = *(v0 + 424);
      v42 = *(v0 + 408);
      v43 = *(v0 + 608);
      sub_2527C3E7C(v38, v41, type metadata accessor for HomeEntity);
      sub_2527213D8(v43, &qword_27F4FC488, &unk_2528C3F80);
      v44 = *(v41 + *(v42 + 20));
      sub_2528BE6B0();
      v39 = *(v0 + 256);
      v40 = *(v0 + 264);
      sub_2527C3F4C(v41, type metadata accessor for HomeEntity);
    }

    v45 = *(v0 + 648);
    v46 = *(v0 + 640);
    v47 = *(v0 + 632);
    *v36 = v39;
    v36[1] = v40;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v46 + 8))(v45, v47);
    v54 = *(v0 + 648);
    v55 = *(v0 + 624);
    v56 = *(v0 + 616);
    v57 = *(v0 + 608);
    v58 = *(v0 + 600);
    v59 = *(v0 + 592);
    v60 = *(v0 + 576);
    v61 = *(v0 + 560);
    v62 = *(v0 + 552);
    v63 = *(v0 + 528);
    v117 = *(v0 + 520);
    v119 = *(v0 + 496);
    v123 = *(v0 + 488);
    v125 = *(v0 + 480);
    v127 = *(v0 + 456);
    v131 = *(v0 + 448);
    v134 = *(v0 + 424);

    v64 = *(v0 + 8);
LABEL_29:

    return v64();
  }

  v2 = *(v0 + 592);
  v3 = *(v0 + 584);
  v4 = *(v0 + 528);
  v5 = *(v0 + 504);
  v6 = *(v0 + 512);
  v7 = *(v0 + 496);
  v8 = *(v0 + 400);
  v9 = *(v6 + 16);
  *(v0 + 728) = v9;
  *(v0 + 736) = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v4, v2, v5);
  sub_25272006C(v2 + *(v3 + 20), v7, &qword_27F4FCDB8, &unk_2528C5CC0);
  *(v0 + 744) = *(v8 + 48);
  sub_2528BE790();
  v10 = *(v0 + 280);
  v130 = v1;
  if (v10)
  {
    v11 = *(v0 + 272);
    v12 = [v1 triggers];
    sub_2527C3E30();
    v13 = sub_2528C0B30();

    v122 = v9;
    if (v13 >> 62)
    {
LABEL_44:
      v133 = v13 & 0xFFFFFFFFFFFFFF8;
      v137 = sub_2528C0EF0();
    }

    else
    {
      v133 = v13 & 0xFFFFFFFFFFFFFF8;
      v137 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v14 = 0;
    while (1)
    {
      if (v137 == v14)
      {

        goto LABEL_25;
      }

      if ((v13 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x2530A84E0](v14, v13);
      }

      else
      {
        if (v14 >= *(v133 + 16))
        {
          goto LABEL_43;
        }

        v15 = *(v13 + 8 * v14 + 32);
      }

      v16 = v15;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      v17 = [v15 name];
      v18 = sub_2528C09F0();
      v20 = v19;

      if (v18 == v11 && v10 == v20)
      {
        break;
      }

      v22 = sub_2528C1060();

      ++v14;
      if (v22)
      {
        goto LABEL_28;
      }
    }

LABEL_28:
    v135 = *(v0 + 632);
    v138 = *(v0 + 648);
    v128 = *(v0 + 592);
    v67 = *(v0 + 528);
    v68 = *(v0 + 520);
    v69 = *(v0 + 504);
    v70 = *(v0 + 512);
    v71 = *(v0 + 488);
    v118 = *(v0 + 496);
    v120 = *(v0 + 640);
    v72 = *(v0 + 400);
    v116 = *(v0 + 392);

    v73 = *(v72 + 32);
    sub_2528BE790();
    v122(v68, v67, v69);
    LOBYTE(v140[0]) = 19;
    sub_2527C1AE8(v11, v10, v71, v68, v140, (v0 + 96));
    v74 = *(v0 + 112);
    *(v0 + 216) = *(v0 + 96);
    *(v0 + 232) = v74;
    *(v0 + 248) = *(v0 + 128);
    sub_2527BA254();
    sub_2528BE660();

    sub_2527213D8(v118, &qword_27F4FCDB8, &unk_2528C5CC0);
    (*(v70 + 8))(v67, v69);
    sub_2527C3F4C(v128, type metadata accessor for HomeEntity.SnapshotPair);
    (*(v120 + 8))(v138, v135);
    v75 = *(v0 + 96);

    v76 = *(v0 + 104);

    v77 = *(v0 + 112);

    v78 = *(v0 + 120);

    v79 = *(v0 + 128);

    v80 = *(v0 + 648);
    v81 = *(v0 + 624);
    v82 = *(v0 + 616);
    v83 = *(v0 + 608);
    v84 = *(v0 + 600);
    v85 = *(v0 + 592);
    v86 = *(v0 + 576);
    v87 = *(v0 + 560);
    v88 = *(v0 + 552);
    v89 = *(v0 + 528);
    v121 = *(v0 + 520);
    v124 = *(v0 + 496);
    v126 = *(v0 + 488);
    v129 = *(v0 + 480);
    v132 = *(v0 + 456);
    v136 = *(v0 + 448);
    v139 = *(v0 + 424);

    v64 = *(v0 + 8);
    goto LABEL_29;
  }

LABEL_25:
  v48 = *(v0 + 664);
  v49 = *(v0 + 528);
  v50 = *(v0 + 496);
  v51 = **(v0 + 400);
  sub_2528BE790();
  v52 = *(v0 + 344);
  sub_2528BE790();
  v53 = sub_2527E50C0(v52, *(v0 + 352), v49, v50);

  sub_2527C227C(v53, v49, v50);
  v65 = *(v0 + 400);

  sub_2527B89C4();
  sub_2528BE790();
  if (*(v0 + 296))
  {
    v66 = *(v0 + 288);
  }

  else
  {
    v91 = *(v0 + 704);
    v92 = *(v0 + 696);
    v93 = *(v0 + 480);
    v94 = *(v0 + 464);
    sub_2528BE550();
    sub_2528BECB0();
    v92(v93, v94);
  }

  v96 = *(v0 + 448);
  v95 = *(v0 + 456);
  v98 = *(v0 + 432);
  v97 = *(v0 + 440);
  v99 = *(*(v0 + 400) + 40);
  sub_2528BE790();
  v100 = MEMORY[0x277D16C68];
  sub_2527C3FAC(&qword_27F4FBEA0, MEMORY[0x277D16C68]);
  sub_2528C0DE0();
  sub_2527C3FAC(&qword_27F4FDA10, v100);
  sub_2528C0930();
  v101 = *(v97 + 8);
  v101(v96, v98);
  v101(v95, v98);
  v102 = sub_2528BFBC0();
  v103 = *(v102 + 48);
  v104 = *(v102 + 52);
  swift_allocObject();
  *(v0 + 752) = sub_2528BFBB0();
  sub_2528BE790();
  if (*(v0 + 312))
  {
    v105 = *(v0 + 312);
  }

  sub_2528BFBA0();
  if (qword_27F4FBB40 != -1)
  {
    swift_once();
  }

  v106 = sub_2528C08B0();
  *(v0 + 760) = __swift_project_value_buffer(v106, qword_27F5025C8);
  sub_2528BEA50();
  v107 = sub_2528C0890();
  v108 = sub_2528C0D10();

  if (os_log_type_enabled(v107, v108))
  {
    v109 = swift_slowAlloc();
    v110 = swift_slowAlloc();
    v140[0] = v110;
    *v109 = 136315138;
    v111 = sub_2528BFB90();
    v113 = sub_2527389AC(v111, v112, v140);

    *(v109 + 4) = v113;
    _os_log_impl(&dword_252711000, v107, v108, "Produced trigger builder: %s", v109, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v110);
    MEMORY[0x2530A8D80](v110, -1, -1);
    MEMORY[0x2530A8D80](v109, -1, -1);
  }

  v114 = *(MEMORY[0x277D15CD8] + 4);
  v115 = swift_task_alloc();
  *(v0 + 768) = v115;
  *v115 = v0;
  v115[1] = sub_2527B8070;

  return MEMORY[0x28216F920](v130);
}

uint64_t sub_2527B8070(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 768);
  v7 = *v2;
  *(v3 + 776) = a1;
  *(v3 + 784) = v1;

  if (v1)
  {
    v5 = sub_2527B8548;
  }

  else
  {
    v5 = sub_2527B8188;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2527B8188()
{
  v58 = v0;
  v1 = *(v0 + 760);
  v2 = *(v0 + 776);
  v3 = sub_2528C0890();
  v4 = sub_2528C0D10();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 776);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v5;
    *v7 = v5;
    v8 = v5;
    _os_log_impl(&dword_252711000, v3, v4, "Created new trigger successfully: %@", v6, 0xCu);
    sub_2527213D8(v7, &qword_27F4FC230, &qword_2528C3928);
    MEMORY[0x2530A8D80](v7, -1, -1);
    MEMORY[0x2530A8D80](v6, -1, -1);
  }

  v9 = *(v0 + 776);
  v39 = *(v0 + 736);
  v10 = *(v0 + 728);
  v41 = v9;
  v42 = *(v0 + 720);
  v53 = *(v0 + 632);
  v55 = *(v0 + 648);
  v49 = *(v0 + 592);
  v51 = *(v0 + 640);
  v11 = *(v0 + 528);
  v12 = *(v0 + 520);
  v13 = *(v0 + 504);
  v47 = *(v0 + 512);
  v14 = *(v0 + 488);
  v43 = *(v0 + 752);
  v45 = *(v0 + 496);
  v15 = *(v0 + 400);
  v40 = *(v0 + 392);

  v16 = [v9 name];
  v17 = sub_2528C09F0();
  v19 = v18;

  v20 = *(v15 + 32);
  sub_2528BE790();
  v10(v12, v11, v13);
  v57 = 20;
  sub_2527C1AE8(v17, v19, v14, v12, &v57, (v0 + 56));
  v22 = *(v0 + 80);
  v21 = *(v0 + 88);
  v24 = *(v0 + 64);
  v23 = *(v0 + 72);
  v25 = *(v0 + 56);
  v26 = *(v0 + 72);
  *(v0 + 176) = *(v0 + 56);
  *(v0 + 192) = v26;
  *(v0 + 208) = v21;
  sub_2527BA254();
  sub_2528BE660();

  sub_2527213D8(v45, &qword_27F4FCDB8, &unk_2528C5CC0);
  (*(v47 + 8))(v11, v13);
  sub_2527C3F4C(v49, type metadata accessor for HomeEntity.SnapshotPair);
  (*(v51 + 8))(v55, v53);
  v27 = *(v0 + 648);
  v28 = *(v0 + 624);
  v29 = *(v0 + 616);
  v30 = *(v0 + 608);
  v31 = *(v0 + 600);
  v32 = *(v0 + 592);
  v33 = *(v0 + 576);
  v34 = *(v0 + 560);
  v35 = *(v0 + 552);
  v36 = *(v0 + 528);
  v44 = *(v0 + 520);
  v46 = *(v0 + 496);
  v48 = *(v0 + 488);
  v50 = *(v0 + 480);
  v52 = *(v0 + 456);
  v54 = *(v0 + 448);
  v56 = *(v0 + 424);

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_2527B8548()
{
  v64 = v0;
  v1 = *(v0 + 784);
  v2 = *(v0 + 760);
  v3 = v1;
  v4 = sub_2528C0890();
  v5 = sub_2528C0D10();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 784);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_252711000, v4, v5, "Failed to create trigger with error: %@", v7, 0xCu);
    sub_2527213D8(v8, &qword_27F4FC230, &qword_2528C3928);
    MEMORY[0x2530A8D80](v8, -1, -1);
    MEMORY[0x2530A8D80](v7, -1, -1);
  }

  v11 = *(v0 + 784);

  *(v0 + 360) = v11;
  v12 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC210, &qword_2528C6230);
  type metadata accessor for HMError(0);
  if (swift_dynamicCast())
  {
    v13 = *(v0 + 368);
    *(v0 + 376) = v13;
    sub_2527C3FAC(&qword_27F4FC0D0, type metadata accessor for HMError);
    sub_2528BEBE0();

    sub_2527A0688(*(v0 + 384), &v63);
    v14 = v63;
    if (v63 == 20)
    {
      v14 = 2;
    }
  }

  else
  {
    v14 = 2;
  }

  v44 = v14;
  v47 = *(v0 + 784);
  v48 = *(v0 + 752);
  v15 = *(v0 + 744);
  v43 = *(v0 + 736);
  v16 = *(v0 + 728);
  v58 = *(v0 + 632);
  v60 = *(v0 + 648);
  v54 = *(v0 + 592);
  v56 = *(v0 + 640);
  v17 = *(v0 + 528);
  v18 = *(v0 + 520);
  v19 = *(v0 + 504);
  v20 = *(v0 + 488);
  v50 = *(v0 + 496);
  v52 = *(v0 + 512);
  v21 = *(v0 + 400);
  v45 = *(v0 + 392);
  v46 = *(v0 + 720);
  sub_2528BE790();
  v22 = *(v0 + 320);
  v23 = *(v0 + 328);
  v24 = *(v21 + 32);
  sub_2528BE790();
  v16(v18, v17, v19);
  v62 = v44;
  sub_2527C1AE8(v22, v23, v20, v18, &v62, (v0 + 16));
  v25 = *(v0 + 40);
  v26 = *(v0 + 48);
  v28 = *(v0 + 24);
  v27 = *(v0 + 32);
  v29 = *(v0 + 16);
  v30 = *(v0 + 32);
  *(v0 + 136) = *(v0 + 16);
  *(v0 + 152) = v30;
  *(v0 + 168) = v26;
  sub_2527BA254();
  sub_2528BE660();

  sub_2527213D8(v50, &qword_27F4FCDB8, &unk_2528C5CC0);
  (*(v52 + 8))(v17, v19);
  sub_2527C3F4C(v54, type metadata accessor for HomeEntity.SnapshotPair);
  (*(v56 + 8))(v60, v58);
  v31 = *(v0 + 648);
  v32 = *(v0 + 624);
  v33 = *(v0 + 616);
  v34 = *(v0 + 608);
  v35 = *(v0 + 600);
  v36 = *(v0 + 592);
  v37 = *(v0 + 576);
  v38 = *(v0 + 560);
  v39 = *(v0 + 552);
  v40 = *(v0 + 528);
  v49 = *(v0 + 520);
  v51 = *(v0 + 496);
  v53 = *(v0 + 488);
  v55 = *(v0 + 480);
  v57 = *(v0 + 456);
  v59 = *(v0 + 448);
  v61 = *(v0 + 424);

  v41 = *(v0 + 8);

  return v41();
}

uint64_t sub_2527B89C4()
{
  v1 = sub_2528C0730();
  v78 = *(v1 - 8);
  v79 = v1;
  v2 = *(v78 + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v76 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v77 = &v73 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FBDC0, &qword_2528C23E8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v82 = &v73 - v8;
  v9 = type metadata accessor for TriggerRecurrenceWeekdaysEntity(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_2528C0770();
  v13 = *(v84 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v84);
  v16 = (&v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v83 = sub_2528C0740();
  v81 = *(v83 - 8);
  v17 = *(v81 + 64);
  MEMORY[0x28223BE20](v83);
  v19 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2528BEC90();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v73 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for TriggerEventType(0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v28 = &v73 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = v0;
  v29 = *(v0 + 32);
  sub_2528BE790();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v31 = *v28;
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FBDF8, &qword_2528C95D0);
      v33 = v82;
      sub_25274AA0C(&v28[*(v32 + 48)], v82, &qword_27F4FBDC0, &qword_2528C23E8);
      v34 = v78;
      v35 = MEMORY[0x277D16E58];
      if (!v31)
      {
        v35 = MEMORY[0x277D16E60];
      }

      v36 = v76;
      v37 = v12;
      v38 = v79;
      (*(v78 + 104))(v76, *v35, v79);
      v39 = v77;
      (*(v34 + 32))(v77, v36, v38);
      v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FDA20, &qword_2528C95D8) + 48);
      v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FDA28, &qword_2528C95E0) + 48);
      (*(v34 + 16))(v16, v39, v38);
      sub_25272006C(v33, v16 + v41, &qword_27F4FBDC0, &qword_2528C23E8);
      (*(v81 + 104))(v16, *MEMORY[0x277D16E68], v83);
      v42 = *(v80 + 40);
      sub_2528BE790();
      v43 = sub_2528C0690();
      (*(*(v43 - 8) + 32))(v16 + v40, v37, v43);
      v44 = v84;
      (*(v13 + 104))(v16, *MEMORY[0x277D16E88], v84);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FDA30, &qword_2528C95E8);
      v45 = *(v13 + 72);
      v46 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v47 = swift_allocObject();
      *(v47 + 16) = xmmword_2528C3910;
      (*(v13 + 16))(v47 + v46, v16, v44);
      v48 = sub_252749F30(v47);
      swift_setDeallocating();
      v49 = *(v13 + 8);
      v49(v47 + v46, v44);
      swift_deallocClassInstance();
      v49(v16, v44);
      (*(v34 + 8))(v39, v38);
      sub_2527213D8(v82, &qword_27F4FBDC0, &qword_2528C23E8);
    }

    else
    {
      if (*v28)
      {
        v61 = 3;
      }

      else
      {
        v61 = 4;
      }

      v62 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FDA38, &unk_2528C95F0) + 48);
      *v16 = v61;
      v63 = *MEMORY[0x277D16E80];
      v64 = sub_2528C0750();
      (*(*(v64 - 8) + 104))(v16 + v62, v63, v64);
      v65 = *MEMORY[0x277D16E78];
      v66 = sub_2528C0760();
      (*(*(v66 - 8) + 104))(v16, v65, v66);
      v67 = v84;
      (*(v13 + 104))(v16, *MEMORY[0x277D16E90], v84);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FDA30, &qword_2528C95E8);
      v68 = *(v13 + 72);
      v69 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v70 = swift_allocObject();
      *(v70 + 16) = xmmword_2528C3910;
      (*(v13 + 16))(v70 + v69, v16, v67);
      v48 = sub_252749F30(v70);
      swift_setDeallocating();
      v71 = *(v13 + 8);
      v71(v70 + v69, v67);
      swift_deallocClassInstance();
      v71(v16, v67);
    }
  }

  else
  {
    v74 = v20;
    v75 = v21;
    (*(v21 + 32))(v24, v28, v20);
    (*(v21 + 16))(v19, v24, v20);
    v50 = v12;
    v51 = v81;
    v52 = v83;
    (*(v81 + 104))(v19, *MEMORY[0x277D16E70], v83);
    v53 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FDA20, &qword_2528C95D8) + 48);
    (*(v51 + 16))(v16, v19, v52);
    v54 = *(v80 + 40);
    sub_2528BE790();
    v55 = sub_2528C0690();
    (*(*(v55 - 8) + 32))(v16 + v53, v50, v55);
    v56 = v84;
    (*(v13 + 104))(v16, *MEMORY[0x277D16E88], v84);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FDA30, &qword_2528C95E8);
    v57 = *(v13 + 72);
    v58 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v59 = swift_allocObject();
    *(v59 + 16) = xmmword_2528C3910;
    (*(v13 + 16))(v59 + v58, v16, v56);
    v48 = sub_252749F30(v59);
    swift_setDeallocating();
    v60 = *(v13 + 8);
    v60(v59 + v58, v56);
    swift_deallocClassInstance();
    v60(v16, v56);
    (*(v51 + 8))(v19, v83);
    (*(v75 + 8))(v24, v74);
  }

  return v48;
}

uint64_t sub_2527B9350@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = *(a1 + 32);
  result = sub_2527D83BC(a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_2527B939C(uint64_t a1)
{
  v2 = sub_2528C07B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v24 - v9;
  result = MEMORY[0x28223BE20](v8);
  v13 = v24 - v12;
  v14 = 0;
  v25 = a1;
  v17 = *(a1 + 56);
  v16 = a1 + 56;
  v15 = v17;
  v18 = 1 << *(v16 - 24);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v15;
  v21 = (v18 + 63) >> 6;
  v24[1] = v3 + 32;
  v24[2] = v3 + 16;
  v24[0] = v3 + 8;
  if ((v19 & v15) != 0)
  {
    do
    {
      v22 = v14;
LABEL_9:
      v23 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      (*(v3 + 16))(v13, *(v25 + 48) + *(v3 + 72) * (v23 | (v22 << 6)), v2);
      (*(v3 + 32))(v7, v13, v2);
      sub_25273A60C(v10, v7);
      result = (*(v3 + 8))(v10, v2);
    }

    while (v20);
  }

  while (1)
  {
    v22 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v22 >= v21)
    {
    }

    v20 = *(v16 + 8 * v22);
    ++v14;
    if (v20)
    {
      v14 = v22;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t StateSnapshot.staticAccessory(withNodeID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a1;
  v49 = a2;
  v2 = &qword_27F4FD8B0;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD8B0, &qword_2528C9070);
  v50 = *(v54 - 8);
  v3 = *(v50 + 64);
  v4 = MEMORY[0x28223BE20](v54);
  v55 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v53 = &v48 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD8B8, &unk_2528C9078);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v51 = &v48 - v9;
  v10 = sub_2528BF390();
  v11 = v10;
  v12 = v10 + 64;
  v13 = 1 << *(v10 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v10 + 64);
  v16 = (v13 + 63) >> 6;

  v18 = 0;
  v19 = v53;
  while (v15)
  {
    v20 = v2;
LABEL_11:
    v22 = __clz(__rbit64(v15)) | (v18 << 6);
    v23 = *(v11 + 48);
    v24 = sub_2528BECF0();
    (*(*(v24 - 8) + 16))(v19, v23 + *(*(v24 - 8) + 72) * v22, v24);
    v25 = v11;
    v26 = *(v11 + 56);
    v27 = sub_2528BFC70();
    v28 = *(v27 - 8);
    v29 = v26 + *(v28 + 72) * v22;
    v30 = v54;
    (*(v28 + 16))(v19 + *(v54 + 48), v29, v27);
    v31 = v55;
    v2 = v20;
    sub_25274AA0C(v19, v55, v20, &qword_2528C9070);
    v32 = v31 + *(v30 + 48);
    v33 = sub_2528BFBF0();
    if ((v34 & 1) == 0 && v33 == v52)
    {

      v35 = v51;
      sub_25274AA0C(v55, v51, &qword_27F4FD8B0, &qword_2528C9070);
      v36 = v50;
      v37 = *(v50 + 56);
      v38 = v35;
      v39 = 0;
LABEL_15:
      v40 = v54;
      v37(v38, v39, 1, v54);

      if ((*(v36 + 48))(v35, 1, v40) == 1)
      {
        sub_2527213D8(v35, &qword_27F4FD8B8, &unk_2528C9078);
        v41 = sub_2528BFC70();
        return (*(*(v41 - 8) + 56))(v49, 1, 1, v41);
      }

      else
      {
        v42 = *(v40 + 48);
        v43 = sub_2528BFC70();
        v44 = *(v43 - 8);
        v45 = v35 + v42;
        v46 = v49;
        (*(v44 + 32))(v49, v45, v43);
        (*(v44 + 56))(v46, 0, 1, v43);
        v47 = sub_2528BECF0();
        return (*(*(v47 - 8) + 8))(v35, v47);
      }
    }

    v15 &= v15 - 1;
    result = sub_2527213D8(v55, v20, &qword_2528C9070);
    v11 = v25;
  }

  while (1)
  {
    v21 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v21 >= v16)
    {

      v36 = v50;
      v35 = v51;
      v37 = *(v50 + 56);
      v38 = v51;
      v39 = 1;
      goto LABEL_15;
    }

    v15 = *(v12 + 8 * v21);
    ++v18;
    if (v15)
    {
      v20 = v2;
      v18 = v21;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_2527B9A40()
{
  result = qword_27F4FD8C0;
  if (!qword_27F4FD8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD8C0);
  }

  return result;
}

unint64_t sub_2527B9A98()
{
  result = qword_27F4FD8C8;
  if (!qword_27F4FD8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD8C8);
  }

  return result;
}

unint64_t sub_2527B9B70()
{
  result = qword_27F4FD8D0;
  if (!qword_27F4FD8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD8D0);
  }

  return result;
}

uint64_t sub_2527B9BC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_2528BECF0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v10) = *(a1 + 32);
  v12 = *(a1 + 16);
  v16[0] = *a1;
  v16[1] = v12;
  v17 = v10;
  sub_2528BFC50();
  v13 = sub_2527F2AF4(a2, v11);
  if (v3)
  {
    return (*(v8 + 8))(v11, v7);
  }

  v15 = v13;
  result = (*(v8 + 8))(v11, v7);
  *a3 = v15;
  return result;
}

uint64_t sub_2527B9D38(uint64_t a1)
{
  v4 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v4;
  *(v2 + 48) = *(v1 + 32);
  *(v2 + 64) = *(v1 + 48);
  v5 = swift_task_alloc();
  *(v2 + 72) = v5;
  *v5 = v2;
  v5[1] = sub_25276726C;

  return sub_2527B5E68(a1);
}

double sub_2527B9DEC@<D0>(uint64_t a1@<X8>)
{
  sub_2527C0E90(v4);
  v2 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v2;
  result = *&v5;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

uint64_t sub_2527B9E38(uint64_t a1)
{
  v2 = sub_2527B9B70();

  return MEMORY[0x28210B538](a1, v2);
}

unint64_t sub_2527B9E78()
{
  result = qword_27F4FD8D8;
  if (!qword_27F4FD8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD8D8);
  }

  return result;
}

uint64_t sub_2527B9ECC()
{
  if (*v0 == 20)
  {
    return 0x73736563637553;
  }

  MEMORY[0x2530A80B0](0x3A6572756C696146, 0xE900000000000020);
  sub_2528C0ED0();
  return 0;
}

uint64_t sub_2527B9F68()
{
  v0 = sub_2528BE9F0();
  __swift_allocate_value_buffer(v0, qword_27F502950);
  __swift_project_value_buffer(v0, qword_27F502950);
  return sub_2528BE9D0();
}

double sub_2527B9FCC@<D0>(uint64_t a1@<X8>)
{
  sub_2527C395C(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

unint64_t sub_2527BA014()
{
  result = qword_27F4FD8E0;
  if (!qword_27F4FD8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD8E0);
  }

  return result;
}

unint64_t sub_2527BA06C()
{
  result = qword_27F4FD8E8;
  if (!qword_27F4FD8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD8E8);
  }

  return result;
}

unint64_t sub_2527BA0C4()
{
  result = qword_27F4FD8F0;
  if (!qword_27F4FD8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD8F0);
  }

  return result;
}

uint64_t sub_2527BA15C(uint64_t a1)
{
  v2 = sub_2527BB3C4();

  return MEMORY[0x28210B2E8](a1, v2);
}

unint64_t sub_2527BA1AC()
{
  result = qword_27F4FD908;
  if (!qword_27F4FD908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD908);
  }

  return result;
}

unint64_t sub_2527BA200()
{
  result = qword_27F4FD910;
  if (!qword_27F4FD910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD910);
  }

  return result;
}

unint64_t sub_2527BA254()
{
  result = qword_27F4FD918;
  if (!qword_27F4FD918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD918);
  }

  return result;
}

unint64_t sub_2527BA2AC()
{
  result = qword_27F4FD920;
  if (!qword_27F4FD920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD920);
  }

  return result;
}

uint64_t sub_2527BA300()
{
  sub_2527BB3C4();

  return sub_2528BE550();
}

uint64_t sub_2527BA3C8(uint64_t a1)
{
  v2 = sub_2527B9E78();

  return MEMORY[0x28210B488](a1, v2);
}

unint64_t sub_2527BA418()
{
  result = qword_27F4FD938;
  if (!qword_27F4FD938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD938);
  }

  return result;
}

uint64_t sub_2527BA46C()
{
  v1 = *v0;
  sub_2528BE6B0();
  if (v3)
  {
    return sub_2528BE8C0();
  }

  else
  {
    return sub_2528BE8E0();
  }
}

uint64_t sub_2527BA4C0(uint64_t a1)
{
  v2 = sub_2527BA2AC();

  return MEMORY[0x28210C4B8](a1, v2);
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

uint64_t sub_2527BA520(uint64_t *a1, int a2)
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

uint64_t sub_2527BA568(uint64_t result, int a2, int a3)
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

unint64_t sub_2527BA5EC()
{
  result = qword_27F4FD950;
  if (!qword_27F4FD950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD950);
  }

  return result;
}

uint64_t sub_2527BA640()
{
  v1 = v0;
  v2 = type metadata accessor for TriggerEventType(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = 0;
  v22 = 0xE000000000000000;
  sub_2528C0E70();

  v21 = 0x3A72656767697274;
  v22 = 0xE900000000000020;
  v6 = v0[4];
  sub_2528BE790();
  v7 = sub_25271A6D8();
  MEMORY[0x2530A80B0](v7);

  sub_2527C3F4C(v5, type metadata accessor for TriggerEventType);
  MEMORY[0x2530A80B0](0x7365636976656420, 0xEA0000000000203ALL);
  v8 = v1[1];
  sub_2528BE790();
  v9 = v20;
  v10 = type metadata accessor for DeviceEntity();
  v11 = MEMORY[0x2530A81C0](v9, v10);
  v13 = v12;

  MEMORY[0x2530A80B0](v11, v13);

  MEMORY[0x2530A80B0](0x7562697274746120, 0xED0000203A736574);
  v14 = *v1;
  sub_2528BE790();
  v15 = MEMORY[0x2530A81A0](v20, &type metadata for Attribute);
  v17 = v16;

  MEMORY[0x2530A80B0](v15, v17);

  return v21;
}

uint64_t sub_2527BA808()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD968, &qword_2528C9538);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v8 - v3;
  v5 = sub_2527BB31C();
  MEMORY[0x2530A60E0](v5, &type metadata for AutomationOutcome, &type metadata for AutomationOutcome.SuccessCase.Resolver, v5);
  v6 = sub_2527BB370();
  MEMORY[0x2530A60E0](v6, &type metadata for AutomationOutcome, &type metadata for AutomationOutcome.FailureCase.Resolver, v6);
  sub_2527BA5EC();
  sub_2528BEAA0();
  v8[0] = v5;
  v8[1] = &type metadata for AutomationOutcome.SuccessCase.Resolver;
  sub_2528BEA90();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_2527BA9E0(uint64_t a1)
{
  v2 = sub_2527C4B18();

  return MEMORY[0x28210B2E8](a1, v2);
}

uint64_t sub_2527BAA2C()
{
  sub_2527C4B18();

  return sub_2528BE550();
}

uint64_t sub_2527BAACC(uint64_t a1)
{
  v2 = sub_2527C45E0();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_2527BAB18()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC128, &unk_2528C3590);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v13 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC130, &unk_2528C6A80);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  v8 = sub_2528BEC40();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  sub_2528BEC20();
  (*(v9 + 56))(v7, 1, 1, v8);
  v11 = sub_2528BE8D0();
  (*(*(v11 - 8) + 56))(v3, 1, 1, v11);
  return sub_2528BE900();
}

uint64_t sub_2527BACE0(uint64_t a1)
{
  v2 = sub_2527C4390();

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t sub_2527BAD48(uint64_t a1, uint64_t *a2)
{
  v3 = sub_2528BE9F0();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_2528BE9D0();
}

uint64_t sub_2527BADA4(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_2527BADC8, 0, 0);
}

uint64_t sub_2527BADC8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_2528BE6B0();
  *v1 = *(v0 + 32);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2527BAE38@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2528BEC40();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC5C8, &qword_2528C4728);
  sub_2528BEC20();
  sub_252746B7C();
  result = sub_2528BE6E0();
  *a1 = result;
  return result;
}

uint64_t sub_2527BAEE8(uint64_t a1)
{
  v2 = sub_2527C4AC4();

  return MEMORY[0x28210B2E8](a1, v2);
}

uint64_t sub_2527BAF34()
{
  sub_2527C4AC4();

  return sub_2528BE550();
}

uint64_t sub_2527BAFD4@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
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

uint64_t sub_2527BB07C(uint64_t a1)
{
  v2 = sub_2527C4938();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_2527BB0C8(uint64_t a1)
{
  v2 = sub_2527C46E8();

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t sub_2527BB114()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FBE28, &qword_2528C4730);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2528C17E0;
  v1 = sub_2527BB2C8();
  *(v0 + 32) = &type metadata for AutomationOutcome.SuccessCase;
  *(v0 + 40) = v1;
  v2 = sub_2527BB274();
  *(v0 + 48) = &type metadata for AutomationOutcome.FailureCase;
  *(v0 + 56) = v2;
  return v0;
}

unint64_t sub_2527BB184@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_2528BEC40();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  if (*v1 == 20)
  {
    v5 = &type metadata for AutomationOutcome.SuccessCase;
    result = sub_2527BB2C8();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC5C8, &qword_2528C4728);
    sub_2528BEC20();
    sub_252746B7C();
    v7 = sub_2528BE6E0();
    sub_2528BE6C0();
    result = sub_2527BB274();
    *a1 = v7;
    v5 = &type metadata for AutomationOutcome.FailureCase;
  }

  a1[3] = v5;
  a1[4] = result;
  return result;
}

unint64_t sub_2527BB274()
{
  result = qword_27F4FD958;
  if (!qword_27F4FD958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD958);
  }

  return result;
}

unint64_t sub_2527BB2C8()
{
  result = qword_27F4FD960;
  if (!qword_27F4FD960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD960);
  }

  return result;
}

unint64_t sub_2527BB31C()
{
  result = qword_27F4FD970;
  if (!qword_27F4FD970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD970);
  }

  return result;
}

unint64_t sub_2527BB370()
{
  result = qword_27F4FD978;
  if (!qword_27F4FD978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD978);
  }

  return result;
}

unint64_t sub_2527BB3C4()
{
  result = qword_27F4FD980;
  if (!qword_27F4FD980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD980);
  }

  return result;
}

uint64_t sub_2527BB418()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCC68, &qword_2528C6CC0);
  sub_25272275C(&qword_27F4FDA50, &qword_27F4FCC68, &qword_2528C6CC0);
  sub_2528BE640();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FDA58, &unk_2528C9610);
  return sub_2528C0A10();
}

uint64_t sub_2527BB4C0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCEE0, &qword_2528C6A78);
  sub_25272275C(&qword_27F4FDA60, &qword_27F4FCEE0, &qword_2528C6A78);
  sub_2528BE640();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FDA68, &qword_2528C9620);
  return sub_2528C0A10();
}

uint64_t sub_2527BB568()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD858, &qword_2528C8FB8);
  sub_25272275C(&qword_27F4FDA40, &qword_27F4FD858, &qword_2528C8FB8);
  sub_2528BE640();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FDA48, &unk_2528C9600);
  return sub_2528C0A10();
}

uint64_t sub_2527BB610()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD948, &qword_2528C94A0);
  sub_25272275C(&qword_27F4FDA00, &qword_27F4FD948, &qword_2528C94A0);
  sub_2528BE640();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FDA08, &unk_2528C95B0);
  return sub_2528C0A10();
}

uint64_t sub_2527BB6B8@<X0>(uint64_t a1@<X8>)
{
  v12[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD00, &unk_2528C6A90);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = v12 - v5;
  sub_2527FECD0(&v48, v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD08, &unk_2528C5B90);
  v8 = sub_252755F54();
  MEMORY[0x2530A60E0](&v34, &v48, v7, &type metadata for DeviceEntityFromAccessoryTypeResolver, v8);
  v41[4] = v52;
  v41[5] = v53;
  v41[6] = v54;
  v41[0] = v48;
  v41[1] = v49;
  v41[2] = v50;
  v41[3] = v51;
  v9 = sub_252755FA8(v41);
  sub_2527FECD0(&v48, v9);
  v10 = sub_252755FFC();
  MEMORY[0x2530A60E0](&v27, &v48, v7, &type metadata for DeviceEntityFromInputTypeResolver, v10);
  v42[4] = v52;
  v42[5] = v53;
  v42[6] = v54;
  v42[0] = v48;
  v42[1] = v49;
  v42[2] = v50;
  v42[3] = v51;
  sub_252756050(v42);
  v43[4] = v38;
  v43[5] = v39;
  v43[6] = v40;
  v43[0] = v34;
  v43[1] = v35;
  v43[2] = v36;
  v43[3] = v37;
  v24 = v38;
  v25 = v39;
  v26 = v40;
  v20 = v34;
  v21 = v35;
  v22 = v36;
  v23 = v37;
  sub_2527560A4(v43, &v48);
  sub_252756100();
  sub_2528BEAA0();
  v44[4] = v24;
  v44[5] = v25;
  v44[6] = v26;
  v44[0] = v20;
  v44[1] = v21;
  v44[2] = v22;
  v44[3] = v23;
  sub_252755FA8(v44);
  v45[4] = v31;
  v45[5] = v32;
  v45[6] = v33;
  v45[0] = v27;
  v45[1] = v28;
  v45[2] = v29;
  v45[3] = v30;
  v17 = v31;
  v18 = v32;
  v19 = v33;
  v13 = v27;
  v14 = v28;
  v15 = v29;
  v16 = v30;
  sub_2527561B4(v45, &v48);
  v12[2] = v8;
  v12[3] = &type metadata for DeviceEntityFromAccessoryTypeResolver;
  sub_2528BEA90();
  v46[4] = v17;
  v46[5] = v18;
  v46[6] = v19;
  v46[0] = v13;
  v46[1] = v14;
  v46[3] = v16;
  v46[2] = v15;
  sub_252756050(v46);
  (*(v2 + 8))(v6, v1);
  v47[4] = v31;
  v47[5] = v32;
  v47[6] = v33;
  v47[0] = v27;
  v47[1] = v28;
  v47[3] = v30;
  v47[2] = v29;
  sub_252756050(v47);
  v52 = v38;
  v53 = v39;
  v54 = v40;
  v48 = v34;
  v49 = v35;
  v50 = v36;
  v51 = v37;
  return sub_252755FA8(&v48);
}

uint64_t sub_2527BB9EC()
{
  v0 = type metadata accessor for TriggerRecurrenceWeekdaysEntity(0);
  v1 = sub_2527C3D38();
  MEMORY[0x2530A60E0](v1, v0, &type metadata for TriggerRecurrenceWeekdaysEntity.Resolver, v1);
  sub_2527C3FAC(&qword_27F4FBD28, type metadata accessor for TriggerRecurrenceWeekdaysEntity);

  return sub_2528BEAA0();
}

uint64_t sub_2527BBAF8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(_OWORD *))
{
  v33[3] = a3;
  v33[4] = a4;
  v8 = swift_allocObject();
  v33[0] = v8;
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[2];
  v12 = a1[3];
  v13 = a1[4];
  v14 = a1[5];
  v15 = *(a1 + 1);
  v8[1] = *a1;
  v8[2] = v15;
  v8[3] = *(a1 + 2);
  sub_25276E828(v33, v32);
  sub_25276E828(v33, v31);
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  v16 = sub_2528C0890();
  v17 = sub_2528C0D10();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v30 = v19;
    *v18 = 136446466;
    sub_25276E828(v32, v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD9F8, &qword_2528C95A8);
    v20 = sub_2528C0A10();
    v22 = v21;
    __swift_destroy_boxed_opaque_existential_0Tm(v32);
    v23 = sub_2527389AC(v20, v22, &v30);

    *(v18 + 4) = v23;
    *(v18 + 12) = 2080;
    v24 = __swift_project_boxed_opaque_existential_0(v31, v31[3]);
    v34[0] = *v24;
    v34[1] = v24[1];
    v34[2] = v24[2];
    v25 = a6(v24);
    v27 = v26;
    __swift_destroy_boxed_opaque_existential_0Tm(v31);
    v28 = sub_2527389AC(v25, v27, &v30);

    *(v18 + 14) = v28;
    _os_log_impl(&dword_252711000, v16, v17, "HomeAppIntents: Performing %{public}s: %s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2530A8D80](v19, -1, -1);
    MEMORY[0x2530A8D80](v18, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v32);
    __swift_destroy_boxed_opaque_existential_0Tm(v31);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v33);
}

uint64_t sub_2527BBD58(uint64_t a1)
{
  v21[3] = &type metadata for ToggleAttributeIntent;
  v21[4] = &off_286496B88;
  v2 = swift_allocObject();
  v21[0] = v2;
  v3 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(a1 + 32);
  *(v2 + 64) = *(a1 + 48);
  sub_25276E828(v21, v20);
  sub_25276E828(v21, v19);
  sub_2527691BC(a1, v22);
  v4 = sub_2528C0890();
  v5 = sub_2528C0D10();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136446466;
    sub_25276E828(v20, v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD9F8, &qword_2528C95A8);
    v8 = sub_2528C0A10();
    v10 = v9;
    __swift_destroy_boxed_opaque_existential_0Tm(v20);
    v11 = sub_2527389AC(v8, v10, &v18);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2080;
    v12 = __swift_project_boxed_opaque_existential_0(v19, v19[3]);
    v22[0] = *v12;
    v22[1] = *(v12 + 1);
    v22[2] = *(v12 + 2);
    v23 = v12[6];
    v13 = sub_2527674A8();
    v15 = v14;
    __swift_destroy_boxed_opaque_existential_0Tm(v19);
    v16 = sub_2527389AC(v13, v15, &v18);

    *(v6 + 14) = v16;
    _os_log_impl(&dword_252711000, v4, v5, "HomeAppIntents: Performing %{public}s: %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2530A8D80](v7, -1, -1);
    MEMORY[0x2530A8D80](v6, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v20);
    __swift_destroy_boxed_opaque_existential_0Tm(v19);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v21);
}

uint64_t sub_2527BBF9C(uint64_t a1, uint64_t a2)
{
  v22[3] = &type metadata for GetDeviceInfoIntent;
  v22[4] = &off_286496CA8;
  v22[0] = a1;
  v22[1] = a2;
  sub_25276E828(v22, v21);
  sub_25276E828(v22, v20);
  sub_2528BEA50();
  sub_2528BEA50();
  v2 = sub_2528C0890();
  v3 = sub_2528C0D10();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v19 = v5;
    *v4 = 136446466;
    sub_25276E828(v21, v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD9F8, &qword_2528C95A8);
    v6 = sub_2528C0A10();
    v8 = v7;
    __swift_destroy_boxed_opaque_existential_0Tm(v21);
    v9 = sub_2527389AC(v6, v8, &v19);

    *(v4 + 4) = v9;
    *(v4 + 12) = 2080;
    v10 = __swift_project_boxed_opaque_existential_0(v20, v20[3]);
    v12 = *v10;
    v11 = v10[1];
    v13 = sub_25276CFF4();
    v15 = v14;
    __swift_destroy_boxed_opaque_existential_0Tm(v20);
    v16 = sub_2527389AC(v13, v15, &v19);

    *(v4 + 14) = v16;
    _os_log_impl(&dword_252711000, v2, v3, "HomeAppIntents: Performing %{public}s: %s", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2530A8D80](v5, -1, -1);
    MEMORY[0x2530A8D80](v4, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v21);
    __swift_destroy_boxed_opaque_existential_0Tm(v20);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v22);
}

uint64_t sub_2527BC198(_OWORD *a1)
{
  v22[3] = &type metadata for DeltaAttributeValueIntent;
  v22[4] = &off_286496D88;
  v2 = swift_allocObject();
  v22[0] = v2;
  v3 = a1[1];
  v2[1] = *a1;
  v2[2] = v3;
  v4 = a1[3];
  v2[3] = a1[2];
  v2[4] = v4;
  sub_25276E828(v22, v21);
  sub_25276E828(v22, v20);
  sub_25277AFA0(a1, v23);
  v5 = sub_2528C0890();
  v6 = sub_2528C0D10();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136446466;
    sub_25276E828(v21, v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD9F8, &qword_2528C95A8);
    v9 = sub_2528C0A10();
    v11 = v10;
    __swift_destroy_boxed_opaque_existential_0Tm(v21);
    v12 = sub_2527389AC(v9, v11, &v19);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2080;
    v13 = __swift_project_boxed_opaque_existential_0(v20, v20[3]);
    v23[0] = *v13;
    v23[1] = v13[1];
    v23[2] = v13[2];
    v23[3] = v13[3];
    v14 = sub_252776108();
    v16 = v15;
    __swift_destroy_boxed_opaque_existential_0Tm(v20);
    v17 = sub_2527389AC(v14, v16, &v19);

    *(v7 + 14) = v17;
    _os_log_impl(&dword_252711000, v5, v6, "HomeAppIntents: Performing %{public}s: %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2530A8D80](v8, -1, -1);
    MEMORY[0x2530A8D80](v7, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v21);
    __swift_destroy_boxed_opaque_existential_0Tm(v20);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v22);
}

uint64_t sub_2527BC3D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24[3] = &type metadata for ActivateSceneIntent;
  v24[4] = &off_2864972C0;
  v24[0] = a1;
  v24[1] = a2;
  v24[2] = a3;
  sub_25276E828(v24, v23);
  sub_25276E828(v24, v22);
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  v3 = sub_2528C0890();
  v4 = sub_2528C0D10();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v21 = v6;
    *v5 = 136446466;
    sub_25276E828(v23, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD9F8, &qword_2528C95A8);
    v7 = sub_2528C0A10();
    v9 = v8;
    __swift_destroy_boxed_opaque_existential_0Tm(v23);
    v10 = sub_2527389AC(v7, v9, &v21);

    *(v5 + 4) = v10;
    *(v5 + 12) = 2080;
    v11 = __swift_project_boxed_opaque_existential_0(v22, v22[3]);
    v13 = *v11;
    v12 = v11[1];
    v14 = v11[2];
    v15 = sub_2527B4D40();
    v17 = v16;
    __swift_destroy_boxed_opaque_existential_0Tm(v22);
    v18 = sub_2527389AC(v15, v17, &v21);

    *(v5 + 14) = v18;
    _os_log_impl(&dword_252711000, v3, v4, "HomeAppIntents: Performing %{public}s: %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2530A8D80](v6, -1, -1);
    MEMORY[0x2530A8D80](v5, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v23);
    __swift_destroy_boxed_opaque_existential_0Tm(v22);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v24);
}

uint64_t sub_2527BC5E4(uint64_t a1)
{
  v21[3] = &type metadata for AutomateAttributeValueIntent;
  v21[4] = &off_2864973A8;
  v2 = swift_allocObject();
  v21[0] = v2;
  v3 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(a1 + 32);
  *(v2 + 64) = *(a1 + 48);
  sub_25276E828(v21, v20);
  sub_25276E828(v21, v19);
  sub_2527C3DF8(a1, v22);
  v4 = sub_2528C0890();
  v5 = sub_2528C0D10();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136446466;
    sub_25276E828(v20, v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD9F8, &qword_2528C95A8);
    v8 = sub_2528C0A10();
    v10 = v9;
    __swift_destroy_boxed_opaque_existential_0Tm(v20);
    v11 = sub_2527389AC(v8, v10, &v18);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2080;
    v12 = __swift_project_boxed_opaque_existential_0(v19, v19[3]);
    v22[0] = *v12;
    v22[1] = *(v12 + 1);
    v22[2] = *(v12 + 2);
    v23 = v12[6];
    v13 = sub_2527BA640();
    v15 = v14;
    __swift_destroy_boxed_opaque_existential_0Tm(v19);
    v16 = sub_2527389AC(v13, v15, &v18);

    *(v6 + 14) = v16;
    _os_log_impl(&dword_252711000, v4, v5, "HomeAppIntents: Performing %{public}s: %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2530A8D80](v7, -1, -1);
    MEMORY[0x2530A8D80](v6, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v20);
    __swift_destroy_boxed_opaque_existential_0Tm(v19);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v21);
}

uint64_t sub_2527BC860(void *a1, const char *a2, uint64_t (*a3)(uint64_t), uint64_t a4, char *a5, uint64_t a6, uint64_t a7)
{
  v49 = a2;
  v50 = a5;
  v48 = a3;
  v47 = sub_2528C0830();
  v46 = *(v47 - 8);
  v10 = *(v46 + 64);
  MEMORY[0x28223BE20](v47);
  v45 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_2528C07F0();
  v12 = *(v51 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v51);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55[3] = a6;
  v55[4] = a7;
  v16 = swift_allocObject();
  v55[0] = v16;
  v18 = *a1;
  v17 = a1[1];
  v20 = a1[2];
  v19 = a1[3];
  v21 = a1[4];
  v22 = a1[5];
  v23 = *(a1 + 1);
  v16[1] = *a1;
  v16[2] = v23;
  v16[3] = *(a1 + 2);
  sub_25276E828(v55, v54);
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  v24 = sub_2528C0810();
  sub_2528C0840();
  v25 = sub_2528C0D30();

  if (sub_2528C0D90())
  {
    v50 = v15;
    v26 = v51;
    sub_2528BEA50();
    v27 = v45;
    sub_2528C0870();

    v28 = v46;
    v29 = v47;
    if ((*(v46 + 88))(v27, v47) == *MEMORY[0x277D85B00])
    {
      v30 = 0;
      v49 = "[Error] Interval already ended";
    }

    else
    {
      (*(v28 + 8))(v27, v29);
      v49 = "%s\n%s";
      v30 = 2;
    }

    v31 = v12;
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v53 = v33;
    *v32 = v30;
    *(v32 + 1) = v30;
    *(v32 + 2) = 2080;
    sub_25276E828(v54, v52);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD9F8, &qword_2528C95A8);
    v34 = sub_2528C0A10();
    v36 = v35;
    __swift_destroy_boxed_opaque_existential_0Tm(v54);
    v37 = sub_2527389AC(v34, v36, &v53);

    *(v32 + 4) = v37;
    *(v32 + 12) = 2080;
    v39 = v48(v38);
    v41 = sub_2527389AC(v39, v40, &v53);

    *(v32 + 14) = v41;
    v42 = v50;
    v43 = sub_2528C07D0();
    _os_signpost_emit_with_name_impl(&dword_252711000, v24, v25, v43, "HomeAppIntents", v49, v32, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2530A8D80](v33, -1, -1);
    MEMORY[0x2530A8D80](v32, -1, -1);

    (*(v31 + 8))(v42, v26);
  }

  else
  {

    (*(v12 + 8))(v15, v51);
    __swift_destroy_boxed_opaque_existential_0Tm(v54);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v55);
}

uint64_t sub_2527BCC8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v32 = a3;
  v4 = sub_2528C0830();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2528C07F0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36[3] = &type metadata for ToggleAttributeIntent;
  v36[4] = &off_286496B88;
  v14 = swift_allocObject();
  v36[0] = v14;
  v15 = *(a1 + 16);
  *(v14 + 16) = *a1;
  *(v14 + 32) = v15;
  *(v14 + 48) = *(a1 + 32);
  *(v14 + 64) = *(a1 + 48);
  sub_25276E828(v36, v35);
  sub_2527691BC(a1, v34);
  sub_2528BEA50();
  v16 = sub_2528C0810();
  sub_2528C0840();
  v31 = sub_2528C0D30();

  if (sub_2528C0D90())
  {
    sub_2528BEA50();
    sub_2528C0870();

    if ((*(v5 + 88))(v8, v4) == *MEMORY[0x277D85B00])
    {
      v17 = 0;
      v30 = "[Error] Interval already ended";
    }

    else
    {
      (*(v5 + 8))(v8, v4);
      v30 = "%s\n%s";
      v17 = 2;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v33 = v19;
    *v18 = v17;
    *(v18 + 1) = v17;
    *(v18 + 2) = 2080;
    sub_25276E828(v35, v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD9F8, &qword_2528C95A8);
    v20 = sub_2528C0A10();
    v22 = v21;
    __swift_destroy_boxed_opaque_existential_0Tm(v35);
    v23 = sub_2527389AC(v20, v22, &v33);

    *(v18 + 4) = v23;
    *(v18 + 12) = 2080;
    v25 = v32(v24);
    v27 = sub_2527389AC(v25, v26, &v33);

    *(v18 + 14) = v27;
    v28 = sub_2528C07D0();
    _os_signpost_emit_with_name_impl(&dword_252711000, v16, v31, v28, "HomeAppIntents", v30, v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2530A8D80](v19, -1, -1);
    MEMORY[0x2530A8D80](v18, -1, -1);

    (*(v10 + 8))(v13, v9);
  }

  else
  {

    (*(v10 + 8))(v13, v9);
    __swift_destroy_boxed_opaque_existential_0Tm(v35);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v36);
}

uint64_t sub_2527BD068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v34 = a4;
  v6 = sub_2528C0830();
  v32 = *(v6 - 8);
  v7 = *(v32 + 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2528C07F0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38[3] = &type metadata for GetDeviceInfoIntent;
  v38[4] = &off_286496CA8;
  v38[0] = a1;
  v38[1] = a2;
  sub_25276E828(v38, v37);
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  v15 = sub_2528C0810();
  sub_2528C0840();
  v33 = sub_2528C0D30();

  if (sub_2528C0D90())
  {
    v31 = v10;
    sub_2528BEA50();
    sub_2528C0870();

    v16 = v32;
    if ((*(v32 + 11))(v9, v6) == *MEMORY[0x277D85B00])
    {
      v17 = 0;
      v32 = "[Error] Interval already ended";
    }

    else
    {
      (*(v16 + 1))(v9, v6);
      v32 = "%s\n%s";
      v17 = 2;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v36 = v19;
    *v18 = v17;
    *(v18 + 1) = v17;
    *(v18 + 2) = 2080;
    sub_25276E828(v37, v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD9F8, &qword_2528C95A8);
    v20 = sub_2528C0A10();
    v22 = v21;
    __swift_destroy_boxed_opaque_existential_0Tm(v37);
    v23 = sub_2527389AC(v20, v22, &v36);

    *(v18 + 4) = v23;
    *(v18 + 12) = 2080;
    v25 = v34(v24);
    v27 = sub_2527389AC(v25, v26, &v36);

    *(v18 + 14) = v27;
    v28 = sub_2528C07D0();
    _os_signpost_emit_with_name_impl(&dword_252711000, v15, v33, v28, "HomeAppIntents", v32, v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2530A8D80](v19, -1, -1);
    MEMORY[0x2530A8D80](v18, -1, -1);

    (*(v11 + 8))(v14, v31);
  }

  else
  {

    (*(v11 + 8))(v14, v10);
    __swift_destroy_boxed_opaque_existential_0Tm(v37);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v38);
}

uint64_t sub_2527BD42C(_OWORD *a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v34 = a3;
  v4 = sub_2528C0830();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2528C07F0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38[3] = &type metadata for DeltaAttributeValueIntent;
  v38[4] = &off_286496D88;
  v14 = swift_allocObject();
  v38[0] = v14;
  v15 = a1[1];
  v14[1] = *a1;
  v14[2] = v15;
  v16 = a1[3];
  v14[3] = a1[2];
  v14[4] = v16;
  sub_25276E828(v38, v37);
  sub_25277AFA0(a1, v36);
  sub_2528BEA50();
  v17 = sub_2528C0810();
  sub_2528C0840();
  v33 = sub_2528C0D30();

  if (sub_2528C0D90())
  {
    sub_2528BEA50();
    sub_2528C0870();

    if ((*(v5 + 88))(v8, v4) == *MEMORY[0x277D85B00])
    {
      v18 = 0;
      v32 = "[Error] Interval already ended";
    }

    else
    {
      (*(v5 + 8))(v8, v4);
      v32 = "%s\n%s";
      v18 = 2;
    }

    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v35 = v20;
    *v19 = v18;
    *(v19 + 1) = v18;
    *(v19 + 2) = 2080;
    sub_25276E828(v37, v36);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD9F8, &qword_2528C95A8);
    v21 = sub_2528C0A10();
    v23 = v22;
    __swift_destroy_boxed_opaque_existential_0Tm(v37);
    v24 = sub_2527389AC(v21, v23, &v35);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2080;
    v26 = v34(v25);
    v28 = sub_2527389AC(v26, v27, &v35);

    *(v19 + 14) = v28;
    v29 = sub_2528C07D0();
    _os_signpost_emit_with_name_impl(&dword_252711000, v17, v33, v29, "HomeAppIntents", v32, v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2530A8D80](v20, -1, -1);
    MEMORY[0x2530A8D80](v19, -1, -1);

    (*(v10 + 8))(v13, v9);
  }

  else
  {

    (*(v10 + 8))(v13, v9);
    __swift_destroy_boxed_opaque_existential_0Tm(v37);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v38);
}

uint64_t sub_2527BD80C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v44 = a5;
  v10 = sub_2528C0830();
  v41 = *(v10 - 8);
  v42 = v10;
  v11 = *(v41 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2528C07F0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48[3] = &type metadata for ActivateSceneIntent;
  v48[4] = &off_2864972C0;
  v48[0] = a1;
  v48[1] = a2;
  v48[2] = a3;
  sub_25276E828(v48, v47);
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  v19 = sub_2528C0810();
  sub_2528C0840();
  v20 = sub_2528C0D30();
  v43 = a6;

  if (sub_2528C0D90())
  {
    v21 = v15;
    v40 = v14;
    sub_2528BEA50();
    sub_2528C0870();

    v23 = v41;
    v22 = v42;
    v24 = v20;
    if ((*(v41 + 88))(v13, v42) == *MEMORY[0x277D85B00])
    {
      v25 = 0;
      v26 = "[Error] Interval already ended";
    }

    else
    {
      (*(v23 + 8))(v13, v22);
      v26 = "%s\n%s";
      v25 = 2;
    }

    v27 = v21;
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v46 = v29;
    *v28 = v25;
    *(v28 + 1) = v25;
    *(v28 + 2) = 2080;
    sub_25276E828(v47, v45);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD9F8, &qword_2528C95A8);
    v30 = sub_2528C0A10();
    v32 = v31;
    __swift_destroy_boxed_opaque_existential_0Tm(v47);
    v33 = sub_2527389AC(v30, v32, &v46);

    *(v28 + 4) = v33;
    *(v28 + 12) = 2080;
    v35 = v44(v34);
    v37 = sub_2527389AC(v35, v36, &v46);

    *(v28 + 14) = v37;
    v38 = sub_2528C07D0();
    _os_signpost_emit_with_name_impl(&dword_252711000, v19, v24, v38, "HomeAppIntents", v26, v28, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2530A8D80](v29, -1, -1);
    MEMORY[0x2530A8D80](v28, -1, -1);

    (*(v27 + 8))(v18, v40);
  }

  else
  {

    (*(v15 + 8))(v18, v14);
    __swift_destroy_boxed_opaque_existential_0Tm(v47);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v48);
}

uint64_t sub_2527BDBD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v32 = a3;
  v4 = sub_2528C0830();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2528C07F0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36[3] = &type metadata for AutomateAttributeValueIntent;
  v36[4] = &off_2864973A8;
  v14 = swift_allocObject();
  v36[0] = v14;
  v15 = *(a1 + 16);
  *(v14 + 16) = *a1;
  *(v14 + 32) = v15;
  *(v14 + 48) = *(a1 + 32);
  *(v14 + 64) = *(a1 + 48);
  sub_25276E828(v36, v35);
  sub_2527C3DF8(a1, v34);
  sub_2528BEA50();
  v16 = sub_2528C0810();
  sub_2528C0840();
  v31 = sub_2528C0D30();

  if (sub_2528C0D90())
  {
    sub_2528BEA50();
    sub_2528C0870();

    if ((*(v5 + 88))(v8, v4) == *MEMORY[0x277D85B00])
    {
      v17 = 0;
      v30 = "[Error] Interval already ended";
    }

    else
    {
      (*(v5 + 8))(v8, v4);
      v30 = "%s\n%s";
      v17 = 2;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v33 = v19;
    *v18 = v17;
    *(v18 + 1) = v17;
    *(v18 + 2) = 2080;
    sub_25276E828(v35, v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD9F8, &qword_2528C95A8);
    v20 = sub_2528C0A10();
    v22 = v21;
    __swift_destroy_boxed_opaque_existential_0Tm(v35);
    v23 = sub_2527389AC(v20, v22, &v33);

    *(v18 + 4) = v23;
    *(v18 + 12) = 2080;
    v25 = v32(v24);
    v27 = sub_2527389AC(v25, v26, &v33);

    *(v18 + 14) = v27;
    v28 = sub_2528C07D0();
    _os_signpost_emit_with_name_impl(&dword_252711000, v16, v31, v28, "HomeAppIntents", v30, v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2530A8D80](v19, -1, -1);
    MEMORY[0x2530A8D80](v18, -1, -1);

    (*(v10 + 8))(v13, v9);
  }

  else
  {

    (*(v10 + 8))(v13, v9);
    __swift_destroy_boxed_opaque_existential_0Tm(v35);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v36);
}

uint64_t sub_2527BDFEC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25[3] = a3;
  v25[4] = a4;
  v5 = swift_allocObject();
  v25[0] = v5;
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  v10 = a1[4];
  v11 = a1[5];
  v12 = *(a1 + 1);
  v5[1] = *a1;
  v5[2] = v12;
  v5[3] = *(a1 + 2);
  sub_25276E828(v25, v24);
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  v13 = sub_2528C0890();
  v14 = sub_2528C0D10();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v23 = v16;
    *v15 = 136446210;
    sub_25276E828(v24, &v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD9F8, &qword_2528C95A8);
    v17 = sub_2528C0A10();
    v19 = v18;
    __swift_destroy_boxed_opaque_existential_0Tm(v24);
    v20 = sub_2527389AC(v17, v19, &v23);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_252711000, v13, v14, "HomeAppIntents: Finished performing %{public}s: success", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
    MEMORY[0x2530A8D80](v16, -1, -1);
    MEMORY[0x2530A8D80](v15, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v24);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v25);
}

uint64_t sub_2527BE1B4(uint64_t a1)
{
  v16[3] = &type metadata for ToggleAttributeIntent;
  v16[4] = &off_286496B88;
  v2 = swift_allocObject();
  v16[0] = v2;
  v3 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(a1 + 32);
  *(v2 + 64) = *(a1 + 48);
  sub_25276E828(v16, v15);
  sub_2527691BC(a1, v14);
  v4 = sub_2528C0890();
  v5 = sub_2528C0D10();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446210;
    sub_25276E828(v15, v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD9F8, &qword_2528C95A8);
    v8 = sub_2528C0A10();
    v10 = v9;
    __swift_destroy_boxed_opaque_existential_0Tm(v15);
    v11 = sub_2527389AC(v8, v10, &v13);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_252711000, v4, v5, "HomeAppIntents: Finished performing %{public}s: success", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x2530A8D80](v7, -1, -1);
    MEMORY[0x2530A8D80](v6, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v15);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v16);
}

uint64_t sub_2527BE360(uint64_t a1, uint64_t a2)
{
  v14[3] = &type metadata for GetDeviceInfoIntent;
  v14[4] = &off_286496CA8;
  v14[0] = a1;
  v14[1] = a2;
  sub_25276E828(v14, v13);
  sub_2528BEA50();
  sub_2528BEA50();
  v2 = sub_2528C0890();
  v3 = sub_2528C0D10();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136446210;
    sub_25276E828(v13, &v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD9F8, &qword_2528C95A8);
    v6 = sub_2528C0A10();
    v8 = v7;
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    v9 = sub_2527389AC(v6, v8, &v12);

    *(v4 + 4) = v9;
    _os_log_impl(&dword_252711000, v2, v3, "HomeAppIntents: Finished performing %{public}s: success", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
    MEMORY[0x2530A8D80](v5, -1, -1);
    MEMORY[0x2530A8D80](v4, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v13);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v14);
}

uint64_t sub_2527BE4E8(_OWORD *a1)
{
  v17[3] = &type metadata for DeltaAttributeValueIntent;
  v17[4] = &off_286496D88;
  v2 = swift_allocObject();
  v17[0] = v2;
  v3 = a1[1];
  v2[1] = *a1;
  v2[2] = v3;
  v4 = a1[3];
  v2[3] = a1[2];
  v2[4] = v4;
  sub_25276E828(v17, v16);
  sub_25277AFA0(a1, v15);
  v5 = sub_2528C0890();
  v6 = sub_2528C0D10();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136446210;
    sub_25276E828(v16, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD9F8, &qword_2528C95A8);
    v9 = sub_2528C0A10();
    v11 = v10;
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
    v12 = sub_2527389AC(v9, v11, &v14);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_252711000, v5, v6, "HomeAppIntents: Finished performing %{public}s: success", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x2530A8D80](v8, -1, -1);
    MEMORY[0x2530A8D80](v7, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v16);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v17);
}

uint64_t sub_2527BE68C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15[3] = &type metadata for ActivateSceneIntent;
  v15[4] = &off_2864972C0;
  v15[0] = a1;
  v15[1] = a2;
  v15[2] = a3;
  sub_25276E828(v15, v14);
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  v3 = sub_2528C0890();
  v4 = sub_2528C0D10();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136446210;
    sub_25276E828(v14, &v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD9F8, &qword_2528C95A8);
    v7 = sub_2528C0A10();
    v9 = v8;
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
    v10 = sub_2527389AC(v7, v9, &v13);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_252711000, v3, v4, "HomeAppIntents: Finished performing %{public}s: success", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x2530A8D80](v6, -1, -1);
    MEMORY[0x2530A8D80](v5, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v14);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v15);
}

uint64_t sub_2527BE824(uint64_t a1)
{
  v16[3] = &type metadata for AutomateAttributeValueIntent;
  v16[4] = &off_2864973A8;
  v2 = swift_allocObject();
  v16[0] = v2;
  v3 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(a1 + 32);
  *(v2 + 64) = *(a1 + 48);
  sub_25276E828(v16, v15);
  sub_2527C3DF8(a1, v14);
  v4 = sub_2528C0890();
  v5 = sub_2528C0D10();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446210;
    sub_25276E828(v15, v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD9F8, &qword_2528C95A8);
    v8 = sub_2528C0A10();
    v10 = v9;
    __swift_destroy_boxed_opaque_existential_0Tm(v15);
    v11 = sub_2527389AC(v8, v10, &v13);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_252711000, v4, v5, "HomeAppIntents: Finished performing %{public}s: success", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x2530A8D80](v7, -1, -1);
    MEMORY[0x2530A8D80](v6, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v15);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v16);
}

uint64_t sub_2527BEA08(void *a1, const char *a2, void *a3, char *a4, uint64_t a5, uint64_t a6)
{
  v51 = a2;
  v52 = a4;
  v10 = sub_2528C0830();
  v49 = *(v10 - 8);
  v50 = v10;
  v11 = *(v49 + 64);
  MEMORY[0x28223BE20](v10);
  v48 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_2528C07F0();
  v13 = *(v53 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v53);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57[3] = a5;
  v57[4] = a6;
  v17 = swift_allocObject();
  v57[0] = v17;
  v19 = *a1;
  v18 = a1[1];
  v21 = a1[2];
  v20 = a1[3];
  v22 = a1[4];
  v23 = a1[5];
  v24 = *(a1 + 1);
  v17[1] = *a1;
  v17[2] = v24;
  v17[3] = *(a1 + 2);
  sub_25276E828(v57, v56);
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  v25 = a3;
  v26 = sub_2528C0810();
  sub_2528C0840();
  v27 = sub_2528C0D30();
  v28 = a3;

  if (sub_2528C0D90())
  {
    v52 = v16;
    v29 = v53;
    sub_2528BEA50();
    v30 = v48;
    sub_2528C0870();

    v32 = v49;
    v31 = v50;
    if ((*(v49 + 88))(v30, v50) == *MEMORY[0x277D85B00])
    {
      v33 = 0;
      v51 = "[Error] Interval already ended";
    }

    else
    {
      (*(v32 + 8))(v30, v31);
      v51 = "%s\n failed with error: %@";
      v33 = 2;
    }

    v34 = v13;
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v55 = v37;
    *v35 = v33;
    *(v35 + 1) = v33;
    *(v35 + 2) = 2080;
    sub_25276E828(v56, v54);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD9F8, &qword_2528C95A8);
    v38 = sub_2528C0A10();
    v40 = v39;
    __swift_destroy_boxed_opaque_existential_0Tm(v56);
    v41 = sub_2527389AC(v38, v40, &v55);

    *(v35 + 4) = v41;
    *(v35 + 12) = 2112;
    v42 = v28;
    v43 = _swift_stdlib_bridgeErrorToNSError();
    *(v35 + 14) = v43;
    *v36 = v43;
    v44 = v52;
    v45 = sub_2528C07D0();
    _os_signpost_emit_with_name_impl(&dword_252711000, v26, v27, v45, "HomeAppIntents", v51, v35, 0x16u);
    sub_2527213D8(v36, &qword_27F4FC230, &qword_2528C3928);
    MEMORY[0x2530A8D80](v36, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v37);
    MEMORY[0x2530A8D80](v37, -1, -1);
    MEMORY[0x2530A8D80](v35, -1, -1);

    (*(v34 + 8))(v44, v29);
  }

  else
  {

    (*(v13 + 8))(v16, v53);
    __swift_destroy_boxed_opaque_existential_0Tm(v56);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v57);
}

uint64_t sub_2527BEE38(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_2528C0830();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2528C07F0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37[3] = &type metadata for ToggleAttributeIntent;
  v37[4] = &off_286496B88;
  v15 = swift_allocObject();
  v37[0] = v15;
  v16 = *(a1 + 16);
  *(v15 + 16) = *a1;
  *(v15 + 32) = v16;
  *(v15 + 48) = *(a1 + 32);
  *(v15 + 64) = *(a1 + 48);
  sub_25276E828(v37, v36);
  sub_2527691BC(a1, v35);
  v17 = a3;
  v18 = sub_2528C0810();
  sub_2528C0840();
  v33 = sub_2528C0D30();

  if (sub_2528C0D90())
  {
    sub_2528BEA50();
    sub_2528C0870();

    if ((*(v6 + 88))(v9, v5) == *MEMORY[0x277D85B00])
    {
      v19 = 0;
      v32 = "[Error] Interval already ended";
    }

    else
    {
      (*(v6 + 8))(v9, v5);
      v32 = "%s\n failed with error: %@";
      v19 = 2;
    }

    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v34 = v22;
    *v20 = v19;
    *(v20 + 1) = v19;
    *(v20 + 2) = 2080;
    sub_25276E828(v36, v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD9F8, &qword_2528C95A8);
    v23 = sub_2528C0A10();
    v25 = v24;
    __swift_destroy_boxed_opaque_existential_0Tm(v36);
    v26 = sub_2527389AC(v23, v25, &v34);

    *(v20 + 4) = v26;
    *(v20 + 12) = 2112;
    v27 = a3;
    v28 = _swift_stdlib_bridgeErrorToNSError();
    *(v20 + 14) = v28;
    *v21 = v28;
    v29 = sub_2528C07D0();
    _os_signpost_emit_with_name_impl(&dword_252711000, v18, v33, v29, "HomeAppIntents", v32, v20, 0x16u);
    sub_2527213D8(v21, &qword_27F4FC230, &qword_2528C3928);
    MEMORY[0x2530A8D80](v21, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v22);
    MEMORY[0x2530A8D80](v22, -1, -1);
    MEMORY[0x2530A8D80](v20, -1, -1);

    (*(v11 + 8))(v14, v10);
  }

  else
  {

    (*(v11 + 8))(v14, v10);
    __swift_destroy_boxed_opaque_existential_0Tm(v36);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v37);
}

uint64_t sub_2527BF228(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_2528C0830();
  v34 = *(v7 - 8);
  v8 = *(v34 + 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2528C07F0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38[3] = &type metadata for GetDeviceInfoIntent;
  v38[4] = &off_286496CA8;
  v38[0] = a1;
  v38[1] = a2;
  sub_25276E828(v38, v37);
  sub_2528BEA50();
  sub_2528BEA50();
  v16 = a4;
  v17 = sub_2528C0810();
  sub_2528C0840();
  v18 = sub_2528C0D30();

  if (sub_2528C0D90())
  {
    v33 = v11;
    sub_2528BEA50();
    sub_2528C0870();

    v19 = v34;
    if ((*(v34 + 11))(v10, v7) == *MEMORY[0x277D85B00])
    {
      v20 = 0;
      v34 = "[Error] Interval already ended";
    }

    else
    {
      (*(v19 + 1))(v10, v7);
      v34 = "%s\n failed with error: %@";
      v20 = 2;
    }

    v21 = v12;
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v36 = v24;
    *v22 = v20;
    *(v22 + 1) = v20;
    *(v22 + 2) = 2080;
    sub_25276E828(v37, v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD9F8, &qword_2528C95A8);
    v25 = sub_2528C0A10();
    v27 = v26;
    __swift_destroy_boxed_opaque_existential_0Tm(v37);
    v28 = sub_2527389AC(v25, v27, &v36);

    *(v22 + 4) = v28;
    *(v22 + 12) = 2112;
    v29 = a4;
    v30 = _swift_stdlib_bridgeErrorToNSError();
    *(v22 + 14) = v30;
    *v23 = v30;
    v31 = sub_2528C07D0();
    _os_signpost_emit_with_name_impl(&dword_252711000, v17, v18, v31, "HomeAppIntents", v34, v22, 0x16u);
    sub_2527213D8(v23, &qword_27F4FC230, &qword_2528C3928);
    MEMORY[0x2530A8D80](v23, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v24);
    MEMORY[0x2530A8D80](v24, -1, -1);
    MEMORY[0x2530A8D80](v22, -1, -1);

    (*(v21 + 8))(v15, v33);
  }

  else
  {

    (*(v12 + 8))(v15, v11);
    __swift_destroy_boxed_opaque_existential_0Tm(v37);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v38);
}

uint64_t sub_2527BF5FC(_OWORD *a1, uint64_t a2, void *a3)
{
  v5 = sub_2528C0830();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2528C07F0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37[3] = &type metadata for DeltaAttributeValueIntent;
  v37[4] = &off_286496D88;
  v15 = swift_allocObject();
  v37[0] = v15;
  v16 = a1[1];
  v15[1] = *a1;
  v15[2] = v16;
  v17 = a1[3];
  v15[3] = a1[2];
  v15[4] = v17;
  sub_25276E828(v37, v36);
  sub_25277AFA0(a1, v35);
  v18 = a3;
  v19 = sub_2528C0810();
  sub_2528C0840();
  v33 = sub_2528C0D30();

  if (sub_2528C0D90())
  {
    sub_2528BEA50();
    sub_2528C0870();

    if ((*(v6 + 88))(v9, v5) == *MEMORY[0x277D85B00])
    {
      v20 = 0;
      v32 = "[Error] Interval already ended";
    }

    else
    {
      (*(v6 + 8))(v9, v5);
      v32 = "%s\n failed with error: %@";
      v20 = 2;
    }

    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v34 = v23;
    *v21 = v20;
    *(v21 + 1) = v20;
    *(v21 + 2) = 2080;
    sub_25276E828(v36, v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD9F8, &qword_2528C95A8);
    v24 = sub_2528C0A10();
    v26 = v25;
    __swift_destroy_boxed_opaque_existential_0Tm(v36);
    v27 = sub_2527389AC(v24, v26, &v34);

    *(v21 + 4) = v27;
    *(v21 + 12) = 2112;
    v28 = a3;
    v29 = _swift_stdlib_bridgeErrorToNSError();
    *(v21 + 14) = v29;
    *v22 = v29;
    v30 = sub_2528C07D0();
    _os_signpost_emit_with_name_impl(&dword_252711000, v19, v33, v30, "HomeAppIntents", v32, v21, 0x16u);
    sub_2527213D8(v22, &qword_27F4FC230, &qword_2528C3928);
    MEMORY[0x2530A8D80](v22, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v23);
    MEMORY[0x2530A8D80](v23, -1, -1);
    MEMORY[0x2530A8D80](v21, -1, -1);

    (*(v11 + 8))(v14, v10);
  }

  else
  {

    (*(v11 + 8))(v14, v10);
    __swift_destroy_boxed_opaque_existential_0Tm(v36);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v37);
}

uint64_t sub_2527BF9E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = sub_2528C0830();
  v41 = *(v9 - 1);
  v42 = v9;
  v10 = *(v41 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2528C07F0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46[3] = &type metadata for ActivateSceneIntent;
  v46[4] = &off_2864972C0;
  v46[0] = a1;
  v46[1] = a2;
  v46[2] = a3;
  sub_25276E828(v46, v45);
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  v18 = a5;
  v19 = sub_2528C0810();
  sub_2528C0840();
  v20 = sub_2528C0D30();
  v21 = a5;

  if (sub_2528C0D90())
  {
    v39 = v14;
    v40 = v13;
    sub_2528BEA50();
    sub_2528C0870();

    v23 = v41;
    v22 = v42;
    v24 = v20;
    if ((*(v41 + 88))(v12, v42) == *MEMORY[0x277D85B00])
    {
      v25 = 0;
      v42 = "[Error] Interval already ended";
    }

    else
    {
      (*(v23 + 8))(v12, v22);
      v42 = "%s\n failed with error: %@";
      v25 = 2;
    }

    v26 = v17;
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v44 = v29;
    *v27 = v25;
    *(v27 + 1) = v25;
    *(v27 + 2) = 2080;
    sub_25276E828(v45, v43);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD9F8, &qword_2528C95A8);
    v30 = sub_2528C0A10();
    v32 = v31;
    __swift_destroy_boxed_opaque_existential_0Tm(v45);
    v33 = sub_2527389AC(v30, v32, &v44);

    *(v27 + 4) = v33;
    *(v27 + 12) = 2112;
    v34 = v21;
    v35 = _swift_stdlib_bridgeErrorToNSError();
    *(v27 + 14) = v35;
    *v28 = v35;
    v36 = sub_2528C07D0();
    _os_signpost_emit_with_name_impl(&dword_252711000, v19, v24, v36, "HomeAppIntents", v42, v27, 0x16u);
    sub_2527213D8(v28, &qword_27F4FC230, &qword_2528C3928);
    MEMORY[0x2530A8D80](v28, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v29);
    MEMORY[0x2530A8D80](v29, -1, -1);
    MEMORY[0x2530A8D80](v27, -1, -1);

    (*(v39 + 8))(v26, v40);
  }

  else
  {

    (*(v14 + 8))(v17, v13);
    __swift_destroy_boxed_opaque_existential_0Tm(v45);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v46);
}

uint64_t sub_2527BFDCC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_2528C0830();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2528C07F0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37[3] = &type metadata for AutomateAttributeValueIntent;
  v37[4] = &off_2864973A8;
  v15 = swift_allocObject();
  v37[0] = v15;
  v16 = *(a1 + 16);
  *(v15 + 16) = *a1;
  *(v15 + 32) = v16;
  *(v15 + 48) = *(a1 + 32);
  *(v15 + 64) = *(a1 + 48);
  sub_25276E828(v37, v36);
  sub_2527C3DF8(a1, v35);
  v17 = a3;
  v18 = sub_2528C0810();
  sub_2528C0840();
  v33 = sub_2528C0D30();

  if (sub_2528C0D90())
  {
    sub_2528BEA50();
    sub_2528C0870();

    if ((*(v6 + 88))(v9, v5) == *MEMORY[0x277D85B00])
    {
      v19 = 0;
      v32 = "[Error] Interval already ended";
    }

    else
    {
      (*(v6 + 8))(v9, v5);
      v32 = "%s\n failed with error: %@";
      v19 = 2;
    }

    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v34 = v22;
    *v20 = v19;
    *(v20 + 1) = v19;
    *(v20 + 2) = 2080;
    sub_25276E828(v36, v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD9F8, &qword_2528C95A8);
    v23 = sub_2528C0A10();
    v25 = v24;
    __swift_destroy_boxed_opaque_existential_0Tm(v36);
    v26 = sub_2527389AC(v23, v25, &v34);

    *(v20 + 4) = v26;
    *(v20 + 12) = 2112;
    v27 = a3;
    v28 = _swift_stdlib_bridgeErrorToNSError();
    *(v20 + 14) = v28;
    *v21 = v28;
    v29 = sub_2528C07D0();
    _os_signpost_emit_with_name_impl(&dword_252711000, v18, v33, v29, "HomeAppIntents", v32, v20, 0x16u);
    sub_2527213D8(v21, &qword_27F4FC230, &qword_2528C3928);
    MEMORY[0x2530A8D80](v21, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v22);
    MEMORY[0x2530A8D80](v22, -1, -1);
    MEMORY[0x2530A8D80](v20, -1, -1);

    (*(v11 + 8))(v14, v10);
  }

  else
  {

    (*(v11 + 8))(v14, v10);
    __swift_destroy_boxed_opaque_existential_0Tm(v36);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v37);
}

uint64_t sub_2527C01F4(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31[3] = a4;
  v31[4] = a5;
  v7 = swift_allocObject();
  v31[0] = v7;
  v8 = *a1;
  v9 = a1[1];
  v10 = a1[2];
  v11 = a1[3];
  v12 = a1[4];
  v13 = a1[5];
  v14 = *(a1 + 1);
  v7[1] = *a1;
  v7[2] = v14;
  v7[3] = *(a1 + 2);
  sub_25276E828(v31, v30);
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  v15 = a2;
  v16 = sub_2528C0890();
  v17 = sub_2528C0D10();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v29 = v20;
    *v18 = 136446466;
    sub_25276E828(v30, &v28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD9F8, &qword_2528C95A8);
    v21 = sub_2528C0A10();
    v23 = v22;
    __swift_destroy_boxed_opaque_existential_0Tm(v30);
    v24 = sub_2527389AC(v21, v23, &v29);

    *(v18 + 4) = v24;
    *(v18 + 12) = 2112;
    v25 = a2;
    v26 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 14) = v26;
    *v19 = v26;
    _os_log_impl(&dword_252711000, v16, v17, "HomeAppIntents: Finished performing %{public}s: failed with error %@", v18, 0x16u);
    sub_2527213D8(v19, &qword_27F4FC230, &qword_2528C3928);
    MEMORY[0x2530A8D80](v19, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v20);
    MEMORY[0x2530A8D80](v20, -1, -1);
    MEMORY[0x2530A8D80](v18, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v30);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v31);
}

uint64_t sub_2527C0430(uint64_t a1, void *a2)
{
  v22[3] = &type metadata for ToggleAttributeIntent;
  v22[4] = &off_286496B88;
  v4 = swift_allocObject();
  v22[0] = v4;
  v5 = *(a1 + 16);
  *(v4 + 16) = *a1;
  *(v4 + 32) = v5;
  *(v4 + 48) = *(a1 + 32);
  *(v4 + 64) = *(a1 + 48);
  sub_25276E828(v22, v21);
  sub_2527691BC(a1, v20);
  v6 = a2;
  v7 = sub_2528C0890();
  v8 = sub_2528C0D10();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v9 = 136446466;
    sub_25276E828(v21, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD9F8, &qword_2528C95A8);
    v12 = sub_2528C0A10();
    v14 = v13;
    __swift_destroy_boxed_opaque_existential_0Tm(v21);
    v15 = sub_2527389AC(v12, v14, &v19);

    *(v9 + 4) = v15;
    *(v9 + 12) = 2112;
    v16 = a2;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v17;
    *v10 = v17;
    _os_log_impl(&dword_252711000, v7, v8, "HomeAppIntents: Finished performing %{public}s: failed with error %@", v9, 0x16u);
    sub_2527213D8(v10, &qword_27F4FC230, &qword_2528C3928);
    MEMORY[0x2530A8D80](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    MEMORY[0x2530A8D80](v11, -1, -1);
    MEMORY[0x2530A8D80](v9, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v21);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v22);
}

uint64_t sub_2527C0650(uint64_t a1, uint64_t a2, void *a3)
{
  v20[3] = &type metadata for GetDeviceInfoIntent;
  v20[4] = &off_286496CA8;
  v20[0] = a1;
  v20[1] = a2;
  sub_25276E828(v20, v19);
  sub_2528BEA50();
  sub_2528BEA50();
  v4 = a3;
  v5 = sub_2528C0890();
  v6 = sub_2528C0D10();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v7 = 136446466;
    sub_25276E828(v19, &v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD9F8, &qword_2528C95A8);
    v10 = sub_2528C0A10();
    v12 = v11;
    __swift_destroy_boxed_opaque_existential_0Tm(v19);
    v13 = sub_2527389AC(v10, v12, &v18);

    *(v7 + 4) = v13;
    *(v7 + 12) = 2112;
    v14 = a3;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v15;
    *v8 = v15;
    _os_log_impl(&dword_252711000, v5, v6, "HomeAppIntents: Finished performing %{public}s: failed with error %@", v7, 0x16u);
    sub_2527213D8(v8, &qword_27F4FC230, &qword_2528C3928);
    MEMORY[0x2530A8D80](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x2530A8D80](v9, -1, -1);
    MEMORY[0x2530A8D80](v7, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v19);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v20);
}

uint64_t sub_2527C084C(_OWORD *a1, void *a2)
{
  v23[3] = &type metadata for DeltaAttributeValueIntent;
  v23[4] = &off_286496D88;
  v4 = swift_allocObject();
  v23[0] = v4;
  v5 = a1[1];
  v4[1] = *a1;
  v4[2] = v5;
  v6 = a1[3];
  v4[3] = a1[2];
  v4[4] = v6;
  sub_25276E828(v23, v22);
  sub_25277AFA0(a1, v21);
  v7 = a2;
  v8 = sub_2528C0890();
  v9 = sub_2528C0D10();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v10 = 136446466;
    sub_25276E828(v22, v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD9F8, &qword_2528C95A8);
    v13 = sub_2528C0A10();
    v15 = v14;
    __swift_destroy_boxed_opaque_existential_0Tm(v22);
    v16 = sub_2527389AC(v13, v15, &v20);

    *(v10 + 4) = v16;
    *(v10 + 12) = 2112;
    v17 = a2;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v18;
    *v11 = v18;
    _os_log_impl(&dword_252711000, v8, v9, "HomeAppIntents: Finished performing %{public}s: failed with error %@", v10, 0x16u);
    sub_2527213D8(v11, &qword_27F4FC230, &qword_2528C3928);
    MEMORY[0x2530A8D80](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x2530A8D80](v12, -1, -1);
    MEMORY[0x2530A8D80](v10, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v22);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v23);
}

uint64_t sub_2527C0A64(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v21[0] = a1;
  v21[3] = &type metadata for ActivateSceneIntent;
  v21[4] = &off_2864972C0;
  v21[1] = a2;
  v21[2] = a3;
  sub_25276E828(v21, v20);
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  v5 = a4;
  v6 = sub_2528C0890();
  v7 = sub_2528C0D10();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v8 = 136446466;
    sub_25276E828(v20, &v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD9F8, &qword_2528C95A8);
    v11 = sub_2528C0A10();
    v13 = v12;
    __swift_destroy_boxed_opaque_existential_0Tm(v20);
    v14 = sub_2527389AC(v11, v13, &v19);

    *(v8 + 4) = v14;
    *(v8 + 12) = 2112;
    v15 = a4;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v16;
    *v9 = v16;
    _os_log_impl(&dword_252711000, v6, v7, "HomeAppIntents: Finished performing %{public}s: failed with error %@", v8, 0x16u);
    sub_2527213D8(v9, &qword_27F4FC230, &qword_2528C3928);
    MEMORY[0x2530A8D80](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x2530A8D80](v10, -1, -1);
    MEMORY[0x2530A8D80](v8, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v20);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v21);
}

uint64_t sub_2527C0C70(uint64_t a1, void *a2)
{
  v22[3] = &type metadata for AutomateAttributeValueIntent;
  v22[4] = &off_2864973A8;
  v4 = swift_allocObject();
  v22[0] = v4;
  v5 = *(a1 + 16);
  *(v4 + 16) = *a1;
  *(v4 + 32) = v5;
  *(v4 + 48) = *(a1 + 32);
  *(v4 + 64) = *(a1 + 48);
  sub_25276E828(v22, v21);
  sub_2527C3DF8(a1, v20);
  v6 = a2;
  v7 = sub_2528C0890();
  v8 = sub_2528C0D10();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v9 = 136446466;
    sub_25276E828(v21, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD9F8, &qword_2528C95A8);
    v12 = sub_2528C0A10();
    v14 = v13;
    __swift_destroy_boxed_opaque_existential_0Tm(v21);
    v15 = sub_2527389AC(v12, v14, &v19);

    *(v9 + 4) = v15;
    *(v9 + 12) = 2112;
    v16 = a2;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v17;
    *v10 = v17;
    _os_log_impl(&dword_252711000, v7, v8, "HomeAppIntents: Finished performing %{public}s: failed with error %@", v9, 0x16u);
    sub_2527213D8(v10, &qword_27F4FC230, &qword_2528C3928);
    MEMORY[0x2530A8D80](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    MEMORY[0x2530A8D80](v11, -1, -1);
    MEMORY[0x2530A8D80](v9, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v21);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v22);
}

uint64_t sub_2527C0E90@<X0>(uint64_t *a1@<X8>)
{
  v71 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD9B8, &unk_2528D3400);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v70 = v62 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD9C0, &qword_2528C9570);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v69 = v62 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v65 = v62 - v9;
  v80 = sub_2528BE950();
  v10 = *(v80 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v80);
  v13 = v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCC80, &unk_2528C6080);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v75 = v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = v62 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC130, &unk_2528C6A80);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = v62 - v22;
  v24 = sub_2528BEC40();
  v78 = v24;
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = v62 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCE30, &unk_2528C6090);
  sub_2528BEC20();
  v29 = *(v25 + 56);
  v82 = v25 + 56;
  v83 = v29;
  v29(v23, 1, 1, v24);
  v30 = sub_2528BE630();
  v31 = *(v30 - 8);
  v32 = *(v31 + 56);
  v33 = v31 + 56;
  v32(v19, 1, 1, v30);
  v76 = *MEMORY[0x277CBA308];
  v84 = *(v10 + 104);
  v34 = v80;
  v84(v13);
  v73 = v10 + 104;
  sub_2527604A4();
  v72 = v28;
  v77 = v23;
  v68 = sub_2528BE7C0();
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCCD8, &qword_2528C5B68);
  sub_2528BEC20();
  v35 = v23;
  v36 = v78;
  v83(v35, 1, 1, v78);
  v87 = 0;
  v37 = v19;
  v81 = v33;
  v32(v19, 1, 1, v30);
  v38 = v75;
  v32(v75, 1, 1, v30);
  v39 = v13;
  (v84)(v13, v76, v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCCE0, &unk_2528C5B70);
  v66 = MEMORY[0x277CBA480];
  sub_25272275C(&qword_27F4FCCE8, &qword_27F4FCCE0, &unk_2528C5B70);
  sub_2527C3FAC(&qword_27F4FC3B8, type metadata accessor for DeviceEntity);
  v40 = v77;
  v67 = sub_2528BE7E0();
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCC88, &unk_2528C5B40);
  sub_2528BEC20();
  v83(v40, 1, 1, v36);
  v41 = type metadata accessor for HomeEntity(0);
  (*(*(v41 - 8) + 56))(v65, 1, 1, v41);
  v79 = v32;
  v32(v37, 1, 1, v30);
  v32(v38, 1, 1, v30);
  v42 = v76;
  v43 = v80;
  (v84)(v39, v76, v80);
  sub_2527C3FAC(&qword_27F4FCC90, type metadata accessor for HomeEntity);
  v44 = v77;
  v65 = sub_2528BE7F0();
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCCB8, &unk_2528C60B0);
  sub_2528BEC20();
  v83(v44, 1, 1, v78);
  v85 = 0;
  v74 = v30;
  v45 = v79;
  v79(v37, 1, 1, v30);
  v45(v75, 1, 1, v30);
  v46 = v84;
  (v84)(v39, v42, v43);
  sub_2527C3FAC(&qword_27F4FCCD0, type metadata accessor for RoomEntity);
  v47 = v77;
  v64 = sub_2528BE7F0();
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD9C8, &qword_2528C9578);
  sub_2528BEC20();
  v48 = v78;
  v49 = v83;
  v83(v47, 1, 1, v78);
  v79(v37, 1, 1, v74);
  v50 = v76;
  (v46)(v39, v76, v80);
  sub_2527C3FAC(&qword_27F4FD9A0, type metadata accessor for TriggerEventType);
  v63 = sub_2528BE7C0();
  v62[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD9D0, &qword_2528C9580);
  sub_2528BEC20();
  v49(v47, 1, 1, v48);
  v51 = type metadata accessor for TriggerRecurrenceWeekdaysEntity(0);
  (*(*(v51 - 8) + 56))(v69, 1, 1, v51);
  v52 = v74;
  v53 = v79;
  v79(v37, 1, 1, v74);
  v53(v75, 1, 1, v52);
  v54 = v80;
  (v84)(v39, v50, v80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD9D8, &qword_2528C9588);
  sub_25272275C(&qword_27F4FD9E0, &qword_27F4FD9D8, &qword_2528C9588);
  sub_2527C3FAC(&qword_27F4FBD40, type metadata accessor for TriggerRecurrenceWeekdaysEntity);
  v55 = v77;
  v56 = sub_2528BE7E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD9E8, &qword_2528C9590);
  sub_2528BEC20();
  v83(v55, 1, 1, v78);
  v57 = sub_2528C0940();
  v85 = 0;
  v86 = 0;
  (*(*(v57 - 8) + 56))(v70, 1, 1, v57);
  v79(v37, 1, 1, v74);
  (v84)(v39, v50, v54);
  result = sub_2528BE800();
  v59 = v71;
  v60 = v67;
  *v71 = v68;
  v59[1] = v60;
  v61 = v64;
  v59[2] = v65;
  v59[3] = v61;
  v59[4] = v63;
  v59[5] = v56;
  v59[6] = result;
  return result;
}

uint64_t sub_2527C1AE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned __int8 *a5@<X4>, uint64_t *a6@<X8>)
{
  v58 = a3;
  v60 = a1;
  v61 = a2;
  v63 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD988, &qword_2528C9540);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v62 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v59 = &v48 - v13;
  v14 = sub_2528BEC40();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v48 = sub_2528BECF0();
  v16 = *(v48 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v48);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2528BEE30();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v48 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v48 - v26;
  v28 = type metadata accessor for TriggerEventType(0);
  v55 = *(v28 - 8);
  v56 = v28;
  v29 = *(v55 + 64);
  MEMORY[0x28223BE20](v28);
  v49 = &v48 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = *a5;
  v52 = type metadata accessor for TriggerEventType;
  sub_2527C3E7C(a3, v49, type metadata accessor for TriggerEventType);
  v31 = a4;
  sub_2528BF2F0();
  v32 = sub_2528BEE20();
  v53 = v33;
  v54 = v32;
  v34 = *(v21 + 8);
  v34(v27, v20);
  sub_2528BF2F0();
  sub_2528BEE00();
  v34(v25, v20);
  v35 = sub_2528BECB0();
  v50 = v36;
  v51 = v35;
  (*(v16 + 8))(v19, v48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD990, &unk_2528C9548);
  sub_2528BEC20();
  v37 = sub_2528BE730();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC458, &unk_2528C3F40);
  v48 = v37;
  sub_2528BEA50();
  sub_2528BEC20();
  v38 = sub_2528BE730();
  sub_2528BEA50();
  sub_2528BEC20();
  v39 = sub_2528BE730();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD998, &qword_2528C9558);
  sub_2528BEA50();
  sub_2528BEC20();
  sub_2527C3FAC(&qword_27F4FD9A0, type metadata accessor for TriggerEventType);
  v40 = sub_2528BE700();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD9A8, &unk_2528C9560);
  sub_2528BEA50();
  sub_2528BEC20();
  sub_2527C3CE4();
  v41 = sub_2528BE700();
  v64 = v60;
  v65 = v61;
  sub_2528BEA50();
  sub_2528BE6C0();
  v42 = v49;
  v43 = v59;
  sub_2527C3E7C(v49, v59, v52);
  (*(v55 + 56))(v43, 0, 1, v56);
  sub_25272006C(v43, v62, &qword_27F4FD988, &qword_2528C9540);
  sub_2528BE6C0();
  sub_2527213D8(v43, &qword_27F4FD988, &qword_2528C9540);
  v64 = v54;
  v65 = v53;
  sub_2528BE6C0();
  v64 = v51;
  v65 = v50;
  sub_2528BE6C0();
  LOBYTE(v64) = v57;
  sub_2528BE6C0();
  v44 = sub_2528BF400();
  (*(*(v44 - 8) + 8))(v31, v44);
  sub_2527C3F4C(v58, type metadata accessor for TriggerEventType);
  sub_2527C3F4C(v42, type metadata accessor for TriggerEventType);

  v45 = v48;

  v47 = v63;
  *v63 = v45;
  v47[1] = v38;
  v47[2] = v39;
  v47[3] = v40;
  v47[4] = v41;
  return result;
}

uint64_t sub_2527C2134(uint64_t a1)
{
  v2 = sub_2528C07B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v5);
  v10 = &v17 - v9;
  v11 = *(a1 + 16);
  if (v11)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v7, v15, v2);
      sub_25273A60C(v10, v7);
      result = (*(v12 - 8))(v10, v2);
      v15 += v16;
      --v11;
    }

    while (v11);
  }

  return result;
}

uint64_t sub_2527C227C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v197 = a3;
  v207 = a2;
  v176 = sub_2528BF290();
  v210 = *(v176 - 8);
  v4 = *(v210 + 64);
  MEMORY[0x28223BE20](v176);
  v175 = &v158 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD658, &qword_2528D35A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v172 = &v158 - v8;
  v174 = sub_2528BFC70();
  v9 = *(v174 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v174);
  v173 = &v158 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDB8, &unk_2528C5CC0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v196 = &v158 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCEF0, &unk_2528C6AB0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v195 = &v158 - v17;
  v202 = sub_2528BFB20();
  v18 = *(v202 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v202);
  v171 = &v158 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = sub_2528BFF90();
  v21 = *(v185 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v185);
  v164 = &v158 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v158 - v25;
  v27 = sub_2528BECF0();
  v208 = *(v27 - 8);
  v209 = v27;
  v28 = *(v208 + 64);
  v29 = MEMORY[0x28223BE20](v27);
  v188 = &v158 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v200 = &v158 - v32;
  MEMORY[0x28223BE20](v31);
  v34 = &v158 - v33;
  v183 = sub_2528BF9D0();
  v35 = *(v183 - 8);
  v36 = *(v35 + 64);
  v37 = MEMORY[0x28223BE20](v183);
  v180 = &v158 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v182 = &v158 - v39;
  v40 = type metadata accessor for DeviceEntity();
  v190 = *(v40 - 8);
  v41 = *(v190 + 64);
  v42 = MEMORY[0x28223BE20](v40 - 8);
  v194 = &v158 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x28223BE20](v42);
  v204 = &v158 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v48 = &v158 - v47;
  MEMORY[0x28223BE20](v46);
  v189 = &v158 - v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCE40, &qword_2528C61C0);
  v51 = *(*(v50 - 8) + 64);
  v52 = MEMORY[0x28223BE20](v50 - 8);
  v203 = &v158 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52);
  v201 = &v158 - v54;
  v56 = a1 + 64;
  v55 = *(a1 + 64);
  v57 = 1 << *(a1 + 32);
  v58 = -1;
  v213 = MEMORY[0x277D84FA0];
  if (v57 < 64)
  {
    v58 = ~(-1 << v57);
  }

  v59 = v58 & v55;
  v184 = (v57 + 63) >> 6;
  v178 = v35 + 16;
  v208 += 8;
  v177 = v35 + 32;
  v181 = v35;
  v179 = (v35 + 8);
  v162 = v21 + 16;
  v161 = v21 + 32;
  v165 = v21;
  v163 = (v21 + 8);
  v187 = (v18 + 48);
  v170 = (v18 + 32);
  v169 = (v210 + 8);
  v168 = (v9 + 48);
  v159 = (v9 + 32);
  v160 = (v9 + 8);
  v167 = (v18 + 8);
  v186 = (v18 + 56);
  v191 = a1;

  v61 = 0;
  *&v62 = 136315394;
  v198 = v62;
  v166 = v26;
  v199 = v34;
  v211 = v48;
  v193 = a1 + 64;
  while (v59)
  {
    v64 = v61;
LABEL_16:
    v69 = __clz(__rbit64(v59));
    v59 &= v59 - 1;
    v70 = v69 | (v64 << 6);
    v71 = v191;
    v72 = v189;
    sub_2527C3E7C(*(v191 + 48) + *(v190 + 72) * v70, v189, type metadata accessor for DeviceEntity);
    v73 = *(*(v71 + 56) + 8 * v70);
    v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCE48, &unk_2528C61E0);
    v75 = *(v74 + 48);
    v76 = v72;
    v67 = v203;
    sub_2527C3EE4(v76, v203, type metadata accessor for DeviceEntity);
    *(v67 + v75) = v73;
    (*(*(v74 - 8) + 56))(v67, 0, 1, v74);

    v68 = v204;
LABEL_17:
    v77 = v201;
    sub_25274AA0C(v67, v201, &qword_27F4FCE40, &qword_2528C61C0);
    v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCE48, &unk_2528C61E0);
    if ((*(*(v78 - 8) + 48))(v77, 1, v78) == 1)
    {

      result = v213;
      if (!*(v213 + 16))
      {

        type metadata accessor for HomeAppIntentError();
        sub_2527C3FAC(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError);
        swift_allocError();
        swift_storeEnumTagMultiPayload();
        return swift_willThrow();
      }

      return result;
    }

    v79 = *(v77 + *(v78 + 48));
    v80 = v211;
    sub_2527C3EE4(v77, v211, type metadata accessor for DeviceEntity);
    v212[9] = MEMORY[0x277D84FA0];
    if (qword_27F4FBB40 != -1)
    {
      swift_once();
    }

    v81 = sub_2528C08B0();
    v82 = __swift_project_value_buffer(v81, qword_27F5025C8);
    sub_2527C3E7C(v80, v68, type metadata accessor for DeviceEntity);

    v206 = v82;
    v83 = sub_2528C0890();
    v84 = sub_2528C0D10();

    v85 = os_log_type_enabled(v83, v84);
    v210 = v79;
    if (v85)
    {
      v86 = swift_slowAlloc();
      v87 = v68;
      v192 = swift_slowAlloc();
      v212[0] = v192;
      *v86 = v198;
      v88 = DeviceEntity.debugDescription.getter();
      v90 = v89;
      sub_2527C3F4C(v87, type metadata accessor for DeviceEntity);
      v91 = sub_2527389AC(v88, v90, v212);

      *(v86 + 4) = v91;
      *(v86 + 12) = 2080;
      v92 = MEMORY[0x2530A81A0](v79, &type metadata for Attribute);
      v94 = sub_2527389AC(v92, v93, v212);

      *(v86 + 14) = v94;
      _os_log_impl(&dword_252711000, v83, v84, "Trying to create actions for %s with %s", v86, 0x16u);
      v95 = v192;
      swift_arrayDestroy();
      MEMORY[0x2530A8D80](v95, -1, -1);
      v96 = v86;
      v97 = v199;
      MEMORY[0x2530A8D80](v96, -1, -1);
    }

    else
    {

      sub_2527C3F4C(v68, type metadata accessor for DeviceEntity);
      v97 = v199;
    }

    v98 = sub_2528BF370();
    sub_252819FA8(v97);
    v99 = v200;
    if (*(v98 + 16) && (v100 = sub_252785C40(v97), (v101 & 1) != 0))
    {
      v102 = v181;
      v103 = v180;
      v104 = v183;
      (*(v181 + 16))(v180, *(v98 + 56) + *(v181 + 72) * v100, v183);
      v105 = *v208;
      (*v208)(v97, v209);

      v106 = v182;
      v107 = (*(v102 + 32))(v182, v103, v104);
      MEMORY[0x28223BE20](v107);
      *(&v158 - 2) = v106;
      v108 = v205;
      v109 = sub_2528538E4(sub_2527C4020, (&v158 - 4), v210);
      v205 = v108;
      if (v108)
      {

        sub_2527C3F4C(v211, type metadata accessor for DeviceEntity);

        return (*v179)(v106, v104);
      }

      v110 = v109;
      swift_beginAccess();
      sub_2527C2134(v110);
      swift_endAccess();

      (*v179)(v106, v104);
    }

    else
    {

      v105 = *v208;
      (*v208)(v97, v209);
      v111 = sub_2528BF3A0();
      sub_252819FA8(v99);
      if (*(v111 + 16) && (v112 = sub_252785C40(v99), (v113 & 1) != 0))
      {
        v114 = v165;
        v115 = v164;
        v116 = v105;
        v117 = v185;
        (*(v165 + 16))(v164, *(v111 + 56) + *(v165 + 72) * v112, v185);
        v192 = v116;
        v116(v99, v209);

        v118 = v166;
        v119 = (*(v114 + 32))(v166, v115, v117);
        MEMORY[0x28223BE20](v119);
        *(&v158 - 2) = v118;
        v120 = v205;
        v121 = sub_2528538E4(sub_2527C4010, (&v158 - 4), v210);
        v205 = v120;
        if (v120)
        {

          sub_2527C3F4C(v211, type metadata accessor for DeviceEntity);

          return (*v163)(v118, v185);
        }

        v122 = v121;
        swift_beginAccess();
        sub_2527C2134(v122);
        swift_endAccess();

        (*v163)(v118, v185);
        v105 = v192;
      }

      else
      {

        v105(v99, v209);
      }
    }

    v123 = v196;
    sub_25272006C(v197, v196, &qword_27F4FCDB8, &unk_2528C5CC0);
    v124 = sub_2528C00D0();
    v125 = *(v124 - 8);
    if ((*(v125 + 48))(v123, 1, v124) == 1)
    {

      sub_2527213D8(v123, &qword_27F4FCDB8, &unk_2528C5CC0);
      v126 = v195;
      (*v186)(v195, 1, 1, v202);
LABEL_36:
      sub_2527213D8(v126, &qword_27F4FCEF0, &unk_2528C6AB0);
      v130 = v211;
      v131 = v194;
      goto LABEL_43;
    }

    v127 = v188;
    sub_252819FA8(v188);
    v128 = v195;
    sub_2528C0080();
    v105(v127, v209);
    v126 = v128;
    (*(v125 + 8))(v123, v124);
    v129 = v202;
    if ((*v187)(v128, 1, v202) == 1)
    {

      goto LABEL_36;
    }

    v132 = v171;
    (*v170)(v171, v126, v129);
    v133 = v175;
    sub_2528BFAB0();
    v134 = sub_2528BF0E0();
    (*v169)(v133, v176);
    v135 = v172;
    StateSnapshot.staticAccessory(withNodeID:)(v134, v172);
    v136 = v174;
    v137 = (*v168)(v135, 1, v174);
    v138 = v173;
    v139 = v210;
    if (v137 == 1)
    {

      sub_2527213D8(v135, &qword_27F4FD658, &qword_2528D35A0);
      (*v167)(v132, v129);
    }

    else
    {
      v141 = (*v159)(v173, v135, v136);
      MEMORY[0x28223BE20](v141);
      *(&v158 - 2) = v132;
      *(&v158 - 1) = v138;
      v142 = v205;
      v143 = sub_2528538E4(sub_2527C3FF4, (&v158 - 4), v139);
      v205 = v142;
      if (v142)
      {

        sub_2527C3F4C(v211, type metadata accessor for DeviceEntity);

        (*v160)(v138, v136);
        (*v167)(v132, v202);
      }

      v144 = v143;

      swift_beginAccess();
      sub_2527C2134(v144);
      swift_endAccess();

      (*v160)(v138, v136);
      (*v167)(v132, v202);
    }

    v130 = v211;
    v131 = v194;
LABEL_43:
    sub_2527C3E7C(v130, v131, type metadata accessor for DeviceEntity);
    v145 = sub_2528C0890();
    v146 = sub_2528C0D10();
    if (os_log_type_enabled(v145, v146))
    {
      v147 = swift_slowAlloc();
      v148 = swift_slowAlloc();
      v212[0] = v148;
      *v147 = v198;
      v149 = DeviceEntity.debugDescription.getter();
      v150 = v131;
      v152 = v151;
      sub_2527C3F4C(v150, type metadata accessor for DeviceEntity);
      v153 = sub_2527389AC(v149, v152, v212);

      *(v147 + 4) = v153;
      *(v147 + 12) = 2080;
      swift_beginAccess();
      sub_2528C07B0();
      sub_2527C3FAC(&qword_27F4FC6A8, MEMORY[0x277D16EC8]);

      v154 = sub_2528C0C80();
      v156 = v155;

      v157 = sub_2527389AC(v154, v156, v212);
      v130 = v211;

      *(v147 + 14) = v157;
      _os_log_impl(&dword_252711000, v145, v146, "Created actions for %s: %s", v147, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2530A8D80](v148, -1, -1);
      MEMORY[0x2530A8D80](v147, -1, -1);
    }

    else
    {

      sub_2527C3F4C(v131, type metadata accessor for DeviceEntity);
    }

    swift_beginAccess();

    sub_2527B939C(v63);
    sub_2527C3F4C(v130, type metadata accessor for DeviceEntity);

    v56 = v193;
  }

  if (v184 <= v61 + 1)
  {
    v65 = v61 + 1;
  }

  else
  {
    v65 = v184;
  }

  v66 = v65 - 1;
  v67 = v203;
  v68 = v204;
  while (1)
  {
    v64 = v61 + 1;
    if (__OFADD__(v61, 1))
    {
      break;
    }

    if (v64 >= v184)
    {
      v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCE48, &unk_2528C61E0);
      (*(*(v140 - 8) + 56))(v67, 1, 1, v140);
      v59 = 0;
      v61 = v66;
      goto LABEL_17;
    }

    v59 = *(v56 + 8 * v64);
    ++v61;
    if (v59)
    {
      v61 = v64;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2527C395C@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD988, &qword_2528C9540);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - v7;
  v9 = sub_2528BEC40();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD990, &unk_2528C9548);
  sub_2528BEC20();
  v11 = sub_2528BE730();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC458, &unk_2528C3F40);
  sub_2528BEA50();
  sub_2528BEC20();
  v12 = sub_2528BE730();
  sub_2528BEA50();
  sub_2528BEC20();
  v13 = sub_2528BE730();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD998, &qword_2528C9558);
  sub_2528BEA50();
  sub_2528BEC20();
  sub_2527C3FAC(&qword_27F4FD9A0, type metadata accessor for TriggerEventType);
  v14 = sub_2528BE700();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD9A8, &unk_2528C9560);
  sub_2528BEA50();
  sub_2528BEC20();
  sub_2527C3CE4();
  v15 = sub_2528BE700();
  v18 = 0;
  v19 = 0;
  sub_2528BEA50();
  sub_2528BE6C0();
  v16 = type metadata accessor for TriggerEventType(0);
  (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
  sub_25272006C(v8, v6, &qword_27F4FD988, &qword_2528C9540);
  sub_2528BE6C0();
  sub_2527213D8(v8, &qword_27F4FD988, &qword_2528C9540);
  v18 = 0;
  v19 = 0xE000000000000000;
  sub_2528BE6C0();
  v18 = 0;
  v19 = 0xE000000000000000;
  sub_2528BE6C0();
  LOBYTE(v18) = 20;
  sub_2528BE6C0();

  *a1 = v11;
  a1[1] = v12;
  a1[2] = v13;
  a1[3] = v14;
  a1[4] = v15;
  return result;
}

unint64_t sub_2527C3CE4()
{
  result = qword_27F4FD9B0;
  if (!qword_27F4FD9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD9B0);
  }

  return result;
}

unint64_t sub_2527C3D38()
{
  result = qword_27F4FD9F0;
  if (!qword_27F4FD9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD9F0);
  }

  return result;
}

uint64_t sub_2527C3D8C()
{
  v0 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD948, &qword_2528C94A0) - 8) + 80);

  return sub_2527BB610();
}

unint64_t sub_2527C3E30()
{
  result = qword_27F4FDA18;
  if (!qword_27F4FDA18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F4FDA18);
  }

  return result;
}

uint64_t sub_2527C3E7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2527C3EE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2527C3F4C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2527C3FAC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_14Tm(void (*a1)(void))
{
  v3 = v1[2];

  v4 = v1[3];

  v5 = v1[4];

  v6 = v1[5];

  v7 = v1[6];

  v8 = v1[7];

  a1(v1[8]);

  return MEMORY[0x2821FE8E8](v1, 72, 7);
}

uint64_t objectdestroy_39Tm()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  v6 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t getEnumTagSinglePayload for AutomationOutcome(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEC)
  {
    goto LABEL_20;
  }

  v2 = a2 + 20;
  if (a2 + 20 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 20;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 20;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 20;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 0x14;
  v9 = v7 - 20;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AutomationOutcome(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 20;
  if (a3 + 20 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xEC)
  {
    v5 = 0;
  }

  if (a2 > 0xEB)
  {
    v6 = ((a2 - 236) >> 8) + 1;
    *result = a2 + 20;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 20;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_2527C42A8(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 0x14)
  {
    return v1 - 19;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_2527C42BC(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 19;
  }

  return result;
}

unint64_t sub_2527C42E0()
{
  result = qword_27F4FDA80;
  if (!qword_27F4FDA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDA80);
  }

  return result;
}

unint64_t sub_2527C4338()
{
  result = qword_27F4FDA88;
  if (!qword_27F4FDA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDA88);
  }

  return result;
}

unint64_t sub_2527C4390()
{
  result = qword_27F4FDA90;
  if (!qword_27F4FDA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDA90);
  }

  return result;
}

unint64_t sub_2527C43E4()
{
  result = qword_27F4FDA98;
  if (!qword_27F4FDA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDA98);
  }

  return result;
}

unint64_t sub_2527C443C()
{
  result = qword_27F4FDAA0;
  if (!qword_27F4FDAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDAA0);
  }

  return result;
}

unint64_t sub_2527C4494()
{
  result = qword_27F4FDAA8;
  if (!qword_27F4FDAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDAA8);
  }

  return result;
}

unint64_t sub_2527C44EC()
{
  result = qword_27F4FDAB0;
  if (!qword_27F4FDAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDAB0);
  }

  return result;
}

unint64_t sub_2527C4544()
{
  result = qword_27F4FDAB8;
  if (!qword_27F4FDAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDAB8);
  }

  return result;
}

unint64_t sub_2527C45E0()
{
  result = qword_27F4FDAD0;
  if (!qword_27F4FDAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDAD0);
  }

  return result;
}

unint64_t sub_2527C4638()
{
  result = qword_27F4FDAD8;
  if (!qword_27F4FDAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDAD8);
  }

  return result;
}

unint64_t sub_2527C4690()
{
  result = qword_27F4FDAE0;
  if (!qword_27F4FDAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDAE0);
  }

  return result;
}

unint64_t sub_2527C46E8()
{
  result = qword_27F4FDAE8;
  if (!qword_27F4FDAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDAE8);
  }

  return result;
}

unint64_t sub_2527C473C()
{
  result = qword_27F4FDAF0;
  if (!qword_27F4FDAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDAF0);
  }

  return result;
}

unint64_t sub_2527C4794()
{
  result = qword_27F4FDAF8;
  if (!qword_27F4FDAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDAF8);
  }

  return result;
}

unint64_t sub_2527C47EC()
{
  result = qword_27F4FDB00;
  if (!qword_27F4FDB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDB00);
  }

  return result;
}

unint64_t sub_2527C4844()
{
  result = qword_27F4FDB08;
  if (!qword_27F4FDB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDB08);
  }

  return result;
}

unint64_t sub_2527C489C()
{
  result = qword_27F4FDB10;
  if (!qword_27F4FDB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDB10);
  }

  return result;
}

unint64_t sub_2527C4938()
{
  result = qword_27F4FDB28;
  if (!qword_27F4FDB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDB28);
  }

  return result;
}

unint64_t sub_2527C4990()
{
  result = qword_27F4FDB30;
  if (!qword_27F4FDB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDB30);
  }

  return result;
}

unint64_t sub_2527C49E8()
{
  result = qword_27F4FDB38;
  if (!qword_27F4FDB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDB38);
  }

  return result;
}

unint64_t sub_2527C4AC4()
{
  result = qword_27F4FDB60;
  if (!qword_27F4FDB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDB60);
  }

  return result;
}

unint64_t sub_2527C4B18()
{
  result = qword_27F4FDB68;
  if (!qword_27F4FDB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDB68);
  }

  return result;
}

uint64_t sub_2527C4B90()
{
  v0 = sub_2528BE9F0();
  __swift_allocate_value_buffer(v0, qword_27F4FDB70);
  __swift_project_value_buffer(v0, qword_27F4FDB70);
  return sub_2528BE9D0();
}

uint64_t static DashboardViewType.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4FB6F0 != -1)
  {
    swift_once();
  }

  v2 = sub_2528BE9F0();
  v3 = __swift_project_value_buffer(v2, qword_27F4FDB70);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2527C4C9C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FDC00, &unk_2528C9F90);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD3F8, &qword_2528C7EE0);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2528C17D0;
  v4 = (v3 + v2);
  v5 = *(v0 + 48);
  *v4 = 0;
  sub_2528BE8C0();
  v6 = *(v0 + 48);
  v4[v1] = 1;
  sub_2528BE8C0();
  v7 = *(v0 + 48);
  v4[2 * v1] = 2;
  sub_2528BE8C0();
  v8 = sub_25278E9A0(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27F4FDB88 = v8;
  return result;
}

uint64_t static DashboardViewType.caseDisplayRepresentations.getter()
{
  if (qword_27F4FB6F8 != -1)
  {
    swift_once();
  }
}

HomeAppIntents::DashboardViewType_optional __swiftcall DashboardViewType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2528C0F30();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t DashboardViewType.rawValue.getter()
{
  v1 = 0x73656E656373;
  if (*v0 != 1)
  {
    v1 = 0x657469726F766166;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x736172656D6163;
  }
}

uint64_t sub_2527C4F4C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x73656E656373;
  if (v2 != 1)
  {
    v4 = 0x657469726F766166;
    v3 = 0xE900000000000073;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x736172656D6163;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x73656E656373;
  if (*a2 != 1)
  {
    v8 = 0x657469726F766166;
    v7 = 0xE900000000000073;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x736172656D6163;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2528C1060();
  }

  return v11 & 1;
}

void sub_2527C505C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x73656E656373;
  if (v2 != 1)
  {
    v5 = 0x657469726F766166;
    v4 = 0xE900000000000073;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x736172656D6163;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_2527C50C0()
{
  result = qword_27F4FDB90;
  if (!qword_27F4FDB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDB90);
  }

  return result;
}

unint64_t sub_2527C5118()
{
  result = qword_27F4FDB98;
  if (!qword_27F4FDB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDB98);
  }

  return result;
}

unint64_t sub_2527C5170()
{
  result = qword_27F4FDBA0;
  if (!qword_27F4FDBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDBA0);
  }

  return result;
}

unint64_t sub_2527C51C8()
{
  result = qword_27F4FDBA8;
  if (!qword_27F4FDBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDBA8);
  }

  return result;
}

uint64_t sub_2527C521C()
{
  v1 = *v0;
  sub_2528C1130();
  sub_2528C0A40();

  return sub_2528C1180();
}

uint64_t sub_2527C52C0()
{
  *v0;
  *v0;
  sub_2528C0A40();
}

uint64_t sub_2527C5350()
{
  v1 = *v0;
  sub_2528C1130();
  sub_2528C0A40();

  return sub_2528C1180();
}

unint64_t sub_2527C53F4()
{
  result = qword_27F4FDBB0;
  if (!qword_27F4FDBB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4FDBB8, &qword_2528C9DB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDBB0);
  }

  return result;
}

unint64_t sub_2527C546C()
{
  result = qword_27F4FDBC0;
  if (!qword_27F4FDBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDBC0);
  }

  return result;
}

unint64_t sub_2527C54C0()
{
  result = qword_27F4FDBC8;
  if (!qword_27F4FDBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDBC8);
  }

  return result;
}

unint64_t sub_2527C5514()
{
  result = qword_27F4FDBD0;
  if (!qword_27F4FDBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDBD0);
  }

  return result;
}

unint64_t sub_2527C556C()
{
  result = qword_27F4FDBD8;
  if (!qword_27F4FDBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDBD8);
  }

  return result;
}

uint64_t sub_2527C55C0@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4FB6F0 != -1)
  {
    swift_once();
  }

  v2 = sub_2528BE9F0();
  v3 = __swift_project_value_buffer(v2, qword_27F4FDB70);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_2527C56B8()
{
  result = qword_27F4FDBE0;
  if (!qword_27F4FDBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDBE0);
  }

  return result;
}

uint64_t sub_2527C570C(uint64_t a1)
{
  v2 = sub_2527C56B8();

  return MEMORY[0x28210B458](a1, v2);
}

unint64_t sub_2527C575C()
{
  result = qword_27F4FDBE8;
  if (!qword_27F4FDBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDBE8);
  }

  return result;
}

unint64_t sub_2527C57B4()
{
  result = qword_27F4FDBF0;
  if (!qword_27F4FDBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDBF0);
  }

  return result;
}

unint64_t sub_2527C580C()
{
  result = qword_27F4FDBF8;
  if (!qword_27F4FDBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDBF8);
  }

  return result;
}

uint64_t sub_2527C5860()
{
  if (qword_27F4FB6F8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_2527C58BC(uint64_t a1)
{
  v2 = sub_2527C556C();

  return MEMORY[0x28210C300](a1, v2);
}

uint64_t getEnumTagSinglePayload for DashboardViewType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DashboardViewType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2527C5A7C()
{
  result = qword_27F4FDC08;
  if (!qword_27F4FDC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDC08);
  }

  return result;
}

uint64_t sub_2527C5AD0()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 32) >> 6;
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      sub_2528C0E70();

      v11 = 0x203D20444970616DLL;
      v7 = sub_2528C1040();
      MEMORY[0x2530A80B0](v7);

      MEMORY[0x2530A80B0](0x203D20656D616E20, 0xE800000000000000);
      MEMORY[0x2530A80B0](v1, v3);
    }

    else
    {
      v11 = 0;
      MEMORY[0x2530A80B0](0x20646E616D6D6F63, 0xEA0000000000203DLL);
      sub_2528C0ED0();
    }
  }

  else
  {
    if (v4)
    {
      v8 = v0[3];
      sub_2528C0E70();

      v11 = 0x3D20444961657261;
      v9 = sub_2528C1040();
      MEMORY[0x2530A80B0](v9);

      MEMORY[0x2530A80B0](0x203D20656D616E20, 0xE800000000000000);
      MEMORY[0x2530A80B0](v1, v3);
      MEMORY[0x2530A80B0](0x3D20444970616D20, 0xE900000000000020);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FDE90, &unk_2528CAE60);
      v6 = sub_2528C0A10();
    }

    else
    {
      sub_2528C0E70();

      v11 = 0x65746174536E7572;
      v5 = RobotVacuumCleanerRunState.rawValue.getter();
      MEMORY[0x2530A80B0](v5);

      MEMORY[0x2530A80B0](0x6F4D6E61656C6320, 0xEE00203D20736564);
      v6 = MEMORY[0x2530A81A0](v1, &type metadata for RobotVacuumCleanerCleanMode);
    }

    MEMORY[0x2530A80B0](v6);
  }

  return v11;
}

unint64_t sub_2527C5DA8@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_2528BEC40();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = *v1;
  v5 = v1[1];
  v7 = v1[2];
  v8 = *(v1 + 32) >> 6;
  if (v8 > 1)
  {
    if (v8 == 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC5B8, &qword_2528C4720);

      sub_2528BEC20();
      v12 = sub_2528BE760();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC458, &unk_2528C3F40);
      sub_2528BEC20();
      v13 = sub_2528BE730();
      sub_2528BE6C0();
      sub_2528BE6C0();
      a1[3] = &type metadata for PossibleValuesForAttribute.ServiceMapCase;
      result = sub_2527C74EC();
      a1[4] = result;
      *a1 = v12;
      a1[1] = v13;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FDC10, &qword_2528CA030);
      sub_2528BEC20();
      sub_2527C7444();
      v18 = sub_2528BE6E0();
      sub_2528BE6C0();
      a1[3] = &type metadata for PossibleValuesForAttribute.RvcCurrentRunCase;
      result = sub_2527C7498();
      a1[4] = result;
      *a1 = v18;
    }
  }

  else if (v8)
  {
    v14 = v1[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC5B8, &qword_2528C4720);

    sub_2528BEC20();
    v15 = sub_2528BE760();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC458, &unk_2528C3F40);
    sub_2528BEC20();
    v16 = sub_2528BE730();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FDC30, &qword_2528CA038);
    sub_2528BEC20();
    v17 = sub_2528BE760();
    sub_2528BE6C0();
    sub_2528BE6C0();
    sub_2528BE6C0();
    a1[3] = &type metadata for PossibleValuesForAttribute.ServiceAreaCase;
    result = sub_2527C7540();
    a1[4] = result;
    *a1 = v15;
    a1[1] = v16;
    a1[2] = v17;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FDC40, &qword_2528CA040);

    sub_2528BEC20();
    sub_2527C7594();
    v9 = sub_2528BE6E0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FDC50, &unk_2528CA048);
    sub_2528BEC20();
    sub_2527C75E8();
    v10 = sub_2528BE6E0();
    sub_2528BE6C0();
    sub_2528BE6C0();
    a1[3] = &type metadata for PossibleValuesForAttribute.RvcCase;
    result = sub_2527C763C();
    a1[4] = result;
    *a1 = v9;
    a1[1] = v10;
  }

  return result;
}

uint64_t sub_2527C615C@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FDC68, &qword_2528CA058);
  v22 = *(v24 - 8);
  v1 = *(v22 + 64);
  MEMORY[0x28223BE20](v24);
  v17 = &v16 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FDC70, &qword_2528CA060);
  v20 = *(v3 - 8);
  v21 = v3;
  v4 = *(v20 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FDC78, &qword_2528CA068);
  v18 = *(v7 - 8);
  v19 = v7;
  v8 = *(v18 + 64);
  MEMORY[0x28223BE20](v7);
  v16 = &v16 - v9;
  v10 = sub_2527C7690();
  MEMORY[0x2530A60E0](v10, &type metadata for PossibleValuesForAttribute, &type metadata for PossibleValuesForAttribute.RvcCase.Resolver, v10);
  v11 = sub_2527C76E4();
  MEMORY[0x2530A60E0](v11, &type metadata for PossibleValuesForAttribute, &type metadata for PossibleValuesForAttribute.ServiceAreaCase.Resolver, v11);
  v12 = sub_2527C7738();
  MEMORY[0x2530A60E0](v12, &type metadata for PossibleValuesForAttribute, &type metadata for PossibleValuesForAttribute.ServiceMapCase.Resolver, v12);
  v13 = sub_2527C778C();
  MEMORY[0x2530A60E0](v13, &type metadata for PossibleValuesForAttribute, &type metadata for PossibleValuesForAttribute.RvcCurrentRunCase.Resolver, v13);
  sub_2527C5A7C();
  sub_2528BEAA0();
  v35 = v10;
  v36 = &type metadata for PossibleValuesForAttribute.RvcCase.Resolver;
  sub_2528BEA90();
  v33 = &type metadata for PossibleValuesForAttribute.RvcCase.Resolver;
  v34 = &type metadata for PossibleValuesForAttribute.ServiceAreaCase.Resolver;
  v31 = v10;
  v32 = v11;
  v14 = v17;
  sub_2528BEA90();
  v28 = &type metadata for PossibleValuesForAttribute.RvcCase.Resolver;
  v29 = &type metadata for PossibleValuesForAttribute.ServiceAreaCase.Resolver;
  v30 = &type metadata for PossibleValuesForAttribute.ServiceMapCase.Resolver;
  v25 = v10;
  v26 = v11;
  v27 = v12;
  sub_2528BEA90();
  (*(v22 + 8))(v14, v24);
  (*(v20 + 8))(v6, v21);
  return (*(v18 + 8))(v16, v19);
}

uint64_t sub_2527C64E8(uint64_t a1, _OWORD *a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = *a2;
  return MEMORY[0x2822009F8](sub_2527C6510, 0, 0);
}

uint64_t sub_2527C6510()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = *(v0 + 24);
  sub_2528BE6B0();
  v4 = *(v0 + 48);
  sub_2528BE6B0();
  v5 = *(v0 + 16);
  *v3 = v4;
  *(v3 + 8) = v5;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_2527C65A4@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2528BEC40();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FDC40, &qword_2528CA040);
  sub_2528BEC20();
  sub_2527C7594();
  v4 = sub_2528BE6E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FDC50, &unk_2528CA048);
  sub_2528BEC20();
  sub_2527C75E8();
  result = sub_2528BE6E0();
  *a1 = v4;
  a1[1] = result;
  return result;
}

uint64_t sub_2527C66A8(uint64_t a1)
{
  v2 = sub_2527C8A88();

  return MEMORY[0x28210B2E8](a1, v2);
}

uint64_t sub_2527C66F4()
{
  sub_2527C8A88();

  return sub_2528BE550();
}

uint64_t sub_2527C6780(uint64_t a1)
{
  v2 = sub_2527C7CC0();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_2527C67CC(uint64_t a1)
{
  v2 = sub_2527C7A70();

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t sub_2527C6840(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = *a2;
  *(v2 + 56) = *(a2 + 16);
  return MEMORY[0x2822009F8](sub_2527C6870, 0, 0);
}

uint64_t sub_2527C6870()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  sub_2528BE6B0();
  v5 = v0[2];
  sub_2528BE6B0();
  v6 = v0[2];
  v7 = v0[3];
  sub_2528BE6B0();
  v8 = v0[2];
  v9 = *(v0 + 24) | 0x40;
  *v4 = v5;
  *(v4 + 8) = v6;
  *(v4 + 16) = v7;
  *(v4 + 24) = v8;
  *(v4 + 32) = v9;
  v10 = v0[1];

  return v10();
}

uint64_t sub_2527C6924@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2528BEC40();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC5B8, &qword_2528C4720);
  sub_2528BEC20();
  v4 = sub_2528BE760();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC458, &unk_2528C3F40);
  sub_2528BEC20();
  v5 = sub_2528BE730();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FDC30, &qword_2528CA038);
  sub_2528BEC20();
  result = sub_2528BE760();
  *a1 = v4;
  a1[1] = v5;
  a1[2] = result;
  return result;
}

uint64_t sub_2527C6A50(uint64_t a1)
{
  v2 = sub_2527C8A34();

  return MEMORY[0x28210B2E8](a1, v2);
}

uint64_t sub_2527C6A9C()
{
  sub_2527C8A34();

  return sub_2528BE550();
}

uint64_t sub_2527C6B28(uint64_t a1)
{
  v2 = sub_2527C8018();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_2527C6B74()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC128, &unk_2528C3590);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v13 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC130, &unk_2528C6A80);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  v8 = sub_2528BEC40();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  sub_2528BEC20();
  (*(v9 + 56))(v7, 1, 1, v8);
  v11 = sub_2528BE8D0();
  (*(*(v11 - 8) + 56))(v3, 1, 1, v11);
  return sub_2528BE900();
}

uint64_t sub_2527C6D3C(uint64_t a1)
{
  v2 = sub_2527C7DC8();

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t sub_2527C6DAC(uint64_t a1, _OWORD *a2)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = *a2;
  return MEMORY[0x2822009F8](sub_2527C6DD4, 0, 0);
}

uint64_t sub_2527C6DD4()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  sub_2528BE6B0();
  v4 = v0[2];
  sub_2528BE6B0();
  v5 = v0[2];
  v6 = v0[3];
  *v3 = v4;
  *(v3 + 8) = v5;
  *(v3 + 16) = v6;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0x80;
  v7 = v0[1];

  return v7();
}

uint64_t sub_2527C6E6C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2528BEC40();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC5B8, &qword_2528C4720);
  sub_2528BEC20();
  v4 = sub_2528BE760();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC458, &unk_2528C3F40);
  sub_2528BEC20();
  result = sub_2528BE730();
  *a1 = v4;
  a1[1] = result;
  return result;
}

uint64_t sub_2527C6F50(uint64_t a1)
{
  v2 = sub_2527C89E0();

  return MEMORY[0x28210B2E8](a1, v2);
}

uint64_t sub_2527C6F9C()
{
  sub_2527C89E0();

  return sub_2528BE550();
}

uint64_t sub_2527C7028(uint64_t a1)
{
  v2 = sub_2527C8370();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_2527C7074(uint64_t a1)
{
  v2 = sub_2527C8120();

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t sub_2527C70EC(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_2527C7110, 0, 0);
}

uint64_t sub_2527C7110()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_2528BE6B0();
  *v1 = *(v0 + 32);
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = -64;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2527C718C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2528BEC40();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FDC10, &qword_2528CA030);
  sub_2528BEC20();
  sub_2527C7444();
  result = sub_2528BE6E0();
  *a1 = result;
  return result;
}

uint64_t sub_2527C723C(uint64_t a1)
{
  v2 = sub_2527C898C();

  return MEMORY[0x28210B2E8](a1, v2);
}

uint64_t sub_2527C7288()
{
  sub_2527C898C();

  return sub_2528BE550();
}

uint64_t sub_2527C7314(uint64_t a1)
{
  v2 = sub_2527C86C8();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_2527C7360(uint64_t a1)
{
  v2 = sub_2527C8478();

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t sub_2527C73AC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FBE28, &qword_2528C4730);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2528C35E0;
  v1 = sub_2527C763C();
  *(v0 + 32) = &type metadata for PossibleValuesForAttribute.RvcCase;
  *(v0 + 40) = v1;
  v2 = sub_2527C7540();
  *(v0 + 48) = &type metadata for PossibleValuesForAttribute.ServiceAreaCase;
  *(v0 + 56) = v2;
  v3 = sub_2527C74EC();
  *(v0 + 64) = &type metadata for PossibleValuesForAttribute.ServiceMapCase;
  *(v0 + 72) = v3;
  v4 = sub_2527C7498();
  *(v0 + 80) = &type metadata for PossibleValuesForAttribute.RvcCurrentRunCase;
  *(v0 + 88) = v4;
  return v0;
}

unint64_t sub_2527C7444()
{
  result = qword_27F4FDC18;
  if (!qword_27F4FDC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDC18);
  }

  return result;
}

unint64_t sub_2527C7498()
{
  result = qword_27F4FDC20;
  if (!qword_27F4FDC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDC20);
  }

  return result;
}

unint64_t sub_2527C74EC()
{
  result = qword_27F4FDC28;
  if (!qword_27F4FDC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDC28);
  }

  return result;
}

unint64_t sub_2527C7540()
{
  result = qword_27F4FDC38;
  if (!qword_27F4FDC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDC38);
  }

  return result;
}

unint64_t sub_2527C7594()
{
  result = qword_27F4FDC48;
  if (!qword_27F4FDC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDC48);
  }

  return result;
}

unint64_t sub_2527C75E8()
{
  result = qword_27F4FDC58;
  if (!qword_27F4FDC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDC58);
  }

  return result;
}

unint64_t sub_2527C763C()
{
  result = qword_27F4FDC60;
  if (!qword_27F4FDC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDC60);
  }

  return result;
}

unint64_t sub_2527C7690()
{
  result = qword_27F4FDC80;
  if (!qword_27F4FDC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDC80);
  }

  return result;
}

unint64_t sub_2527C76E4()
{
  result = qword_27F4FDC88;
  if (!qword_27F4FDC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDC88);
  }

  return result;
}

unint64_t sub_2527C7738()
{
  result = qword_27F4FDC90;
  if (!qword_27F4FDC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDC90);
  }

  return result;
}

unint64_t sub_2527C778C()
{
  result = qword_27F4FDC98;
  if (!qword_27F4FDC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDC98);
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2527C7880(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 33))
  {
    return (*a1 + 125);
  }

  v3 = ((*(a1 + 32) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 32) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_2527C78D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 125;
    *(result + 8) = 0;
    if (a3 >= 0x7D)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

unint64_t sub_2527C7968()
{
  result = qword_27F4FDCB0;
  if (!qword_27F4FDCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDCB0);
  }

  return result;
}

unint64_t sub_2527C79C0()
{
  result = qword_27F4FDCB8;
  if (!qword_27F4FDCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDCB8);
  }

  return result;
}

unint64_t sub_2527C7A14()
{
  result = qword_27F4FBD88;
  if (!qword_27F4FBD88)
  {
    sub_2528BECF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBD88);
  }

  return result;
}

unint64_t sub_2527C7A70()
{
  result = qword_27F4FDCC0;
  if (!qword_27F4FDCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDCC0);
  }

  return result;
}

unint64_t sub_2527C7AC4()
{
  result = qword_27F4FDCC8;
  if (!qword_27F4FDCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDCC8);
  }

  return result;
}

unint64_t sub_2527C7B1C()
{
  result = qword_27F4FDCD0;
  if (!qword_27F4FDCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDCD0);
  }

  return result;
}

unint64_t sub_2527C7B74()
{
  result = qword_27F4FDCD8;
  if (!qword_27F4FDCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDCD8);
  }

  return result;
}

unint64_t sub_2527C7BCC()
{
  result = qword_27F4FDCE0;
  if (!qword_27F4FDCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDCE0);
  }

  return result;
}

unint64_t sub_2527C7C24()
{
  result = qword_27F4FDCE8;
  if (!qword_27F4FDCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDCE8);
  }

  return result;
}

unint64_t sub_2527C7CC0()
{
  result = qword_27F4FDD00;
  if (!qword_27F4FDD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDD00);
  }

  return result;
}

unint64_t sub_2527C7D18()
{
  result = qword_27F4FDD08;
  if (!qword_27F4FDD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDD08);
  }

  return result;
}

unint64_t sub_2527C7D70()
{
  result = qword_27F4FDD10;
  if (!qword_27F4FDD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDD10);
  }

  return result;
}

unint64_t sub_2527C7DC8()
{
  result = qword_27F4FDD18;
  if (!qword_27F4FDD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDD18);
  }

  return result;
}

unint64_t sub_2527C7E1C()
{
  result = qword_27F4FDD20;
  if (!qword_27F4FDD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDD20);
  }

  return result;
}

unint64_t sub_2527C7E74()
{
  result = qword_27F4FDD28;
  if (!qword_27F4FDD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDD28);
  }

  return result;
}

unint64_t sub_2527C7ECC()
{
  result = qword_27F4FDD30;
  if (!qword_27F4FDD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDD30);
  }

  return result;
}

unint64_t sub_2527C7F24()
{
  result = qword_27F4FDD38;
  if (!qword_27F4FDD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDD38);
  }

  return result;
}

unint64_t sub_2527C7F7C()
{
  result = qword_27F4FDD40;
  if (!qword_27F4FDD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDD40);
  }

  return result;
}

unint64_t sub_2527C8018()
{
  result = qword_27F4FDD58;
  if (!qword_27F4FDD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDD58);
  }

  return result;
}

unint64_t sub_2527C8070()
{
  result = qword_27F4FDD60;
  if (!qword_27F4FDD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDD60);
  }

  return result;
}

unint64_t sub_2527C80C8()
{
  result = qword_27F4FDD68;
  if (!qword_27F4FDD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDD68);
  }

  return result;
}

unint64_t sub_2527C8120()
{
  result = qword_27F4FDD70;
  if (!qword_27F4FDD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDD70);
  }

  return result;
}

unint64_t sub_2527C8174()
{
  result = qword_27F4FDD78;
  if (!qword_27F4FDD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDD78);
  }

  return result;
}

unint64_t sub_2527C81CC()
{
  result = qword_27F4FDD80;
  if (!qword_27F4FDD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDD80);
  }

  return result;
}

unint64_t sub_2527C8224()
{
  result = qword_27F4FDD88;
  if (!qword_27F4FDD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDD88);
  }

  return result;
}

unint64_t sub_2527C827C()
{
  result = qword_27F4FDD90;
  if (!qword_27F4FDD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDD90);
  }

  return result;
}

unint64_t sub_2527C82D4()
{
  result = qword_27F4FDD98;
  if (!qword_27F4FDD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDD98);
  }

  return result;
}

unint64_t sub_2527C8370()
{
  result = qword_27F4FDDB0;
  if (!qword_27F4FDDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDDB0);
  }

  return result;
}

unint64_t sub_2527C83C8()
{
  result = qword_27F4FDDB8;
  if (!qword_27F4FDDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDDB8);
  }

  return result;
}

unint64_t sub_2527C8420()
{
  result = qword_27F4FDDC0;
  if (!qword_27F4FDDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDDC0);
  }

  return result;
}

unint64_t sub_2527C8478()
{
  result = qword_27F4FDDC8;
  if (!qword_27F4FDDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDDC8);
  }

  return result;
}

unint64_t sub_2527C84CC()
{
  result = qword_27F4FDDD0;
  if (!qword_27F4FDDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDDD0);
  }

  return result;
}

unint64_t sub_2527C8524()
{
  result = qword_27F4FDDD8;
  if (!qword_27F4FDDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDDD8);
  }

  return result;
}

unint64_t sub_2527C857C()
{
  result = qword_27F4FDDE0;
  if (!qword_27F4FDDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDDE0);
  }

  return result;
}

unint64_t sub_2527C85D4()
{
  result = qword_27F4FDDE8;
  if (!qword_27F4FDDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDDE8);
  }

  return result;
}

unint64_t sub_2527C862C()
{
  result = qword_27F4FDDF0;
  if (!qword_27F4FDDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDDF0);
  }

  return result;
}

unint64_t sub_2527C86C8()
{
  result = qword_27F4FDE08;
  if (!qword_27F4FDE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDE08);
  }

  return result;
}

unint64_t sub_2527C8720()
{
  result = qword_27F4FDE10;
  if (!qword_27F4FDE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDE10);
  }

  return result;
}

unint64_t sub_2527C8778()
{
  result = qword_27F4FDE18;
  if (!qword_27F4FDE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDE18);
  }

  return result;
}

unint64_t sub_2527C87D0()
{
  result = qword_27F4FDE20;
  if (!qword_27F4FDE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDE20);
  }

  return result;
}

unint64_t sub_2527C8828()
{
  result = qword_27F4FDE28;
  if (!qword_27F4FDE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDE28);
  }

  return result;
}

unint64_t sub_2527C898C()
{
  result = qword_27F4FDE70;
  if (!qword_27F4FDE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDE70);
  }

  return result;
}

unint64_t sub_2527C89E0()
{
  result = qword_27F4FDE78;
  if (!qword_27F4FDE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDE78);
  }

  return result;
}

unint64_t sub_2527C8A34()
{
  result = qword_27F4FDE80;
  if (!qword_27F4FDE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDE80);
  }

  return result;
}

unint64_t sub_2527C8A88()
{
  result = qword_27F4FDE88;
  if (!qword_27F4FDE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FDE88);
  }

  return result;
}

unint64_t RobotVacuumCleanerRunState.rawValue.getter()
{
  result = 0x646570706F7473;
  switch(*v0)
  {
    case 1:
      result = 0x676E696E6E7572;
      break;
    case 2:
      result = 0x646573756170;
      break;
    case 3:
      result = 0x726F727265;
      break;
    case 4:
      result = 0x43676E696B656573;
      break;
    case 5:
      result = 0x676E696772616863;
      break;
    case 6:
      result = 0x64656B636F64;
      break;
    case 7:
      result = 0x676E697974706D65;
      break;
    case 8:
      result = 0x676E696E61656C63;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 0xA:
      result = 0x676E697461647075;
      break;
    case 0xB:
      result = 0x6B63757473;
      break;
    case 0xC:
    case 0x19:
      result = 0xD000000000000018;
      break;
    case 0xD:
      result = 0x4D6E694274737564;
      break;
    case 0xE:
      result = 0x466E694274737564;
      break;
    case 0xF:
      result = 0xD000000000000010;
      break;
    case 0x10:
      result = 0x6E61547265746177;
      break;
    case 0x11:
      result = 0xD000000000000010;
      break;
    case 0x12:
    case 0x14:
    case 0x16:
      result = 0xD000000000000015;
      break;
    case 0x13:
      result = 0x6574746142776F6CLL;
      break;
    case 0x15:
      result = 0xD000000000000012;
      break;
    case 0x17:
      result = 0x614A736C65656877;
      break;
    case 0x18:
      result = 0x6D614A6873757262;
      break;
    case 0x1A:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2527C8DF0()
{
  v0 = sub_2528BE9F0();
  __swift_allocate_value_buffer(v0, qword_27F4FDE98);
  __swift_project_value_buffer(v0, qword_27F4FDE98);
  return sub_2528BE9D0();
}

uint64_t sub_2527C8E78()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE740, &unk_2528CD960);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD3E8, &qword_2528C7ED0);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2528C17E0;
  v4 = (v3 + v2);
  v5 = *(v0 + 48);
  *v4 = 0;
  sub_2528BE8C0();
  v6 = *(v0 + 48);
  v4[v1] = 1;
  sub_2528BE8C0();
  v7 = sub_25278EB88(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27F4FDEB0 = v7;
  return result;
}

uint64_t AirParticulateSize.rawValue.getter()
{
  if (*v0)
  {
    result = 0x3031657A6973;
  }

  else
  {
    result = 0x355F32657A6973;
  }

  *v0;
  return result;
}

uint64_t sub_2527C9058(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x3031657A6973;
  }

  else
  {
    v4 = 0x355F32657A6973;
  }

  if (v3)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  if (*a2)
  {
    v6 = 0x3031657A6973;
  }

  else
  {
    v6 = 0x355F32657A6973;
  }

  if (*a2)
  {
    v7 = 0xE600000000000000;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_2528C1060();
  }

  return v9 & 1;
}

uint64_t sub_2527C90FC()
{
  v1 = *v0;
  sub_2528C1130();
  sub_2528C0A40();

  return sub_2528C1180();
}

uint64_t sub_2527C917C()
{
  *v0;
  sub_2528C0A40();
}

uint64_t sub_2527C91E8()
{
  v1 = *v0;
  sub_2528C1130();
  sub_2528C0A40();

  return sub_2528C1180();
}

void sub_2527C9270(uint64_t *a1@<X8>)
{
  v2 = 0x355F32657A6973;
  if (*v1)
  {
    v2 = 0x3031657A6973;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_2527C92D0(uint64_t a1)
{
  v2 = sub_2527CF380();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t sub_2527C9340(uint64_t a1)
{
  v2 = sub_2527CF314();

  return MEMORY[0x28210C300](a1, v2);
}

uint64_t sub_2527C93EC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE738, &unk_2528CD950);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD3D8, &qword_2528C7EC0);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2528C17E0;
  v4 = (v3 + v2);
  v5 = *(v0 + 48);
  *v4 = 0;
  sub_2528BE8C0();
  v6 = *(v0 + 48);
  v4[v1] = 1;
  sub_2528BE8C0();
  v7 = sub_25278ED70(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27F4FDED0 = v7;
  return result;
}

uint64_t AirPurifierMode.rawValue.getter()
{
  if (*v0)
  {
    result = 0x6974616D6F747561;
  }

  else
  {
    result = 0x6C61756E616DLL;
  }

  *v0;
  return result;
}

uint64_t sub_2527C95B8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6974616D6F747561;
  }

  else
  {
    v4 = 0x6C61756E616DLL;
  }

  if (v3)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xE900000000000063;
  }

  if (*a2)
  {
    v6 = 0x6974616D6F747561;
  }

  else
  {
    v6 = 0x6C61756E616DLL;
  }

  if (*a2)
  {
    v7 = 0xE900000000000063;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_2528C1060();
  }

  return v9 & 1;
}

uint64_t sub_2527C9660()
{
  v1 = *v0;
  sub_2528C1130();
  sub_2528C0A40();

  return sub_2528C1180();
}

uint64_t sub_2527C96E4()
{
  *v0;
  sub_2528C0A40();
}

uint64_t sub_2527C9754()
{
  v1 = *v0;
  sub_2528C1130();
  sub_2528C0A40();

  return sub_2528C1180();
}

void sub_2527C97E0(uint64_t *a1@<X8>)
{
  v2 = 0x6C61756E616DLL;
  if (*v1)
  {
    v2 = 0x6974616D6F747561;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE900000000000063;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_2527C9844(uint64_t a1)
{
  v2 = sub_2527CF7DC();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t sub_2527C98B4(uint64_t a1)
{
  v2 = sub_2527CF770();

  return MEMORY[0x28210C300](a1, v2);
}

uint64_t sub_2527C9910()
{
  v0 = sub_2528BE9F0();
  __swift_allocate_value_buffer(v0, qword_27F4FDED8);
  __swift_project_value_buffer(v0, qword_27F4FDED8);
  return sub_2528BE9D0();
}

uint64_t sub_2527C9998()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE730, &unk_2528CD940);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD3C8, &qword_2528C7EB0);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2528C17D0;
  v4 = (v3 + v2);
  v5 = *(v0 + 48);
  *v4 = 0;
  sub_2528BE8C0();
  v6 = *(v0 + 48);
  v4[v1] = 1;
  sub_2528BE8C0();
  v7 = *(v0 + 48);
  v4[2 * v1] = 2;
  sub_2528BE8C0();
  v8 = sub_25278EF58(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27F4FDEF0 = v8;
  return result;
}

HomeAppIntents::AirPurifierState_optional __swiftcall AirPurifierState.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2528C0F30();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t AirPurifierState.rawValue.getter()
{
  v1 = 1701602409;
  if (*v0 != 1)
  {
    v1 = 0x657669746361;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6576697463616E69;
  }
}

uint64_t sub_2527C9BF8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1701602409;
  if (v2 != 1)
  {
    v4 = 0x657669746361;
    v3 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6576697463616E69;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1701602409;
  if (*a2 != 1)
  {
    v8 = 0x657669746361;
    v7 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6576697463616E69;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2528C1060();
  }

  return v11 & 1;
}

uint64_t sub_2527C9CE4()
{
  v1 = *v0;
  sub_2528C1130();
  sub_2528C0A40();

  return sub_2528C1180();
}

uint64_t sub_2527C9D7C()
{
  *v0;
  *v0;
  sub_2528C0A40();
}

uint64_t sub_2527C9E00()
{
  v1 = *v0;
  sub_2528C1130();
  sub_2528C0A40();

  return sub_2528C1180();
}

void sub_2527C9EA0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xE400000000000000;
  v5 = 1701602409;
  if (v2 != 1)
  {
    v5 = 0x657669746361;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6576697463616E69;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_2527C9F18(uint64_t a1)
{
  v2 = sub_2527CFC38();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t sub_2527C9F88(uint64_t a1)
{
  v2 = sub_2527CFBCC();

  return MEMORY[0x28210C300](a1, v2);
}

uint64_t sub_2527CA02C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE728, &unk_2528CD930);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD3B8, &qword_2528C7EA0);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2528C17F0;
  v4 = (v3 + v2);
  v5 = *(v0 + 48);
  *v4 = 0;
  sub_2528BE8C0();
  v6 = *(v0 + 48);
  v4[v1] = 1;
  sub_2528BE8C0();
  v7 = *(v0 + 48);
  v4[2 * v1] = 2;
  sub_2528BE8C0();
  v8 = *(v0 + 48);
  v4[3 * v1] = 3;
  sub_2528BE8C0();
  v9 = *(v0 + 48);
  v4[4 * v1] = 4;
  sub_2528BE8C0();
  v10 = *(v0 + 48);
  v4[5 * v1] = 5;
  sub_2528BE8C0();
  v11 = sub_25278F140(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27F4FDF10 = v11;
  return result;
}

HomeAppIntents::AirQuality_optional __swiftcall AirQuality.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2528C0F30();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t AirQuality.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 1919508838;
  v4 = 0x726F697265666E69;
  if (v1 != 4)
  {
    v4 = 1919905648;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6E656C6C65637865;
  if (v1 != 1)
  {
    v5 = 1685024615;
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

uint64_t sub_2527CA37C()
{
  *v0;
  *v0;
  *v0;
  sub_2528C0A40();
}

void sub_2527CA468(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xE400000000000000;
  v6 = 1919508838;
  v7 = 0xE800000000000000;
  v8 = 0x726F697265666E69;
  if (v2 != 4)
  {
    v8 = 1919905648;
    v7 = 0xE400000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE900000000000074;
  v10 = 0x6E656C6C65637865;
  if (v2 != 1)
  {
    v10 = 1685024615;
    v9 = 0xE400000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_2527CA534(uint64_t a1)
{
  v2 = sub_2527D0094();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t sub_2527CA5A4(uint64_t a1)
{
  v2 = sub_2527D0028();

  return MEMORY[0x28210C300](a1, v2);
}

uint64_t sub_2527CA650()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE720, &unk_2528CD920);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD3A8, &qword_2528C7E90);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2528C17D0;
  v4 = (v3 + v2);
  v5 = *(v0 + 48);
  *v4 = 0;
  sub_2528BE8C0();
  v6 = *(v0 + 48);
  v4[v1] = 1;
  sub_2528BE8C0();
  v7 = *(v0 + 48);
  v4[2 * v1] = 2;
  sub_2528BE8C0();
  v8 = sub_25278F328(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27F4FDF30 = v8;
  return result;
}

HomeAppIntents::ChargingState_optional __swiftcall ChargingState.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2528C0F30();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ChargingState.rawValue.getter()
{
  v1 = 0x6572676F72506E69;
  if (*v0 != 1)
  {
    v1 = 0x6772616843746F6ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701736302;
  }
}

uint64_t sub_2527CA8DC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6572676F72506E69;
  v4 = 0xEA00000000007373;
  if (v2 != 1)
  {
    v3 = 0x6772616843746F6ELL;
    v4 = 0xED0000656C626165;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 1701736302;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0x6572676F72506E69;
  v8 = 0xEA00000000007373;
  if (*a2 != 1)
  {
    v7 = 0x6772616843746F6ELL;
    v8 = 0xED0000656C626165;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 1701736302;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2528C1060();
  }

  return v11 & 1;
}

uint64_t sub_2527CA9F8()
{
  v1 = *v0;
  sub_2528C1130();
  sub_2528C0A40();

  return sub_2528C1180();
}

uint64_t sub_2527CAAA4()
{
  *v0;
  *v0;
  sub_2528C0A40();
}

uint64_t sub_2527CAB3C()
{
  v1 = *v0;
  sub_2528C1130();
  sub_2528C0A40();

  return sub_2528C1180();
}

void sub_2527CABF0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xEA00000000007373;
  v5 = 0x6572676F72506E69;
  if (v2 != 1)
  {
    v5 = 0x6772616843746F6ELL;
    v4 = 0xED0000656C626165;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1701736302;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_2527CAC7C(uint64_t a1)
{
  v2 = sub_2527D04F0();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t sub_2527CACEC(uint64_t a1)
{
  v2 = sub_2527D0484();

  return MEMORY[0x28210C300](a1, v2);
}

uint64_t sub_2527CAD90()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE718, &unk_2528CD910);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD398, &qword_2528C7E80);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2528C35E0;
  v4 = (v3 + v2);
  v5 = *(v0 + 48);
  *v4 = 0;
  sub_2528BE8C0();
  v6 = *(v0 + 48);
  v4[v1] = 1;
  sub_2528BE8C0();
  v7 = *(v0 + 48);
  v4[2 * v1] = 2;
  sub_2528BE8C0();
  v8 = *(v0 + 48);
  v4[3 * v1] = 3;
  sub_2528BE8C0();
  v9 = sub_25278F510(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27F4FDF50 = v9;
  return result;
}

HomeAppIntents::LockState_optional __swiftcall LockState.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2528C0F30();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t LockState.rawValue.getter()
{
  v1 = 0x64656B636F6C6E75;
  v2 = 0x64656D6D616ALL;
  if (*v0 != 2)
  {
    v2 = 0x6E776F6E6B6E75;
  }

  if (*v0)
  {
    v1 = 0x64656B636F6CLL;
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

uint64_t sub_2527CB050()
{
  v1 = *v0;
  sub_2528C1130();
  sub_2528C0A40();

  return sub_2528C1180();
}

uint64_t sub_2527CB10C()
{
  *v0;
  *v0;
  *v0;
  sub_2528C0A40();
}

uint64_t sub_2527CB1B4()
{
  v1 = *v0;
  sub_2528C1130();
  sub_2528C0A40();

  return sub_2528C1180();
}

void sub_2527CB278(uint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x64656B636F6C6E75;
  v4 = 0xE600000000000000;
  v5 = 0x64656D6D616ALL;
  if (*v1 != 2)
  {
    v5 = 0x6E776F6E6B6E75;
    v4 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = 0x64656B636F6CLL;
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

uint64_t sub_2527CB314(uint64_t a1)
{
  v2 = sub_2527D094C();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t sub_2527CB384(uint64_t a1)
{
  v2 = sub_2527D08E0();

  return MEMORY[0x28210C300](a1, v2);
}

uint64_t sub_2527CB430()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE710, &unk_2528CD900);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD388, &qword_2528C7E70);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2528CAE70;
  v4 = (v3 + v2);
  v5 = *(v0 + 48);
  *v4 = 0;
  sub_2528BE8C0();
  v6 = *(v0 + 48);
  v4[v1] = 1;
  sub_2528BE8C0();
  v7 = *(v0 + 48);
  v4[2 * v1] = 2;
  sub_2528BE8C0();
  v8 = *(v0 + 48);
  v4[3 * v1] = 3;
  sub_2528BE8C0();
  v9 = *(v0 + 48);
  v4[4 * v1] = 4;
  sub_2528BE8C0();
  v10 = sub_25278F6F8(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27F4FDF70 = v10;
  return result;
}

HomeAppIntents::PositionState_optional __swiftcall PositionState.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2528C0F30();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PositionState.rawValue.getter()
{
  v1 = *v0;
  v2 = 1852141679;
  v3 = 0x676E696E65706FLL;
  v4 = 0x676E69736F6C63;
  if (v1 != 3)
  {
    v4 = 0x646570706F7473;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6465736F6C63;
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

uint64_t sub_2527CB73C()
{
  v1 = *v0;
  sub_2528C1130();
  sub_2528C0A40();

  return sub_2528C1180();
}

uint64_t sub_2527CB814()
{
  *v0;
  *v0;
  *v0;
  sub_2528C0A40();
}

uint64_t sub_2527CB8D8()
{
  v1 = *v0;
  sub_2528C1130();
  sub_2528C0A40();

  return sub_2528C1180();
}

void sub_2527CB9B8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1852141679;
  v5 = 0x676E696E65706FLL;
  v6 = 0x676E69736F6C63;
  if (v2 != 3)
  {
    v6 = 0x646570706F7473;
  }

  if (v2 != 2)
  {
    v5 = v6;
  }

  if (*v1)
  {
    v4 = 0x6465736F6C63;
    v3 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  if (*v1 > 1u)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_2527CBA70(uint64_t a1)
{
  v2 = sub_2527D0DA8();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t sub_2527CBAE0(uint64_t a1)
{
  v2 = sub_2527D0D3C();

  return MEMORY[0x28210C300](a1, v2);
}

uint64_t sub_2527CBB3C()
{
  v0 = sub_2528BE9F0();
  __swift_allocate_value_buffer(v0, qword_27F4FDF78);
  __swift_project_value_buffer(v0, qword_27F4FDF78);
  return sub_2528BE9D0();
}

uint64_t sub_2527CBBC4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE708, &unk_2528CD8F0);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD378, &qword_2528C7E60);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2528CAE80;
  v4 = (v3 + v2);
  v5 = *(v0 + 48);
  *v4 = 0;
  sub_2528BE8C0();
  v6 = *(v0 + 48);
  v4[v1] = 1;
  sub_2528BE8C0();
  v7 = *(v0 + 48);
  v4[2 * v1] = 2;
  sub_2528BE8C0();
  v8 = *(v0 + 48);
  v4[3 * v1] = 3;
  sub_2528BE8C0();
  v9 = *(v0 + 48);
  v4[4 * v1] = 4;
  sub_2528BE8C0();
  v10 = *(v0 + 48);
  v4[5 * v1] = 5;
  sub_2528BE8C0();
  v11 = *(v0 + 48);
  v4[6 * v1] = 6;
  sub_2528BE8C0();
  v12 = *(v0 + 48);
  v4[7 * v1] = 7;
  sub_2528BE8C0();
  v13 = *(v0 + 48);
  v4[8 * v1] = 8;
  sub_2528BE8C0();
  v14 = *(v0 + 48);
  v4[9 * v1] = 9;
  sub_2528BE8C0();
  v15 = *(v0 + 48);
  v4[10 * v1] = 10;
  sub_2528BE8C0();
  v16 = *(v0 + 48);
  v4[11 * v1] = 11;
  sub_2528BE8C0();
  v17 = *(v0 + 48);
  v4[12 * v1] = 12;
  sub_2528BE8C0();
  v18 = *(v0 + 48);
  v4[13 * v1] = 13;
  sub_2528BE8C0();
  v19 = sub_25278F8E0(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27F4FDF90 = v19;
  return result;
}

HomeAppIntents::RobotVacuumCleanerCleanMode_optional __swiftcall RobotVacuumCleanerCleanMode.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2528C0F30();

  v5 = 14;
  if (v3 < 0xE)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t RobotVacuumCleanerCleanMode.rawValue.getter()
{
  result = 0x6D7575636176;
  switch(*v0)
  {
    case 1:
      result = 7368557;
      break;
    case 2:
      result = 0x68546D7575636176;
      break;
    case 3:
      result = 0x61656C4370656564;
      break;
    case 4:
      result = 1869903201;
      break;
    case 5:
      result = 0x7465697571;
      break;
    case 6:
      result = 0x6B63697571;
      break;
    case 7:
      result = 0x6573696F4E776F6CLL;
      break;
    case 8:
      result = 0x6772656E45776F6CLL;
      break;
    case 9:
      result = 0x6E6F697461636176;
      break;
    case 0xA:
      result = 0x746867696ELL;
      break;
    case 0xB:
      result = 7954788;
      break;
    case 0xC:
      result = 7235949;
      break;
    case 0xD:
      result = 7889261;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2527CC17C@<X0>(uint64_t *a1@<X8>)
{
  result = RobotVacuumCleanerCleanMode.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2527CC1C8(uint64_t a1)
{
  v2 = sub_2527C75E8();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t sub_2527CC238(uint64_t a1)
{
  v2 = sub_2527D1198();

  return MEMORY[0x28210C300](a1, v2);
}

uint64_t sub_2527CC2C4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE700, &unk_2528CD8E0);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD368, &qword_2528C7E50);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2528C17D0;
  v4 = (v3 + v2);
  v5 = *(v0 + 48);
  *v4 = 0;
  sub_2528BE8C0();
  v6 = *(v0 + 48);
  v4[v1] = 1;
  sub_2528BE8C0();
  v7 = *(v0 + 48);
  v4[2 * v1] = 2;
  sub_2528BE8C0();
  v8 = sub_25278FAF0(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27F4FDFB0 = v8;
  return result;
}

HomeAppIntents::RobotVacuumBasicRunStateCommand_optional __swiftcall RobotVacuumBasicRunStateCommand.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2528C0F30();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t RobotVacuumBasicRunStateCommand.rawValue.getter()
{
  v1 = 0x656D75736572;
  if (*v0 != 1)
  {
    v1 = 0x6C65636E6163;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6573756170;
  }
}

uint64_t sub_2527CC524(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x656D75736572;
  if (v2 != 1)
  {
    v3 = 0x6C65636E6163;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x6573756170;
  }

  if (v2)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  v6 = 0x656D75736572;
  if (*a2 != 1)
  {
    v6 = 0x6C65636E6163;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x6573756170;
  }

  if (*a2)
  {
    v8 = 0xE600000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_2528C1060();
  }

  return v9 & 1;
}

uint64_t sub_2527CC614()
{
  v1 = *v0;
  sub_2528C1130();
  sub_2528C0A40();

  return sub_2528C1180();
}

uint64_t sub_2527CC6AC()
{
  *v0;
  *v0;
  sub_2528C0A40();
}

uint64_t sub_2527CC730()
{
  v1 = *v0;
  sub_2528C1130();
  sub_2528C0A40();

  return sub_2528C1180();
}

void sub_2527CC7D0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x656D75736572;
  if (v2 != 1)
  {
    v4 = 0x6C65636E6163;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x6573756170;
  }

  if (!v5)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_2527CC848(uint64_t a1)
{
  v2 = sub_2527C7444();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t sub_2527CC8B8(uint64_t a1)
{
  v2 = sub_2527D154C();

  return MEMORY[0x28210C300](a1, v2);
}

uint64_t sub_2527CC954(uint64_t a1, uint64_t *a2)
{
  v3 = sub_2528BE9F0();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_2528BE9D0();
}

uint64_t sub_2527CC9D8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE6F8, &unk_2528CD8D0);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD358, &qword_2528C7E40);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2528CAE90;
  v4 = (v3 + v2);
  v5 = *(v0 + 48);
  *v4 = 0;
  sub_2528BE8C0();
  v6 = *(v0 + 48);
  v4[v1] = 1;
  sub_2528BE8C0();
  v7 = *(v0 + 48);
  v4[2 * v1] = 2;
  sub_2528BE8C0();
  v8 = *(v0 + 48);
  v4[3 * v1] = 3;
  sub_2528BE8C0();
  v9 = *(v0 + 48);
  v4[4 * v1] = 4;
  sub_2528BE8C0();
  v10 = *(v0 + 48);
  v4[5 * v1] = 5;
  sub_2528BE8C0();
  v11 = *(v0 + 48);
  v4[6 * v1] = 6;
  sub_2528BE8C0();
  v12 = *(v0 + 48);
  v4[7 * v1] = 7;
  sub_2528BE8C0();
  v13 = *(v0 + 48);
  v4[8 * v1] = 8;
  sub_2528BE8C0();
  v14 = *(v0 + 48);
  v4[9 * v1] = 9;
  sub_2528BE8C0();
  v15 = *(v0 + 48);
  v4[10 * v1] = 10;
  sub_2528BE8C0();
  v16 = *(v0 + 48);
  v4[11 * v1] = 11;
  sub_2528BE8C0();
  v17 = *(v0 + 48);
  v4[12 * v1] = 12;
  sub_2528BE8C0();
  v18 = *(v0 + 48);
  v4[13 * v1] = 13;
  sub_2528BE8C0();
  v19 = *(v0 + 48);
  v4[14 * v1] = 14;
  sub_2528BE8C0();
  v20 = *(v0 + 48);
  v4[15 * v1] = 15;
  sub_2528BE8C0();
  v21 = *(v0 + 48);
  v4[16 * v1] = 16;
  sub_2528BE8C0();
  v22 = *(v0 + 48);
  v4[17 * v1] = 17;
  sub_2528BE8C0();
  v23 = *(v0 + 48);
  v4[18 * v1] = 18;
  sub_2528BE8C0();
  v24 = *(v0 + 48);
  v4[19 * v1] = 19;
  sub_2528BE8C0();
  v25 = *(v0 + 48);
  v4[20 * v1] = 20;
  sub_2528BE8C0();
  v26 = *(v0 + 48);
  v4[21 * v1] = 21;
  sub_2528BE8C0();
  v27 = *(v0 + 48);
  v4[22 * v1] = 22;
  sub_2528BE8C0();
  v28 = *(v0 + 48);
  v4[23 * v1] = 23;
  sub_2528BE8C0();
  v29 = *(v0 + 48);
  v4[24 * v1] = 24;
  sub_2528BE8C0();
  v30 = *(v0 + 48);
  v4[25 * v1] = 25;
  sub_2528BE8C0();
  v31 = *(v0 + 48);
  v4[26 * v1] = 26;
  sub_2528BE8C0();
  v32 = sub_25278FCD8(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27F4FDFD0 = v32;
  return result;
}

HomeAppIntents::RobotVacuumCleanerRunState_optional __swiftcall RobotVacuumCleanerRunState.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2528C1070();

  v5 = 0;
  v6 = 9;
  switch(v3)
  {
    case 0:
      goto LABEL_23;
    case 1:
      v5 = 1;
      goto LABEL_23;
    case 2:
      v5 = 2;
      goto LABEL_23;
    case 3:
      v5 = 3;
      goto LABEL_23;
    case 4:
      v5 = 4;
      goto LABEL_23;
    case 5:
      v5 = 5;
      goto LABEL_23;
    case 6:
      v5 = 6;
      goto LABEL_23;
    case 7:
      v5 = 7;
      goto LABEL_23;
    case 8:
      v5 = 8;
LABEL_23:
      v6 = v5;
      break;
    case 9:
      break;
    case 10:
      v6 = 10;
      break;
    case 11:
      v6 = 11;
      break;
    case 12:
      v6 = 12;
      break;
    case 13:
      v6 = 13;
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    case 25:
      v6 = 25;
      break;
    case 26:
      v6 = 26;
      break;
    default:
      v6 = 27;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_2527CD1AC(char *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v14 = *a1;
  v13 = *a2;
  v6 = a5();
  v8 = v7;
  if (v6 == a5() && v8 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2528C1060();
  }

  return v11 & 1;
}

uint64_t sub_2527CD26C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = *v3;
  v6 = sub_2528C1130();
  a3(v6);
  sub_2528C0A40();

  return sub_2528C1180();
}

uint64_t sub_2527CD2F4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v6 = *v4;
  a4();
  sub_2528C0A40();
}

uint64_t sub_2527CD374(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = *v4;
  v7 = sub_2528C1130();
  a4(v7);
  sub_2528C0A40();

  return sub_2528C1180();
}

unint64_t sub_2527CD3EC@<X0>(unint64_t *a1@<X8>)
{
  result = RobotVacuumCleanerRunState.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2527CD46C(uint64_t a1)
{
  v2 = sub_2527C7594();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t sub_2527CD4DC(uint64_t a1)
{
  v2 = sub_2527D1954();

  return MEMORY[0x28210C300](a1, v2);
}

uint64_t sub_2527CD538()
{
  v0 = sub_2528BE9F0();
  __swift_allocate_value_buffer(v0, qword_27F4FDFD8);
  __swift_project_value_buffer(v0, qword_27F4FDFD8);
  return sub_2528BE9D0();
}

uint64_t sub_2527CD5C0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE6F0, &unk_2528CD8C0);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD348, &qword_2528C7E30);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2528CAE70;
  v4 = (v3 + v2);
  v5 = *(v0 + 48);
  *v4 = 0;
  sub_2528BE8C0();
  v6 = *(v0 + 48);
  v4[v1] = 1;
  sub_2528BE8C0();
  v7 = *(v0 + 48);
  v4[2 * v1] = 2;
  sub_2528BE8C0();
  v8 = *(v0 + 48);
  v4[3 * v1] = 3;
  sub_2528BE8C0();
  v9 = *(v0 + 48);
  v4[4 * v1] = 4;
  sub_2528BE8C0();
  v10 = sub_25278FEE8(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27F4FDFF0 = v10;
  return result;
}