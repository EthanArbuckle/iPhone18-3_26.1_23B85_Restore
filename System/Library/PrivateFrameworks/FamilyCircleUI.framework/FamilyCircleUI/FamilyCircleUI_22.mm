uint64_t sub_21BDAF194(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  v4 = sub_21BDB06A4(*(a1 + 16));
  v6 = v5;
  if (v4 == sub_21BDB06A4(v3) && v6 == v7)
  {
  }

  else
  {
    v9 = sub_21BE2995C();

    v10 = 0;
    if ((v9 & 1) == 0)
    {
      return v10 & 1;
    }
  }

  v11 = sub_21BC5C62C(v2);
  v13 = v12;
  if (v11 == sub_21BC5C62C(v3) && v13 == v14)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_21BE2995C();
  }

  return v10 & 1;
}

unint64_t sub_21BDAF29C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_21BDB06A4(*(v1 + 16));
  *a1 = result;
  a1[1] = v4;
  return result;
}

double sub_21BDAF2C8@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  type metadata accessor for ChecklistStateVars();
  sub_21BBEAC94();

  v6 = sub_21BE26E9C();
  sub_21BDC1E84(v3, v4, v5, v6, v7 & 1, v10);
  v8 = v10[1];
  *a1 = v10[0];
  *(a1 + 16) = v8;
  result = *&v11;
  *(a1 + 32) = v11;
  *(a1 + 48) = v12;
  return result;
}

uint64_t sub_21BDAF398()
{
  v1 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_21BC95680;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBCCB0, qword_21BE4C440);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_21BDAF4B4;
  v0[13] = &block_descriptor_53;
  v0[14] = v2;
  [v1 familyCalendarsWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21BDAF4B4(uint64_t a1, uint64_t a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  if (a2)
  {
    sub_21BB3A2A4(0, &qword_27CDBCCB8, 0x277CC59B0);
    v4 = sub_21BE28C3C();
  }

  else
  {
    v4 = 0;
  }

  **(*(v3 + 64) + 40) = v4;

  return MEMORY[0x282200948](v3);
}

id sub_21BDAF544()
{
  v1 = [*v0 primaryAppleAccountSource];

  return v1;
}

uint64_t sub_21BDAF57C(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21BBB8A28;

  return v9(a1, a2);
}

id sub_21BDAF6DC()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  sub_21BB3A2A4(0, &qword_280BD6908, 0x277CCA9A0);
  v2 = [swift_getObjCClassFromMetadata() defaultCenter];
  [v2 removeObserver_];

  v4.receiver = v0;
  v4.super_class = type metadata accessor for SharedFamilyCalendarItemProvider();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id sub_21BDAF79C(void *a1)
{
  v2 = objc_opt_self();
  v3 = a1;
  v4 = [v2 defaultCenter];
  [v4 removeObserver_];

  sub_21BB3A2A4(0, &qword_280BD6908, 0x277CCA9A0);
  v5 = [swift_getObjCClassFromMetadata() defaultCenter];
  [v5 removeObserver_];

  v7.receiver = v3;
  v7.super_class = type metadata accessor for SharedFamilyCalendarItemProvider();
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t type metadata accessor for SharedFamilyCalendarItemProvider()
{
  result = qword_27CDBCC78;
  if (!qword_27CDBCC78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21BDAF940(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = sub_21BE28D7C();
  v1[4] = sub_21BE28D6C();
  v2 = swift_task_alloc();
  v1[5] = v2;
  *v2 = v1;
  v2[1] = sub_21BBCD93C;

  return sub_21BDAFB8C();
}

uint64_t sub_21BDAF9F0(uint64_t a1, uint64_t a2)
{
  v2[5] = a2;
  sub_21BE28D7C();
  v2[6] = sub_21BE28D6C();
  v4 = sub_21BE28D0C();
  v2[7] = v4;
  v2[8] = v3;

  return MEMORY[0x2822009F8](sub_21BDAFA88, v4, v3);
}

uint64_t sub_21BDAFA88()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[10] = v3;
    *v3 = v0;
    v3[1] = sub_21BBCDD2C;

    return sub_21BBCBFF4();
  }

  else
  {
    v5 = v0[6];

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_21BDAFB8C()
{
  v1[3] = v0;
  v2 = sub_21BE26A4C();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  sub_21BE28D7C();
  v1[8] = sub_21BE28D6C();
  v6 = sub_21BE28D0C();
  v1[9] = v6;
  v1[10] = v5;

  return MEMORY[0x2822009F8](sub_21BDAFC8C, v6, v5);
}

uint64_t sub_21BDAFC8C()
{
  v45 = v0;
  v1 = v0[3];
  v3 = *(v1 + qword_27CDB63F0);
  v2 = *(v1 + qword_27CDB63F0 + 8);
  v4 = type metadata accessor for FamilySignpost();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();

  v0[11] = sub_21BC84D18(v3, v2, "computeItems", 12, 2);
  v7 = *(v1 + qword_27CDD4370 + 24);
  v8 = *(v1 + qword_27CDD4370 + 32);
  __swift_project_boxed_opaque_existential_1Tm((v1 + qword_27CDD4370), v7);
  v9 = (*(v8 + 8))(v7, v8);
  if (v9)
  {
    v10 = v9;
    v11 = sub_21BE2905C();
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v0[12] = v11;
  v12 = (v0[3] + qword_27CDD4378);
  v13 = v12[3];
  v14 = v12[4];
  __swift_project_boxed_opaque_existential_1Tm(v12, v13);
  v15 = (*(v14 + 16))(v13, v14);
  if (v15)
  {

    v16 = v12[3];
    v17 = v12[4];
    __swift_project_boxed_opaque_existential_1Tm(v12, v16);
    v18 = *(v17 + 8);
    v43 = (v18 + *v18);
    v19 = v18[1];
    v20 = swift_task_alloc();
    v0[13] = v20;
    *v20 = v0;
    v20[1] = sub_21BDB0098;

    return v43(v16, v17);
  }

  else
  {
    v22 = v0[8];
    v23 = v0[6];

    sub_21BE261BC();
    v24 = sub_21BE26A2C();
    v25 = sub_21BE28FFC();
    v26 = os_log_type_enabled(v24, v25);
    v28 = v0[5];
    v27 = v0[6];
    v29 = v0[4];
    if (v26)
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v44 = v31;
      *v30 = 136315138;
      *(v30 + 4) = sub_21BB3D81C(0x49657475706D6F63, 0xEE002928736D6574, &v44);
      _os_log_impl(&dword_21BB35000, v24, v25, "%s Calendar data class is disabled in iCloud settings", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v31);
      MEMORY[0x21CF05C50](v31, -1, -1);
      MEMORY[0x21CF05C50](v30, -1, -1);
    }

    (*(v28 + 8))(v27, v29);
    v32 = MEMORY[0x277D84F90];
    v33 = sub_21BBBDA48(0, 1, 1, MEMORY[0x277D84F90]);
    v35 = *(v33 + 2);
    v34 = *(v33 + 3);
    if (v35 >= v34 >> 1)
    {
      v33 = sub_21BBBDA48((v34 > 1), v35 + 1, 1, v33);
    }

    v37 = v0[11];
    v36 = v0[12];
    v39 = v0[6];
    v38 = v0[7];
    *(v33 + 2) = v35 + 1;
    v40 = &v33[24 * v35];
    *(v40 + 4) = v32;
    *(v40 + 5) = v36;
    v40[48] = 14;
    v41 = v33;
    sub_21BC852D8();

    v42 = v0[1];

    return v42(v41);
  }
}

uint64_t sub_21BDB0098(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v7 = *v1;
  *(*v1 + 112) = a1;

  v4 = *(v2 + 80);
  v5 = *(v2 + 72);

  return MEMORY[0x2822009F8](sub_21BDB01C0, v5, v4);
}

uint64_t sub_21BDB01C0()
{
  v33 = v0;
  v1 = v0[14];
  v3 = v0[7];
  v2 = v0[8];

  sub_21BE261BC();

  v4 = sub_21BE26A2C();
  v5 = sub_21BE28FFC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[14];
    v31 = v0[7];
    v8 = v0[4];
    v7 = v0[5];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v32 = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_21BB3D81C(0x49657475706D6F63, 0xEE002928736D6574, &v32);
    *(v9 + 12) = 2080;
    v0[2] = v6;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBCCA8, &qword_21BE4C438);
    v11 = sub_21BE28A5C();
    v13 = sub_21BB3D81C(v11, v12, &v32);

    *(v9 + 14) = v13;
    _os_log_impl(&dword_21BB35000, v4, v5, "%s family calendars: %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CF05C50](v10, -1, -1);
    MEMORY[0x21CF05C50](v9, -1, -1);

    (*(v7 + 8))(v31, v8);
  }

  else
  {
    v14 = v0[7];
    v15 = v0[4];
    v16 = v0[5];

    (*(v16 + 8))(v14, v15);
  }

  v17 = v0[14];
  v18 = MEMORY[0x277D84F90];
  v19 = sub_21BBBDA48(0, 1, 1, MEMORY[0x277D84F90]);
  v21 = *(v19 + 2);
  v20 = *(v19 + 3);
  if (v21 >= v20 >> 1)
  {
    v19 = sub_21BBBDA48((v20 > 1), v21 + 1, 1, v19);
  }

  if (v17)
  {
    v22 = v1;
  }

  else
  {
    v22 = v18;
  }

  v24 = v0[11];
  v23 = v0[12];
  v26 = v0[6];
  v25 = v0[7];
  *(v19 + 2) = v21 + 1;
  v27 = &v19[24 * v21];
  *(v27 + 4) = v22;
  *(v27 + 5) = v23;
  v27[48] = 14;
  v28 = v19;
  sub_21BC852D8();

  v29 = v0[1];

  return v29(v28);
}

uint64_t sub_21BDB0484(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_21BDB04CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21BDB0520()
{
  result = qword_27CDBCC88;
  if (!qword_27CDBCC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBCC88);
  }

  return result;
}

unint64_t sub_21BDB0574(uint64_t a1)
{
  *(a1 + 8) = sub_21BDB05A4();
  result = sub_21BDB05F8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21BDB05A4()
{
  result = qword_27CDBCC90;
  if (!qword_27CDBCC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBCC90);
  }

  return result;
}

unint64_t sub_21BDB05F8()
{
  result = qword_27CDBCC98;
  if (!qword_27CDBCC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBCC98);
  }

  return result;
}

unint64_t sub_21BDB0650()
{
  result = qword_27CDBCCA0;
  if (!qword_27CDBCCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBCCA0);
  }

  return result;
}

unint64_t sub_21BDB06A4(char a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
      result = 0x696D694C6D6D6F63;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
      result = 0x6E6F697461636F6CLL;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0x69636966656E6562;
      break;
    case 7:
      result = 0x6C5064756F6C4369;
      break;
    case 8:
      result = 0x6D657449656D6F68;
      break;
    case 9:
      result = 0xD000000000000013;
      break;
    case 10:
      result = 0x736143656C707061;
      break;
    case 11:
      result = 0x49746361746E6F63;
      break;
    case 12:
    case 15:
      result = 0xD000000000000012;
      break;
    case 13:
      result = 0xD000000000000015;
      break;
    case 14:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

id sub_21BDB08D4()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21BDB0940@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  result = sub_21BE26C0C();
  *a1 = result;
  return result;
}

uint64_t Binding.onceThen<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v41 = a3;
  v6 = *(*(a2 + 16) + 16);
  v44 = a1;
  v45 = v6;
  v7 = sub_21BE2859C();
  v43 = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v40 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v9;
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v30 - v12;
  v33 = &v30 - v12;
  v42 = a2;
  v14 = *(a2 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v11);
  v39 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v30 - v17;
  v37 = *(v14 + 16);
  v37(&v30 - v17, v4);
  v36 = *(v8 + 16);
  v36(v13, v44, v7);
  v19 = *(v14 + 80);
  v20 = (v19 + 40) & ~v19;
  v21 = *(v8 + 80);
  v22 = (v15 + v20 + v21) & ~v21;
  v34 = v19 | v21;
  v23 = swift_allocObject();
  *(v23 + 2) = 0;
  *(v23 + 3) = 0;
  *(v23 + 4) = v45;
  v32 = *(v14 + 32);
  v24 = v42;
  v32(&v23[v20], v18, v42);
  v31 = *(v8 + 32);
  v25 = v43;
  v31(&v23[v22], v33, v43);
  v26 = v39;
  (v37)(v39, v38, v24);
  v27 = v40;
  v36(v40, v44, v25);
  v28 = swift_allocObject();
  *(v28 + 2) = 0;
  *(v28 + 3) = 0;
  *(v28 + 4) = v45;
  v32(&v28[v20], v26, v42);
  v31(&v28[v22], v27, v43);
  return sub_21BE2857C();
}

uint64_t sub_21BDB0CD0@<X0>(uint64_t a1@<X4>, uint64_t a2@<X8>)
{
  v4 = sub_21BE2946C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - v7;
  v9 = sub_21BE2859C();
  MEMORY[0x21CF036E0](v9);
  v10 = *(a1 - 8);
  if ((*(v10 + 48))(v8, 1, a1) != 1)
  {
    return (*(v10 + 32))(a2, v8, a1);
  }

  (*(v5 + 8))(v8, v4);
  v11 = sub_21BE2859C();
  return MEMORY[0x21CF036E0](v11);
}

uint64_t sub_21BDB0E44@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[4];
  sub_21BE2946C();
  v4 = *(sub_21BE2859C() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(sub_21BE2859C() - 8);
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1 + ((v5 + v6 + *(v7 + 80)) & ~*(v7 + 80));

  return sub_21BDB0CD0(v3, a1);
}

uint64_t sub_21BDB0F40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21BE2946C();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  (*(v8 + 56))(&v16 - v14, 1, 1, a6);
  sub_21BE2859C();
  sub_21BE2854C();
  (*(v8 + 16))(v11, a1, a6);
  sub_21BE2859C();
  return sub_21BE2854C();
}

uint64_t objectdestroyTm_35()
{
  v1 = *(v0 + 32);
  sub_21BE2946C();
  v2 = (sub_21BE2859C() - 8);
  v3 = (*(*v2 + 80) + 40) & ~*(*v2 + 80);
  v4 = *(*v2 + 64);
  v5 = sub_21BE2859C();
  v6 = *(*(v5 - 8) + 80);
  v16 = *(*(v5 - 8) + 64);
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  v8 = *(v0 + v3);

  v9 = *(v0 + v3 + 8);

  v10 = v2[10];
  v11 = *(v1 - 8);
  if (!(*(v11 + 48))(v0 + v3 + v10, 1, v1))
  {
    (*(v11 + 8))(v0 + v3 + v10, v1);
  }

  v12 = (v0 + ((v3 + v4 + v6) & ~v6));
  v13 = *v12;

  v14 = *(v12 + 1);

  (*(v11 + 8))(&v12[*(v5 + 32)], v1);

  return swift_deallocObject();
}

uint64_t sub_21BDB12A4(uint64_t a1)
{
  v3 = v1[4];
  sub_21BE2946C();
  v4 = *(sub_21BE2859C() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(sub_21BE2859C() - 8);
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1 + ((v5 + v6 + *(v7 + 80)) & ~*(v7 + 80));

  return sub_21BDB0F40(a1, v8, v9, v1 + v5, v10, v3);
}

uint64_t sub_21BDB13A0(uint64_t a1)
{
  [*v1 setDelegate_];

  return swift_unknownObjectRelease();
}

uint64_t sub_21BDB1424()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  return v1;
}

uint64_t sub_21BDB1498(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = sub_21BE28D7C();
  v1[4] = sub_21BE28D6C();
  v2 = swift_task_alloc();
  v1[5] = v2;
  *v2 = v1;
  v2[1] = sub_21BBCD93C;

  return sub_21BDB2024();
}

uint64_t sub_21BDB1548(uint64_t a1, uint64_t a2)
{
  v2[5] = a2;
  sub_21BE28D7C();
  v2[6] = sub_21BE28D6C();
  v4 = sub_21BE28D0C();
  v2[7] = v4;
  v2[8] = v3;

  return MEMORY[0x2822009F8](sub_21BDB15E0, v4, v3);
}

uint64_t sub_21BDB15E0()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[10] = v3;
    *v3 = v0;
    v3[1] = sub_21BBCDD2C;

    return sub_21BBCC29C();
  }

  else
  {
    v5 = v0[6];

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_21BDB16E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_21BE28D7C();
  v4[3] = sub_21BE28D6C();
  v6 = sub_21BE28D0C();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_21BDB177C, v6, v5);
}

uint64_t sub_21BDB177C()
{
  v1 = v0[2];
  sub_21BDB18D8();
  v2 = *(v1 + qword_27CDD4380);
  if (v2 && !*(v2 + 16))
  {
    v6 = v0[3];

    v7 = v0[1];

    return v7();
  }

  else
  {
    v3 = swift_task_alloc();
    v0[6] = v3;
    *v3 = v0;
    v3[1] = sub_21BC34664;
    v4 = v0[2];

    return sub_21BBCC29C();
  }
}

void sub_21BDB1878(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_21BDB4CF8();
}

uint64_t sub_21BDB18D8()
{
  v1 = sub_21BE26A4C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = qword_27CDD4388;
  swift_beginAccess();
  v65 = v0;
  sub_21BB3A35C(v0 + v6, v77);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBCDB0, &qword_21BE4C770);
  sub_21BB3A2A4(0, &qword_27CDBCDB8, 0x277CD1A90);
  if (swift_dynamicCast())
  {
    v64 = v76;
    v7 = [v76 homes];
    sub_21BB3A2A4(0, &qword_27CDBB4B8, 0x277CD1A60);
    v8 = sub_21BE28C3C();

    v68 = v8;
    if (v8 >> 62)
    {
      goto LABEL_56;
    }

    for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21BE2951C())
    {
      v77[0] = MEMORY[0x277D84F90];
      result = sub_21BC59DD4(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        __break(1u);
        return result;
      }

      v11 = 0;
      v69 = i;
      v70 = v68 & 0xC000000000000001;
      v12 = v77[0];
      v66 = v68 + 32;
      v67 = v68 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        v73 = v12;
        if (v70)
        {
          v14 = MEMORY[0x21CF047C0]();
        }

        else
        {
          if (v11 >= *(v67 + 16))
          {
            goto LABEL_55;
          }

          v14 = *(v66 + 8 * v11);
        }

        v15 = v14;
        v16 = [v14 users];
        sub_21BB3A2A4(0, &qword_27CDBCDC0, 0x277CD1EE0);
        v17 = sub_21BE28C3C();

        if (v17 >> 62)
        {
          v18 = sub_21BE2951C();
        }

        else
        {
          v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v72 = v13;
        v74 = v15;
        if (v18)
        {
          v76 = MEMORY[0x277D84F90];
          sub_21BC59DF4(0, v18 & ~(v18 >> 63), 0);
          if (v18 < 0)
          {
            goto LABEL_53;
          }

          v19 = 0;
          v20 = v76;
          do
          {
            if ((v17 & 0xC000000000000001) != 0)
            {
              v21 = MEMORY[0x21CF047C0](v19, v17);
            }

            else
            {
              v21 = *(v17 + 8 * v19 + 32);
            }

            v22 = v21;
            v23 = [v21 userID];
            if (v23)
            {
              v24 = v23;
              v25 = sub_21BE28A0C();
              v27 = v26;
            }

            else
            {

              v25 = 0;
              v27 = 0;
            }

            v76 = v20;
            v29 = v20[2];
            v28 = v20[3];
            if (v29 >= v28 >> 1)
            {
              sub_21BC59DF4((v28 > 1), v29 + 1, 1);
              v20 = v76;
            }

            ++v19;
            v20[2] = v29 + 1;
            v30 = &v20[2 * v29];
            v30[4] = v25;
            v30[5] = v27;
          }

          while (v18 != v19);

          v15 = v74;
        }

        else
        {

          v20 = MEMORY[0x277D84F90];
        }

        v31 = [v15 accessories];
        sub_21BB3A2A4(0, &qword_27CDBCDC8, 0x277CD1650);
        v32 = sub_21BE28C3C();

        v33 = [v15 outgoingInvitations];
        sub_21BB3A2A4(0, &unk_27CDBCDD0, 0x277CD1CB8);
        v34 = sub_21BE28C3C();

        if (v34 >> 62)
        {
          v35 = sub_21BE2951C();
          if (!v35)
          {
LABEL_43:

            v37 = MEMORY[0x277D84F90];
            goto LABEL_44;
          }
        }

        else
        {
          v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v35)
          {
            goto LABEL_43;
          }
        }

        v76 = MEMORY[0x277D84F90];
        sub_21BC59DF4(0, v35 & ~(v35 >> 63), 0);
        if (v35 < 0)
        {
          goto LABEL_54;
        }

        v71 = v32;
        v36 = 0;
        v37 = v76;
        v38 = v34;
        v75 = v34 & 0xC000000000000001;
        v39 = v34;
        v40 = v35;
        do
        {
          if (v75)
          {
            v41 = MEMORY[0x21CF047C0](v36, v38);
          }

          else
          {
            v41 = *(v38 + 8 * v36 + 32);
          }

          v42 = v41;
          v43 = [v41 invitee];
          v44 = [v43 userID];

          if (v44)
          {
            v45 = sub_21BE28A0C();
            v47 = v46;
          }

          else
          {

            v45 = 0;
            v47 = 0;
          }

          v76 = v37;
          v49 = v37[2];
          v48 = v37[3];
          if (v49 >= v48 >> 1)
          {
            sub_21BC59DF4((v48 > 1), v49 + 1, 1);
            v37 = v76;
          }

          ++v36;
          v37[2] = v49 + 1;
          v50 = &v37[2 * v49];
          v50[4] = v45;
          v50[5] = v47;
          v38 = v39;
        }

        while (v40 != v36);

        v32 = v71;
LABEL_44:
        v51 = v74;
        v52 = [v74 name];
        v53 = sub_21BE28A0C();
        v55 = v54;

        v12 = v73;
        v77[0] = v73;
        v57 = *(v73 + 16);
        v56 = *(v73 + 24);
        if (v57 >= v56 >> 1)
        {
          sub_21BC59DD4((v56 > 1), v57 + 1, 1);
          v12 = v77[0];
        }

        *(v12 + 16) = v57 + 1;
        v58 = (v12 + 48 * v57);
        v58[4] = v20;
        v58[5] = v32;
        v58[6] = v37;
        v58[7] = v51;
        v58[8] = v53;
        v58[9] = v55;
        v11 = v72;
        if (v72 == v69)
        {

          goto LABEL_58;
        }
      }

      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      ;
    }

    v12 = MEMORY[0x277D84F90];
LABEL_58:
    v63 = *(v65 + qword_27CDD4380);
    *(v65 + qword_27CDD4380) = v12;
  }

  else
  {
    sub_21BE25F9C();
    v59 = sub_21BE263AC();

    if ((v59 & 1) == 0)
    {
      sub_21BE261BC();
      v60 = sub_21BE26A2C();
      v61 = sub_21BE28FDC();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        *v62 = 0;
        _os_log_impl(&dword_21BB35000, v60, v61, "Why is this being called w/o a proper home manager?", v62, 2u);
        MEMORY[0x21CF05C50](v62, -1, -1);
      }

      return (*(v2 + 8))(v5, v1);
    }
  }

  return result;
}

uint64_t sub_21BDB2024()
{
  v1[2] = v0;
  v2 = sub_21BE26A4C();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v5 = sub_21BE260AC();
  v1[7] = v5;
  v6 = *(v5 - 8);
  v1[8] = v6;
  v7 = *(v6 + 64) + 15;
  v1[9] = swift_task_alloc();
  sub_21BE28D7C();
  v1[10] = sub_21BE28D6C();
  v9 = sub_21BE28D0C();
  v1[11] = v9;
  v1[12] = v8;

  return MEMORY[0x2822009F8](sub_21BDB2180, v9, v8);
}

uint64_t sub_21BDB2180()
{
  v1 = v0[2];
  v3 = *(v1 + qword_27CDB63F0);
  v2 = *(v1 + qword_27CDB63F0 + 8);
  v4 = type metadata accessor for FamilySignpost();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();

  v0[13] = sub_21BC84D18(v3, v2, "computeItems", 12, 2);
  v7 = qword_27CDD4390;
  v8 = swift_task_alloc();
  v0[14] = v8;
  *v8 = v0;
  v8[1] = sub_21BDB229C;
  v9 = v0[2];

  return (sub_21BE19D18)(v1 + v7);
}

