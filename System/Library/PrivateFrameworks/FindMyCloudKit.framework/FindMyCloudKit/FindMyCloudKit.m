void *sub_24ACF36F8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_24ACF3760(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24AD5E404();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_24ACF380C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_24AD5E404();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24ACF38B0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24AD5E404();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24ACF395C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_24AD5E404();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24ACF3A08()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24ACF3A40()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24ACF3A80()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24ACF3AB8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_state;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_24ACF3B10(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_state;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_24ACF3B64(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_24ACF3B70()
{
  v1 = sub_24AD5E404();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24ACF3C34()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5FA0, &qword_24AD5FE50);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_24AD5E404();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  v12 = *(v0 + 16);
  swift_unknownObjectRelease();
  v13 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_24ACF3D98()
{
  v1 = sub_24AD5E404();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24ACF3E68()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24ACF3EA8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24ACF3EE0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 160);
  return result;
}

uint64_t sub_24ACF3F28(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 160) = v2;
  return result;
}

uint64_t sub_24ACF3F90()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24ACF3FC8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

_OWORD *sub_24ACF4008(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_24ACF40E0()
{
  v0 = sub_24AD5E7A4();
  __swift_allocate_value_buffer(v0, qword_281065470);
  v1 = __swift_project_value_buffer(v0, qword_281065470);
  if (qword_281064A60 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_281065418);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_24ACF41A8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 88) = a4;
  *(v5 + 32) = a3;
  *(v5 + 40) = v4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = sub_24AD5E674();
  *(v5 + 48) = v6;
  v7 = *(v6 - 8);
  *(v5 + 56) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 64) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24ACF4270, 0, 0);
}

uint64_t sub_24ACF4270()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  swift_defaultActor_initialize();
  v3[14] = 0;
  (*(v2 + 104))(v1, *MEMORY[0x277D094F8], v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5FB0, &qword_24AD5FE68);
  v6 = *(v5 + 52);
  v7 = (*(v5 + 48) + 3) & 0x1FFFFFFFCLL;
  v8 = swift_allocObject();
  *(v8 + ((*(*v8 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  (*(v2 + 16))(v8 + *(*v8 + *MEMORY[0x277D841D0] + 16), v1, v4);
  (*(v2 + 8))(v1, v4);
  v3[15] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5FB8, &unk_24AD5FE70);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  v3[16] = sub_24AD5E1C4();
  v12 = OBJC_IVAR____TtC14FindMyCloudKit21CloudKitCacheDatabase_logger;
  if (qword_281064A60 != -1)
  {
    swift_once();
  }

  v13 = *(v0 + 88);
  v15 = *(v0 + 32);
  v14 = *(v0 + 40);
  v16 = *(v0 + 16);
  v17 = *(v0 + 24);
  v18 = sub_24AD5E7A4();
  v19 = __swift_project_value_buffer(v18, qword_281065418);
  (*(*(v18 - 8) + 16))(v14 + v12, v19, v18);
  MEMORY[0x24C22E250](0xD000000000000013, 0x800000024AD619A0, 0, 0);
  MEMORY[0x24C22E250](0x6E616843656E6F5ALL, 0xEF6E656B6F546567, 0, 0);
  MEMORY[0x24C22E250](0x656E6F5A74736F4CLL, 0xE800000000000000, 0, 0);
  MEMORY[0x24C22E250](0x73626F6C424B43, 0xE700000000000000, 0, 0);
  *(v14 + OBJC_IVAR____TtC14FindMyCloudKit21CloudKitCacheDatabase_currentVersion) = 2;
  v20 = OBJC_IVAR____TtC14FindMyCloudKit21CloudKitCacheDatabase_baseContainerURL;
  v21 = sub_24AD5E364();
  *(v0 + 72) = v21;
  v22 = *(v21 - 8);
  *(v0 + 80) = v22;
  (*(v22 + 16))(v14 + v20, v16, v21);
  v23 = (v14 + OBJC_IVAR____TtC14FindMyCloudKit21CloudKitCacheDatabase_prefix);
  *v23 = v17;
  v23[1] = v15;
  *(v14 + OBJC_IVAR____TtC14FindMyCloudKit21CloudKitCacheDatabase_temporary) = v13;

  return MEMORY[0x2822009F8](sub_24ACF4604, v14, 0);
}

uint64_t sub_24ACF4604()
{
  v1 = v0[8];
  (*(v0[10] + 8))(v0[2], v0[9]);

  v2 = v0[1];
  v3 = v0[5];

  return v2(v3);
}

uint64_t sub_24ACF46A8()
{
  v1 = *(v0 + 24);
  type metadata accessor for CloudKitCacheDatabase();
  sub_24AD0328C(&qword_281064FE8, type metadata accessor for CloudKitCacheDatabase);
  *(v0 + 32) = sub_24AD5E694();

  return MEMORY[0x2822009F8](sub_24ACF475C, 0, 0);
}

uint64_t sub_24ACF475C()
{
  v1 = v0[4];
  if (v1)
  {
    v2 = swift_task_alloc();
    v0[5] = v2;
    *v2 = v0;
    v2[1] = sub_24ACF48D4;
    v3 = v0[3];

    return sub_24ACF4AF8(v1);
  }

  else
  {
    v5 = sub_24AD5E664();
    sub_24AD0328C(&qword_27EFA5EF0, MEMORY[0x277D094E8]);
    swift_allocError();
    (*(*(v5 - 8) + 104))(v6, *MEMORY[0x277D094E0], v5);
    swift_willThrow();
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_24ACF48D4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v7 = sub_24ACF4A94;
  }

  else
  {
    *(v4 + 56) = a1;
    v7 = sub_24ACF49FC;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_24ACF49FC()
{
  v1 = v0[7];
  v2 = v0[4];
  sub_24AD5E174();
  v3 = v0[2];

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_24ACF4A94()
{
  v1 = v0[4];

  v2 = v0[6];
  v3 = v0[1];

  return v3();
}

uint64_t sub_24ACF4AF8(uint64_t a1)
{
  v2[13] = a1;
  v2[14] = v1;
  v3 = sub_24AD5E524();
  v2[15] = v3;
  v4 = *(v3 - 8);
  v2[16] = v4;
  v5 = *(v4 + 64) + 15;
  v2[17] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EE8, &qword_24AD5FDD0) - 8) + 64) + 15;
  v2[18] = swift_task_alloc();
  v7 = sub_24AD5E554();
  v2[19] = v7;
  v8 = *(v7 - 8);
  v2[20] = v8;
  v9 = *(v8 + 64) + 15;
  v2[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24ACF4C4C, v1, 0);
}

uint64_t sub_24ACF4C4C()
{
  v50 = v0[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EC0, &qword_24AD5FDB0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_24AD5F810;
  if (qword_281065040 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EA0, &qword_24AD5FD90);
  v3 = __swift_project_value_buffer(v2, qword_281065048);
  *(v1 + 56) = v2;
  v4 = sub_24AD062C8(&qword_2810653C0, &qword_27EFA5EA0, &qword_24AD5FD90);
  *(v1 + 64) = v4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v1 + 32));
  v6 = *(*(v2 - 8) + 16);
  v6(boxed_opaque_existential_1, v3, v2);
  if (qword_281065020 != -1)
  {
    swift_once();
  }

  v7 = v0[20];
  v8 = v0[21];
  v9 = v0[19];
  v10 = v0[13];
  v11 = __swift_project_value_buffer(v2, qword_281065028);
  *(v1 + 96) = v2;
  *(v1 + 104) = v4;
  v12 = v11;
  v13 = __swift_allocate_boxed_opaque_existential_1((v1 + 72));
  v6(v13, v12, v2);
  sub_24AD5E4A4();

  v14 = MEMORY[0x277D6AF40];
  v0[5] = v9;
  v0[6] = v14;
  v15 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  (*(v7 + 16))(v15, v8, v9);
  sub_24AD5E464();
  v16 = v0[18];
  v18 = v0[15];
  v17 = v0[16];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5F00, &qword_24AD5FDE8);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v45 = sub_24AD5E194();
  v46 = MEMORY[0x277D84F90];
  v51 = MEMORY[0x277D84F90];
  sub_24AD5EE54();
  sub_24AD5EF24();
  v49 = *(v17 + 48);
  if (v49(v16, 1, v18) != 1)
  {
    v30 = v12;
    v31 = v0[16];
    v48 = *(v31 + 32);
    v47 = (v31 + 8);
    v46 = MEMORY[0x277D84F90];
    do
    {
      v34 = v0[17];
      v35 = v0[15];
      v48(v34, v0[18], v35);
      sub_24AD5E534();
      v37 = v0[7];
      v36 = v0[8];
      v38 = v30;
      sub_24AD5E534();
      v39 = v0[9];
      v40 = v0[10];
      sub_24AD06578(0, &qword_281064998, 0x277CBC5F8);
      v41 = sub_24AD5EB74();
      v42 = [objc_allocWithZone(MEMORY[0x277CBC5E8]) initWithZoneID_];

      v43 = (*v47)(v34, v35);
      if (v42)
      {
        MEMORY[0x24C22E590](v43);
        if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v44 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_24AD5E8E4();
        }

        sub_24AD5E904();
        v46 = v51;
      }

      v32 = v0[18];
      v33 = v0[15];
      sub_24AD5EF24();
      v30 = v38;
    }

    while (v49(v32, 1, v33) != 1);
  }

  v23 = v0[20];
  v22 = v0[21];
  v24 = v0[19];

  v0[12] = v46;
  sub_24AD5E184();

  (*(v23 + 8))(v22, v24);
  v25 = v0[21];
  v26 = v0[17];
  v27 = v0[18];

  v28 = v0[1];

  return v28(v45);
}

uint64_t sub_24ACF5230@<X0>(uint64_t a1@<X0>, char *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v96 = a4;
  v105 = a3;
  v90 = a2;
  v87 = a1;
  v99 = a7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EE8, &qword_24AD5FDD0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v83 = &v81 - v11;
  v12 = sub_24AD5E524();
  v85 = *(v12 - 8);
  v86 = v12;
  v13 = *(v85 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v82 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v84 = &v81 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EA8, &qword_24AD5FD98);
  v94 = *(v17 - 8);
  v95 = v17;
  v18 = *(v94 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v88 = &v81 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v81 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v89 = &v81 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v91 = &v81 - v27;
  MEMORY[0x28223BE20](v26);
  v92 = &v81 - v28;
  v29 = sub_24AD5E554();
  v93 = *(v29 - 8);
  v30 = *(v93 + 64);
  v31 = MEMORY[0x28223BE20](v29);
  v33 = &v81 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v100 = &v81 - v34;
  if (*a5 != -1)
  {
    swift_once();
  }

  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EB0, &qword_24AD5FDA0);
  v36 = __swift_project_value_buffer(v35, a6);
  v103 = v35;
  v104 = sub_24AD062C8(&qword_27EFA5F28, &qword_27EFA5EB0, &qword_24AD5FDA0);
  v37 = __swift_allocate_boxed_opaque_existential_1(&v101);
  v38 = *(*(v35 - 8) + 16);
  v81 = v36;
  v38(v37, v36, v35);
  sub_24AD5E4B4();
  __swift_destroy_boxed_opaque_existential_1Tm(&v101);
  if (qword_281065160 != -1)
  {
    swift_once();
  }

  v98 = v29;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EA0, &qword_24AD5FD90);
  __swift_project_value_buffer(v39, qword_281065168);
  v101 = v87;
  v102 = v90;
  v40 = v23;
  sub_24AD5E504();
  v41 = v105;
  if (qword_281065180 != -1)
  {
    swift_once();
  }

  v90 = v33;
  __swift_project_value_buffer(v39, qword_281065188);
  v42 = [v41 recordName];
  v43 = sub_24AD5E844();
  v45 = v44;

  v101 = v43;
  v102 = v45;
  v46 = v88;
  sub_24AD5E504();

  v47 = v89;
  sub_24AD5E4F4();
  v48 = v95;
  v49 = *(v94 + 8);
  v49(v46, v95);
  v49(v40, v48);
  if (qword_281065040 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v39, qword_281065048);
  v50 = [v41 zoneID];
  v94 = v39;
  v51 = v50;
  v52 = [v50 zoneName];

  v53 = sub_24AD5E844();
  v55 = v54;

  v101 = v53;
  v102 = v55;
  sub_24AD5E504();

  v56 = v91;
  sub_24AD5E4F4();
  v49(v40, v48);
  v49(v47, v48);
  if (qword_281065020 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v94, qword_281065028);
  v57 = [v105 zoneID];
  v58 = [v57 ownerName];

  v59 = sub_24AD5E844();
  v61 = v60;

  v101 = v59;
  v102 = v61;
  sub_24AD5E504();

  v62 = v92;
  sub_24AD5E4F4();
  v49(v47, v48);
  v49(v56, v48);
  v63 = MEMORY[0x277D6AF40];
  v64 = v100;
  v65 = v98;
  v66 = v90;
  sub_24AD5E5B4();
  v49(v62, v48);
  v67 = v93;
  v68 = *(v93 + 8);
  v68(v66, v65);
  v103 = v65;
  v104 = v63;
  v69 = __swift_allocate_boxed_opaque_existential_1(&v101);
  (*(v67 + 16))(v69, v64, v65);
  v70 = v97;
  sub_24AD5E464();
  if (v70)
  {

    v68(v64, v65);
    __swift_destroy_boxed_opaque_existential_1Tm(&v101);
LABEL_15:
    v74 = sub_24AD5E3C4();
    return (*(*(v74 - 8) + 56))(v99, 1, 1, v74);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(&v101);
  sub_24AD5EE54();
  v71 = v83;
  sub_24AD5EF24();

  v73 = v85;
  v72 = v86;
  if ((*(v85 + 48))(v71, 1, v86) == 1)
  {

    v68(v100, v65);
    goto LABEL_15;
  }

  v76 = v82;
  v77 = v71;
  v78 = *(v73 + 32);
  v78(v82, v77, v72);
  v78(v84, v76, v72);
  v79 = sub_24AD5E3C4();
  v80 = v84;
  sub_24AD5E534();

  (*(v73 + 8))(v80, v72);
  v68(v100, v98);
  return (*(*(v79 - 8) + 56))(v99, 0, 1, v79);
}

uint64_t sub_24ACF5C14(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v88 = a4;
  v97 = a3;
  v92 = a2;
  v79 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EE8, &qword_24AD5FDD0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v76 = &v73 - v6;
  v7 = sub_24AD5E524();
  v77 = *(v7 - 8);
  v78 = v7;
  v8 = *(v77 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v74 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v75 = &v73 - v11;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EA8, &qword_24AD5FD98);
  v12 = *(v87 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v87);
  v81 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v82 = &v73 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v80 = &v73 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v84 = &v73 - v21;
  MEMORY[0x28223BE20](v20);
  v85 = &v73 - v22;
  v23 = sub_24AD5E554();
  v86 = *(v23 - 8);
  v24 = *(v86 + 64);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v73 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v90 = &v73 - v28;
  if (qword_2810650E0 != -1)
  {
    swift_once();
  }

  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EA0, &qword_24AD5FD90);
  v30 = __swift_project_value_buffer(v29, qword_2810650E8);
  v95 = v29;
  v96 = sub_24AD062C8(&qword_2810653C0, &qword_27EFA5EA0, &qword_24AD5FD90);
  v31 = __swift_allocate_boxed_opaque_existential_1(&v93);
  v32 = *(*(v29 - 8) + 16);
  v73 = v30;
  v32(v31, v30, v29);
  v91 = v23;
  sub_24AD5E4B4();
  __swift_destroy_boxed_opaque_existential_1Tm(&v93);
  if (qword_281065160 != -1)
  {
    swift_once();
  }

  v83 = v27;
  __swift_project_value_buffer(v29, qword_281065168);
  v93 = v79;
  v94 = v92;
  v33 = v82;
  sub_24AD5E504();
  v34 = v97;
  if (qword_281065180 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v29, qword_281065188);
  v35 = [v34 recordName];
  v36 = sub_24AD5E844();
  v38 = v37;

  v93 = v36;
  v94 = v38;
  v39 = v81;
  sub_24AD5E504();

  v40 = v80;
  sub_24AD5E4F4();
  v41 = *(v12 + 8);
  v92 = v12 + 8;
  v42 = v87;
  v41(v39, v87);
  v41(v33, v42);
  v43 = v40;
  if (qword_281065040 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v29, qword_281065048);
  v44 = [v34 zoneID];
  v45 = [v44 zoneName];

  v46 = sub_24AD5E844();
  v48 = v47;

  v93 = v46;
  v94 = v48;
  sub_24AD5E504();

  v49 = v84;
  sub_24AD5E4F4();
  v41(v33, v42);
  v41(v43, v42);
  if (qword_281065020 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v29, qword_281065028);
  v50 = [v97 zoneID];
  v51 = [v50 ownerName];

  v52 = sub_24AD5E844();
  v54 = v53;

  v93 = v52;
  v94 = v54;
  sub_24AD5E504();

  v55 = v85;
  sub_24AD5E4F4();
  v41(v43, v42);
  v41(v49, v42);
  v56 = MEMORY[0x277D6AF40];
  v57 = v90;
  v58 = v91;
  v59 = v83;
  sub_24AD5E5B4();
  v60 = v42;
  v61 = v57;
  v41(v55, v60);
  v62 = v86;
  v63 = *(v86 + 8);
  v63(v59, v58);
  v95 = v58;
  v96 = v56;
  v64 = __swift_allocate_boxed_opaque_existential_1(&v93);
  (*(v62 + 16))(v64, v61, v58);
  v65 = v89;
  sub_24AD5E464();
  if (v65)
  {

    v63(v61, v58);
    __swift_destroy_boxed_opaque_existential_1Tm(&v93);
    return 0;
  }

  else
  {
    v97 = 0;
    __swift_destroy_boxed_opaque_existential_1Tm(&v93);
    sub_24AD5EE54();
    v67 = v76;
    sub_24AD5EF24();

    v69 = v77;
    v68 = v78;
    if ((*(v77 + 48))(v67, 1, v78) == 1)
    {

      v63(v61, v58);
      return 0;
    }

    else
    {
      v70 = *(v69 + 32);
      v71 = v74;
      v70(v74, v67, v68);
      v72 = v75;
      v70(v75, v71, v68);
      sub_24AD5E534();

      (*(v69 + 8))(v72, v68);
      v63(v90, v91);
      return v93;
    }
  }
}

uint64_t sub_24ACF6588(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x2822009F8](sub_24ACF65AC, v3, 0);
}

uint64_t sub_24ACF65AC()
{
  v1 = *(v0 + 48);
  type metadata accessor for CloudKitCacheDatabase();
  sub_24AD0328C(&qword_281064FE8, type metadata accessor for CloudKitCacheDatabase);
  *(v0 + 56) = sub_24AD5E694();

  return MEMORY[0x2822009F8](sub_24ACF6660, 0, 0);
}

uint64_t sub_24ACF6660()
{
  if (v0[7])
  {
    v1 = v0[6];

    return MEMORY[0x2822009F8](sub_24ACF67A4, v1, 0);
  }

  else
  {
    v2 = sub_24AD5E664();
    sub_24AD0328C(&qword_27EFA5EF0, MEMORY[0x277D094E8]);
    swift_allocError();
    (*(*(v2 - 8) + 104))(v3, *MEMORY[0x277D094E0], v2);
    swift_willThrow();
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_24ACF67A4()
{
  v1 = *(v0 + 48);
  *(v0 + 64) = sub_24ACF6918(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 56));
  *(v0 + 72) = 0;

  return MEMORY[0x2822009F8](sub_24ACF6838, 0, 0);
}

uint64_t sub_24ACF6838()
{
  v1 = v0[7];
  v2 = v0[8];
  sub_24AD5E174();

  v3 = v0[2];
  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_24ACF68B4()
{
  v1 = v0[7];

  v2 = v0[9];
  v3 = v0[1];

  return v3();
}

uint64_t sub_24ACF6918(id a1, uint64_t a2, void *a3, uint64_t a4)
{
  v87 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EE8, &qword_24AD5FDD0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v79 = &v77 - v9;
  v10 = sub_24AD5E524();
  v11 = *(v10 - 8);
  v80 = v10;
  v81 = v11;
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v77 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v78 = &v77 - v15;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EA8, &qword_24AD5FD98);
  v16 = *(v86 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v86);
  v20 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v77 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v77 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v84 = &v77 - v28;
  MEMORY[0x28223BE20](v27);
  v85 = &v77 - v29;
  v90 = sub_24AD5E554();
  v30 = *(v90 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v90);
  v33 = &v77 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = OBJC_IVAR____TtC14FindMyCloudKit21CloudKitCacheDatabase_cloudKitCacheTable;
  if (qword_281065160 != -1)
  {
    swift_once();
  }

  v91 = v33;
  v89 = v30;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EA0, &qword_24AD5FD90);
  __swift_project_value_buffer(v34, qword_281065168);
  v92 = a1;
  v93 = a2;
  sub_24AD5E504();
  if (qword_281065180 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v34, qword_281065188);
  v35 = [a3 recordName];
  v36 = sub_24AD5E844();
  v96 = v34;
  v38 = v37;

  v92 = v36;
  v93 = v38;
  sub_24AD5E504();

  sub_24AD5E4F4();
  v39 = a3;
  v40 = *(v16 + 8);
  v41 = v20;
  v42 = v86;
  v40(v41, v86);
  v40(v23, v42);
  if (qword_281065040 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v96, qword_281065048);
  v43 = [v39 zoneID];
  v82 = v39;
  v44 = v43;
  v45 = [v43 zoneName];

  v46 = sub_24AD5E844();
  v48 = v47;

  v92 = v46;
  v93 = v48;
  sub_24AD5E504();

  v49 = v23;
  v50 = v84;
  sub_24AD5E4F4();
  v40(v49, v42);
  v40(v26, v42);
  if (qword_281065020 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v96, qword_281065028);
  v51 = [v82 zoneID];
  v52 = [v51 ownerName];

  v53 = sub_24AD5E844();
  v55 = v54;

  v92 = v53;
  v93 = v55;
  sub_24AD5E504();

  v56 = v85;
  sub_24AD5E4F4();
  v40(v26, v42);
  v40(v50, v42);
  v57 = MEMORY[0x277D6AF40];
  v59 = v90;
  v58 = v91;
  sub_24AD5E5B4();
  v40(v56, v42);
  v94 = v59;
  v95 = v57;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v92);
  v61 = v89;
  (*(v89 + 16))(boxed_opaque_existential_1, v58, v59);
  v62 = v88;
  sub_24AD5E464();
  if (v62)
  {

    __swift_destroy_boxed_opaque_existential_1Tm(&v92);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(&v92);
    sub_24AD5EE54();
    v63 = v79;
    sub_24AD5EF24();

    v65 = v80;
    v64 = v81;
    if ((*(v81 + 48))(v63, 1, v80) != 1)
    {
      v71 = *(v64 + 32);
      v72 = v77;
      v71(v77, v63, v65);
      v73 = v78;
      v71(v78, v72, v65);
      v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5F08, &qword_24AD5FDF0);
      v75 = *(v74 + 48);
      v76 = *(v74 + 52);
      swift_allocObject();
      v69 = sub_24AD5E194();
      v92 = sub_24AD05A5C();
      sub_24AD5E184();

      (*(v81 + 8))(v73, v65);
      (*(v61 + 8))(v91, v59);
      return v69;
    }
  }

  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5F08, &qword_24AD5FDF0);
  v67 = *(v66 + 48);
  v68 = *(v66 + 52);
  swift_allocObject();
  v69 = sub_24AD5E194();
  (*(v61 + 8))(v58, v59);
  return v69;
}