uint64_t sub_21BDB229C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 112);
  v6 = *v2;
  *(v4 + 120) = a1;
  *(v4 + 128) = v1;

  v7 = *(v3 + 96);
  v8 = *(v3 + 88);
  if (v1)
  {
    v9 = sub_21BDB322C;
  }

  else
  {
    v9 = sub_21BDB23E0;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_21BDB23E0()
{
  v70 = v0;
  v1 = *(v0 + 16);
  v2 = qword_27CDD4380;
  *(v0 + 136) = qword_27CDD4380;
  if (*(v1 + v2))
  {
    v3 = *(v0 + 80);

    sub_21BDB18D8();
    v4 = *(*(v0 + 16) + *(v0 + 136));
    v60 = v0;
    if (v4)
    {
      v62 = *(v4 + 16);
      if (v62)
      {
        v59 = (*(v0 + 32) + 8);

        v6 = 0;
        v7 = (result + 72);
        v68 = MEMORY[0x277D84F90];
        v61 = result;
        while (v6 < *(result + 16))
        {
          v9 = *(v7 - 5);
          v8 = *(v7 - 4);
          v11 = *(v7 - 3);
          v10 = *(v7 - 2);
          v12 = *v7;
          v66 = *(v7 - 1);
          if (v8 >> 62)
          {
            v13 = sub_21BE2951C();
          }

          else
          {
            v13 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v14 = v10;

          if (v13)
          {
            v15 = sub_21BDB4A54(v9, v11, *(v0 + 120));
            v16 = v15;
            v64 = v10;
            if (v15 >> 62)
            {
              v17 = sub_21BE2951C();
            }

            else
            {
              v17 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v18 = v68;
            v63 = v17 != 0;

            v19 = v14;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v18 = sub_21BBBDC70(0, *(v68 + 2) + 1, 1, v68);
            }

            v20 = v18;
            v21 = *(v18 + 2);
            v68 = v20;
            v22 = *(v20 + 3);
            if (v21 >= v22 >> 1)
            {
              v68 = sub_21BBBDC70((v22 > 1), v21 + 1, 1, v68);
            }

            *(v68 + 2) = v21 + 1;
            v23 = &v68[72 * v21];
            *(v23 + 4) = v16;
            v23[40] = v63;
            v24 = *(&v69 + 3);
            *(v23 + 41) = v69;
            *(v23 + 11) = v24;
            *(v23 + 6) = v9;
            *(v23 + 7) = v8;
            *(v23 + 8) = v11;
            *(v23 + 9) = v64;
            *(v23 + 10) = v66;
            *(v23 + 11) = v12;
            v23[96] = 8;
            v0 = v60;
          }

          else
          {
            v25 = *(v0 + 48);
            sub_21BE261BC();
            v26 = sub_21BE26A2C();
            v27 = sub_21BE28FFC();
            v28 = os_log_type_enabled(v26, v27);
            v29 = *(v0 + 24);
            v65 = v29;
            v67 = *(v0 + 48);
            if (v28)
            {
              v30 = swift_slowAlloc();
              *v30 = 0;
              _os_log_impl(&dword_21BB35000, v26, v27, "Home has no accessories", v30, 2u);
              v31 = v30;
              v0 = v60;
              MEMORY[0x21CF05C50](v31, -1, -1);
            }

            else
            {
            }

            (*v59)(v67, v65);
          }

          ++v6;
          v7 += 6;
          result = v61;
          if (v62 == v6)
          {

            v34 = v68;
            goto LABEL_33;
          }
        }

        __break(1u);
      }

      else
      {
        v34 = MEMORY[0x277D84F90];
LABEL_33:
        v54 = *(v0 + 104);
        v55 = *(v0 + 72);
        v57 = *(v0 + 40);
        v56 = *(v0 + 48);

        sub_21BC852D8();

        v58 = *(v0 + 8);

        return v58(v34);
      }
    }

    else
    {
      v35 = *(v0 + 40);
      sub_21BE261BC();
      v36 = sub_21BE26A2C();
      v37 = sub_21BE28FDC();
      v38 = os_log_type_enabled(v36, v37);
      v40 = *(v0 + 32);
      v39 = *(v0 + 40);
      v41 = *(v0 + 24);
      if (v38)
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v69 = v43;
        *v42 = 136315138;
        *(v42 + 4) = sub_21BB3D81C(0xD00000000000003FLL, 0x800000021BE61810, &v69);
        _os_log_impl(&dword_21BB35000, v36, v37, "%s", v42, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v43);
        MEMORY[0x21CF05C50](v43, -1, -1);
        v44 = v42;
        v0 = v60;
        MEMORY[0x21CF05C50](v44, -1, -1);
      }

      (*(v40 + 8))(v39, v41);
      v45 = *(v0 + 120);
      v47 = *(v0 + 64);
      v46 = *(v0 + 72);
      v48 = *(v0 + 56);
      (*(v47 + 104))(v46, *MEMORY[0x277D07F50], v48);
      MEMORY[0x21CF01220](0xD00000000000003FLL, 0x800000021BE61810, v46, 0xD000000000000010, 0x800000021BE573A0, 0xD000000000000025, 0x800000021BE617E0);
      (*(v47 + 8))(v46, v48);
      swift_willThrow();

      v49 = *(v0 + 104);
      v50 = *(v0 + 72);
      v52 = *(v0 + 40);
      v51 = *(v0 + 48);
      sub_21BC852D8();

      v53 = *(v0 + 8);

      return v53();
    }
  }

  else
  {
    v32 = swift_task_alloc();
    *(v0 + 144) = v32;
    *v32 = v0;
    v32[1] = sub_21BDB2A74;
    v33 = *(v0 + 16);

    return sub_21BDB45C4();
  }

  return result;
}

uint64_t sub_21BDB2A74(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 144);
  v8 = *v1;
  *(*v1 + 152) = a1;

  v5 = *(v3 + 96);
  v6 = *(v3 + 88);

  return MEMORY[0x2822009F8](sub_21BDB2BBC, v6, v5);
}

uint64_t sub_21BDB2BBC()
{
  v70 = v0;
  v1 = *(v0 + 152);
  v2 = *(v0 + 80);

  if (!v1)
  {
    v32 = *(v0 + 120);
    v34 = *(v0 + 64);
    v33 = *(v0 + 72);
    v35 = *(v0 + 56);
    (*(v34 + 104))(v33, *MEMORY[0x277D07F50], v35);
    v36 = 0xD00000000000001DLL;
    v37 = 0x800000021BE617C0;
LABEL_28:
    MEMORY[0x21CF01220](v36, v37, v33, 0xD000000000000010, 0x800000021BE573A0, 0xD000000000000025, 0x800000021BE617E0);
    (*(v34 + 8))(v33, v35);
    swift_willThrow();

    v49 = *(v0 + 104);
    v50 = *(v0 + 72);
    v52 = *(v0 + 40);
    v51 = *(v0 + 48);
    sub_21BC852D8();

    v53 = *(v0 + 8);

    return v53();
  }

  v3 = *(v0 + 152);

  v4 = *(*(v0 + 16) + *(v0 + 136));
  v60 = v0;
  if (!v4)
  {
    v39 = *(v0 + 40);
    sub_21BE261BC();
    v40 = sub_21BE26A2C();
    v41 = sub_21BE28FDC();
    v42 = os_log_type_enabled(v40, v41);
    v44 = *(v0 + 32);
    v43 = *(v0 + 40);
    v45 = *(v0 + 24);
    if (v42)
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v69 = v47;
      *v46 = 136315138;
      *(v46 + 4) = sub_21BB3D81C(0xD00000000000003FLL, 0x800000021BE61810, &v69);
      _os_log_impl(&dword_21BB35000, v40, v41, "%s", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v47);
      MEMORY[0x21CF05C50](v47, -1, -1);
      v48 = v46;
      v0 = v60;
      MEMORY[0x21CF05C50](v48, -1, -1);
    }

    (*(v44 + 8))(v43, v45);
    v32 = *(v0 + 120);
    v34 = *(v0 + 64);
    v33 = *(v0 + 72);
    v35 = *(v0 + 56);
    (*(v34 + 104))(v33, *MEMORY[0x277D07F50], v35);
    v36 = 0xD00000000000003FLL;
    v37 = 0x800000021BE61810;
    goto LABEL_28;
  }

  v62 = *(v4 + 16);
  if (v62)
  {
    v59 = (*(v0 + 32) + 8);

    v6 = 0;
    v7 = (result + 72);
    v68 = MEMORY[0x277D84F90];
    v61 = result;
    while (v6 < *(result + 16))
    {
      v9 = *(v7 - 5);
      v8 = *(v7 - 4);
      v11 = *(v7 - 3);
      v10 = *(v7 - 2);
      v12 = *v7;
      v66 = *(v7 - 1);
      if (v8 >> 62)
      {
        v13 = sub_21BE2951C();
      }

      else
      {
        v13 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v14 = v10;

      if (v13)
      {
        v15 = sub_21BDB4A54(v9, v11, *(v0 + 120));
        v16 = v15;
        v64 = v10;
        if (v15 >> 62)
        {
          v17 = sub_21BE2951C();
        }

        else
        {
          v17 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v18 = v68;
        v63 = v17 != 0;

        v19 = v14;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_21BBBDC70(0, *(v68 + 2) + 1, 1, v68);
        }

        v20 = v18;
        v21 = *(v18 + 2);
        v68 = v20;
        v22 = *(v20 + 3);
        if (v21 >= v22 >> 1)
        {
          v68 = sub_21BBBDC70((v22 > 1), v21 + 1, 1, v68);
        }

        *(v68 + 2) = v21 + 1;
        v23 = &v68[72 * v21];
        *(v23 + 4) = v16;
        v23[40] = v63;
        v24 = *(&v69 + 3);
        *(v23 + 41) = v69;
        *(v23 + 11) = v24;
        *(v23 + 6) = v9;
        *(v23 + 7) = v8;
        *(v23 + 8) = v11;
        *(v23 + 9) = v64;
        *(v23 + 10) = v66;
        *(v23 + 11) = v12;
        v23[96] = 8;
        v0 = v60;
      }

      else
      {
        v25 = *(v0 + 48);
        sub_21BE261BC();
        v26 = sub_21BE26A2C();
        v27 = sub_21BE28FFC();
        v28 = os_log_type_enabled(v26, v27);
        v29 = *(v0 + 24);
        v65 = v29;
        v67 = *(v0 + 48);
        if (v28)
        {
          v30 = swift_slowAlloc();
          *v30 = 0;
          _os_log_impl(&dword_21BB35000, v26, v27, "Home has no accessories", v30, 2u);
          v31 = v30;
          v0 = v60;
          MEMORY[0x21CF05C50](v31, -1, -1);
        }

        else
        {
        }

        (*v59)(v67, v65);
      }

      ++v6;
      v7 += 6;
      result = v61;
      if (v62 == v6)
      {

        v38 = v68;
        goto LABEL_32;
      }
    }

    __break(1u);
  }

  else
  {
    v38 = MEMORY[0x277D84F90];
LABEL_32:
    v54 = *(v0 + 104);
    v55 = *(v0 + 72);
    v57 = *(v0 + 40);
    v56 = *(v0 + 48);

    sub_21BC852D8();

    v58 = *(v0 + 8);

    return v58(v38);
  }

  return result;
}

uint64_t sub_21BDB322C()
{
  v1 = v0[10];

  v2 = v0[16];
  v3 = v0[13];
  v4 = v0[9];
  v6 = v0[5];
  v5 = v0[6];
  sub_21BC852D8();

  v7 = v0[1];

  return v7();
}

void sub_21BDB32D4()
{
  v1 = sub_21BE26A4C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v21 - v8;
  v10 = qword_27CDD4388;
  swift_beginAccess();
  sub_21BB3A35C(v0 + v10, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBCDB0, &qword_21BE4C770);
  sub_21BB3A2A4(0, &qword_27CDBCDB8, 0x277CD1A90);
  if (swift_dynamicCast())
  {
    v11 = v21[1];
    v12 = sub_21BE28DAC();
    (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
    sub_21BE28D7C();
    v13 = v0;
    v14 = v11;
    v15 = sub_21BE28D6C();
    v16 = swift_allocObject();
    v17 = MEMORY[0x277D85700];
    v16[2] = v15;
    v16[3] = v17;
    v16[4] = v13;
    v16[5] = v14;
    sub_21BBA932C(0, 0, v9, &unk_21BE4C780, v16);
  }

  else
  {
    sub_21BE261BC();
    v18 = sub_21BE26A2C();
    v19 = sub_21BE28FDC();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_21BB35000, v18, v19, "homeManager != HMHomeManager in handleNotification", v20, 2u);
      MEMORY[0x21CF05C50](v20, -1, -1);
    }

    (*(v2 + 8))(v5, v1);
  }
}

uint64_t sub_21BDB3594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_21BE28D7C();
  *(v4 + 24) = sub_21BE28D6C();
  v6 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BDB362C, v6, v5);
}

uint64_t sub_21BDB362C()
{
  v2 = v0[2];
  v1 = v0[3];

  sub_21BDB4CF8();
  v3 = v0[1];

  return v3();
}

void sub_21BDB3690(void *a1)
{
  v1 = a1;
  sub_21BDB32D4();
}

uint64_t sub_21BDB36D8()
{
  v1 = qword_27CDBCCD0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBCDA0, &unk_21BE4C760);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + qword_27CDD4380);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + qword_27CDD4388));
  return __swift_destroy_boxed_opaque_existential_0Tm((v0 + qword_27CDD4390));
}

id sub_21BDB3770()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HomeItemProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21BDB37A8(uint64_t a1)
{
  v2 = qword_27CDBCCD0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBCDA0, &unk_21BE4C760);
  (*(*(v3 - 8) + 8))(a1 + v2, v3);
  v4 = *(a1 + qword_27CDD4380);

  __swift_destroy_boxed_opaque_existential_0Tm((a1 + qword_27CDD4388));
  return __swift_destroy_boxed_opaque_existential_0Tm((a1 + qword_27CDD4390));
}

uint64_t type metadata accessor for HomeItemProvider()
{
  result = qword_27CDBCD40;
  if (!qword_27CDBCD40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21BDB3890()
{
  sub_21BDB3934();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_initClassMetadata2();
  }
}

void sub_21BDB3934()
{
  if (!qword_27CDBCD50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CDBCD58, &qword_21BE4C530);
    v0 = sub_21BE26CCC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDBCD50);
    }
  }
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_21BDB39D4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_21BDB3A1C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21BDB3A80()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_21BE26CBC();
}

uint64_t sub_21BDB3AFC()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  sub_21BE29ACC();
  MEMORY[0x21CF03CA0](v1, v2);
  sub_21BE28ABC();

  sub_21BC5C62C(v3);
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

uint64_t sub_21BDB3BAC()
{
  v1 = *(v0 + 64);
  MEMORY[0x21CF03CA0](*(v0 + 48), *(v0 + 56));
  sub_21BE28ABC();

  sub_21BC5C62C(v1);
  sub_21BE28ABC();
}

uint64_t sub_21BDB3C50()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  sub_21BE29ACC();
  MEMORY[0x21CF03CA0](v1, v2);
  sub_21BE28ABC();

  sub_21BC5C62C(v3);
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

uint64_t sub_21BDB3CFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 64);
  v3 = *(a2 + 48);
  v4 = *(a2 + 56);
  v5 = *(a2 + 64);
  MEMORY[0x21CF03CA0](*(a1 + 48), *(a1 + 56));
  MEMORY[0x21CF03CA0](v3, v4);

  v6 = sub_21BC5C62C(v2);
  v8 = v7;
  if (v6 == sub_21BC5C62C(v5) && v8 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_21BE2995C();
  }

  return v10 & 1;
}

uint64_t sub_21BDB3E4C@<X0>(void *a1@<X8>)
{
  result = MEMORY[0x21CF03CA0](*(v1 + 48), *(v1 + 56));
  *a1 = 0x6D657449656D6F68;
  a1[1] = 0xE800000000000000;
  return result;
}

unint64_t sub_21BDB3EA4()
{
  result = qword_27CDBCD68;
  if (!qword_27CDBCD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBCD68);
  }

  return result;
}

unint64_t sub_21BDB3EF8(uint64_t a1)
{
  *(a1 + 8) = sub_21BDB3F28();
  result = sub_21BDB3F7C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21BDB3F28()
{
  result = qword_27CDBCD70;
  if (!qword_27CDBCD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBCD70);
  }

  return result;
}

unint64_t sub_21BDB3F7C()
{
  result = qword_27CDBCD78;
  if (!qword_27CDBCD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBCD78);
  }

  return result;
}

uint64_t sub_21BDB3FEC@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for HomeView();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_21BD5992C(v1, v9);
  sub_21BD59480(v1, v6);
  sub_21BDB44BC(&qword_27CDBCD98, type metadata accessor for HomeView);
  result = sub_21BE2852C();
  *a1 = result;
  return result;
}

uint64_t sub_21BDB42FC@<X0>(uint64_t *a1@<X8>)
{
  v5 = v1[2];
  v6 = v1[3];
  v7 = *(v1 + 64);
  v3 = *v1;
  v4 = v1[1];
  return sub_21BDB3FEC(a1);
}

uint64_t sub_21BDB4340(uint64_t a1)
{
  *(a1 + 8) = sub_21BDB44BC(&unk_27CDBCD80, type metadata accessor for HomeItemProvider);
  result = sub_21BDB44BC(&qword_27CDB60C8, type metadata accessor for HomeItemProvider);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21BDB43C4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  *a2 = v5;
  return result;
}

uint64_t sub_21BDB4444(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v4 = v3;
  return sub_21BE26CBC();
}

uint64_t sub_21BDB44BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21BDB4504(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21BBA6A64;

  return sub_21BDB3594(a1, v4, v5, v7);
}

uint64_t sub_21BDB45C4()
{
  v1[2] = v0;
  v2 = sub_21BE26A4C();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  sub_21BE28D7C();
  v1[6] = sub_21BE28D6C();
  v6 = sub_21BE28D0C();
  v1[7] = v6;
  v1[8] = v5;

  return MEMORY[0x2822009F8](sub_21BDB46B8, v6, v5);
}

uint64_t sub_21BDB46B8()
{
  v1 = v0[2];
  v2 = qword_27CDD4380;
  v0[9] = qword_27CDD4380;
  if (*(v1 + v2))
  {
    v3 = v0[6];

    v4 = v0[5];
    v5 = *(v0[2] + v0[9]);

    v6 = v0[1];

    return v6(v5);
  }

  else
  {
    v8 = *(MEMORY[0x277D857E8] + 4);
    v9 = swift_task_alloc();
    v0[10] = v9;
    *v9 = v0;
    v9[1] = sub_21BDB47B8;

    return MEMORY[0x282200480](250000000);
  }
}

uint64_t sub_21BDB47B8()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;
  *(*v1 + 88) = v0;

  v5 = *(v2 + 64);
  v6 = *(v2 + 56);
  if (v0)
  {
    v7 = sub_21BDB496C;
  }

  else
  {
    v7 = sub_21BDB48F4;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_21BDB48F4()
{
  v1 = v0[6];

  v2 = v0[5];
  v3 = *(v0[2] + v0[9]);

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_21BDB496C()
{
  v1 = v0[11];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[3];
  v5 = v0[4];

  sub_21BE261BC();
  v6 = v1;
  sub_21BC51D50(v1);

  (*(v5 + 8))(v3, v4);
  v7 = v0[5];
  v8 = *(v0[2] + v0[9]);

  v9 = v0[1];

  return v9(v8);
}

uint64_t sub_21BDB4A54(uint64_t a1, int a2, id a3)
{
  v3 = [a3 members];
  sub_21BB3A2A4(0, &qword_280BD8A40, 0x277D08268);
  v4 = sub_21BE28C3C();

  v31 = MEMORY[0x277D84F90];
  if (v4 >> 62)
  {
    goto LABEL_32;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
LABEL_33:
    v23 = MEMORY[0x277D84F90];
    goto LABEL_34;
  }

LABEL_3:
  v6 = 0;
  v28 = v4 & 0xFFFFFFFFFFFFFF8;
  v29 = v4 & 0xC000000000000001;
  v26 = v4;
  v27 = v4 + 32;
  v25 = v5;
  do
  {
    if (v29)
    {
      v7 = MEMORY[0x21CF047C0](v6, v4);
    }

    else
    {
      if (v6 >= *(v28 + 16))
      {
        goto LABEL_31;
      }

      v7 = *(v27 + 8 * v6);
    }

    v8 = v7;
    if (__OFADD__(v6++, 1))
    {
      goto LABEL_30;
    }

    sub_21BDE5CEC(v10);
    v4 = *(a1 + 16);
    if (v4)
    {
      v11 = 0;
      v12 = (a1 + 40);
      while (1)
      {
        if (v11 >= *(a1 + 16))
        {
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          v5 = sub_21BE2951C();
          if (!v5)
          {
            goto LABEL_33;
          }

          goto LABEL_3;
        }

        v14 = *(v12 - 1);
        v13 = *v12;

        v15 = [v8 appleID];
        if (!v15)
        {
          break;
        }

        v16 = v15;
        v17 = sub_21BE28A0C();
        v19 = v18;

        if (!v13)
        {
          goto LABEL_12;
        }

        if (v17 == v14 && v13 == v19)
        {

LABEL_26:

          sub_21BE296BC();
          v22 = *(v31 + 16);
          sub_21BE296EC();
          sub_21BE296FC();
          sub_21BE296CC();
          goto LABEL_5;
        }

        v21 = sub_21BE2995C();

        if (v21)
        {
          goto LABEL_26;
        }

LABEL_13:
        ++v11;
        v12 += 2;
        if (v4 == v11)
        {
          goto LABEL_4;
        }
      }

      if (!v13)
      {
        goto LABEL_26;
      }

LABEL_12:

      goto LABEL_13;
    }

LABEL_4:

LABEL_5:
    v4 = v26;
  }

  while (v6 != v25);
  v23 = v31;
LABEL_34:

  return v23;
}

uint64_t sub_21BDB4CF8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v21 - v4;
  v6 = sub_21BE26A4C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE261BC();
  v11 = sub_21BE26A2C();
  v12 = sub_21BE28FFC();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v22 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_21BB3D81C(0xD00000000000001DLL, 0x800000021BE617A0, &v22);
    _os_log_impl(&dword_21BB35000, v11, v12, "%s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
    MEMORY[0x21CF05C50](v14, -1, -1);
    MEMORY[0x21CF05C50](v13, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  v15 = sub_21BE28DAC();
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  sub_21BE28D7C();
  v16 = v1;
  v17 = sub_21BE28D6C();
  v18 = swift_allocObject();
  v19 = MEMORY[0x277D85700];
  v18[2] = v17;
  v18[3] = v19;
  v18[4] = v16;
  sub_21BBA932C(0, 0, v5, &unk_21BE4C790, v18);
}

uint64_t sub_21BDB4F94(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21BBB7EB8;

  return sub_21BDB16E4(a1, v4, v5, v6);
}

uint64_t sub_21BDB5084(uint64_t a1)
{
  sub_21BDB5270(a1, v3);
  v1 = swift_allocObject();
  sub_21BC75660(v3, v1 + 16);
  return sub_21BE2843C();
}

void *sub_21BDB5120(void *a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result didTapAddRemoteGuardianFor_];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21BDB5180@<X0>(uint64_t a1@<X8>)
{
  sub_21BE2767C();
  result = sub_21BE27DAC();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_21BDB51F8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB55A0, &unk_21BE32460);
  sub_21BBC9BE8();
  return sub_21BE2860C();
}

unint64_t sub_21BDB52B0()
{
  result = qword_27CDBCDE0;
  if (!qword_27CDBCDE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA8B8, qword_21BE4C890);
    sub_21BBC9BE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBCDE0);
  }

  return result;
}

uint64_t sub_21BDB53B8()
{
  v1 = sub_21BE25D1C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  if ([v0 isOrganizer] || objc_msgSend(v0, sel_isGuardian))
  {
    type metadata accessor for ConfirmChildAgeViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = [objc_opt_self() bundleForClass_];
    v11 = sub_21BE2599C();
  }

  else
  {
    v13 = [v0 birthDate];
    if (v13)
    {
      v14 = v13;
      sub_21BE25CDC();

      (*(v2 + 32))(v8, v6, v1);
      v11 = sub_21BC1F70C(v8);
      if ((sub_21BE2916C() & 1) == 0)
      {

        type metadata accessor for ConfirmChildAgeViewModel();
        v15 = swift_getObjCClassFromMetadata();
        v16 = [objc_opt_self() bundleForClass_];
        v11 = sub_21BE2599C();
      }

      (*(v2 + 8))(v8, v1);
    }

    else
    {
      return 0;
    }
  }

  return v11;
}

uint64_t sub_21BDB56D4()
{
  sub_21BBBF0B4(*(v0 + 24), *(v0 + 32));

  return swift_deallocClassInstance();
}

id sub_21BDB5738()
{
  if (qword_280BD79D8 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v1 = v7;
  if (v7)
  {
    v2 = [v7 members];

    sub_21BB3A2A4(0, &qword_280BD8A40, 0x277D08268);
    v3 = sub_21BE28C3C();

    MEMORY[0x28223BE20](v4);
    v6[2] = v0;
    v1 = sub_21BC241EC(sub_21BDBD8E0, v6, v3);
  }

  return v1;
}

uint64_t sub_21BDB5898(id *a1, void *a2)
{
  v3 = [*a1 altDSID];
  if (v3)
  {
    v4 = v3;
    v5 = sub_21BE28A0C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = [*(*__swift_project_boxed_opaque_existential_1Tm(a2 a2[3]) + 16)];
  if (v8)
  {
    v9 = v8;
    v10 = sub_21BE28A0C();
    v12 = v11;

    if (v7)
    {
      goto LABEL_6;
    }

LABEL_10:
    v13 = 0;
    goto LABEL_13;
  }

  v10 = 0;
  v12 = 0xE000000000000000;
  if (!v7)
  {
    goto LABEL_10;
  }

LABEL_6:
  if (v5 == v10 && v7 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_21BE2995C();
  }

LABEL_13:

  return v13 & 1;
}

uint64_t sub_21BDB59A8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21BDB5738();
  if (v4)
  {
    v5 = v4;
    if (qword_27CDB4E58 != -1)
    {
      swift_once();
    }

    if (byte_27CDD41B0)
    {
      v6 = 40.0;
    }

    else
    {
      v6 = 38.0;
    }

    sub_21BB3A2A4(0, &qword_280BD8A10, off_2782F0CC0);
    sub_21BB3CC48(&qword_280BD8A20, &qword_280BD8A10, off_2782F0CC0);
    LOBYTE(v63) = 0;
    *&v65 = v6;
    *(&v65 + 1) = v5;
    *v66 = sub_21BE2727C();
    *&v66[8] = v7;
    v66[88] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBCF90, &qword_21BE4CE68);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBCF98, &qword_21BE4CE70);
    sub_21BDBD6C0();
    sub_21BDBD7F4();
    sub_21BE2784C();
  }

  else
  {
    v8 = [*(*__swift_project_boxed_opaque_existential_1Tm(a1 a1[3]) + 16)];
    if (v8)
    {
      v9 = v8;
      v10 = sub_21BE28A0C();
      v34 = v11;
      v35 = v10;
    }

    else
    {
      v34 = 0xE000000000000000;
      v35 = 0;
    }

    v12 = *(*__swift_project_boxed_opaque_existential_1Tm(a1, a1[3]) + 16);
    v13 = [v12 firstName];
    if (v13)
    {
      v14 = v13;
      v33 = sub_21BE28A0C();
      v16 = v15;
    }

    else
    {
      v33 = 0;
      v16 = 0xE000000000000000;
    }

    v17 = [v12 lastName];
    if (v17)
    {
      v18 = v17;
      v19 = sub_21BE28A0C();
      v21 = v20;
    }

    else
    {
      v19 = 0;
      v21 = 0xE000000000000000;
    }

    if (qword_27CDB4E58 != -1)
    {
      swift_once();
    }

    if (byte_27CDD41B0)
    {
      v22 = 40.0;
    }

    else
    {
      v22 = 38.0;
    }

    v23 = __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
    v24 = *(*v23 + 24);
    v25 = *(*v23 + 32);
    type metadata accessor for FAFamilyImageLoader();
    sub_21BBBF0A0(v24, v25);
    sub_21BDBC510(&qword_27CDB69A8, type metadata accessor for FAFamilyImageLoader);
    v26 = sub_21BE26E9C();
    LOBYTE(v61[0]) = v27 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB98D0, &qword_21BE40920);
    sub_21BE283EC();
    LOBYTE(v73) = 0;
    sub_21BBBF0B4(v65, *(&v65 + 1));

    *&v67 = v35;
    *(&v67 + 1) = v34;
    *&v68 = v33;
    *(&v68 + 1) = v16;
    *&v69 = v19;
    *(&v69 + 1) = v21;
    LOBYTE(v70) = 0;
    *(&v70 + 1) = v22;
    *&v71 = v26;
    BYTE8(v71) = v61[0];
    *v72 = v24;
    *&v72[8] = v25;
    *&v72[16] = 0;
    *&v63 = v35;
    *(&v63 + 1) = v34;
    *v64 = v33;
    *&v64[8] = v16;
    *&v64[16] = v19;
    *&v64[24] = v21;
    v64[32] = 0;
    *&v64[40] = v22;
    *&v64[48] = v26;
    v64[56] = v61[0];
    *&v64[64] = v24;
    *&v64[72] = v25;
    *&v64[80] = 0;
    sub_21BCEFD18(&v67, &v65);
    sub_21BDBD66C(&v63);
    *&v66[48] = v71;
    *&v66[64] = *v72;
    *&v66[80] = *&v72[16];
    v65 = v67;
    *v66 = v68;
    *&v66[16] = v69;
    *&v66[32] = v70;
    LOBYTE(v61[0]) = 1;
    v66[88] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBCF90, &qword_21BE4CE68);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBCF98, &qword_21BE4CE70);
    sub_21BDBD6C0();
    sub_21BDBD7F4();
    sub_21BE2784C();
  }

  v28 = sub_21BE2771C();
  LOBYTE(v67) = 1;
  sub_21BDB60D0(a1, &v65);
  v55 = *&v66[16];
  v56 = *&v66[32];
  v57 = *&v66[48];
  v58 = *&v66[64];
  v53 = v65;
  v54 = *v66;
  v60 = *&v66[64];
  v59[2] = *&v66[16];
  v59[3] = *&v66[32];
  v59[4] = *&v66[48];
  v59[0] = v65;
  v59[1] = *v66;
  sub_21BBA3854(&v53, &v63, &qword_27CDBCFC8, &qword_21BE4CE78);
  sub_21BB3A4CC(v59, &qword_27CDBCFC8, &qword_21BE4CE78);
  *&v52[39] = v55;
  *&v52[55] = v56;
  *&v52[71] = v57;
  *&v52[87] = v58;
  *&v52[7] = v53;
  *&v52[23] = v54;
  v29 = v67;
  KeyPath = swift_getKeyPath();
  v50 = v77;
  *v51 = v78[0];
  *&v51[9] = *(v78 + 9);
  v46 = v73;
  v47 = v74;
  v61[0] = v73;
  v61[1] = v74;
  *(v62 + 9) = *(v78 + 9);
  v61[4] = v77;
  v62[0] = v78[0];
  v48 = v75;
  v49 = v76;
  v61[2] = v75;
  v61[3] = v76;
  *&v39[9] = *(v78 + 9);
  v38 = v77;
  *v39 = v78[0];
  v36 = v75;
  v37 = v76;
  v63 = v28;
  v64[0] = v29;
  *&v64[1] = *v52;
  *&v64[17] = *&v52[16];
  *&v64[80] = *&v52[79];
  *&v64[65] = *&v52[64];
  *&v64[49] = *&v52[48];
  *&v64[33] = *&v52[32];
  v40 = *v64;
  v44 = *&v64[64];
  v45 = *&v64[80];
  v42 = *&v64[32];
  v43 = *&v64[48];
  v41 = *&v64[16];
  v31 = v74;
  *a2 = v73;
  *(a2 + 16) = v31;
  *(a2 + 64) = v38;
  *(a2 + 80) = *v39;
  *(a2 + 32) = v36;
  *(a2 + 48) = v37;
  *(a2 + 128) = v40;
  *(a2 + 144) = v41;
  *(a2 + 96) = *&v39[16];
  *(a2 + 112) = v28;
  *(a2 + 192) = v44;
  *(a2 + 208) = v45;
  *(a2 + 160) = v42;
  *(a2 + 176) = v43;
  *(a2 + 224) = 0;
  *(a2 + 232) = 1;
  *(a2 + 240) = 0;
  *(a2 + 248) = KeyPath;
  *(a2 + 256) = 0;
  sub_21BBA3854(v61, &v65, &qword_27CDBCFD0, &qword_21BE4CE80);
  sub_21BBA3854(&v63, &v65, &qword_27CDBCFD8, &qword_21BE4CE88);
  sub_21BDBD8D4(KeyPath, 0);
  sub_21BCBC920(KeyPath, 0);
  *&v66[33] = *&v52[32];
  *&v66[49] = *&v52[48];
  *&v66[65] = *&v52[64];
  *&v66[80] = *&v52[79];
  *&v66[1] = *v52;
  v65 = v28;
  v66[0] = v29;
  *&v66[17] = *&v52[16];
  sub_21BB3A4CC(&v65, &qword_27CDBCFD8, &qword_21BE4CE88);
  v71 = v50;
  *v72 = *v51;
  *&v72[9] = *&v51[9];
  v67 = v46;
  v68 = v47;
  v70 = v49;
  v69 = v48;
  return sub_21BB3A4CC(&v67, &qword_27CDBCFD0, &qword_21BE4CE80);
}

uint64_t sub_21BDB60D0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = sub_21BE275DC();
  v4 = __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_21BC1FF18(*(*v4 + 16));
  sub_21BB41FA4();
  v5 = sub_21BE27DBC();
  v7 = v6;
  v9 = v8;
  sub_21BE2832C();
  v10 = sub_21BE27D4C();
  v34 = v11;
  v35 = v10;
  v33 = v12;
  v36 = v13;

  sub_21BBC7C7C(v5, v7, v9 & 1);

  v14 = *(*__swift_project_boxed_opaque_existential_1Tm(a1, a1[3]) + 16);
  sub_21BDB53B8();
  v15 = sub_21BE27DBC();
  v17 = v16;
  v19 = v18;
  sub_21BE27BEC();
  v20 = sub_21BE27D9C();
  v22 = v21;
  v24 = v23;

  sub_21BBC7C7C(v15, v17, v19 & 1);

  sub_21BE2833C();
  v25 = sub_21BE27D4C();
  v27 = v26;
  v29 = v28;
  v31 = v30;

  sub_21BBC7C7C(v20, v22, v24 & 1);

  *a2 = v37;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = v35;
  *(a2 + 32) = v34;
  *(a2 + 40) = v33 & 1;
  *(a2 + 48) = v36;
  *(a2 + 56) = v25;
  *(a2 + 64) = v27;
  *(a2 + 72) = v29 & 1;
  *(a2 + 80) = v31;
  sub_21BBA4A38(v35, v34, v33 & 1);

  sub_21BC75900(v25, v27, v29 & 1, v31);
  sub_21BC75944(v25, v27, v29 & 1, v31);
  sub_21BBC7C7C(v35, v34, v33 & 1);
}

void *sub_21BDB6324@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21BE275DC();
  v9 = 0;
  sub_21BDB59A8(v1, __src);
  memcpy(__dst, __src, 0x101uLL);
  memcpy(v11, __src, 0x101uLL);
  sub_21BBA3854(__dst, &v6, &qword_27CDBCF88, &unk_21BE4CE58);
  sub_21BB3A4CC(v11, &qword_27CDBCF88, &unk_21BE4CE58);
  memcpy(&v8[7], __dst, 0x101uLL);
  v4 = v9;
  *a1 = v3;
  *(a1 + 8) = 0;
  *(a1 + 16) = v4;
  return memcpy((a1 + 17), v8, 0x108uLL);
}

uint64_t sub_21BDB63F8(void *a1, uint64_t a2, char a3, uint64_t a4)
{
  v7 = type metadata accessor for FamilyMemberViewModel();
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = xmmword_21BE358A0;
  *(v8 + 40) = 0;
  v9 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE2841C();
  v10 = v16;
  v11 = v17;
  LOBYTE(v16) = a3;
  v17 = a4;
  sub_21BE283FC();
  v12 = objc_opt_self();
  v13 = &selRef_systemFillColor;
  if (!a3)
  {
    v13 = &selRef_systemBackgroundColor;
  }

  v14 = [v12 *v13];
  sub_21BE2826C();
  v16 = v8;
  v19 = v7;
  v20 = &off_282D96DE8;
  v21 = 0;
  v22 = v9;
  v23 = v10;
  v24 = v11;
  v25 = v18;
  v26 = sub_21BE2852C();
  v27 = 1;
  KeyPath = swift_getKeyPath();
  v29 = 0;
  if (qword_27CDB4F88 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD030, &qword_21BE4D060);
  type metadata accessor for FAFamilyImageLoader();
  sub_21BDBDBE0();
  sub_21BDBC510(&qword_27CDB69A8, type metadata accessor for FAFamilyImageLoader);
  sub_21BE27EEC();
  return sub_21BB3A4CC(&v16, &qword_27CDBD030, &qword_21BE4D060);
}

uint64_t sub_21BDB664C()
{
  v1 = *v0;
  v2 = type metadata accessor for FamilyMemberViewModel();
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = xmmword_21BE358A0;
  *(v3 + 40) = 0;
  v18 = *(v0 + 16);
  v19 = *(v0 + 32);
  v15 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CD8, &unk_21BE335A0);
  sub_21BE2856C();
  v5 = *(&v16 + 1);
  v14 = v16;
  v13 = v17;
  v16 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE2841C();
  v6 = v18;
  v7 = v19;
  v18 = *(v0 + 16);
  v19 = *(v0 + 32);
  MEMORY[0x21CF036E0](&v16, v4);
  v8 = &selRef_systemFillColor;
  if ((v16 & 1) == 0)
  {
    v18 = *(v0 + 40);
    sub_21BE283FC();
    if (!v16)
    {
      v8 = &selRef_systemBackgroundColor;
    }
  }

  v9 = [objc_opt_self() *v8];
  *&v18 = sub_21BE2826C();
  v10 = sub_21BE2852C();
  KeyPath = swift_getKeyPath();
  *&v18 = v3;
  v20 = v2;
  v21 = &off_282D96DE8;
  v22 = 0;
  v23 = v15;
  v24 = 0;
  v25 = v14;
  v26 = v5;
  v27 = v13;
  v28 = v6;
  v29 = v7;
  *v30 = v16;
  *&v30[3] = *(&v16 + 3);
  v31 = v10;
  v32 = 1;
  v33 = KeyPath;
  v34 = 0;
  if (qword_27CDB4F88 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBCFF0, &qword_21BE4D038);
  type metadata accessor for FAFamilyImageLoader();
  sub_21BDBD958();
  sub_21BDBC510(&qword_27CDB69A8, type metadata accessor for FAFamilyImageLoader);
  sub_21BE27EEC();
  return sub_21BB3A4CC(&v18, &qword_27CDBCFF0, &qword_21BE4D038);
}

uint64_t sub_21BDB6920@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21BE2754C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6138, &qword_21BE33F20);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for FamilyChecklistCell(0);
  sub_21BBA3854(v1 + *(v12 + 36), v11, &qword_27CDB6138, &qword_21BE33F20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_21BE27B0C();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_21BE28FEC();
    v16 = sub_21BE27B2C();
    sub_21BE269DC();

    sub_21BE2753C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_21BDB6B28()
{
  v1 = [*(v0 + 16) incompleteItems];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 integerValue];

    v4 = (v0 + *(type metadata accessor for FamilyChecklistCell(0) + 40));
    v5 = *v4;
    v6 = v4[1];
    v7 = *(v4 + 16);
    type metadata accessor for ChecklistStoreCache();
    sub_21BDBC510(&qword_27CDB8CB8, type metadata accessor for ChecklistStoreCache);
    v8 = sub_21BE26EAC();
    v21 = v3;
    v9 = sub_21BE28E8C();
    v10 = sub_21BE1F55C();
    if (v10)
    {
      v11 = v10;
      v12 = *(v8 + 24);
      v22 = *(v8 + 16);
      v23 = v12;

      MEMORY[0x21CF03CA0](46, 0xE100000000000000);
      MEMORY[0x21CF03CA0](0x746E756F63, 0xE500000000000000);
      v13 = sub_21BE289CC();

      [v11 setValue:v9 forKey:v13];

      v9 = v13;
    }

    else
    {
    }

    sub_21BE26EAC();
    v20 = sub_21BE1F55C();
    [v20 synchronize];

    return v21;
  }

  else
  {
    v14 = (v0 + *(type metadata accessor for FamilyChecklistCell(0) + 40));
    v15 = *v14;
    v16 = v14[1];
    v17 = *(v14 + 16);
    type metadata accessor for ChecklistStoreCache();
    sub_21BDBC510(&qword_27CDB8CB8, type metadata accessor for ChecklistStoreCache);
    sub_21BE26EAC();
    v22 = 0x746E756F63;
    v23 = 0xE500000000000000;
    v18 = sub_21BE20000(&v22);

    if (v18)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v22 = 0;
        LOBYTE(v23) = 1;
        sub_21BE28EAC();

        if (v23 != 1)
        {
          return v22;
        }
      }

      else
      {
      }
    }

    return 0;
  }
}

uint64_t sub_21BDB6E14@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v48 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5DF0, &unk_21BE33810);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v44 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBCF30, &qword_21BE4CD70);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v44 - v12;
  v14 = sub_21BE27B0C();
  v46 = *(v14 - 8);
  v47 = v14;
  v15 = *(v46 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_21BE26A4C();
  v45 = *(v18 - 8);
  v19 = *(v45 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v1 + 56);
  v23 = *(v1 + 64);
  *&v50 = *(v1 + 48);
  *(&v50 + 1) = v22;
  LOBYTE(v51) = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CD8, &unk_21BE335A0);
  MEMORY[0x21CF036E0](&v49, v24);
  if (v49 == 1)
  {
    v25 = *(v1 + 16);
    v26 = [*(v2 + 16) incompleteItems];
    if (v26)
    {

      if (qword_27CDB4FE8 != -1)
      {
        swift_once();
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
      }

      else
      {
        v36 = v25;
        sub_21BE2614C();
        v37 = sub_21BE26A2C();
        v38 = sub_21BE28FCC();
        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          *v39 = 0;
          _os_log_impl(&dword_21BB35000, v37, v38, "Launching checklist", v39, 2u);
          MEMORY[0x21CF05C50](v39, -1, -1);
        }

        (*(v45 + 8))(v21, v18);
        v40 = [objc_allocWithZone(FAChecklistViewController) initWithAccountManager:*(v2 + 40) familyCircle:*v2 profilePictureStore:*(v2 + 32) checklistStore:v36];
        swift_unknownObjectWeakAssign();
        v41 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
        v42 = sub_21BDB6920(v17);
        MEMORY[0x28223BE20](v42);
        *(&v44 - 2) = v41;
        *(&v44 - 1) = v2;
        sub_21BE27AFC();

        (*(v46 + 8))(v17, v47);
      }
    }

    else
    {
      *v13 = sub_21BE275DC();
      *(v13 + 1) = 0;
      v13[16] = 0;
      v28 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBCF38, &qword_21BE4CD78) + 44)];
      sub_21BE26EEC();
      *&v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5DF8, &unk_21BE38C60) + 36)] = 257;
      v29 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5E00, &unk_21BE33820) + 36)];
      v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB55B0, &qword_21BE3FF90) + 28);
      v31 = *MEMORY[0x277CDF438];
      v32 = sub_21BE26E7C();
      (*(*(v32 - 8) + 104))(v29 + v30, v31, v32);
      *v29 = swift_getKeyPath();
      sub_21BE286BC();
      sub_21BE26F2C();
      v33 = &v9[*(v3 + 36)];
      v34 = v51;
      *v33 = v50;
      *(v33 + 1) = v34;
      *(v33 + 2) = v52;
      sub_21BBA3854(v9, v7, &qword_27CDB5DF0, &unk_21BE33810);
      *v28 = 0;
      v28[8] = 1;
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAD60, &qword_21BE45410);
      sub_21BBA3854(v7, &v28[*(v35 + 48)], &qword_27CDB5DF0, &unk_21BE33810);
      sub_21BB3A4CC(v9, &qword_27CDB5DF0, &unk_21BE33810);
      sub_21BB3A4CC(v7, &qword_27CDB5DF0, &unk_21BE33810);
      sub_21BB3B038(&qword_27CDBCF40, &qword_27CDBCF30, &qword_21BE4CD70);
    }
  }

  result = sub_21BE2852C();
  *v48 = result;
  return result;
}

void sub_21BDB7420(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FamilyChecklistCell(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  if (a1)
  {
    sub_21BDBCE20(a3, aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    v9 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v10 = swift_allocObject();
    sub_21BDBCE84(aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
    aBlock[4] = sub_21BDBD2F4;
    aBlock[5] = v10;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21BB42A18;
    aBlock[3] = &block_descriptor_102;
    v11 = _Block_copy(aBlock);

    [a1 presentViewController:a2 animated:1 completion:v11];
    _Block_release(v11);
  }
}

uint64_t sub_21BDB75A0(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CD8, &unk_21BE335A0);
  sub_21BE2854C();
  if (qword_27CDB4FE8 != -1)
  {
    swift_once();
  }

  return swift_unknownObjectWeakAssign();
}

uint64_t sub_21BDB763C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v21 = a1;
  v22 = sub_21BE27A2C();
  v20 = *(v22 - 8);
  v3 = *(v20 + 64);
  MEMORY[0x28223BE20](v22);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FamilyChecklistCell(0);
  v19 = *(v6 - 8);
  v7 = *(v19 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v18 = sub_21BE275DC();
  v26 = 0;
  sub_21BDB7A34(v1, v24);
  memcpy(v29, v24, sizeof(v29));
  memcpy(v30, v24, 0x1E0uLL);
  sub_21BBA3854(v29, v23, &qword_27CDBCEC0, &unk_21BE4CD20);
  sub_21BB3A4CC(v30, &qword_27CDBCEC0, &unk_21BE4CD20);
  memcpy(&v25[7], v29, 0x1E0uLL);
  v8 = v26;
  sub_21BDB6B28();
  v9 = 0;
  if ((v10 & 1) == 0)
  {
    v11 = *(v1 + 56);
    v12 = *(v1 + 64);
    v24[0] = *(v1 + 48);
    v24[1] = v11;
    LOBYTE(v24[2]) = v12;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CD8, &unk_21BE335A0);
    MEMORY[0x21CF036E0](v23, v13);
    v9 = LOBYTE(v23[0]) ^ 1;
  }

  KeyPath = swift_getKeyPath();
  v27 = 0;
  sub_21BE286AC();
  sub_21BE2725C();
  *(&v28[6] + 7) = *&v28[21];
  *(&v28[8] + 7) = *&v28[23];
  *(&v28[10] + 7) = *&v28[25];
  *(&v28[12] + 7) = *&v28[27];
  *(v28 + 7) = *&v28[15];
  *(&v28[2] + 7) = *&v28[17];
  *(&v28[4] + 7) = *&v28[19];
  sub_21BDBCE20(v2, &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v19 + 80) + 16) & ~*(v19 + 80);
  v16 = swift_allocObject();
  sub_21BDBCE84(&v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  v23[0] = v18;
  v23[1] = 0;
  LOBYTE(v23[2]) = v8;
  memcpy(&v23[2] + 1, v25, 0x1E7uLL);
  LOBYTE(v23[63]) = v9 & 1;
  v23[64] = KeyPath;
  LOBYTE(v23[65]) = 0;
  *(&v23[73] + 1) = *&v28[8];
  *(&v23[75] + 1) = *&v28[10];
  *(&v23[77] + 1) = *&v28[12];
  *(&v23[65] + 1) = *v28;
  *(&v23[67] + 1) = *&v28[2];
  *(&v23[69] + 1) = *&v28[4];
  *(&v23[71] + 1) = *&v28[6];
  v23[79] = *(&v28[13] + 7);
  LOBYTE(v23[80]) = 0;
  v23[81] = sub_21BDBCEE8;
  v23[82] = v16;
  sub_21BE27A0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBCEC8, &qword_21BE4CD30);
  sub_21BDBCF00();
  sub_21BE2805C();
  (*(v20 + 8))(v5, v22);
  memcpy(v24, v23, sizeof(v24));
  return sub_21BB3A4CC(v24, &qword_27CDBCEC8, &qword_21BE4CD30);
}

uint64_t sub_21BDB7A34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21BE2771C();
  v22 = 1;
  sub_21BDB7D38(__src);
  memcpy(__dst, __src, 0x121uLL);
  memcpy(v25, __src, 0x121uLL);
  sub_21BBA3854(__dst, v12, &qword_27CDBCF20, &qword_21BE4CD60);
  sub_21BB3A4CC(v25, &qword_27CDBCF20, &qword_21BE4CD60);
  memcpy(&v21[7], __dst, 0x121uLL);
  v5 = v22;
  sub_21BE286AC();
  sub_21BE2725C();
  *(&v23[6] + 7) = *&v23[21];
  *(&v23[8] + 7) = *&v23[23];
  *(&v23[10] + 7) = *&v23[25];
  *(&v23[12] + 7) = *&v23[27];
  *(v23 + 7) = *&v23[15];
  *(&v23[2] + 7) = *&v23[17];
  *(&v23[4] + 7) = *&v23[19];
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  *__src = *(a1 + 48);
  *&__src[8] = v6;
  __src[16] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CD8, &unk_21BE335A0);
  MEMORY[0x21CF036E0](v12, v8);
  v9 = 0;
  if (LOBYTE(v12[0]) == 1)
  {
    sub_21BDB6E14(__src);
    v9 = *__src;
  }

  v12[0] = v4;
  v12[1] = 0;
  LOBYTE(v12[2]) = v5;
  memcpy(&v12[2] + 1, v21, 0x128uLL);
  *(&v12[47] + 1) = *&v23[8];
  *(&v12[49] + 1) = *&v23[10];
  *(&v12[51] + 1) = *&v23[12];
  *(&v12[39] + 1) = *v23;
  *(&v12[41] + 1) = *&v23[2];
  *(&v12[43] + 1) = *&v23[4];
  *(&v12[45] + 1) = *&v23[6];
  v12[53] = *(&v23[13] + 7);
  memcpy(&v11[7], v12, 0x1B0uLL);

  sub_21BBA3854(v12, __src, &qword_27CDBCF28, &qword_21BE4CD68);
  *a2 = 9;
  *(a2 + 8) = 0;
  *(a2 + 16) = &unk_282D873B0;
  *(a2 + 24) = &unk_282D873E0;
  *(a2 + 32) = 0;
  memcpy((a2 + 33), v11, 0x1B7uLL);
  *(a2 + 472) = v9;

  *__src = v4;
  *&__src[8] = 0;
  __src[16] = v5;
  memcpy(&__src[17], v21, 0x128uLL);
  v18 = *&v23[8];
  v19 = *&v23[10];
  *v20 = *&v23[12];
  v14 = *v23;
  v15 = *&v23[2];
  v16 = *&v23[4];
  v17 = *&v23[6];
  *&v20[15] = *(&v23[13] + 7);
  sub_21BB3A4CC(__src, &qword_27CDBCF28, &qword_21BE4CD68);
}

uint64_t sub_21BDB7D38@<X0>(void *a1@<X8>)
{
  v74 = a1;
  v69 = sub_21BE25FCC();
  v1 = *(v69 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v69);
  v4 = &v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = objc_opt_self();
  v7 = [v6 bundleForClass_];
  v8 = sub_21BE2599C();
  v10 = v9;

  *&v116 = v8;
  *(&v116 + 1) = v10;
  sub_21BB41FA4();
  v11 = sub_21BE27DBC();
  v71 = v12;
  v72 = v11;
  LOBYTE(v8) = v13;
  v73 = v14;
  sub_21BE286AC();
  sub_21BE2725C();
  v70 = v8 & 1;
  v134 = v8 & 1;
  v15 = sub_21BDB6B28();
  if (v16)
  {
    v17 = [v6 bundleForClass_];
    v18 = sub_21BE2599C();
    v20 = v19;

    *&v116 = v18;
    *(&v116 + 1) = v20;
    v21 = sub_21BE27DBC();
    v23 = v22;
    LOBYTE(v20) = v24;
    sub_21BE2833C();
    v25 = sub_21BE27D4C();
    v27 = v26;
    v29 = v28;
    v68 = v30;

    sub_21BBC7C7C(v21, v23, v20 & 1);

    sub_21BE27BEC();
    v69 = sub_21BE27D9C();
    v32 = v31;
    v34 = v33;
    v36 = v35;

    sub_21BBC7C7C(v25, v27, v29 & 1);

    sub_21BE286AC();
    sub_21BE2725C();
    LOBYTE(v75[0]) = v34 & 1;
    *&v106 = v69;
    *(&v106 + 1) = v32;
    LOBYTE(v107) = v34 & 1;
    *(&v107 + 1) = v36;
    sub_21BDBD398(&v106);
  }

  else
  {
    v37 = v15;
    v38 = v69;
    (*(v1 + 104))(v4, *MEMORY[0x277D07F38], v69);
    v39 = MEMORY[0x21CF01150](v4);
    (*(v1 + 8))(v4, v38);
    if (v39)
    {
      v40 = 0x800000021BE5ADA0;
      v41 = 0xD00000000000001FLL;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_21BE32770;
      v43 = MEMORY[0x277D83C10];
      *(v42 + 56) = MEMORY[0x277D83B88];
      *(v42 + 64) = v43;
      *(v42 + 32) = v37;

      v44 = [v6 bundleForClass_];
      sub_21BE2599C();

      v41 = sub_21BE289DC();
      v40 = v45;
    }

    *&v116 = v41;
    *(&v116 + 1) = v40;
    v46 = sub_21BE27DBC();
    v48 = v47;
    v50 = v49;
    sub_21BE2833C();
    v51 = sub_21BE27D4C();
    v53 = v52;
    v55 = v54;
    v68 = v56;

    sub_21BBC7C7C(v46, v48, v50 & 1);

    sub_21BE27BEC();
    v69 = sub_21BE27D9C();
    v58 = v57;
    v60 = v59;
    v62 = v61;

    sub_21BBC7C7C(v51, v53, v55 & 1);

    sub_21BE286AC();
    sub_21BE2725C();
    LOBYTE(v75[0]) = v60 & 1;
    *&v106 = v69;
    *(&v106 + 1) = v58;
    LOBYTE(v107) = v60 & 1;
    *(&v107 + 1) = v62;
    sub_21BDBD3A4(&v106);
  }

  v102 = v112;
  v103 = v113;
  v104 = v114;
  v105 = v115;
  v98 = v108;
  v99 = v109;
  v100 = v110;
  v101 = v111;
  v96 = v106;
  v97 = v107;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8C98, &unk_21BE3DAC8);
  sub_21BCA16C0();
  sub_21BE2784C();
  v112 = v122;
  v113 = v123;
  v114 = v124;
  v108 = v118;
  v109 = v119;
  v110 = v120;
  v111 = v121;
  v106 = v116;
  v107 = v117;
  v64 = v71;
  v63 = v72;
  *&v87 = v72;
  *(&v87 + 1) = v71;
  v65 = v70;
  LOBYTE(v88) = v70;
  *(&v88 + 1) = *v133;
  DWORD1(v88) = *&v133[3];
  v66 = v73;
  *(&v88 + 1) = v73;
  v93 = v130;
  v94 = v131;
  v89 = v126;
  v90 = v127;
  v91 = v128;
  v92 = v129;
  v86[6] = v130;
  v86[7] = v131;
  v86[2] = v126;
  v86[3] = v127;
  v86[4] = v128;
  v86[5] = v129;
  v86[0] = v87;
  v86[1] = v88;
  v103 = v123;
  v104 = v124;
  v99 = v119;
  v100 = v120;
  v101 = v121;
  v102 = v122;
  v95 = v132;
  v96 = v116;
  v97 = v117;
  v98 = v118;
  v86[16] = v123;
  v86[17] = v124;
  v86[12] = v119;
  v86[13] = v120;
  v86[14] = v121;
  v86[15] = v122;
  v86[8] = v132;
  v86[9] = v116;
  v115 = v125;
  v105 = v125;
  LOBYTE(v86[18]) = v125;
  v86[10] = v117;
  v86[11] = v118;
  memcpy(v74, v86, 0x121uLL);
  sub_21BBA3854(&v87, v75, &qword_27CDB8C98, &unk_21BE3DAC8);
  sub_21BBA3854(&v96, v75, &qword_27CDBCF48, &unk_21BE4CD80);
  sub_21BB3A4CC(&v106, &qword_27CDBCF48, &unk_21BE4CD80);
  v75[0] = v63;
  v75[1] = v64;
  v76 = v65;
  *v77 = *v133;
  *&v77[3] = *&v133[3];
  v78 = v66;
  v83 = v130;
  v84 = v131;
  v85 = v132;
  v79 = v126;
  v80 = v127;
  v82 = v129;
  v81 = v128;
  return sub_21BB3A4CC(v75, &qword_27CDB8C98, &unk_21BE3DAC8);
}