uint64_t sub_24ACF71AC(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_24ACF71CC, v1, 0);
}

uint64_t sub_24ACF71CC()
{
  v1 = *(v0 + 32);
  type metadata accessor for CloudKitCacheDatabase();
  sub_24AD0328C(&qword_281064FE8, type metadata accessor for CloudKitCacheDatabase);
  *(v0 + 40) = sub_24AD5E694();

  return MEMORY[0x2822009F8](sub_24ACF7280, 0, 0);
}

uint64_t sub_24ACF7280()
{
  if (v0[5])
  {
    v1 = v0[4];

    return MEMORY[0x2822009F8](sub_24ACF73C4, v1, 0);
  }

  else
  {
    v2 = sub_24AD5E664();
    sub_24AD0328C(&qword_27EFA5EF0, MEMORY[0x277D094E8]);
    swift_allocError();
    (*(*(v2 - 8) + 104))(v3, *MEMORY[0x277D094E0], v2);
    swift_willThrow();
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_24ACF73C4()
{
  v1 = *(v0 + 32);
  *(v0 + 48) = sub_24ACF74E8(*(v0 + 24), *(v0 + 40));
  *(v0 + 56) = 0;

  return MEMORY[0x2822009F8](sub_24ACF7454, 0, 0);
}

uint64_t sub_24ACF7454()
{
  v1 = v0[5];
  v2 = v0[6];
  sub_24AD5E174();
  v3 = v0[2];

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_24ACF74E8(void *a1, void (*a2)(char *, char *, uint64_t))
{
  v70 = a2;
  v85 = *MEMORY[0x277D85DE8];
  v77 = sub_24AD5E524();
  v66 = *(v77 - 8);
  v3 = *(v66 + 64);
  MEMORY[0x28223BE20](v77);
  v76 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EE8, &qword_24AD5FDD0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v78 = &v66 - v7;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EA8, &qword_24AD5FD98);
  v8 = *(v69 - 1);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v69);
  v12 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v66 - v14;
  MEMORY[0x28223BE20](v13);
  v68 = &v66 - v16;
  v17 = sub_24AD5E554();
  v74 = *(v17 - 8);
  v75 = v17;
  v18 = *(v74 + 64);
  MEMORY[0x28223BE20](v17);
  v73 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = OBJC_IVAR____TtC14FindMyCloudKit21CloudKitCacheDatabase_cloudKitCacheTable;
  if (qword_281065020 != -1)
  {
    swift_once();
  }

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EA0, &qword_24AD5FD90);
  __swift_project_value_buffer(v20, qword_281065028);
  v21 = [a1 ownerName];
  v22 = sub_24AD5E844();
  v24 = v23;

  v81 = v22;
  v82 = v24;
  sub_24AD5E504();

  if (qword_281065040 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v20, qword_281065048);
  v25 = [a1 zoneName];
  v26 = sub_24AD5E844();
  v28 = v27;

  v81 = v26;
  v82 = v28;
  sub_24AD5E504();

  v29 = v68;
  sub_24AD5E4F4();
  v30 = *(v8 + 8);
  v31 = v12;
  v32 = v69;
  v30(v31, v69);
  v30(v15, v32);
  v33 = MEMORY[0x277D6AF40];
  v34 = v73;
  v35 = v75;
  sub_24AD5E5B4();
  v30(v29, v32);
  v83 = v35;
  v84 = v33;
  v36 = __swift_allocate_boxed_opaque_existential_1(&v81);
  v37 = v74;
  (*(v74 + 16))(v36, v34, v35);
  v38 = v71;
  v39 = sub_24AD5E464();
  v40 = v78;
  if (v38)
  {

    __swift_destroy_boxed_opaque_existential_1Tm(&v81);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5F98, &qword_24AD5FE48);
    v42 = *(v41 + 48);
    v43 = *(v41 + 52);
    swift_allocObject();
    v44 = sub_24AD5E194();
    v81 = MEMORY[0x277D84F90];
    sub_24AD5E184();
    (*(v37 + 8))(v34, v35);
  }

  else
  {
    v45 = v39;
    __swift_destroy_boxed_opaque_existential_1Tm(&v81);
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5F98, &qword_24AD5FE48);
    v47 = *(v46 + 48);
    v48 = *(v46 + 52);
    swift_allocObject();
    v67 = sub_24AD5E194();
    v49 = MEMORY[0x277D84F90];
    v80 = MEMORY[0x277D84F90];
    v68 = v45;
    v72 = sub_24AD5EE54();
    sub_24AD5EF24();
    v50 = v66;
    v51 = v77;
    v71 = *(v66 + 48);
    if (v71(v40, 1, v77) == 1)
    {
LABEL_8:

      v81 = v49;
      v44 = v67;
      sub_24AD5E184();

      (*(v74 + 8))(v73, v75);
    }

    else
    {
      v52 = *(v50 + 32);
      v69 = (v50 + 8);
      v70 = v52;
      v53 = v76;
      while (1)
      {
        v70(v53, v40, v51);
        if (qword_281065080 != -1)
        {
          swift_once();
        }

        v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EB8, &qword_24AD5FDA8);
        __swift_project_value_buffer(v54, qword_281065088);
        sub_24AD5E534();
        v56 = v81;
        v55 = v82;
        v57 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
        v58 = sub_24AD5E384();
        v79 = 0;
        v59 = [v57 initForReadingFromData:v58 error:&v79];

        v44 = v79;
        if (!v59)
        {
          v63 = v79;

          sub_24AD5E334();

          swift_willThrow();
          goto LABEL_20;
        }

        v60 = v79;
        [v59 _enableStrictSecureDecodingMode];
        v44 = sub_24AD06578(0, &qword_27EFA5F10, 0x277CCAAC8);
        sub_24AD06578(0, &qword_27EFA5F18, 0x277CBC5A0);
        if (!sub_24AD5EB84())
        {
          break;
        }

        sub_24AD06204(v56, v55);
        v53 = v76;
        v51 = v77;
        v61 = (*v69)(v76, v77);
        MEMORY[0x24C22E590](v61);
        if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v62 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_24AD5E8E4();
        }

        sub_24AD5E904();
        v49 = v80;
        v40 = v78;
        sub_24AD5EF24();
        if (v71(v40, 1, v51) == 1)
        {
          goto LABEL_8;
        }
      }

      sub_24AD06274();
      swift_allocError();
      swift_willThrow();

LABEL_20:

      sub_24AD06204(v56, v55);

      (*v69)(v76, v77);
      (*(v74 + 8))(v73, v75);
    }
  }

  v64 = *MEMORY[0x277D85DE8];
  return v44;
}

BOOL sub_24ACF7DD4(void *a1, uint64_t a2)
{
  v52 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EA8, &qword_24AD5FD98);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v42 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v42 - v13;
  MEMORY[0x28223BE20](v12);
  v48 = &v42 - v15;
  v16 = sub_24AD5E554();
  v50 = *(v16 - 8);
  v51 = v16;
  v17 = *(v50 + 64);
  MEMORY[0x28223BE20](v16);
  v46 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5F40, &qword_24AD5FE08);
  v47 = *(v49 - 8);
  v19 = *(v47 + 64);
  MEMORY[0x28223BE20](v49);
  v44 = &v42 - v20;
  v42 = OBJC_IVAR____TtC14FindMyCloudKit21CloudKitCacheDatabase_cloudKitCacheTable;
  if (qword_281065160 != -1)
  {
    swift_once();
  }

  v43 = v3;
  v45 = v14;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EA0, &qword_24AD5FD90);
  __swift_project_value_buffer(v21, qword_281065168);
  v53 = sub_24AD5EBC4();
  v54 = v22;
  sub_24AD5E504();

  if (qword_281065020 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v21, qword_281065028);
  v23 = [a1 ownerName];
  v24 = sub_24AD5E844();
  v26 = v25;

  v53 = v24;
  v54 = v26;
  sub_24AD5E504();

  v27 = v45;
  sub_24AD5E4F4();
  v28 = *(v4 + 8);
  v29 = v8;
  v30 = v43;
  v28(v29, v43);
  v28(v11, v30);
  if (qword_281065040 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v21, qword_281065048);
  v31 = [a1 zoneName];
  v32 = sub_24AD5E844();
  v34 = v33;

  v53 = v32;
  v54 = v34;
  sub_24AD5E504();

  v35 = v48;
  sub_24AD5E4F4();
  v28(v11, v30);
  v28(v27, v30);
  v36 = v51;
  v37 = v46;
  sub_24AD5E5B4();
  v28(v35, v30);
  v38 = v44;
  sub_24AD5E494();
  (*(v50 + 8))(v37, v36);
  v39 = v55;
  sub_24AD5E444();
  (*(v47 + 8))(v38, v49);
  if (!v39)
  {
    return v53 > 0;
  }

  return v40;
}

uint64_t sub_24ACF834C(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_24ACF836C, v1, 0);
}

uint64_t sub_24ACF836C()
{
  v1 = *(v0 + 32);
  type metadata accessor for CloudKitCacheDatabase();
  sub_24AD0328C(&qword_281064FE8, type metadata accessor for CloudKitCacheDatabase);
  *(v0 + 40) = sub_24AD5E694();

  return MEMORY[0x2822009F8](sub_24ACF8420, 0, 0);
}

uint64_t sub_24ACF8420()
{
  if (v0[5])
  {
    v1 = v0[4];

    return MEMORY[0x2822009F8](sub_24ACF8564, v1, 0);
  }

  else
  {
    v2 = sub_24AD5E664();
    sub_24AD0328C(&qword_27EFA5EF0, MEMORY[0x277D094E8]);
    swift_allocError();
    (*(*(v2 - 8) + 104))(v3, *MEMORY[0x277D094E0], v2);
    swift_willThrow();
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_24ACF8564()
{
  v1 = *(v0 + 32);
  *(v0 + 48) = sub_24ACF86D4(*(v0 + 24), *(v0 + 40));
  *(v0 + 56) = 0;

  return MEMORY[0x2822009F8](sub_24ACF85F4, 0, 0);
}

uint64_t sub_24ACF85F4()
{
  v1 = v0[5];
  v2 = v0[6];
  sub_24AD5E174();

  v3 = v0[2];
  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_24ACF8670()
{
  v1 = v0[5];

  v2 = v0[7];
  v3 = v0[1];

  return v3();
}

uint64_t sub_24ACF86D4(void *a1, unsigned int (*a2)(char *, uint64_t, uint64_t))
{
  v83 = a2;
  v87 = sub_24AD5E524();
  v74 = *(v87 - 8);
  v3 = *(v74 + 64);
  MEMORY[0x28223BE20](v87);
  v85 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EE8, &qword_24AD5FDD0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v86 = &v73 - v7;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EA8, &qword_24AD5FD98);
  v8 = *(v77 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v77);
  v12 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v73 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v73 - v17;
  MEMORY[0x28223BE20](v16);
  v78 = &v73 - v19;
  v81 = sub_24AD5E554();
  v79 = *(v81 - 8);
  v20 = *(v79 + 64);
  MEMORY[0x28223BE20](v81);
  v22 = &v73 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = OBJC_IVAR____TtC14FindMyCloudKit21CloudKitCacheDatabase_cloudKitCacheTable;
  if (qword_281065160 != -1)
  {
    swift_once();
  }

  v80 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EA0, &qword_24AD5FD90);
  __swift_project_value_buffer(v23, qword_281065168);
  v88 = sub_24AD5EBC4();
  v89 = v24;
  sub_24AD5E504();

  if (qword_281065020 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v23, qword_281065028);
  v25 = [a1 ownerName];
  v26 = sub_24AD5E844();
  v75 = a1;
  v27 = v26;
  v29 = v28;

  v88 = v27;
  v89 = v29;
  sub_24AD5E504();

  sub_24AD5E4F4();
  v30 = *(v8 + 8);
  v31 = v12;
  v32 = v77;
  v30(v31, v77);
  v30(v15, v32);
  if (qword_281065040 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v23, qword_281065048);
  v33 = [v75 zoneName];
  v34 = sub_24AD5E844();
  v36 = v35;

  v88 = v34;
  v89 = v36;
  sub_24AD5E504();

  v37 = v78;
  sub_24AD5E4F4();
  v30(v15, v32);
  v30(v18, v32);
  v38 = MEMORY[0x277D6AF40];
  v39 = v81;
  v40 = v80;
  sub_24AD5E5B4();
  v30(v37, v32);
  v90 = v39;
  v91 = v38;
  v41 = __swift_allocate_boxed_opaque_existential_1(&v88);
  v42 = v79;
  (*(v79 + 16))(v41, v40, v39);
  v43 = v84;
  v44 = sub_24AD5E464();
  if (v43)
  {

    __swift_destroy_boxed_opaque_existential_1Tm(&v88);
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5F68, &qword_24AD5FE30);
    v46 = *(v45 + 48);
    v47 = *(v45 + 52);
    swift_allocObject();
    v48 = sub_24AD5E194();
    (*(v42 + 8))(v40, v39);
    return v48;
  }

  v49 = v44;
  __swift_destroy_boxed_opaque_existential_1Tm(&v88);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5F68, &qword_24AD5FE30);
  v51 = *(v50 + 48);
  v52 = *(v50 + 52);
  swift_allocObject();
  v78 = sub_24AD5E194();
  v53 = MEMORY[0x277D84F90];
  v92 = MEMORY[0x277D84F90];
  v77 = v49;
  v54 = sub_24AD5EE54();
  v55 = v86;
  v84 = v54;
  sub_24AD5EF24();
  v56 = v74;
  v57 = v87;
  v83 = *(v74 + 48);
  if (v83(v55, 1, v87) != 1)
  {
    v64 = *(v56 + 32);
    v63 = v56 + 32;
    v82 = v64;
    do
    {
      v65 = v85;
      v82(v85, v55, v57);
      if (qword_281065080 != -1)
      {
        swift_once();
      }

      v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EB8, &qword_24AD5FDA8);
      __swift_project_value_buffer(v66, qword_281065088);
      v67 = v65;
      sub_24AD5E534();
      v68 = v88;
      v69 = v89;
      sub_24AD05C18();
      v70 = v67;
      v57 = v87;
      (*(v63 - 24))(v70, v87);
      v71 = sub_24AD06204(v68, v69);
      MEMORY[0x24C22E590](v71);
      if (*((v92 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v92 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v72 = *((v92 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_24AD5E8E4();
      }

      sub_24AD5E904();
      v53 = v92;
      v55 = v86;
      sub_24AD5EF24();
    }

    while (v83(v55, 1, v57) != 1);
  }

  if (!(v53 >> 62))
  {
    v60 = v80;
    v59 = v81;
    v48 = v78;
    if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

LABEL_24:

    v62 = 0;
    goto LABEL_25;
  }

  result = sub_24AD5EC94();
  v60 = v80;
  v59 = v81;
  v48 = v78;
  if (!result)
  {
    goto LABEL_24;
  }

LABEL_12:
  if ((v53 & 0xC000000000000001) != 0)
  {
    v61 = MEMORY[0x24C22EA30](0, v53);
    goto LABEL_15;
  }

  if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v61 = *(v53 + 32);
LABEL_15:
    v62 = v61;

LABEL_25:
    v88 = v62;
    sub_24AD5E184();

    (*(v79 + 8))(v60, v59);
    return v48;
  }

  __break(1u);
  return result;
}

id sub_24ACF8FC4(uint64_t a1)
{
  v43 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EE8, &qword_24AD5FDD0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v37 - v3;
  v5 = sub_24AD5E524();
  v6 = *(v5 - 8);
  v41 = v5;
  v42 = v6;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v38 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v39 = v37 - v10;
  v11 = sub_24AD5E554();
  v48 = *(v11 - 8);
  v12 = *(v48 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2810650A0 != -1)
  {
    swift_once();
  }

  v40 = v4;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EA0, &qword_24AD5FD90);
  v16 = __swift_project_value_buffer(v15, qword_2810650A8);
  v46 = v15;
  v47 = sub_24AD062C8(&qword_2810653C0, &qword_27EFA5EA0, &qword_24AD5FD90);
  v17 = __swift_allocate_boxed_opaque_existential_1(&v45);
  v18 = *(*(v15 - 8) + 16);
  v37[1] = v16;
  v18(v17, v16, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EC0, &qword_24AD5FDB0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_24AD5F820;
  if (qword_281065120 != -1)
  {
    swift_once();
  }

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5ED0, &qword_24AD5FDC0);
  v21 = __swift_project_value_buffer(v20, qword_281065128);
  *(v19 + 56) = v20;
  *(v19 + 64) = sub_24AD062C8(&qword_2810653B0, &qword_27EFA5ED0, &qword_24AD5FDC0);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v19 + 32));
  (*(*(v20 - 8) + 16))(boxed_opaque_existential_1, v21, v20);
  sub_24AD5E4B4();

  __swift_destroy_boxed_opaque_existential_1Tm(&v45);
  v46 = v11;
  v47 = MEMORY[0x277D6AF40];
  v23 = __swift_allocate_boxed_opaque_existential_1(&v45);
  v24 = v48;
  (*(v48 + 16))(v23, v14, v11);
  v25 = v44;
  sub_24AD5E464();
  if (v25)
  {

    (*(v24 + 8))(v14, v11);
    __swift_destroy_boxed_opaque_existential_1Tm(&v45);
    return 0;
  }

  else
  {
    v44 = 0;
    __swift_destroy_boxed_opaque_existential_1Tm(&v45);
    sub_24AD5EE54();
    v27 = v40;
    sub_24AD5EF24();

    v29 = v41;
    v28 = v42;
    if ((*(v42 + 48))(v27, 1, v41) == 1)
    {

      (*(v24 + 8))(v14, v11);
      return 0;
    }

    else
    {
      v30 = *(v28 + 32);
      v31 = v38;
      v30(v38, v27, v29);
      v32 = v39;
      v30(v39, v31, v29);
      sub_24AD5E534();
      v33 = v45;
      sub_24AD5E534();
      v34 = objc_allocWithZone(MEMORY[0x277CBC220]);
      v35 = sub_24AD5E834();

      v36 = [v34 initWithContainerIdentifier:v35 environment:v33];

      (*(v42 + 8))(v32, v29);
      (*(v48 + 8))(v14, v11);
      return v36;
    }
  }
}

uint64_t sub_24ACF9580(unsigned __int8 *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EE8, &qword_24AD5FDD0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v48 = &v47 - v4;
  v5 = sub_24AD5E524();
  v50 = *(v5 - 8);
  v51 = v5;
  v6 = *(v50 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v47 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v49 = &v47 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EA8, &qword_24AD5FD98);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v47 - v13;
  v15 = sub_24AD5E554();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v57 = &v47 - v21;
  v22 = *a1;
  type metadata accessor for CloudKitCacheDatabase();
  sub_24AD0328C(&qword_281064FE8, type metadata accessor for CloudKitCacheDatabase);
  if (sub_24AD5E694())
  {
    if (qword_281065060 != -1)
    {
      swift_once();
    }

    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5ED0, &qword_24AD5FDC0);
    __swift_project_value_buffer(v23, qword_281065068);
    v54[0] = v22;
    sub_24AD5E504();
    sub_24AD5E5B4();
    (*(v11 + 8))(v14, v10);
    if (qword_281065140 != -1)
    {
      swift_once();
    }

    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EB8, &qword_24AD5FDA8);
    v25 = __swift_project_value_buffer(v24, qword_281065148);
    v55 = v24;
    v56 = sub_24AD062C8(&qword_2810653D8, &qword_27EFA5EB8, &qword_24AD5FDA8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v54);
    (*(*(v24 - 8) + 16))(boxed_opaque_existential_1, v25, v24);
    v27 = v57;
    sub_24AD5E4B4();
    v28 = *(v16 + 8);
    v28(v20, v15);
    __swift_destroy_boxed_opaque_existential_1Tm(v54);
    v55 = v15;
    v56 = MEMORY[0x277D6AF40];
    v29 = __swift_allocate_boxed_opaque_existential_1(v54);
    (*(v16 + 16))(v29, v27, v15);
    v30 = v52;
    sub_24AD5E464();
    if (v30)
    {

      v28(v27, v15);
      __swift_destroy_boxed_opaque_existential_1Tm(v54);
      return 0;
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v54);
      sub_24AD5EE54();
      v34 = v48;
      sub_24AD5EF24();

      v35 = v50;
      v36 = v51;
      if ((*(v50 + 48))(v34, 1, v51) == 1)
      {

        v28(v57, v15);
        return 0;
      }

      else
      {
        v37 = v36;
        v38 = v34;
        v39 = *(v35 + 32);
        v40 = v47;
        v52 = v25;
        v41 = v37;
        v39(v47, v38);
        (v39)(v49, v40, v41);
        sub_24AD5E534();
        v43 = v54[0];
        v42 = v54[1];
        v44 = objc_allocWithZone(MEMORY[0x277CBC670]);
        v45 = sub_24AD5E384();
        v46 = [v44 initWithData_];

        sub_24AD06204(v43, v42);

        (*(v50 + 8))(v49, v51);
        v28(v57, v15);
        return v46;
      }
    }
  }

  else
  {
    v32 = sub_24AD5E664();
    sub_24AD0328C(&qword_27EFA5EF0, MEMORY[0x277D094E8]);
    swift_allocError();
    (*(*(v32 - 8) + 104))(v33, *MEMORY[0x277D094E0], v32);
    return swift_willThrow();
  }
}

uint64_t sub_24ACF9C80(unsigned __int8 *a1)
{
  v27 = sub_24AD5E404();
  v25 = *(v27 - 8);
  v3 = *(v25 + 64);
  MEMORY[0x28223BE20](v27);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EA8, &qword_24AD5FD98);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v23 - v9;
  v26 = sub_24AD5E554();
  v24 = *(v26 - 8);
  v11 = *(v24 + 64);
  MEMORY[0x28223BE20](v26);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  type metadata accessor for CloudKitCacheDatabase();
  sub_24AD0328C(&qword_281064FE8, type metadata accessor for CloudKitCacheDatabase);
  v15 = sub_24AD5E6A4();
  if (v15)
  {
    v16 = v15;
    v23[1] = v1;
    if (qword_281065060 != -1)
    {
      swift_once();
    }

    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5ED0, &qword_24AD5FDC0);
    __swift_project_value_buffer(v17, qword_281065068);
    v28 = v14;
    sub_24AD5E504();
    v18 = v26;
    sub_24AD5E5B4();
    v19 = (*(v7 + 8))(v10, v6);
    MEMORY[0x28223BE20](v19);
    v23[-2] = v16;
    v23[-1] = v13;
    sub_24AD5E3F4();
    sub_24AD5E3E4();
    (*(v25 + 8))(v5, v27);
    sub_24AD5E474();

    return (*(v24 + 8))(v13, v18);
  }

  else
  {
    v21 = sub_24AD5E664();
    sub_24AD0328C(&qword_27EFA5EF0, MEMORY[0x277D094E8]);
    swift_allocError();
    (*(*(v21 - 8) + 104))(v22, *MEMORY[0x277D094E0], v21);
    return swift_willThrow();
  }
}