void *sub_21BDB8644(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 56);
  v3 = *(a1 + 64);
  v11 = v1;
  v12 = v2;
  v13 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CD8, &unk_21BE335A0);
  result = MEMORY[0x21CF036E0](&v10);
  if ((v10 & 1) == 0)
  {
    if (qword_27CDB4F68 != -1)
    {
      swift_once();
    }

    sub_21BB3A2A4(0, &qword_27CDBCF18, off_2782F0B88);
    v5 = sub_21BE29BBC();
    v7 = v6;
    LOBYTE(v11) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E0, &unk_21BE35E30);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21BE32770;
    *(inited + 32) = 0x6976614E77656976;
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 80) = &protocol witness table for String;
    *(inited + 40) = 0xEF6F546465746167;
    *(inited + 48) = v5;
    *(inited + 56) = v7;

    v9 = sub_21BBB5E60(inited);
    swift_setDeallocating();
    sub_21BB3A4CC(inited + 32, &qword_27CDB57E8, &qword_21BE32890);
    sub_21BCA55DC(&v11, v9);

    v11 = v1;
    v12 = v2;
    v13 = v3;
    v10 = 1;
    return sub_21BE2854C();
  }

  return result;
}

void *sub_21BDB880C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v21 - v4;
  v6 = sub_21BE26A4C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v1 + 136);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v12 = sub_21BCE6070(0xD000000000000011, 0x800000021BE57B00, v21[0]);

  if (!v12)
  {
    sub_21BE2614C();
    v13 = sub_21BE26A2C();
    v14 = sub_21BE28FFC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_21BB35000, v13, v14, "No location sharing service found, trying service load", v15, 2u);
      MEMORY[0x21CF05C50](v15, -1, -1);
    }

    (*(v7 + 8))(v10, v6);
    v16 = sub_21BE28DAC();
    (*(*(v16 - 8) + 56))(v5, 1, 1, v16);
    sub_21BDBCA44(v1, v21);
    sub_21BE28D7C();
    v17 = sub_21BE28D6C();
    v18 = swift_allocObject();
    v19 = MEMORY[0x277D85700];
    *(v18 + 16) = v17;
    *(v18 + 24) = v19;
    sub_21BDBCA7C(v21, v18 + 32);
    sub_21BBA932C(0, 0, v5, &unk_21BE4CD10, v18);
  }

  return v12;
}

uint64_t sub_21BDB8AE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800) - 8) + 64) + 15;
  v4[4] = swift_task_alloc();
  v4[5] = sub_21BE28D7C();
  v4[6] = sub_21BE28D6C();
  v7 = sub_21BE28D0C();
  v4[7] = v7;
  v4[8] = v6;

  return MEMORY[0x2822009F8](sub_21BDB8BB4, v7, v6);
}

uint64_t sub_21BDB8BB4()
{
  v1 = v0[5];
  v0[9] = *(v0[3] + 136);
  v0[10] = sub_21BE28D6C();
  v3 = sub_21BE28D0C();
  v0[11] = v3;
  v0[12] = v2;

  return MEMORY[0x2822009F8](sub_21BC76CD4, v3, v2);
}

uint64_t sub_21BDB8C4C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBCE48, &unk_21BE4CC00);
  v50 = *(v4 - 8);
  v5 = *(v50 + 64);
  MEMORY[0x28223BE20](v4);
  v49 = &v41 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB50C0, &qword_21BE31098);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v41 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBCE50, &qword_21BE4CC10);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v41 - v13;
  sub_21BDB92BC(v2, &v41 - v13);
  sub_21BDBC7C4();
  v47 = v10;
  sub_21BE2809C();
  sub_21BB57F4C(v14);
  v48 = v2;
  sub_21BDBCA44(v2, v54);
  sub_21BE28D7C();
  v15 = sub_21BE28D6C();
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  *(v16 + 16) = v15;
  *(v16 + 24) = v17;
  sub_21BDBCA7C(v54, v16 + 32);
  v18 = sub_21BE28DAC();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  v22 = &v41 - v21;
  sub_21BE28D8C();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v45 = sub_21BE2715C();
    v46 = &v41;
    v44 = *(v45 - 8);
    v23 = *(v44 + 64);
    MEMORY[0x28223BE20](v45);
    v42 = &v41 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
    v52 = 0;
    v53 = 0xE000000000000000;
    sub_21BE295EC();

    v52 = 0xD000000000000042;
    v53 = 0x800000021BE619C0;
    v51 = 385;
    v25 = sub_21BE2992C();
    MEMORY[0x21CF03CA0](v25);

    v43 = v4;
    MEMORY[0x28223BE20](v26);
    (*(v19 + 16))(&v41 - v21, &v41 - v21, v18);
    v27 = v42;
    sub_21BE2714C();
    (*(v19 + 8))(v22, v18);
    v4 = v43;
    v28 = v49;
    sub_21BB57FB8(v47, v49);
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB50C8, &unk_21BE310A0);
    (*(v44 + 32))(v28 + *(v29 + 36), v27, v45);
  }

  else
  {
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB50D0, &unk_21BE4CC50);
    v28 = v49;
    v31 = (v49 + *(v30 + 36));
    v32 = sub_21BE2701C();
    (*(v19 + 32))(&v31[*(v32 + 20)], v22, v18);
    *v31 = &unk_21BE4CC40;
    *(v31 + 1) = v16;
    sub_21BB57FB8(v47, v28);
  }

  sub_21BDBCA44(v48, v54);
  v33 = swift_allocObject();
  sub_21BDBCA7C(v54, v33 + 16);
  type metadata accessor for NavigationManager();
  sub_21BDBC510(&qword_27CDB69B0, type metadata accessor for NavigationManager);
  v34 = sub_21BE26E9C();
  v36 = v35;
  LOBYTE(v52) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6A10, &qword_21BE35CE0);
  sub_21BE283EC();
  v37 = v54[0];
  v38 = v55;
  (*(v50 + 32))(a1, v28, v4);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBCE98, &qword_21BE4CC48);
  v40 = a1 + *(result + 36);
  *v40 = sub_21BDBCB58;
  *(v40 + 8) = v33;
  *(v40 + 16) = v34;
  *(v40 + 24) = v36 & 1;
  *(v40 + 32) = v37;
  *(v40 + 40) = v38;
  return result;
}

uint64_t sub_21BDB92BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBCE88, &qword_21BE4CC30);
  v3 = *(v53 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v53);
  v6 = &v51 - v5;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBCE80, &qword_21BE4CC28);
  v51 = *(v57 - 8);
  v7 = *(v51 + 64);
  MEMORY[0x28223BE20](v57);
  v9 = &v51 - v8;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBCEA0, &qword_21BE4CC60);
  v10 = *(v60 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v60);
  v13 = &v51 - v12;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBCEA8, &qword_21BE4CC68);
  v14 = *(*(v56 - 8) + 64);
  MEMORY[0x28223BE20](v56);
  v59 = &v51 - v15;
  v54 = sub_21BE2721C();
  v55 = *(v54 - 8);
  v16 = *(v55 + 64);
  MEMORY[0x28223BE20](v54);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBCEB0, &unk_21BE4CC70);
  v52 = *(v58 - 8);
  v19 = *(v52 + 64);
  MEMORY[0x28223BE20](v58);
  v21 = &v51 - v20;
  v22 = *(a1 + 104);
  LOBYTE(v66) = *(a1 + 96);
  *(&v66 + 1) = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE283FC();
  if (v62 == 1)
  {
    sub_21BDBCA44(a1, &v66);
    v23 = swift_allocObject();
    sub_21BDBCA7C(&v66, v23 + 16);
    sub_21BDBCA44(a1, &v66);
    v24 = swift_allocObject();
    sub_21BDBCA7C(&v66, v24 + 16);
    LOBYTE(v62) = 0;
    sub_21BE283EC();
    v25 = v66;
    v26 = *(&v66 + 1);
    type metadata accessor for NavigationManager();
    sub_21BDBC510(&qword_27CDB69B0, type metadata accessor for NavigationManager);
    v27 = sub_21BE26E9C();
    v65 = v28 & 1;
    *&v62 = &unk_21BE4CC88;
    *(&v62 + 1) = v23;
    *&v63 = sub_21BDBCCE0;
    *(&v63 + 1) = v24;
    v64[0] = v25;
    *&v64[8] = v26;
    *&v64[16] = v27;
    v64[24] = v28 & 1;
    sub_21BE2720C();
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBCE70, &qword_21BE4CC20);
    v30 = sub_21BB3B038(&qword_27CDBCE78, &qword_27CDBCE70, &qword_21BE4CC20);
    v31 = sub_21BDBC510(&qword_27CDBC430, MEMORY[0x277CDDB18]);
    v32 = v54;
    sub_21BE27ECC();
    (*(v55 + 8))(v18, v32);
    v66 = v62;
    v67 = v63;
    v68[0] = *v64;
    *(v68 + 9) = *&v64[9];
    sub_21BB3A4CC(&v66, &qword_27CDBCE70, &qword_21BE4CC20);
    v33 = v52;
    v34 = v58;
    (*(v52 + 16))(v59, v21, v58);
    swift_storeEnumTagMultiPayload();
    *&v62 = v29;
    *(&v62 + 1) = v32;
    *&v63 = v30;
    *(&v63 + 1) = v31;
    swift_getOpaqueTypeConformance2();
    v35 = sub_21BB3B038(&qword_27CDBCE90, &qword_27CDBCE88, &qword_21BE4CC30);
    *&v62 = v53;
    *(&v62 + 1) = v35;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    *&v62 = v57;
    *(&v62 + 1) = v32;
    *&v63 = OpaqueTypeConformance2;
    *(&v63 + 1) = v31;
    swift_getOpaqueTypeConformance2();
    sub_21BE2784C();
    return (*(v33 + 8))(v21, v34);
  }

  else
  {
    sub_21BDBCA44(a1, &v66);
    v38 = swift_allocObject();
    v39 = sub_21BDBCA7C(&v66, v38 + 16);
    v52 = v10;
    MEMORY[0x28223BE20](v39);
    *(&v51 - 2) = a1;
    sub_21BDBCB70();
    sub_21BE2843C();
    v40 = *(a1 + 120);
    LOBYTE(v62) = *(a1 + 112);
    *(&v62 + 1) = v40;
    sub_21BE2841C();
    v41 = sub_21BB3B038(&qword_27CDBCE90, &qword_27CDBCE88, &qword_21BE4CC30);
    v42 = v53;
    sub_21BE280DC();

    (*(v3 + 8))(v6, v42);
    sub_21BE2720C();
    *&v66 = v42;
    *(&v66 + 1) = v41;
    v53 = swift_getOpaqueTypeConformance2();
    v43 = sub_21BDBC510(&qword_27CDBC430, MEMORY[0x277CDDB18]);
    v44 = v57;
    v45 = v51;
    v46 = v54;
    sub_21BE27ECC();
    (*(v55 + 8))(v18, v46);
    (*(v45 + 8))(v9, v44);
    v47 = v52;
    v48 = v60;
    (*(v52 + 16))(v59, v13, v60);
    swift_storeEnumTagMultiPayload();
    v49 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBCE70, &qword_21BE4CC20);
    v50 = sub_21BB3B038(&qword_27CDBCE78, &qword_27CDBCE70, &qword_21BE4CC20);
    *&v66 = v49;
    *(&v66 + 1) = v46;
    *&v67 = v50;
    *(&v67 + 1) = v43;
    swift_getOpaqueTypeConformance2();
    *&v66 = v44;
    *(&v66 + 1) = v46;
    *&v67 = v53;
    *(&v67 + 1) = v43;
    swift_getOpaqueTypeConformance2();
    sub_21BE2784C();
    return (*(v47 + 8))(v13, v48);
  }
}

uint64_t sub_21BDB9D7C(uint64_t a1, uint64_t a2)
{
  v2[19] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0) - 8) + 64) + 15;
  v2[20] = swift_task_alloc();
  v4 = sub_21BE25B9C();
  v2[21] = v4;
  v5 = *(v4 - 8);
  v2[22] = v5;
  v6 = *(v5 + 64) + 15;
  v2[23] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800) - 8) + 64) + 15;
  v2[24] = swift_task_alloc();
  v2[25] = sub_21BE28D7C();
  v2[26] = sub_21BE28D6C();
  v9 = sub_21BE28D0C();
  v2[27] = v9;
  v2[28] = v8;

  return MEMORY[0x2822009F8](sub_21BDB9EE4, v9, v8);
}

uint64_t sub_21BDB9EE4()
{
  v1 = v0[25];
  v0[29] = *(v0[19] + 136);
  v0[30] = sub_21BE28D6C();
  v3 = sub_21BE28D0C();
  v0[31] = v3;
  v0[32] = v2;

  return MEMORY[0x2822009F8](sub_21BDB9F7C, v3, v2);
}

void sub_21BDB9F7C()
{
  v1 = *(v0[29] + 40);
  v0[33] = v1;
  if (v1)
  {
    v2 = v0[24];
    v3 = sub_21BE28DAC();
    (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
    v4 = *(MEMORY[0x277D07FD0] + 4);
    v7 = (*MEMORY[0x277D07FD0] + MEMORY[0x277D07FD0]);

    v5 = swift_task_alloc();
    v0[34] = v5;
    *v5 = v0;
    v5[1] = sub_21BDBA090;
    v6 = v0[24];

    v7(v0 + 18, v6);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21BDBA090()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 272);
  v5 = *v1;

  v6 = *(v2 + 264);
  v7 = *(v2 + 192);
  if (v0)
  {

    sub_21BB3A4CC(v7, &qword_27CDB5790, &qword_21BE32800);
    v8 = *(v3 + 248);
    v9 = *(v3 + 256);
    v10 = sub_21BDBA524;
  }

  else
  {
    sub_21BB3A4CC(v7, &qword_27CDB5790, &qword_21BE32800);

    v8 = *(v3 + 248);
    v9 = *(v3 + 256);
    v10 = sub_21BDBA220;
  }

  return MEMORY[0x2822009F8](v10, v8, v9);
}

uint64_t sub_21BDBA220()
{
  v1 = v0[30];

  v2 = v0[18];

  v3 = v0[27];
  v4 = v0[28];

  return MEMORY[0x2822009F8](sub_21BDBA28C, v3, v4);
}

uint64_t sub_21BDBA28C()
{
  if (*(v0[19] + 48) != 1 || (v1 = sub_21BDB880C()) == 0 || (v2 = v1, v3 = [v1 actionURLString], v2, !v3))
  {
    v9 = v0[26];
LABEL_7:

    goto LABEL_8;
  }

  v4 = v0[21];
  v5 = v0[22];
  v6 = v0[20];
  sub_21BE28A0C();

  sub_21BE25B7C();

  if ((*(v5 + 48))(v6, 1, v4) == 1)
  {
    v7 = v0[26];
    v8 = v0[20];

    sub_21BB3A4CC(v8, &unk_27CDB57F0, &qword_21BE328A0);
LABEL_8:
    v11 = v0[23];
    v10 = v0[24];
    v12 = v0[20];

    v13 = v0[1];

    return v13();
  }

  v15 = v0[19];
  (*(v0[22] + 32))(v0[23], v0[20], v0[21]);
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[35] = Strong;
  if (!Strong)
  {
    v20 = v0[26];
    (*(v0[22] + 8))(v0[23], v0[21]);
    goto LABEL_7;
  }

  v17 = Strong;
  v18 = sub_21BE25B2C();
  v0[36] = v18;
  v0[2] = v0;
  v0[3] = sub_21BDBA588;
  v19 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5948, &qword_21BE4DE90);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_21BD44BD8;
  v0[13] = &block_descriptor_54;
  v0[14] = v19;
  [v17 didSelectSubscriptionWithURL:v18 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21BDBA524()
{
  v1 = v0[30];

  v2 = v0[27];
  v3 = v0[28];

  return MEMORY[0x2822009F8](sub_21BDBDF10, v2, v3);
}

uint64_t sub_21BDBA588()
{
  v1 = *(*v0 + 224);
  v2 = *(*v0 + 216);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_21BDBA690, v2, v1);
}

uint64_t sub_21BDBA690()
{
  v1 = v0[35];
  v2 = v0[36];
  v3 = v0[26];
  v5 = v0[22];
  v4 = v0[23];
  v6 = v0[21];

  (*(v5 + 8))(v4, v6);
  swift_unknownObjectRelease();

  v8 = v0[23];
  v7 = v0[24];
  v9 = v0[20];

  v10 = v0[1];

  return v10();
}

double sub_21BDBA750@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_21BE2858C();
  v4 = *(a1 + 32);
  type metadata accessor for LocationViewModel();
  sub_21BDBC510(&qword_27CDBDC20, type metadata accessor for LocationViewModel);
  v5 = v4;
  v6 = sub_21BE270CC();
  v8 = v7;
  sub_21BE286AC();
  sub_21BE2725C();
  KeyPath = swift_getKeyPath();
  *(a2 + 88) = v14;
  *(a2 + 104) = v15;
  *(a2 + 120) = v16;
  *(a2 + 136) = v17;
  result = *&v11;
  *(a2 + 40) = v11;
  *(a2 + 56) = v12;
  *a2 = v11;
  *(a2 + 16) = v12;
  *(a2 + 24) = v6;
  *(a2 + 32) = v8;
  *(a2 + 72) = v13;
  *(a2 + 152) = 1;
  *(a2 + 160) = KeyPath;
  *(a2 + 168) = 0;
  return result;
}

uint64_t sub_21BDBA8B8(uint64_t a1)
{
  v2 = *(a1 + 112);
  v3 = *(a1 + 120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  return sub_21BE2840C();
}

uint64_t sub_21BDBA918@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11 = *(a1 + 64);
  v12 = *(a1 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE2841C();
  v4 = *(a1 + 32);
  type metadata accessor for LocationViewModel();
  sub_21BDBC510(&qword_27CDBDC20, type metadata accessor for LocationViewModel);
  v5 = v4;
  result = sub_21BE270CC();
  *a2 = v8;
  *(a2 + 8) = v9;
  *(a2 + 16) = v10;
  *(a2 + 24) = result;
  *(a2 + 32) = v7;
  return result;
}

uint64_t sub_21BDBA9F8@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5E18, &qword_21BE33870);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v29 - v3;
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = objc_opt_self();
  v7 = [v6 bundleForClass_];
  v8 = sub_21BE2599C();
  v10 = v9;

  v34 = v8;
  v35 = v10;
  sub_21BB41FA4();
  v11 = sub_21BE27DBC();
  v31 = v12;
  v32 = v11;
  v29[3] = v13;
  v30 = v14;
  v15 = [v6 bundleForClass_];
  v16 = sub_21BE2599C();
  v18 = v17;

  v34 = v16;
  v35 = v18;
  sub_21BE27DBC();
  v19 = [v6 bundleForClass_];
  v20 = sub_21BE2599C();
  v22 = v21;

  v34 = v20;
  v35 = v22;
  v23 = sub_21BE27DBC();
  v25 = v24;
  LOBYTE(v10) = v26;
  sub_21BE2824C();
  sub_21BBC7C7C(v23, v25, v10 & 1);

  v27 = sub_21BE2825C();
  (*(*(v27 - 8) + 56))(v4, 0, 1, v27);
  return sub_21BE2821C();
}

uint64_t sub_21BDBACFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a3;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800) - 8) + 64) + 15;
  v3[4] = swift_task_alloc();
  v3[5] = sub_21BE28D7C();
  v3[6] = sub_21BE28D6C();
  v6 = sub_21BE28D0C();
  v3[7] = v6;
  v3[8] = v5;

  return MEMORY[0x2822009F8](sub_21BDBADD0, v6, v5);
}

uint64_t sub_21BDBADD0()
{
  v1 = v0[5];
  v0[9] = *(v0[3] + 136);
  v0[10] = sub_21BE28D6C();
  v3 = sub_21BE28D0C();
  v0[11] = v3;
  v0[12] = v2;

  return MEMORY[0x2822009F8](sub_21BDBAE68, v3, v2);
}

void sub_21BDBAE68()
{
  v1 = *(v0[9] + 40);
  v0[13] = v1;
  if (v1)
  {
    v2 = v0[4];
    v3 = sub_21BE28DAC();
    (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
    v4 = *(MEMORY[0x277D07FD0] + 4);
    v7 = (*MEMORY[0x277D07FD0] + MEMORY[0x277D07FD0]);

    v5 = swift_task_alloc();
    v0[14] = v5;
    *v5 = v0;
    v5[1] = sub_21BDBAF7C;
    v6 = v0[4];

    v7(v0 + 2, v6);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21BDBAF7C()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 112);
  v5 = *v1;

  v6 = *(v2 + 104);
  v7 = *(v2 + 32);
  if (v0)
  {

    sub_21BB3A4CC(v7, &qword_27CDB5790, &qword_21BE32800);
    v8 = *(v3 + 88);
    v9 = *(v3 + 96);
    v10 = sub_21BC76FE4;
  }

  else
  {
    sub_21BB3A4CC(v7, &qword_27CDB5790, &qword_21BE32800);

    v8 = *(v3 + 88);
    v9 = *(v3 + 96);
    v10 = sub_21BDBB10C;
  }

  return MEMORY[0x2822009F8](v10, v8, v9);
}

uint64_t sub_21BDBB10C()
{
  v1 = v0[10];

  v2 = v0[2];

  v3 = v0[7];
  v4 = v0[8];

  return MEMORY[0x2822009F8](sub_21BC77590, v3, v4);
}

__n128 sub_21BDBB178@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_21BDFD940(*(a1 + 32), *(a1 + 16), 0, v6);
  v3 = v6[5];
  *(a2 + 64) = v6[4];
  *(a2 + 80) = v3;
  *(a2 + 96) = v7;
  v4 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v4;
  result = v6[3];
  *(a2 + 32) = v6[2];
  *(a2 + 48) = result;
  return result;
}

uint64_t sub_21BDBB200@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5DF0, &unk_21BE33810);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v35[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBCE28, &qword_21BE4CB38);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v37 = &v35[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v39 = &v35[-v13];
  v38 = sub_21BE2771C();
  v14 = 1;
  LOBYTE(v45) = 1;
  sub_21BDBB818(a1, &v42);
  v58 = v43[9];
  v59 = v43[10];
  v60 = v43[11];
  v54 = v43[5];
  v55 = v43[6];
  v56 = v43[7];
  v57 = v43[8];
  v50 = v43[1];
  v51 = v43[2];
  v52 = v43[3];
  v53 = v43[4];
  v48 = v42;
  v49 = v43[0];
  v62[10] = v43[9];
  v62[11] = v43[10];
  v62[12] = v43[11];
  v62[6] = v43[5];
  v62[7] = v43[6];
  v62[8] = v43[7];
  v62[9] = v43[8];
  v62[2] = v43[1];
  v62[3] = v43[2];
  v62[4] = v43[3];
  v62[5] = v43[4];
  v61 = *&v43[12];
  v63 = *&v43[12];
  v62[0] = v42;
  v62[1] = v43[0];
  sub_21BBA3854(&v48, &v40, &qword_27CDBCE30, &unk_21BE4CB40);
  sub_21BB3A4CC(v62, &qword_27CDBCE30, &unk_21BE4CB40);
  *(&v44[10] + 7) = v58;
  *(&v44[11] + 7) = v59;
  *(&v44[12] + 7) = v60;
  *(&v44[6] + 7) = v54;
  *(&v44[7] + 7) = v55;
  *(&v44[8] + 7) = v56;
  *(&v44[9] + 7) = v57;
  *(&v44[2] + 7) = v50;
  *(&v44[3] + 7) = v51;
  *(&v44[4] + 7) = v52;
  *(&v44[5] + 7) = v53;
  *(v44 + 7) = v48;
  *(&v44[13] + 7) = v61;
  *(&v44[1] + 7) = v49;
  v36 = v45;
  v42 = *a1;
  LOBYTE(v43[0]) = *(a1 + 16);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CD8, &unk_21BE335A0);
  MEMORY[0x21CF036E0](&v40, v15);
  if (v40 == 1)
  {
    sub_21BE26EEC();
    *&v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5DF8, &unk_21BE38C60) + 36)] = 257;
    v16 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5E00, &unk_21BE33820) + 36)];
    v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB55B0, &qword_21BE3FF90) + 28);
    v18 = *MEMORY[0x277CDF438];
    v19 = sub_21BE26E7C();
    (*(*(v19 - 8) + 104))(v16 + v17, v18, v19);
    *v16 = swift_getKeyPath();
    sub_21BE286BC();
    sub_21BE26F2C();
    v20 = &v8[*(v4 + 36)];
    v21 = v46;
    *v20 = v45;
    v20[1] = v21;
    v20[2] = v47;
    sub_21BDBC754(v8, v39);
    v14 = 0;
  }

  v22 = v39;
  (*(v5 + 56))(v39, v14, 1, v4);
  v23 = v37;
  sub_21BBA3854(v22, v37, &qword_27CDBCE28, &qword_21BE4CB38);
  *(&v41[10] + 1) = v44[10];
  *(&v41[11] + 1) = v44[11];
  *(&v41[12] + 1) = v44[12];
  v41[13] = *(&v44[12] + 15);
  *(&v41[6] + 1) = v44[6];
  *(&v41[7] + 1) = v44[7];
  *(&v41[8] + 1) = v44[8];
  *(&v41[9] + 1) = v44[9];
  *(&v41[2] + 1) = v44[2];
  *(&v41[3] + 1) = v44[3];
  *(&v41[4] + 1) = v44[4];
  *(&v41[5] + 1) = v44[5];
  *(v41 + 1) = v44[0];
  *(&v41[1] + 1) = v44[1];
  v24 = v41[9];
  *(a2 + 216) = v41[10];
  v25 = v41[12];
  *(a2 + 232) = v41[11];
  *(a2 + 248) = v25;
  *(a2 + 264) = v41[13];
  v26 = v41[5];
  *(a2 + 152) = v41[6];
  v27 = v41[8];
  *(a2 + 168) = v41[7];
  *(a2 + 184) = v27;
  *(a2 + 200) = v24;
  v28 = v41[1];
  *(a2 + 88) = v41[2];
  v29 = v41[4];
  *(a2 + 104) = v41[3];
  v30 = v38;
  v40 = v38;
  v31 = v36;
  LOBYTE(v41[0]) = v36;
  *(a2 + 120) = v29;
  *(a2 + 136) = v26;
  v32 = v41[0];
  *(a2 + 40) = v40;
  *(a2 + 56) = v32;
  *a2 = 269;
  *(a2 + 8) = 0;
  *(a2 + 16) = &unk_282D87410;
  *(a2 + 24) = &unk_282D87440;
  *(a2 + 32) = 0;
  *(a2 + 72) = v28;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBCE38, &qword_21BE4CB50);
  sub_21BBA3854(v23, a2 + *(v33 + 64), &qword_27CDBCE28, &qword_21BE4CB38);

  sub_21BBA3854(&v40, &v42, &qword_27CDBCE40, &unk_21BE4CB58);
  sub_21BB3A4CC(v22, &qword_27CDBCE28, &qword_21BE4CB38);
  sub_21BB3A4CC(v23, &qword_27CDBCE28, &qword_21BE4CB38);
  *(&v43[10] + 1) = v44[10];
  *(&v43[11] + 1) = v44[11];
  *(&v43[12] + 1) = v44[12];
  v43[13] = *(&v44[12] + 15);
  *(&v43[6] + 1) = v44[6];
  *(&v43[7] + 1) = v44[7];
  *(&v43[8] + 1) = v44[8];
  *(&v43[9] + 1) = v44[9];
  *(&v43[2] + 1) = v44[2];
  *(&v43[3] + 1) = v44[3];
  *(&v43[4] + 1) = v44[4];
  *(&v43[5] + 1) = v44[5];
  *(v43 + 1) = v44[0];
  v42 = v30;
  LOBYTE(v43[0]) = v31;
  *(&v43[1] + 1) = v44[1];
  sub_21BB3A4CC(&v42, &qword_27CDBCE40, &unk_21BE4CB58);
}