uint64_t sub_24ACFA0AC()
{
  v0 = sub_24AD5E574();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24AD5E554();
  sub_24AD5E5A4();
  sub_24AD5E424();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_24ACFA1A8()
{
  v1 = v0;
  v2 = sub_24AD5E524();
  v84 = *(v2 - 8);
  v3 = *(v84 + 64);
  MEMORY[0x28223BE20](v2);
  isUniquelyReferenced_nonNull_native = v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EE8, &qword_24AD5FDD0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v95 = v80 - v8;
  v9 = sub_24AD5E554();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CloudKitCacheDatabase();
  sub_24AD0328C(&qword_281064FE8, type metadata accessor for CloudKitCacheDatabase);
  v14 = sub_24AD5E694();
  if (v14)
  {
    v88 = v0;
    v91 = v2;
    v80[3] = v14;
    v81 = v13;
    v82 = v10;
    v83 = v9;
    if (qword_281065040 != -1)
    {
      goto LABEL_48;
    }

    while (1)
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EA0, &qword_24AD5FD90);
      v16 = __swift_project_value_buffer(v15, qword_281065048);
      v93 = v15;
      v17 = sub_24AD062C8(&qword_2810653C0, &qword_27EFA5EA0, &qword_24AD5FD90);
      v94 = v17;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v92);
      v19 = *(*(v15 - 8) + 16);
      v90 = v16;
      v19(boxed_opaque_existential_1, v16, v15);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EC0, &qword_24AD5FDB0);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_24AD5F810;
      if (qword_281065020 != -1)
      {
        swift_once();
      }

      v21 = __swift_project_value_buffer(v15, qword_281065028);
      *(v20 + 56) = v15;
      *(v20 + 64) = v17;
      v22 = __swift_allocate_boxed_opaque_existential_1((v20 + 32));
      v89 = v21;
      v19(v22, v21, v15);
      if (qword_281065140 != -1)
      {
        swift_once();
      }

      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EB8, &qword_24AD5FDA8);
      v24 = __swift_project_value_buffer(v23, qword_281065148);
      *(v20 + 96) = v23;
      *(v20 + 104) = sub_24AD062C8(&qword_2810653D8, &qword_27EFA5EB8, &qword_24AD5FDA8);
      v25 = __swift_allocate_boxed_opaque_existential_1((v20 + 72));
      (*(*(v23 - 8) + 16))(v25, v24, v23);
      v26 = v81;
      v27 = v83;
      sub_24AD5E4B4();

      __swift_destroy_boxed_opaque_existential_1Tm(v92);
      v93 = v27;
      v94 = MEMORY[0x277D6AF40];
      v28 = __swift_allocate_boxed_opaque_existential_1(v92);
      v29 = v82;
      (*(v82 + 16))(v28, v26, v27);
      v30 = v88;
      v31 = sub_24AD5E464();
      if (v30)
      {

        __swift_destroy_boxed_opaque_existential_1Tm(v92);
        v1 = sub_24AD341CC(MEMORY[0x277D84F90]);

        (*(v29 + 8))(v26, v27);
        return v1;
      }

      v34 = v31;
      v80[2] = 0;
      __swift_destroy_boxed_opaque_existential_1Tm(v92);
      v80[1] = v34;
      v35 = sub_24AD5EE54();
      v36 = v95;
      v88 = v35;
      sub_24AD5EF24();
      v37 = v84;
      v38 = v91;
      v86 = *(v84 + 48);
      v87 = v84 + 48;
      if (v86(v36, 1, v91) == 1)
      {
        v39 = MEMORY[0x277D84F90];
      }

      else
      {
        v66 = *(v37 + 32);
        v65 = v37 + 32;
        v84 = v66;
        v85 = v24;
        v67 = (v65 - 24);
        v39 = MEMORY[0x277D84F90];
        do
        {
          v68 = v65;
          (v84)(isUniquelyReferenced_nonNull_native, v36, v38);
          sub_24AD5E534();
          sub_24AD5E534();
          sub_24AD06578(0, &qword_281064998, 0x277CBC5F8);
          v69 = sub_24AD5EB74();
          sub_24AD5E534();
          v70 = v92[0];
          v71 = v92[1];
          v72 = objc_allocWithZone(MEMORY[0x277CBC670]);
          v73 = sub_24AD5E384();
          v74 = [v72 initWithData_];

          v75 = v71;
          v38 = v91;
          sub_24AD06204(v70, v75);
          (*v67)(isUniquelyReferenced_nonNull_native, v38);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v39 = sub_24AD2E548(0, v39[2] + 1, 1, v39);
          }

          v77 = v39[2];
          v76 = v39[3];
          if (v77 >= v76 >> 1)
          {
            v39 = sub_24AD2E548((v76 > 1), v77 + 1, 1, v39);
          }

          v39[2] = v77 + 1;
          v78 = &v39[2 * v77];
          v78[4] = v69;
          v78[5] = v74;
          v36 = v95;
          sub_24AD5EF24();
          v65 = v68;
        }

        while (v86(v36, 1, v38) != 1);
      }

      v95 = v39[2];
      if (!v95)
      {
        v1 = MEMORY[0x277D84F98];
LABEL_42:

        (*(v82 + 8))(v81, v83);
        return v1;
      }

      v40 = 0;
      v1 = MEMORY[0x277D84F98];
      v41 = (v39 + 5);
      while (v40 < v39[2])
      {
        v44 = *(v41 - 1);
        v45 = *v41;
        if ((v1 & 0xC000000000000001) != 0)
        {
          if (v1 < 0)
          {
            v46 = v1;
          }

          else
          {
            v46 = v1 & 0xFFFFFFFFFFFFFF8;
          }

          v47 = v44;
          isUniquelyReferenced_nonNull_native = v45;
          v48 = v47;
          v49 = isUniquelyReferenced_nonNull_native;
          v50 = sub_24AD5EC94();
          if (__OFADD__(v50, 1))
          {
            goto LABEL_46;
          }

          v1 = sub_24AD0A25C(v46, v50 + 1);
        }

        else
        {
          v51 = v44;
          v52 = v45;
          v53 = v51;
          v54 = v52;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v92[0] = v1;
        v55 = sub_24AD095D0(v44);
        v57 = *(v1 + 16);
        v58 = (v56 & 1) == 0;
        v59 = __OFADD__(v57, v58);
        v60 = v57 + v58;
        if (v59)
        {
          goto LABEL_45;
        }

        v61 = v56;
        if (*(v1 + 24) < v60)
        {
          sub_24AD03814(v60, isUniquelyReferenced_nonNull_native, &qword_27EFA5EF8, &qword_24AD5FDD8);
          v55 = sub_24AD095D0(v44);
          if ((v61 & 1) != (v62 & 1))
          {
            sub_24AD06578(0, &qword_281064998, 0x277CBC5F8);
            result = sub_24AD5EFC4();
            __break(1u);
            return result;
          }

LABEL_29:
          v1 = v92[0];
          if (v61)
          {
            goto LABEL_14;
          }

          goto LABEL_30;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_29;
        }

        isUniquelyReferenced_nonNull_native = v55;
        sub_24AD04D5C(&qword_27EFA5EF8, &qword_24AD5FDD8);
        v55 = isUniquelyReferenced_nonNull_native;
        v1 = v92[0];
        if (v61)
        {
LABEL_14:
          v42 = *(v1 + 56);
          v43 = *(v42 + 8 * v55);
          *(v42 + 8 * v55) = v45;

          goto LABEL_15;
        }

LABEL_30:
        *(v1 + 8 * (v55 >> 6) + 64) |= 1 << v55;
        *(*(v1 + 48) + 8 * v55) = v44;
        *(*(v1 + 56) + 8 * v55) = v45;

        v63 = *(v1 + 16);
        v59 = __OFADD__(v63, 1);
        v64 = v63 + 1;
        if (v59)
        {
          goto LABEL_47;
        }

        *(v1 + 16) = v64;
LABEL_15:
        ++v40;
        v41 += 2;
        if (v95 == v40)
        {
          goto LABEL_42;
        }
      }

      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      swift_once();
    }
  }

  v32 = sub_24AD5E664();
  sub_24AD0328C(&qword_27EFA5EF0, MEMORY[0x277D094E8]);
  swift_allocError();
  (*(*(v32 - 8) + 104))(v33, *MEMORY[0x277D094E0], v32);
  swift_willThrow();
  return v1;
}

uint64_t sub_24ACFABB4()
{
  v0 = sub_24AD5E524();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EE8, &qword_24AD5FDD0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v37 - v7;
  v9 = sub_24AD5E554();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CloudKitCacheDatabase();
  sub_24AD0328C(&qword_281064FE8, type metadata accessor for CloudKitCacheDatabase);
  v14 = sub_24AD5E694();
  if (v14)
  {
    v40 = v9;
    v41 = v14;
    v38 = v13;
    v39 = v10;
    v47 = v0;
    v48 = v1;
    if (qword_281065040 != -1)
    {
      swift_once();
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EA0, &qword_24AD5FD90);
    v16 = __swift_project_value_buffer(v15, qword_281065048);
    v50 = v15;
    v17 = sub_24AD062C8(&qword_2810653C0, &qword_27EFA5EA0, &qword_24AD5FD90);
    v51 = v17;
    v18 = __swift_allocate_boxed_opaque_existential_1(&v49);
    v19 = *(*(v15 - 8) + 16);
    v46 = v16;
    v19(v18, v16, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EC0, &qword_24AD5FDB0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_24AD5F820;
    if (qword_281065020 != -1)
    {
      swift_once();
    }

    v21 = __swift_project_value_buffer(v15, qword_281065028);
    *(v20 + 56) = v15;
    *(v20 + 64) = v17;
    v22 = v21;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v20 + 32));
    v19(boxed_opaque_existential_1, v22, v15);
    v24 = v38;
    v25 = v40;
    sub_24AD5E4B4();

    __swift_destroy_boxed_opaque_existential_1Tm(&v49);
    v50 = v25;
    v51 = MEMORY[0x277D6AF40];
    v26 = __swift_allocate_boxed_opaque_existential_1(&v49);
    v27 = v39;
    (*(v39 + 16))(v26, v24, v25);
    v28 = v45;
    v29 = sub_24AD5E464();
    if (v28)
    {

      __swift_destroy_boxed_opaque_existential_1Tm(&v49);

      (*(v27 + 8))(v24, v25);
      return MEMORY[0x277D84F90];
    }

    else
    {
      v32 = v29;
      v44 = v22;
      v37[1] = 0;
      __swift_destroy_boxed_opaque_existential_1Tm(&v49);
      v1 = MEMORY[0x277D84F90];
      v52 = MEMORY[0x277D84F90];
      v37[0] = v32;
      v45 = sub_24AD5EE54();
      sub_24AD5EF24();
      v34 = v47;
      v33 = v48;
      v43 = *(v48 + 48);
      if (v43(v8, 1, v47) != 1)
      {
        v42 = *(v33 + 32);
        v48 = v33 + 32;
        do
        {
          v42(v4, v8, v34);
          sub_24AD5E534();
          sub_24AD5E534();
          sub_24AD06578(0, &qword_281064998, 0x277CBC5F8);
          v34 = v47;
          sub_24AD5EB74();
          v35 = (*(v33 + 8))(v4, v34);
          MEMORY[0x24C22E590](v35);
          if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_24AD5E8E4();
          }

          sub_24AD5E904();
          v1 = v52;
          sub_24AD5EF24();
        }

        while (v43(v8, 1, v34) != 1);
        v27 = v39;
        v25 = v40;
        v24 = v38;
      }

      (*(v27 + 8))(v24, v25);
    }
  }

  else
  {
    v30 = sub_24AD5E664();
    sub_24AD0328C(&qword_27EFA5EF0, MEMORY[0x277D094E8]);
    swift_allocError();
    (*(*(v30 - 8) + 104))(v31, *MEMORY[0x277D094E0], v30);
    swift_willThrow();
  }

  return v1;
}

uint64_t sub_24ACFB24C(uint64_t a1)
{
  v3 = sub_24AD5E404();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CloudKitCacheDatabase();
  sub_24AD0328C(&qword_281064FE8, type metadata accessor for CloudKitCacheDatabase);
  v8 = sub_24AD5E6A4();
  if (v8)
  {
    v9 = MEMORY[0x28223BE20](v8);
    v13[-4] = v1;
    v13[-3] = a1;
    v13[-2] = v9;
    sub_24AD5E3F4();
    sub_24AD5E3E4();
    (*(v4 + 8))(v7, v3);
    sub_24AD5E474();
  }

  else
  {
    v11 = sub_24AD5E664();
    sub_24AD0328C(&qword_27EFA5EF0, MEMORY[0x277D094E8]);
    swift_allocError();
    (*(*(v11 - 8) + 104))(v12, *MEMORY[0x277D094E0], v11);
    return swift_willThrow();
  }
}

uint64_t sub_24ACFB4A0(uint64_t a1, void *a2, uint64_t a3)
{
  v92 = a1;
  v93 = a3;
  v94 = sub_24AD5E574();
  v98 = *(v94 - 8);
  v4 = *(v98 + 64);
  v5 = MEMORY[0x28223BE20](v94);
  v79 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v80 = &v77 - v8;
  MEMORY[0x28223BE20](v7);
  v86 = &v77 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EA8, &qword_24AD5FD98);
  v88 = *(v10 - 8);
  v11 = *(v88 + 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v77 - v16;
  MEMORY[0x28223BE20](v15);
  v91 = &v77 - v18;
  v95 = sub_24AD5E554();
  v89 = *(v95 - 8);
  v19 = *(v89 + 64);
  v20 = MEMORY[0x28223BE20](v95);
  v78 = &v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v84 = &v77 - v23;
  MEMORY[0x28223BE20](v22);
  v90 = &v77 - v24;
  v85 = OBJC_IVAR____TtC14FindMyCloudKit21CloudKitCacheDatabase_zoneChangeTokensTable;
  if (qword_281065040 != -1)
  {
    swift_once();
  }

  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EA0, &qword_24AD5FD90);
  v26 = __swift_project_value_buffer(v25, qword_281065048);
  v27 = [a2 zoneName];
  v28 = sub_24AD5E844();
  v30 = v29;

  v96 = v28;
  v97 = v30;
  v83 = v26;
  sub_24AD5E504();

  if (qword_281065020 != -1)
  {
    swift_once();
  }

  v31 = __swift_project_value_buffer(v25, qword_281065028);
  v32 = [a2 ownerName];
  v33 = sub_24AD5E844();
  v35 = v34;

  v96 = v33;
  v97 = v35;
  v82 = v31;
  sub_24AD5E504();

  v36 = v91;
  sub_24AD5E4F4();
  v37 = *(v88 + 1);
  v37(v14, v10);
  v88 = v17;
  v37(v17, v10);
  v81 = a2;
  v38 = v10;
  v39 = v90;
  v40 = v95;
  sub_24AD5E5B4();
  v37(v36, v10);
  v41 = v86;
  sub_24AD5E5A4();
  v42 = v87;
  sub_24AD5E424();
  if (v42)
  {
    (*(v98 + 8))(v41, v94);
    return (*(v89 + 8))(v39, v40);
  }

  else
  {
    v44 = *(v98 + 8);
    v98 += 8;
    v86 = v44;
    (v44)(v41, v94);
    v85 = OBJC_IVAR____TtC14FindMyCloudKit21CloudKitCacheDatabase_cloudKitCacheTable;
    v45 = v81;
    v46 = [v81 zoneName];
    v87 = 0;
    v47 = v46;
    v48 = sub_24AD5E844();
    v50 = v49;

    v96 = v48;
    v97 = v50;
    v51 = v88;
    sub_24AD5E504();

    v52 = [v45 ownerName];
    v53 = sub_24AD5E844();
    v55 = v54;

    v96 = v53;
    v97 = v55;
    sub_24AD5E504();

    v56 = v91;
    sub_24AD5E4F4();
    v37(v14, v38);
    v37(v51, v38);
    v57 = v84;
    sub_24AD5E5B4();
    v37(v56, v38);
    v58 = v80;
    sub_24AD5E5A4();
    v59 = v87;
    sub_24AD5E424();
    v87 = v59;
    (v86)(v58, v94);
    if (v59)
    {
      v60 = *(v89 + 8);
      v61 = v95;
      v60(v57, v95);
      return (v60)(v90, v61);
    }

    else
    {
      v85 = OBJC_IVAR____TtC14FindMyCloudKit21CloudKitCacheDatabase_lostZoneTable;
      v62 = v81;
      v63 = [v81 zoneName];
      v64 = sub_24AD5E844();
      v66 = v65;

      v96 = v64;
      v97 = v66;
      v67 = v88;
      sub_24AD5E504();

      v68 = [v62 ownerName];
      v69 = sub_24AD5E844();
      v71 = v70;

      v96 = v69;
      v97 = v71;
      sub_24AD5E504();

      v72 = v91;
      sub_24AD5E4F4();
      v37(v14, v38);
      v37(v67, v38);
      v73 = v78;
      v74 = v95;
      sub_24AD5E5B4();
      v37(v72, v38);
      v75 = v79;
      sub_24AD5E5A4();
      sub_24AD5E424();
      (v86)(v75, v94);
      v76 = *(v89 + 8);
      v76(v73, v74);
      v76(v84, v74);
      return (v76)(v90, v74);
    }
  }
}

uint64_t sub_24ACFBDBC(__int128 *a1)
{
  v3 = v1;
  v29 = *v3;
  v5 = sub_24AD5E404();
  v30 = *(v5 - 8);
  v6 = *(v30 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[3];
  v40 = a1[2];
  v41 = v9;
  v42 = *(a1 + 8);
  v10 = a1[1];
  v38 = *a1;
  v39 = v10;
  if (qword_281065000 != -1)
  {
    swift_once();
  }

  v11 = sub_24AD5E7A4();
  __swift_project_value_buffer(v11, qword_281065470);
  sub_24AD063FC(&v38, v36);
  v12 = sub_24AD5E784();
  v13 = sub_24AD5EB64();
  sub_24AD06458(&v38);
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v28 = v5;
    v15 = v14;
    v16 = swift_slowAlloc();
    v43 = v16;
    *v15 = 136315138;
    v33 = v40;
    v34 = v41;
    v35 = v42;
    v32 = v39;
    v31 = v38;
    sub_24AD063FC(&v38, v36);
    v17 = CloudKitStateChange.description.getter();
    v19 = v18;
    v36[2] = v33;
    v36[3] = v34;
    v37 = v35;
    v36[0] = v31;
    v36[1] = v32;
    sub_24AD06458(v36);
    v20 = sub_24AD2EDAC(v17, v19, &v43);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_24ACF2000, v12, v13, "ingest:stateChange %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x24C22F400](v16, -1, -1);
    v21 = v15;
    v5 = v28;
    MEMORY[0x24C22F400](v21, -1, -1);
  }

  type metadata accessor for CloudKitCacheDatabase();
  sub_24AD0328C(&qword_281064FE8, type metadata accessor for CloudKitCacheDatabase);
  result = sub_24AD5E6B4();
  if (!v2)
  {
    v23 = sub_24AD5E6A4();
    if (v23)
    {
      v24 = MEMORY[0x28223BE20](v23);
      *(&v27 - 4) = v3;
      *(&v27 - 3) = v24;
      *(&v27 - 2) = &v38;
      *(&v27 - 1) = v29;
      sub_24AD5E3F4();
      sub_24AD5E3E4();
      (*(v30 + 8))(v8, v5);
      sub_24AD5E474();
    }

    else
    {
      v25 = sub_24AD5E664();
      sub_24AD0328C(&qword_27EFA5EF0, MEMORY[0x277D094E8]);
      swift_allocError();
      (*(*(v25 - 8) + 104))(v26, *MEMORY[0x277D094E0], v25);
      return swift_willThrow();
    }
  }

  return result;
}

void sub_24ACFC250(uint64_t a1, uint64_t a2, char *a3)
{
  v379 = a3;
  v382 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EB8, &qword_24AD5FDA8);
  v347 = *(v382 - 8);
  v5 = *(v347 + 64);
  MEMORY[0x28223BE20](v382);
  v354 = &v340 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5F58, &qword_24AD5FE20);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v357 = &v340 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v356 = &v340 - v11;
  v374 = sub_24AD5E3C4();
  *&v346 = *(v374 - 8);
  v12 = *(v346 + 64);
  v13 = MEMORY[0x28223BE20](v374);
  v355 = &v340 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v363 = &v340 - v16;
  MEMORY[0x28223BE20](v15);
  v353 = &v340 - v17;
  v378 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EB0, &qword_24AD5FDA0);
  v345 = *(v378 - 8);
  v18 = *(v345 + 64);
  v19 = MEMORY[0x28223BE20](v378);
  v373 = &v340 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v362 = &v340 - v21;
  v398 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EA0, &qword_24AD5FD90);
  v344 = *(v398 - 1);
  v22 = *(v344 + 64);
  MEMORY[0x28223BE20](v398);
  v372 = &v340 - v23;
  v381 = sub_24AD5E574();
  v385 = *(v381 - 8);
  v24 = *(v385 + 64);
  v25 = MEMORY[0x28223BE20](v381);
  v366 = (&v340 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v25);
  v371 = &v340 - v27;
  v392 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EA8, &qword_24AD5FD98);
  v384 = *(v392 - 8);
  v28 = *(v384 + 64);
  v29 = MEMORY[0x28223BE20](v392);
  v370 = (&v340 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = MEMORY[0x28223BE20](v29);
  v369 = (&v340 - v32);
  v33 = MEMORY[0x28223BE20](v31);
  v380 = (&v340 - v34);
  v35 = MEMORY[0x28223BE20](v33);
  v368 = (&v340 - v36);
  MEMORY[0x28223BE20](v35);
  v367 = (&v340 - v37);
  v399 = sub_24AD5E554();
  v349 = *(v399 - 8);
  v38 = *(v349 + 64);
  v39 = MEMORY[0x28223BE20](v399);
  v364 = &v340 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x28223BE20](v39);
  *&v365 = &v340 - v42;
  MEMORY[0x28223BE20](v41);
  v383 = &v340 - v43;
  v397 = sub_24AD5E484();
  v391 = *(v397 - 8);
  v44 = v391[8];
  v45 = MEMORY[0x28223BE20](v397);
  v47 = &v340 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v394 = &v340 - v48;
  v49 = sub_24AD5E584();
  v390 = *(v49 - 8);
  v50 = v390[8];
  v51 = MEMORY[0x28223BE20](v49);
  v53 = &v340 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = MEMORY[0x28223BE20](v51);
  v56 = &v340 - v55;
  v57 = MEMORY[0x28223BE20](v54);
  v59 = &v340 - v58;
  MEMORY[0x28223BE20](v57);
  v61 = (&v340 - v60);
  v62 = a2;
  v63 = v400;
  v64 = sub_24ACF8FC4(a2);
  v400 = v63;
  if (v63)
  {
    return;
  }

  v389 = v61;
  v359 = v59;
  v376 = v56;
  v342 = v53;
  v393 = v49;
  v348 = v47;
  v396 = a1;
  v65 = v399;
  v66 = v397;
  v67 = v394;
  if (v64)
  {
    v68 = *v379;
    v69 = v64;
    sub_24AD06578(0, &qword_2810649B0, 0x277CBC220);
    v70 = v68;
    v71 = sub_24AD5EC04();

    if ((v71 & 1) == 0)
    {
      if (qword_281065000 != -1)
      {
        swift_once();
      }

      v94 = sub_24AD5E7A4();
      __swift_project_value_buffer(v94, qword_281065470);
      v95 = sub_24AD5E784();
      v96 = sub_24AD5EB44();
      if (os_log_type_enabled(v95, v96))
      {
        v97 = swift_slowAlloc();
        *v97 = 0;
        _os_log_impl(&dword_24ACF2000, v95, v96, "containerID does not match!", v97, 2u);
        MEMORY[0x24C22F400](v97, -1, -1);
      }

      v98 = sub_24AD5E664();
      sub_24AD0328C(&qword_27EFA5EF0, MEMORY[0x277D094E8]);
      swift_allocError();
      (*(*(v98 - 8) + 104))(v99, *MEMORY[0x277D094D8], v98);
      swift_willThrow();

      return;
    }
  }

  v72 = v379;
  v73 = *(v379 + 2);
  v395 = v62;
  if (v73)
  {
    v388 = OBJC_IVAR____TtC14FindMyCloudKit21CloudKitCacheDatabase_databaseChangeTokenTable;
    (v391[13])(v67, *MEMORY[0x277D6AF18], v66);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5F60, &qword_24AD5FE28);
    v74 = *(sub_24AD5E594() - 8);
    v75 = *(v74 + 72);
    v76 = (*(v74 + 80) + 32) & ~*(v74 + 80);
    v77 = swift_allocObject();
    *(v77 + 16) = xmmword_24AD5F830;
    v387 = v77;
    v78 = qword_2810650A0;
    v67 = v73;
    if (v78 != -1)
    {
      goto LABEL_140;
    }

    goto LABEL_8;
  }

  v93 = v400;
  v100 = v391;
  while (2)
  {
    v101 = *(v72 + 7);
    v102 = v398;
    if ((v101 & 0xC000000000000001) != 0)
    {
      v103 = sub_24AD5EE74();
      v358 = 0;
      v104 = 0;
      v361 = 0;
      v352 = v103 | 0x8000000000000000;
    }

    else
    {
      v105 = -1 << *(v101 + 32);
      v104 = ~v105;
      v106 = *(v101 + 64);
      v358 = v101 + 64;
      v107 = -v105;
      if (v107 < 64)
      {
        v108 = ~(-1 << v107);
      }

      else
      {
        v108 = -1;
      }

      v361 = (v108 & v106);
      v352 = v101;
    }

    v109 = 0;
    v110 = (v104 + 64) >> 6;
    LODWORD(v388) = *MEMORY[0x277D6AF18];
    v389 = (v100 + 1);
    v386 = (v390 + 1);
    v387 = (v100 + 13);
    v350 = xmmword_24AD5F840;
    v351 = v104;
    v111 = v361;
    for (i = v110; ; v110 = i)
    {
      *&v360 = v109;
      if ((v352 & 0x8000000000000000) == 0)
      {
        break;
      }

      v361 = v111;
      v119 = sub_24AD5EEA4();
      if (!v119)
      {
        goto LABEL_47;
      }

      v121 = v120;
      v115 = v93;
      v403 = v119;
      sub_24AD06578(0, &qword_281064998, 0x277CBC5F8);
      swift_dynamicCast();
      v118 = v401;
      v403 = v121;
      sub_24AD06578(0, &qword_281064980, 0x277CBC670);
      swift_dynamicCast();
      v390 = v401;
      v114 = v360;
      v377 = v361;
      if (!v118)
      {
LABEL_130:
        v93 = v115;
        v65 = v399;
LABEL_47:
        sub_24ACF40D8();
        v145 = *(v379 + 8);
        v146 = v385;
        if (v145 >> 62)
        {
          goto LABEL_142;
        }

        v147 = *((v145 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_49:
        v400 = v93;
        v377 = OBJC_IVAR____TtC14FindMyCloudKit21CloudKitCacheDatabase_lostZoneTable;
        v148 = v384;
        if (v147)
        {
          v149 = 0;
          v375 = (v145 & 0xC000000000000001);
          v361 = (v145 & 0xFFFFFFFFFFFFFF8);
          v360 = xmmword_24AD5F810;
          v358 = v147;
          v359 = v145;
          while (1)
          {
            if (v375)
            {
              v150 = MEMORY[0x24C22EA30](v149, v145);
              v151 = (v149 + 1);
              if (__OFADD__(v149, 1))
              {
                goto LABEL_137;
              }
            }

            else
            {
              if (v149 >= v361[2])
              {
                goto LABEL_138;
              }

              v150 = *(v145 + 8 * v149 + 32);
              v151 = (v149 + 1);
              if (__OFADD__(v149, 1))
              {
                goto LABEL_137;
              }
            }

            v390 = v151;
            v152 = v150;
            (*v387)(v67, v388, v66);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5F60, &qword_24AD5FE28);
            v153 = *(sub_24AD5E594() - 8);
            v154 = (*(v153 + 80) + 32) & ~*(v153 + 80);
            v391 = *(v153 + 72);
            *(swift_allocObject() + 16) = v360;
            if (qword_281065040 != -1)
            {
              swift_once();
            }

            __swift_project_value_buffer(v102, qword_281065048);
            v155 = [v152 zoneName];
            v156 = sub_24AD5E844();
            v158 = v157;

            v401 = v156;
            v402 = v158;
            sub_24AD5E514();

            if (qword_281065020 != -1)
            {
              swift_once();
            }

            __swift_project_value_buffer(v102, qword_281065028);
            v159 = [v152 ownerName];
            v160 = sub_24AD5E844();
            v162 = v161;

            v401 = v160;
            v402 = v162;
            sub_24AD5E514();

            v163 = v376;
            v67 = v394;
            v65 = v399;
            sub_24AD5E5C4();

            v66 = v397;
            (*v389)(v67, v397);
            v164 = v400;
            sub_24AD5E434();
            v400 = v164;
            if (v164)
            {
              break;
            }

            (*v386)(v163, v393);

            ++v149;
            v102 = v398;
            v148 = v384;
            v146 = v385;
            v145 = v359;
            if (v390 == v358)
            {
              goto LABEL_64;
            }
          }

          (*v386)(v163, v393);
        }

        else
        {
LABEL_64:
          v165 = *(v379 + 6);
          v166 = *(v165 + 16);
          if (v166)
          {
            v341 = OBJC_IVAR____TtC14FindMyCloudKit21CloudKitCacheDatabase_cloudKitCacheTable;
            i = (v349 + 8);
            v167 = (v165 + 48);
            *&v144 = 136447235;
            v340 = v144;
            v359 = v146 + 1;
            v390 = (v148 + 8);
            while (1)
            {
              v352 = v166;
              v168 = *(v167 - 1);
              *&v360 = *(v167 - 2);
              v351 = v167;
              v169 = *v167;
              swift_bridgeObjectRetain_n();
              v170 = v169;
              v171 = [v170 recordName];
              v361 = sub_24AD5E844();
              v375 = v172;

              v173 = [v170 zoneID];
              v174 = [v173 zoneName];

              v394 = sub_24AD5E844();
              v176 = v175;

              v358 = v170;
              v177 = [v170 zoneID];
              v178 = [v177 ownerName];

              v391 = sub_24AD5E844();
              v180 = v179;

              if (qword_281065000 != -1)
              {
                swift_once();
              }

              v181 = sub_24AD5E7A4();
              __swift_project_value_buffer(v181, qword_281065470);

              v182 = sub_24AD5E784();
              v183 = sub_24AD5EB64();

              v184 = os_log_type_enabled(v182, v183);
              v384 = v176;
              v385 = v168;
              v376 = v180;
              if (v184)
              {
                v185 = swift_slowAlloc();
                v186 = swift_slowAlloc();
                v401 = v186;
                *v185 = v340;
                *(v185 + 4) = sub_24AD2EDAC(v391, v180, &v401);
                *(v185 + 12) = 2082;
                *(v185 + 14) = sub_24AD2EDAC(v394, v176, &v401);
                *(v185 + 22) = 2082;
                *(v185 + 24) = sub_24AD2EDAC(v360, v168, &v401);
                *(v185 + 32) = 2160;
                *(v185 + 34) = 1752392040;
                *(v185 + 42) = 2081;
                v187 = v375;
                *(v185 + 44) = sub_24AD2EDAC(v361, v375, &v401);
                _os_log_impl(&dword_24ACF2000, v182, v183, "Ingest CK delete: [Zone: %{public}s/%{public}s; record: %{public}s/%{private,mask.hash}s]", v185, 0x34u);
                swift_arrayDestroy();
                MEMORY[0x24C22F400](v186, -1, -1);
                MEMORY[0x24C22F400](v185, -1, -1);

                v188 = v398;
                v189 = v370;
                v190 = v369;
                v191 = v368;
              }

              else
              {

                v188 = v398;
                v189 = v370;
                v190 = v369;
                v191 = v368;
                v187 = v375;
              }

              v192 = v390;
              if (qword_281065160 != -1)
              {
                swift_once();
              }

              __swift_project_value_buffer(v188, qword_281065168);
              v401 = v360;
              v402 = v385;
              sub_24AD5E504();

              if (qword_281065180 != -1)
              {
                swift_once();
              }

              __swift_project_value_buffer(v188, qword_281065188);
              v401 = v361;
              v402 = v187;
              sub_24AD5E504();

              v193 = v380;
              sub_24AD5E4F4();
              v194 = *v192;
              v195 = v189;
              v196 = v392;
              (*v192)(v195, v392);
              v194(v190, v196);
              if (qword_281065040 != -1)
              {
                swift_once();
              }

              v197 = __swift_project_value_buffer(v188, qword_281065048);
              v401 = v394;
              v402 = v384;
              v375 = v197;
              sub_24AD5E504();
              sub_24AD5E4F4();
              v198 = v392;
              v194(v190, v392);
              v194(v193, v198);
              v199 = v194;
              v200 = v191;
              if (qword_281065020 != -1)
              {
                swift_once();
              }

              v201 = __swift_project_value_buffer(v188, qword_281065028);
              v401 = v391;
              v402 = v376;
              *&v360 = v201;
              sub_24AD5E504();
              v202 = v367;
              sub_24AD5E4F4();
              v203 = v392;
              v199(v193, v392);
              v199(v191, v203);
              sub_24AD5E5B4();
              v361 = v199;
              v199(v202, v203);
              v204 = v371;
              sub_24AD5E5A4();
              v205 = v400;
              sub_24AD5E424();
              if (v205)
              {

                v333 = v358;

                (*v359)(v204, v381);
                (*i)(v383, v399);
                return;
              }

              v400 = 0;
              *&v350 = *v359;
              (v350)(v204, v381);
              v401 = v394;
              v402 = v384;
              sub_24AD5E504();

              v401 = v391;
              v402 = v376;
              v206 = v380;
              sub_24AD5E504();

              sub_24AD5E4F4();
              v207 = v361;
              (v361)(v206, v203);
              (v207)(v200, v203);
              v208 = v365;
              v65 = v399;
              sub_24AD5E5B4();
              v209 = v202;
              v210 = v208;
              (v207)(v209, v203);
              v211 = v366;
              sub_24AD5E5A4();
              v212 = v400;
              sub_24AD5E424();
              v400 = v212;
              if (v212)
              {
                break;
              }

              v213 = v358;

              (v350)(v211, v381);
              v146 = i;
              v214 = *i;
              (*i)(v210, v65);
              v214(v383, v65);
              v167 = (v351 + 24);
              v166 = v352 - 1;
              if (v352 == 1)
              {
                goto LABEL_82;
              }
            }

            v334 = v358;

            (v350)(v211, v381);
            v335 = *i;
            (*i)(v210, v65);
            v335(v383, v65);
          }

          else
          {
LABEL_82:
            v145 = *(v379 + 5);
            if (v145 >> 62)
            {
              if (v145 < 0)
              {
                v339 = *(v379 + 5);
              }

              v66 = sub_24AD5EC94();
            }

            else
            {
              v66 = *((v145 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v67 = v398;
            v102 = v364;
            v215 = v347;
            v216 = v345;
            v93 = v400;
            if (v66)
            {
              v217 = 0;
              v371 = OBJC_IVAR____TtC14FindMyCloudKit21CloudKitCacheDatabase_cloudKitCacheTable;
              v376 = v145 & 0xC000000000000001;
              v345 = v145 & 0xFFFFFFFFFFFFFF8;
              v370 = (v349 + 16);
              v369 = (v344 + 16);
              v368 = (v344 + 8);
              v390 = (v216 + 16);
              v377 = (v346 + 32);
              v391 = (v346 + 56);
              v347 = v346 + 48;
              v385 = v346 + 8;
              v384 = v216 + 8;
              v366 = (v215 + 16);
              v367 = (v215 + 8);
              v375 = (v349 + 8);
              *&v144 = 136447491;
              v346 = v144;
              v365 = xmmword_24AD5F850;
              *&v350 = v145;
              v349 = v66;
              while (1)
              {
                if (v376)
                {
                  v218 = MEMORY[0x24C22EA30](v217, v145);
                }

                else
                {
                  if (v217 >= *(v345 + 16))
                  {
                    __break(1u);
LABEL_142:
                    v147 = sub_24AD5EC94();
                    goto LABEL_49;
                  }

                  v218 = *(v145 + 8 * v217 + 32);
                }

                v219 = v218;
                if (__OFADD__(v217, 1))
                {
                  goto LABEL_139;
                }

                v379 = (v217 + 1);
                v380 = v217;
                if (qword_281065000 != -1)
                {
                  swift_once();
                }

                v220 = sub_24AD5E7A4();
                __swift_project_value_buffer(v220, qword_281065470);
                v221 = v219;
                v222 = sub_24AD5E784();
                v223 = sub_24AD5EB64();

                v224 = os_log_type_enabled(v222, v223);
                v400 = v93;
                v392 = v221;
                if (v224)
                {
                  v225 = swift_slowAlloc();
                  v394 = swift_slowAlloc();
                  v401 = v394;
                  *v225 = v346;
                  v226 = [v221 recordID];
                  v227 = [v226 zoneID];

                  v228 = [v227 ownerName];
                  v229 = sub_24AD5E844();
                  v231 = v230;

                  v232 = sub_24AD2EDAC(v229, v231, &v401);

                  *(v225 + 4) = v232;
                  *(v225 + 12) = 2082;
                  v233 = [v221 &off_278FFD4F8];
                  v234 = [v233 zoneID];

                  v235 = [v234 zoneName];
                  v236 = sub_24AD5E844();
                  v238 = v237;

                  v239 = sub_24AD2EDAC(v236, v238, &v401);

                  *(v225 + 14) = v239;
                  *(v225 + 22) = 2082;
                  v240 = sub_24AD5EBE4();
                  v242 = sub_24AD2EDAC(v240, v241, &v401);

                  *(v225 + 24) = v242;
                  *(v225 + 32) = 2160;
                  *(v225 + 34) = 1752392040;
                  *(v225 + 42) = 2081;
                  v243 = [v221 &off_278FFD4F8];
                  v244 = [v243 recordName];

                  v245 = sub_24AD5E844();
                  v247 = v246;

                  v248 = sub_24AD2EDAC(v245, v247, &v401);

                  *(v225 + 44) = v248;
                  *(v225 + 52) = 2082;
                  v249 = [v221 recordChangeTag];
                  if (v249)
                  {
                    v250 = v249;
                    v251 = sub_24AD5E844();
                    v253 = v252;
                  }

                  else
                  {
                    v251 = 0;
                    v253 = 0xE000000000000000;
                  }

                  v254 = sub_24AD2EDAC(v251, v253, &v401);

                  *(v225 + 54) = v254;
                  _os_log_impl(&dword_24ACF2000, v222, v223, "Ingest CK modification: [Zone: %{public}s/%{public}s; record: %{public}s/%{private,mask.hash}s; changeTag: %{public}s]", v225, 0x3Eu);
                  v255 = v394;
                  swift_arrayDestroy();
                  MEMORY[0x24C22F400](v255, -1, -1);
                  MEMORY[0x24C22F400](v225, -1, -1);

                  v67 = v398;
                  v65 = v399;
                  v102 = v364;
                }

                else
                {
                }

                (*v370)(v102, &v371[v396], v65);
                (*v387)(v348, v388, v397);
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5F60, &qword_24AD5FE28);
                v361 = sub_24AD5E594();
                v256 = *(*(v361 - 1) + 9);
                *&v360 = *(v361 - 1);
                v257 = (*(v360 + 80) + 32) & ~*(v360 + 80);
                v394 = v256;
                v258 = swift_allocObject();
                *(v258 + 16) = v365;
                if (qword_281065160 != -1)
                {
                  v332 = v258;
                  swift_once();
                  v258 = v332;
                }

                v383 = v258;
                v259 = v258 + v257;
                __swift_project_value_buffer(v67, qword_281065168);
                v260 = v392;
                v401 = sub_24AD5EBE4();
                v402 = v261;
                sub_24AD5E514();

                if (qword_281065180 != -1)
                {
                  swift_once();
                }

                __swift_project_value_buffer(v67, qword_281065188);
                v262 = [v260 recordID];
                v263 = [v262 recordName];

                v264 = sub_24AD5E844();
                v266 = v265;

                v401 = v264;
                v402 = v266;
                v267 = v67;
                v268 = v394;
                sub_24AD5E514();

                if (qword_281065040 != -1)
                {
                  swift_once();
                }

                v269 = (v259 + 2 * v268);
                __swift_project_value_buffer(v267, qword_281065048);
                v270 = [v260 recordID];
                v381 = v259;
                v271 = v267;
                v272 = v270;
                v273 = v260;
                v274 = [v270 zoneID];

                v275 = [v274 zoneName];
                v276 = sub_24AD5E844();
                v278 = v277;

                v401 = v276;
                v402 = v278;
                v359 = v269;
                sub_24AD5E514();

                if (qword_281065020 != -1)
                {
                  swift_once();
                }

                v279 = v271;
                __swift_project_value_buffer(v271, qword_281065028);
                v280 = [v273 recordID];
                v281 = [v280 zoneID];

                v282 = [v281 ownerName];
                v283 = sub_24AD5E844();
                v285 = v284;

                v401 = v283;
                v402 = v285;
                v358 = 3 * v268;
                v286 = v381;
                sub_24AD5E514();

                if (qword_2810650E0 != -1)
                {
                  swift_once();
                }

                v287 = __swift_project_value_buffer(v279, qword_2810650E8);
                (*v369)(v372, v287, v279);
                v288 = [v273 recordChangeTag];
                v289 = v353;
                if (v288)
                {
                  v290 = v288;
                  v291 = sub_24AD5E844();
                  v293 = v292;
                }

                else
                {
                  v291 = 0;
                  v293 = 0xE000000000000000;
                }

                v294 = v362;
                v401 = v291;
                v402 = v293;
                v352 = v286 + 4 * v394;
                v295 = v372;
                sub_24AD5E514();

                (*v368)(v295, v279);
                if (qword_281065100 != -1)
                {
                  swift_once();
                }

                v296 = v378;
                v297 = __swift_project_value_buffer(v378, qword_281065108);
                v298 = *v390;
                (*v390)(v294, v297, v296);
                v299 = [v273 creationDate];
                v300 = v363;
                if (v299)
                {
                  v301 = v299;
                  sub_24AD5E3A4();

                  v302 = *v377;
                  v303 = v356;
                  v304 = v374;
                  (*v377)(v356, v300, v374);
                  v305 = *v391;
                  (*v391)(v303, 0, 1, v304);
                  v306 = v303;
                  v307 = v304;
                  v294 = v362;
                  v302(v289, v306, v307);
                  v273 = v392;
                }

                else
                {
                  v305 = *v391;
                  v308 = v356;
                  v307 = v374;
                  (*v391)(v356, 1, 1, v374);
                  sub_24AD5E3B4();
                  if ((*v347)(v308, 1, v307) != 1)
                  {
                    sub_24AD06518(v308, &qword_27EFA5F58, &qword_24AD5FE20);
                  }
                }

                v351 = 5 * v394;
                sub_24AD5E514();
                v309 = v289;
                v310 = *v385;
                (*v385)(v309, v307);
                v311 = *v384;
                v312 = v378;
                (*v384)(v294, v378);
                if (qword_2810650C0 != -1)
                {
                  swift_once();
                }

                v313 = __swift_project_value_buffer(v312, qword_2810650C8);
                v298(v373, v313, v312);
                v314 = [v273 modificationDate];
                if (v314)
                {
                  v315 = v363;
                  v316 = v314;
                  sub_24AD5E3A4();

                  v317 = *v377;
                  v318 = v357;
                  v319 = v315;
                  v320 = v374;
                  (*v377)(v357, v319, v374);
                  v305(v318, 0, 1, v320);
                  v321 = v355;
                  v317(v355, v318, v320);
                  v273 = v392;
                }

                else
                {
                  v322 = v357;
                  v320 = v374;
                  v305(v357, 1, 1, v374);
                  v321 = v355;
                  sub_24AD5E3B4();
                  if ((*v347)(v322, 1, v320) != 1)
                  {
                    sub_24AD06518(v322, &qword_27EFA5F58, &qword_24AD5FE20);
                  }
                }

                v323 = v286 + 6 * v394;
                v324 = v373;
                sub_24AD5E514();
                v310(v321, v320);
                v311(v324, v378);
                if (qword_281065080 != -1)
                {
                  swift_once();
                }

                v325 = v382;
                v326 = __swift_project_value_buffer(v382, qword_281065088);
                v327 = v354;
                (*v366)(v354, v326, v325);
                v328 = v400;
                v329 = sub_24ACFF564();
                v93 = v328;
                if (v328)
                {

                  (*v367)(v327, v325);
                  (*v389)(v348, v397);
                  (*v375)(v364, v399);
                  v336 = *(v360 + 8);
                  v337 = v323;
                  v338 = v361;
                  v336(v337, v361);
                  v336(v286 + v351, v338);
                  v336(v352, v338);
                  v336(v286 + v358, v338);
                  v336(v359, v338);
                  v336(v286 + v394, v338);
                  v336(v286, v338);
                  *(v383 + 2) = 0;

                  return;
                }

                v401 = v329;
                v402 = v330;
                sub_24AD5E514();
                sub_24AD06204(v401, v402);
                (*v367)(v327, v325);
                v331 = v342;
                v146 = v348;
                v65 = v399;
                v102 = v364;
                sub_24AD5E5C4();

                (*v389)(v146, v397);
                (*v375)(v102, v65);
                sub_24AD5E434();
                (*v386)(v331, v393);

                v217 = v380 + 1;
                v66 = v349;
                v67 = v398;
                v145 = v350;
                if (v379 == v349)
                {
                  return;
                }
              }
            }
          }
        }

        return;
      }

LABEL_39:
      v391 = v118;
      v400 = v115;
      (*v387)(v67, v388, v66);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5F60, &qword_24AD5FE28);
      v122 = *(sub_24AD5E594() - 8);
      v123 = *(v122 + 72);
      v124 = (*(v122 + 80) + 32) & ~*(v122 + 80);
      v125 = swift_allocObject();
      v125[1] = v350;
      if (qword_281065040 != -1)
      {
        v143 = v125;
        swift_once();
        v125 = v143;
      }

      v375 = v125;
      v126 = v398;
      __swift_project_value_buffer(v398, qword_281065048);
      v127 = v391;
      v128 = [v391 zoneName];
      v129 = sub_24AD5E844();
      v131 = v130;

      v401 = v129;
      v402 = v131;
      sub_24AD5E514();

      if (qword_281065020 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v126, qword_281065028);
      v132 = [v127 ownerName];
      v133 = sub_24AD5E844();
      v135 = v134;

      v401 = v133;
      v402 = v135;
      sub_24AD5E514();

      if (qword_281065140 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v382, qword_281065148);
      v136 = v390;
      v137 = [v390 data];
      v138 = sub_24AD5E394();
      v140 = v139;

      v401 = v138;
      v402 = v140;
      sub_24AD5E514();
      sub_24AD06204(v401, v402);
      v141 = v359;
      v67 = v394;
      v65 = v399;
      sub_24AD5E5C4();

      v66 = v397;
      (*v389)(v67, v397);
      v142 = v400;
      sub_24AD5E434();
      v93 = v142;
      if (v142)
      {
        (*v386)(v141, v393);

        sub_24ACF40D8();
        return;
      }

      (*v386)(v141, v393);

      v109 = v114;
      v111 = v377;
      v102 = v398;
    }

    v112 = v109;
    v113 = v111;
    v114 = v109;
    if (v111)
    {
LABEL_35:
      v115 = v93;
      v361 = v111;
      v377 = ((v113 - 1) & v113);
      v116 = (v114 << 9) | (8 * __clz(__rbit64(v113)));
      v117 = *(*(v352 + 56) + v116);
      v118 = *(*(v352 + 48) + v116);
      v390 = v117;
      if (!v118)
      {
        goto LABEL_130;
      }

      goto LABEL_39;
    }

    while (1)
    {
      v114 = v112 + 1;
      if (__OFADD__(v112, 1))
      {
        break;
      }

      if (v114 >= v110)
      {
        goto LABEL_47;
      }

      v113 = *(v358 + 8 * v114);
      ++v112;
      if (v113)
      {
        goto LABEL_35;
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
    swift_once();
LABEL_8:
    __swift_project_value_buffer(v398, qword_2810650A8);
    v79 = *v379;
    v80 = [*v379 containerIdentifier];
    v81 = sub_24AD5E844();
    v83 = v82;

    v401 = v81;
    v402 = v83;
    sub_24AD5E514();

    if (qword_281065120 != -1)
    {
      swift_once();
    }

    v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5ED0, &qword_24AD5FDC0);
    __swift_project_value_buffer(v84, qword_281065128);
    v401 = [v79 environment];
    sub_24AD5E514();
    if (qword_281065060 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v84, qword_281065068);
    v401 = v379[8];
    sub_24AD5E514();
    if (qword_281065140 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v382, qword_281065148);
    v85 = [v67 data];
    v86 = sub_24AD5E394();
    v88 = v87;

    v401 = v86;
    v402 = v88;
    sub_24AD5E514();
    sub_24AD06204(v401, v402);
    v89 = v389;
    v90 = v67;
    v67 = v394;
    sub_24AD5E5C4();

    v91 = v391;
    v66 = v397;
    (v391[1])(v67, v397);
    v92 = v400;
    sub_24AD5E434();
    v93 = v92;
    if (!v92)
    {
      (v390[1])(v89, v393);

      v72 = v379;
      v100 = v91;
      continue;
    }

    break;
  }

  (v390[1])(v89, v393);
}

void *sub_24ACFF564()
{
  v11[1] = *MEMORY[0x277D85DE8];
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  v2 = objc_opt_self();
  if (v1)
  {
    v11[0] = 0;
    v3 = v2;
    v4 = v0;
    v5 = [v3 archivedDataWithRootObject:v1 requiringSecureCoding:1 error:v11];
    v6 = v11[0];
    if (!v5)
    {
      v1 = v6;
      sub_24AD5E334();

      swift_willThrow();
      goto LABEL_9;
    }

    v1 = sub_24AD5E394();
  }

  else
  {
    v11[0] = 0;
    v4 = [v2 archivedDataWithRootObject:v0 requiringSecureCoding:1 error:v11];
    v7 = v11[0];
    if (!v4)
    {
      v8 = v7;
      sub_24AD5E334();

      swift_willThrow();
      goto LABEL_9;
    }

    v1 = sub_24AD5E394();
  }

LABEL_9:
  v9 = *MEMORY[0x277D85DE8];
  return v1;
}

char *sub_24ACFF6E0()
{
  v1 = *(v0 + 14);

  v2 = *(v0 + 15);

  v3 = *(v0 + 16);

  v4 = OBJC_IVAR____TtC14FindMyCloudKit21CloudKitCacheDatabase_logger;
  v5 = sub_24AD5E7A4();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  v6 = OBJC_IVAR____TtC14FindMyCloudKit21CloudKitCacheDatabase_databaseChangeTokenTable;
  v7 = sub_24AD5E554();
  v8 = *(*(v7 - 8) + 8);
  v8(&v0[v6], v7);
  v8(&v0[OBJC_IVAR____TtC14FindMyCloudKit21CloudKitCacheDatabase_zoneChangeTokensTable], v7);
  v8(&v0[OBJC_IVAR____TtC14FindMyCloudKit21CloudKitCacheDatabase_lostZoneTable], v7);
  v8(&v0[OBJC_IVAR____TtC14FindMyCloudKit21CloudKitCacheDatabase_cloudKitCacheTable], v7);
  v9 = OBJC_IVAR____TtC14FindMyCloudKit21CloudKitCacheDatabase_baseContainerURL;
  v10 = sub_24AD5E364();
  (*(*(v10 - 8) + 8))(&v0[v9], v10);
  v11 = *&v0[OBJC_IVAR____TtC14FindMyCloudKit21CloudKitCacheDatabase_prefix + 8];

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_24ACFF85C()
{
  sub_24ACFF6E0();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for CloudKitCacheDatabase()
{
  result = qword_281064FC8;
  if (!qword_281064FC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24ACFF8DC()
{
  result = sub_24AD5E7A4();
  if (v1 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = sub_24AD5E554();
    if (v2 <= 0x3F)
    {
      v5 = *(result - 8) + 64;
      result = sub_24AD5E364();
      if (v3 <= 0x3F)
      {
        v6 = *(result - 8) + 64;
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_24ACFFA5C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14FindMyCloudKit21CloudKitCacheDatabase_baseContainerURL;
  v4 = sub_24AD5E364();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_24ACFFAD4()
{
  swift_beginAccess();
  v1 = *(v0 + 112);
}

uint64_t sub_24ACFFB0C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 112);
  *(v1 + 112) = a1;
}

void sub_24ACFFBA8(uint64_t a1@<X8>)
{
  v3 = *(v1 + 120);
  v4 = *(*v3 + *MEMORY[0x277D841D0] + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v5));
  v6 = sub_24AD5E674();
  (*(*(v6 - 8) + 16))(a1, v3 + v4, v6);

  os_unfair_lock_unlock((v3 + v5));
}

uint64_t sub_24ACFFC70()
{
  v1 = v0;
  v2 = *(v0 + 128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EE0, &qword_24AD5FDC8);
  v3 = sub_24AD5E674();
  v4 = *(v3 - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_24AD5F820;
  v8 = *(v1 + 120);
  v9 = *(*v8 + *MEMORY[0x277D841D0] + 16);
  v10 = (*(*v8 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v8 + v10));
  (*(v4 + 16))(v7 + v6, v8 + v9, v3);
  os_unfair_lock_unlock((v8 + v10));
  sub_24AD5E1B4();
}

uint64_t sub_24ACFFE28()
{
  sub_24AD5ED34();
  v2 = *(v0 + OBJC_IVAR____TtC14FindMyCloudKit21CloudKitCacheDatabase_prefix);
  v1 = *(v0 + OBJC_IVAR____TtC14FindMyCloudKit21CloudKitCacheDatabase_prefix + 8);

  MEMORY[0x24C22E570](0xD000000000000011, 0x800000024AD61940);
  sub_24AD5E344();

  MEMORY[0x24C22E570](1835561773, 0xE400000000000000);
  sub_24AD5E344();

  MEMORY[0x24C22E570](1818326829, 0xE400000000000000);
  sub_24AD5E344();
}

uint64_t sub_24ACFFFA8()
{
  v1 = sub_24AD5E674();
  v2 = *(v1 - 8);
  v3 = v2[8];
  MEMORY[0x28223BE20]();
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 120);
  v7 = *(*v6 + *MEMORY[0x277D841D0] + 16);
  v8 = (*(*v6 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v6 + v8));
  v14 = v2[1];
  v14((v6 + v7), v1);
  v9 = *MEMORY[0x277D09500];
  v10 = v2[13];
  v10((v6 + v7), v9, v1);
  os_unfair_lock_unlock((v6 + v8));
  v11 = *(v0 + 128);
  v10(v5, v9, v1);
  sub_24AD5E1A4();
  return v14(v5, v1);
}

uint64_t sub_24AD0015C(int a1, int a2)
{
  v4 = sub_24AD5E404();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  (MEMORY[0x28223BE20])();
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281065000 != -1)
  {
    swift_once();
  }

  v9 = sub_24AD5E7A4();
  __swift_project_value_buffer(v9, qword_281065470);
  v10 = sub_24AD5E784();
  v11 = sub_24AD5EB64();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 67109376;
    *(v12 + 4) = a1;
    *(v12 + 8) = 1024;
    *(v12 + 10) = a2;
    _os_log_impl(&dword_24ACF2000, v10, v11, "Migrate schema %d -> %d", v12, 0xEu);
    MEMORY[0x24C22F400](v12, -1, -1);
  }

  if (a2 == 2)
  {
    MEMORY[0x28223BE20](v13);
    sub_24AD5E3F4();
    sub_24AD5E3E4();
    (*(v5 + 8))(v8, v4);
LABEL_7:
    sub_24AD5E474();
  }

  if (a2 == 1)
  {
    v15 = v18[1];
    result = sub_24AD5E454();
    if (!v15)
    {
      v16 = sub_24AD5E454();
      MEMORY[0x28223BE20](v16);
      sub_24AD5E3F4();
      sub_24AD5E3E4();
      (*(v5 + 8))(v8, v4);
      goto LABEL_7;
    }
  }

  else
  {
    v19 = 0;
    v20 = 0xE000000000000000;
    sub_24AD5ED34();

    v19 = 0xD000000000000013;
    v20 = 0x800000024AD61870;
    v21 = a2;
    v17 = sub_24AD5EF74();
    MEMORY[0x24C22E570](v17);

    result = sub_24AD5EEC4();
    __break(1u);
  }

  return result;
}

uint64_t sub_24AD005CC()
{
  v1 = *v0;
  type metadata accessor for CloudKitCacheDatabase();
  sub_24AD0328C(&qword_281064FE8, type metadata accessor for CloudKitCacheDatabase);
  return sub_24AD5E684();
}

uint64_t sub_24AD00638()
{
  v1 = *(MEMORY[0x277D09508] + 4);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  v3 = type metadata accessor for CloudKitCacheDatabase();
  v4 = sub_24AD0328C(&qword_281064FE8, type metadata accessor for CloudKitCacheDatabase);
  *v2 = v0;
  v2[1] = sub_24AD0071C;

  return MEMORY[0x28215FD40](v3, v4);
}

uint64_t sub_24AD0071C(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t sub_24AD00820()
{
  sub_24AD5E544();
  sub_24AD5E414();
  if (v0)
  {
  }

  sub_24AD5E544();
  sub_24AD5E414();

  sub_24AD5E544();
  sub_24AD5E414();
}

uint64_t sub_24AD009A0()
{
  v0 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5E80, &qword_24AD5FD70) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v37 = &v30 - v1;
  v2 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EC8, &qword_24AD5FDB8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v4 = &v30 - v3;
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5E90, &qword_24AD5FD80) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v30 - v6;
  v8 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5E98, &qword_24AD5FD88) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = &v30 - v9;
  if (qword_2810650A0 != -1)
  {
    swift_once();
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EA0, &qword_24AD5FD90);
  v12 = __swift_project_value_buffer(v11, qword_2810650A8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EA8, &qword_24AD5FD98);
  v14 = *(*(v13 - 8) + 56);
  v14(v10, 1, 1, v13);
  v34 = *(v11 - 8);
  v15 = *(v34 + 56);
  v36 = v11;
  v15(v7, 1, 1, v11);
  v35 = v12;
  sub_24AD5E4C4();
  sub_24AD06518(v7, &qword_27EFA5E90, &qword_24AD5FD80);
  sub_24AD06518(v10, &qword_27EFA5E98, &qword_24AD5FD88);
  if (qword_281065120 != -1)
  {
    swift_once();
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5ED0, &qword_24AD5FDC0);
  v17 = __swift_project_value_buffer(v16, qword_281065128);
  v14(v10, 1, 1, v13);
  v32 = *(v16 - 8);
  v18 = *(v32 + 56);
  v18(v4, 1, 1, v16);
  v33 = v17;
  sub_24AD5E4C4();
  sub_24AD06518(v4, &qword_27EFA5EC8, &qword_24AD5FDB8);
  sub_24AD06518(v10, &qword_27EFA5E98, &qword_24AD5FD88);
  if (qword_281065060 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v16, qword_281065068);
  v14(v10, 1, 1, v13);
  v18(v4, 1, 1, v16);
  v31 = v19;
  sub_24AD5E4C4();
  sub_24AD06518(v4, &qword_27EFA5EC8, &qword_24AD5FDB8);
  sub_24AD06518(v10, &qword_27EFA5E98, &qword_24AD5FD88);
  if (qword_281065140 != -1)
  {
    swift_once();
  }

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EB8, &qword_24AD5FDA8);
  __swift_project_value_buffer(v20, qword_281065148);
  v14(v10, 1, 1, v13);
  v21 = v37;
  (*(*(v20 - 8) + 56))(v37, 1, 1, v20);
  sub_24AD5E4C4();
  sub_24AD06518(v21, &qword_27EFA5E80, &qword_24AD5FD70);
  sub_24AD06518(v10, &qword_27EFA5E98, &qword_24AD5FD88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EC0, &qword_24AD5FDB0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_24AD5F840;
  v23 = v36;
  *(v22 + 56) = v36;
  *(v22 + 64) = sub_24AD062C8(&qword_2810653C0, &qword_27EFA5EA0, &qword_24AD5FD90);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v22 + 32));
  (*(v34 + 16))(boxed_opaque_existential_1, v35, v23);
  *(v22 + 96) = v16;
  v25 = sub_24AD062C8(&qword_2810653B0, &qword_27EFA5ED0, &qword_24AD5FDC0);
  *(v22 + 104) = v25;
  v26 = __swift_allocate_boxed_opaque_existential_1((v22 + 72));
  v27 = *(v32 + 16);
  v27(v26, v33, v16);
  *(v22 + 136) = v16;
  *(v22 + 144) = v25;
  v28 = __swift_allocate_boxed_opaque_existential_1((v22 + 112));
  v27(v28, v31, v16);
  MEMORY[0x24C22E1C0](v22);
}

uint64_t sub_24AD01068()
{
  v0 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5E80, &qword_24AD5FD70) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v24 = &v22 - v1;
  v2 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5E90, &qword_24AD5FD80) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v4 = &v22 - v3;
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5E98, &qword_24AD5FD88) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v22 - v6;
  if (qword_281065040 != -1)
  {
    swift_once();
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EA0, &qword_24AD5FD90);
  v9 = __swift_project_value_buffer(v8, qword_281065048);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EA8, &qword_24AD5FD98);
  v25 = *(*(v10 - 8) + 56);
  v25(v7, 1, 1, v10);
  v11 = *(v8 - 8);
  v12 = *(v11 + 56);
  v12(v4, 1, 1, v8);
  v23 = v9;
  sub_24AD5E4C4();
  sub_24AD06518(v4, &qword_27EFA5E90, &qword_24AD5FD80);
  sub_24AD06518(v7, &qword_27EFA5E98, &qword_24AD5FD88);
  if (qword_281065020 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v8, qword_281065028);
  v25(v7, 1, 1, v10);
  v12(v4, 1, 1, v8);
  v22 = v13;
  sub_24AD5E4C4();
  sub_24AD06518(v4, &qword_27EFA5E90, &qword_24AD5FD80);
  sub_24AD06518(v7, &qword_27EFA5E98, &qword_24AD5FD88);
  if (qword_281065140 != -1)
  {
    swift_once();
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EB8, &qword_24AD5FDA8);
  __swift_project_value_buffer(v14, qword_281065148);
  v25(v7, 1, 1, v10);
  v15 = v24;
  (*(*(v14 - 8) + 56))(v24, 1, 1, v14);
  sub_24AD5E4C4();
  sub_24AD06518(v15, &qword_27EFA5E80, &qword_24AD5FD70);
  sub_24AD06518(v7, &qword_27EFA5E98, &qword_24AD5FD88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EC0, &qword_24AD5FDB0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_24AD5F810;
  *(v16 + 56) = v8;
  v17 = sub_24AD062C8(&qword_2810653C0, &qword_27EFA5EA0, &qword_24AD5FD90);
  *(v16 + 64) = v17;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v16 + 32));
  v19 = *(v11 + 16);
  v19(boxed_opaque_existential_1, v23, v8);
  *(v16 + 96) = v8;
  *(v16 + 104) = v17;
  v20 = __swift_allocate_boxed_opaque_existential_1((v16 + 72));
  v19(v20, v22, v8);
  MEMORY[0x24C22E1C0](v16);
}