uint64_t sub_21BDBB818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = sub_21BE2599C();
  v8 = v7;

  v54 = v6;
  v55 = v8;
  sub_21BB41FA4();
  v9 = sub_21BE27DBC();
  v45 = v10;
  v46 = v9;
  v44 = v11;
  v47 = v12;
  v13 = *(a1 + 32);
  sub_21BCCCA8C();
  v14 = sub_21BE27DBC();
  v16 = v15;
  v18 = v17;
  sub_21BE27BEC();
  v19 = sub_21BE27D9C();
  v21 = v20;
  LOBYTE(v6) = v22;

  sub_21BBC7C7C(v14, v16, v18 & 1);

  sub_21BE2833C();
  v23 = sub_21BE27D4C();
  v25 = v24;
  LOBYTE(v14) = v26;
  v28 = v27;

  sub_21BBC7C7C(v19, v21, v6 & 1);

  KeyPath = swift_getKeyPath();
  v30 = swift_getKeyPath();
  v75 = v14 & 1;
  v73 = 0;
  sub_21BE286AC();
  sub_21BE2725C();
  *&v76[55] = v80;
  *&v76[71] = v81;
  *&v76[87] = v82;
  *&v76[103] = v83;
  *&v76[7] = v77;
  *&v76[23] = v78;
  *&v76[39] = v79;
  *&v49 = v23;
  *(&v49 + 1) = v25;
  LOBYTE(v50) = v14 & 1;
  DWORD1(v50) = *&v74[3];
  *(&v50 + 1) = *v74;
  *(&v50 + 1) = v28;
  *&v51 = KeyPath;
  *(&v51 + 1) = 1;
  LOBYTE(v52) = 0;
  DWORD1(v52) = *&v72[3];
  *(&v52 + 1) = *v72;
  *(&v52 + 1) = v30;
  v53[0] = 1;
  *&v53[49] = *&v76[48];
  v32 = *&v76[32];
  v31 = *&v76[48];
  *&v53[33] = *&v76[32];
  *&v53[17] = *&v76[16];
  v33 = *v76;
  v34 = *&v76[16];
  *&v53[1] = *v76;
  *&v53[112] = *(&v83 + 1);
  *&v53[97] = *&v76[96];
  v36 = *&v76[80];
  v35 = *&v76[96];
  *&v53[81] = *&v76[80];
  v37 = *&v76[64];
  *&v53[65] = *&v76[64];
  v38 = v52;
  *(a2 + 64) = v51;
  *(a2 + 80) = v38;
  v39 = v50;
  *(a2 + 32) = v49;
  *(a2 + 48) = v39;
  v40 = *&v53[48];
  *(a2 + 128) = *&v53[32];
  *(a2 + 144) = v40;
  v41 = *&v53[16];
  *(a2 + 96) = *v53;
  *(a2 + 112) = v41;
  v42 = *&v53[96];
  *(a2 + 176) = *&v53[80];
  *(a2 + 192) = v42;
  *(a2 + 160) = *&v53[64];
  v68 = v31;
  v67 = v32;
  v66 = v34;
  v48[184] = v44 & 1;
  *a2 = v46;
  *(a2 + 8) = v45;
  *(a2 + 16) = v44 & 1;
  *(a2 + 24) = v47;
  *(a2 + 208) = *&v53[112];
  v54 = v23;
  v55 = v25;
  v56 = v14 & 1;
  *v57 = *v74;
  *&v57[3] = *&v74[3];
  v58 = v28;
  v59 = KeyPath;
  v60 = 1;
  v61 = 0;
  *v62 = *v72;
  *&v62[3] = *&v72[3];
  v63 = v30;
  v64 = 1;
  v65 = v33;
  *&v71[15] = *&v76[111];
  *v71 = v35;
  v70 = v36;
  v69 = v37;
  sub_21BBA4A38(v46, v45, v44 & 1);

  sub_21BBA3854(&v49, v48, &qword_27CDB90A8, &qword_21BE3E898);
  sub_21BB3A4CC(&v54, &qword_27CDB90A8, &qword_21BE3E898);
  sub_21BBC7C7C(v46, v45, v44 & 1);
}

uint64_t sub_21BDBBC3C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v6[0] = *v1;
  v6[1] = v3;
  v7 = *(v1 + 32);
  *a1 = sub_21BE275DC();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBCE18, &qword_21BE4CB20);
  sub_21BDBB200(v6, a1 + *(v4 + 44));
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBCE20, &unk_21BE4CB28);
  *(a1 + *(result + 36)) = 0;
  return result;
}

void sub_21BDBBCC0(UIImage *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = UIImagePNGRepresentation(a1);
  if (v7)
  {
    v8 = v7;
    v9 = sub_21BE25BFC();
    v11 = v10;

    v12 = sub_21BE25BCC();
    sub_21BBBEF94(v9, v11);
  }

  else
  {
    v12 = 0;
  }

  v13 = objc_opt_self();
  swift_getKeyPath();
  sub_21BDBC510(&qword_27CDB69A8, type metadata accessor for FAFamilyImageLoader);
  sub_21BE25F1C();

  v14 = OBJC_IVAR____TtC14FamilyCircleUI19FAFamilyImageLoader__monogramDiameter;
  swift_beginAccess();
  v15 = [v13 circularImageData:v12 withDiameter:*(v4 + v14) crop:{0.0, 0.0, 0.0, 0.0}];

  if (v15)
  {
    v16 = sub_21BE25BFC();
    v18 = v17;

    v19 = objc_allocWithZone(MEMORY[0x277D755B8]);

    sub_21BBBEE74(v16, v18);
    v20 = sub_21BE25BCC();
    v21 = [v19 initWithData_];

    sub_21BBBEF94(v16, v18);
    swift_beginAccess();
    sub_21BD404AC(v21, a2, a3);
    swift_endAccess();
    sub_21BBBEF94(v16, v18);
  }
}

uint64_t sub_21BDBBED8(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  sub_21BE28D7C();
  v3[8] = sub_21BE28D6C();
  v5 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BDBBF74, v5, v4);
}

uint64_t sub_21BDBBF74()
{
  v2 = v0[7];
  v1 = v0[8];

  v3 = OBJC_IVAR____TtC14FamilyCircleUI30FAFamilyImageLoaderForPreviews_images;
  swift_beginAccess();
  v4 = *(v2 + v3);
  if (*(v4 + 16))
  {
    v6 = v0[5];
    v5 = v0[6];

    v7 = sub_21BBB3108(v6, v5);
    if (v8)
    {
      v9 = *(*(v4 + 56) + 8 * v7);
      v10 = v9;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v11 = v0[1];

  return v11(v9);
}

id sub_21BDBC05C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FAFamilyImageLoaderForPreviews(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21BDBC114(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_21BDBC15C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_21BDBC1B4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
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

uint64_t sub_21BDBC1FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
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
      *(result + 144) = 1;
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

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_21BDBC2B8()
{
  sub_21BB3A2A4(319, &qword_280BD6980, 0x277D08248);
  if (v0 <= 0x3F)
  {
    sub_21BDBC3D4();
    if (v1 <= 0x3F)
    {
      sub_21BBDAE70();
      if (v2 <= 0x3F)
      {
        sub_21BB3A2A4(319, &qword_27CDB6918, 0x277CED1D0);
        if (v3 <= 0x3F)
        {
          sub_21BD39D4C();
          if (v4 <= 0x3F)
          {
            sub_21BBDAF50();
            if (v5 <= 0x3F)
            {
              sub_21BDBC47C();
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

void sub_21BDBC3D4()
{
  if (!qword_27CDBCE08)
  {
    sub_21BB3A2A4(255, &qword_27CDB6928, off_2782F0B80);
    sub_21BB3CC48(&qword_27CDB6930, &qword_27CDB6928, off_2782F0B80);
    v0 = sub_21BE270DC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDBCE08);
    }
  }
}

void sub_21BDBC47C()
{
  if (!qword_27CDBCE10)
  {
    type metadata accessor for ChecklistStoreCache();
    sub_21BDBC510(&qword_27CDB8CB8, type metadata accessor for ChecklistStoreCache);
    v0 = sub_21BE26EBC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDBCE10);
    }
  }
}

uint64_t sub_21BDBC510(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21BDBC5D0(uint64_t a1)
{
  v2 = sub_21BE26E7C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1);
  return MEMORY[0x21CF024B0](v5);
}

uint64_t sub_21BDBC698@<X0>(uint64_t a1@<X8>)
{
  result = sub_21BE274FC();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_21BDBC6CC(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_21BE2750C();
}

uint64_t sub_21BDBC6FC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21BE2737C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_21BDBC754(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5DF0, &unk_21BE33810);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21BDBC7C4()
{
  result = qword_27CDBCE58;
  if (!qword_27CDBCE58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBCE50, &qword_21BE4CC10);
    sub_21BDBC848();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBCE58);
  }

  return result;
}

unint64_t sub_21BDBC848()
{
  result = qword_27CDBCE60;
  if (!qword_27CDBCE60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBCE68, &qword_21BE4CC18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBCE70, &qword_21BE4CC20);
    sub_21BE2721C();
    sub_21BB3B038(&qword_27CDBCE78, &qword_27CDBCE70, &qword_21BE4CC20);
    sub_21BDBC510(&qword_27CDBC430, MEMORY[0x277CDDB18]);
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBCE80, &qword_21BE4CC28);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBCE88, &qword_21BE4CC30);
    sub_21BB3B038(&qword_27CDBCE90, &qword_27CDBCE88, &qword_21BE4CC30);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBCE60);
  }

  return result;
}

uint64_t sub_21BDBCAB4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_21BBB7EB8;

  return sub_21BDBACFC(v2, v3, v0 + 32);
}

unint64_t sub_21BDBCB70()
{
  result = qword_27CDBCEB8;
  if (!qword_27CDBCEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBCEB8);
  }

  return result;
}

uint64_t sub_21BDBCBC4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21BBA6A64;

  return sub_21BDB9D7C(a1, v1 + 16);
}

uint64_t objectdestroy_63Tm()
{
  MEMORY[0x21CF05D90](v0 + 72);
  v1 = *(v0 + 88);

  v2 = *(v0 + 104);

  v3 = *(v0 + 120);

  v4 = *(v0 + 136);

  v5 = *(v0 + 152);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_36()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  MEMORY[0x21CF05D90](v0 + 88);
  v2 = *(v0 + 104);

  v3 = *(v0 + 120);

  v4 = *(v0 + 136);

  v5 = *(v0 + 152);

  v6 = *(v0 + 168);

  return swift_deallocObject();
}

uint64_t sub_21BDBCD70(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21BBA6A64;

  return sub_21BDB8AE0(a1, v4, v5, v1 + 32);
}

uint64_t sub_21BDBCE20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FamilyChecklistCell(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BDBCE84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FamilyChecklistCell(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21BDBCF00()
{
  result = qword_27CDBCED0;
  if (!qword_27CDBCED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBCEC8, &qword_21BE4CD30);
    sub_21BDBCF8C();
    sub_21BBDD1FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBCED0);
  }

  return result;
}

unint64_t sub_21BDBCF8C()
{
  result = qword_27CDBCED8;
  if (!qword_27CDBCED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBCEE0, &qword_21BE4CD38);
    sub_21BDBD044();
    sub_21BB3B038(&qword_27CDB6188, &qword_27CDB6190, &qword_21BE33F40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBCED8);
  }

  return result;
}

unint64_t sub_21BDBD044()
{
  result = qword_27CDBCEE8;
  if (!qword_27CDBCEE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBCEF0, &qword_21BE4CD40);
    sub_21BDBD0D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBCEE8);
  }

  return result;
}

unint64_t sub_21BDBD0D0()
{
  result = qword_27CDBCEF8;
  if (!qword_27CDBCEF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBCF00, &qword_21BE4CD48);
    sub_21BB3B038(&qword_27CDBCF08, &qword_27CDBCF10, &unk_21BE4CD50);
    sub_21BBDD1A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBCEF8);
  }

  return result;
}

uint64_t objectdestroy_93Tm()
{
  v1 = type metadata accessor for FamilyChecklistCell(0);
  v2 = *(*(v1 - 8) + 64);
  v3 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v4 = *(v3 + 48);

  v5 = *(v3 + 56);

  v6 = *(v1 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6138, &qword_21BE33F20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_21BE27B0C();
    (*(*(v7 - 8) + 8))(v3 + v6, v7);
  }

  else
  {
    v8 = *(v3 + v6);
  }

  v9 = (v3 + *(v1 + 40));
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v9 + 16);
  sub_21BC0C59C();

  return swift_deallocObject();
}

uint64_t sub_21BDBD30C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for FamilyChecklistCell(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t block_copy_helper_100(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_21BDBD3BC()
{
  result = qword_27CDBCF50;
  if (!qword_27CDBCF50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBCE20, &unk_21BE4CB28);
    sub_21BB3B038(&qword_27CDBCF58, &qword_27CDBCF60, &qword_21BE4CDF8);
    sub_21BB3B038(&qword_27CDB6188, &qword_27CDB6190, &qword_21BE33F40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBCF50);
  }

  return result;
}

unint64_t sub_21BDBD4A0()
{
  result = qword_27CDBCF68;
  if (!qword_27CDBCF68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBCE98, &qword_21BE4CC48);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB50C0, &qword_21BE31098);
    sub_21BDBD594();
    swift_getOpaqueTypeConformance2();
    sub_21BB3B038(&qword_27CDBCF78, &qword_27CDBCF80, &qword_21BE4CE00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBCF68);
  }

  return result;
}

unint64_t sub_21BDBD594()
{
  result = qword_27CDBCF70;
  if (!qword_27CDBCF70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB50C0, &qword_21BE31098);
    sub_21BDBC7C4();
    sub_21BDBC510(&qword_27CDB6790, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBCF70);
  }

  return result;
}

unint64_t sub_21BDBD6C0()
{
  result = qword_27CDBCFA0;
  if (!qword_27CDBCFA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBCF90, &qword_21BE4CE68);
    sub_21BDBD74C();
    sub_21BDBD7A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBCFA0);
  }

  return result;
}

unint64_t sub_21BDBD74C()
{
  result = qword_27CDBCFA8;
  if (!qword_27CDBCFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBCFA8);
  }

  return result;
}

unint64_t sub_21BDBD7A0()
{
  result = qword_27CDBCFB0;
  if (!qword_27CDBCFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBCFB0);
  }

  return result;
}

unint64_t sub_21BDBD7F4()
{
  result = qword_27CDBCFB8;
  if (!qword_27CDBCFB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBCF98, &qword_21BE4CE70);
    sub_21BDBD880();
    sub_21BDBD7A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBCFB8);
  }

  return result;
}

unint64_t sub_21BDBD880()
{
  result = qword_27CDBCFC0;
  if (!qword_27CDBCFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBCFC0);
  }

  return result;
}

uint64_t sub_21BDBD8D4(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_21BDBD958()
{
  result = qword_27CDBCFF8;
  if (!qword_27CDBCFF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBCFF0, &qword_21BE4D038);
    sub_21BDBD9E4();
    sub_21BBDD1A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBCFF8);
  }

  return result;
}

unint64_t sub_21BDBD9E4()
{
  result = qword_27CDBD000;
  if (!qword_27CDBD000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBD008, &qword_21BE4D040);
    sub_21BDBDA9C();
    sub_21BB3B038(&qword_27CDBB1D0, &qword_27CDBB1D8, &qword_21BE46178);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBD000);
  }

  return result;
}

unint64_t sub_21BDBDA9C()
{
  result = qword_27CDBD010;
  if (!qword_27CDBD010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBD018, &qword_21BE4D048);
    sub_21BDBDB28();
    sub_21BD09C8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBD010);
  }

  return result;
}

unint64_t sub_21BDBDB28()
{
  result = qword_27CDBD020;
  if (!qword_27CDBD020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBD028, &unk_21BE4D050);
    sub_21BC75D1C();
    sub_21BB3B038(&qword_27CDB6188, &qword_27CDB6190, &qword_21BE33F40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBD020);
  }

  return result;
}

unint64_t sub_21BDBDBE0()
{
  result = qword_27CDBD038;
  if (!qword_27CDBD038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBD030, &qword_21BE4D060);
    sub_21BDBDC6C();
    sub_21BBDD1A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBD038);
  }

  return result;
}

unint64_t sub_21BDBDC6C()
{
  result = qword_27CDBD040;
  if (!qword_27CDBD040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBD048, &qword_21BE4D068);
    sub_21BDBDD24();
    sub_21BB3B038(&qword_27CDBB1D0, &qword_27CDBB1D8, &qword_21BE46178);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBD040);
  }

  return result;
}

unint64_t sub_21BDBDD24()
{
  result = qword_27CDBD050;
  if (!qword_27CDBD050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBD058, &qword_21BE4D070);
    sub_21BDBDB28();
    sub_21BD09BAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBD050);
  }

  return result;
}

uint64_t sub_21BDBDDB0(uint64_t a1, unsigned int a2)
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
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_21BDBDDF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
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

uint64_t get_witness_table_qd0__7SwiftUI4ViewHD3_AaBPAAE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOyAA15ModifiedContentVyAIyAIyAIy012FamilyCircleB00I10MemberCellVAA01_H13ShapeModifierVyAA9RectangleVGGAJ013CreateContactN0VGAA013_TraitWritingN0VyAA017ListRowBackgroundR3KeyVGGAJ24NavigationLinkAppearanceVG_AJ19FAFamilyImageLoaderCQo_HOTm(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
  type metadata accessor for FAFamilyImageLoader();
  a4();
  sub_21BDBC510(&qword_27CDB69A8, type metadata accessor for FAFamilyImageLoader);
  return swift_getOpaqueTypeConformance2();
}

FamilyCircleUI::FamilyRowStatus __swiftcall FAFamilyCircle.rowStatusForFamily()()
{
  v2 = v0;
  v3 = sub_21BE2626C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21BE25FCC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 104))(v12, *MEMORY[0x277D07F18], v8);
  v13 = MEMORY[0x21CF01150](v12);
  (*(v9 + 8))(v12, v8);
  if (v13)
  {
    sub_21BE2909C();
    if (sub_21BE261FC())
    {
      result = (*(v4 + 8))(v7, v3);
      v15 = 0;
      goto LABEL_14;
    }

    v18 = [v1 me];
    if (v18)
    {
    }

    else if (sub_21BE2622C())
    {
      v19 = sub_21BE2624C();
      result = (*(v4 + 8))(v7, v3);
      v20 = v19 == 1;
      v15 = 3;
      goto LABEL_12;
    }

    v21 = sub_21BE2621C();
    result = (*(v4 + 8))(v7, v3);
    v20 = (v21 & 1) == 0;
    v15 = 1;
LABEL_12:
    if (!v20)
    {
      ++v15;
    }

    goto LABEL_14;
  }

  v16 = sub_21BE2905C();
  if (v16 >> 62)
  {
    v17 = sub_21BE2951C();
  }

  else
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = v17 != 0;
LABEL_14:
  *v2 = v15;
  return result;
}

uint64_t sub_21BDBE1E0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21BDC158C(&qword_27CDB6858, type metadata accessor for SharedCalendarItemModel);
  sub_21BE25F1C();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_21BDBE2B0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21BDC158C(&qword_27CDB6858, type metadata accessor for SharedCalendarItemModel);
  sub_21BE25F1C();

  *a2 = *(v3 + 17);
  return result;
}

uint64_t sub_21BDBE380@<X0>(uint64_t a1@<X8>)
{
  v71 = a1;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8170, &unk_21BE3AE70);
  v1 = *(*(v69 - 8) + 64);
  MEMORY[0x28223BE20](v69);
  v70 = &v60 - v2;
  v65 = sub_21BE2723C();
  v3 = *(*(v65 - 8) + 64);
  MEMORY[0x28223BE20](v65);
  v67 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8100, &unk_21BE4D1C0);
  v5 = *(*(v68 - 8) + 64);
  MEMORY[0x28223BE20](v68);
  v7 = &v60 - v6;
  v8 = sub_21BE2838C();
  v63 = *(v8 - 8);
  v64 = v8;
  v9 = *(v63 + 64);
  MEMORY[0x28223BE20](v8);
  v62 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21BE25E6C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_21BE25D1C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE25D0C();
  sub_21BE25E4C();
  v21 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
  v22 = sub_21BE25CAC();
  v23 = sub_21BE25E1C();
  v24 = [v21 initWithDate:v22 calendar:v23 format:0];

  (*(v12 + 8))(v15, v11);
  (*(v17 + 8))(v20, v16);
  v25 = [objc_opt_self() imageDescriptorNamed_];
  v26 = [v24 prepareImageForDescriptor_];

  if (v26)
  {
    v66 = v24;
    v27 = [v26 CGImage];
    if (v27)
    {
      v28 = v27;
      [v26 iconSize];
      [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage_];

      sub_21BE2836C();
      v30 = v62;
      v29 = v63;
      v31 = v64;
      (*(v63 + 104))(v62, *MEMORY[0x277CE0FE0], v64);
      v32 = sub_21BE283CC();

      (*(v29 + 8))(v30, v31);
      sub_21BE2869C();
      sub_21BE26F2C();
      v33 = v72;
      LODWORD(v64) = v73;
      v34 = v74;
      LODWORD(v63) = v75;
      v62 = v76;
      v61 = v77;
      v35 = *(v65 + 20);
      v36 = *MEMORY[0x277CE0118];
      v37 = sub_21BE276AC();
      v38 = v67;
      (*(*(v37 - 8) + 104))(&v67[v35], v36, v37);
      __asm { FMOV            V0.2D, #9.0 }

      *v38 = _Q0;
      sub_21BE282AC();
      v44 = sub_21BE2831C();

      *&v78 = v44;
      sub_21BDC258C();
      v45 = sub_21BE2835C();
      sub_21BE26ECC();
      v46 = &v7[*(v68 + 36)];
      sub_21BC691F8(v38, v46);
      v47 = v46 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8178, &unk_21BE4D270) + 36);
      v48 = v79;
      *v47 = v78;
      *(v47 + 16) = v48;
      *(v47 + 32) = v80;
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8180, &qword_21BE3AE80);
      *(v46 + *(v49 + 52)) = v45;
      *(v46 + *(v49 + 56)) = 256;
      v50 = sub_21BE2869C();
      v52 = v51;
      sub_21BC6925C(v38);
      v53 = (v46 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8188, &unk_21BE4D280) + 36));
      *v53 = v50;
      v53[1] = v52;
      v54 = sub_21BE2869C();
      v56 = v55;
      v57 = (v46 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8120, &qword_21BE4D1D0) + 36));
      *v57 = v54;
      v57[1] = v56;
      *v7 = v32;
      *(v7 + 1) = v33;
      v7[16] = v64;
      *(v7 + 3) = v34;
      v7[32] = v63;
      v58 = v61;
      *(v7 + 5) = v62;
      *(v7 + 6) = v58;
      sub_21BBA3854(v7, v70, &qword_27CDB8100, &unk_21BE4D1C0);
      swift_storeEnumTagMultiPayload();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8110, &unk_21BE3AE10);
      sub_21BC65DF0();
      sub_21BC65EA8();
      sub_21BE2784C();

      return sub_21BB3A4CC(v7, &qword_27CDB8100, &unk_21BE4D1C0);
    }

    __break(1u);
  }

  result = sub_21BE2978C();
  __break(1u);
  return result;
}