uint64_t sub_24AD01584()
{
  v0 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5E80, &qword_24AD5FD70) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v39 = &v34 - v1;
  v2 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5E88, &qword_24AD5FD78) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v4 = &v34 - v3;
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5E90, &qword_24AD5FD80) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v34 - v6;
  v8 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5E98, &qword_24AD5FD88) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = &v34 - v9;
  if (qword_281065160 != -1)
  {
    swift_once();
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EA0, &qword_24AD5FD90);
  v12 = __swift_project_value_buffer(v11, qword_281065168);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EA8, &qword_24AD5FD98);
  v14 = *(v13 - 8);
  v15 = *(v14 + 56);
  v41 = v14 + 56;
  v15(v10, 1, 1, v13);
  v38 = *(v11 - 8);
  v16 = *(v38 + 56);
  v16(v7, 1, 1, v11);
  v37 = v12;
  sub_24AD5E4C4();
  sub_24AD06518(v7, &qword_27EFA5E90, &qword_24AD5FD80);
  sub_24AD06518(v10, &qword_27EFA5E98, &qword_24AD5FD88);
  if (qword_281065180 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v11, qword_281065188);
  v15(v10, 1, 1, v13);
  v16(v7, 1, 1, v11);
  v36 = v17;
  sub_24AD5E4C4();
  sub_24AD06518(v7, &qword_27EFA5E90, &qword_24AD5FD80);
  sub_24AD06518(v10, &qword_27EFA5E98, &qword_24AD5FD88);
  if (qword_281065040 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v11, qword_281065048);
  v15(v10, 1, 1, v13);
  v16(v7, 1, 1, v11);
  v35 = v18;
  sub_24AD5E4C4();
  sub_24AD06518(v7, &qword_27EFA5E90, &qword_24AD5FD80);
  sub_24AD06518(v10, &qword_27EFA5E98, &qword_24AD5FD88);
  v19 = v15;
  if (qword_281065020 != -1)
  {
    swift_once();
  }

  v20 = v4;
  v21 = __swift_project_value_buffer(v11, qword_281065028);
  v19(v10, 1, 1, v13);
  v16(v7, 1, 1, v11);
  v34 = v21;
  sub_24AD5E4C4();
  sub_24AD06518(v7, &qword_27EFA5E90, &qword_24AD5FD80);
  sub_24AD06518(v10, &qword_27EFA5E98, &qword_24AD5FD88);
  if (qword_2810650E0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v11, qword_2810650E8);
  v19(v10, 1, 1, v13);
  v16(v7, 1, 1, v11);
  sub_24AD5E4C4();
  sub_24AD06518(v7, &qword_27EFA5E90, &qword_24AD5FD80);
  sub_24AD06518(v10, &qword_27EFA5E98, &qword_24AD5FD88);
  if (qword_281065100 != -1)
  {
    swift_once();
  }

  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EB0, &qword_24AD5FDA0);
  __swift_project_value_buffer(v22, qword_281065108);
  v19(v10, 1, 1, v13);
  v23 = *(*(v22 - 8) + 56);
  v40 = v19;
  v23(v20, 1, 1, v22);
  sub_24AD5E3C4();
  sub_24AD5E4C4();
  sub_24AD06518(v20, &qword_27EFA5E88, &qword_24AD5FD78);
  sub_24AD06518(v10, &qword_27EFA5E98, &qword_24AD5FD88);
  if (qword_2810650C0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v22, qword_2810650C8);
  v40(v10, 1, 1, v13);
  v23(v20, 1, 1, v22);
  sub_24AD5E4C4();
  sub_24AD06518(v20, &qword_27EFA5E88, &qword_24AD5FD78);
  sub_24AD06518(v10, &qword_27EFA5E98, &qword_24AD5FD88);
  if (qword_281065080 != -1)
  {
    swift_once();
  }

  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EB8, &qword_24AD5FDA8);
  __swift_project_value_buffer(v24, qword_281065088);
  v40(v10, 1, 1, v13);
  v25 = v39;
  (*(*(v24 - 8) + 56))(v39, 1, 1, v24);
  sub_24AD5E4C4();
  sub_24AD06518(v25, &qword_27EFA5E80, &qword_24AD5FD70);
  sub_24AD06518(v10, &qword_27EFA5E98, &qword_24AD5FD88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EC0, &qword_24AD5FDB0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_24AD5F830;
  *(v26 + 56) = v11;
  v27 = sub_24AD062C8(&qword_2810653C0, &qword_27EFA5EA0, &qword_24AD5FD90);
  *(v26 + 64) = v27;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v26 + 32));
  v29 = *(v38 + 16);
  v29(boxed_opaque_existential_1, v37, v11);
  *(v26 + 96) = v11;
  *(v26 + 104) = v27;
  v30 = __swift_allocate_boxed_opaque_existential_1((v26 + 72));
  v29(v30, v36, v11);
  *(v26 + 136) = v11;
  *(v26 + 144) = v27;
  v31 = __swift_allocate_boxed_opaque_existential_1((v26 + 112));
  v29(v31, v35, v11);
  *(v26 + 176) = v11;
  *(v26 + 184) = v27;
  v32 = __swift_allocate_boxed_opaque_existential_1((v26 + 152));
  v29(v32, v34, v11);
  MEMORY[0x24C22E1C0](v26);
}

uint64_t sub_24AD01F98()
{
  sub_24AD5E544();
  sub_24AD5E414();
  if (v0)
  {
  }
}

uint64_t sub_24AD0203C()
{
  v0 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5E90, &qword_24AD5FD80) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v2 = &v18 - v1;
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5E98, &qword_24AD5FD88) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v5 = &v18 - v4;
  if (qword_281065040 != -1)
  {
    swift_once();
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EA0, &qword_24AD5FD90);
  v7 = __swift_project_value_buffer(v6, qword_281065048);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EA8, &qword_24AD5FD98);
  v18 = *(*(v8 - 8) + 56);
  v18(v5, 1, 1, v8);
  v9 = *(v6 - 8);
  v10 = *(v9 + 56);
  v10(v2, 1, 1, v6);
  v19 = v7;
  sub_24AD5E4C4();
  sub_24AD06518(v2, &qword_27EFA5E90, &qword_24AD5FD80);
  sub_24AD06518(v5, &qword_27EFA5E98, &qword_24AD5FD88);
  if (qword_281065020 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v6, qword_281065028);
  v18(v5, 1, 1, v8);
  v10(v2, 1, 1, v6);
  sub_24AD5E4C4();
  sub_24AD06518(v2, &qword_27EFA5E90, &qword_24AD5FD80);
  sub_24AD06518(v5, &qword_27EFA5E98, &qword_24AD5FD88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EC0, &qword_24AD5FDB0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_24AD5F810;
  *(v12 + 56) = v6;
  v13 = sub_24AD062C8(&qword_2810653C0, &qword_27EFA5EA0, &qword_24AD5FD90);
  *(v12 + 64) = v13;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v12 + 32));
  v15 = *(v9 + 16);
  v15(boxed_opaque_existential_1, v19, v6);
  *(v12 + 96) = v6;
  *(v12 + 104) = v13;
  v16 = __swift_allocate_boxed_opaque_existential_1((v12 + 72));
  v15(v16, v11, v6);
  MEMORY[0x24C22E1C0](v12);
}