uint64_t sub_21BDBEAEC()
{
  v55 = sub_21BE26A4C();
  v1 = *(v55 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v55);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = *(v0 + 8);
  v67[0] = *v0;
  v7 = v67[0] >> 62;
  v59 = v67[0];
  v60 = &v46 - v8;
  if (v67[0] >> 62)
  {
    goto LABEL_42;
  }

  if (*((v67[0] & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
  {
    return 0;
  }

  while (1)
  {
    v66 = v6;
    v9 = v6 >> 62;
    if (v6 >> 62)
    {
      v45 = v6;
      result = sub_21BE2951C();
      v6 = v45;
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        return result;
      }
    }

    v62 = MEMORY[0x277D84FA0];
    v51 = v6;
    v11 = v7 ? sub_21BE2951C() : *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v12 = *(v0 + 24);
    v65 = *(v0 + 32);
    v13 = *(v0 + 40);
    v63 = *(v0 + 48);
    v64 = v12;
    sub_21BBA3854(v67, v61, &qword_27CDBD078, &unk_21BE4D1A8);
    sub_21BBA3854(&v66, v61, &qword_27CDB5CC8, &qword_21BE36190);
    sub_21BBA3854(&v64, v61, &qword_27CDB5C50, &qword_21BE33490);
    v52 = v13;

    sub_21BBA3854(&v63, v61, &qword_27CDBD080, &qword_21BE4D1B8);
    if (!v11)
    {
      break;
    }

    v7 = v11;
    v47 = v9;
    v48 = v5;
    v15 = 0;
    v58 = v59 & 0xC000000000000001;
    v56 = 0;
    v57 = v59 & 0xFFFFFFFFFFFFFF8;
    v49 = v1;
    v53 = (v1 + 8);
    *&v14 = 136315138;
    v50 = v14;
    v54 = v11;
    v5 = &qword_21BE4D1B8;
    while (1)
    {
      if (v58)
      {
        v16 = MEMORY[0x21CF047C0](v15, v59);
      }

      else
      {
        if (v15 >= *(v57 + 16))
        {
          goto LABEL_41;
        }

        v16 = *(v59 + 8 * v15 + 32);
      }

      v17 = v16;
      v1 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      v18 = [v16 sharees];
      if (v18 && (v19 = v18, v20 = sub_21BE28E4C(), v19, sub_21BDBF34C(v20), v0 = v21, , v0))
      {
        sub_21BBA3854(v67, v61, &qword_27CDBD078, &unk_21BE4D1A8);
        sub_21BBA3854(&v66, v61, &qword_27CDB5CC8, &qword_21BE36190);
        sub_21BBA3854(&v64, v61, &qword_27CDB5C50, &qword_21BE33490);

        sub_21BBA3854(&v63, v61, &qword_27CDBD080, &qword_21BE4D1B8);
        v22 = v56;
        sub_21BDC177C(v0, v51, &v62);
        v56 = v22;
        v7 = v54;
        sub_21BB3A4CC(v67, &qword_27CDBD078, &unk_21BE4D1A8);
        sub_21BB3A4CC(&v66, &qword_27CDB5CC8, &qword_21BE36190);
        sub_21BB3A4CC(&v64, &qword_27CDB5C50, &qword_21BE33490);

        sub_21BB3A4CC(&v63, &qword_27CDBD080, &qword_21BE4D1B8);
      }

      else
      {
        sub_21BE261BC();
        v0 = sub_21BE26A2C();
        v23 = sub_21BE28FDC();
        if (os_log_type_enabled(v0, v23))
        {
          v24 = swift_slowAlloc();
          v25 = swift_slowAlloc();
          v61[0] = v25;
          *v24 = v50;
          *(v24 + 4) = sub_21BB3D81C(0x64616548627573, 0xE700000000000000, v61);
          _os_log_impl(&dword_21BB35000, v0, v23, "%s unable to get calendar sharees", v24, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v25);
          v26 = v55;
          MEMORY[0x21CF05C50](v25, -1, -1);
          v27 = v60;
          v7 = v54;
          MEMORY[0x21CF05C50](v24, -1, -1);

          (*v53)(v27, v26);
        }

        else
        {

          (*v53)(v60, v55);
        }
      }

      ++v15;
      if (v1 == v7)
      {
        v28 = v62;
        v1 = v49;
        v5 = v48;
        v9 = v47;
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    v43 = v6;
    v44 = sub_21BE2951C();
    v6 = v43;
    if (v44 < 1)
    {
      return 0;
    }
  }

  v28 = MEMORY[0x277D84FA0];
LABEL_25:
  sub_21BB3A4CC(v67, &qword_27CDBD078, &unk_21BE4D1A8);
  sub_21BB3A4CC(&v66, &qword_27CDB5CC8, &qword_21BE36190);
  sub_21BB3A4CC(&v64, &qword_27CDB5C50, &qword_21BE33490);

  sub_21BB3A4CC(&v63, &qword_27CDBD080, &qword_21BE4D1B8);
  if ((v28 & 0xC000000000000001) == 0)
  {
    if (*(v28 + 16))
    {
      goto LABEL_27;
    }

    goto LABEL_30;
  }

  if (!sub_21BE2951C())
  {
LABEL_30:
    sub_21BE261BC();
    v32 = sub_21BE26A2C();
    v33 = sub_21BE28FDC();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v61[0] = v35;
      *v34 = 136315138;
      *(v34 + 4) = sub_21BB3D81C(0x64616548627573, 0xE700000000000000, v61);
      _os_log_impl(&dword_21BB35000, v32, v33, "%s no calendar sharee is part of family", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v35);
      MEMORY[0x21CF05C50](v35, -1, -1);
      MEMORY[0x21CF05C50](v34, -1, -1);
    }

    (*(v1 + 8))(v5, v55);

    return 0;
  }

LABEL_27:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_21BE33260;
  v30 = v51;
  if ((v28 & 0xC000000000000001) != 0)
  {
    v31 = sub_21BE2951C();
  }

  else
  {
    v31 = *(v28 + 16);
  }

  v36 = MEMORY[0x277D83B88];
  v37 = MEMORY[0x277D83C10];
  *(v29 + 56) = MEMORY[0x277D83B88];
  *(v29 + 64) = v37;
  *(v29 + 32) = v31;
  if (v9)
  {
    v38 = sub_21BE2951C();
  }

  else
  {
    v38 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v29 + 96) = v36;
  *(v29 + 104) = v37;
  *(v29 + 72) = v38;
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v40 = objc_opt_self();

  v41 = [v40 bundleForClass_];
  sub_21BE2599C();

  v42 = sub_21BE289DC();

  return v42;
}

void sub_21BDBF34C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD0C8, &qword_21BE4D290);
    v2 = sub_21BE295CC();
  }

  else
  {
    v2 = MEMORY[0x277D84FA0];
  }

  v3 = sub_21BB3A2A4(0, &qword_27CDBD0B8, 0x277CC5AC0);
  v31[5] = v2;
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 56);
  v8 = v5 + 63;
  if (v3 == MEMORY[0x277D837D0])
  {
    v26 = v8 >> 6;

    v27 = 0;
    if (!v7)
    {
      goto LABEL_28;
    }

    do
    {
      v28 = v27;
LABEL_31:
      sub_21BBB71DC(*(a1 + 48) + 40 * (__clz(__rbit64(v7)) | (v28 << 6)), v31);
      v29 = sub_21BE2954C();
      sub_21BBB7238(v31);
      objc_opt_self();
      v30 = swift_dynamicCastObjCClass();
      if (!v30)
      {

        return;
      }

      v7 &= v7 - 1;
      sub_21BDC163C(v30);
      v27 = v28;
    }

    while (v7);
LABEL_28:
    while (1)
    {
      v28 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v28 >= v26)
      {
LABEL_34:

        return;
      }

      v7 = *(v4 + 8 * v28);
      ++v27;
      if (v7)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    v9 = v8 >> 6;
    v10 = v2 + 56;

    v11 = 0;
    while (v7)
    {
LABEL_16:
      sub_21BBB71DC(*(a1 + 48) + 40 * (__clz(__rbit64(v7)) | (v11 << 6)), v31);
      v14 = sub_21BE2954C();
      sub_21BBB7238(v31);
      objc_opt_self();
      v15 = swift_dynamicCastObjCClass();
      if (!v15)
      {

        return;
      }

      v16 = v15;
      v17 = *(v2 + 40);
      v18 = sub_21BE293FC();
      v19 = -1 << *(v2 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v12 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_10;
          }
        }

        goto LABEL_38;
      }

      v12 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      v7 &= v7 - 1;
      *(v10 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v2 + 48) + 8 * v12) = v16;
      ++*(v2 + 16);
    }

    while (1)
    {
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v13 >= v9)
      {
        goto LABEL_34;
      }

      v7 = *(v4 + 8 * v13);
      ++v11;
      if (v7)
      {
        v11 = v13;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_21BDBF670@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v134 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5BC0, &qword_21BE33380);
  v119 = *(v3 - 8);
  v4 = *(v119 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v117 = &v105 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v118 = &v105 - v7;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB80C0, &qword_21BE3ADD8);
  v121 = *(v132 - 8);
  v8 = *(v121 + 64);
  MEMORY[0x28223BE20](v132);
  v122 = (&v105 - v9);
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD060, &qword_21BE4D180);
  v120 = *(v133 - 8);
  v10 = *(v120 + 64);
  MEMORY[0x28223BE20](v133);
  v116 = &v105 - v11;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD068, &qword_21BE4D188);
  v12 = *(*(v129 - 8) + 64);
  MEMORY[0x28223BE20](v129);
  v131 = &v105 - v13;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB80E0, &qword_21BE4D190);
  v14 = *(*(v128 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v128);
  v126 = &v105 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v127 = &v105 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD070, &unk_21BE4D198);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v130 = &v105 - v20;
  v21 = sub_21BE2754C();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v105 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = *(v2 + 32);
  v26 = *(v2 + 24);
  v167 = v26;
  if (v168 == 1)
  {
    v148 = v26;
  }

  else
  {

    sub_21BE28FEC();
    v27 = sub_21BE27B2C();
    sub_21BE269DC();

    sub_21BE2753C();
    swift_getAtKeyPath();
    sub_21BB3A4CC(&v167, &qword_27CDB5C50, &qword_21BE33490);
    (*(v22 + 8))(v25, v21);
  }

  v28 = swift_allocBox();
  v30 = v29;
  type metadata accessor for ChecklistStateVars();
  sub_21BDC158C(&qword_27CDBDB60, type metadata accessor for ChecklistStateVars);
  sub_21BE2864C();
  v31 = *v2;
  v32 = *(v2 + 8);
  v125 = *(v2 + 16);
  v166 = v31;
  v124 = v31;
  if (v31 >> 62)
  {
    v33 = sub_21BE2951C();
  }

  else
  {
    v33 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v135 = v28;
  v165 = v32;
  v123 = v32;
  if (v33)
  {
    type metadata accessor for ConfirmChildAgeViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v35 = objc_opt_self();
    sub_21BBA3854(&v166, &v148, &qword_27CDBD078, &unk_21BE4D1A8);
    sub_21BBA3854(&v165, &v148, &qword_27CDB5CC8, &qword_21BE36190);
    v36 = [v35 bundleForClass_];
    v122 = sub_21BE2599C();
    v38 = v37;

    v39 = sub_21BDBEAEC();
    v41 = v40;
    v42 = [v35 bundleForClass_];
    v43 = sub_21BE2599C();
    v45 = v44;

    v46 = v127;
    sub_21BDBE380(v127);
    v47 = *(v2 + 40);
    v136[0] = *(v2 + 48);
    v48 = swift_allocObject();
    v49 = *(v2 + 16);
    *(v48 + 16) = *v2;
    *(v48 + 32) = v49;
    *(v48 + 48) = *(v2 + 32);
    *(v48 + 64) = *(v2 + 48);
    v161 = &type metadata for SharedFamilyCalendarItem;
    v162 = sub_21BBDAB68();
    v158 = v124;
    v159 = v123;
    v160 = v125;
    v148 = v122;
    v149 = v38;
    v150 = v39;
    v151 = v41;
    v152 = v43;
    v153 = v45;
    sub_21BBA3854(v46, v126, &qword_27CDB80E0, &qword_21BE4D190);
    sub_21BBA3854(&v167, &v140, &qword_27CDB5C50, &qword_21BE33490);
    sub_21BBA3854(&v166, &v140, &qword_27CDBD078, &unk_21BE4D1A8);
    sub_21BBA3854(&v165, &v140, &qword_27CDB5CC8, &qword_21BE36190);

    sub_21BBA3854(v136, &v140, &qword_27CDBD080, &qword_21BE4D1B8);
    sub_21BC65D64();
    v50 = sub_21BE2852C();
    sub_21BB3A4CC(v46, &qword_27CDB80E0, &qword_21BE4D190);
    v163 = v50;
    v156 = v48;
    v157 = 0;
    v154 = 0;
    v155 = sub_21BDC2820;
    sub_21BBC7A18(&v148, v131);
    swift_storeEnumTagMultiPayload();
    sub_21BBC24D4();
    v51 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBD088, &unk_21BE4D1D8);
    v52 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8130, &qword_21BE3ED60);
    v53 = sub_21BBC2528();
    v54 = sub_21BB41FA4();
    v55 = sub_21BB3B038(&qword_27CDB8138, &qword_27CDB8130, &qword_21BE3ED60);
    v140 = &type metadata for ChecklistNotSetupButtonCell;
    v141 = MEMORY[0x277D837D0];
    v142 = v52;
    v143 = MEMORY[0x277CE0BD8];
    v144 = v53;
    v145 = v54;
    v146 = v55;
    v147 = MEMORY[0x277CE0BC8];
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v57 = sub_21BDC1480();
    v140 = v132;
    v141 = v51;
    v142 = OpaqueTypeConformance2;
    v143 = v57;
    swift_getOpaqueTypeConformance2();
    v58 = v130;
    sub_21BE2784C();
    sub_21BBC7A74(&v148);
  }

  else
  {
    type metadata accessor for ConfirmChildAgeViewModel();
    v59 = swift_getObjCClassFromMetadata();
    v60 = objc_opt_self();
    sub_21BBA3854(&v166, &v148, &qword_27CDBD078, &unk_21BE4D1A8);
    sub_21BBA3854(&v165, &v148, &qword_27CDB5CC8, &qword_21BE36190);
    v61 = [v60 bundleForClass_];
    v62 = sub_21BE2599C();
    v110 = v63;
    v111 = v62;

    v64 = v60;
    v65 = v60;
    v106 = v60;
    v107 = v59;
    v66 = v59;
    v67 = [v64 bundleForClass_];
    v68 = sub_21BE2599C();
    v108 = v69;
    v109 = v68;

    v70 = v127;
    sub_21BDBE380(v127);
    v71 = *(v2 + 48);
    v115 = *(v2 + 40);
    v113 = v71;
    v164 = v71;
    v72 = swift_allocObject();
    v73 = *(v2 + 16);
    *(v72 + 16) = *v2;
    *(v72 + 32) = v73;
    *(v72 + 48) = *(v2 + 32);
    *(v72 + 64) = *(v2 + 48);
    sub_21BBA3854(&v167, &v148, &qword_27CDB5C50, &qword_21BE33490);
    sub_21BBA3854(&v166, &v148, &qword_27CDBD078, &unk_21BE4D1A8);
    sub_21BBA3854(&v165, &v148, &qword_27CDB5CC8, &qword_21BE36190);

    sub_21BBA3854(&v164, &v148, &qword_27CDBD080, &qword_21BE4D1B8);
    v74 = [v65 bundleForClass_];
    v75 = sub_21BE2599C();
    v114 = v30;
    v112 = v3;
    v77 = v76;

    v161 = &type metadata for SharedFamilyCalendarItem;
    v162 = sub_21BBDAB68();
    v158 = v124;
    v159 = v123;
    v160 = v125;
    v148 = v111;
    v149 = v110;
    v150 = v109;
    v151 = v108;
    sub_21BBA3854(v70, v126, &qword_27CDB80E0, &qword_21BE4D190);
    sub_21BC65D64();
    v78 = sub_21BE2852C();
    sub_21BB3A4CC(v70, &qword_27CDB80E0, &qword_21BE4D190);
    v163 = v78;
    v154 = v72;
    v155 = v75;
    v156 = v77;
    v157 = 0;
    v152 = 0;
    v153 = sub_21BDC1560;
    v79 = [v106 bundleForClass_];
    v80 = sub_21BE2599C();
    v82 = v81;
    v126 = v81;

    v138 = v80;
    v139 = v82;
    v136[0] = v115;
    v136[1] = v113;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD0A0, &qword_21BE4D1E8);
    sub_21BE2841C();
    v83 = v140;
    v84 = v141;
    v85 = v142;
    swift_getKeyPath();
    v140 = v83;
    v141 = v84;
    v142 = v85;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD0A8, &qword_21BE4D218);
    sub_21BE2855C();

    v125 = v137;

    v124 = &v105;
    MEMORY[0x28223BE20](v86);
    v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8130, &qword_21BE3ED60);
    v87 = sub_21BBC2528();
    v88 = sub_21BB41FA4();
    v128 = sub_21BB3B038(&qword_27CDB8138, &qword_27CDB8130, &qword_21BE3ED60);
    sub_21BE280EC();

    sub_21BBC79C4(&v148);
    v89 = v119;
    v90 = v117;
    v91 = v112;
    (*(v119 + 16))(v117, v114, v112);
    v92 = v118;
    sub_21BE2863C();
    v93 = *(v89 + 8);
    v93(v90, v91);
    swift_getKeyPath();
    sub_21BE2865C();

    v93(v92, v91);
    v94 = swift_allocObject();
    v95 = *(v2 + 16);
    *(v94 + 16) = *v2;
    *(v94 + 32) = v95;
    *(v94 + 48) = *(v2 + 32);
    *(v94 + 64) = *(v2 + 48);
    sub_21BBA3854(&v167, &v148, &qword_27CDB5C50, &qword_21BE33490);
    sub_21BBA3854(&v166, &v148, &qword_27CDBD078, &unk_21BE4D1A8);
    sub_21BBA3854(&v165, &v148, &qword_27CDB5CC8, &qword_21BE36190);

    sub_21BBA3854(&v164, &v148, &qword_27CDBD080, &qword_21BE4D1B8);
    v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD088, &unk_21BE4D1D8);
    v148 = &type metadata for ChecklistNotSetupButtonCell;
    v149 = MEMORY[0x277D837D0];
    v150 = v127;
    v151 = MEMORY[0x277CE0BD8];
    v152 = v87;
    v153 = v88;
    v154 = v128;
    v155 = MEMORY[0x277CE0BC8];
    v103 = swift_getOpaqueTypeConformance2();
    v104 = sub_21BDC1480();
    v97 = v116;
    v98 = v132;
    v99 = v122;
    sub_21BE2812C();

    (*(v121 + 8))(v99, v98);
    v100 = v120;
    v101 = v133;
    (*(v120 + 16))(v131, v97, v133);
    swift_storeEnumTagMultiPayload();
    sub_21BBC24D4();
    v148 = v98;
    v149 = v96;
    v150 = v103;
    v151 = v104;
    swift_getOpaqueTypeConformance2();
    v58 = v130;
    sub_21BE2784C();
    (*(v100 + 8))(v97, v101);
  }

  sub_21BB58168(v58, v134);
}

uint64_t sub_21BDC07D4@<X0>(void (*a1)(char *, uint64_t)@<X0>, uint64_t *a2@<X1>, char *a3@<X8>)
{
  v59 = a1;
  v66 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8158, &unk_21BE3AE50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v61 = &v56 - v6;
  v60 = sub_21BE271FC();
  v7 = *(v60 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v60);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB55A0, &unk_21BE32460);
  v58 = *(v67 - 8);
  v11 = *(v58 + 64);
  v12 = MEMORY[0x28223BE20](v67);
  v65 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v56 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8160, &unk_21BE3AE60);
  v63 = *(v16 - 8);
  v64 = v16;
  v17 = *(v63 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v62 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v56 - v20;
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v23 = objc_opt_self();
  v24 = [v23 bundleForClass_];
  v25 = sub_21BE2599C();
  v27 = v26;

  v69 = v25;
  v70 = v27;
  sub_21BB41FA4();

  sub_21BE2845C();
  sub_21BE271EC();
  sub_21BB3B038(&qword_27CDB5598, &unk_27CDB55A0, &unk_21BE32460);
  v28 = v21;
  v57 = v21;
  v29 = v67;
  sub_21BE27FBC();
  (*(v7 + 8))(v10, v60);
  v30 = v58;
  v59 = *(v58 + 8);
  v60 = v58 + 8;
  v59(v15, v29);
  v31 = [v23 bundleForClass_];
  v32 = sub_21BE2599C();
  v34 = v33;

  v69 = v32;
  v70 = v34;
  v35 = v61;
  sub_21BE26DEC();
  v36 = sub_21BE26DFC();
  (*(*(v36 - 8) + 56))(v35, 0, 1, v36);
  v37 = *a2;
  v74 = a2[1];
  v75 = v37;
  v38 = a2[3];
  v73 = *(a2 + 32);
  v39 = a2[5];
  v71 = a2[6];
  v72 = v38;
  v40 = swift_allocObject();
  v41 = *(a2 + 1);
  *(v40 + 16) = *a2;
  *(v40 + 32) = v41;
  *(v40 + 48) = *(a2 + 2);
  *(v40 + 64) = a2[6];
  sub_21BBA3854(&v75, v68, &qword_27CDBD078, &unk_21BE4D1A8);
  sub_21BBA3854(&v74, v68, &qword_27CDB5CC8, &qword_21BE36190);
  sub_21BBA3854(&v72, v68, &qword_27CDB5C50, &qword_21BE33490);

  sub_21BBA3854(&v71, v68, &qword_27CDBD080, &qword_21BE4D1B8);
  v56 = v15;
  sub_21BE2844C();
  v42 = v62;
  v43 = v63;
  v44 = *(v63 + 16);
  v45 = v28;
  v46 = v64;
  v44(v62, v45, v64);
  v47 = *(v30 + 16);
  v48 = v65;
  v49 = v15;
  v50 = v67;
  v47(v65, v49, v67);
  v51 = v66;
  v44(v66, v42, v46);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8168, &qword_21BE48080);
  v47(&v51[*(v52 + 48)], v48, v50);
  v53 = v59;
  v59(v56, v50);
  v54 = *(v43 + 8);
  v54(v57, v46);
  v53(v48, v50);
  return (v54)(v42, v46);
}

uint64_t sub_21BDC0E44()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5BC0, &qword_21BE33380);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v9 - v3;
  v5 = swift_projectBox();
  (*(v1 + 16))(v4, v5, v0);
  sub_21BE2862C();
  (*(v1 + 8))(v4, v0);
  v6 = v9[3];
  swift_beginAccess();
  if (*(v6 + 16) == 1)
  {
    *(v6 + 16) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v9[-2] = v6;
    LOBYTE(v9[-1]) = 1;
    v9[2] = v6;
    sub_21BDC158C(&qword_27CDBDB60, type metadata accessor for ChecklistStateVars);
    sub_21BE25F0C();
  }
}

uint64_t sub_21BDC104C(uint64_t a1)
{
  v4 = *(a1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD0A0, &qword_21BE4D1E8);
  sub_21BE283FC();
  if (*(v3 + 17))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21BDC158C(&qword_27CDB6858, type metadata accessor for SharedCalendarItemModel);
    sub_21BE25F0C();
  }

  else
  {
    *(v3 + 17) = 0;
  }
}

uint64_t sub_21BDC1190@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_21BE2599C();

  sub_21BB41FA4();
  result = sub_21BE27DBC();
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v7;
  return result;
}

uint64_t sub_21BDC1270@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = *(a1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD0A0, &qword_21BE4D1E8);
  sub_21BE283FC();
  type metadata accessor for ChecklistStateVars();
  sub_21BDC158C(&qword_27CDBDB60, type metadata accessor for ChecklistStateVars);
  result = sub_21BE26E9C();
  v4 = result;
  v6 = v5;
  if (*(v8 + 16) == 1)
  {
    *(v8 + 16) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21BDC158C(&qword_27CDB6858, type metadata accessor for SharedCalendarItemModel);

    sub_21BE25F0C();
  }

  *a2 = v4;
  *(a2 + 8) = v6 & 1;
  *(a2 + 16) = v8;
  return result;
}

uint64_t sub_21BDC143C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = *(v1 + 6);
  return sub_21BDBF670(a1);
}

unint64_t sub_21BDC1480()
{
  result = qword_27CDBD090;
  if (!qword_27CDBD090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBD088, &unk_21BE4D1D8);
    sub_21BDC150C();
    sub_21BC66030();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBD090);
  }

  return result;
}

unint64_t sub_21BDC150C()
{
  result = qword_27CDBD098;
  if (!qword_27CDBD098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBD098);
  }

  return result;
}

uint64_t sub_21BDC1564()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  return sub_21BDC23CC(*(v0 + 16), *(v0 + 40), *(v0 + 48) & 1);
}

uint64_t sub_21BDC158C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroyTm_37()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  v4 = v0[7];

  v5 = v0[8];

  return swift_deallocObject();
}

void sub_21BDC163C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  v5 = sub_21BE293FC();
  v6 = v3 + 56;
  v7 = -1 << *(v3 + 32);
  v8 = v5 & ~v7;
  v9 = v8 >> 6;
  v10 = *(v3 + 56 + 8 * (v8 >> 6));
  v11 = 1 << v8;
  if (((1 << v8) & v10) != 0)
  {
    v12 = ~v7;
    sub_21BB3A2A4(0, &qword_27CDBD0B8, 0x277CC5AC0);
    while (1)
    {
      v13 = *(*(v3 + 48) + 8 * v8);
      v14 = sub_21BE2940C();

      if (v14)
      {
        break;
      }

      v8 = (v8 + 1) & v12;
      v9 = v8 >> 6;
      v10 = *(v6 + 8 * (v8 >> 6));
      v11 = 1 << v8;
      if (((1 << v8) & v10) == 0)
      {
        goto LABEL_5;
      }
    }

    v16 = *(v3 + 48);
    v17 = *(v16 + 8 * v8);
    *(v16 + 8 * v8) = a1;
  }

  else
  {
LABEL_5:
    v15 = *(v3 + 16);
    if (v15 >= *(v3 + 24))
    {
      __break(1u);
    }

    else
    {
      *(v6 + 8 * v9) = v11 | v10;
      *(*(v3 + 48) + 8 * v8) = a1;
      *(v3 + 16) = v15 + 1;
    }
  }
}

void sub_21BDC177C(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_21BE2950C();
    sub_21BB3A2A4(0, &qword_27CDBD0B8, 0x277CC5AC0);
    sub_21BDC25E0();
    v4 = a2;
    sub_21BE28E7C();
    v5 = v87;
    v79 = v86;
    v6 = v88;
    v7 = v89;
    v8 = v90;
  }

  else
  {
    v4 = a2;
    v9 = -1 << *(a1 + 32);
    v5 = a1 + 56;
    v10 = ~v9;
    v11 = -v9;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v8 = v12 & *(a1 + 56);
    v79 = a1;

    v6 = v10;
    v7 = 0;
  }

  v13 = (v6 + 64) >> 6;
  v73 = v13;
  v74 = v4 & 0xFFFFFFFFFFFFFF8;
  v82 = v4 + 32;
  v83 = v4 & 0xC000000000000001;
  v75 = v4 >> 62;
  v76 = v5;
  v80 = a3;
  while (1)
  {
    if (v79 < 0)
    {
      if (!sub_21BE2953C() || (sub_21BB3A2A4(0, &qword_27CDBD0B8, 0x277CC5AC0), swift_dynamicCast(), v17 = v91, v77 = v8, v78 = v7, !v91))
      {
LABEL_84:
        sub_21BC50480();
        return;
      }
    }

    else
    {
      v14 = v7;
      v15 = v8;
      v16 = v7;
      if (!v8)
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
            goto LABEL_84;
          }

          v15 = *(v5 + 8 * v16);
          ++v14;
          if (v15)
          {
            goto LABEL_14;
          }
        }

LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
        goto LABEL_87;
      }

LABEL_14:
      v77 = (v15 - 1) & v15;
      v78 = v16;
      v17 = *(*(v79 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
      if (!v17)
      {
        goto LABEL_84;
      }
    }

    if (v75)
    {
      break;
    }

    v18 = *(v74 + 16);
    if (v18)
    {
      goto LABEL_20;
    }

LABEL_8:

    v8 = v77;
    v7 = v78;
    v5 = v76;
    v13 = v73;
  }

  v18 = sub_21BE2951C();
  if (!v18)
  {
    goto LABEL_8;
  }

LABEL_20:
  if (v18 >= 1)
  {
    v19 = 0;
    v84 = v18;
    v85 = v17;
    while (1)
    {
      if (v83)
      {
        v23 = MEMORY[0x21CF047C0](v19, v4);
      }

      else
      {
        v23 = *(v82 + 8 * v19);
      }

      v24 = v23;
      v25 = [v23 appleID];
      if (v25)
      {
        v26 = v25;
        v27 = sub_21BE28A0C();
        v29 = v28;
      }

      else
      {
        v27 = 0;
        v29 = 0;
      }

      v30 = [v17 emailAddress];
      if (v30)
      {
        v31 = v30;
        v32 = sub_21BE28A0C();
        v34 = v33;

        if (v29)
        {
          if (v34)
          {
            if (v27 == v32 && v29 == v34)
            {
              goto LABEL_49;
            }

            v35 = sub_21BE2995C();

            if (v35)
            {
              goto LABEL_55;
            }

            goto LABEL_41;
          }
        }

        else if (!v34)
        {
          goto LABEL_55;
        }
      }

      else if (!v29)
      {
        goto LABEL_55;
      }

LABEL_41:
      v36 = [v24 memberPhoneNumbers];
      if (v36)
      {
        v37 = v36;
        v38 = sub_21BE28A0C();
        v40 = v39;
      }

      else
      {
        v38 = 0;
        v40 = 0;
      }

      v41 = [v85 phoneNumber];
      if (v41)
      {
        v42 = v41;
        v43 = sub_21BE28A0C();
        v45 = v44;

        if (v40)
        {
          if (!v45)
          {
            goto LABEL_53;
          }

          if (v38 != v43 || v40 != v45)
          {
            v46 = sub_21BE2995C();

            if ((v46 & 1) == 0)
            {

              goto LABEL_23;
            }

            goto LABEL_55;
          }

LABEL_49:

          goto LABEL_55;
        }

        if (v45)
        {
LABEL_53:

          goto LABEL_23;
        }
      }

      else if (v40)
      {
        goto LABEL_53;
      }

LABEL_55:
      v47 = *a3;
      if ((*a3 & 0xC000000000000001) != 0)
      {
        if (v47 < 0)
        {
          v48 = *a3;
        }

        else
        {
          v48 = v47 & 0xFFFFFFFFFFFFFF8;
        }

        v49 = v24;

        v50 = sub_21BE2952C();

        if (v50)
        {

          sub_21BB3A2A4(0, &qword_280BD8A40, 0x277D08268);
          swift_dynamicCast();
        }

        else
        {
          v58 = sub_21BE2951C();
          if (__OFADD__(v58, 1))
          {
            goto LABEL_86;
          }

          v59 = sub_21BC6613C(v48, v58 + 1);
          v91 = v59;
          v60 = *(v59 + 16);
          if (*(v59 + 24) <= v60)
          {
            sub_21BC667FC(v60 + 1);
          }

          v61 = *(v59 + 40);
          v62 = v49;
          v63 = sub_21BE293FC();
          v64 = v59 + 56;
          v65 = -1 << *(v59 + 32);
          v66 = v63 & ~v65;
          v67 = v66 >> 6;
          if (((-1 << v66) & ~*(v59 + 56 + 8 * (v66 >> 6))) != 0)
          {
            v68 = __clz(__rbit64((-1 << v66) & ~*(v59 + 56 + 8 * (v66 >> 6)))) | v66 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v69 = 0;
            v70 = (63 - v65) >> 6;
            do
            {
              if (++v67 == v70 && (v69 & 1) != 0)
              {
                __break(1u);
                goto LABEL_85;
              }

              v71 = v67 == v70;
              if (v67 == v70)
              {
                v67 = 0;
              }

              v69 |= v71;
              v72 = *(v64 + 8 * v67);
            }

            while (v72 == -1);
            v68 = __clz(__rbit64(~v72)) + (v67 << 6);
          }

          *(v64 + ((v68 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v68;
          *(*(v59 + 48) + 8 * v68) = v62;
          ++*(v59 + 16);

          *a3 = v59;
        }
      }

      else
      {
        sub_21BB3A2A4(0, &qword_280BD8A40, 0x277D08268);
        v51 = *(v47 + 40);
        v52 = sub_21BE293FC();
        v53 = -1 << *(v47 + 32);
        v54 = v52 & ~v53;
        if ((*(v47 + 56 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v54))
        {
          v55 = ~v53;
          while (1)
          {
            v56 = *(*(v47 + 48) + 8 * v54);
            v57 = sub_21BE2940C();

            if (v57)
            {
              break;
            }

            v54 = (v54 + 1) & v55;
            if (((*(v47 + 56 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v54) & 1) == 0)
            {
              goto LABEL_22;
            }
          }

          a3 = v80;
          v4 = a2;
        }

        else
        {
LABEL_22:
          a3 = v80;
          v20 = *v80;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v91 = *v80;
          v22 = v24;
          sub_21BC68380(v22, v54, isUniquelyReferenced_nonNull_native);
          *v80 = v91;

          v4 = a2;
        }
      }

LABEL_23:
      v17 = v85;
      if (++v19 == v84)
      {
        goto LABEL_8;
      }
    }
  }

LABEL_87:
  __break(1u);
}

uint64_t sub_21BDC1E84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for SharedCalendarItemModel();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = [objc_allocWithZone(MEMORY[0x277CC5A40]) init];
  if (qword_280BD7CC0 != -1)
  {
    swift_once();
  }

  v16 = *(qword_280BD7CD0 + OBJC_IVAR____TtC14FamilyCircleUI25FamilySettingsApplication_aidaAccountManager);
  *(v15 + 32) = v16;
  v17 = v16;
  sub_21BE25F4C();
  result = sub_21BE283EC();
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5 & 1;
  *(a6 + 40) = v19;
  *(a6 + 48) = v20;
  return result;
}

uint64_t sub_21BDC1FAC()
{
  v16[1] = *MEMORY[0x277D85DE8];
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v16 - v2;
  v4 = objc_opt_self();
  v16[0] = 0;
  v5 = [v4 urlDestinationTo:12 error:v16];
  v6 = v16[0];
  if (v5)
  {
    v7 = v5;
    sub_21BE25B5C();
    v8 = v6;

    v9 = 0;
  }

  else
  {
    v10 = v16[0];
    v11 = sub_21BE25A8C();

    swift_willThrow();
    v9 = 1;
  }

  v12 = sub_21BE25B9C();
  (*(*(v12 - 8) + 56))(v3, v9, 1, v12);
  sub_21BDEF00C(v3);
  result = sub_21BB3A4CC(v3, &unk_27CDB57F0, &qword_21BE328A0);
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_21BDC212C(unint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_21BE2754C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    v13 = v9;
    v14 = sub_21BE2951C();
    v9 = v13;
    if (v14)
    {
      goto LABEL_3;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:

    return sub_21BDC1FAC();
  }

  v15 = v9;

  if ((a3 & 1) == 0)
  {
    sub_21BE28FEC();
    v16 = sub_21BE27B2C();
    sub_21BE269DC();

    sub_21BE2753C();
    swift_getAtKeyPath();

    (*(v7 + 8))(v11, v15);
    a2 = v18[3];
  }

  swift_beginAccess();
  if (*(a2 + 16) == 1)
  {
    *(a2 + 16) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v18[-2] = a2;
    LOBYTE(v18[-1]) = 1;
    v18[2] = a2;
    sub_21BDC158C(&qword_27CDBDB60, type metadata accessor for ChecklistStateVars);
    sub_21BE25F0C();
  }
}

uint64_t sub_21BDC23CC(unint64_t a1, uint64_t a2, char a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD0A0, &qword_21BE4D1E8);
  sub_21BE283FC();
  v6 = [*(v9 + 24) primaryAppleAccountSource];

  if (v6)
  {

    return sub_21BDC212C(a1, a2, a3 & 1);
  }

  else
  {
    sub_21BE283FC();
    if (*(v9 + 17) == 1)
    {
      *(v9 + 17) = 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      sub_21BDC158C(&qword_27CDB6858, type metadata accessor for SharedCalendarItemModel);
      sub_21BE25F0C();
    }
  }
}

unint64_t sub_21BDC258C()
{
  result = qword_27CDBD0B0;
  if (!qword_27CDBD0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBD0B0);
  }

  return result;
}

unint64_t sub_21BDC25E0()
{
  result = qword_27CDBD0C0;
  if (!qword_27CDBD0C0)
  {
    sub_21BB3A2A4(255, &qword_27CDBD0B8, 0x277CC5AC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBD0C0);
  }

  return result;
}

unint64_t sub_21BDC2658()
{
  result = qword_27CDBD0D0;
  if (!qword_27CDBD0D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBD070, &unk_21BE4D198);
    sub_21BBC24D4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB80C0, &qword_21BE3ADD8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBD088, &unk_21BE4D1D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8130, &qword_21BE3ED60);
    sub_21BBC2528();
    sub_21BB41FA4();
    sub_21BB3B038(&qword_27CDB8138, &qword_27CDB8130, &qword_21BE3ED60);
    swift_getOpaqueTypeConformance2();
    sub_21BDC1480();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBD0D0);
  }

  return result;
}

uint64_t sub_21BDC2880()
{
  v1 = OBJC_IVAR____TtC14FamilyCircleUI37FAPrivacyDisclosureAcknowledgmentHook_delegate;
  swift_beginAccess();
  v2 = *(v0 + v1);
  return swift_unknownObjectRetain();
}

uint64_t sub_21BDC2930(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14FamilyCircleUI37FAPrivacyDisclosureAcknowledgmentHook_delegate;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_21BDC2988(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC14FamilyCircleUI37FAPrivacyDisclosureAcknowledgmentHook_delegate;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_21BDC2AF8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_21BDC2B1C, 0, 0);
}

id sub_21BDC2B1C()
{
  result = [*(v0 + 16) attributes];
  if (result)
  {
    v2 = result;
    v4 = *(v0 + 24);
    v3 = *(v0 + 32);
    v5 = sub_21BE2890C();

    sub_21BDC3AC4(v5);

    sub_21BDC2BF0(v4, v3);
    v6 = *(v0 + 8);

    return v6(1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_21BDC2BF0(uint64_t a1, uint64_t a2)
{
  strcpy(v14, "shouldDismiss");
  v14[7] = -4864;
  sub_21BE2958C();
  if (*(a1 + 16) && (v4 = sub_21BBB31E8(v13), (v5 & 1) != 0))
  {
    sub_21BB3DCD4(*(a1 + 56) + 32 * v4, v15);
    sub_21BBB7238(v13);
    swift_dynamicCast();
  }

  else
  {
    sub_21BBB7238(v13);
  }

  v6 = sub_21BE28A6C();
  v8 = v7;

  if (v6 == 1702195828 && v8 == 0xE400000000000000)
  {
  }

  else
  {
    v9 = sub_21BE2995C();

    if ((v9 & 1) == 0)
    {
      return;
    }
  }

  v10 = OBJC_IVAR____TtC14FamilyCircleUI37FAPrivacyDisclosureAcknowledgmentHook_delegate;
  swift_beginAccess();
  v11 = *(a2 + v10);
  if (v11)
  {
    v13[4] = nullsub_1;
    v13[5] = 0;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 1107296256;
    v13[2] = sub_21BB42A18;
    v13[3] = &block_descriptor_55;
    v12 = _Block_copy(v13);
    [v11 dismissObjectModelsAnimated:1 completion:v12];
    _Block_release(v12);
  }
}

uint64_t sub_21BDC2F90(void *a1, int a2, int a3, void *aBlock, void *a5)
{
  v5[2] = a1;
  v5[3] = a5;
  v5[4] = _Block_copy(aBlock);
  v5[5] = sub_21BE2890C();
  v8 = a1;
  v9 = a5;

  return MEMORY[0x2822009F8](sub_21BDC3048, 0, 0);
}

id sub_21BDC3048()
{
  result = [*(v0 + 16) attributes];
  if (result)
  {
    v2 = result;
    v4 = *(v0 + 32);
    v3 = *(v0 + 40);
    v6 = *(v0 + 16);
    v5 = *(v0 + 24);
    v7 = sub_21BE2890C();

    sub_21BDC3AC4(v7);

    sub_21BDC2BF0(v3, v5);

    v4[2](v4, 1, 0);
    _Block_release(v4);
    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_21BDC3170()
{
  result = [*(v0 + 16) clientInfo];
  if (result)
  {
    v2 = result;
    v3 = sub_21BE2890C();

    sub_21BDC3AC4(v3);

    v4 = *(v0 + 8);

    return v4(1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21BDC33B4(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;

  return MEMORY[0x2822009F8](sub_21BDC3440, 0, 0);
}

id sub_21BDC3440()
{
  result = [*(v0 + 16) clientInfo];
  if (result)
  {
    v2 = result;
    v4 = *(v0 + 24);
    v3 = *(v0 + 32);
    v5 = *(v0 + 16);
    v6 = sub_21BE2890C();

    sub_21BDC3AC4(v6);

    v3[2](v3, 1, 0);
    _Block_release(v3);
    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21BDC3534(char a1, void *a2)
{
  v4 = sub_21BE26A4C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE2614C();
  v18 = 0;
  v19 = 0xE000000000000000;
  sub_21BE295EC();

  v18 = 0xD00000000000002DLL;
  v19 = 0x800000021BE61C20;
  if (a1)
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if (a1)
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  MEMORY[0x21CF03CA0](v9, v10);

  v11 = v19;
  if (a2)
  {
    sub_21BC51D50(a2);
  }

  else
  {
    v12 = v18;

    v13 = sub_21BE26A2C();
    v14 = sub_21BE28FFC();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v18 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_21BB3D81C(v12, v11, &v18);
      _os_log_impl(&dword_21BB35000, v13, v14, "%s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v16);
      MEMORY[0x21CF05C50](v16, -1, -1);
      MEMORY[0x21CF05C50](v15, -1, -1);
    }
  }

  return (*(v5 + 8))(v8, v4);
}

id FAPrivacyDisclosureAcknowledgmentHook.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FAPrivacyDisclosureAcknowledgmentHook.init()()
{
  *&v0[OBJC_IVAR____TtC14FamilyCircleUI37FAPrivacyDisclosureAcknowledgmentHook_delegate] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FAPrivacyDisclosureAcknowledgmentHook();
  return objc_msgSendSuper2(&v2, sel_init);
}

id FAPrivacyDisclosureAcknowledgmentHook.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FAPrivacyDisclosureAcknowledgmentHook();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21BDC3894(void *a1)
{
  v1 = [a1 name];
  if (v1)
  {
    v2 = v1;
    v3 = sub_21BE28A0C();
    v5 = v4;

    if (v3 == 0xD00000000000001FLL && 0x800000021BE61C80 == v5)
    {
      v7 = 1;
    }

    else
    {
      v7 = sub_21BE2995C();
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_21BDC3940(void *a1)
{
  v1 = [a1 clientInfo];
  if (!v1)
  {
    goto LABEL_10;
  }

  v2 = v1;
  v3 = sub_21BE2890C();

  v4 = *MEMORY[0x277D46250];
  sub_21BE28A0C();
  sub_21BE2958C();
  if (!*(v3 + 16) || (v5 = sub_21BBB31E8(v9), (v6 & 1) == 0))
  {

    sub_21BBB7238(v9);
LABEL_10:
    v10 = 0u;
    v11 = 0u;
    goto LABEL_11;
  }

  sub_21BB3DCD4(*(v3 + 56) + 32 * v5, &v10);
  sub_21BBB7238(v9);

  if (!*(&v11 + 1))
  {
LABEL_11:
    sub_21BBBC274(&v10);
    goto LABEL_12;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    v7 = 0;
    return v7 & 1;
  }

  if (v9[0] == 0xD00000000000001FLL && 0x800000021BE61C80 == v9[1])
  {

    v7 = 1;
  }

  else
  {
    v7 = sub_21BE2995C();
  }

  return v7 & 1;
}

uint64_t sub_21BDC3AC4(uint64_t a1)
{
  v2 = sub_21BE26A4C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v42 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v42 - v11;
  sub_21BE2614C();

  v13 = sub_21BE26A2C();
  v14 = sub_21BE28FFC();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v42 = v3;
    v43 = v2;
    v16 = v15;
    v17 = v10;
    v18 = swift_slowAlloc();
    aBlock[0] = v18;
    *v16 = 136315138;
    v19 = sub_21BE2891C();
    v21 = sub_21BB3D81C(v19, v20, aBlock);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_21BB35000, v13, v14, "FAPrivacyDisclosureAcknowledgmentHook, got attributes %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v18);
    v22 = v18;
    v10 = v17;
    MEMORY[0x21CF05C50](v22, -1, -1);
    v23 = v16;
    v3 = v42;
    v2 = v43;
    MEMORY[0x21CF05C50](v23, -1, -1);
  }

  v24 = *(v3 + 8);
  v24(v12, v2);
  v25 = [objc_opt_self() defaultCenter];
  if (qword_27CDB4F08 != -1)
  {
    swift_once();
  }

  [v25 postNotificationName:qword_27CDB7EB0 object:0 userInfo:0 deliverImmediately:1];

  aBlock[6] = 0x4449656C646E7562;
  aBlock[7] = 0xE800000000000000;
  sub_21BE2958C();
  if (*(a1 + 16) && (v26 = sub_21BBB31E8(aBlock), (v27 & 1) != 0))
  {
    sub_21BB3DCD4(*(a1 + 56) + 32 * v26, v45);
    sub_21BBB7238(aBlock);
    if (swift_dynamicCast())
    {
      v28 = objc_allocWithZone(MEMORY[0x277CEE3D0]);
      v29 = sub_21BE289CC();

      v30 = [v28 initWithPrivacyIdentifier_];

      v31 = [v30 acknowledgePrivacy];
      aBlock[4] = sub_21BDC3534;
      aBlock[5] = 0;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21BD197D4;
      aBlock[3] = &block_descriptor_31;
      v32 = _Block_copy(aBlock);
      [v31 addFinishBlock_];
      _Block_release(v32);
      sub_21BE2614C();
      v33 = sub_21BE26A2C();
      v34 = sub_21BE28FFC();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        aBlock[0] = v36;
        *v35 = 136315138;
        *(v35 + 4) = sub_21BB3D81C(0xD00000000000002CLL, 0x800000021BE61BF0, aBlock);
        _os_log_impl(&dword_21BB35000, v33, v34, "%s completed", v35, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v36);
        MEMORY[0x21CF05C50](v36, -1, -1);
        MEMORY[0x21CF05C50](v35, -1, -1);
      }

      v37 = v10;
      return (v24)(v37, v2);
    }
  }

  else
  {
    sub_21BBB7238(aBlock);
  }

  sub_21BE2614C();
  v38 = sub_21BE26A2C();
  v39 = sub_21BE28FFC();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_21BB35000, v38, v39, "FAPrivacyDisclosureAcknowledgmentHook, no bundle id found", v40, 2u);
    MEMORY[0x21CF05C50](v40, -1, -1);
  }

  v37 = v7;
  return (v24)(v37, v2);
}

uint64_t dispatch thunk of FAPrivacyDisclosureAcknowledgmentHook.shouldMatch(_:)()
{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x70))();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x78))();
}

uint64_t dispatch thunk of FAPrivacyDisclosureAcknowledgmentHook.processElement(_:attributes:objectModel:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *((*MEMORY[0x277D85000] & *v3) + 0x80);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_21BBB8C3C;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of FAPrivacyDisclosureAcknowledgmentHook.processObjectModel(_:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x88);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21BBE9D64;

  return v8(a1);
}

uint64_t sub_21BDC4408()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_21BBB7EB8;

  return sub_21BDC33B4(v2, v3, v4);
}

uint64_t sub_21BDC44BC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_21BBA6A64;

  return sub_21BDC2F90(v2, v3, v4, v5, v6);
}

uint64_t FAFamilyCircleFetcher.fetchCachedFamilyCircle(qualityOfService:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_21BBDEAC0;

  return sub_21BDC524C(0, a1);
}

uint64_t sub_21BDC47BC(uint64_t a1, void *aBlock)
{
  *(v2 + 16) = _Block_copy(aBlock);
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_21BDC58F8;

  return sub_21BDC524C(0, a1);
}

uint64_t FAFamilyCircleFetcher.forceFetchFamilyCircle(qualityOfService:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_21BBDE3D4;

  return sub_21BDC524C(2, a1);
}

uint64_t sub_21BDC4AA4(uint64_t a1, void *aBlock)
{
  *(v2 + 16) = _Block_copy(aBlock);
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_21BDC4B5C;

  return sub_21BDC524C(2, a1);
}

uint64_t sub_21BDC4B5C(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 24);
  v7 = *v2;

  v8 = *(v5 + 16);
  if (v3)
  {
    v9 = sub_21BE25A7C();

    (v8)[2](v8, 0, v9);
    _Block_release(v8);
  }

  else
  {
    (v8)[2](v8, a1, 0);
    _Block_release(v8);
  }

  v10 = *(v7 + 8);

  return v10();
}

id FAFamilyCircleFetcher.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FAFamilyCircleFetcher.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id FAFamilyCircleFetcher.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21BDC4DC0(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_21BBB7EB8;

  return v7();
}

uint64_t sub_21BDC4EA8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_21BBA6A64;

  return v8();
}

uint64_t sub_21BDC4F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v25 - v11;
  sub_21BC39020(a3, v25 - v11);
  v13 = sub_21BE28DAC();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_21BBDE578(v12);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_21BE28D9C();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_21BE28D0C();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_21BE28A8C() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    sub_21BBDE578(a3);

    return v23;
  }

LABEL_8:
  sub_21BBDE578(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_21BDC524C(uint64_t a1, uint64_t a2)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return MEMORY[0x2822009F8](sub_21BDC526C, 0, 0);
}

uint64_t sub_21BDC526C()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = [objc_allocWithZone(MEMORY[0x277D08280]) init];
  v0[21] = v3;
  [v3 setQualityOfService_];
  [v3 setCachePolicy_];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_21BDC53D4;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC830, &qword_21BE4B460);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_21BBB25CC;
  v0[13] = &block_descriptor_56;
  v0[14] = v4;
  [v3 startRequestWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21BDC53D4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 176) = v2;
  if (v2)
  {
    v3 = sub_21BDC554C;
  }

  else
  {
    v3 = sub_21BDC54E4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21BDC54E4()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_21BDC554C()
{
  v1 = v0[21];
  v2 = v0[22];
  swift_willThrow();

  v3 = v0[1];
  v4 = v0[22];

  return v3();
}

uint64_t sub_21BDC55E0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_21BBA6A64;

  return sub_21BDC4AA4(v2, v3);
}

uint64_t sub_21BDC5694(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21BBB7EB8;

  return sub_21BB42FF0(a1, v5);
}

uint64_t sub_21BDC574C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21BBA6A64;

  return sub_21BB42FF0(a1, v5);
}

uint64_t objectdestroyTm_38()
{
  _Block_release(*(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_21BDC5844()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_21BBB7EB8;

  return sub_21BDC47BC(v2, v3);
}

uint64_t FamilyOutofProcessUIExtension.configuration.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  (*(v4 + 16))(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v6, a1);
  v7 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  (*(v4 + 32))(v8 + v7, &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  swift_getAssociatedTypeWitness();
  v9 = *(swift_getAssociatedConformanceWitness() + 8);
  return sub_21BE25F7C();
}

uint64_t sub_21BDC5A78()
{
  v1 = *(v0 + 24);
  v2 = v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80));
  return (*(v1 + 32))();
}

id AgeRangeAlertFlowStore.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FamilyOutofProcessUIScene.init(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0x746C7561666564;
  a3[1] = 0xE700000000000000;
  result = [objc_allocWithZone(type metadata accessor for AgeRangeAlertFlowStore()) init];
  a3[2] = result;
  a3[3] = a1;
  a3[4] = a2;
  return result;
}

uint64_t type metadata accessor for AgeRangeAlertFlowStore()
{
  result = qword_27CDBD240;
  if (!qword_27CDBD240)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FamilyOutofProcessUIScene.body.getter(uint64_t a1)
{
  v3 = v1[1];
  v11 = *v1;
  v12 = v3;
  v13 = *(v1 + 4);
  v4 = swift_allocObject();
  v5 = *(a1 + 24);
  *(v4 + 16) = *(a1 + 16);
  *(v4 + 24) = v5;
  v6 = v1[1];
  *(v4 + 32) = *v1;
  *(v4 + 48) = v6;
  *(v4 + 64) = *(v1 + 4);
  v7 = v12;
  *(swift_allocObject() + 16) = v12;

  (*(*(a1 - 8) + 16))(v10, &v11, a1);
  v8 = v7;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBD150, &qword_21BE4D4D0);
  sub_21BE2719C();
  sub_21BB3B038(&qword_27CDBD158, &qword_27CDBD150, &qword_21BE4D4D0);
  swift_getWitnessTable();
  return sub_21BE25F6C();
}

uint64_t sub_21BDC5D7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v26 = a4;
  v25 = *(a2 - 8);
  v7 = *(v25 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBD150, &qword_21BE4D4D0);
  v10 = sub_21BE2719C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v24 - v17;
  v19 = *(a1 + 32);
  (*(a1 + 24))(v16);
  swift_getKeyPath();
  v29 = *(a1 + 16);
  v20 = v29;
  sub_21BE27EFC();

  (*(v25 + 8))(v9, a2);
  v21 = sub_21BB3B038(&qword_27CDBD158, &qword_27CDBD150, &qword_21BE4D4D0);
  v27 = a3;
  v28 = v21;
  swift_getWitnessTable();
  sub_21BD37338(v15);
  v22 = *(v11 + 8);
  v22(v15, v10);
  sub_21BD37338(v18);
  return (v22)(v18, v10);
}