uint64_t sub_24AD023FC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EA0, &qword_24AD5FD90);
  __swift_allocate_value_buffer(v0, qword_2810650A8);
  __swift_project_value_buffer(v0, qword_2810650A8);
  sub_24AD062C8(&qword_2810653C8, &qword_27EFA5EA0, &qword_24AD5FD90);
  return sub_24AD5E4E4();
}

uint64_t sub_24AD024BC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5ED0, &qword_24AD5FDC0);
  __swift_allocate_value_buffer(v0, qword_281065128);
  __swift_project_value_buffer(v0, qword_281065128);
  sub_24AD062C8(&qword_2810653B8, &qword_27EFA5ED0, &qword_24AD5FDC0);
  return sub_24AD5E4E4();
}

uint64_t sub_24AD02578()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5ED0, &qword_24AD5FDC0);
  __swift_allocate_value_buffer(v0, qword_281065068);
  __swift_project_value_buffer(v0, qword_281065068);
  sub_24AD062C8(&qword_2810653B8, &qword_27EFA5ED0, &qword_24AD5FDC0);
  return sub_24AD5E4E4();
}

uint64_t sub_24AD0262C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EB8, &qword_24AD5FDA8);
  __swift_allocate_value_buffer(v0, qword_281065148);
  __swift_project_value_buffer(v0, qword_281065148);
  sub_24AD062C8(&qword_2810653E0, &qword_27EFA5EB8, &qword_24AD5FDA8);
  return sub_24AD5E4E4();
}

uint64_t sub_24AD026E8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EA0, &qword_24AD5FD90);
  __swift_allocate_value_buffer(v0, qword_281065168);
  __swift_project_value_buffer(v0, qword_281065168);
  sub_24AD062C8(&qword_2810653C8, &qword_27EFA5EA0, &qword_24AD5FD90);
  return sub_24AD5E4E4();
}

uint64_t sub_24AD027A0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EA0, &qword_24AD5FD90);
  __swift_allocate_value_buffer(v0, qword_281065188);
  __swift_project_value_buffer(v0, qword_281065188);
  sub_24AD062C8(&qword_2810653C8, &qword_27EFA5EA0, &qword_24AD5FD90);
  return sub_24AD5E4E4();
}

uint64_t sub_24AD02858()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EA0, &qword_24AD5FD90);
  __swift_allocate_value_buffer(v0, qword_281065048);
  __swift_project_value_buffer(v0, qword_281065048);
  sub_24AD062C8(&qword_2810653C8, &qword_27EFA5EA0, &qword_24AD5FD90);
  return sub_24AD5E4E4();
}

uint64_t sub_24AD0290C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EA0, &qword_24AD5FD90);
  __swift_allocate_value_buffer(v0, qword_281065028);
  __swift_project_value_buffer(v0, qword_281065028);
  sub_24AD062C8(&qword_2810653C8, &qword_27EFA5EA0, &qword_24AD5FD90);
  return sub_24AD5E4E4();
}

uint64_t sub_24AD029C4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EA0, &qword_24AD5FD90);
  __swift_allocate_value_buffer(v0, qword_2810650E8);
  __swift_project_value_buffer(v0, qword_2810650E8);
  sub_24AD062C8(&qword_2810653C8, &qword_27EFA5EA0, &qword_24AD5FD90);
  return sub_24AD5E4E4();
}

uint64_t sub_24AD02A84()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EB0, &qword_24AD5FDA0);
  __swift_allocate_value_buffer(v0, qword_281065108);
  __swift_project_value_buffer(v0, qword_281065108);
  sub_24AD062C8(&qword_2810653D0, &qword_27EFA5EB0, &qword_24AD5FDA0);
  return sub_24AD5E4E4();
}

uint64_t sub_24AD02B40()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EB0, &qword_24AD5FDA0);
  __swift_allocate_value_buffer(v0, qword_2810650C8);
  __swift_project_value_buffer(v0, qword_2810650C8);
  sub_24AD062C8(&qword_2810653D0, &qword_27EFA5EB0, &qword_24AD5FDA0);
  return sub_24AD5E4E4();
}

uint64_t sub_24AD02C00()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EB8, &qword_24AD5FDA8);
  __swift_allocate_value_buffer(v0, qword_281065088);
  __swift_project_value_buffer(v0, qword_281065088);
  sub_24AD062C8(&qword_2810653E0, &qword_27EFA5EB8, &qword_24AD5FDA8);
  return sub_24AD5E4E4();
}

uint64_t sub_24AD02CB4()
{
  sub_24AD5F074();
  MEMORY[0x24C22ED70](0);
  return sub_24AD5F094();
}

uint64_t sub_24AD02D20()
{
  sub_24AD5F074();
  MEMORY[0x24C22ED70](0);
  return sub_24AD5F094();
}

uint64_t sub_24AD02D70()
{
  v0 = sub_24AD5E7A4();
  __swift_allocate_value_buffer(v0, qword_281065418);
  __swift_project_value_buffer(v0, qword_281065418);
  return sub_24AD5E794();
}