uint64_t EnvironmentValues.flowStore.getter()
{
  sub_21BDC6168();
  sub_21BE2755C();
  return v1;
}

uint64_t sub_21BDC6058@<X0>(void *a1@<X8>)
{
  sub_21BDC6168();
  result = sub_21BE2755C();
  *a1 = v3;
  return result;
}

uint64_t sub_21BDC60A8(void **a1)
{
  v1 = *a1;
  sub_21BDC6168();
  v2 = v1;
  return sub_21BE2756C();
}

uint64_t sub_21BDC6140(void *a1)
{
  v2 = *(v1 + 16);
  sub_21BDC61BC(a1);
  return 1;
}

unint64_t sub_21BDC6168()
{
  result = qword_27CDBD160;
  if (!qword_27CDBD160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBD160);
  }

  return result;
}

uint64_t sub_21BDC61BC(void *a1)
{
  v2 = v1;
  v4 = sub_21BE26A4C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE2614C();
  v9 = sub_21BE26A2C();
  v10 = sub_21BE28FFC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_21BB35000, v9, v10, "AgeRangeAlertFlowStore (Extension): configuring XPC connection", v11, 2u);
    MEMORY[0x21CF05C50](v11, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  [a1 setExportedObject_];
  v12 = objc_opt_self();
  v13 = [v12 interfaceWithProtocol_];
  [a1 setExportedInterface_];

  v14 = [v12 interfaceWithProtocol_];
  [a1 setRemoteObjectInterface_];

  [a1 resume];
  v15 = swift_allocObject();
  *(v15 + 16) = v2;
  *(v15 + 24) = a1;
  v16 = a1;
  v17 = v2;
  sub_21BDCEAC8(sub_21BDCF070, v15);

  return 1;
}

void sub_21BDC6424(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  AgeRangeAlertFlowStore.ageRangeRequestModel.setter(v2);
}

void AgeRangeAlertFlowStore.ageRangeRequestModel.setter(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC14FamilyCircleUI22AgeRangeAlertFlowStore__ageRangeRequestModel;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21BDCEF1C(&qword_27CDBD170, type metadata accessor for AgeRangeAlertFlowStore);
    sub_21BE25F0C();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_21BB3A2A4(0, &qword_27CDBD180, 0x277D08218);
  v6 = v5;
  v7 = a1;
  v8 = sub_21BE2940C();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

void (*AgeRangeAlertFlowStore.ageRangeRequestModel.modify(uint64_t *a1))(void **a1)
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
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC14FamilyCircleUI22AgeRangeAlertFlowStore___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_21BDCEF1C(&qword_27CDBD170, type metadata accessor for AgeRangeAlertFlowStore);
  sub_21BE25F1C();

  *v4 = v1;
  swift_getKeyPath();
  sub_21BE25F3C();

  swift_beginAccess();
  return sub_21BDC674C;
}

uint64_t AgeRangeAlertFlowStore.clientMetadata.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_21BDCEF1C(&qword_27CDBD170, type metadata accessor for AgeRangeAlertFlowStore);
  sub_21BE25F1C();

  v3 = OBJC_IVAR____TtC14FamilyCircleUI22AgeRangeAlertFlowStore__clientMetadata;
  swift_beginAccess();
  return sub_21BBA3854(v5 + v3, a1, &qword_27CDBD190, &qword_21BE4D528);
}

uint64_t sub_21BDC6830@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21BDCEF1C(&qword_27CDBD170, type metadata accessor for AgeRangeAlertFlowStore);
  sub_21BE25F1C();

  v4 = OBJC_IVAR____TtC14FamilyCircleUI22AgeRangeAlertFlowStore__clientMetadata;
  swift_beginAccess();
  return sub_21BBA3854(v3 + v4, a2, &qword_27CDBD190, &qword_21BE4D528);
}

uint64_t sub_21BDC6908(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD190, &qword_21BE4D528);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10[-v6];
  sub_21BBA3854(a1, &v10[-v6], &qword_27CDBD190, &qword_21BE4D528);
  v8 = *a2;
  swift_getKeyPath();
  v11 = v8;
  v12 = v7;
  v13 = v8;
  sub_21BDCEF1C(&qword_27CDBD170, type metadata accessor for AgeRangeAlertFlowStore);
  sub_21BE25F0C();

  return sub_21BB3A4CC(v7, &qword_27CDBD190, &qword_21BE4D528);
}

uint64_t AgeRangeAlertFlowStore.clientMetadata.setter(uint64_t a1)
{
  swift_getKeyPath();
  sub_21BDCEF1C(&qword_27CDBD170, type metadata accessor for AgeRangeAlertFlowStore);
  sub_21BE25F0C();

  return sub_21BB3A4CC(a1, &qword_27CDBD190, &qword_21BE4D528);
}

uint64_t sub_21BDC6B38(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC14FamilyCircleUI22AgeRangeAlertFlowStore__clientMetadata;
  swift_beginAccess();
  sub_21BDCF000(a2, a1 + v4);
  return swift_endAccess();
}

void (*AgeRangeAlertFlowStore.clientMetadata.modify(uint64_t *a1))(void **a1)
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
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC14FamilyCircleUI22AgeRangeAlertFlowStore___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_21BDCEF1C(&qword_27CDBD170, type metadata accessor for AgeRangeAlertFlowStore);
  sub_21BE25F1C();

  *v4 = v1;
  swift_getKeyPath();
  sub_21BE25F3C();

  swift_beginAccess();
  return sub_21BDC6D08;
}

void *sub_21BDC6D28(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_21BDCEF1C(&qword_27CDBD170, type metadata accessor for AgeRangeAlertFlowStore);
  sub_21BE25F1C();

  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
  v6 = v5;
  return v5;
}

id sub_21BDC6DF8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_21BDCEF1C(&qword_27CDBD170, type metadata accessor for AgeRangeAlertFlowStore);
  sub_21BE25F1C();

  v6 = *a2;
  swift_beginAccess();
  v7 = *(v5 + v6);
  *a3 = v7;

  return v7;
}

void sub_21BDC6ED0(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  AgeRangeAlertFlowStore.ageRangeAlertModel.setter(v2);
}

void AgeRangeAlertFlowStore.ageRangeAlertModel.setter(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC14FamilyCircleUI22AgeRangeAlertFlowStore__ageRangeAlertModel;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21BDCEF1C(&qword_27CDBD170, type metadata accessor for AgeRangeAlertFlowStore);
    sub_21BE25F0C();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_21BB3A2A4(0, &qword_27CDBD1A0, 0x277D08208);
  v6 = v5;
  v7 = a1;
  v8 = sub_21BE2940C();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

void (*AgeRangeAlertFlowStore.ageRangeAlertModel.modify(uint64_t *a1))(void **a1)
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
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC14FamilyCircleUI22AgeRangeAlertFlowStore___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_21BDCEF1C(&qword_27CDBD170, type metadata accessor for AgeRangeAlertFlowStore);
  sub_21BE25F1C();

  *v4 = v1;
  swift_getKeyPath();
  sub_21BE25F3C();

  swift_beginAccess();
  return sub_21BDC71F8;
}

void sub_21BDC722C(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  AgeRangeAlertFlowStore.privacyVersion.setter(v2);
}

void AgeRangeAlertFlowStore.privacyVersion.setter(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC14FamilyCircleUI22AgeRangeAlertFlowStore__privacyVersion;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21BDCEF1C(&qword_27CDBD170, type metadata accessor for AgeRangeAlertFlowStore);
    sub_21BE25F0C();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_21BB3A2A4(0, &qword_280BD68F8, 0x277CCABB0);
  v6 = v5;
  v7 = a1;
  v8 = sub_21BE2940C();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

void sub_21BDC73E8(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = *a3;
  swift_beginAccess();
  v6 = *(a1 + v5);
  *(a1 + v5) = a2;
  v7 = a2;
}

void (*AgeRangeAlertFlowStore.privacyVersion.modify(uint64_t *a1))(void **a1)
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
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC14FamilyCircleUI22AgeRangeAlertFlowStore___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_21BDCEF1C(&qword_27CDBD170, type metadata accessor for AgeRangeAlertFlowStore);
  sub_21BE25F1C();

  *v4 = v1;
  swift_getKeyPath();
  sub_21BE25F3C();

  swift_beginAccess();
  return sub_21BDC75C0;
}

void sub_21BDC75CC(void **a1)
{
  v1 = *a1;
  swift_endAccess();
  v2 = v1[4];
  v3 = v1[5];
  *v1 = v1[3];
  swift_getKeyPath();
  sub_21BE25F2C();

  free(v1);
}

uint64_t sub_21BDC7650()
{
  v1 = sub_21BE26A4C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  v7 = (v6 + 16);
  v8 = *(v0 + OBJC_IVAR____TtC14FamilyCircleUI22AgeRangeAlertFlowStore__connection);
  if (v8)
  {
    aBlock[4] = sub_21BDCEFA4;
    aBlock[5] = v6;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21BD94E40;
    aBlock[3] = &block_descriptor_90_0;
    v9 = _Block_copy(aBlock);
    v10 = v8;

    v11 = [v10 remoteObjectProxyWithErrorHandler_];
    _Block_release(v9);

    sub_21BE294BC();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD260, &unk_21BE4D860);
    if (swift_dynamicCast())
    {
      v12 = aBlock[7];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  swift_beginAccess();
  v13 = *v7;
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    if (v12)
    {

      return v12;
    }

    sub_21BE2614C();
    v16 = sub_21BE26A2C();
    v17 = sub_21BE28FFC();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_21BB35000, v16, v17, "FamilyExtension: proxy is nil", v18, 2u);
      MEMORY[0x21CF05C50](v18, -1, -1);
    }

    (*(v2 + 8))(v5, v1);
    sub_21BDCEFAC();
    swift_allocError();
  }

  swift_willThrow();

  swift_unknownObjectRelease();
  return v12;
}

uint64_t sub_21BDC7954(void *a1, uint64_t a2)
{
  v4 = sub_21BE26A4C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v9 = *(a2 + 16);
  *(a2 + 16) = a1;

  v10 = a1;
  sub_21BE2614C();
  v11 = a1;
  v12 = sub_21BE26A2C();
  v13 = sub_21BE28FFC();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    v16 = a1;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 4) = v17;
    *v15 = v17;
    _os_log_impl(&dword_21BB35000, v12, v13, "FamilyExtension: failed to get proxy %@", v14, 0xCu);
    sub_21BB3A4CC(v15, &qword_27CDB7AF0, &qword_21BE37410);
    MEMORY[0x21CF05C50](v15, -1, -1);
    MEMORY[0x21CF05C50](v14, -1, -1);
  }

  return (*(v5 + 8))(v8, v4);
}

void sub_21BDC7B2C(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD190, &qword_21BE4D528);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v52 - v5;
  v7 = sub_21BE26A4C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v52 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = v52 - v16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    sub_21BE2614C();
    v20 = sub_21BE26A2C();
    v21 = sub_21BE28FFC();
    v22 = os_log_type_enabled(v20, v21);
    v54 = v6;
    if (v22)
    {
      v23 = swift_slowAlloc();
      v53 = v15;
      v24 = v12;
      v25 = v7;
      v26 = v8;
      v27 = v23;
      v28 = swift_slowAlloc();
      v56 = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_21BB3D81C(0xD000000000000028, 0x800000021BE60C50, &v56);
      _os_log_impl(&dword_21BB35000, v20, v21, "Extension: %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v28);
      MEMORY[0x21CF05C50](v28, -1, -1);
      MEMORY[0x21CF05C50](v27, -1, -1);

      v29 = v26;
      v7 = v25;
      v12 = v24;
      v15 = v53;
    }

    else
    {

      v29 = v8;
    }

    v30 = *(v29 + 8);
    v30(v17, v7);
    v31 = a2;
    AgeRangeAlertFlowStore.ageRangeRequestModel.setter(a2);
    v32 = *&v19[OBJC_IVAR____TtC14FamilyCircleUI22AgeRangeAlertFlowStore__connection];
    if (!v32)
    {
      [sub_21BDC7650() dismissWithError:0 response:0];
      swift_unknownObjectRelease();
      sub_21BDC83CC();

      return;
    }

    v53 = v7;
    swift_getKeyPath();
    v33 = OBJC_IVAR____TtC14FamilyCircleUI22AgeRangeAlertFlowStore___observationRegistrar;
    v56 = v19;
    sub_21BDCEF1C(&qword_27CDBD170, type metadata accessor for AgeRangeAlertFlowStore);
    v34 = v32;
    sub_21BE25F1C();

    v35 = OBJC_IVAR____TtC14FamilyCircleUI22AgeRangeAlertFlowStore__ageRangeRequestModel;
    swift_beginAccess();
    v36 = *&v19[v35];
    if (v36)
    {
      v52[1] = v33;
      v37 = v36;
      v38 = [v37 userAgeOverride];
      if (v38 || (v38 = [v37 attestedAtOverrideInDays]) != 0 || (v38 = objc_msgSend(v37, sel_altDSID)) != 0 || (v38 = objc_msgSend(v37, sel_bundleID)) != 0)
      {

        sub_21BE2614C();
        v39 = sub_21BE26A2C();
        v40 = sub_21BE28FFC();
        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          *v41 = 0;
          _os_log_impl(&dword_21BB35000, v39, v40, "Checking for internal entitlement", v41, 2u);
          MEMORY[0x21CF05C50](v41, -1, -1);
        }

        v30(v15, v53);
        v42 = v34;
        v43 = v54;
        sub_21BE2630C();
        v44 = sub_21BE2632C();
        (*(*(v44 - 8) + 56))(v43, 0, 1, v44);
        KeyPath = swift_getKeyPath();
        MEMORY[0x28223BE20](KeyPath);
        v52[-2] = v19;
        v52[-1] = v43;
        v55 = v19;
        sub_21BE25F0C();

LABEL_19:
        sub_21BB3A4CC(v43, &qword_27CDBD190, &qword_21BE4D528);
        return;
      }
    }

    sub_21BE2614C();
    v46 = sub_21BE26A2C();
    v47 = sub_21BE28FFC();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_21BB35000, v46, v47, "Checking for public entitlement", v48, 2u);
      MEMORY[0x21CF05C50](v48, -1, -1);
    }

    v30(v12, v53);
    v49 = v34;
    v43 = v54;
    sub_21BE2630C();
    v50 = sub_21BE2632C();
    (*(*(v50 - 8) + 56))(v43, 0, 1, v50);
    v51 = swift_getKeyPath();
    MEMORY[0x28223BE20](v51);
    v52[-2] = v19;
    v52[-1] = v43;
    v55 = v19;
    sub_21BE25F0C();

    goto LABEL_19;
  }
}

uint64_t AgeRangeAlertFlowStore.dismiss(error:response:)(uint64_t a1, uint64_t a2)
{
  [sub_21BDC7650() dismissWithError:a1 response:a2];
  swift_unknownObjectRelease();

  return sub_21BDC83CC();
}

uint64_t sub_21BDC83CC()
{
  v1 = v0;
  v2 = sub_21BE26A4C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE2614C();
  v7 = sub_21BE26A2C();
  v8 = sub_21BE28FFC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_21BB35000, v7, v8, "AgeRangeAlertFlowStore (Extension): invalidating", v9, 2u);
    MEMORY[0x21CF05C50](v9, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v10 = OBJC_IVAR____TtC14FamilyCircleUI22AgeRangeAlertFlowStore__connection;
  v11 = *(v1 + OBJC_IVAR____TtC14FamilyCircleUI22AgeRangeAlertFlowStore__connection);
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  [v12 invalidate];

  v13 = *(v1 + v10);
  *(v1 + v10) = 0;

  v14 = OBJC_IVAR____TtC14FamilyCircleUI22AgeRangeAlertFlowStore__ageRangeRequestModel;
  result = swift_beginAccess();
  if (*(v1 + v14))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v17[-2] = v1;
    v17[-1] = 0;
    v17[2] = v1;
    sub_21BDCEF1C(&qword_27CDBD170, type metadata accessor for AgeRangeAlertFlowStore);
    sub_21BE25F0C();
  }

  return result;
}

uint64_t sub_21BDC864C(SEL *a1)
{
  [sub_21BDC7650() *a1];

  return swift_unknownObjectRelease();
}

id AgeRangeAlertFlowStore.init()()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC14FamilyCircleUI22AgeRangeAlertFlowStore__ageRangeRequestModel] = 0;
  v2 = OBJC_IVAR____TtC14FamilyCircleUI22AgeRangeAlertFlowStore__clientMetadata;
  v3 = sub_21BE2632C();
  v4 = *(*(v3 - 8) + 56);
  v4(&v0[v2], 1, 1, v3);
  v4(&v0[v2], 1, 1, v3);
  *&v0[OBJC_IVAR____TtC14FamilyCircleUI22AgeRangeAlertFlowStore__ageRangeAlertModel] = 0;
  *&v0[OBJC_IVAR____TtC14FamilyCircleUI22AgeRangeAlertFlowStore__privacyVersion] = 0;
  *&v0[OBJC_IVAR____TtC14FamilyCircleUI22AgeRangeAlertFlowStore__connection] = 0;
  sub_21BE25F4C();
  v6.receiver = v0;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_init);
}

id AgeRangeAlertFlowStore.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_21BDC88F4()
{
  result = [objc_allocWithZone(type metadata accessor for AgeRangeAlertFlowStore()) init];
  qword_27CDBD148 = result;
  return result;
}

id static AgeRangeAlertFlowStoreKey.defaultValue.getter()
{
  if (qword_27CDB4FF0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_27CDBD148;

  return v0;
}

void static AgeRangeAlertFlowStoreKey.defaultValue.setter(uint64_t a1)
{
  if (qword_27CDB4FF0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_27CDBD148;
  qword_27CDBD148 = a1;
}

uint64_t (*static AgeRangeAlertFlowStoreKey.defaultValue.modify())()
{
  if (qword_27CDB4FF0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

id sub_21BDC8AB4@<X0>(void *a1@<X8>)
{
  if (qword_27CDB4FF0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_27CDBD148;
  *a1 = qword_27CDBD148;

  return v2;
}

void sub_21BDC8B40(id *a1)
{
  v1 = qword_27CDB4FF0;
  v2 = *a1;
  if (v1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = qword_27CDBD148;
  qword_27CDBD148 = v2;
}

uint64_t sub_21BDC8BC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_21BDCEF1C(&qword_27CDBD258, type metadata accessor for AgeRangeAlertFlowStore);

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

void (*EnvironmentValues.flowStore.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_21BDC6168();
  sub_21BE2755C();
  return sub_21BDC8CBC;
}

void sub_21BDC8CBC(uint64_t a1, char a2)
{
  v2 = *a1;
  *(a1 + 8) = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  if (a2)
  {
    v6 = v2;
    sub_21BE2756C();
    v7 = *a1;
  }

  else
  {
    sub_21BE2756C();
  }
}

uint64_t sub_21BDC8D50(uint64_t a1, uint64_t a2)
{
  sub_21BE28D6C();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  sub_21BDCEEF4();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    sub_21BE295EC();
    MEMORY[0x21CF03CA0](0xD00000000000003FLL, 0x800000021BE61E30);
    v8 = sub_21BE29BBC();
    MEMORY[0x21CF03CA0](v8);

    MEMORY[0x21CF03CA0](46, 0xE100000000000000);
    result = sub_21BE2978C();
    __break(1u);
  }

  return result;
}

uint64_t AgeRangeAlertFlowStore.handlePrimaryButtonAction(ageRangeContext:ageRangeController:openURL:)(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v27 - v10;
  v12 = *a1;
  v13 = *(a1 + 8);
  v14 = *(a1 + 16);
  swift_getKeyPath();
  v30[0] = v4;
  sub_21BDCEF1C(&qword_27CDBD170, type metadata accessor for AgeRangeAlertFlowStore);
  sub_21BE25F1C();

  v15 = OBJC_IVAR____TtC14FamilyCircleUI22AgeRangeAlertFlowStore__ageRangeAlertModel;
  swift_beginAccess();
  v16 = *&v4[v15];
  if (!v16)
  {
    goto LABEL_6;
  }

  v17 = v16;
  if (![v17 shouldPrompt])
  {
LABEL_5:

LABEL_6:
    v20 = sub_21BE28DAC();
    (*(*(v20 - 8) + 56))(v11, 1, 1, v20);
    sub_21BE28D7C();
    sub_21BDC9D64(v12, v13);
    v21 = v4;
    v22 = a2;
    v23 = sub_21BE28D6C();
    v24 = swift_allocObject();
    v25 = MEMORY[0x277D85700];
    v24[2] = v23;
    v24[3] = v25;
    v24[4] = v12;
    v24[5] = v13;
    v24[6] = v14;
    v24[7] = v21;
    v24[8] = v22;
    sub_21BBA932C(0, 0, v11, &unk_21BE4D590, v24);
  }

  v18 = [v17 ageRangeResponse];
  if (v18)
  {
    v19 = v18;

    v17 = v19;
    goto LABEL_5;
  }

  sub_21BBA3854(a3, &v28, qword_27CDBD1B8, &unk_21BE4D598);
  if (v29)
  {
    sub_21BB3D104(&v28, v30);
    AgeRangeAlertFlowStore.handleLearnMoreAction(openURL:)(v30);

    return __swift_destroy_boxed_opaque_existential_0Tm(v30);
  }

  else
  {

    return sub_21BB3A4CC(&v28, qword_27CDBD1B8, &unk_21BE4D598);
  }
}

uint64_t AgeRangeAlertFlowStore.handleLearnMoreAction(openURL:)(void *a1)
{
  v2 = v1;
  v4 = sub_21BE26A4C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v25 - v11;
  v13 = sub_21BE25B9C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE25B7C();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_21BB3A4CC(v12, &unk_27CDB57F0, &qword_21BE328A0);
    [sub_21BDC7650() dismissWithError:0 response:0];
    swift_unknownObjectRelease();
    return sub_21BDC83CC();
  }

  else
  {
    (*(v14 + 32))(v17, v12, v13);
    sub_21BE261CC();
    v18 = sub_21BE26A2C();
    v19 = sub_21BE28FCC();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v25[0] = v2;
      v21 = v20;
      *v20 = 0;
      _os_log_impl(&dword_21BB35000, v18, v19, "Opening learn more url.", v20, 2u);
      MEMORY[0x21CF05C50](v21, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    v22 = a1[3];
    v23 = a1[4];
    __swift_project_boxed_opaque_existential_1Tm(a1, v22);
    (*(v23 + 8))(v17, v22, v23);
    [sub_21BDC7650() dismissWithError:0 response:0];
    swift_unknownObjectRelease();
    sub_21BDC83CC();
    return (*(v14 + 8))(v17, v13);
  }
}

uint64_t sub_21BDC9500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = a7;
  v8[16] = a8;
  v8[13] = a5;
  v8[14] = a6;
  v8[12] = a4;
  sub_21BE28D7C();
  v8[17] = sub_21BE28D6C();
  v10 = sub_21BE28D0C();
  v8[18] = v10;
  v8[19] = v9;

  return MEMORY[0x2822009F8](sub_21BDC95A0, v10, v9);
}

uint64_t sub_21BDC95A0()
{
  v1 = v0[12];
  if (v1 && v1[2])
  {
    v2 = v0[13];
    v3 = v0[14];
    v5 = v1[4];
    v4 = v1[5];
    v0[20] = v4;
    sub_21BDC9D64(v1, v2);

    v6 = swift_task_alloc();
    v0[21] = v6;
    *v6 = v0;
    v6[1] = sub_21BDC9790;
    v8 = v0[15];
    v7 = v0[16];

    return AgeRangeAlertFlowStore.saveAgeRange(with:response:responseType:altDSID:)(v7, 1, 1, v5, v4);
  }

  else
  {
    v10 = v0[17];
    v11 = v0[15];

    type metadata accessor for AgeRangeError(0);
    v0[8] = -4004;
    sub_21BDCE614(MEMORY[0x277D84F90]);
    sub_21BDCEF1C(&qword_27CDB5258, type metadata accessor for AgeRangeError);
    sub_21BE25A6C();
    v12 = v0[7];
    v13 = sub_21BE25A7C();

    [sub_21BDC7650() dismissWithError:v13 response:0];
    swift_unknownObjectRelease();
    v14 = v0[15];
    sub_21BDC83CC();

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_21BDC9790()
{
  v2 = *(*v1 + 168);
  v3 = *v1;
  v3[22] = v0;

  if (v0)
  {
    v4 = v3[18];
    v5 = v3[19];

    return MEMORY[0x2822009F8](sub_21BDC9BF0, v4, v5);
  }

  else
  {
    v6 = v3[20];
    v7 = v3[16];

    v8 = v7;
    v9 = swift_task_alloc();
    v3[23] = v9;
    *v9 = v3;
    v9[1] = sub_21BDC9924;
    v10 = v3[16];

    return FamilyDeclaredAgeRangeAnalyticsPackage.init(from:)((v3 + 5), v10);
  }
}

uint64_t sub_21BDC9924()
{
  v1 = *v0;
  v2 = *(*v0 + 184);
  v6 = *v0;

  v3 = *(v1 + 152);
  v4 = *(v1 + 144);

  return MEMORY[0x2822009F8](sub_21BDC9A44, v4, v3);
}

uint64_t sub_21BDC9A44()
{
  v20 = v0;
  v1 = *(v0 + 176);
  v2 = *(v0 + 136);
  v3 = *(v0 + 120);

  v4 = *(v0 + 48);
  v5 = *(v0 + 49);
  v6 = *(v0 + 51);
  v16 = *(v0 + 40);
  v17 = v4;
  v18 = v5;
  v19 = v6;
  sub_21BD5EA78(&v16);
  swift_getKeyPath();
  *(v0 + 88) = v3;
  sub_21BDCEF1C(&qword_27CDBD170, type metadata accessor for AgeRangeAlertFlowStore);
  sub_21BE25F1C();

  v7 = OBJC_IVAR____TtC14FamilyCircleUI22AgeRangeAlertFlowStore__ageRangeAlertModel;
  swift_beginAccess();
  v8 = [*(v3 + v7) ageRangeResponse];
  v9 = sub_21BDC7650();
  if (v1)
  {
  }

  else
  {
    [v9 dismissWithError:0 response:v8];
    swift_unknownObjectRelease();
  }

  v10 = *(v0 + 112);
  v11 = *(v0 + 120);
  v13 = *(v0 + 96);
  v12 = *(v0 + 104);
  sub_21BDC83CC();

  sub_21BDCEF64(v13, v12);
  v14 = *(v0 + 8);

  return v14();
}