uint64_t sub_24AD02DF4(uint64_t a1)
{
  v2 = sub_24AD0328C(&qword_281064A30, type metadata accessor for CKError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_24AD02E60(uint64_t a1)
{
  v2 = sub_24AD0328C(&qword_281064A30, type metadata accessor for CKError);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_24AD02ECC(uint64_t a1)
{
  v2 = sub_24AD0328C(&qword_281064A28, type metadata accessor for CKError);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_24AD02F58(uint64_t a1)
{
  v2 = sub_24AD0328C(&qword_281064A28, type metadata accessor for CKError);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_24AD02FC4(uint64_t a1)
{
  v2 = sub_24AD0328C(&qword_281064A28, type metadata accessor for CKError);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_24AD03030(void *a1, uint64_t a2)
{
  v4 = sub_24AD0328C(&qword_281064A28, type metadata accessor for CKError);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_24AD030E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_24AD0328C(&qword_281064A28, type metadata accessor for CKError);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_24AD03160()
{
  v2 = *v0;
  sub_24AD5F074();
  sub_24AD5E804();
  return sub_24AD5F094();
}

uint64_t sub_24AD031C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24AD0328C(&qword_281064A28, type metadata accessor for CKError);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_24AD0328C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24AD03454()
{
  result = qword_281064A38;
  if (!qword_281064A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281064A38);
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_24AD0365C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_24AD01F98();
}

uint64_t sub_24AD03678()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_24AD00820();
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
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

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_24AD03814(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  result = sub_24AD5EEF4();
  v10 = result;
  if (*(v7 + 16))
  {
    v36 = v5;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = v19 | (v11 << 6);
      v23 = *(*(v7 + 48) + 8 * v22);
      v24 = *(*(v7 + 56) + 8 * v22);
      if ((a2 & 1) == 0)
      {
        v25 = v23;
        v26 = v24;
      }

      v27 = *(v10 + 40);
      result = sub_24AD5EBF4();
      v28 = -1 << *(v10 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v17 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v17 + 8 * v30);
          if (v34 != -1)
          {
            v18 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v29) & ~*(v17 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v23;
      *(*(v10 + 56) + 8 * v18) = v24;
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v35 = 1 << *(v7 + 32);
      if (v35 >= 64)
      {
        bzero((v7 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v12 = -1 << v35;
      }

      *(v7 + 16) = 0;
    }

    v5 = v36;
  }

  else
  {
  }

  *v5 = v10;
  return result;
}

uint64_t sub_24AD03A74(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for CloudKitChangeSet.TombstoneInfo(0);
  v41 = *(v6 - 8);
  v7 = *(v41 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v11 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5FE0, &qword_24AD5FE98);
  v42 = a2;
  result = sub_24AD5EEF4();
  v13 = result;
  if (*(v10 + 16))
  {
    v40 = v3;
    v14 = 0;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v20 = result + 64;
    while (v18)
    {
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v25 = v22 | (v14 << 6);
      v26 = *(*(v10 + 48) + 8 * v25);
      v27 = *(v41 + 72);
      v28 = *(v10 + 56) + v27 * v25;
      if (v42)
      {
        sub_24AD06644(v28, v9);
      }

      else
      {
        sub_24AD065E0(v28, v9);
        v29 = v26;
      }

      v30 = *(v13 + 40);
      result = sub_24AD5EBF4();
      v31 = -1 << *(v13 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v20 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v20 + 8 * v33);
          if (v37 != -1)
          {
            v21 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v32) & ~*(v20 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v13 + 48) + 8 * v21) = v26;
      result = sub_24AD06644(v9, *(v13 + 56) + v27 * v21);
      ++*(v13 + 16);
    }

    v23 = v14;
    while (1)
    {
      v14 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v14 >= v19)
      {
        break;
      }

      v24 = v15[v14];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v18 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v38 = 1 << *(v10 + 32);
    v3 = v40;
    if (v38 >= 64)
    {
      bzero((v10 + 64), ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v38;
    }

    *(v10 + 16) = 0;
  }

LABEL_36:
  *v3 = v13;
  return result;
}

uint64_t sub_24AD03D80(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5F48, &qword_24AD5FE10);
  v41 = a2;
  result = sub_24AD5EEF4();
  v8 = result;
  if (*(v5 + 16))
  {
    v39 = v2;
    v40 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v42 = (v13 - 1) & v13;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 24 * v22);
      v24 = v23[1];
      v43 = *v23;
      v25 = v23[2];
      v26 = *(v5 + 56) + 16 * v22;
      v27 = *v26;
      v28 = *(v26 + 8);
      if ((v41 & 1) == 0)
      {

        v29 = v25;
        sub_24AD063F0(v27, v28);
      }

      v30 = *(v8 + 40);
      sub_24AD5F074();
      sub_24AD5E874();
      sub_24AD5EC14();
      result = sub_24AD5F094();
      v31 = -1 << *(v8 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v15 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v15 + 8 * v33);
          if (v37 != -1)
          {
            v16 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v32) & ~*(v15 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 24 * v16);
      *v17 = v43;
      v17[1] = v24;
      v17[2] = v25;
      v18 = *(v8 + 56) + 16 * v16;
      *v18 = v27;
      *(v18 + 8) = v28;
      ++*(v8 + 16);
      v5 = v40;
      v13 = v42;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v42 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_35;
    }

    v38 = 1 << *(v5 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero(v10, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v38;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_24AD04070(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5F50, &qword_24AD5FE18);
  v37 = a2;
  result = sub_24AD5EEF4();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(*(v5 + 48) + 8 * v21);
      v23 = (*(v5 + 56) + 16 * v21);
      v24 = *v23;
      v25 = v23[1];
      if ((v37 & 1) == 0)
      {
        v26 = v22;
      }

      v27 = *(v8 + 40);
      result = sub_24AD5EBF4();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      v17 = (*(v8 + 56) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_24AD04360(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v12 = *(v62 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v62);
  v61 = &v50 - v14;
  v15 = sub_24AD5E404();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v63 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *v9;
  if (*(*v9 + 24) > a1)
  {
    v20 = *(*v9 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v57 = a2;
  result = sub_24AD5EEF4();
  v22 = result;
  if (*(v19 + 16))
  {
    v23 = 0;
    v24 = (v19 + 64);
    v25 = 1 << *(v19 + 32);
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    else
    {
      v26 = -1;
    }

    v27 = v16;
    v28 = v26 & *(v19 + 64);
    v29 = (v25 + 63) >> 6;
    v53 = (v27 + 16);
    v54 = v27;
    v51 = v9;
    v52 = v12 + 16;
    v55 = v19;
    v56 = v12;
    v58 = (v12 + 32);
    v59 = (v27 + 32);
    v30 = result + 64;
    while (v28)
    {
      v32 = __clz(__rbit64(v28));
      v28 &= v28 - 1;
LABEL_17:
      v35 = v32 | (v23 << 6);
      v36 = *(v19 + 48);
      v60 = *(v27 + 72);
      v37 = v36 + v60 * v35;
      if (v57)
      {
        (*v59)(v63, v37, v15);
        v38 = *(v19 + 56);
        v39 = *(v56 + 72);
        (*(v56 + 32))(v61, v38 + v39 * v35, v62);
      }

      else
      {
        (*v53)(v63, v37, v15);
        v40 = *(v19 + 56);
        v39 = *(v56 + 72);
        (*(v56 + 16))(v61, v40 + v39 * v35, v62);
      }

      v41 = *(v22 + 40);
      sub_24AD0328C(&qword_2810653F8, MEMORY[0x277CC95F0]);
      result = sub_24AD5E7F4();
      v42 = -1 << *(v22 + 32);
      v43 = result & ~v42;
      v44 = v43 >> 6;
      if (((-1 << v43) & ~*(v30 + 8 * (v43 >> 6))) == 0)
      {
        v45 = 0;
        v46 = (63 - v42) >> 6;
        while (++v44 != v46 || (v45 & 1) == 0)
        {
          v47 = v44 == v46;
          if (v44 == v46)
          {
            v44 = 0;
          }

          v45 |= v47;
          v48 = *(v30 + 8 * v44);
          if (v48 != -1)
          {
            v31 = __clz(__rbit64(~v48)) + (v44 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v31 = __clz(__rbit64((-1 << v43) & ~*(v30 + 8 * (v43 >> 6)))) | v43 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v30 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
      (*v59)((*(v22 + 48) + v60 * v31), v63, v15);
      result = (*v58)(*(v22 + 56) + v39 * v31, v61, v62);
      ++*(v22 + 16);
      v27 = v54;
      v19 = v55;
    }

    v33 = v23;
    while (1)
    {
      v23 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v23 >= v29)
      {
        break;
      }

      v34 = v24[v23];
      ++v33;
      if (v34)
      {
        v32 = __clz(__rbit64(v34));
        v28 = (v34 - 1) & v34;
        goto LABEL_17;
      }
    }

    if ((v57 & 1) == 0)
    {

      v9 = v51;
      goto LABEL_36;
    }

    v49 = 1 << *(v19 + 32);
    v9 = v51;
    if (v49 >= 64)
    {
      bzero(v24, ((v49 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v24 = -1 << v49;
    }

    *(v19 + 16) = 0;
  }

LABEL_36:
  *v9 = v22;
  return result;
}

uint64_t sub_24AD04804(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5F30, &qword_24AD5FDF8);
  v41 = *(v6 - 8);
  v7 = *(v41 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v39 - v8;
  v10 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v11 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5F38, &qword_24AD5FE00);
  v42 = a2;
  result = sub_24AD5EEF4();
  v13 = result;
  if (*(v10 + 16))
  {
    v40 = v3;
    v14 = 0;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v20 = result + 64;
    while (v18)
    {
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v25 = v22 | (v14 << 6);
      v26 = *(*(v10 + 48) + 8 * v25);
      v27 = *(v41 + 72);
      v28 = *(v10 + 56) + v27 * v25;
      if (v42)
      {
        sub_24AD06380(v28, v9);
      }

      else
      {
        sub_24AD06310(v28, v9);
        v29 = v26;
      }

      v30 = *(v13 + 40);
      result = sub_24AD5EBF4();
      v31 = -1 << *(v13 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v20 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v20 + 8 * v33);
          if (v37 != -1)
          {
            v21 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v32) & ~*(v20 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v13 + 48) + 8 * v21) = v26;
      result = sub_24AD06380(v9, *(v13 + 56) + v27 * v21);
      ++*(v13 + 16);
    }

    v23 = v14;
    while (1)
    {
      v14 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v14 >= v19)
      {
        break;
      }

      v24 = v15[v14];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v18 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v38 = 1 << *(v10 + 32);
    v3 = v40;
    if (v38 >= 64)
    {
      bzero((v10 + 64), ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v38;
    }

    *(v10 + 16) = 0;
  }

LABEL_36:
  *v3 = v13;
  return result;
}

unint64_t sub_24AD04B18(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t sub_24AD04B5C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for CloudKitChangeSet.TombstoneInfo(0);
  result = sub_24AD06644(a3, v7 + *(*(v8 - 8) + 72) * a1);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

uint64_t sub_24AD04C2C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v12 = a4[6];
  v13 = sub_24AD5E404();
  (*(*(v13 - 8) + 32))(v12 + *(*(v13 - 8) + 72) * a1, a2, v13);
  v14 = a4[7];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * a1, a3, v15);
  v17 = a4[2];
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v19;
  }

  return result;
}

id sub_24AD04D5C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_24AD5EEE4();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        v21 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        *(*(v6 + 56) + 8 * v19) = v21;
        v22 = v20;
        result = v21;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

id sub_24AD04EAC()
{
  v1 = v0;
  v2 = type metadata accessor for CloudKitChangeSet.TombstoneInfo(0);
  v25 = *(v2 - 8);
  v3 = *(v25 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5FE0, &qword_24AD5FE98);
  v6 = *v0;
  v7 = sub_24AD5EEE4();
  v8 = v7;
  if (*(v6 + 16))
  {
    v24 = v1;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = *(*(v6 + 48) + 8 * v21);
        v23 = *(v25 + 72) * v21;
        sub_24AD065E0(*(v6 + 56) + v23, v5);
        *(*(v8 + 48) + 8 * v21) = v22;
        sub_24AD06644(v5, *(v8 + 56) + v23);
        result = v22;
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v24;
        goto LABEL_18;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_24AD050BC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5F48, &qword_24AD5FE10);
  v2 = *v0;
  v3 = sub_24AD5EEE4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 24 * v17;
        v19 = *(v2 + 56);
        v20 = (*(v2 + 48) + 24 * v17);
        v21 = v20[1];
        v22 = v20[2];
        v17 *= 16;
        v23 = *(v19 + v17);
        v24 = *(v19 + v17 + 8);
        v25 = (*(v4 + 48) + v18);
        *v25 = *v20;
        v25[1] = v21;
        v25[2] = v22;
        v26 = *(v4 + 56) + v17;
        *v26 = v23;
        *(v26 + 8) = v24;

        v27 = v22;
        result = sub_24AD063F0(v23, v24);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
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

void *sub_24AD0525C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5F50, &qword_24AD5FE18);
  v2 = *v0;
  v3 = sub_24AD5EEE4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = (*(v2 + 56) + 16 * v17);
        v20 = *v19;
        v21 = v19[1];
        *(*(v4 + 48) + 8 * v17) = v18;
        v22 = (*(v4 + 56) + 16 * v17);
        *v22 = v20;
        v22[1] = v21;
        v23 = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
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

char *sub_24AD05438(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v52 = *(v49 - 8);
  v8 = *(v52 + 64);
  MEMORY[0x28223BE20](v49);
  v48 = &v38 - v9;
  v47 = sub_24AD5E404();
  v51 = *(v47 - 8);
  v10 = *(v51 + 64);
  MEMORY[0x28223BE20](v47);
  v46 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v12 = *v4;
  v13 = sub_24AD5EEE4();
  v14 = v13;
  if (*(v12 + 16))
  {
    result = (v13 + 64);
    v16 = (v12 + 64);
    v17 = ((1 << *(v14 + 32)) + 63) >> 6;
    v38 = v7;
    v39 = v12 + 64;
    if (v14 != v12 || result >= &v16[8 * v17])
    {
      result = memmove(result, v16, 8 * v17);
    }

    v18 = 0;
    v19 = *(v12 + 16);
    v50 = v14;
    *(v14 + 16) = v19;
    v20 = 1 << *(v12 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & *(v12 + 64);
    v23 = (v20 + 63) >> 6;
    v43 = v51 + 16;
    v44 = v23;
    v41 = v51 + 32;
    v42 = v52 + 16;
    v40 = v52 + 32;
    v45 = v12;
    v25 = v46;
    v24 = v47;
    if (v22)
    {
      do
      {
        v26 = __clz(__rbit64(v22));
        v53 = (v22 - 1) & v22;
LABEL_14:
        v29 = v26 | (v18 << 6);
        v30 = v51;
        v31 = *(v51 + 72) * v29;
        (*(v51 + 16))(v25, *(v12 + 48) + v31, v24);
        v32 = v52;
        v33 = *(v52 + 72) * v29;
        v34 = v48;
        v35 = v49;
        (*(v52 + 16))(v48, *(v12 + 56) + v33, v49);
        v36 = v50;
        (*(v30 + 32))(*(v50 + 48) + v31, v25, v24);
        v37 = *(v36 + 56);
        v12 = v45;
        result = (*(v32 + 32))(v37 + v33, v34, v35);
        v23 = v44;
        v22 = v53;
      }

      while (v53);
    }

    v27 = v18;
    while (1)
    {
      v18 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v18 >= v23)
      {

        v7 = v38;
        v14 = v50;
        goto LABEL_18;
      }

      v28 = *(v39 + 8 * v18);
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v53 = (v28 - 1) & v28;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v7 = v14;
  }

  return result;
}

id sub_24AD05784()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5F30, &qword_24AD5FDF8);
  v25 = *(v2 - 8);
  v3 = *(v25 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v24 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5F38, &qword_24AD5FE00);
  v6 = *v0;
  v7 = sub_24AD5EEE4();
  v8 = v7;
  if (*(v6 + 16))
  {
    v24 = v1;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = *(*(v6 + 48) + 8 * v21);
        v23 = *(v25 + 72) * v21;
        sub_24AD06310(*(v6 + 56) + v23, v5);
        *(*(v8 + 48) + 8 * v21) = v22;
        sub_24AD06380(v5, *(v8 + 56) + v23);
        result = v22;
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v24;
        goto LABEL_18;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

id sub_24AD0599C()
{
  v7[1] = *MEMORY[0x277D85DE8];
  v1 = sub_24AD5E384();
  v7[0] = 0;
  v2 = [v0 initForReadingFromData:v1 error:v7];

  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    sub_24AD5E334();

    swift_willThrow();
  }

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

id sub_24AD05A5C()
{
  if (qword_281065080 != -1)
  {
    swift_once();
  }

  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EB8, &qword_24AD5FDA8);
  __swift_project_value_buffer(v1, qword_281065088);
  sub_24AD5E534();
  v2 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
  sub_24AD0615C(v6, v7);
  v3 = sub_24AD0599C();
  sub_24AD06204(v6, v7);
  if (v0)
  {
    sub_24AD06204(v6, v7);
  }

  else
  {
    [v3 _enableStrictSecureDecodingMode];
    sub_24AD06578(0, &qword_27EFA5F10, 0x277CCAAC8);
    sub_24AD06578(0, &qword_27EFA5F18, 0x277CBC5A0);
    v4 = sub_24AD5EB84();
    v2 = v4;
    if (v4)
    {

      sub_24AD06204(v6, v7);
    }

    else
    {
      sub_24AD06274();
      swift_allocError();
      swift_willThrow();
      sub_24AD06204(v6, v7);
    }
  }

  return v2;
}

void sub_24AD05C18()
{
  v6 = *MEMORY[0x277D85DE8];
  v0 = [objc_allocWithZone(MEMORY[0x277CBEB58]) init];
  sub_24AD06578(0, &qword_27EFA5F70, 0x277CBC680);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5F78, &qword_24AD5FE38);
  [v0 addObject_];
  swift_unknownObjectRelease();
  sub_24AD06578(0, &qword_27EFA5F80, 0x277CBC2C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5F88, &qword_24AD5FE40);
  [v0 addObject_];
  swift_unknownObjectRelease();
  v5 = 0;
  v1 = v0;
  sub_24AD5EA04();

  v2 = sub_24AD5E114();
  sub_24AD0328C(&qword_27EFA5F90, MEMORY[0x277D08938]);
  swift_allocError();
  *v3 = 0xD000000000000032;
  v3[1] = 0x800000024AD61960;
  (*(*(v2 - 8) + 104))(v3, *MEMORY[0x277D08930], v2);
  swift_willThrow();

  v4 = *MEMORY[0x277D85DE8];
}

uint64_t sub_24AD05F28()
{
  v1 = sub_24AD5E1D4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20]();
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_24AD5E1F4();
  if (!v0 && v7 >> 60 == 15)
  {
    v8 = MEMORY[0x24C22E060](32);
    v10 = v9;
    v12[0] = v8;
    v12[1] = v9;
    (*(v2 + 104))(v5, *MEMORY[0x277D08A30], v1);
    v13 = v8;
    sub_24AD0615C(v8, v10);
    sub_24AD061B0();
    sub_24AD5E1E4();
    (*(v2 + 8))(v5, v1);
    v11 = v13;
    sub_24AD06204(v13, v10);
    return v11;
  }

  return result;
}

uint64_t sub_24AD0615C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_24AD061B0()
{
  result = qword_27EFA5ED8;
  if (!qword_27EFA5ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA5ED8);
  }

  return result;
}

uint64_t sub_24AD06204(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_24AD06258()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_24ACFA0AC();
}

unint64_t sub_24AD06274()
{
  result = qword_27EFA5F20;
  if (!qword_27EFA5F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA5F20);
  }

  return result;
}

uint64_t sub_24AD062C8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24AD06310(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5F30, &qword_24AD5FDF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AD06380(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5F30, &qword_24AD5FDF8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_24AD063F0(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_24AD06518(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_24AD06578(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_24AD065E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudKitChangeSet.TombstoneInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AD06644(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudKitChangeSet.TombstoneInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AD066B8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24AD066D8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

void sub_24AD06728(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for CloudKitCacheDatabase.Error(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for CloudKitCacheDatabase.Error(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_24AD06864()
{
  result = qword_27EFA5FF8;
  if (!qword_27EFA5FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA5FF8);
  }

  return result;
}

void *CloudKitStateChange.databaseChangeToken.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t CloudKitStateChange.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = *(v0 + 48);
  v5 = *(v0 + 56);
  v24 = *(v0 + 64);
  if (v2)
  {
    v7 = v2;
    v8 = [v7 description];
    v9 = sub_24AD5E844();
    v11 = v10;
  }

  else
  {
    v11 = 0xE500000000000000;
    v9 = 0x3E6C696E3CLL;
  }

  sub_24AD5ED34();
  MEMORY[0x24C22E570](0x6E6961746E6F635BLL, 0xEC000000203A7265);
  v12 = [v1 description];
  v13 = sub_24AD5E844();
  v15 = v14;

  MEMORY[0x24C22E570](v13, v15);

  MEMORY[0x24C22E570](0x6E656B6F54626420, 0xEB000000005B203ALL);
  MEMORY[0x24C22E570](v9, v11);

  MEMORY[0x24C22E570](0xD000000000000011, 0x800000024AD619C0);
  v25 = *(v3 + 16);
  v16 = sub_24AD5EF74();
  MEMORY[0x24C22E570](v16);

  MEMORY[0x24C22E570](0x65696669646F6D20, 0xEB00000000203A64);
  if (v4 >> 62)
  {
    sub_24AD5EC94();
  }

  else
  {
    v17 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v18 = sub_24AD5EF74();
  MEMORY[0x24C22E570](v18);

  MEMORY[0x24C22E570](0x646574656C656420, 0xEA0000000000203ALL);
  v26 = *(v6 + 16);
  v19 = sub_24AD5EF74();
  MEMORY[0x24C22E570](v19);

  MEMORY[0x24C22E570](0x6B6F54656E6F7A20, 0xED0000203A736E65);
  v20 = sub_24AD06578(0, &qword_281064998, 0x277CBC5F8);
  sub_24AD06578(0, &qword_281064980, 0x277CBC670);
  sub_24AD06C8C();
  v21 = sub_24AD5E7D4();
  MEMORY[0x24C22E570](v21);

  MEMORY[0x24C22E570](0x6E6F5A74736F6C20, 0xEC000000203A7365);
  v22 = MEMORY[0x24C22E5C0](v24, v20);
  MEMORY[0x24C22E570](v22);

  return 0;
}

unint64_t sub_24AD06C8C()
{
  result = qword_281064990;
  if (!qword_281064990)
  {
    sub_24AD06578(255, &qword_281064998, 0x277CBC5F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281064990);
  }

  return result;
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

uint64_t sub_24AD06D1C(uint64_t *a1, int a2)
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

uint64_t sub_24AD06D64(uint64_t result, int a2, int a3)
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

void sub_24AD06DC4(uint64_t a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6008, &qword_24AD60098);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v16 - v7;
  v9 = type metadata accessor for CloudKitChangeSet.TombstoneInfo(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_24AD06518(a1, &qword_27EFA6008, &qword_24AD60098);
    sub_24AD09F3C(a2, v8);

    sub_24AD06518(v8, &qword_27EFA6008, &qword_24AD60098);
  }

  else
  {
    sub_24AD06644(a1, v12);
    v14 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_24AD0B448(v12, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v17;
  }
}

uint64_t sub_24AD06F68(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6058, &unk_24AD60260);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5FA0, &qword_24AD5FE50);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - v12;
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_24AD06518(a1, &qword_27EFA6058, &unk_24AD60260);
    sub_24AD0A090(a2, &qword_27EFA5FA0, &qword_24AD5FE50, sub_24AD053CC, v8);
    v14 = sub_24AD5E404();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_24AD06518(v8, &qword_27EFA6058, &unk_24AD60260);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_24AD0B5AC(v13, a2, isUniquelyReferenced_nonNull_native);
    v18 = sub_24AD5E404();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t sub_24AD071C0(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6068, &qword_24AD614A0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5FD0, &unk_24AD60290);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - v12;
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_24AD06518(a1, &qword_27EFA6068, &qword_24AD614A0);
    sub_24AD0A090(a2, &qword_27EFA5FD0, &unk_24AD60290, sub_24AD053F0, v8);
    v14 = sub_24AD5E404();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_24AD06518(v8, &qword_27EFA6068, &qword_24AD614A0);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_24AD0B7BC(v13, a2, isUniquelyReferenced_nonNull_native);
    v18 = sub_24AD5E404();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t sub_24AD07418(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6060, &qword_24AD60278);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5FC0, &unk_24AD60280);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - v12;
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_24AD06518(a1, &qword_27EFA6060, &qword_24AD60278);
    sub_24AD0A090(a2, &qword_27EFA5FC0, &unk_24AD60280, sub_24AD05414, v8);
    v14 = sub_24AD5E404();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_24AD06518(v8, &qword_27EFA6060, &qword_24AD60278);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_24AD0B9CC(v13, a2, isUniquelyReferenced_nonNull_native);
    v18 = sub_24AD5E404();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t CloudKitChangeSet.recordsToSave.getter()
{
  v1 = *(v0 + *(type metadata accessor for CloudKitChangeSet(0) + 24));
}

uint64_t CloudKitChangeSet.recordIDsToDelete.getter()
{
  v1 = *(v0 + *(type metadata accessor for CloudKitChangeSet(0) + 28));
}

uint64_t sub_24AD07718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a3;
  v4[14] = a4;
  v4[11] = a1;
  v4[12] = a2;
  v5 = sub_24AD5E404();
  v4[15] = v5;
  v6 = *(v5 - 8);
  v4[16] = v6;
  v7 = *(v6 + 64) + 15;
  v4[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AD077DC, 0, 0);
}

uint64_t sub_24AD077DC()
{
  v1 = v0[12];
  v2 = v0[13];
  type metadata accessor for CloudKitChangeSet.Adaptor();
  v3 = swift_allocObject();
  v0[18] = v3;
  v4 = MEMORY[0x277D84F98];
  v3[3] = MEMORY[0x277D84F98];
  v3[4] = v4;
  v3[2] = v1;

  v9 = (v2 + *v2);
  v5 = v2[1];
  v6 = swift_task_alloc();
  v0[19] = v6;
  *v6 = v0;
  v6[1] = sub_24AD07904;
  v7 = v0[14];

  return v9(v3);
}

uint64_t sub_24AD07904()
{
  v2 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = sub_24AD07C2C;
  }

  else
  {
    v3 = sub_24AD07A18;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24AD07A18()
{
  v1 = v0[18];
  swift_beginAccess();
  if (*(*(v1 + 24) + 16))
  {
    goto LABEL_4;
  }

  v2 = v0[18];
  swift_beginAccess();
  v3 = *(v2 + 32);
  if ((v3 & 0xC000000000000001) != 0)
  {

    v4 = sub_24AD5EC94();

    if (v4)
    {
LABEL_4:
      v6 = v0[17];
      v5 = v0[18];
      v7 = v0[15];
      v8 = v0[16];
      v9 = v0[11];
      v10 = v0[12];
      sub_24AD5E3F4();
      swift_beginAccess();
      v11 = *(v5 + 32);

      v13 = sub_24AD32A2C(v12);

      v14 = *(v5 + 24);

      *v9 = v10;
      v15 = type metadata accessor for CloudKitChangeSet(0);
      (*(v8 + 32))(&v9[v15[5]], v6, v7);
      *&v9[v15[6]] = v13;
      *&v9[v15[7]] = v14;
      (*(*(v15 - 1) + 56))(v9, 0, 1, v15);
      goto LABEL_5;
    }
  }

  else if (*(v3 + 16))
  {
    goto LABEL_4;
  }

  v19 = v0[18];
  v20 = v0[11];
  v21 = v0[12];

  v22 = type metadata accessor for CloudKitChangeSet(0);
  (*(*(v22 - 8) + 56))(v20, 1, 1, v22);
LABEL_5:
  v16 = v0[17];

  v17 = v0[1];

  return v17();
}

uint64_t sub_24AD07C2C()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[12];

  v4 = v0[1];
  v5 = v0[20];

  return v4();
}

unint64_t CloudKitChangeSet.description.getter()
{
  v1 = v0;
  sub_24AD5ED34();

  v2 = type metadata accessor for CloudKitChangeSet(0);
  v3 = v0 + v2[5];
  v4 = sub_24AD5E3E4();
  MEMORY[0x24C22E570](v4);

  MEMORY[0x24C22E570](0x203A65766173203ALL, 0xE800000000000000);
  v5 = *(v1 + v2[6]);
  if (v5 >> 62)
  {
    if (v5 < 0)
    {
      v10 = *(v1 + v2[6]);
    }

    sub_24AD5EC94();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = sub_24AD5EF74();
  MEMORY[0x24C22E570](v7);

  MEMORY[0x24C22E570](0x3A6574656C656420, 0xE900000000000020);
  v11 = *(*(v1 + v2[7]) + 16);
  v8 = sub_24AD5EF74();
  MEMORY[0x24C22E570](v8);

  MEMORY[0x24C22E570](62, 0xE100000000000000);
  return 0xD000000000000013;
}

uint64_t sub_24AD07E2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_24AD5E404();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t CloudKitChangeSet.Adaptor.create<A>(record:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[13] = a3;
  v4[14] = v3;
  v4[11] = a1;
  v4[12] = a2;
  return MEMORY[0x2822009F8](sub_24AD07EC4, 0, 0);
}

uint64_t sub_24AD07EC4()
{
  v1 = *(v0[14] + 16);
  v2 = *(v0[13] + 88);
  v9 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  v0[15] = v4;
  *v4 = v0;
  v4[1] = sub_24AD07FDC;
  v5 = v0[12];
  v6 = v0[13];
  v7 = v0[11];

  return v9(v1, v5, v6);
}

uint64_t sub_24AD07FDC(uint64_t a1)
{
  v3 = *(*v2 + 120);
  v4 = *v2;
  *(v4 + 128) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_24AD08110, 0, 0);
  }
}

uint64_t sub_24AD08110()
{
  v1 = [*(v0 + 128) recordChangeTag];
  if (v1)
  {
    v2 = *(v0 + 128);

    sub_24AD0AE88();
    swift_allocError();
    v4 = 1;
LABEL_13:
    *v3 = v4;
    swift_willThrow();

    v21 = *(v0 + 8);
    goto LABEL_14;
  }

  v5 = *(v0 + 128);
  v6 = *(v0 + 112);
  swift_beginAccess();
  v7 = *(v6 + 32);

  v8 = [v5 recordID];
  if ((v7 & 0xC000000000000001) != 0)
  {
    v9 = v8;
    v10 = sub_24AD5EEB4();

    if (v10)
    {
      goto LABEL_12;
    }
  }

  else if (*(v7 + 16))
  {
    v11 = v8;
    sub_24AD09620(v8);
    v13 = v12;

    if (v13)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v14 = *(v0 + 128);
  v15 = *(v0 + 112);
  swift_beginAccess();
  v16 = *(v15 + 24);

  v17 = [v14 recordID];
  if (*(v16 + 16))
  {
    v18 = v17;
    sub_24AD09620(v17);
    v20 = v19;

    if (v20)
    {
LABEL_12:
      v2 = *(v0 + 128);
      sub_24AD0AE88();
      swift_allocError();
      v4 = 4;
      goto LABEL_13;
    }
  }

  else
  {
  }

  v23 = [*(v0 + 128) recordID];
  swift_beginAccess();
  v24 = *(v6 + 32);
  v25 = *(v0 + 128);
  if ((v24 & 0xC000000000000001) != 0)
  {
    if (v24 < 0)
    {
      v26 = *(v6 + 32);
    }

    else
    {
      v26 = v24 & 0xFFFFFFFFFFFFFF8;
    }

    v27 = v25;
    result = sub_24AD5EC94();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    *(v6 + 32) = sub_24AD0A4A8(v26, result + 1);
    v28 = *(v0 + 128);
  }

  else
  {
    v29 = *(v6 + 32);
    v28 = v25;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v31 = *(v6 + 32);
  sub_24AD0AD44(v28, v23, isUniquelyReferenced_nonNull_native);
  *(v6 + 32) = v31;

  swift_endAccess();
  v21 = *(v0 + 8);
LABEL_14:

  return v21();
}

uint64_t CloudKitChangeSet.Adaptor.update<A>(record:updateBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[19] = a5;
  v6[20] = v5;
  v6[17] = a3;
  v6[18] = a4;
  v6[15] = a1;
  v6[16] = a2;
  v8 = sub_24AD5EC34();
  v6[21] = v8;
  v9 = *(v8 - 8);
  v6[22] = v9;
  v10 = *(v9 + 64) + 15;
  v6[23] = swift_task_alloc();
  v11 = *(a4 - 8);
  v6[24] = v11;
  v12 = *(v11 + 64) + 15;
  v6[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AD08508, 0, 0);
}

uint64_t sub_24AD08508()
{
  v1 = *(v0[20] + 16);
  v2 = *(v0[19] + 88);
  v9 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  v0[26] = v4;
  *v4 = v0;
  v4[1] = sub_24AD08620;
  v5 = v0[18];
  v6 = v0[19];
  v7 = v0[15];

  return v9(v1, v5, v6);
}

uint64_t sub_24AD08620(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 208);
  v7 = *v2;
  *(v3 + 216) = a1;
  *(v3 + 224) = v1;

  if (v1)
  {
    v5 = sub_24AD08C68;
  }

  else
  {
    v5 = sub_24AD08734;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24AD08734()
{
  v1 = *(v0 + 216);
  *(v0 + 112) = v1;
  v2 = [v1 recordChangeTag];
  if (!v2)
  {
    v9 = *(v0 + 216);
    sub_24AD0AE88();
    swift_allocError();
    v11 = 2;
LABEL_13:
    *v10 = v11;
    swift_willThrow();

    v23 = *(v0 + 200);
    v24 = *(v0 + 184);

    v25 = *(v0 + 8);
    goto LABEL_32;
  }

  v3 = *(v0 + 216);
  v4 = *(v0 + 160);

  swift_beginAccess();
  v5 = *(v4 + 32);

  v6 = [v3 recordID];
  if ((v5 & 0xC000000000000001) != 0)
  {
    v7 = v6;
    v8 = sub_24AD5EEB4();

    if (v8)
    {
      goto LABEL_12;
    }
  }

  else if (*(v5 + 16))
  {
    v12 = v6;
    sub_24AD09620(v6);
    v14 = v13;

    if (v14)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v15 = *(v0 + 216);
  v16 = *(v0 + 160);
  swift_beginAccess();
  v17 = *(v16 + 24);

  v18 = [v15 recordID];
  if (*(v17 + 16))
  {
    v19 = v18;
    sub_24AD09620(v18);
    v21 = v20;

    if (v21)
    {
LABEL_12:
      v9 = *(v0 + 216);
      sub_24AD0AE88();
      swift_allocError();
      v11 = 4;
      goto LABEL_13;
    }
  }

  else
  {
  }

  if (MEMORY[0x24C22DDC0](v22))
  {
    v26 = *(v0 + 216);
    v27 = [v26 valueStore];
    [v27 resetChangedKeys];

    v28 = [v26 encryptedValueStore];
    [v28 resetChangedKeys];
  }

  v29 = [*(v0 + 216) recordID];
  swift_beginAccess();
  v30 = sub_24AD08CD8(v29, *(v4 + 32));

  if (v30)
  {
    v31 = *(v0 + 224);
    v32 = *(v0 + 184);
    v34 = *(v0 + 144);
    v33 = *(v0 + 152);
    swift_endAccess();
    (*(v33 + 80))(v30, v34, v33);
    if (!v31)
    {
      v41 = *(v0 + 192);
      v40 = *(v0 + 200);
      v42 = *(v0 + 184);
      v43 = *(v0 + 144);
      (*(v41 + 56))(v42, 0, 1, v43);
      (*(v41 + 32))(v40, v42, v43);
      goto LABEL_23;
    }

    v35 = *(v0 + 184);
    v36 = *(v0 + 192);
    v37 = *(v0 + 168);
    v38 = *(v0 + 176);
    v39 = *(v0 + 144);

    (*(v36 + 56))(v35, 1, 1, v39);
    (*(v38 + 8))(v35, v37);
  }

  else
  {
    swift_endAccess();
  }

  (*(*(v0 + 192) + 16))(*(v0 + 200), *(v0 + 120), *(v0 + 144));
LABEL_23:
  v44 = *(v0 + 200);
  v46 = *(v0 + 144);
  v45 = *(v0 + 152);
  v47 = *(v0 + 136);
  v48 = *(v0 + 120);
  (*(v0 + 128))(v44);
  (*(v45 + 104))(v0 + 112, v44, v46, v45, v46, v45);
  v49 = *(v45 + 8);
  v50 = sub_24AD5E824();
  v51 = *(v0 + 112);
  if ((v50 & 1) == 0)
  {
    v52 = v51;
    v53 = [v52 recordID];
    swift_beginAccess();
    v54 = *(v4 + 32);
    if ((v54 & 0xC000000000000001) != 0)
    {
      if (v54 < 0)
      {
        v55 = *(v4 + 32);
      }

      else
      {
        v55 = v54 & 0xFFFFFFFFFFFFFF8;
      }

      result = sub_24AD5EC94();
      if (__OFADD__(result, 1))
      {
        __break(1u);
        return result;
      }

      *(v4 + 32) = sub_24AD0A4A8(v55, result + 1);
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v59 = *(v4 + 32);
    sub_24AD0AD44(v52, v53, isUniquelyReferenced_nonNull_native);
    *(v4 + 32) = v59;

    swift_endAccess();
  }

  v58 = *(v0 + 184);
  (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 144));

  v25 = *(v0 + 8);
LABEL_32:

  return v25();
}

uint64_t sub_24AD08C68()
{
  v1 = v0[28];
  v2 = v0[25];
  v3 = v0[23];

  v4 = v0[1];

  return v4();
}

void *sub_24AD08CD8(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_24AD5EE94();

    if (v4)
    {
      sub_24AD06578(0, &qword_27EFA5F18, 0x277CBC5A0);
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = sub_24AD09620(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

uint64_t CloudKitChangeSet.Adaptor.delete<A>(record:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[13] = a3;
  v4[14] = v3;
  v4[11] = a1;
  v4[12] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6008, &qword_24AD60098) - 8) + 64) + 15;
  v4[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AD08E3C, 0, 0);
}

uint64_t sub_24AD08E3C()
{
  v1 = *(v0[14] + 16);
  v2 = *(v0[13] + 88);
  v9 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  v0[16] = v4;
  *v4 = v0;
  v4[1] = sub_24AD08F54;
  v5 = v0[12];
  v6 = v0[13];
  v7 = v0[11];

  return v9(v1, v5, v6);
}

uint64_t sub_24AD08F54(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 128);
  v5 = *v2;
  *(*v2 + 136) = a1;

  if (v1)
  {
    v6 = *(v3 + 120);

    v7 = *(v5 + 8);

    return v7();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_24AD090A4, 0, 0);
  }
}

uint64_t sub_24AD090A4()
{
  v1 = [*(v0 + 136) recordChangeTag];
  if (!v1)
  {
    v10 = *(v0 + 136);
    sub_24AD0AE88();
    swift_allocError();
    *v11 = 3;
    swift_willThrow();
LABEL_13:

    v19 = *(v0 + 120);

    v20 = *(v0 + 8);
    goto LABEL_15;
  }

  v2 = *(v0 + 136);
  v3 = *(v0 + 112);

  v4 = [v2 recordID];
  swift_beginAccess();
  v5 = *(v3 + 32);
  if ((v5 & 0xC000000000000001) != 0)
  {
    if (v5 < 0)
    {
      v6 = *(v3 + 32);
    }

    v7 = *(v3 + 32);

    v8 = v4;
    v9 = sub_24AD5EEB4();
  }

  else
  {
    if (!*(v5 + 16))
    {
      goto LABEL_10;
    }

    v12 = *(v3 + 32);

    sub_24AD09620(v4);
    v9 = v13;
  }

  if (v9)
  {
LABEL_12:
    v10 = *(v0 + 136);
    sub_24AD0AE88();
    swift_allocError();
    *v18 = 4;
    swift_willThrow();

    goto LABEL_13;
  }

LABEL_10:
  v14 = *(v0 + 112);
  swift_beginAccess();
  if (*(*(v14 + 24) + 16))
  {
    v15 = *(v14 + 24);

    sub_24AD09620(v4);
    v17 = v16;

    if (v17)
    {
      goto LABEL_12;
    }
  }

  v32 = *(v0 + 136);
  v21 = *(v0 + 120);
  v22 = *(v0 + 104);
  v30 = *(v0 + 88);
  v31 = *(v0 + 96);
  v23 = sub_24AD5EBE4();
  v25 = v24;
  v26 = *(v22 + 40);
  v27 = type metadata accessor for CloudKitChangeSet.TombstoneInfo(0);
  v28 = v21 + *(v27 + 20);
  v26(v31, v22);
  *v21 = v23;
  v21[1] = v25;
  (*(*(v27 - 8) + 56))(v21, 0, 1, v27);
  swift_beginAccess();
  sub_24AD06DC4(v21, v4);
  swift_endAccess();

  v20 = *(v0 + 8);
LABEL_15:

  return v20();
}

void *CloudKitChangeSet.Adaptor.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return v0;
}

uint64_t CloudKitChangeSet.Adaptor.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return swift_deallocClassInstance();
}

uint64_t CloudKitChangeSet.Error.hashValue.getter()
{
  v1 = *v0;
  sub_24AD5F074();
  MEMORY[0x24C22ED70](v1);
  return sub_24AD5F094();
}

uint64_t _s14FindMyCloudKit0cD7StorageC5ErrorO9hashValueSivg_0()
{
  v1 = *v0;
  sub_24AD5F074();
  MEMORY[0x24C22ED70](v1);
  return sub_24AD5F094();
}

uint64_t sub_24AD094C0()
{
  v1 = *v0;
  sub_24AD5F074();
  MEMORY[0x24C22ED70](v1);
  return sub_24AD5F094();
}

uint64_t CloudKitChangeSet.TombstoneInfo.recordType.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_24AD0954C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_24AD5E404();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

unint64_t sub_24AD095D0(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_24AD5EBF4();
  return sub_24AD098F0(a1, v5, &qword_281064998, 0x277CBC5F8);
}

unint64_t sub_24AD09620(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_24AD5EBF4();
  return sub_24AD098F0(a1, v5, &qword_27EFA6028, 0x277CBC5D0);
}

unint64_t sub_24AD09670(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  v4 = sub_24AD393EC();

  return sub_24AD099BC(a1, v4);
}

unint64_t sub_24AD096B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 40);
  sub_24AD5F074();
  sub_24AD5E874();
  sub_24AD5EC14();
  v8 = sub_24AD5F094();

  return sub_24AD09C70(a1, a2, a3, v8);
}

unint64_t sub_24AD09748(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_24AD5E404();
  v5 = MEMORY[0x277CC95F0];
  sub_24AD0BBDC(&qword_2810653F8, MEMORY[0x277CC95F0]);
  v6 = sub_24AD5E7F4();
  return sub_24AD09D9C(a1, v6, MEMORY[0x277CC95F0], &qword_2810653F0, v5, MEMORY[0x277CC9610]);
}

unint64_t sub_24AD0981C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_24AD5E364();
  v5 = MEMORY[0x277CC9260];
  sub_24AD0BBDC(&qword_27EFA6048, MEMORY[0x277CC9260]);
  v6 = sub_24AD5E7F4();
  return sub_24AD09D9C(a1, v6, MEMORY[0x277CC9260], &qword_27EFA6050, v5, MEMORY[0x277CC9278]);
}

unint64_t sub_24AD098F0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a2 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_24AD06578(0, a3, a4);
    do
    {
      v8 = *(*(v4 + 48) + 8 * v6);
      v9 = sub_24AD5EC04();

      if (v9)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_24AD099BC(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v19 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v2 + 48) + v4);
      if (v6 <= 2)
      {
        if (*(*(v2 + 48) + v4))
        {
          if (v6 == 1)
          {
            v7 = 0x444965706F6373;
          }

          else
          {
            v7 = 0x4449656E6F7ALL;
          }

          if (v6 == 1)
          {
            v8 = 0xE700000000000000;
          }

          else
          {
            v8 = 0xE600000000000000;
          }
        }

        else
        {
          v7 = 0x656E6961746E6F63;
          v8 = 0xEB00000000444972;
        }
      }

      else if (*(*(v2 + 48) + v4) > 4u)
      {
        if (v6 == 5)
        {
          v7 = 0xD000000000000011;
          v8 = 0x800000024AD616F0;
        }

        else
        {
          v7 = 0x6E6F6974656C6564;
          v8 = 0xED0000746E756F43;
        }
      }

      else
      {
        if (v6 == 3)
        {
          v7 = 0xD000000000000010;
        }

        else
        {
          v7 = 0x53746E756F636361;
        }

        if (v6 == 3)
        {
          v8 = 0x800000024AD616D0;
        }

        else
        {
          v8 = 0xEC00000065746174;
        }
      }

      v9 = 0x6E6F6974656C6564;
      if (v5 == 5)
      {
        v9 = 0xD000000000000011;
      }

      v10 = 0xED0000746E756F43;
      if (v5 == 5)
      {
        v10 = 0x800000024AD616F0;
      }

      v11 = 0x53746E756F636361;
      if (v5 == 3)
      {
        v11 = 0xD000000000000010;
      }

      v12 = 0xEC00000065746174;
      if (v5 == 3)
      {
        v12 = 0x800000024AD616D0;
      }

      if (v5 <= 4)
      {
        v9 = v11;
        v10 = v12;
      }

      v13 = 0x444965706F6373;
      if (v5 != 1)
      {
        v13 = 0x4449656E6F7ALL;
      }

      v14 = 0xE700000000000000;
      if (v5 != 1)
      {
        v14 = 0xE600000000000000;
      }

      if (!v5)
      {
        v13 = 0x656E6961746E6F63;
        v14 = 0xEB00000000444972;
      }

      v15 = v5 <= 2 ? v13 : v9;
      v16 = v5 <= 2 ? v14 : v10;
      if (v7 == v15 && v8 == v16)
      {
        break;
      }

      v17 = sub_24AD5EF84();

      if ((v17 & 1) == 0)
      {
        v4 = (v4 + 1) & v19;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_24AD09C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4 + 64;
  v6 = -1 << *(v4 + 32);
  v7 = a4 & ~v6;
  if ((*(v4 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = v4;
    v11 = ~v6;
    do
    {
      v14 = (*(v8 + 48) + 24 * v7);
      v15 = v14[2];
      v16 = *v14 == a1 && v14[1] == a2;
      if (v16 || (v17 = v14[1], (sub_24AD5EF84() & 1) != 0))
      {
        sub_24AD06578(0, &qword_281064970, 0x277D82BB8);

        v12 = v15;
        v13 = sub_24AD5EC04();

        if (v13)
        {
          break;
        }
      }

      v7 = (v7 + 1) & v11;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

unint64_t sub_24AD09D9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8);
      sub_24AD0BBDC(v24, v25);
      v20 = sub_24AD5E824();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

uint64_t sub_24AD09F3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_24AD09620(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_24AD04EAC();
      v11 = v21;
    }

    v12 = *(v11 + 56);
    v13 = type metadata accessor for CloudKitChangeSet.TombstoneInfo(0);
    v20 = *(v13 - 8);
    sub_24AD06644(v12 + *(v20 + 72) * v8, a2);
    sub_24AD0A6F4(v8, v11);
    *v3 = v11;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for CloudKitChangeSet.TombstoneInfo(0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_24AD0A090@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v9 = v5;
  v11 = *v5;
  v12 = sub_24AD09748(a1);
  if (v13)
  {
    v14 = v12;
    v15 = *v9;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v9;
    v30 = *v9;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a4();
      v17 = v30;
    }

    v18 = *(v17 + 48);
    v19 = sub_24AD5E404();
    v20 = v14;
    (*(*(v19 - 8) + 8))(v18 + *(*(v19 - 8) + 72) * v14, v19);
    v21 = *(v17 + 56);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v29 = *(v22 - 8);
    (*(v29 + 32))(a5, v21 + *(v29 + 72) * v20, v22);
    sub_24AD0A8BC(v20, v17, a2, a3);
    *v9 = v17;
    v23 = *(v29 + 56);
    v24 = a5;
    v25 = 0;
    v26 = v22;
  }

  else
  {
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v23 = *(*(v27 - 8) + 56);
    v26 = v27;
    v24 = a5;
    v25 = 1;
  }

  return v23(v24, v25, 1, v26);
}

uint64_t sub_24AD0A25C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EF8, &qword_24AD5FDD8);
    v2 = sub_24AD5EF04();
    v20 = v2;
    sub_24AD5EE74();
    v3 = sub_24AD5EEA4();
    if (v3)
    {
      v4 = v3;
      sub_24AD06578(0, &qword_281064998, 0x277CBC5F8);
      v5 = v4;
      do
      {
        v18 = v5;
        swift_dynamicCast();
        sub_24AD06578(0, &qword_281064980, 0x277CBC670);
        swift_dynamicCast();
        v13 = *(v2 + 16);
        if (*(v2 + 24) <= v13)
        {
          sub_24AD037EC(v13 + 1, 1);
        }

        v2 = v20;
        v6 = *(v20 + 40);
        result = sub_24AD5EBF4();
        v8 = v20 + 64;
        v9 = -1 << *(v20 + 32);
        v10 = result & ~v9;
        v11 = v10 >> 6;
        if (((-1 << v10) & ~*(v20 + 64 + 8 * (v10 >> 6))) != 0)
        {
          v12 = __clz(__rbit64((-1 << v10) & ~*(v20 + 64 + 8 * (v10 >> 6)))) | v10 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v14 = 0;
          v15 = (63 - v9) >> 6;
          do
          {
            if (++v11 == v15 && (v14 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v16 = v11 == v15;
            if (v11 == v15)
            {
              v11 = 0;
            }

            v14 |= v16;
            v17 = *(v8 + 8 * v11);
          }

          while (v17 == -1);
          v12 = __clz(__rbit64(~v17)) + (v11 << 6);
        }

        *(v8 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
        *(*(v20 + 48) + 8 * v12) = v19;
        *(*(v20 + 56) + 8 * v12) = v18;
        ++*(v20 + 16);
        v5 = sub_24AD5EEA4();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v2;
}

uint64_t sub_24AD0A4A8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5FE8, &qword_24AD5FEA0);
    v2 = sub_24AD5EF04();
    v20 = v2;
    sub_24AD5EE74();
    v3 = sub_24AD5EEA4();
    if (v3)
    {
      v4 = v3;
      sub_24AD06578(0, &qword_27EFA6028, 0x277CBC5D0);
      v5 = v4;
      do
      {
        v18 = v5;
        swift_dynamicCast();
        sub_24AD06578(0, &qword_27EFA5F18, 0x277CBC5A0);
        swift_dynamicCast();
        v13 = *(v2 + 16);
        if (*(v2 + 24) <= v13)
        {
          sub_24AD03800(v13 + 1, 1);
        }

        v2 = v20;
        v6 = *(v20 + 40);
        result = sub_24AD5EBF4();
        v8 = v20 + 64;
        v9 = -1 << *(v20 + 32);
        v10 = result & ~v9;
        v11 = v10 >> 6;
        if (((-1 << v10) & ~*(v20 + 64 + 8 * (v10 >> 6))) != 0)
        {
          v12 = __clz(__rbit64((-1 << v10) & ~*(v20 + 64 + 8 * (v10 >> 6)))) | v10 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v14 = 0;
          v15 = (63 - v9) >> 6;
          do
          {
            if (++v11 == v15 && (v14 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v16 = v11 == v15;
            if (v11 == v15)
            {
              v11 = 0;
            }

            v14 |= v16;
            v17 = *(v8 + 8 * v11);
          }

          while (v17 == -1);
          v12 = __clz(__rbit64(~v17)) + (v11 << 6);
        }

        *(v8 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
        *(*(v20 + 48) + 8 * v12) = v19;
        *(*(v20 + 56) + 8 * v12) = v18;
        ++*(v20 + 16);
        v5 = sub_24AD5EEA4();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v2;
}

void sub_24AD0A6F4(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_24AD5EC64() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = sub_24AD5EBF4();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8 || v3 < v12)
        {
          goto LABEL_5;
        }
      }

      else if (v12 < v8 && v3 < v12)
      {
        goto LABEL_5;
      }

      v15 = *(a2 + 48);
      v16 = (v15 + 8 * v3);
      v17 = (v15 + 8 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(type metadata accessor for CloudKitChangeSet.TombstoneInfo(0) - 8) + 72);
      v20 = v19 * v3;
      v21 = v18 + v19 * v3;
      v22 = v19 * v6;
      v23 = v18 + v19 * v6 + v19;
      if (v20 < v22 || v21 >= v23)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v22)
        {
          goto LABEL_5;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v25 = *(a2 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v27;
    ++*(a2 + 36);
  }
}

unint64_t sub_24AD0A8BC(int64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v40 = a3;
  v41 = a4;
  v6 = sub_24AD5E404();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  result = MEMORY[0x28223BE20](v6);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a2 + 64;
  v13 = -1 << *(a2 + 32);
  v14 = (a1 + 1) & ~v13;
  if ((*(a2 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v16 = sub_24AD5EC64();
    v17 = v15;
    v45 = (v16 + 1) & v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v43 = a2 + 64;
    v44 = v19;
    v20 = *(v18 + 56);
    v42 = (v18 - 8);
    v46 = v20;
    do
    {
      v21 = v20 * v14;
      v22 = v17;
      v23 = v18;
      v44(v11, *(a2 + 48) + v20 * v14, v6);
      v24 = *(a2 + 40);
      sub_24AD0BBDC(&qword_2810653F8, MEMORY[0x277CC95F0]);
      v25 = sub_24AD5E7F4();
      result = (*v42)(v11, v6);
      v17 = v22;
      v26 = v25 & v22;
      if (a1 >= v45)
      {
        if (v26 >= v45 && a1 >= v26)
        {
LABEL_15:
          v18 = v23;
          if (v46 * a1 < v21 || *(a2 + 48) + v46 * a1 >= (*(a2 + 48) + v21 + v46))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v46 * a1 != v21)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v29 = *(a2 + 56);
          v30 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(v40, v41) - 8) + 72);
          v31 = v30 * a1;
          result = v29 + v30 * a1;
          v32 = v30 * v14;
          v33 = v29 + v30 * v14 + v30;
          if (v31 < v32 || result >= v33)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v14;
            v12 = v43;
            v17 = v22;
          }

          else
          {
            a1 = v14;
            v35 = v31 == v32;
            v12 = v43;
            v17 = v22;
            if (!v35)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v17 = v22;
              a1 = v14;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v26 >= v45 || a1 >= v26)
      {
        goto LABEL_15;
      }

      v18 = v23;
      v12 = v43;
LABEL_4:
      v14 = (v14 + 1) & v17;
      v20 = v46;
    }

    while (((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  *(v12 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v36 = *(a2 + 16);
  v37 = __OFSUB__(v36, 1);
  v38 = v36 - 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v38;
    ++*(a2 + 36);
  }

  return result;
}

id sub_24AD0AC00(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_24AD095D0(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_24AD04D34();
      v8 = v16;
      goto LABEL_8;
    }

    sub_24AD037EC(v13, a3 & 1);
    v17 = *v4;
    v8 = sub_24AD095D0(a2);
    if ((v14 & 1) != (v18 & 1))
    {
LABEL_16:
      sub_24AD06578(0, &qword_281064998, 0x277CBC5F8);
      sub_24AD5EFC4();
      __break(1u);
      return MEMORY[0x2821F96F8]();
    }
  }

LABEL_8:
  v19 = *v4;
  if (v14)
  {
    v20 = *(v19 + 56);
    v21 = *(v20 + 8 * v8);
    *(v20 + 8 * v8) = a1;

    return MEMORY[0x2821F96F8]();
  }

  sub_24AD068B8(v8, a2, a1, v19);

  return a2;
}

id sub_24AD0AD44(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_24AD09620(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_24AD04D48();
      v8 = v16;
      goto LABEL_8;
    }

    sub_24AD03800(v13, a3 & 1);
    v17 = *v4;
    v8 = sub_24AD09620(a2);
    if ((v14 & 1) != (v18 & 1))
    {
LABEL_16:
      sub_24AD06578(0, &qword_27EFA6028, 0x277CBC5D0);
      sub_24AD5EFC4();
      __break(1u);
      return MEMORY[0x2821F96F8]();
    }
  }

LABEL_8:
  v19 = *v4;
  if (v14)
  {
    v20 = *(v19 + 56);
    v21 = *(v20 + 8 * v8);
    *(v20 + 8 * v8) = a1;

    return MEMORY[0x2821F96F8]();
  }

  sub_24AD068B8(v8, a2, a1, v19);

  return a2;
}

unint64_t sub_24AD0AE88()
{
  result = qword_27EFA6000;
  if (!qword_27EFA6000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA6000);
  }

  return result;
}

uint64_t sub_24AD0AEFC(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24AD0AF80()
{
  result = qword_27EFA6010;
  if (!qword_27EFA6010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA6010);
  }

  return result;
}

void sub_24AD0AFFC()
{
  type metadata accessor for CloudKitStorage();
  if (v0 <= 0x3F)
  {
    sub_24AD5E404();
    if (v1 <= 0x3F)
    {
      sub_24AD0B0B0();
      if (v2 <= 0x3F)
      {
        sub_24AD0B118();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24AD0B0B0()
{
  if (!qword_27EFA6018)
  {
    sub_24AD06578(255, &qword_27EFA5F18, 0x277CBC5A0);
    v0 = sub_24AD5E914();
    if (!v1)
    {
      atomic_store(v0, &qword_27EFA6018);
    }
  }
}

void sub_24AD0B118()
{
  if (!qword_27EFA6020)
  {
    sub_24AD06578(255, &qword_27EFA6028, 0x277CBC5D0);
    type metadata accessor for CloudKitChangeSet.TombstoneInfo(255);
    sub_24AD0B1A4();
    v0 = sub_24AD5E7E4();
    if (!v1)
    {
      atomic_store(v0, &qword_27EFA6020);
    }
  }
}

unint64_t sub_24AD0B1A4()
{
  result = qword_27EFA6030;
  if (!qword_27EFA6030)
  {
    sub_24AD06578(255, &qword_27EFA6028, 0x277CBC5D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA6030);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CloudKitCoordinator.AccountState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CloudKitCoordinator.AccountState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_24AD0B3CC()
{
  result = sub_24AD5E404();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

id sub_24AD0B448(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v9 = sub_24AD09620(a2);
  v10 = *(v7 + 16);
  v11 = (v8 & 1) == 0;
  v12 = v10 + v11;
  if (__OFADD__(v10, v11))
  {
    __break(1u);
    goto LABEL_17;
  }

  v13 = v8;
  v14 = *(v7 + 24);
  if (v14 < v12 || (a3 & 1) == 0)
  {
    if (v14 >= v12 && (a3 & 1) == 0)
    {
      sub_24AD04EAC();
      goto LABEL_7;
    }

    sub_24AD03A74(v12, a3 & 1);
    v19 = *v4;
    v20 = sub_24AD09620(a2);
    if ((v13 & 1) == (v21 & 1))
    {
      v9 = v20;
      v15 = *v4;
      if (v13)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    sub_24AD06578(0, &qword_27EFA6028, 0x277CBC5D0);
    result = sub_24AD5EFC4();
    __break(1u);
    return result;
  }

LABEL_7:
  v15 = *v4;
  if (v13)
  {
LABEL_8:
    v16 = v15[7];
    v17 = v16 + *(*(type metadata accessor for CloudKitChangeSet.TombstoneInfo(0) - 8) + 72) * v9;

    return sub_24AD0BC24(a1, v17);
  }

LABEL_13:
  sub_24AD04B5C(v9, a2, a1, v15);

  return a2;
}

uint64_t sub_24AD0B5AC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_24AD5E404();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_24AD09748(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_24AD053CC();
      goto LABEL_7;
    }

    sub_24AD042F4(v18, a3 & 1);
    v29 = *v4;
    v30 = sub_24AD09748(a2);
    if ((v19 & 1) == (v31 & 1))
    {
      v15 = v30;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_24AD04BF0(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_24AD5EFC4();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5FA0, &qword_24AD5FE50);
  v24 = *(v23 - 8);
  v25 = *(v24 + 40);
  v26 = v23;
  v27 = v22 + *(v24 + 72) * v15;

  return v25(v27, a1, v26);
}

uint64_t sub_24AD0B7BC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_24AD5E404();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_24AD09748(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_24AD053F0();
      goto LABEL_7;
    }

    sub_24AD04318(v18, a3 & 1);
    v29 = *v4;
    v30 = sub_24AD09748(a2);
    if ((v19 & 1) == (v31 & 1))
    {
      v15 = v30;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_24AD04C04(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_24AD5EFC4();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5FD0, &unk_24AD60290);
  v24 = *(v23 - 8);
  v25 = *(v24 + 40);
  v26 = v23;
  v27 = v22 + *(v24 + 72) * v15;

  return v25(v27, a1, v26);
}

uint64_t sub_24AD0B9CC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_24AD5E404();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_24AD09748(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_24AD05414();
      goto LABEL_7;
    }

    sub_24AD0433C(v18, a3 & 1);
    v29 = *v4;
    v30 = sub_24AD09748(a2);
    if ((v19 & 1) == (v31 & 1))
    {
      v15 = v30;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_24AD04C18(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_24AD5EFC4();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5FC0, &unk_24AD60280);
  v24 = *(v23 - 8);
  v25 = *(v24 + 40);
  v26 = v23;
  v27 = v22 + *(v24 + 72) * v15;

  return v25(v27, a1, v26);
}

uint64_t sub_24AD0BBDC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24AD0BC24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudKitChangeSet.TombstoneInfo(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t dispatch thunk of CloudDataStore.zoneNames.getter(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24AD0BDA0;

  return v9(a1, a2);
}

uint64_t sub_24AD0BDA0(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t dispatch thunk of CloudDataStore.ingest(stateChange:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 24);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_24AD0C594;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of CloudDataStore.process(changeSet:modifyResult:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 32);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_24AD0C594;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of CloudDataStore.process(deletions:modifications:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 40);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_24AD0C594;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of CloudDataStore.createIfNecessary()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 48);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24AD0C360;

  return v9(a1, a2);
}

uint64_t sub_24AD0C360()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t dispatch thunk of CloudDataStore.purge()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 56);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24AD0C594;

  return v9(a1, a2);
}

uint64_t sub_24AD0C598()
{
  v0 = sub_24AD5E164();
  __swift_allocate_value_buffer(v0, qword_281064DC8);
  __swift_project_value_buffer(v0, qword_281064DC8);
  return sub_24AD5E154();
}

uint64_t sub_24AD0C608()
{
  v0 = sub_24AD5E7A4();
  __swift_allocate_value_buffer(v0, qword_281065448);
  v1 = __swift_project_value_buffer(v0, qword_281065448);
  if (qword_281064A58 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_281065400);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_24AD0C6D0@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_state;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t sub_24AD0C724(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_state;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t CloudKitStorage.__allocating_init(containerURL:containerIdentifier:bundleIdentifier:dataStore:databases:containerEnvironment:mode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 80) = v29;
  *(v9 + 88) = v8;
  *(v9 + 64) = a7;
  *(v9 + 72) = a8;
  *(v9 + 48) = a5;
  *(v9 + 56) = a6;
  *(v9 + 32) = a3;
  *(v9 + 40) = a4;
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = sub_24AD5E364();
  *(v9 + 96) = v10;
  v11 = *(v10 - 8);
  *(v9 + 104) = v11;
  v12 = *(v11 + 64) + 15;
  *(v9 + 112) = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6088, qword_24AD60C40);
  *(v9 + 120) = v13;
  v14 = *(v13 - 8);
  *(v9 + 128) = v14;
  v15 = *(v14 + 64) + 15;
  *(v9 + 136) = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6090, &qword_24AD60358);
  *(v9 + 144) = v16;
  v17 = *(v16 - 8);
  *(v9 + 152) = v17;
  v18 = *(v17 + 64) + 15;
  *(v9 + 160) = swift_task_alloc();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6098, &qword_24AD60360);
  *(v9 + 168) = v19;
  v20 = *(v19 - 8);
  *(v9 + 176) = v20;
  v21 = *(v20 + 64) + 15;
  *(v9 + 184) = swift_task_alloc();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA60A0, &qword_24AD60368);
  *(v9 + 192) = v22;
  v23 = *(v22 - 8);
  *(v9 + 200) = v23;
  v24 = *(v23 + 64) + 15;
  *(v9 + 208) = swift_task_alloc();
  v25 = *(v8 + 48);
  v26 = *(v8 + 52);
  *(v9 + 216) = swift_allocObject();
  *(v9 + 341) = *v30;

  return MEMORY[0x2822009F8](sub_24AD0CA68, 0, 0);
}