uint64_t sub_2426ECA94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2426ECBC0;

  return (v11)(a1, 0, a2, a3);
}

uint64_t sub_2426ECBC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v4 + 16);
  v14 = *v4;

  v12 = *(v14 + 8);
  if (!v3)
  {
    v9 = a1;
    v10 = a2;
    v11 = a3;
  }

  return v12(v9, v10, v11);
}

uint64_t sub_2426ECCE0(uint64_t a1, id *a2)
{
  result = sub_242732494();
  *a2 = 0;
  return result;
}

uint64_t sub_2426ECD58(uint64_t a1, id *a2)
{
  v3 = sub_2427324A4();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_2426ECDD8@<X0>(uint64_t *a1@<X8>)
{
  sub_2427324B4();
  v2 = sub_242732484();

  *a1 = v2;
  return result;
}

uint64_t sub_2426ECE1C()
{
  v1 = *v0;
  v2 = sub_2427324B4();
  v3 = MEMORY[0x245D17100](v2);

  return v3;
}

uint64_t sub_2426ECE58()
{
  v1 = *v0;
  sub_2427324B4();
  sub_242732554();
}

uint64_t sub_2426ECEAC()
{
  v1 = *v0;
  sub_2427324B4();
  sub_242732BA4();
  sub_242732554();
  v2 = sub_242732BD4();

  return v2;
}

void *sub_2426ECF34@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_2426ECF50(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_2427324B4();
  v6 = v5;
  if (v4 == sub_2427324B4() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_242732AE4();
  }

  return v9 & 1;
}

uint64_t sub_2426ECFD8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_242732484();

  *a2 = v5;
  return result;
}

uint64_t sub_2426ED020@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_2427324B4();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_2426ED05C(uint64_t a1, int a2)
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

uint64_t sub_2426ED07C(uint64_t result, int a2, int a3)
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

void sub_2426ED0E0(uint64_t a1, unint64_t *a2)
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

uint64_t sub_2426ED12C(uint64_t a1)
{
  v2 = sub_2426ED22C(&qword_27ECBAA60);
  v3 = sub_2426ED22C(&qword_27ECBAA68);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2426ED22C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for URLResourceKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2426ED2A8()
{
  v0 = sub_242732244();
  __swift_allocate_value_buffer(v0, qword_27ECBAAD0);
  __swift_project_value_buffer(v0, qword_27ECBAAD0);
  return sub_242732234();
}

uint64_t FileDownloader.Error.hashValue.getter()
{
  sub_242732BA4();
  MEMORY[0x245D176B0](0);
  return sub_242732BD4();
}

uint64_t sub_2426ED3A8()
{
  sub_242732BA4();
  MEMORY[0x245D176B0](0);
  return sub_242732BD4();
}

uint64_t sub_2426ED414()
{
  sub_242732BA4();
  MEMORY[0x245D176B0](0);
  return sub_242732BD4();
}

uint64_t sub_2426ED464@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v4 = sub_242731D54();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*__swift_project_boxed_opaque_existential_1((v2 + 64), *(v2 + 88)) + 32);
  os_unfair_lock_lock((v9 + 32));
  if (*(v9 + 16))
  {
    v10 = *(v9 + 24);
    v11 = *(v9 + 16);
    swift_getObjectType();
    v12 = 0;
    if ((sub_242719E58() & 1) != 0 && v10)
    {
      v12 = [v10 dataPlanTier] > 2;
    }
  }

  else
  {
    v12 = 0;
  }

  os_unfair_lock_unlock((v9 + 32));
  (*(v5 + 16))(v8, a1, v4);
  sub_242731D44();
  sub_242731D44();
  v13 = sub_242731CF4();
  [v13 mutableCopy];

  sub_242732894();
  swift_unknownObjectRelease();
  sub_2426F10AC(0, &qword_27ECBAB00, 0x277CCAB70);
  swift_dynamicCast();
  v14 = v17;
  [v17 _setAllowsUCA_];
  sub_242731D14();

  return (*(v5 + 8))(v8, v4);
}

id static FileDownloader.defaultURLSessionConfiguration.getter()
{
  v0 = [objc_opt_self() defaultSessionConfiguration];
  v1 = sub_242732484();
  [v0 set:v1 sourceApplicationBundleIdentifier:?];

  return v0;
}

uint64_t FileDownloader.data(for:)(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = sub_242731D54();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2426ED800, 0, 0);
}

uint64_t sub_2426ED800()
{
  v1 = v0[6];
  if (v1[2])
  {
    v2 = v0[9];
    v3 = v1[1];
    sub_2426ED464(v0[5], v2);
    v4 = swift_task_alloc();
    v0[10] = v4;
    *(v4 + 16) = v2;
    v5 = *__swift_project_boxed_opaque_existential_1(v1 + 3, v1[6]);
    v6 = swift_task_alloc();
    v0[11] = v6;
    *v6 = v0;
    v6[1] = sub_2426EDA24;

    return sub_2426EEF48((v0 + 2), &unk_242736B80, v4);
  }

  else
  {
    if (qword_27ECBA950 != -1)
    {
      swift_once();
    }

    v8 = sub_242732244();
    __swift_project_value_buffer(v8, qword_27ECBAAD0);
    v9 = sub_242732224();
    v10 = sub_2427327D4();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2426EB000, v9, v10, "Failed to retrieve IMPU", v11, 2u);
      MEMORY[0x245D17E30](v11, -1, -1);
    }

    sub_2426EDCAC();
    swift_allocError();
    swift_willThrow();
    v12 = v0[9];

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_2426EDA24()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_2426EDBE4;
  }

  else
  {
    v3 = sub_2426EDB38;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2426EDB38()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[7];
  v4 = v0[8];

  v5 = v0[2];
  v6 = v0[3];
  v7 = v0[4];
  (*(v4 + 8))(v2, v3);

  v8 = v0[1];

  return v8(v5, v6, v7);
}

uint64_t sub_2426EDBE4()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[7];
  v4 = v0[8];

  (*(v4 + 8))(v2, v3);
  v5 = v0[12];
  v6 = v0[9];

  v7 = v0[1];

  return v7();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_2426EDCAC()
{
  result = qword_27ECBAAE8;
  if (!qword_27ECBAAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECBAAE8);
  }

  return result;
}

uint64_t sub_2426EDD00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_2426EDD24, 0, 0);
}

uint64_t sub_2426EDD24()
{
  v1 = *__swift_project_boxed_opaque_existential_1(*(v0 + 24), *(*(v0 + 24) + 24));
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_2426EDDC8;
  v3 = *(v0 + 32);

  return sub_242727A2C(v3);
}

uint64_t sub_2426EDDC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  v9 = *(*v4 + 40);
  v10 = *v4;

  if (v3)
  {
    v11 = *(v10 + 8);

    return v11();
  }

  else
  {
    v8[6] = a3;
    v8[7] = a2;
    v8[8] = a1;

    return MEMORY[0x2822009F8](sub_2426EDF2C, 0, 0);
  }
}

uint64_t sub_2426EDF2C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);
  *v2 = vextq_s8(*(v0 + 56), *(v0 + 56), 8uLL);
  v2[1].i64[0] = v1;
  return (*(v0 + 8))();
}

uint64_t FileDownloader.download(for:destinationFileURL:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_242731D54();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2426EE020, 0, 0);
}

uint64_t sub_2426EE020()
{
  v1 = v0[4];
  if (v1[2])
  {
    v2 = v0[7];
    v3 = v0[3];
    v4 = v1[1];
    sub_2426ED464(v0[2], v2);
    v5 = swift_task_alloc();
    v0[8] = v5;
    *(v5 + 16) = v2;
    *(v5 + 24) = v3;
    v6 = *__swift_project_boxed_opaque_existential_1(v1 + 3, v1[6]);
    v7 = swift_task_alloc();
    v0[9] = v7;
    *v7 = v0;
    v7[1] = sub_2426EE248;

    return sub_2426EFB80(&unk_242736BA0, v5);
  }

  else
  {
    if (qword_27ECBA950 != -1)
    {
      swift_once();
    }

    v9 = sub_242732244();
    __swift_project_value_buffer(v9, qword_27ECBAAD0);
    v10 = sub_242732224();
    v11 = sub_2427327D4();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2426EB000, v10, v11, "Failed to retrieve IMPU", v12, 2u);
      MEMORY[0x245D17E30](v12, -1, -1);
    }

    sub_2426EDCAC();
    swift_allocError();
    swift_willThrow();
    v13 = v0[7];

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_2426EE248(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v7 = sub_2426EE404;
  }

  else
  {
    *(v4 + 88) = a1;
    v7 = sub_2426EE370;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2426EE370()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[6];

  (*(v4 + 8))(v2, v3);

  v5 = v0[1];
  v6 = v0[11];

  return v5(v6);
}

uint64_t sub_2426EE404()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[6];

  (*(v4 + 8))(v2, v3);
  v5 = v0[10];
  v6 = v0[7];

  v7 = v0[1];

  return v7();
}

uint64_t sub_2426EE494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_2426EE4B8, 0, 0);
}

uint64_t sub_2426EE4B8()
{
  v1 = *__swift_project_boxed_opaque_existential_1(*(v0 + 24), *(*(v0 + 24) + 24));
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_2426EE55C;
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);

  return sub_2427271A4(v4, v3);
}

uint64_t sub_2426EE55C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 56) = a1;

    return MEMORY[0x2822009F8](sub_2426EE6A8, 0, 0);
  }
}

void FileDownloader.init(subscriptionID:systemConfiguration:urlSession:)(char *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = sub_24271AB44();
  v9 = type metadata accessor for NetworkMonitor();
  v21[3] = v9;
  v21[4] = &off_2855021F0;
  v21[0] = v8;
  sub_2426F0FFC(v21, v20);
  sub_2426F0C8C(v20, v19);
  v10 = a2;
  v11 = a3;

  v12 = sub_2426F09DC(v7, v10, v11, v19);
  sub_2426F0CE8(v20);
  __swift_destroy_boxed_opaque_existential_1Tm(v21);
  v13 = [v10 identity];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 impus];

    v16 = sub_242732684();
    if (v16[2])
    {
      v18 = v16[4];
      v17 = v16[5];
    }

    else
    {

      v18 = 0;
      v17 = 0;
    }
  }

  else
  {
    v18 = 0;
    v17 = 0;
  }

  *(a4 + 48) = type metadata accessor for ManagedURLSessionAuthenticator();
  *(a4 + 56) = &off_285502120;
  *(a4 + 24) = v12;
  *(a4 + 88) = v9;
  *(a4 + 96) = &off_2855021F0;

  *(a4 + 64) = v8;
  *a4 = v7;
  *(a4 + 8) = v18;
  *(a4 + 16) = v17;
}

void FileDownloader.init(subscriptionID:systemConfiguration:)(char *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = [objc_opt_self() defaultSessionConfiguration];
  v7 = sub_242732484();
  [v6 set:v7 sourceApplicationBundleIdentifier:?];

  v8 = [objc_opt_self() sessionWithConfiguration_];
  v9 = sub_24271AB44();
  v10 = type metadata accessor for NetworkMonitor();
  v22[3] = v10;
  v22[4] = &off_2855021F0;
  v22[0] = v9;
  sub_2426F0FFC(v22, v21);
  sub_2426F0C8C(v21, v20);
  v11 = a2;
  v12 = v8;

  v13 = sub_2426F09DC(v5, v11, v12, v20);
  sub_2426F0CE8(v21);
  __swift_destroy_boxed_opaque_existential_1Tm(v22);
  v14 = [v11 identity];
  if (v14)
  {
    v15 = v14;
    v16 = [v14 impus];

    v17 = sub_242732684();
    if (v17[2])
    {
      v19 = v17[4];
      v18 = v17[5];
    }

    else
    {

      v19 = 0;
      v18 = 0;
    }
  }

  else
  {
    v19 = 0;
    v18 = 0;
  }

  *(a3 + 48) = type metadata accessor for ManagedURLSessionAuthenticator();
  *(a3 + 56) = &off_285502120;
  *(a3 + 24) = v13;
  *(a3 + 88) = v10;
  *(a3 + 96) = &off_2855021F0;

  *(a3 + 64) = v9;
  *a3 = v5;
  *(a3 + 8) = v19;
  *(a3 + 16) = v18;
}

uint64_t static FileDownloader.makeDownloader(subscriptionID:)(uint64_t a1, _BYTE *a2)
{
  *(v2 + 136) = a1;
  *(v2 + 177) = *a2;
  return MEMORY[0x2822009F8](sub_2426EEAA8, 0, 0);
}

uint64_t sub_2426EEAA8()
{
  v1 = *(v0 + 177);
  *(v0 + 144) = [objc_allocWithZone(MEMORY[0x277CC37B0]) initWithQueue_];
  *(v0 + 176) = v1;
  v2 = swift_task_alloc();
  *(v0 + 152) = v2;
  *v2 = v0;
  v2[1] = sub_2426EEB70;

  return sub_2427036BC((v0 + 176));
}

uint64_t sub_2426EEB70(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 152);
  v7 = *v2;
  *(v3 + 160) = a1;
  *(v3 + 168) = v1;

  if (v1)
  {
    v5 = sub_2426EEEE4;
  }

  else
  {
    v5 = sub_2426EEC84;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2426EEC84()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 177);
  v3 = [objc_opt_self() defaultSessionConfiguration];
  v4 = sub_242732484();
  [v3 set:v4 sourceApplicationBundleIdentifier:?];

  v5 = [objc_opt_self() sessionWithConfiguration_];
  v6 = sub_24271AB44();
  v7 = type metadata accessor for NetworkMonitor();
  *(v0 + 16) = v6;
  *(v0 + 40) = v7;
  *(v0 + 48) = &off_2855021F0;
  sub_2426F0FFC(v0 + 16, v0 + 56);
  sub_2426F0C8C(v0 + 56, v0 + 96);
  v8 = v1;
  v9 = v5;

  v22 = sub_2426F09DC(v2, v8, v9, v0 + 96);
  sub_2426F0CE8(v0 + 56);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v10 = [v8 identity];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 impus];

    v13 = sub_242732684();
    if (v13[2])
    {
      v15 = v13[4];
      v14 = v13[5];

      goto LABEL_6;
    }
  }

  v15 = 0;
  v14 = 0;
LABEL_6:
  v16 = *(v0 + 160);
  v17 = *(v0 + 177);
  v18 = *(v0 + 136);
  v19 = *(v0 + 144);
  *(v18 + 48) = type metadata accessor for ManagedURLSessionAuthenticator();
  *(v18 + 56) = &off_285502120;
  *(v18 + 24) = v22;
  *(v18 + 88) = v7;
  *(v18 + 96) = &off_2855021F0;

  *(v18 + 64) = v6;
  *v18 = v17;
  *(v18 + 8) = v15;
  *(v18 + 16) = v14;
  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_2426EEEE4()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 168);

  return v1();
}

uint64_t sub_2426EEF48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[44] = a3;
  v4[45] = v3;
  v4[42] = a1;
  v4[43] = a2;
  return MEMORY[0x2822009F8](sub_2426EEF6C, v3, 0);
}

uint64_t sub_2426EEF6C()
{
  v1 = *(v0 + 360);
  v2 = *(v1 + 160);
  *(v0 + 408) = *(v1 + 112);
  v3 = swift_task_alloc();
  *(v0 + 368) = v3;
  *v3 = v0;
  v3[1] = sub_2426EF010;

  return sub_2427036BC((v0 + 408));
}

uint64_t sub_2426EF010(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 368);
  v8 = *v2;
  v3[47] = a1;
  v3[48] = v1;

  v5 = v3[45];
  if (v1)
  {
    v6 = sub_2426EF96C;
  }

  else
  {
    v6 = sub_2426EF128;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2426EF128()
{
  v75 = v0;
  v1 = [*(v0 + 376) fileTransferCapabilities];
  if (v1 && (v2 = v1, v3 = [v1 userName], v2, v3))
  {
    v70 = sub_2427324B4();
    v5 = v4;
  }

  else
  {
    v70 = 0;
    v5 = 0;
  }

  v6 = [*(v0 + 376) fileTransferCapabilities];
  if (v6 && (v7 = v6, v8 = [v6 password], v7, v8))
  {
    v68 = sub_2427324B4();
    v10 = v9;
  }

  else
  {
    v68 = 0;
    v10 = 0;
  }

  v11 = *(v0 + 360);
  v12 = [*(v0 + 376) networkAttributionBundleID];
  v13 = sub_2427324B4();
  v15 = v14;

  v71 = v11;
  v16 = *(v11 + 248);

  v17 = [v16 networkAttributionBundleID];
  v18 = sub_2427324B4();
  v20 = v19;

  if (v13 == v18 && v15 == v20)
  {

    swift_bridgeObjectRelease_n();
    v23 = 0;
    v24 = v71;
    goto LABEL_16;
  }

  v22 = sub_242732AE4();

  if (v22)
  {

    v23 = 0;
    v24 = v71;
LABEL_16:
    v25 = v5;
    goto LABEL_23;
  }

  v25 = v5;
  if (qword_27ECBA990 != -1)
  {
    swift_once();
  }

  v26 = sub_242732244();
  __swift_project_value_buffer(v26, qword_27ECBB438);

  v27 = sub_242732224();
  v28 = sub_2427327B4();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v74 = v30;
    *v29 = 136315138;
    v31 = sub_2426FBA6C(v13, v15, &v74);

    *(v29 + 4) = v31;
    _os_log_impl(&dword_2426EB000, v27, v28, "Network attribution ID has changed to %s, will reset authenticator", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    MEMORY[0x245D17E30](v30, -1, -1);
    MEMORY[0x245D17E30](v29, -1, -1);
  }

  else
  {
  }

  v24 = v71;
  v32 = *(v0 + 376);
  v33 = *(v0 + 360);
  swift_beginAccess();
  sub_2426F0FFC(v33 + 168, v0 + 56);
  v34 = *(v0 + 80);
  v35 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_1((v0 + 56), v34);
  v36 = (*(v35 + 32))(v34, v35);
  sub_24271AEA8(v32);
  v37 = sub_242732484();

  [v36 set:v37 sourceApplicationBundleIdentifier:?];

  v38 = [objc_opt_self() sessionWithConfiguration_];
  *(v0 + 40) = sub_2426F10AC(0, &qword_27ECBAAF8, 0x277CCAD30);
  *(v0 + 48) = &off_2855013B8;

  *(v0 + 16) = v38;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1Tm((v33 + 168));
  sub_2426F0FE4((v0 + 16), v33 + 168);
  swift_endAccess();
  v23 = 1;
LABEL_23:
  v39 = [*(v24 + 248) fileTransferCapabilities];
  if (v39)
  {
    v40 = v39;
    v41 = [v39 userName];

    if (v41)
    {
      v42 = sub_2427324B4();
      v44 = v43;

      if (!v25)
      {
        goto LABEL_26;
      }

LABEL_29:
      if (!v44)
      {
        goto LABEL_27;
      }

      if (v70 == v42 && v25 == v44)
      {
      }

      else
      {
        v45 = sub_242732AE4();

        if ((v45 & 1) == 0)
        {
          goto LABEL_46;
        }
      }

      goto LABEL_35;
    }
  }

  v42 = 0;
  v44 = 0;
  if (v25)
  {
    goto LABEL_29;
  }

LABEL_26:
  if (v44)
  {
LABEL_27:

LABEL_46:

LABEL_47:
    if (qword_27ECBA990 != -1)
    {
      swift_once();
    }

    v52 = sub_242732244();
    __swift_project_value_buffer(v52, qword_27ECBB438);
    v53 = sub_242732224();
    v54 = sub_2427327B4();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_2426EB000, v53, v54, "Credentials have changed, resetting authenticator", v55, 2u);
      MEMORY[0x245D17E30](v55, -1, -1);
    }

    goto LABEL_52;
  }

LABEL_35:
  v46 = [*(v24 + 248) fileTransferCapabilities];
  if (v46 && (v47 = v46, v48 = [v46 password], v47, v48))
  {
    v49 = sub_2427324B4();
    v51 = v50;

    if (!v10)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v49 = 0;
    v51 = 0;
    if (!v10)
    {
LABEL_38:
      if (v51)
      {
        goto LABEL_46;
      }

      goto LABEL_57;
    }
  }

  if (!v51)
  {
    goto LABEL_46;
  }

  if (v69 == v49 && v10 == v51)
  {

    if ((v23 & 1) == 0)
    {
      goto LABEL_53;
    }

LABEL_52:
    v56 = *(v0 + 376);
    v57 = *(v0 + 360);
    v58 = *(v24 + 248);
    *(v24 + 248) = v56;
    v59 = v56;

    __swift_project_boxed_opaque_existential_1((v57 + 120), *(v57 + 144));
    v73 = *(v57 + 112);
    swift_beginAccess();
    sub_2426F0FFC(v57 + 168, v0 + 136);
    sub_2427193DC(&v73, v59, v0 + 136, (v0 + 96));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 136));
    swift_beginAccess();
    __swift_destroy_boxed_opaque_existential_1Tm((v57 + 208));
    sub_2426F0FE4((v0 + 96), v57 + 208);
    swift_endAccess();
    goto LABEL_53;
  }

  v67 = sub_242732AE4();

  if ((v67 & 1) == 0)
  {
    goto LABEL_47;
  }

LABEL_57:
  if (v23)
  {
    goto LABEL_52;
  }

LABEL_53:
  v60 = *(v0 + 360);
  v61 = *(v0 + 344);
  swift_beginAccess();
  sub_2426F0FFC(v60 + 208, v0 + 176);
  v72 = (v61 + *v61);
  v62 = v61[1];
  v63 = swift_task_alloc();
  *(v0 + 392) = v63;
  *v63 = v0;
  v63[1] = sub_2426EF984;
  v64 = *(v0 + 352);
  v65 = *(v0 + 336);

  return v72(v65, v0 + 176);
}

uint64_t sub_2426EF984()
{
  v2 = *v1;
  v3 = (*v1)[49];
  v4 = *v1;
  v2[50] = v0;

  __swift_destroy_boxed_opaque_existential_1Tm(v2 + 22);
  v5 = v2[45];
  if (v0)
  {
    v6 = sub_2426EFB1C;
  }

  else
  {
    v6 = sub_2426EFAB8;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2426EFAB8()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2426EFB1C()
{
  v1 = *(v0 + 400);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2426EFB80(uint64_t a1, uint64_t a2)
{
  v3[44] = a2;
  v3[45] = v2;
  v3[43] = a1;
  return MEMORY[0x2822009F8](sub_2426EFBA4, v2, 0);
}

uint64_t sub_2426EFBA4()
{
  v1 = *(v0 + 360);
  v2 = *(v1 + 160);
  *(v0 + 408) = *(v1 + 112);
  v3 = swift_task_alloc();
  *(v0 + 368) = v3;
  *v3 = v0;
  v3[1] = sub_2426EFC48;

  return sub_2427036BC((v0 + 408));
}

uint64_t sub_2426EFC48(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 368);
  v8 = *v2;
  v3[47] = a1;
  v3[48] = v1;

  v5 = v3[45];
  if (v1)
  {
    v6 = sub_2426EF96C;
  }

  else
  {
    v6 = sub_2426EFD60;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2426EFD60()
{
  v74 = v0;
  v1 = [*(v0 + 376) fileTransferCapabilities];
  if (v1 && (v2 = v1, v3 = [v1 userName], v2, v3))
  {
    v69 = sub_2427324B4();
    v5 = v4;
  }

  else
  {
    v69 = 0;
    v5 = 0;
  }

  v6 = [*(v0 + 376) fileTransferCapabilities];
  if (v6 && (v7 = v6, v8 = [v6 password], v7, v8))
  {
    v67 = sub_2427324B4();
    v10 = v9;
  }

  else
  {
    v67 = 0;
    v10 = 0;
  }

  v11 = *(v0 + 360);
  v12 = [*(v0 + 376) networkAttributionBundleID];
  v13 = sub_2427324B4();
  v15 = v14;

  v70 = v11;
  v16 = *(v11 + 248);

  v17 = [v16 networkAttributionBundleID];
  v18 = sub_2427324B4();
  v20 = v19;

  if (v13 == v18 && v15 == v20)
  {

    swift_bridgeObjectRelease_n();
    v23 = 0;
    v24 = v70;
    goto LABEL_16;
  }

  v22 = sub_242732AE4();

  if (v22)
  {

    v23 = 0;
    v24 = v70;
LABEL_16:
    v25 = v5;
    goto LABEL_23;
  }

  v25 = v5;
  if (qword_27ECBA990 != -1)
  {
    swift_once();
  }

  v26 = sub_242732244();
  __swift_project_value_buffer(v26, qword_27ECBB438);

  v27 = sub_242732224();
  v28 = sub_2427327B4();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v73 = v30;
    *v29 = 136315138;
    v31 = sub_2426FBA6C(v13, v15, &v73);

    *(v29 + 4) = v31;
    _os_log_impl(&dword_2426EB000, v27, v28, "Network attribution ID has changed to %s, will reset authenticator", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    MEMORY[0x245D17E30](v30, -1, -1);
    MEMORY[0x245D17E30](v29, -1, -1);
  }

  else
  {
  }

  v24 = v70;
  v32 = *(v0 + 376);
  v33 = *(v0 + 360);
  swift_beginAccess();
  sub_2426F0FFC(v33 + 168, v0 + 56);
  v34 = *(v0 + 80);
  v35 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_1((v0 + 56), v34);
  v36 = (*(v35 + 32))(v34, v35);
  sub_24271AEA8(v32);
  v37 = sub_242732484();

  [v36 set:v37 sourceApplicationBundleIdentifier:?];

  v38 = [objc_opt_self() sessionWithConfiguration_];
  *(v0 + 40) = sub_2426F10AC(0, &qword_27ECBAAF8, 0x277CCAD30);
  *(v0 + 48) = &off_2855013B8;

  *(v0 + 16) = v38;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1Tm((v33 + 168));
  sub_2426F0FE4((v0 + 16), v33 + 168);
  swift_endAccess();
  v23 = 1;
LABEL_23:
  v39 = [*(v24 + 248) fileTransferCapabilities];
  if (v39)
  {
    v40 = v39;
    v41 = [v39 userName];

    if (v41)
    {
      v42 = sub_2427324B4();
      v44 = v43;

      if (!v25)
      {
        goto LABEL_26;
      }

LABEL_29:
      if (!v44)
      {
        goto LABEL_27;
      }

      if (v69 == v42 && v25 == v44)
      {
      }

      else
      {
        v45 = sub_242732AE4();

        if ((v45 & 1) == 0)
        {
          goto LABEL_46;
        }
      }

      goto LABEL_35;
    }
  }

  v42 = 0;
  v44 = 0;
  if (v25)
  {
    goto LABEL_29;
  }

LABEL_26:
  if (v44)
  {
LABEL_27:

LABEL_46:

LABEL_47:
    if (qword_27ECBA990 != -1)
    {
      swift_once();
    }

    v52 = sub_242732244();
    __swift_project_value_buffer(v52, qword_27ECBB438);
    v53 = sub_242732224();
    v54 = sub_2427327B4();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_2426EB000, v53, v54, "Credentials have changed, resetting authenticator", v55, 2u);
      MEMORY[0x245D17E30](v55, -1, -1);
    }

    goto LABEL_52;
  }

LABEL_35:
  v46 = [*(v24 + 248) fileTransferCapabilities];
  if (v46 && (v47 = v46, v48 = [v46 password], v47, v48))
  {
    v49 = sub_2427324B4();
    v51 = v50;

    if (!v10)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v49 = 0;
    v51 = 0;
    if (!v10)
    {
LABEL_38:
      if (v51)
      {
        goto LABEL_46;
      }

      goto LABEL_57;
    }
  }

  if (!v51)
  {
    goto LABEL_46;
  }

  if (v68 == v49 && v10 == v51)
  {

    if ((v23 & 1) == 0)
    {
      goto LABEL_53;
    }

LABEL_52:
    v56 = *(v0 + 376);
    v57 = *(v0 + 360);
    v58 = *(v24 + 248);
    *(v24 + 248) = v56;
    v59 = v56;

    __swift_project_boxed_opaque_existential_1((v57 + 120), *(v57 + 144));
    v72 = *(v57 + 112);
    swift_beginAccess();
    sub_2426F0FFC(v57 + 168, v0 + 136);
    sub_2427193DC(&v72, v59, v0 + 136, (v0 + 96));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 136));
    swift_beginAccess();
    __swift_destroy_boxed_opaque_existential_1Tm((v57 + 208));
    sub_2426F0FE4((v0 + 96), v57 + 208);
    swift_endAccess();
    goto LABEL_53;
  }

  v66 = sub_242732AE4();

  if ((v66 & 1) == 0)
  {
    goto LABEL_47;
  }

LABEL_57:
  if (v23)
  {
    goto LABEL_52;
  }

LABEL_53:
  v60 = *(v0 + 360);
  v61 = *(v0 + 344);
  swift_beginAccess();
  sub_2426F0FFC(v60 + 208, v0 + 176);
  v71 = (v61 + *v61);
  v62 = v61[1];
  v63 = swift_task_alloc();
  *(v0 + 392) = v63;
  *v63 = v0;
  v63[1] = sub_2426F05A4;
  v64 = *(v0 + 352);

  return v71(v0 + 336, v0 + 176);
}

uint64_t sub_2426F05A4()
{
  v2 = *v1;
  v3 = (*v1)[49];
  v4 = *v1;
  v2[50] = v0;

  __swift_destroy_boxed_opaque_existential_1Tm(v2 + 22);
  v5 = v2[45];
  if (v0)
  {
    v6 = sub_2426EFB1C;
  }

  else
  {
    v6 = sub_2426F06D8;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2426F06D8()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_2426F0740(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2426F07F0;

  return sub_2426EDD00(a1, a2, v6);
}

uint64_t sub_2426F07F0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_2426F0928(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2426F1158;

  return sub_2426EE494(a1, a2, v7, v6);
}

uint64_t sub_2426F09DC(char a1, void *a2, void *a3, uint64_t a4)
{
  v30[3] = &type metadata for ManagedURLSessionAuthenticator.DefaultFactory;
  v30[4] = &off_285502100;
  v8 = swift_allocObject();
  v30[0] = v8;
  v9 = *(a4 + 16);
  *(v8 + 16) = *a4;
  *(v8 + 32) = v9;
  *(v8 + 48) = *(a4 + 32);
  type metadata accessor for ManagedURLSessionAuthenticator();
  v10 = swift_allocObject();
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v30, &type metadata for ManagedURLSessionAuthenticator.DefaultFactory);
  v12 = *(off_2855020E0 + 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14);
  v28 = &type metadata for ManagedURLSessionAuthenticator.DefaultFactory;
  v29 = &off_285502100;
  v16 = swift_allocObject();
  v27[0] = v16;
  v17 = *(v14 + 1);
  *(v16 + 16) = *v14;
  *(v16 + 32) = v17;
  *(v16 + 48) = *(v14 + 4);
  swift_defaultActor_initialize();
  v18 = a1 & 1;
  *(v10 + 112) = a1 & 1;
  sub_2426F0FFC(v27, v10 + 120);
  *(v10 + 160) = [objc_allocWithZone(MEMORY[0x277CC37B0]) initWithQueue_];
  v19 = [a3 configuration];

  sub_24271AEA8(a2);
  v20 = sub_242732484();

  [v19 set:v20 sourceApplicationBundleIdentifier:?];

  v21 = [objc_opt_self() sessionWithConfiguration_];
  v26[3] = sub_2426F10AC(0, &qword_27ECBAAF8, 0x277CCAD30);
  v26[4] = &off_2855013B8;

  v26[0] = v21;
  sub_2426F0FFC(v26, v10 + 168);
  __swift_project_boxed_opaque_existential_1(v27, v28);
  v24 = v18;
  sub_2427193DC(&v24, a2, v26, v25);
  __swift_destroy_boxed_opaque_existential_1Tm(v26);
  sub_2426F0FE4(v25, v10 + 208);
  *(v10 + 248) = a2;
  __swift_destroy_boxed_opaque_existential_1Tm(v27);
  __swift_destroy_boxed_opaque_existential_1Tm(v30);
  return v10;
}

unint64_t sub_2426F0D40()
{
  result = qword_27ECBAAF0;
  if (!qword_27ECBAAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECBAAF0);
  }

  return result;
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_2426F0DC0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2426F0E08(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FileDownloader.Error(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for FileDownloader.Error(_WORD *result, int a2, int a3)
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

uint64_t sub_2426F0F5C()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
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

uint64_t sub_2426F0FE4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_2426F0FFC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
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

uint64_t sub_2426F10AC(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_2426F115C()
{
  v0 = sub_242732244();
  __swift_allocate_value_buffer(v0, qword_27ECBAB08);
  __swift_project_value_buffer(v0, qword_27ECBAB08);
  return sub_242732234();
}

uint64_t FileTransferController.Error.hashValue.getter()
{
  v1 = *v0;
  sub_242732BA4();
  MEMORY[0x245D176B0](v1);
  return sub_242732BD4();
}

uint64_t sub_2426F1278()
{
  v1 = *v0;
  sub_242732BA4();
  MEMORY[0x245D176B0](v1);
  return sub_242732BD4();
}

uint64_t sub_2426F12EC()
{
  v1 = *v0;
  sub_242732BA4();
  MEMORY[0x245D176B0](v1);
  return sub_242732BD4();
}

id static FileTransferController.defaultURLSessionConfiguration.getter()
{
  v0 = [objc_opt_self() defaultSessionConfiguration];
  v1 = sub_242732484();
  [v0 set:v1 sourceApplicationBundleIdentifier:?];

  return v0;
}

uint64_t sub_2426F13AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAB20, &unk_242737540) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v6 = type metadata accessor for FileUploadRequest();
  v4[7] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2426F147C, 0, 0);
}

uint64_t sub_2426F147C()
{
  v1 = v0[8];
  v2 = v0[6];
  v3 = v0[3];
  v18 = v0[4];
  v20 = v0[7];
  v4 = sub_242731F34();
  v5 = *(v4 - 8);
  (*(v5 + 16))(v1, v3, v4);
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAB28, &qword_242736CE0) - 8) + 64) + 15;
  v17 = swift_task_alloc();
  v7 = sub_2427321D4();
  v8 = *(*(v7 - 8) + 56);
  v8(v17, 1, 1, v7);
  sub_2426FC2F8(v18, v2, &qword_27ECBAB20, &unk_242737540);
  v19 = swift_task_alloc();
  v8(v19, 1, 1, v7);
  v9 = v20[5];
  v8(v1 + v9, 1, 1, v7);
  v10 = v20[6];
  (*(v5 + 56))(v1 + v10, 1, 1, v4);
  v11 = v20[7];
  v8(v1 + v11, 1, 1, v7);
  sub_2426FDD98(v17, v1 + v9, &qword_27ECBAB28, &qword_242736CE0);
  sub_2426FDD98(v2, v1 + v10, &qword_27ECBAB20, &unk_242737540);
  sub_2426FDD98(v19, v1 + v11, &qword_27ECBAB28, &qword_242736CE0);
  *(v1 + v20[8]) = 0;

  v12 = swift_task_alloc();
  v0[9] = v12;
  *v12 = v0;
  v12[1] = sub_2426F173C;
  v13 = v0[8];
  v14 = v0[5];
  v15 = v0[2];

  return sub_2426F197C(v15, v13);
}

uint64_t sub_2426F173C()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *v1;
  v4[10] = v0;

  sub_2426FDE00(v3, type metadata accessor for FileUploadRequest);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2426F18C4, 0, 0);
  }

  else
  {
    v5 = v4[8];
    v6 = v4[6];

    v7 = v4[1];

    return v7();
  }
}

uint64_t sub_2426F18C4()
{
  v1 = v0[8];
  v2 = v0[6];

  v3 = v0[1];
  v4 = v0[10];

  return v3();
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

uint64_t sub_2426F197C(uint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3[44] = a2;
  v3[45] = v2;
  v3[43] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAB30, &unk_242736CF0) - 8) + 64) + 15;
  v3[46] = swift_task_alloc();
  v5 = sub_2427320F4();
  v3[47] = v5;
  v6 = *(v5 - 8);
  v3[48] = v6;
  v7 = *(v6 + 64) + 15;
  v3[49] = swift_task_alloc();
  v8 = *(*(sub_2427324F4() - 8) + 64) + 15;
  v3[50] = swift_task_alloc();
  v9 = sub_242731D74();
  v3[51] = v9;
  v10 = *(v9 - 8);
  v3[52] = v10;
  v11 = *(v10 + 64) + 15;
  v3[53] = swift_task_alloc();
  v12 = sub_242732154();
  v3[54] = v12;
  v13 = *(v12 - 8);
  v3[55] = v13;
  v14 = *(v13 + 64) + 15;
  v3[56] = swift_task_alloc();
  v3[57] = swift_task_alloc();
  v15 = sub_242732024();
  v3[58] = v15;
  v16 = *(v15 - 8);
  v3[59] = v16;
  v17 = *(v16 + 64) + 15;
  v3[60] = swift_task_alloc();
  v3[61] = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAB38, &qword_242738900) - 8) + 64) + 15;
  v3[62] = swift_task_alloc();
  v3[63] = swift_task_alloc();
  v3[64] = swift_task_alloc();
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAB20, &unk_242737540) - 8) + 64) + 15;
  v3[65] = swift_task_alloc();
  v3[66] = swift_task_alloc();
  v3[67] = swift_task_alloc();
  v3[68] = swift_task_alloc();
  v3[69] = swift_task_alloc();
  v3[70] = swift_task_alloc();
  v3[71] = swift_task_alloc();
  v20 = sub_242731F34();
  v3[72] = v20;
  v21 = *(v20 - 8);
  v3[73] = v21;
  v22 = *(v21 + 64) + 15;
  v3[74] = swift_task_alloc();
  v3[75] = swift_task_alloc();
  v3[76] = swift_task_alloc();
  v3[77] = swift_task_alloc();
  v3[78] = swift_task_alloc();
  v3[79] = swift_task_alloc();
  v3[80] = swift_task_alloc();
  v3[81] = swift_task_alloc();
  v3[82] = swift_task_alloc();
  v3[83] = swift_task_alloc();
  v3[84] = swift_task_alloc();
  v3[85] = swift_task_alloc();
  v3[86] = swift_task_alloc();
  v3[87] = swift_task_alloc();
  v23 = sub_242731D54();
  v3[88] = v23;
  v24 = *(v23 - 8);
  v3[89] = v24;
  v25 = *(v24 + 64) + 15;
  v3[90] = swift_task_alloc();
  v26 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_2426F1E20, 0, 0);
}

uint64_t sub_2426F1E20()
{
  v219 = v0;
  v218[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 696);
  v200 = v1;
  v205 = *(v0 + 688);
  v2 = *(v0 + 584);
  v3 = *(v0 + 576);
  v4 = *(v0 + 568);
  v186 = v4;
  v209 = *(v0 + 560);
  v182 = *(v0 + 512);
  v190 = *(v0 + 504);
  v5 = *(v0 + 432);
  v6 = *(v0 + 440);
  v7 = *(v0 + 352);
  v175 = *(v0 + 360) + OBJC_IVAR____TtC15CTLazuliSupport22FileTransferController_configuration;
  sub_2426F4F80(v175, 1, *(v0 + 720));
  v8 = *(v2 + 16);
  v8(v1, v7, v3);
  v9 = type metadata accessor for FileUploadRequest();
  v10 = v9[6];
  *(v0 + 816) = v10;
  sub_2426FC2F8(v7 + v10, v4, &qword_27ECBAB20, &unk_242737540);
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAB28, &qword_242736CE0) - 8) + 64) + 15;
  v12 = swift_task_alloc();
  *(v0 + 728) = v12;
  v13 = v9[5];
  *(v0 + 820) = v13;
  v216 = v12;
  sub_2426FC2F8(v7 + v13, v12, &qword_27ECBAB28, &qword_242736CE0);
  v14 = swift_task_alloc();
  *(v0 + 736) = v14;
  v15 = v9[7];
  *(v0 + 824) = v15;
  v214 = v14;
  sub_2426FC2F8(v7 + v15, v14, &qword_27ECBAB28, &qword_242736CE0);
  v16 = *(v6 + 56);
  v16(v182, 1, 1, v5);
  v16(v190, 1, 1, v5);
  v17 = [objc_opt_self() defaultManager];
  *(v0 + 744) = v17;
  v8(v205, v200, v3);
  sub_2426FC2F8(v186, v209, &qword_27ECBAB20, &unk_242737540);
  v18 = MEMORY[0x277D84F90];
  *(v0 + 320) = MEMORY[0x277D84F90];
  v19 = *(v7 + v9[8]);
  *(v0 + 828) = v19;
  if (v19 != 1)
  {
    goto LABEL_13;
  }

  v187 = v16;
  v20 = *(v0 + 680);
  v21 = *(v0 + 672);
  v22 = *(v0 + 664);
  v23 = *(v0 + 584);
  v24 = *(v0 + 488);
  v25 = *(v0 + 472);
  v195 = *(v0 + 576);
  v201 = *(v0 + 464);
  v26 = [v17 temporaryDirectory];
  sub_242731EC4();

  sub_242731EB4();
  v27 = *(v23 + 8);
  v27(v21, v195);
  sub_242732014();
  sub_242732004();
  v171 = *(v25 + 8);
  v171(v24, v201);
  sub_242731EB4();

  v28 = sub_242731EA4();
  *(v0 + 328) = 0;
  v29 = v17;
  LODWORD(v22) = [v17 createDirectoryAtURL:v28 withIntermediateDirectories:1 attributes:0 error:v0 + 328];

  v30 = *(v0 + 328);
  if (v22)
  {
    v159 = v17;
    v8(*(v0 + 656), *(v0 + 664), *(v0 + 576));
    v31 = v30;
    v32 = sub_2426FB6DC(0, 1, 1, MEMORY[0x277D84F90]);
    v34 = v32[2];
    v33 = v32[3];
    v202 = v27;
    v177 = v8;
    if (v34 >= v33 >> 1)
    {
      v32 = sub_2426FB6DC(v33 > 1, v34 + 1, 1, v32);
    }

    v35 = *(v0 + 688);
    v36 = *(v0 + 664);
    v37 = *(v0 + 656);
    v38 = *(v0 + 648);
    v39 = *(v0 + 584);
    v40 = *(v0 + 576);
    v164 = *(v0 + 696);
    v167 = *(v0 + 456);
    v161 = *(v0 + 360);
    v32[2] = v34 + 1;
    v41 = *(v39 + 32);
    v39 += 32;
    v42 = (*(v39 + 48) + 32) & ~*(v39 + 48);
    v43 = *(v39 + 40);
    v44 = v32 + v42 + v43 * v34;
    v45 = v32;
    v41(v44, v37, v40);
    v196 = v45;
    *(v0 + 320) = v45;
    sub_242731EB4();
    v202(v35, v40);
    v177(v35, v38, v40);
    v46 = swift_task_alloc();
    v47 = v167;
    v168 = v46;
    sub_2426F5314(v47, v46, v164, v38);
    v153 = v42;
    v155 = v43;
    v157 = v41;
    v68 = *(v0 + 664);
    v69 = *(v0 + 584);
    v70 = *(v0 + 576);
    v71 = *(v0 + 552);
    v163 = v71;
    v166 = *(v0 + 568);
    v72 = *(v0 + 512);
    v73 = *(v0 + 456);
    v75 = *(v0 + 432);
    v74 = *(v0 + 440);
    v202(*(v0 + 648), v70);
    v202(v68, v70);
    sub_2426FED88(v72, &qword_27ECBAB38, &qword_242738900);
    sub_2426FED88(v216, &qword_27ECBAB28, &qword_242736CE0);
    v150 = *(v74 + 32);
    v150(v72, v73, v75);
    v187(v72, 0, 1, v75);
    sub_2426FEBB0(v168, v216, &qword_27ECBAB28, &qword_242736CE0);

    sub_2426FC2F8(v166, v163, &qword_27ECBAB20, &unk_242737540);
    v76 = (*(v69 + 48))(v163, 1, v70);
    v77 = *(v0 + 680);
    if (v76 == 1)
    {
      v78 = *(v0 + 552);
      v202(*(v0 + 680), *(v0 + 576));
      sub_2426FED88(v78, &qword_27ECBAB20, &unk_242737540);
LABEL_12:
      v8 = v177;
      v18 = v196;
LABEL_13:
      *(v0 + 752) = v18;
      if (qword_27ECBA958 != -1)
      {
        swift_once();
      }

      v79 = *(v0 + 696);
      v80 = *(v0 + 608);
      v81 = *(v0 + 576);
      v82 = *(v0 + 568);
      v83 = *(v0 + 544);
      v84 = sub_242732244();
      *(v0 + 760) = __swift_project_value_buffer(v84, qword_27ECBAB08);
      v179 = v8;
      v8(v80, v79, v81);
      sub_2426FC2F8(v82, v83, &qword_27ECBAB20, &unk_242737540);
      v85 = sub_242732224();
      v86 = sub_2427327B4();
      v207 = v85;
      v87 = os_log_type_enabled(v85, v86);
      v88 = *(v0 + 608);
      v89 = *(v0 + 584);
      v90 = *(v0 + 576);
      v91 = *(v0 + 544);
      if (v87)
      {
        v193 = *(v0 + 536);
        v92 = swift_slowAlloc();
        v199 = swift_slowAlloc();
        v218[0] = v199;
        *v92 = 136315394;
        sub_2426FEDE8(&qword_27ECBAB60, MEMORY[0x277CC9260]);
        v93 = sub_242732AD4();
        v95 = v94;
        v96 = *(v89 + 8);
        v96(v88, v90);
        v97 = sub_2426FBA6C(v93, v95, v218);

        *(v92 + 4) = v97;
        *(v92 + 12) = 2080;
        sub_2426FC2F8(v91, v193, &qword_27ECBAB20, &unk_242737540);
        if ((*(v89 + 48))(v193, 1, v90) == 1)
        {
          sub_2426FED88(*(v0 + 536), &qword_27ECBAB20, &unk_242737540);
          v98 = 0xE400000000000000;
          v99 = 1701736302;
        }

        else
        {
          v100 = *(v0 + 576);
          v101 = *(v0 + 536);
          v99 = sub_242731E74();
          v98 = v102;
          v96(v101, v100);
        }

        sub_2426FED88(*(v0 + 544), &qword_27ECBAB20, &unk_242737540);
        v103 = sub_2426FBA6C(v99, v98, v218);

        *(v92 + 14) = v103;
        _os_log_impl(&dword_2426EB000, v207, v86, "Attempting to upload file: %s, with thumbnail: %s", v92, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x245D17E30](v199, -1, -1);
        MEMORY[0x245D17E30](v92, -1, -1);
      }

      else
      {

        sub_2426FED88(v91, &qword_27ECBAB20, &unk_242737540);
        v96 = *(v89 + 8);
        v96(v88, v90);
      }

      *(v0 + 768) = v96;
      v104 = *(v0 + 688);
      v105 = *(v0 + 600);
      v106 = *(v0 + 576);
      v107 = *(v0 + 560);
      v108 = *(v0 + 528);
      v109 = *(v0 + 480);
      v208 = *(v0 + 720);
      v212 = *(v0 + 360);
      v110 = type metadata accessor for FileTransferController.Configuration(0);
      sub_2426F0FFC(v175 + *(v110 + 36), v0 + 16);
      sub_242732014();
      v179(v105, v104, v106);
      v111 = swift_task_alloc();
      *(v0 + 776) = v111;
      sub_2426FC2F8(v216, v111, &qword_27ECBAB28, &qword_242736CE0);
      sub_2426FC2F8(v107, v108, &qword_27ECBAB20, &unk_242737540);
      v112 = swift_task_alloc();
      *(v0 + 784) = v112;
      sub_2426FC2F8(v214, v112, &qword_27ECBAB28, &qword_242736CE0);
      v113 = swift_task_alloc();
      *(v0 + 792) = v113;
      v113[2] = v208;
      v113[3] = v0 + 16;
      v113[4] = v109;
      v113[5] = v108;
      v113[6] = v112;
      v113[7] = v105;
      v113[8] = v111;
      v114 = *__swift_project_boxed_opaque_existential_1((v212 + OBJC_IVAR____TtC15CTLazuliSupport22FileTransferController_managedAuthenticator), *(v212 + OBJC_IVAR____TtC15CTLazuliSupport22FileTransferController_managedAuthenticator + 24));
      v115 = swift_task_alloc();
      *(v0 + 800) = v115;
      *v115 = v0;
      v115[1] = sub_2426F3420;
      v116 = *MEMORY[0x277D85DE8];

      return sub_2426EEF48(v0 + 280, &unk_242736D08, v113);
    }

    v117 = *(v0 + 632);
    v118 = *(v0 + 488);
    v119 = *(v0 + 464);
    v157(*(v0 + 640), *(v0 + 552), *(v0 + 576));
    sub_242732014();
    sub_242732004();
    v171(v118, v119);
    sub_242731EB4();

    v120 = sub_242731EA4();
    *(v0 + 336) = 0;
    v121 = [v159 createDirectoryAtURL:v120 withIntermediateDirectories:1 attributes:0 error:v0 + 336];

    v122 = *(v0 + 336);
    if (v121)
    {
      v177(*(v0 + 624), *(v0 + 632), *(v0 + 576));
      v124 = v45[2];
      v123 = v196[3];
      v125 = v122;
      if (v124 >= v123 >> 1)
      {
        v196 = sub_2426FB6DC(v123 > 1, v124 + 1, 1, v196);
      }

      v173 = *(v0 + 640);
      v126 = *(v0 + 632);
      v127 = *(v0 + 624);
      v128 = *(v0 + 616);
      v129 = *(v0 + 584);
      v130 = *(v0 + 576);
      v131 = *(v0 + 560);
      v132 = *(v0 + 448);
      v170 = *(v0 + 360);
      v196[2] = v124 + 1;
      v157(v196 + v153 + v124 * v155, v127, v130);
      *(v0 + 320) = v196;
      sub_242731EB4();
      sub_2426FED88(v131, &qword_27ECBAB20, &unk_242737540);
      v177(v131, v128, v130);
      (*(v129 + 56))(v131, 0, 1, v130);
      v184 = swift_task_alloc();
      sub_2426F5314(v132, v184, v173, v128);
      v139 = *(v0 + 680);
      v140 = *(v0 + 640);
      v141 = *(v0 + 632);
      v142 = *(v0 + 576);
      v143 = *(v0 + 504);
      v174 = *(v0 + 448);
      v144 = *(v0 + 432);
      v202(*(v0 + 616), v142);
      v202(v141, v142);
      v202(v140, v142);
      v202(v139, v142);
      sub_2426FED88(v143, &qword_27ECBAB38, &qword_242738900);
      sub_2426FED88(v214, &qword_27ECBAB28, &qword_242736CE0);
      v150(v143, v174, v144);
      v187(v143, 0, 1, v144);
      sub_2426FEBB0(v184, v214, &qword_27ECBAB28, &qword_242736CE0);

      goto LABEL_12;
    }

    v213 = *(v0 + 696);
    v185 = *(v0 + 688);
    v133 = *(v0 + 680);
    v134 = *(v0 + 640);
    v135 = *(v0 + 632);
    v136 = *(v0 + 576);
    v194 = *(v0 + 568);
    v137 = *(v0 + 560);
    v189 = *(v0 + 512);
    v181 = *(v0 + 504);
    v138 = v122;
    sub_242731E64();

    swift_willThrow();
    v202(v135, v136);
    v202(v134, v136);
    v202(v133, v136);
    sub_2426F7D70((v0 + 320), v159);

    sub_2426FED88(v137, &qword_27ECBAB20, &unk_242737540);
    v202(v185, v136);
    sub_2426FED88(v181, &qword_27ECBAB38, &qword_242738900);
    sub_2426FED88(v189, &qword_27ECBAB38, &qword_242738900);
    sub_2426FED88(v214, &qword_27ECBAB28, &qword_242736CE0);
    sub_2426FED88(v216, &qword_27ECBAB28, &qword_242736CE0);
    sub_2426FED88(v194, &qword_27ECBAB20, &unk_242737540);
    v202(v213, v136);
  }

  else
  {
    v210 = *(v0 + 696);
    v48 = *(v0 + 688);
    v49 = v27;
    v50 = *(v0 + 680);
    v51 = *(v0 + 664);
    v52 = *(v0 + 576);
    v53 = *(v0 + 560);
    v197 = *(v0 + 512);
    v203 = *(v0 + 568);
    v191 = *(v0 + 504);
    v54 = v30;
    sub_242731E64();

    swift_willThrow();
    v49(v51, v52);
    v49(v50, v52);
    sub_2426F7D70((v0 + 320), v29);

    sub_2426FED88(v53, &qword_27ECBAB20, &unk_242737540);
    v49(v48, v52);
    sub_2426FED88(v191, &qword_27ECBAB38, &qword_242738900);
    sub_2426FED88(v197, &qword_27ECBAB38, &qword_242738900);
    sub_2426FED88(v214, &qword_27ECBAB28, &qword_242736CE0);
    sub_2426FED88(v216, &qword_27ECBAB28, &qword_242736CE0);
    sub_2426FED88(v203, &qword_27ECBAB20, &unk_242737540);
    v49(v210, v52);
  }

  v55 = *(v0 + 736);
  v56 = *(v0 + 728);
  v57 = *(v0 + 720);
  v58 = *(v0 + 712);
  v59 = *(v0 + 704);
  v60 = *(v0 + 696);
  v61 = *(v0 + 688);
  v62 = *(v0 + 680);
  v63 = *(v0 + 672);
  v64 = *(v0 + 664);
  v145 = *(v0 + 656);
  v146 = *(v0 + 648);
  v147 = *(v0 + 640);
  v148 = *(v0 + 632);
  v149 = *(v0 + 624);
  v151 = *(v0 + 616);
  v152 = *(v0 + 608);
  v154 = *(v0 + 600);
  v156 = *(v0 + 592);
  v158 = *(v0 + 568);
  v160 = *(v0 + 560);
  v162 = *(v0 + 552);
  v165 = *(v0 + 544);
  v169 = *(v0 + 536);
  v172 = *(v0 + 528);
  v176 = *(v0 + 520);
  v178 = *(v0 + 512);
  v180 = *(v0 + 504);
  v183 = *(v0 + 496);
  v188 = *(v0 + 488);
  v192 = *(v0 + 480);
  v198 = *(v0 + 456);
  v204 = *(v0 + 448);
  v206 = *(v0 + 424);
  v211 = *(v0 + 400);
  v215 = *(v0 + 392);
  v217 = *(v0 + 368);

  (*(v58 + 8))(v57, v59);

  v65 = *(v0 + 8);
  v66 = *MEMORY[0x277D85DE8];

  return v65();
}

uint64_t sub_2426F3420()
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(*v1 + 800);
  v7 = *v1;
  *(*v1 + 808) = v0;

  if (v0)
  {
    v3 = sub_2426F4B1C;
  }

  else
  {
    v3 = sub_2426F3560;
  }

  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2426F3560()
{
  v253 = v0;
  v252[1] = *MEMORY[0x277D85DE8];
  v1 = v0[99];
  v2 = v0[98];
  v3 = v0[97];
  v4 = v0[96];
  v5 = v0[75];
  v6 = v0[73];
  v7 = v0[72];
  v8 = v0[66];

  sub_2426FED88(v2, &qword_27ECBAB28, &qword_242736CE0);

  sub_2426FED88(v8, &qword_27ECBAB20, &unk_242737540);
  sub_2426FED88(v3, &qword_27ECBAB28, &qword_242736CE0);

  v4(v5, v7);
  v9 = v0[35];
  v10 = v0[36];
  v11 = v0[37];
  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  v251 = v0;
  if (!v12)
  {
    goto LABEL_11;
  }

  v13 = v12;
  v14 = v11;
  if ([v13 statusCode] != 200)
  {

LABEL_11:
    v39 = v9;
    v40 = v0[93];
    v221 = v0[92];
    v227 = v0[91];
    v239 = v0[87];
    v243 = v0[94];
    v41 = v0[72];
    v235 = v0[71];
    v42 = v0[70];
    v207 = v0[96];
    v214 = v0[64];
    v193 = v0[86];
    v200 = v0[63];
    v43 = v0[60];
    v44 = v0[59];
    v45 = v251[58];
    sub_2426FB9C4();
    swift_allocError();
    *v46 = 0;
    swift_willThrow();

    sub_2426FBA18(v39, v10);
    (*(v44 + 8))(v43, v45);
    v47 = v251;
    __swift_destroy_boxed_opaque_existential_1Tm(v251 + 2);
    sub_2426F7D70(v251 + 40, v40);

    sub_2426FED88(v42, &qword_27ECBAB20, &unk_242737540);
    v207(v193, v41);
    sub_2426FED88(v200, &qword_27ECBAB38, &qword_242738900);
    sub_2426FED88(v214, &qword_27ECBAB38, &qword_242738900);
    sub_2426FED88(v221, &qword_27ECBAB28, &qword_242736CE0);
    sub_2426FED88(v227, &qword_27ECBAB28, &qword_242736CE0);
    sub_2426FED88(v235, &qword_27ECBAB20, &unk_242737540);
    v207(v239, v41);
LABEL_12:

    v48 = v47[92];
    v49 = v47[91];
    v50 = v47[90];
    v51 = v251[89];
    v52 = v251[88];
    v53 = v251[87];
    v54 = v251[86];
    v55 = v251[85];
    v56 = v251[84];
    v57 = v251[83];
    v58 = v251[82];
    v157 = v251[81];
    v159 = v251[80];
    v161 = v251[79];
    v163 = v251[78];
    v165 = v251[77];
    v167 = v251[76];
    v169 = v251[75];
    v171 = v251[74];
    v173 = v251[71];
    v175 = v251[70];
    v177 = v251[69];
    v179 = v251[68];
    v181 = v251[67];
    v182 = v251[66];
    v186 = v251[65];
    v191 = v251[64];
    v194 = v251[63];
    v201 = v251[62];
    v208 = v251[61];
    v215 = v251[60];
    v222 = v251[57];
    v228 = v251[56];
    v236 = v251[53];
    v240 = v251[50];
    v244 = v251[49];
    v250 = v251[46];

    (*(v51 + 8))(v50, v52);

    v59 = v251[1];
    v60 = *MEMORY[0x277D85DE8];
    goto LABEL_13;
  }

  v238 = v14;
  v15 = sub_242732484();
  v16 = [v13 valueForHTTPHeaderField_];

  if (!v16)
  {
    v245 = v0[94];
    v62 = v0[93];
    v216 = v0[92];
    v223 = v0[91];
    v63 = v0[86];
    v64 = v9;
    v65 = v0[72];
    v229 = v0[71];
    v237 = v0[87];
    v66 = v0[70];
    v202 = v0[96];
    v209 = v0[64];
    v195 = v0[63];
    v67 = v0[60];
    v68 = v0[59];
    v69 = v251[58];
    sub_2426FB9C4();
    swift_allocError();
    *v70 = 2;
    swift_willThrow();

    sub_2426FBA18(v64, v10);
    (*(v68 + 8))(v67, v69);
    v47 = v251;
    __swift_destroy_boxed_opaque_existential_1Tm(v251 + 2);
    sub_2426F7D70(v251 + 40, v62);

    sub_2426FED88(v66, &qword_27ECBAB20, &unk_242737540);
    v202(v63, v65);
    sub_2426FED88(v195, &qword_27ECBAB38, &qword_242738900);
    sub_2426FED88(v209, &qword_27ECBAB38, &qword_242738900);
    sub_2426FED88(v216, &qword_27ECBAB28, &qword_242736CE0);
    sub_2426FED88(v223, &qword_27ECBAB28, &qword_242736CE0);
    sub_2426FED88(v229, &qword_27ECBAB20, &unk_242737540);
    v202(v237, v65);
    goto LABEL_12;
  }

  v206 = v0 + 11;
  v213 = v0 + 15;
  v220 = v0 + 19;
  v185 = v0 + 27;
  v192 = v0 + 31;
  v199 = v0 + 23;
  v17 = v0[101];
  v18 = sub_2427324B4();
  v20 = v19;

  v0[38] = 59;
  v0[39] = 0xE100000000000000;
  v21 = swift_task_alloc();
  *(v21 + 16) = v0 + 38;
  v23 = sub_2426FAE08(0x7FFFFFFFFFFFFFFFLL, 1, sub_2426FC1F8, v21, v18, v20, v22);
  v242 = v17;

  v24 = *(v23 + 16);
  v234 = v9;
  v190 = v10;
  if (v24)
  {
    v25 = v0[52];
    v252[0] = MEMORY[0x277D84F90];
    sub_2426FBFA0(0, v24, 0);
    v26 = v252[0];
    v27 = (v25 + 8);
    v28 = (v23 + 56);
    do
    {
      v29 = v251[53];
      v30 = v251[51];
      v31 = *(v28 - 1);
      v32 = *v28;
      *(v251 + 7) = *(v28 - 3);
      v251[9] = v31;
      v251[10] = v32;

      sub_242731D64();
      sub_2426FC250();
      v33 = sub_242732884();
      v35 = v34;
      (*v27)(v29, v30);

      v252[0] = v26;
      v37 = *(v26 + 16);
      v36 = *(v26 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_2426FBFA0((v36 > 1), v37 + 1, 1);
        v26 = v252[0];
      }

      *(v26 + 16) = v37 + 1;
      v38 = v26 + 16 * v37;
      *(v38 + 32) = v33;
      *(v38 + 40) = v35;
      v28 += 4;
      --v24;
    }

    while (v24);

    v10 = v190;
  }

  else
  {

    v26 = MEMORY[0x277D84F90];
  }

  v71 = (v26 + 40);
  v72 = -*(v26 + 16);
  v73 = -1;
  while (1)
  {
    if (v72 + v73 == -1)
    {
      v47 = v251;
      v248 = v251[94];
      v107 = v251[93];
      v211 = v251[92];
      v218 = v251[91];
      v108 = v251[72];
      v225 = v251[71];
      v232 = v251[87];
      v109 = v251[70];
      v197 = v251[96];
      v204 = v251[64];
      v183 = v251[86];
      v188 = v251[63];
      v110 = v251[59];
      v111 = v251[60];
      v112 = v251[58];

      sub_2426FB9C4();
      swift_allocError();
      *v113 = 2;
      swift_willThrow();

      sub_2426FBA18(v234, v10);
      (*(v110 + 8))(v111, v112);
      __swift_destroy_boxed_opaque_existential_1Tm(v251 + 2);
      sub_2426F7D70(v251 + 40, v107);

      sub_2426FED88(v109, &qword_27ECBAB20, &unk_242737540);
      v197(v183, v108);
      sub_2426FED88(v188, &qword_27ECBAB38, &qword_242738900);
      sub_2426FED88(v204, &qword_27ECBAB38, &qword_242738900);
      sub_2426FED88(v211, &qword_27ECBAB28, &qword_242736CE0);
      sub_2426FED88(v218, &qword_27ECBAB28, &qword_242736CE0);
      sub_2426FED88(v225, &qword_27ECBAB20, &unk_242737540);
      v197(v232, v108);
      goto LABEL_12;
    }

    if (++v73 >= *(v26 + 16))
    {
      __break(1u);
    }

    v74 = v71 + 2;
    v75 = *(v71 - 1);
    v76 = *v71;

    v77 = sub_2427329D4();

    v71 = v74;
    if (v77 <= 6)
    {
      v71 = v74;
      if (((1 << v77) & 0x47) != 0)
      {
        break;
      }
    }
  }

  v78 = v251[95];

  sub_2426FC2A4(v234, v10);
  v79 = sub_242732224();
  v80 = sub_2427327B4();
  sub_2426FBA18(v234, v10);
  if (os_log_type_enabled(v79, v80))
  {
    v81 = v251[50];
    v82 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v252[0] = v83;
    *v82 = 136315138;
    sub_2427324E4();
    v84 = sub_2427324C4();
    if (v85)
    {
      v86 = v85;
    }

    else
    {
      v84 = 0;
      v86 = 0xE000000000000000;
    }

    v87 = sub_2426FBA6C(v84, v86, v252);

    *(v82 + 4) = v87;
    _os_log_impl(&dword_2426EB000, v79, v80, "Response body: %s", v82, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v83);
    MEMORY[0x245D17E30](v83, -1, -1);
    MEMORY[0x245D17E30](v82, -1, -1);
  }

  v88 = v251[45];
  sub_2426F67F8(v234, v10, v251[49]);
  if (v242)
  {
    v246 = v251[94];
    v89 = v251[93];
    v210 = v251[92];
    v217 = v251[91];
    v90 = v251[86];
    v91 = v251[72];
    v224 = v251[71];
    v230 = v251[87];
    v92 = v251[70];
    v196 = v251[96];
    v203 = v251[64];
    v187 = v251[63];
    v93 = v251[60];
    v94 = v251[59];
    v95 = v251[58];

    sub_2426FBA18(v234, v10);
    (*(v94 + 8))(v93, v95);
    v47 = v251;
    __swift_destroy_boxed_opaque_existential_1Tm(v251 + 2);
    sub_2426F7D70(v251 + 40, v89);

    sub_2426FED88(v92, &qword_27ECBAB20, &unk_242737540);
    v196(v90, v91);
    sub_2426FED88(v187, &qword_27ECBAB38, &qword_242738900);
    sub_2426FED88(v203, &qword_27ECBAB38, &qword_242738900);
    sub_2426FED88(v210, &qword_27ECBAB28, &qword_242736CE0);
    sub_2426FED88(v217, &qword_27ECBAB28, &qword_242736CE0);
    sub_2426FED88(v224, &qword_27ECBAB20, &unk_242737540);
    v196(v230, v91);
    goto LABEL_12;
  }

  v96 = *(v251 + 828);

  if (v96 == 1)
  {
    v97 = *(v251 + 205);
    v231 = v251[64];
    v98 = v251[62];
    v99 = v251[49];
    v247 = v251[46];
    v100 = v251[44];
    sub_242731E94();
    v101 = sub_2427320C4();
    sub_242732184();
    v101(v206, 0);
    sub_242708C00(v100 + v97);
    v102 = sub_2427320C4();
    sub_242732164();
    v102(v213, 0);
    sub_2426FC2F8(v231, v98, &qword_27ECBAB38, &qword_242738900);
    v103 = sub_2427320C4();
    sub_242732174();
    v103(v220, 0);
    sub_2427320E4();
    v104 = sub_242732194();
    v105 = *(*(v104 - 8) + 48);
    if (v105(v247, 1, v104) == 1)
    {
      v106 = v251[46];

      sub_2426FED88(v106, &qword_27ECBAB30, &unk_242736CF0);
    }

    else
    {
      v114 = *(v251 + 204);
      v115 = v251[73];
      v116 = v251[72];
      v117 = v251[65];
      v118 = v251[44];
      sub_2426FED88(v251[46], &qword_27ECBAB30, &unk_242736CF0);
      sub_2426FC2F8(v118 + v114, v117, &qword_27ECBAB20, &unk_242737540);
      if ((*(v115 + 48))(v117, 1, v116) == 1)
      {
        sub_2426FED88(v251[65], &qword_27ECBAB20, &unk_242737540);
      }

      else
      {
        v119 = v251[49];
        (*(v251[73] + 32))(v251[74], v251[65], v251[72]);
        v120 = sub_2427320D4();
        if (!v105(v121, 1, v104))
        {
          v122 = v251[74];
          sub_242731E94();
          sub_242732184();
        }

        v120(v185, 0);
        v123 = v251[49];
        v124 = sub_2427320D4();
        if (!v105(v125, 1, v104))
        {
          v126 = v251[74];
          sub_242708C00(v251[44] + *(v251 + 206));
          sub_242732164();
        }

        v124(v192, 0);
        (v251[96])(v251[74], v251[72]);
      }

      v127 = v251[49];
      v128 = sub_2427320D4();
      if (!v105(v129, 1, v104))
      {
        sub_2426FC2F8(v251[63], v251[62], &qword_27ECBAB38, &qword_242738900);
        sub_242732174();
      }

      v128(v199, 0);
    }
  }

  else
  {
  }

  v130 = v251[93];
  v144 = v251[92];
  v145 = v251[91];
  v147 = v251[89];
  v148 = v251[94];
  v149 = v251[88];
  v150 = v251[90];
  v146 = v251[87];
  v141 = v251[86];
  v142 = v251[96];
  v151 = v251[85];
  v152 = v251[84];
  v153 = v251[83];
  v154 = v251[82];
  v155 = v251[81];
  v156 = v251[80];
  v158 = v251[79];
  v160 = v251[78];
  v162 = v251[77];
  v166 = v251[76];
  v168 = v251[75];
  v170 = v251[74];
  v131 = v251[72];
  v143 = v251[71];
  v233 = v251[70];
  v172 = v251[69];
  v174 = v251[68];
  v176 = v251[67];
  v178 = v251[66];
  v180 = v251[65];
  v241 = v251[64];
  v249 = v251[63];
  v184 = v251[62];
  v189 = v251[61];
  v132 = v251[59];
  v133 = v251[58];
  v198 = v251[57];
  v205 = v251[56];
  v212 = v251[53];
  v219 = v251[50];
  v134 = v251[49];
  v135 = v251[48];
  v136 = v251[47];
  v226 = v251[46];
  v137 = v251[43];
  v164 = v251[60];
  (*(v132 + 16))(v137, v164, v133);
  v138 = type metadata accessor for FileUploadResult();
  (*(v135 + 32))(v137 + *(v138 + 20), v134, v136);
  v139 = (v137 + *(v138 + 24));
  *v139 = v234;
  v139[1] = v190;
  (*(v132 + 8))(v164, v133);
  __swift_destroy_boxed_opaque_existential_1Tm(v251 + 2);
  sub_2426F7D70(v251 + 40, v130);

  sub_2426FED88(v233, &qword_27ECBAB20, &unk_242737540);
  v142(v141, v131);
  sub_2426FED88(v249, &qword_27ECBAB38, &qword_242738900);
  sub_2426FED88(v241, &qword_27ECBAB38, &qword_242738900);
  sub_2426FED88(v144, &qword_27ECBAB28, &qword_242736CE0);
  sub_2426FED88(v145, &qword_27ECBAB28, &qword_242736CE0);
  sub_2426FED88(v143, &qword_27ECBAB20, &unk_242737540);
  v142(v146, v131);

  (*(v147 + 8))(v150, v149);

  v59 = v251[1];
  v140 = *MEMORY[0x277D85DE8];
LABEL_13:

  return v59();
}

uint64_t sub_2426F4B1C()
{
  v63 = *MEMORY[0x277D85DE8];
  v1 = v0[99];
  v2 = v0[98];
  v3 = v0[97];
  v43 = v0[96];
  v4 = v0[93];
  v53 = v0[92];
  v57 = v0[91];
  v59 = v0[87];
  v61 = v0[94];
  v49 = v0[86];
  v41 = v0[75];
  v5 = v0[73];
  v6 = v0[72];
  v55 = v0[71];
  v45 = v0[70];
  v7 = v0[66];
  v51 = v0[64];
  v47 = v0[63];
  v8 = v0[59];
  v37 = v0[58];
  v39 = v0[60];

  sub_2426FED88(v2, &qword_27ECBAB28, &qword_242736CE0);

  sub_2426FED88(v7, &qword_27ECBAB20, &unk_242737540);
  sub_2426FED88(v3, &qword_27ECBAB28, &qword_242736CE0);

  v43(v41, v6);
  (*(v8 + 8))(v39, v37);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  sub_2426F7D70(v0 + 40, v4);

  sub_2426FED88(v45, &qword_27ECBAB20, &unk_242737540);
  v43(v49, v6);
  sub_2426FED88(v47, &qword_27ECBAB38, &qword_242738900);
  sub_2426FED88(v51, &qword_27ECBAB38, &qword_242738900);
  sub_2426FED88(v53, &qword_27ECBAB28, &qword_242736CE0);
  sub_2426FED88(v57, &qword_27ECBAB28, &qword_242736CE0);
  sub_2426FED88(v55, &qword_27ECBAB20, &unk_242737540);
  v43(v59, v6);

  v9 = v0[92];
  v10 = v0[91];
  v11 = v0[90];
  v12 = v0[89];
  v13 = v0[88];
  v14 = v0[87];
  v15 = v0[86];
  v16 = v0[85];
  v17 = v0[84];
  v18 = v0[83];
  v22 = v0[101];
  v23 = v0[82];
  v24 = v0[81];
  v25 = v0[80];
  v26 = v0[79];
  v27 = v0[78];
  v28 = v0[77];
  v29 = v0[76];
  v30 = v0[75];
  v31 = v0[74];
  v32 = v0[71];
  v33 = v0[70];
  v34 = v0[69];
  v35 = v0[68];
  v36 = v0[67];
  v38 = v0[66];
  v40 = v0[65];
  v42 = v0[64];
  v44 = v0[63];
  v46 = v0[62];
  v48 = v0[61];
  v50 = v0[60];
  v52 = v0[57];
  v54 = v0[56];
  v56 = v0[53];
  v58 = v0[50];
  v60 = v0[49];
  v62 = v0[46];

  (*(v12 + 8))(v11, v13);

  v19 = v0[1];
  v20 = *MEMORY[0x277D85DE8];

  return v19();
}

uint64_t sub_2426F4F80@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v34 = a2;
  v33 = a1;
  v35 = a3;
  v4 = sub_242731F34();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_242731D54();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v32 - v15;
  v17 = v3 + OBJC_IVAR____TtC15CTLazuliSupport22FileTransferController_configuration;
  v18 = type metadata accessor for FileTransferController.Configuration(0);
  v19 = (v17 + *(v18 + 24));
  v20 = *v19;
  v32[0] = v19[1];
  v32[1] = v20;
  v21 = *(*__swift_project_boxed_opaque_existential_1((v17 + *(v18 + 32)), *(v17 + *(v18 + 32) + 24)) + 32);
  os_unfair_lock_lock((v21 + 32));
  if (*(v21 + 16))
  {
    v22 = *(v21 + 24);
    v23 = *(v21 + 16);
    swift_getObjectType();
    v24 = sub_242719E58();
    v25 = 0;
    if ((v24 & 1) != 0 && v22)
    {
      v25 = [v22 dataPlanTier] > 2;
    }
  }

  else
  {
    v25 = 0;
  }

  v26 = (v21 + 32);
  v27 = v25;
  os_unfair_lock_unlock(v26);
  (*(v5 + 16))(v8, v33, v4);
  sub_242731D24();
  sub_242731CC4();
  (*(v10 + 16))(v14, v16, v9);
  sub_242731D44();
  sub_242731D44();
  v28 = sub_242731CF4();
  [v28 mutableCopy];

  sub_242732894();
  swift_unknownObjectRelease();
  sub_2426F10AC(0, &qword_27ECBAB00, 0x277CCAB70);
  swift_dynamicCast();
  v29 = v36;
  [v36 _setAllowsUCA_];
  sub_242731D14();

  v30 = *(v10 + 8);
  v30(v14, v9);
  return (v30)(v16, v9);
}

uint64_t sub_2426F5314(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v90 = a2;
  v88 = a1;
  v6 = sub_242732154();
  v86 = *(v6 - 8);
  v87 = v6;
  v7 = *(v86 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v78[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_242731F34();
  v95 = *(v10 - 8);
  isa = v95[8].isa;
  v12 = MEMORY[0x28223BE20](v10);
  v89 = &v78[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v78[-v15];
  v17 = MEMORY[0x28223BE20](v14);
  v94 = &v78[-v18];
  MEMORY[0x28223BE20](v17);
  v20 = &v78[-v19];
  if (qword_27ECBA958 != -1)
  {
    swift_once();
  }

  v21 = sub_242732244();
  v22 = __swift_project_value_buffer(v21, qword_27ECBAB08);
  v24 = v95 + 2;
  v23 = v95[2].isa;
  v82 = v23;
  v92 = a3;
  (v23)(v20, a3, v10);
  v93 = a4;
  v83 = v24;
  (v23)(v94, a4, v10);
  v84 = v22;
  v25 = sub_242732224();
  v26 = sub_2427327E4();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v81 = v16;
    v28 = v27;
    v80 = swift_slowAlloc();
    v96 = v80;
    *v28 = 136315394;
    sub_2426FEDE8(&qword_27ECBAB60, MEMORY[0x277CC9260]);
    v79 = v26;
    v29 = sub_242732AD4();
    v30 = v10;
    v32 = v31;
    v85 = v9;
    v33 = v95[1].isa;
    (v33)(v20, v30);
    v34 = sub_2426FBA6C(v29, v32, &v96);
    v10 = v30;

    *(v28 + 4) = v34;
    *(v28 + 12) = 2080;
    v35 = v94;
    v36 = sub_242732AD4();
    v38 = v37;
    v94 = v33;
    (v33)(v35, v10);
    v9 = v85;
    v39 = sub_2426FBA6C(v36, v38, &v96);

    *(v28 + 14) = v39;
    _os_log_impl(&dword_2426EB000, v25, v79, "Attempting to encrypt file at path: %s to destination path: %s", v28, 0x16u);
    v40 = v80;
    swift_arrayDestroy();
    MEMORY[0x245D17E30](v40, -1, -1);
    v41 = v28;
    v16 = v81;
    MEMORY[0x245D17E30](v41, -1, -1);
  }

  else
  {

    v42 = v95[1].isa;
    (v42)(v94, v10);
    v94 = v42;
    (v42)(v20, v10);
  }

  v99 = &type metadata for MLSFileTransferHelper;
  v100 = &off_285502580;
  __swift_project_boxed_opaque_existential_1(&v96, &type metadata for MLSFileTransferHelper);
  v43 = v91;
  v45 = v92;
  v44 = v93;
  sub_2427203F4(v9, v90, v92, v93);
  if (v43)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(&v96);
    swift_getErrorValue();
    v46 = sub_242732B54();
    v99 = &type metadata for RCSAttachmentsAnalyticsEvent;
    v100 = &off_2855016A8;
    LOWORD(v96) = 0;
    BYTE2(v96) = 0;
    v97 = v46;
    v98 = v47;
    v48 = __swift_project_boxed_opaque_existential_1(&v96, &type metadata for RCSAttachmentsAnalyticsEvent);
    if (*(v48 + 1))
    {
      v49 = 256;
    }

    else
    {
      v49 = 0;
    }

    v50 = v49 | *v48;
    if (*(v48 + 2))
    {
      v51 = 0x10000;
    }

    else
    {
      v51 = 0;
    }

    sub_2426FC408(v50 | v51, v48[1], v48[2]);
    __swift_destroy_boxed_opaque_existential_1Tm(&v96);
    return swift_willThrow();
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(&v96);
    v99 = &type metadata for RCSAttachmentsAnalyticsEvent;
    v100 = &off_2855016A8;
    LOWORD(v96) = 0;
    BYTE2(v96) = 1;
    v97 = 0;
    v98 = 0;
    v53 = __swift_project_boxed_opaque_existential_1(&v96, &type metadata for RCSAttachmentsAnalyticsEvent);
    if (*(v53 + 1))
    {
      v54 = 256;
    }

    else
    {
      v54 = 0;
    }

    v55 = v54 | *v53;
    if (*(v53 + 2))
    {
      v56 = 0x10000;
    }

    else
    {
      v56 = 0;
    }

    sub_2426FC408(v55 | v56, v53[1], v53[2]);
    __swift_destroy_boxed_opaque_existential_1Tm(&v96);
    v57 = v82;
    v82(v16, v45, v10);
    v57(v89, v44, v10);
    v58 = sub_242732224();
    v59 = sub_2427327E4();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v85 = v9;
      v61 = v60;
      v93 = swift_slowAlloc();
      v96 = v93;
      *v61 = 136315394;
      sub_2426FEDE8(&qword_27ECBAB60, MEMORY[0x277CC9260]);
      LODWORD(v92) = v59;
      v62 = sub_242732AD4();
      v63 = v16;
      v64 = v10;
      v66 = v65;
      v67 = v89;
      v95 = v58;
      v68 = v94;
      (v94)(v63, v64);
      v69 = sub_2426FBA6C(v62, v66, &v96);

      *(v61 + 4) = v69;
      *(v61 + 12) = 2080;
      v70 = sub_242732AD4();
      v72 = v71;
      v68(v67, v64);
      v73 = sub_2426FBA6C(v70, v72, &v96);

      *(v61 + 14) = v73;
      v74 = v95;
      _os_log_impl(&dword_2426EB000, v95, v92, "Successfully encrypted file at path: %s to destination path: %s", v61, 0x16u);
      v75 = v93;
      swift_arrayDestroy();
      MEMORY[0x245D17E30](v75, -1, -1);
      v76 = v61;
      v9 = v85;
      MEMORY[0x245D17E30](v76, -1, -1);
    }

    else
    {

      v77 = v94;
      (v94)(v89, v10);
      v77(v16, v10);
    }

    return (*(v86 + 32))(v88, v9, v87);
  }
}

uint64_t sub_2426F5AF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[14] = a8;
  v8[15] = v16;
  v8[12] = a6;
  v8[13] = a7;
  v8[10] = a4;
  v8[11] = a5;
  v8[8] = a2;
  v8[9] = a3;
  v8[7] = a1;
  v9 = sub_242731F34();
  v8[16] = v9;
  v10 = *(v9 - 8);
  v8[17] = v10;
  v8[18] = *(v10 + 64);
  v8[19] = swift_task_alloc();
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAB20, &unk_242737540) - 8);
  v8[20] = v11;
  v8[21] = *(v11 + 64);
  v8[22] = swift_task_alloc();
  v12 = sub_242732024();
  v8[23] = v12;
  v13 = *(v12 - 8);
  v8[24] = v13;
  v8[25] = *(v13 + 64);
  v8[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2426F5CA8, 0, 0);
}

uint64_t sub_2426F5CA8()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 184);
  v3 = *(v0 + 192);
  v34 = v2;
  v35 = v1;
  v4 = *(v0 + 176);
  v33 = v4;
  v31 = *(v0 + 200);
  v32 = *(v0 + 168);
  v5 = *(v0 + 152);
  v29 = v5;
  v30 = *(v0 + 160);
  v36 = *(v0 + 144);
  v38 = *(v0 + 136);
  v6 = *(v0 + 128);
  v28 = v6;
  v25 = *(v0 + 112);
  v26 = *(v0 + 120);
  v24 = *(v0 + 104);
  v8 = *(v0 + 88);
  v7 = *(v0 + 96);
  v9 = *(v0 + 80);
  v37 = __swift_project_boxed_opaque_existential_1(*(v0 + 64), *(*(v0 + 64) + 24));
  sub_2426F0FFC(v9, v0 + 16);
  (*(v3 + 16))(v1, v8, v2);
  sub_2426FC2F8(v7, v4, &qword_27ECBAB20, &unk_242737540);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAB28, &qword_242736CE0) - 8);
  v11 = *(v10 + 64);
  v27 = swift_task_alloc();
  *(v0 + 216) = v27;
  sub_2426FC2F8(v24, v27, &qword_27ECBAB28, &qword_242736CE0);
  (*(v38 + 16))(v5, v25, v6);
  v12 = swift_task_alloc();
  *(v0 + 224) = v12;
  sub_2426FC2F8(v26, v12, &qword_27ECBAB28, &qword_242736CE0);
  v13 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v14 = (v31 + *(v30 + 80) + v13) & ~*(v30 + 80);
  v15 = *(v10 + 80);
  v16 = (v32 + v15 + v14) & ~v15;
  v17 = (v11 + *(v38 + 80) + v16) & ~*(v38 + 80);
  v18 = (v36 + v15 + v17) & ~v15;
  v19 = swift_allocObject();
  *(v0 + 232) = v19;
  sub_2426F0FE4((v0 + 16), v19 + 16);
  (*(v3 + 32))(v19 + v13, v35, v34);
  sub_2426FEBB0(v33, v19 + v14, &qword_27ECBAB20, &unk_242737540);
  sub_2426FEBB0(v27, v19 + v16, &qword_27ECBAB28, &qword_242736CE0);
  (*(v38 + 32))(v19 + v17, v29, v28);
  sub_2426FEBB0(v12, v19 + v18, &qword_27ECBAB28, &qword_242736CE0);
  v20 = *v37;
  v21 = swift_task_alloc();
  *(v0 + 240) = v21;
  *v21 = v0;
  v21[1] = sub_2426F5FF8;
  v22 = *(v0 + 72);

  return sub_242726AA4(v22, sub_2426FF2E8, v19);
}

uint64_t sub_2426F5FF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  v9 = *(*v4 + 240);
  v10 = *(*v4 + 232);
  v11 = *v4;
  *(*v4 + 248) = v3;

  if (v3)
  {
    v12 = sub_2426F61F8;
  }

  else
  {
    v14 = v8[27];
    v13 = v8[28];
    v8[32] = a3;
    v8[33] = a2;
    v8[34] = a1;

    v12 = sub_2426F6168;
  }

  return MEMORY[0x2822009F8](v12, 0, 0);
}

uint64_t sub_2426F6168()
{
  v1 = v0[33];
  v2 = v0[32];
  v3 = v0[26];
  v4 = v0[22];
  v5 = v0[19];
  v6 = v0[7];
  *v6 = v0[34];
  v6[1] = v1;
  v6[2] = v2;

  v7 = v0[1];

  return v7();
}

uint64_t sub_2426F61F8()
{
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[26];
  v4 = v0[22];
  v5 = v0[19];

  v6 = v0[1];
  v7 = v0[31];

  return v6();
}

uint64_t sub_2426F6290@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v47 = a3;
  v45 = a5;
  v46 = a6;
  v43 = a7;
  v44 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAB20, &unk_242737540);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v43 - v11;
  v13 = sub_242731F34();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_242731D54();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v19 + 16);
  v49 = v24;
  v23(v22, a1);
  sub_2427155C8(v53);
  v51 = &type metadata for HTTPMultipartFormDataBuilder;
  v52 = &off_285501C38;
  v25 = swift_allocObject();
  v50[0] = v25;
  v26 = v53[1];
  v25[1] = v53[0];
  v25[2] = v26;
  v25[3] = v53[2];
  __swift_mutable_project_boxed_opaque_existential_1(v50, &type metadata for HTTPMultipartFormDataBuilder);
  (off_285501C48[0])(a2, 6580596, 0xE300000000000000);
  sub_2426FC2F8(v47, v12, &qword_27ECBAB20, &unk_242737540);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_2426FED88(v12, &qword_27ECBAB20, &unk_242737540);
    v27 = v48;
  }

  else
  {
    (*(v14 + 32))(v17, v12, v13);
    v28 = v51;
    v29 = v52;
    __swift_mutable_project_boxed_opaque_existential_1(v50, v51);
    v30 = v48;
    (v29[3])(v17, 0x69616E626D756854, 0xE90000000000006CLL, v44, v28, v29);
    v27 = v30;
    if (v30)
    {
      (*(v14 + 8))(v17, v13);
      goto LABEL_7;
    }

    (*(v14 + 8))(v17, v13);
  }

  v31 = v51;
  v32 = v52;
  __swift_mutable_project_boxed_opaque_existential_1(v50, v51);
  (v32[3])(v45, 1701603654, 0xE400000000000000, v46, v31, v32);
  if (!v27)
  {
    v33 = v51;
    v34 = v52;
    __swift_mutable_project_boxed_opaque_existential_1(v50, v51);
    v35 = (v34[4])(v33, v34);
    v37 = v36;
    v38 = v35;
    sub_242731CE4();
    v54 = v37;
    sub_242732AD4();
    sub_242731D44();

    v39 = __swift_project_boxed_opaque_existential_1(v50, v51);
    v40 = v39[2];
    v41 = v39[3];

    sub_242731D44();

    (*(v19 + 32))(v43, v22, v49);
    return __swift_destroy_boxed_opaque_existential_1Tm(v50);
  }

LABEL_7:
  (*(v19 + 8))(v22, v49);
  return __swift_destroy_boxed_opaque_existential_1Tm(v50);
}

uint64_t sub_2426F674C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_2426F67F8@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a2;
  v41 = a3;
  v42 = a1;
  v3 = sub_2427320F4();
  v4 = *(v3 - 8);
  v39 = v3;
  v40 = v4;
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v38 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v38 - v12;
  v14 = sub_242732214();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  v17 = sub_242732204();
  v45[3] = v14;
  v45[4] = &off_285502278;
  v45[0] = v17;
  v18 = *__swift_project_boxed_opaque_existential_1(v45, v14);
  v19 = sub_242732344();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_2426FEF40();
  v23 = v44;
  v24 = sub_2427321F4();
  if (v23)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v45);
  }

  v42 = v8;
  v43 = 0;
  MEMORY[0x28223BE20](v24);
  (*(v20 + 16))(&v38 - v22, &v38 - v22, v19);
  sub_2427320B4();
  (*(v20 + 8))(&v38 - v22, v19);
  if (qword_27ECBA958 != -1)
  {
    swift_once();
  }

  v26 = sub_242732244();
  __swift_project_value_buffer(v26, qword_27ECBAB08);
  v28 = v39;
  v27 = v40;
  v29 = *(v40 + 16);
  v44 = v13;
  v29(v11, v13, v39);
  v30 = sub_242732224();
  v31 = sub_2427327C4();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v46 = v38;
    *v32 = 136315138;
    v29(v42, v11, v28);
    v33 = sub_242732514();
    v35 = v34;
    (*(v27 + 8))(v11, v28);
    v36 = sub_2426FBA6C(v33, v35, &v46);

    *(v32 + 4) = v36;
    _os_log_impl(&dword_2426EB000, v30, v31, "%s", v32, 0xCu);
    v37 = v38;
    __swift_destroy_boxed_opaque_existential_1Tm(v38);
    MEMORY[0x245D17E30](v37, -1, -1);
    MEMORY[0x245D17E30](v32, -1, -1);
  }

  else
  {

    (*(v27 + 8))(v11, v28);
  }

  (*(v27 + 32))(v41, v44, v28);
  return __swift_destroy_boxed_opaque_existential_1Tm(v45);
}

uint64_t sub_2426F6C28(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  v4 = type metadata accessor for FileDownloadResult.Output(0);
  v3[13] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[14] = swift_task_alloc();
  v6 = sub_242732024();
  v3[15] = v6;
  v7 = *(v6 - 8);
  v3[16] = v7;
  v8 = *(v7 + 64) + 15;
  v3[17] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAB38, &qword_242738900) - 8) + 64) + 15;
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v10 = sub_242731F34();
  v3[20] = v10;
  v11 = *(v10 - 8);
  v3[21] = v11;
  v12 = *(v11 + 64) + 15;
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v13 = sub_242731D54();
  v3[27] = v13;
  v14 = *(v13 - 8);
  v3[28] = v14;
  v15 = *(v14 + 64) + 15;
  v3[29] = swift_task_alloc();
  v16 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_2426F6E74, 0, 0);
}

uint64_t sub_2426F6E74()
{
  v74 = v0;
  v73[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 208);
  v2 = *(v0 + 160);
  v3 = *(v0 + 168);
  v4 = *(v0 + 152);
  v5 = *(v0 + 88);
  sub_2426F4F80(v5, 0, *(v0 + 232));
  v6 = [objc_opt_self() defaultManager];
  *(v0 + 240) = v6;
  v7 = type metadata accessor for FileDownloadRequest();
  v8 = *(v7 + 20);
  *(v0 + 328) = v8;
  v9 = *(v3 + 16);
  *(v0 + 248) = v9;
  *(v0 + 256) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v1, v5 + v8, v2);
  v10 = MEMORY[0x277D84F90];
  *(v0 + 64) = MEMORY[0x277D84F90];
  v11 = *(v7 + 24);
  *(v0 + 332) = v11;
  sub_2426FC2F8(v5 + v11, v4, &qword_27ECBAB38, &qword_242738900);
  v12 = sub_242732154();
  *(v0 + 264) = v12;
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);
  *(v0 + 272) = v14;
  *(v0 + 280) = (v13 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  LODWORD(v5) = v14(v4, 1, v12);
  sub_2426FED88(v4, &qword_27ECBAB38, &qword_242738900);
  if (v5 == 1)
  {
LABEL_6:
    *(v0 + 288) = v10;
    if (qword_27ECBA958 != -1)
    {
      swift_once();
    }

    v34 = sub_242732244();
    __swift_project_value_buffer(v34, qword_27ECBAB08);
    v35 = sub_242732224();
    v36 = sub_2427327B4();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = *(v0 + 208);
      v38 = *(v0 + 160);
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v73[0] = v40;
      *v39 = 136315138;
      swift_beginAccess();
      sub_2426FEDE8(&qword_27ECBAB60, MEMORY[0x277CC9260]);
      v41 = sub_242732AD4();
      v43 = sub_2426FBA6C(v41, v42, v73);

      *(v39 + 4) = v43;
      _os_log_impl(&dword_2426EB000, v35, v36, "Attempting to download file at path: %s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v40);
      MEMORY[0x245D17E30](v40, -1, -1);
      MEMORY[0x245D17E30](v39, -1, -1);
    }

    v44 = *(v0 + 232);
    v45 = *(v0 + 208);
    v46 = *(v0 + 96);
    v47 = swift_task_alloc();
    *(v0 + 296) = v47;
    v47[2] = v46;
    v47[3] = v45;
    v47[4] = v44;
    v48 = swift_task_alloc();
    *(v0 + 304) = v48;
    *v48 = v0;
    v48[1] = sub_2426F7568;
    v49 = *MEMORY[0x277D85DE8];

    return sub_2426FC66C(dword_242736D20, v47);
  }

  v15 = *(v0 + 192);
  v16 = *(v0 + 200);
  v17 = *(v0 + 160);
  v18 = *(v0 + 168);
  v19 = [v6 temporaryDirectory];
  sub_242731EC4();

  sub_242731EB4();
  v20 = *(v18 + 8);
  v20(v15, v17);
  v21 = sub_242731EA4();
  *(v0 + 72) = 0;
  LODWORD(v17) = [v6 createDirectoryAtURL:v21 withIntermediateDirectories:1 attributes:0 error:v0 + 72];

  v22 = *(v0 + 72);
  if (v17)
  {
    v70 = v20;
    v23 = *(v0 + 192);
    v66 = *(v0 + 208);
    v67 = *(v0 + 184);
    v24 = *(v0 + 168);
    v64 = *(v0 + 200);
    v65 = *(v0 + 160);
    v68 = v9;
    v25 = *(v0 + 128);
    v26 = *(v0 + 136);
    v27 = *(v0 + 120);
    v28 = v22;
    sub_242732014();
    sub_242732004();
    (*(v25 + 8))(v26, v27);
    sub_242731EB4();

    (*(v24 + 40))(v66, v23, v65);
    v68(v67, v66, v65);
    v10 = sub_2426FB6DC(0, 1, 1, MEMORY[0x277D84F90]);
    v30 = v10[2];
    v29 = v10[3];
    if (v30 >= v29 >> 1)
    {
      v10 = sub_2426FB6DC(v29 > 1, v30 + 1, 1, v10);
    }

    v31 = *(v0 + 184);
    v32 = *(v0 + 160);
    v33 = *(v0 + 168);
    v70(*(v0 + 200), v32);
    v10[2] = v30 + 1;
    (*(v33 + 32))(v10 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v30, v31, v32);
    *(v0 + 64) = v10;
    goto LABEL_6;
  }

  v51 = *(v0 + 200);
  v52 = *(v0 + 160);
  v53 = v22;
  sub_242731E64();

  swift_willThrow();
  v20(v51, v52);
  sub_2426F7D70((v0 + 64), v6);

  v55 = *(v0 + 224);
  v54 = *(v0 + 232);
  v56 = *(v0 + 216);
  v58 = *(v0 + 192);
  v57 = *(v0 + 200);
  v60 = *(v0 + 176);
  v59 = *(v0 + 184);
  v61 = *(v0 + 152);
  v69 = *(v0 + 144);
  v71 = *(v0 + 136);
  v72 = *(v0 + 112);
  v20(*(v0 + 208), *(v0 + 160));
  (*(v55 + 8))(v54, v56);

  v62 = *(v0 + 8);
  v63 = *MEMORY[0x277D85DE8];

  return v62();
}

uint64_t sub_2426F7568(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v7 = *v4;
  v8 = *(*v4 + 304);
  v14 = *v4;
  v7[39] = a3;
  v7[40] = v3;

  if (v3)
  {
    v9 = sub_2426F7BF8;
  }

  else
  {
    v10 = v7[37];

    sub_2426FD498(a1, a2);
    v9 = sub_2426F76D4;
  }

  v11 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_2426F76D4()
{
  v66 = *MEMORY[0x277D85DE8];
  v2 = *(v0 + 272);
  v1 = *(v0 + 280);
  v3 = *(v0 + 264);
  v4 = *(v0 + 144);
  sub_2426FC2F8(*(v0 + 88) + *(v0 + 332), v4, &qword_27ECBAB38, &qword_242738900);
  LODWORD(v3) = v2(v4, 1, v3);
  sub_2426FED88(v4, &qword_27ECBAB38, &qword_242738900);
  if (v3 == 1)
  {
LABEL_5:
    v24 = *(v0 + 312);
    v25 = *(v0 + 256);
    v26 = *(v0 + 104);
    (*(v0 + 248))(*(v0 + 112), *(v0 + 88) + *(v0 + 328), *(v0 + 160));
    swift_storeEnumTagMultiPayload();
    v27 = [v24 suggestedFilename];
    if (v27)
    {
      v28 = v27;
      v29 = sub_2427324B4();
      v63 = v30;
      v65 = v29;
    }

    else
    {
      v63 = 0;
      v65 = 0;
    }

    v31 = *(v0 + 312);
    v32 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAB28, &qword_242736CE0) - 8) + 64) + 15;
    v33 = swift_task_alloc();
    v34 = [v31 MIMEType];
    v35 = *(v0 + 312);
    if (v34)
    {
      v36 = v34;
      sub_2427324B4();

      v37 = *(*(sub_2427321D4() - 8) + 64) + 15;
      swift_task_alloc();
      sub_2427321C4();
      sub_2427321A4();
    }

    else
    {

      v38 = sub_2427321D4();
      (*(*(v38 - 8) + 56))(v33, 1, 1, v38);
    }

    v39 = *(v0 + 232);
    v40 = *(v0 + 240);
    v41 = *(v0 + 224);
    v50 = *(v0 + 288);
    v51 = *(v0 + 216);
    v42 = *(v0 + 208);
    v52 = *(v0 + 200);
    v53 = *(v0 + 192);
    v43 = *(v0 + 168);
    v54 = *(v0 + 184);
    v55 = *(v0 + 176);
    v44 = *(v0 + 160);
    v57 = *(v0 + 152);
    v59 = *(v0 + 144);
    v61 = *(v0 + 136);
    v45 = *(v0 + 80);
    sub_2426FDE60(*(v0 + 112), v45, type metadata accessor for FileDownloadResult.Output);
    v46 = type metadata accessor for FileDownloadResult(0);
    v47 = (v45 + *(v46 + 20));
    *v47 = v65;
    v47[1] = v63;
    sub_2426FEBB0(v33, v45 + *(v46 + 24), &qword_27ECBAB28, &qword_242736CE0);

    sub_2426F7D70((v0 + 64), v40);

    (*(v43 + 8))(v42, v44);
    (*(v41 + 8))(v39, v51);

    v22 = *(v0 + 8);
    v48 = *MEMORY[0x277D85DE8];
    goto LABEL_12;
  }

  v5 = *(v0 + 320);
  v7 = *(v0 + 248);
  v6 = *(v0 + 256);
  v8 = *(v0 + 208);
  v9 = *(v0 + 176);
  v10 = *(v0 + 160);
  v11 = *(v0 + 88);
  swift_beginAccess();
  v7(v9, v8, v10);
  sub_2426FD4AC(v11, v9);
  if (!v5)
  {
    (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
    goto LABEL_5;
  }

  v12 = *(v0 + 312);
  v13 = *(v0 + 288);
  v14 = *(v0 + 240);
  v15 = *(*(v0 + 168) + 8);
  v15(*(v0 + 176), *(v0 + 160));

  sub_2426F7D70((v0 + 64), v14);

  v17 = *(v0 + 224);
  v16 = *(v0 + 232);
  v18 = *(v0 + 216);
  v20 = *(v0 + 192);
  v19 = *(v0 + 200);
  v21 = *(v0 + 184);
  v56 = *(v0 + 176);
  v58 = *(v0 + 152);
  v60 = *(v0 + 144);
  v62 = *(v0 + 136);
  v64 = *(v0 + 112);
  v15(*(v0 + 208), *(v0 + 160));
  (*(v17 + 8))(v16, v18);

  v22 = *(v0 + 8);
  v23 = *MEMORY[0x277D85DE8];
LABEL_12:

  return v22();
}

uint64_t sub_2426F7BF8()
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = v0[36];
  v1 = v0[37];
  v3 = v0[30];
  v4 = v0[21];

  sub_2426F7D70(v0 + 8, v3);

  v6 = v0[28];
  v5 = v0[29];
  v7 = v0[27];
  v9 = v0[24];
  v8 = v0[25];
  v11 = v0[22];
  v10 = v0[23];
  v15 = v0[40];
  v16 = v0[19];
  v17 = v0[18];
  v18 = v0[17];
  v19 = v0[14];
  (*(v4 + 8))(v0[26], v0[20]);
  (*(v6 + 8))(v5, v7);

  v12 = v0[1];
  v13 = *MEMORY[0x277D85DE8];

  return v12();
}

uint64_t sub_2426F7D70(uint64_t *a1, void *a2)
{
  v44 = a2;
  v47[1] = *MEMORY[0x277D85DE8];
  v3 = sub_242731F34();
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v36 - v9;
  result = *a1;
  v12 = *(*a1 + 16);
  if (v12)
  {
    v45 = *(v8 + 16);
    v46 = v8 + 16;
    v13 = result + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v14 = *(v8 + 72);
    v43 = (v8 + 8);
    v36 = result;

    *&v15 = 136315138;
    v38 = v15;
    v41 = v14;
    v42 = v7;
    v37 = v10;
    do
    {
      v45(v10, v13, v3);
      v18 = sub_242731EA4();
      v47[0] = 0;
      v19 = [v44 removeItemAtURL:v18 error:v47];

      if (v19)
      {
        v16 = *v43;
        v17 = v47[0];
        v16(v10, v3);
      }

      else
      {
        v20 = v47[0];
        v21 = sub_242731E64();

        swift_willThrow();
        if (qword_27ECBA958 != -1)
        {
          swift_once();
        }

        v22 = sub_242732244();
        __swift_project_value_buffer(v22, qword_27ECBAB08);
        v45(v7, v10, v3);
        v23 = sub_242732224();
        v24 = v10;
        v25 = sub_2427327B4();
        if (os_log_type_enabled(v23, v25))
        {
          v26 = swift_slowAlloc();
          v40 = swift_slowAlloc();
          v47[0] = v40;
          *v26 = v38;
          sub_2426FEDE8(&qword_27ECBAB60, MEMORY[0x277CC9260]);
          v27 = sub_242732AD4();
          v29 = v28;
          v39 = v21;
          v30 = *v43;
          (*v43)(v42, v3);
          v31 = sub_2426FBA6C(v27, v29, v47);

          *(v26 + 4) = v31;
          _os_log_impl(&dword_2426EB000, v23, v25, "Failed to clean up: %s", v26, 0xCu);
          v32 = v40;
          __swift_destroy_boxed_opaque_existential_1Tm(v40);
          MEMORY[0x245D17E30](v32, -1, -1);
          v33 = v26;
          v7 = v42;
          MEMORY[0x245D17E30](v33, -1, -1);

          v10 = v37;
          v30(v37, v3);
        }

        else
        {

          v34 = *v43;
          (*v43)(v7, v3);
          v34(v24, v3);
          v10 = v24;
        }

        v14 = v41;
      }

      v13 += v14;
      --v12;
    }

    while (v12);
  }

  v35 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2426F817C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v4 = sub_242731F34();
  v3[8] = v4;
  v5 = *(v4 - 8);
  v3[9] = v5;
  v6 = *(v5 + 64) + 15;
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2426F8240, 0, 0);
}

uint64_t sub_2426F8240()
{
  v2 = v0[9];
  v1 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v6 = v0[5];
  v5 = v0[6];
  swift_beginAccess();
  (*(v2 + 16))(v1, v5, v3);
  v7 = swift_task_alloc();
  v0[11] = v7;
  *(v7 + 16) = v4;
  *(v7 + 24) = v1;
  v8 = *__swift_project_boxed_opaque_existential_1((v6 + OBJC_IVAR____TtC15CTLazuliSupport22FileTransferController_managedAuthenticator), *(v6 + OBJC_IVAR____TtC15CTLazuliSupport22FileTransferController_managedAuthenticator + 24));
  v9 = swift_task_alloc();
  v0[12] = v9;
  *v9 = v0;
  v9[1] = sub_2426F8374;

  return sub_2426EFB80(&unk_242736F00, v7);
}

uint64_t sub_2426F8374(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v7 = sub_2426F8538;
  }

  else
  {
    *(v4 + 112) = a1;
    v7 = sub_2426F849C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2426F849C()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[8];
  v4 = v0[9];

  (*(v4 + 8))(v2, v3);

  v5 = v0[1];
  v6 = v0[14];

  return v5(0, 0xF000000000000000, v6);
}

uint64_t sub_2426F8538()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[8];
  v4 = v0[9];

  (*(v4 + 8))(v2, v3);

  v5 = v0[1];
  v6 = v0[13];

  return v5();
}

uint64_t sub_2426F85C8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for FileDownloadResult.Output(0);
  v3[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v6 = sub_242731D54();
  v3[7] = v6;
  v7 = *(v6 - 8);
  v3[8] = v7;
  v8 = *(v7 + 64) + 15;
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2426F86C8, 0, 0);
}

uint64_t sub_2426F86C8()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[4];
  sub_2426F4F80(v0[3], 0, v1);
  sub_242731CD4();
  (*(v4 + 16))(v2, v1, v3);
  v6 = swift_task_alloc();
  v0[11] = v6;
  *(v6 + 16) = v5;
  *(v6 + 24) = v2;
  v7 = swift_task_alloc();
  v0[12] = v7;
  *v7 = v0;
  v7[1] = sub_2426F87D4;

  return sub_2426FC66C(dword_242736D40, v6);
}

uint64_t sub_2426F87D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *(*v4 + 96);
  v7 = *(*v4 + 88);
  v10 = *v4;
  v5[13] = a1;
  v5[14] = a2;
  v5[15] = a3;
  v5[16] = v3;

  if (v3)
  {
    v8 = sub_2426F8CB0;
  }

  else
  {
    v8 = sub_2426F890C;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_2426F890C()
{
  v1 = v0[14];
  v2 = v0[15];
  if (v1 >> 60 == 15)
  {
    sub_2426FB9C4();
    swift_allocError();
    *v3 = 0;
    swift_willThrow();

    v4 = v0[9];
    v5 = v0[7];
    v6 = v0[6];
    v7 = *(v0[8] + 8);
    v7(v0[10], v5);
    v7(v4, v5);

    v8 = v0[1];
  }

  else
  {
    v9 = v0[13];
    v11 = v0[5];
    v10 = v0[6];
    *v10 = v9;
    v10[1] = v1;
    swift_storeEnumTagMultiPayload();
    sub_2426FC2A4(v9, v1);
    sub_2426FC2A4(v9, v1);
    v12 = [v2 suggestedFilename];
    if (v12)
    {
      v13 = v12;
      v14 = sub_2427324B4();
      v37 = v15;
    }

    else
    {
      v14 = 0;
      v37 = 0;
    }

    v16 = v0[15];
    v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAB28, &qword_242736CE0) - 8) + 64) + 15;
    v38 = swift_task_alloc();
    v18 = [v16 MIMEType];
    v20 = v0[14];
    v19 = v0[15];
    v21 = v0[13];
    v22 = v0[10];
    v24 = v0[7];
    v23 = v0[8];
    if (v18)
    {
      v36 = v14;
      v25 = v18;
      sub_2427324B4();

      v26 = *(*(sub_2427321D4() - 8) + 64) + 15;
      swift_task_alloc();
      sub_2427321C4();
      sub_2427321A4();

      sub_2426FD498(v21, v20);
      sub_2426FD498(v21, v20);
      v27 = *(v23 + 8);
      v27(v22, v24);
      v14 = v36;
    }

    else
    {

      sub_2426FD498(v21, v20);
      sub_2426FD498(v21, v20);
      v27 = *(v23 + 8);
      v27(v22, v24);
      v28 = sub_2427321D4();
      (*(*(v28 - 8) + 56))(v38, 1, 1, v28);
    }

    v30 = v0[9];
    v29 = v0[10];
    v31 = v0[7];
    v32 = v0[2];
    sub_2426FDE60(v0[6], v32, type metadata accessor for FileDownloadResult.Output);
    v33 = type metadata accessor for FileDownloadResult(0);
    v34 = (v32 + *(v33 + 20));
    *v34 = v14;
    v34[1] = v37;
    sub_2426FEBB0(v38, v32 + *(v33 + 24), &qword_27ECBAB28, &qword_242736CE0);

    v27(v30, v31);

    v8 = v0[1];
  }

  return v8();
}

uint64_t sub_2426F8CB0()
{
  v1 = v0[16];
  v2 = v0[9];
  v3 = v0[7];
  v4 = v0[6];
  v5 = *(v0[8] + 8);
  v5(v0[10], v3);
  v5(v2, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_2426F8D74(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](sub_2426F8D94, 0, 0);
}

uint64_t sub_2426F8D94()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = swift_task_alloc();
  v0[7] = v3;
  *(v3 + 16) = v1;
  v4 = *__swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC15CTLazuliSupport22FileTransferController_managedAuthenticator), *(v2 + OBJC_IVAR____TtC15CTLazuliSupport22FileTransferController_managedAuthenticator + 24));
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_2426F8E8C;

  return sub_2426EEF48((v0 + 2), &unk_242736EE0, v3);
}

uint64_t sub_2426F8E8C()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_2426F900C;
  }

  else
  {
    v3 = sub_2426F8FA0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2426F8FA0()
{
  v1 = v0[7];

  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[1];

  return v5(v2, v3, v4);
}

uint64_t sub_2426F900C()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_2426F9070(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAB38, &qword_242738900) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v6 = type metadata accessor for FileDownloadRequest();
  v4[7] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2426F9140, 0, 0);
}

uint64_t sub_2426F9140()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v5 = v0[3];
  v4 = v0[4];
  v6 = sub_242731F34();
  v7 = *(*(v6 - 8) + 16);
  v7(v1, v5, v6);
  v7(v1 + *(v2 + 20), v4, v6);
  v8 = sub_242732154();
  v9 = *(*(v8 - 8) + 56);
  v9(v3, 1, 1, v8);
  v10 = *(v2 + 24);
  v9(v1 + v10, 1, 1, v8);
  sub_2426FDD98(v3, v1 + v10, &qword_27ECBAB38, &qword_242738900);
  v11 = swift_task_alloc();
  v0[9] = v11;
  *v11 = v0;
  v11[1] = sub_2426F92DC;
  v12 = v0[8];
  v13 = v0[5];
  v14 = v0[2];

  return sub_2426F6C28(v14, v12);
}

uint64_t sub_2426F92DC()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *v1;
  v4[10] = v0;

  sub_2426FDE00(v3, type metadata accessor for FileDownloadRequest);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2426F18C4, 0, 0);
  }

  else
  {
    v5 = v4[8];
    v6 = v4[6];

    v7 = v4[1];

    return v7();
  }
}

uint64_t FileTransferController.deinit()
{
  sub_2426FDE00(v0 + OBJC_IVAR____TtC15CTLazuliSupport22FileTransferController_configuration, type metadata accessor for FileTransferController.Configuration);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC15CTLazuliSupport22FileTransferController_managedAuthenticator));
  return v0;
}

uint64_t FileTransferController.__deallocating_deinit()
{
  sub_2426FDE00(v0 + OBJC_IVAR____TtC15CTLazuliSupport22FileTransferController_configuration, type metadata accessor for FileTransferController.Configuration);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC15CTLazuliSupport22FileTransferController_managedAuthenticator));
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2426F9538@<X0>(unsigned __int8 *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v74 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAB20, &unk_242737540);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v64 - v9;
  v11 = sub_242731F34();
  v75 = *(v11 - 8);
  v76 = v11;
  v12 = *(v75 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v64 - v16;
  v18 = *a1;
  v19 = [a2 fileTransferCapabilities];
  if (!v19)
  {
    goto LABEL_8;
  }

  v20 = v19;
  v21 = [v19 contentServerUploadUrl];
  if (!v21)
  {

LABEL_8:
    if (qword_27ECBA958 != -1)
    {
      swift_once();
    }

    v43 = sub_242732244();
    __swift_project_value_buffer(v43, qword_27ECBAB08);
    v44 = sub_242732224();
    v45 = sub_2427327D4();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_2426EB000, v44, v45, "Failed to retrieve file transfer capabilities", v46, 2u);
      MEMORY[0x245D17E30](v46, -1, -1);
    }

    sub_2426FB9C4();
    swift_allocError();
    *v47 = 4;
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1Tm(a3);
  }

  v22 = v21;
  sub_242731EC4();

  v23 = [a2 identity];
  if (v23)
  {
    v73 = a3;
    v24 = v23;
    v25 = [v23 impus];

    v26 = sub_242732684();
    if (v26[2])
    {
      v68 = v10;
      v27 = v26[5];
      v70 = v26[4];
      v71 = v27;

      v28 = sub_24271AB44();
      v72 = type metadata accessor for ManagedURLSessionAuthenticator();
      v81 = v18;
      sub_2426F0FFC(v73, v78);
      v29 = v79;
      v65 = v80;
      v30 = __swift_mutable_project_boxed_opaque_existential_1(v78, v79);
      v64[1] = v64;
      v31 = *(*(v29 - 8) + 64);
      MEMORY[0x28223BE20](v30);
      v33 = v64 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v34 + 16))(v33);
      v77 = v28;
      v35 = type metadata accessor for NetworkMonitor();
      v36 = a2;
      v69 = v28;

      v66 = v35;
      v67 = v36;
      v65 = sub_2427196D8(&v81, v36, v33, &v77, v72, v29, v35, v65, &off_2855021F0);
      __swift_destroy_boxed_opaque_existential_1Tm(v78);
      v38 = v75;
      v37 = v76;
      (*(v75 + 16))(v15, v17, v76);
      v39 = [v20 contentServerDownloadUrl];
      if (v39)
      {
        v40 = v68;
        v41 = v39;
        sub_242731EC4();

        v42 = 0;
      }

      else
      {
        v42 = 1;
        v40 = v68;
      }

      (*(v38 + 56))(v40, v42, 1, v37);
      v56 = type metadata accessor for FileTransferController.Configuration(0);
      v57 = v74;
      v58 = (v74 + v56[7]);
      v58[3] = v72;
      v58[4] = &off_285502120;
      v59 = v66;
      *v58 = v65;
      v60 = (v57 + v56[8]);
      v60[3] = v59;
      v60[4] = &off_2855021F0;
      *v60 = v69;
      v61 = v57 + v56[9];
      *(v61 + 24) = &type metadata for FileTransferController.DefaultFactory;
      *(v61 + 32) = &off_285500E88;

      __swift_destroy_boxed_opaque_existential_1Tm(v73);
      (*(v38 + 8))(v17, v37);
      (*(v38 + 32))(v57, v15, v37);
      result = sub_2426FEBB0(v40, v57 + v56[5], &qword_27ECBAB20, &unk_242737540);
      v62 = (v57 + v56[6]);
      v63 = v71;
      *v62 = v70;
      v62[1] = v63;
      return result;
    }

    a3 = v73;
  }

  if (qword_27ECBA958 != -1)
  {
    swift_once();
  }

  v49 = sub_242732244();
  __swift_project_value_buffer(v49, qword_27ECBAB08);
  v50 = sub_242732224();
  v51 = sub_2427327D4();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = a3;
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&dword_2426EB000, v50, v51, "Failed to retrieve IMPU", v53, 2u);
    v54 = v53;
    a3 = v52;
    MEMORY[0x245D17E30](v54, -1, -1);
  }

  sub_2426FB9C4();
  swift_allocError();
  *v55 = 4;
  swift_willThrow();

  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  return (*(v75 + 8))(v17, v76);
}

uint64_t sub_2426F9BF8(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  *(v3 + 56) = a1;
  *(v3 + 64) = a3;
  *(v3 + 105) = *a2;
  return MEMORY[0x2822009F8](sub_2426F9C20, 0, 0);
}

uint64_t sub_2426F9C20()
{
  v1 = *(v0 + 105);
  *(v0 + 72) = [objc_allocWithZone(MEMORY[0x277CC37B0]) initWithQueue_];
  *(v0 + 104) = v1;
  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  *v2 = v0;
  v2[1] = sub_2426F9CE8;

  return sub_2427036BC((v0 + 104));
}

uint64_t sub_2426F9CE8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v7 = sub_2426F9EB4;
  }

  else
  {
    *(v4 + 96) = a1;
    v7 = sub_2426F9E10;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2426F9E10()
{
  v8 = v0;
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v4 = *(v0 + 56);
  v3 = *(v0 + 64);
  v7[0] = *(v0 + 105);
  sub_2426F0FFC(v3, v0 + 16);
  sub_2426F9538(v7, v1, (v0 + 16), v4);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_2426F9EB4()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t static FileTransferController.makeController(for:urlSession:)(_BYTE *a1, uint64_t a2)
{
  *(v3 + 56) = a2;
  *(v3 + 64) = v2;
  v5 = type metadata accessor for FileTransferController.Configuration(0);
  *(v3 + 72) = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  *(v3 + 80) = swift_task_alloc();
  *(v3 + 88) = swift_task_alloc();
  *(v3 + 113) = *a1;

  return MEMORY[0x2822009F8](sub_2426F9FC4, 0, 0);
}

uint64_t sub_2426F9FC4()
{
  v1 = *(v0 + 56);
  *(v0 + 112) = *(v0 + 113);
  *(v0 + 40) = sub_2426F10AC(0, &qword_27ECBAAF8, 0x277CCAD30);
  *(v0 + 48) = &off_2855013B8;
  *(v0 + 16) = v1;
  v2 = v1;
  v3 = swift_task_alloc();
  *(v0 + 96) = v3;
  *v3 = v0;
  v3[1] = sub_2426FA0B0;
  v4 = *(v0 + 88);
  v5 = *(v0 + 64);

  return sub_2426F9BF8(v4, (v0 + 112), v0 + 16);
}

uint64_t sub_2426FA0B0()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v6 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_2426FA2E0;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v2 + 16));
    v4 = sub_2426FA1CC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2426FA1CC()
{
  v1 = v0[10];
  v2 = v0[9];
  sub_2426FDE60(v0[11], v1, type metadata accessor for FileTransferController.Configuration);
  v3 = type metadata accessor for FileTransferController(0);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  v6 = swift_allocObject();
  sub_2426FECC8(v1, v6 + OBJC_IVAR____TtC15CTLazuliSupport22FileTransferController_configuration, type metadata accessor for FileTransferController.Configuration);
  sub_2426F0FFC(v1 + *(v2 + 28), v6 + OBJC_IVAR____TtC15CTLazuliSupport22FileTransferController_managedAuthenticator);
  sub_2426FDE00(v1, type metadata accessor for FileTransferController.Configuration);

  v7 = v0[1];

  return v7(v6);
}

uint64_t sub_2426FA2E0()
{
  v1 = v0[10];
  v2 = v0[11];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v3 = v0[1];
  v4 = v0[13];

  return v3();
}

uint64_t sub_2426FA37C()
{
  v1 = *(v0 + 41);
  type metadata accessor for FileTransferController(0);
  *(v0 + 40) = v1;
  v2 = [objc_opt_self() defaultSessionConfiguration];
  v3 = sub_242732484();
  [v2 set:v3 sourceApplicationBundleIdentifier:?];

  v4 = [objc_opt_self() sessionWithConfiguration_];
  *(v0 + 16) = v4;

  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_2426FA4BC;

  return static FileTransferController.makeController(for:urlSession:)((v0 + 40), v4);
}

uint64_t sub_2426FA4BC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;
  *(*v2 + 32) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_2426FA614, 0, 0);
  }

  else
  {

    v7 = *(v6 + 8);

    return v7(a1);
  }
}

uint64_t sub_2426FA614()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 32);

  return v1();
}

uint64_t static FileTransferController.makeController(for:systemConfiguration:)(unsigned __int8 *a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for FileTransferController.Configuration(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v22 - v11;
  v23 = *a1;
  v13 = objc_opt_self();
  v14 = a2;
  v15 = [v13 defaultSessionConfiguration];
  v16 = sub_242732484();
  [v15 set:v16 sourceApplicationBundleIdentifier:?];

  v17 = [objc_opt_self() sessionWithConfiguration_];
  v22[3] = sub_2426F10AC(0, &qword_27ECBAAF8, 0x277CCAD30);
  v22[4] = &off_2855013B8;
  v22[0] = v17;
  sub_2426F9538(&v23, v14, v22, v12);
  if (!v2)
  {
    sub_2426FDE60(v12, v10, type metadata accessor for FileTransferController.Configuration);
    v18 = type metadata accessor for FileTransferController(0);
    v19 = *(v18 + 48);
    v20 = *(v18 + 52);
    v3 = swift_allocObject();
    sub_2426FECC8(v10, v3 + OBJC_IVAR____TtC15CTLazuliSupport22FileTransferController_configuration, type metadata accessor for FileTransferController.Configuration);
    sub_2426F0FFC(&v10[*(v6 + 28)], v3 + OBJC_IVAR____TtC15CTLazuliSupport22FileTransferController_managedAuthenticator);
    sub_2426FDE00(v10, type metadata accessor for FileTransferController.Configuration);
  }

  return v3;
}

id sub_2426FA8B4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_2426F10AC(0, &qword_27ECBABB8, 0x277D82BB8);
    v5 = sub_242732464();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_2426FA950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_242732954();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_2426FAA50, 0, 0);
}

uint64_t sub_2426FAA50()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = sub_242732964();
  v7 = sub_2426FEDE8(&qword_27ECBABC0, MEMORY[0x277D85928]);
  sub_242732B24();
  sub_2426FEDE8(&qword_27ECBABC8, MEMORY[0x277D858F8]);
  sub_242732974();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = *(MEMORY[0x277D85A58] + 4);
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_2426FABE0;
  v11 = v0[11];
  v12 = v0[7];

  return MEMORY[0x2822008C8](v11, v0 + 2, v6, v7);
}

uint64_t sub_2426FABE0()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 64);
  v7 = *v1;
  v7[15] = v0;

  v4(v5, v6);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2426FAD9C, 0, 0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    return v10();
  }
}

uint64_t sub_2426FAD9C()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

unint64_t sub_2426FAE08@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_242732644();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_2426FB5D0(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_2426FB5D0((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_242732614();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_242732574();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_242732574();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_242732644();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_2426FB5D0(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_242732644();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_2426FB5D0(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_2426FB5D0((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_242732574();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

char *sub_2426FB1C8@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, char *a7@<X6>, unint64_t a8@<X8>)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_38;
  }

  v16 = v9;
  v12 = a6;
  v17 = a5 >> 14;
  v13 = a6 >> 14;
  if (a1 && v17 != v13)
  {
    v8 = a4;
    v15 = MEMORY[0x277D84F90];
    v10 = a5;
    do
    {
      v18 = v10 >> 14;
      if (v10 >> 14 == v13)
      {
        break;
      }

      v40 = a1;
      v47 = v16;
      v42 = v15;
      v15 = a7;
      while (1)
      {
        while (1)
        {
          v46[0] = sub_242732864();
          v46[1] = v19;
          v20 = v47;
          v21 = a3(v46);
          v47 = v20;
          if (v20)
          {

            return v15;
          }

          v22 = v21;

          if (v22)
          {
            break;
          }

          v15 = a7;
          v18 = sub_242732844() >> 14;
          if (v18 == v13)
          {
            v15 = v42;
            goto LABEL_28;
          }
        }

        result = v10;
        if (v10 >> 14 != v18 || (a2 & 1) == 0)
        {
          break;
        }

        v15 = a7;
        v10 = sub_242732844();
        v18 = v10 >> 14;
        if (v10 >> 14 == v13)
        {
          v15 = v42;
          goto LABEL_28;
        }
      }

      if (v18 < v10 >> 14)
      {
        __break(1u);
        return result;
      }

      v43 = sub_242732874();
      v38 = v25;
      v39 = v24;
      v37 = v26;
      v15 = v42;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_2426FB5D0(0, *(v42 + 2) + 1, 1, v42);
      }

      v28 = *(v15 + 2);
      v27 = *(v15 + 3);
      if (v28 >= v27 >> 1)
      {
        v15 = sub_2426FB5D0((v27 > 1), v28 + 1, 1, v15);
      }

      *(v15 + 2) = v28 + 1;
      v29 = &v15[32 * v28];
      *(v29 + 4) = v43;
      *(v29 + 5) = v39;
      *(v29 + 6) = v38;
      *(v29 + 7) = v37;
      v10 = sub_242732844();
      a1 = v40;
      v16 = v47;
    }

    while (*(v15 + 2) != v40);
LABEL_28:
    if (v10 >> 14 == v13 && (a2 & 1) != 0)
    {

      return v15;
    }

    if (v13 >= v10 >> 14)
    {
      v8 = sub_242732874();
      v10 = v33;
      v12 = v34;
      v13 = v35;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_41;
      }

LABEL_33:
      v14 = *(v15 + 2);
      a8 = *(v15 + 3);
LABEL_34:
      v11 = v14 + 1;
      if (v14 < a8 >> 1)
      {
LABEL_35:
        *(v15 + 2) = v11;
        v36 = &v15[32 * v14];
        *(v36 + 4) = v8;
        *(v36 + 5) = v10;
        *(v36 + 6) = v12;
        *(v36 + 7) = v13;
        return v15;
      }

LABEL_38:
      v15 = sub_2426FB5D0((a8 > 1), v11, 1, v15);
      goto LABEL_35;
    }

LABEL_40:
    __break(1u);
LABEL_41:
    v15 = sub_2426FB5D0(0, *(v15 + 2) + 1, 1, v15);
    goto LABEL_33;
  }

  if (v17 != v13 || (a2 & 1) == 0)
  {
    if (v13 >= v17)
    {
      v8 = sub_242732874();
      v10 = v30;
      v12 = v31;
      v13 = v32;

      v15 = sub_2426FB5D0(0, 1, 1, MEMORY[0x277D84F90]);
      v14 = *(v15 + 2);
      a8 = *(v15 + 3);
      goto LABEL_34;
    }

    __break(1u);
    goto LABEL_40;
  }

  return MEMORY[0x277D84F90];
}

char *sub_2426FB5D0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBABB0, &qword_242736ED0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_2426FB6DC(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBABD0, &qword_242736F08);
  v10 = *(sub_242731F34() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_242731F34() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_2426FB8D4(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = v2[7];
  v12 = v2[8];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_2426F1158;

  return sub_2426F5AF8(a1, a2, v6, v7, v8, v9, v10, v11);
}

unint64_t sub_2426FB9C4()
{
  result = qword_27ECBAB50;
  if (!qword_27ECBAB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECBAB50);
  }

  return result;
}

uint64_t sub_2426FBA18(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_2426FBA6C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2426FBB38(v11, 0, 0, 1, a1, a2);
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
    sub_2426FEEE4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_2426FBB38(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2426FBC44(a5, a6);
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
    result = sub_242732944();
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

uint64_t sub_2426FBC44(uint64_t a1, unint64_t a2)
{
  v4 = sub_2426FBC90(a1, a2);
  sub_2426FBDC0(&unk_285500790);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_2426FBC90(uint64_t a1, unint64_t a2)
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

  v6 = sub_242708208(v5, 0);
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

  result = sub_242732944();
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
        v10 = sub_2427325A4();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_242708208(v10, 0);
        result = sub_2427328E4();
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

uint64_t sub_2426FBDC0(uint64_t result)
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

  result = sub_2426FBEAC(result, v12, 1, v3);
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

char *sub_2426FBEAC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBABD8, &qword_242736F10);
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

char *sub_2426FBFA0(char *a1, int64_t a2, char a3)
{
  result = sub_2426FBFE0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2426FBFC0(char *a1, int64_t a2, char a3)
{
  result = sub_2426FC0EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2426FBFE0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBABE8, &qword_242736F18);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2426FC0EC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBABF0, &qword_242736F20);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_2426FC1F8(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_242732AE4() & 1;
  }
}

unint64_t sub_2426FC250()
{
  result = qword_27ECBAB58;
  if (!qword_27ECBAB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECBAB58);
  }

  return result;
}

uint64_t sub_2426FC2A4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_2426FC2F8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2426FC360()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2426FF528;

  return sub_2426F817C(v2, v3, v4);
}

uint64_t sub_2426FC408(int a1, uint64_t a2, uint64_t a3)
{
  v15[3] = &type metadata for RCSAttachmentsAnalyticsEvent;
  v15[4] = &off_2855016A8;
  LOWORD(v15[0]) = a1 & 0x101;
  BYTE2(v15[0]) = BYTE2(a1) & 1;
  v15[1] = a2;
  v15[2] = a3;
  v3 = qword_27ECBA970;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = sub_242732244();
  __swift_project_value_buffer(v4, qword_27ECBAEF0);
  v5 = sub_242732224();
  v6 = sub_2427327E4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13[0] = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_2426FBA6C(0xD000000000000027, 0x8000000242733990, v13);
    _os_log_impl(&dword_2426EB000, v5, v6, "CoreAnalyticsClient: Sending event %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x245D17E30](v8, -1, -1);
    MEMORY[0x245D17E30](v7, -1, -1);
  }

  else
  {
  }

  v9 = sub_242732484();
  sub_2426F0FFC(v15, v14);
  v10 = swift_allocObject();
  sub_2426F0FE4(v14, v10 + 16);
  v13[4] = sub_2426FED68;
  v13[5] = v10;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_2426FA8B4;
  v13[3] = &block_descriptor;
  v11 = _Block_copy(v13);

  AnalyticsSendEventLazy();
  _Block_release(v11);

  return __swift_destroy_boxed_opaque_existential_1Tm(v15);
}

uint64_t sub_2426FC66C(int *a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v4 = sub_242732964();
  v2[4] = v4;
  v5 = *(v4 - 8);
  v2[5] = v5;
  v6 = *(v5 + 64) + 15;
  v2[6] = swift_task_alloc();
  v10 = (a1 + *a1);
  v7 = a1[1];
  v8 = swift_task_alloc();
  v2[7] = v8;
  *v8 = v2;
  v8[1] = sub_2426FC7BC;

  return v10();
}

uint64_t sub_2426FC7BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *(*v4 + 56);
  v7 = *v4;
  v5[8] = a1;
  v5[9] = a2;
  v5[10] = a3;

  if (v3)
  {
    v8 = v5[6];

    v9 = *(v7 + 8);

    return v9();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2426FC910, 0, 0);
  }
}

uint64_t sub_2426FC910()
{
  v41 = v0;
  v1 = *(v0 + 80);
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  v3 = *(v0 + 80);
  if (!v2)
  {
    sub_2426FB9C4();
    swift_allocError();
    *v21 = 0;
    swift_willThrow();
LABEL_15:

    sub_2426FD498(*(v0 + 64), *(v0 + 72));
    v28 = *(v0 + 48);

    v29 = *(v0 + 8);

    return v29();
  }

  v4 = v2;
  v5 = qword_27ECBA958;
  v6 = v3;
  if (v5 == -1)
  {
    v7 = v6;
  }

  else
  {
    swift_once();
    v7 = *(v0 + 80);
  }

  v8 = sub_242732244();
  *(v0 + 88) = __swift_project_value_buffer(v8, qword_27ECBAB08);
  v9 = v7;
  v10 = sub_242732224();
  v11 = sub_2427327C4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = *(v0 + 80);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    *(v13 + 4) = v4;
    *v14 = v4;
    v15 = v12;
    _os_log_impl(&dword_2426EB000, v10, v11, "%@", v13, 0xCu);
    sub_2426FED88(v14, &unk_27ECBAE80, &qword_242736EF0);
    MEMORY[0x245D17E30](v14, -1, -1);
    MEMORY[0x245D17E30](v13, -1, -1);
  }

  if ([v4 statusCode] == 200)
  {

    v17 = *(v0 + 64);
    v16 = *(v0 + 72);
    v18 = *(v0 + 48);

    v19 = *(v0 + 8);

    return v19(v17, v16, v4);
  }

  if ([v4 statusCode] != 503 || (sub_242707E7C(), (v24 & 1) != 0) || (v25 = v22, v26 = v23, (sub_242732C14() & 1) != 0))
  {
    v3 = *(v0 + 80);
    sub_2426FB9C4();
    swift_allocError();
    *v27 = 0;
    swift_willThrow();

    goto LABEL_15;
  }

  v30 = sub_242732224();
  v31 = sub_2427327E4();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v40 = v33;
    *v32 = 136315138;
    v34 = sub_242732C04();
    v36 = sub_2426FBA6C(v34, v35, &v40);

    *(v32 + 4) = v36;
    _os_log_impl(&dword_2426EB000, v30, v31, "Received 503 with Retry-After, will retry in %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
    MEMORY[0x245D17E30](v33, -1, -1);
    MEMORY[0x245D17E30](v32, -1, -1);
  }

  v37 = *(v0 + 48);
  sub_242732B44();
  v38 = swift_task_alloc();
  *(v0 + 96) = v38;
  *v38 = v0;
  v38[1] = sub_2426FCD84;
  v39 = *(v0 + 48);

  return sub_2426FA950(v25, v26, 0, 0, 1);
}

uint64_t sub_2426FCD84()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v10 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = v2[10];
    v6 = v2[5];
    v5 = v2[6];
    v7 = v2[4];

    (*(v6 + 8))(v5, v7);
    v8 = sub_2426FD044;
  }

  else
  {
    (*(v2[5] + 8))(v2[6], v2[4]);
    v8 = sub_2426FCEE0;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_2426FCEE0()
{
  v1 = v0[11];
  v2 = sub_242732224();
  v3 = sub_2427327E4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2426EB000, v2, v3, "Retrying download after Retry-After duration elapsed", v4, 2u);
    MEMORY[0x245D17E30](v4, -1, -1);
  }

  v5 = v0[2];

  v10 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_2426FD0B8;
  v8 = v0[3];

  return v10();
}

uint64_t sub_2426FD044()
{
  v1 = *(v0 + 104);
  sub_2426FD498(*(v0 + 64), *(v0 + 72));
  v2 = *(v0 + 48);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2426FD0B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *(*v4 + 112);
  v9 = *v4;
  v5[15] = a1;
  v5[16] = a2;
  v5[17] = a3;
  v5[18] = v3;

  if (v3)
  {
    v7 = sub_2426FD420;
  }

  else
  {
    v7 = sub_2426FD1D0;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2426FD1D0()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 136);
  v3 = sub_242732224();
  v4 = sub_2427327C4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 136);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v5;
    *v7 = v5;
    v8 = v5;
    _os_log_impl(&dword_2426EB000, v3, v4, "Response after retry: %@", v6, 0xCu);
    sub_2426FED88(v7, &unk_27ECBAE80, &qword_242736EF0);
    MEMORY[0x245D17E30](v7, -1, -1);
    MEMORY[0x245D17E30](v6, -1, -1);
  }

  v9 = *(v0 + 136);

  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (v10 && (v11 = v10, [v10 statusCode] == 200))
  {
    v12 = *(v0 + 72);
    v13 = *(v0 + 80);
    v14 = *(v0 + 64);

    sub_2426FD498(v14, v12);
    v16 = *(v0 + 120);
    v15 = *(v0 + 128);
    v17 = *(v0 + 48);

    v18 = *(v0 + 8);

    return v18(v16, v15, v11);
  }

  else
  {
    v20 = *(v0 + 128);
    v21 = *(v0 + 136);
    v22 = *(v0 + 120);
    v23 = *(v0 + 80);
    sub_2426FB9C4();
    swift_allocError();
    *v24 = 0;
    swift_willThrow();

    sub_2426FD498(v22, v20);
    sub_2426FD498(*(v0 + 64), *(v0 + 72));
    v25 = *(v0 + 48);

    v26 = *(v0 + 8);

    return v26();
  }
}

uint64_t sub_2426FD420()
{
  v1 = v0[10];

  v2 = v0[18];
  sub_2426FD498(v0[8], v0[9]);
  v3 = v0[6];

  v4 = v0[1];

  return v4();
}

uint64_t sub_2426FD498(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2426FBA18(a1, a2);
  }

  return a1;
}

void sub_2426FD4AC(uint64_t a1, uint64_t a2)
{
  v74 = type metadata accessor for FileDownloadRequest();
  v4 = *(*(v74 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v74);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v66 - v8;
  v10 = sub_242731F34();
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v66 - v16;
  if (qword_27ECBA958 != -1)
  {
    swift_once();
  }

  v18 = sub_242732244();
  v19 = __swift_project_value_buffer(v18, qword_27ECBAB08);
  v20 = v11[2];
  v76 = a2;
  v70 = v20;
  v71 = v11 + 2;
  v20(v17, a2, v10);
  v77 = a1;
  sub_2426FECC8(a1, v9, type metadata accessor for FileDownloadRequest);
  v72 = v19;
  v21 = sub_242732224();
  v22 = sub_2427327E4();
  v23 = os_log_type_enabled(v21, v22);
  v73 = v11;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v78 = v10;
    v25 = v24;
    v67 = swift_slowAlloc();
    v79 = v67;
    *v25 = 136315394;
    sub_2426FEDE8(&qword_27ECBAB60, MEMORY[0x277CC9260]);
    v68 = v15;
    v26 = sub_242732AD4();
    v69 = v7;
    v28 = v27;
    v29 = v11[1];
    v29(v17, v78);
    v30 = sub_2426FBA6C(v26, v28, &v79);

    *(v25 + 4) = v30;
    *(v25 + 12) = 2080;
    v31 = &v9[*(v74 + 20)];
    v15 = v68;
    v32 = sub_242732AD4();
    v34 = v33;
    sub_2426FDE00(v9, type metadata accessor for FileDownloadRequest);
    v35 = sub_2426FBA6C(v32, v34, &v79);
    v7 = v69;

    *(v25 + 14) = v35;
    _os_log_impl(&dword_2426EB000, v21, v22, "Attempting to decrypt file at path: %s to outputDecryptedFile: %s", v25, 0x16u);
    v36 = v67;
    swift_arrayDestroy();
    MEMORY[0x245D17E30](v36, -1, -1);
    v37 = v25;
    v10 = v78;
    MEMORY[0x245D17E30](v37, -1, -1);
  }

  else
  {

    sub_2426FDE00(v9, type metadata accessor for FileDownloadRequest);
    v29 = v11[1];
    v29(v17, v10);
  }

  v39 = v76;
  v38 = v77;
  v40 = v75;
  sub_242721260(v77, v76);
  if (v40)
  {
    swift_getErrorValue();
    v41 = sub_242732B54();
    v82 = &type metadata for RCSAttachmentsAnalyticsEvent;
    v83 = &off_2855016A8;
    LOWORD(v79) = 257;
    BYTE2(v79) = 0;
    v80 = v41;
    v81 = v42;
    v43 = __swift_project_boxed_opaque_existential_1(&v79, &type metadata for RCSAttachmentsAnalyticsEvent);
    if (*(v43 + 1))
    {
      v44 = 256;
    }

    else
    {
      v44 = 0;
    }

    v45 = v44 | *v43;
    if (*(v43 + 2))
    {
      v46 = 0x10000;
    }

    else
    {
      v46 = 0;
    }

    sub_2426FC408(v45 | v46, v43[1], v43[2]);
    __swift_destroy_boxed_opaque_existential_1Tm(&v79);
    swift_willThrow();
  }

  else
  {
    v78 = 0;
    v82 = &type metadata for RCSAttachmentsAnalyticsEvent;
    v83 = &off_2855016A8;
    LOWORD(v79) = 257;
    BYTE2(v79) = 1;
    v80 = 0;
    v81 = 0;
    v47 = __swift_project_boxed_opaque_existential_1(&v79, &type metadata for RCSAttachmentsAnalyticsEvent);
    if (*(v47 + 1))
    {
      v48 = 256;
    }

    else
    {
      v48 = 0;
    }

    v49 = v48 | *v47;
    if (*(v47 + 2))
    {
      v50 = 0x10000;
    }

    else
    {
      v50 = 0;
    }

    sub_2426FC408(v49 | v50, v47[1], v47[2]);
    __swift_destroy_boxed_opaque_existential_1Tm(&v79);
    v70(v15, v39, v10);
    sub_2426FECC8(v38, v7, type metadata accessor for FileDownloadRequest);
    v51 = sub_242732224();
    v52 = sub_2427327E4();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v79 = v77;
      *v53 = 136315394;
      sub_2426FEDE8(&qword_27ECBAB60, MEMORY[0x277CC9260]);
      v54 = v7;
      v55 = sub_242732AD4();
      v56 = v29;
      v58 = v57;
      v56(v15, v10);
      v59 = sub_2426FBA6C(v55, v58, &v79);

      *(v53 + 4) = v59;
      *(v53 + 12) = 2080;
      v60 = &v7[*(v74 + 20)];
      v61 = sub_242732AD4();
      v63 = v62;
      sub_2426FDE00(v54, type metadata accessor for FileDownloadRequest);
      v64 = sub_2426FBA6C(v61, v63, &v79);

      *(v53 + 14) = v64;
      _os_log_impl(&dword_2426EB000, v51, v52, "Successfully decrypted file at path: %s to outputDecryptedFile: %s", v53, 0x16u);
      v65 = v77;
      swift_arrayDestroy();
      MEMORY[0x245D17E30](v65, -1, -1);
      MEMORY[0x245D17E30](v53, -1, -1);
    }

    else
    {

      sub_2426FDE00(v7, type metadata accessor for FileDownloadRequest);
      v29(v15, v10);
    }
  }
}

uint64_t sub_2426FDBEC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2426FDC84;

  return sub_2426F8D74(v2, v3);
}

uint64_t sub_2426FDC84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*v3 + 16);
  v10 = *v3;

  v8 = *(v10 + 8);

  return v8(a1, a2, a3);
}

uint64_t sub_2426FDD98(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_2426FDE00(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2426FDE60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2426FDEE8(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2426FDF24()
{
  result = qword_27ECBAB68;
  if (!qword_27ECBAB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECBAB68);
  }

  return result;
}

uint64_t sub_2426FDF80()
{
  result = type metadata accessor for FileTransferController.Configuration(319);
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

uint64_t dispatch thunk of FileTransferController.uploadFile(at:thumbnailURL:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 104);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_2426F07F0;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of FileTransferController.upload(fileRequest:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 112);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2426F1158;

  return v10(a1, a2);
}

uint64_t dispatch thunk of FileTransferController.download(fileRequest:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 120);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2426F1158;

  return v10(a1, a2);
}

uint64_t dispatch thunk of FileTransferController.downloadFile(at:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 128);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2426F1158;

  return v10(a1, a2);
}

uint64_t dispatch thunk of FileTransferController.downloadFile(at:destinationFileURL:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 136);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_2426F1158;

  return v12(a1, a2, a3);
}

uint64_t getEnumTagSinglePayload for FileTransferController.Error(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FileTransferController.Error(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2426FE7AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_242731F34();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAB20, &unk_242737540);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_2426FE8DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_242731F34();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAB20, &unk_242737540);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_2426FE9F4()
{
  sub_242731F34();
  if (v0 <= 0x3F)
  {
    sub_2426FEAF8();
    if (v1 <= 0x3F)
    {
      sub_2426FEB50(319, &qword_27ECBAB98);
      if (v2 <= 0x3F)
      {
        sub_2426FEB50(319, &qword_27ECBABA0);
        if (v3 <= 0x3F)
        {
          sub_2426FEB50(319, &qword_27ECBABA8);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2426FEAF8()
{
  if (!qword_27ECBAB90)
  {
    sub_242731F34();
    v0 = sub_242732834();
    if (!v1)
    {
      atomic_store(v0, &qword_27ECBAB90);
    }
  }
}

uint64_t sub_2426FEB50(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_2426FEBB0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_2426FEC18(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2426F1158;

  return sub_2426EDD00(a1, a2, v6);
}

uint64_t sub_2426FECC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2426FED30()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2426FED88(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2426FEDE8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2426FEE30(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2426F1158;

  return sub_2426EE494(a1, a2, v7, v6);
}

uint64_t sub_2426FEEE4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_2426FEF40()
{
  result = qword_27ECBABE0;
  if (!qword_27ECBABE0)
  {
    sub_242732344();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECBABE0);
  }

  return result;
}

uint64_t sub_2426FEF8C()
{
  v21 = sub_242732024();
  v1 = *(v21 - 8);
  v24 = *(v1 + 80);
  v2 = (v24 + 56) & ~v24;
  v3 = v2 + *(v1 + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAB20, &unk_242737540) - 8);
  v23 = *(v4 + 80);
  v5 = (v3 + v23) & ~v23;
  v6 = *(v4 + 64);
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAB28, &qword_242736CE0) - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v6 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = sub_242731F34();
  v12 = *(v11 - 8);
  v13 = *(v12 + 80);
  v22 = v10;
  v25 = v9;
  v20 = (v9 + v10 + v13) & ~v13;
  v14 = *(v12 + 64) + v8 + v20;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  (*(v1 + 8))(v0 + v2, v21);
  if (!(*(v12 + 48))(v0 + v5, 1, v11))
  {
    (*(v12 + 8))(v0 + v5, v11);
  }

  v15 = v14 & ~v8;
  v16 = sub_2427321D4();
  v17 = *(v16 - 8);
  v18 = *(v17 + 48);
  if (!v18(v0 + v25, 1, v16))
  {
    (*(v17 + 8))(v0 + v25, v16);
  }

  (*(v12 + 8))(v0 + v20, v11);
  if (!v18(v0 + v15, 1, v16))
  {
    (*(v17 + 8))(v0 + v15, v16);
  }

  return MEMORY[0x2821FE8E8](v0, v15 + v22, v24 | v23 | v8 | v13 | 7);
}

uint64_t sub_2426FF2E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_242732024() - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAB20, &unk_242737540) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAB28, &qword_242736CE0) - 8);
  v12 = *(v11 + 80);
  v13 = (v9 + v10 + v12) & ~v12;
  v14 = *(v11 + 64);
  v15 = *(sub_242731F34() - 8);
  v16 = (v13 + v14 + *(v15 + 80)) & ~*(v15 + 80);
  return sub_2426F6290(a1, v2 + v6, v2 + v9, v2 + v13, v2 + v16, v2 + ((*(v15 + 64) + v12 + v16) & ~v12), a2);
}

uint64_t sub_2426FF4D0()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t get_enum_tag_for_layout_string_15CTLazuliSupport24HTTPAuthenticationSchemeO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_2426FF55C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2426FF5A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_2426FF5E8(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_2426FF61C@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_2426FF664(uint64_t a1)
{
  v2 = sub_242700644();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2426FF6A0(uint64_t a1)
{
  v2 = sub_242700644();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2426FF6DC(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v33 = a3;
  v34 = a4;
  v32 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAC40, &qword_242737080);
  v30 = *(v5 - 8);
  v31 = v5;
  v6 = *(v30 + 64);
  MEMORY[0x28223BE20](v5);
  v29 = &v25 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAC48, &qword_242737088);
  v27 = *(v8 - 8);
  v28 = v8;
  v9 = *(v27 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAC50, &qword_242737090);
  v26 = *(v12 - 8);
  v13 = *(v26 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v25 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAC58, &qword_242737098);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v25 - v19;
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_242700548();
  sub_242732BF4();
  if (!v34)
  {
    v36 = 1;
    sub_2427005F0();
    sub_242732A64();
    v22 = v28;
    sub_242732A94();
    v23 = v27;
    goto LABEL_5;
  }

  if (v34 == 1)
  {
    v37 = 2;
    sub_24270059C();
    v11 = v29;
    sub_242732A64();
    v22 = v31;
    sub_242732A94();
    v23 = v30;
LABEL_5:
    (*(v23 + 8))(v11, v22);
    return (*(v17 + 8))(v20, v16);
  }

  v35 = 0;
  sub_242700644();
  sub_242732A64();
  (*(v26 + 8))(v15, v12);
  return (*(v17 + 8))(v20, v16);
}

uint64_t sub_2426FFAD0(uint64_t a1)
{
  v2 = sub_24270059C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2426FFB0C(uint64_t a1)
{
  v2 = sub_24270059C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2426FFB48()
{
  v1 = 0x747365676964;
  if (*v0 != 1)
  {
    v1 = 0x61727473746F6F62;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6369736162;
  }
}

uint64_t sub_2426FFBA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2426FFDFC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2426FFBD4(uint64_t a1)
{
  v2 = sub_242700548();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2426FFC10(uint64_t a1)
{
  v2 = sub_242700548();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2426FFC58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6D6C616572 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_242732AE4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2426FFCDC(uint64_t a1)
{
  v2 = sub_2427005F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2426FFD18(uint64_t a1)
{
  v2 = sub_2427005F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2426FFD54@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2426FFF14(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_2426FFDA4()
{
  v1 = 0x6369736142;
  if (*(v0 + 16) == 1)
  {
    v1 = 0x61727473746F6F42;
  }

  if (*(v0 + 16))
  {
    return v1;
  }

  else
  {
    return 0x747365676944;
  }
}

uint64_t sub_2426FFDFC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6369736162 && a2 == 0xE500000000000000;
  if (v4 || (sub_242732AE4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x747365676964 && a2 == 0xE600000000000000 || (sub_242732AE4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x61727473746F6F62 && a2 == 0xE900000000000070)
  {

    return 2;
  }

  else
  {
    v6 = sub_242732AE4();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_2426FFF14(uint64_t *a1)
{
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBABF8, &qword_242737058);
  v40 = *(v37 - 8);
  v2 = *(v40 + 64);
  MEMORY[0x28223BE20](v37);
  v42 = &v35 - v3;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAC00, &qword_242737060);
  v39 = *(v41 - 8);
  v4 = *(v39 + 64);
  MEMORY[0x28223BE20](v41);
  v6 = &v35 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAC08, &qword_242737068);
  v38 = *(v7 - 8);
  v8 = *(v38 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v35 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAC10, &unk_242737070);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v35 - v14;
  v16 = a1[3];
  v17 = a1[4];
  v44 = a1;
  v18 = __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_242700548();
  v19 = v43;
  sub_242732BE4();
  if (!v19)
  {
    v36 = v7;
    v43 = 0;
    v21 = v41;
    v20 = v42;
    v22 = v12;
    v23 = sub_242732A54();
    v24 = (2 * *(v23 + 16)) | 1;
    v45 = v23;
    v46 = v23 + 32;
    v47 = 0;
    v48 = v24;
    v25 = sub_242703078();
    if (v25 == 3 || v47 != v48 >> 1)
    {
      v27 = sub_242732934();
      swift_allocError();
      v29 = v28;
      v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAC20, &unk_242737B70) + 48);
      *v29 = &type metadata for HTTPAuthenticationScheme;
      v18 = v15;
      sub_2427329F4();
      sub_242732924();
      (*(*(v27 - 8) + 104))(v29, *MEMORY[0x277D84160], v27);
      swift_willThrow();
    }

    else if (v25)
    {
      if (v25 == 1)
      {
        v49 = 1;
        sub_2427005F0();
        v18 = v15;
        v26 = v43;
        sub_2427329E4();
        if (!v26)
        {
          v18 = sub_242732A24();
          (*(v39 + 8))(v6, v21);
          (*(v12 + 8))(v15, v11);
          swift_unknownObjectRelease();
          goto LABEL_10;
        }
      }

      else
      {
        v49 = 2;
        sub_24270059C();
        v18 = v15;
        v33 = v43;
        sub_2427329E4();
        if (!v33)
        {
          v34 = v37;
          v18 = sub_242732A24();
          (*(v40 + 8))(v20, v34);
          (*(v12 + 8))(v15, v11);
          swift_unknownObjectRelease();
          goto LABEL_10;
        }
      }
    }

    else
    {
      v49 = 0;
      sub_242700644();
      v18 = v15;
      v32 = v43;
      sub_2427329E4();
      if (!v32)
      {
        (*(v38 + 8))(v10, v36);
        (*(v12 + 8))(v15, v11);
        swift_unknownObjectRelease();
        v18 = 0;
        goto LABEL_10;
      }
    }

    (*(v22 + 8))(v15, v11);
    swift_unknownObjectRelease();
  }

LABEL_10:
  __swift_destroy_boxed_opaque_existential_1Tm(v44);
  return v18;
}

unint64_t sub_242700548()
{
  result = qword_27ECBAC18;
  if (!qword_27ECBAC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECBAC18);
  }

  return result;
}

unint64_t sub_24270059C()
{
  result = qword_27ECBAC28;
  if (!qword_27ECBAC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECBAC28);
  }

  return result;
}

unint64_t sub_2427005F0()
{
  result = qword_27ECBAC30;
  if (!qword_27ECBAC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECBAC30);
  }

  return result;
}

unint64_t sub_242700644()
{
  result = qword_27ECBAC38;
  if (!qword_27ECBAC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECBAC38);
  }

  return result;
}

uint64_t sub_242700698(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (a1 == a5 && a2 == a6 && !(a3 >> 16) && v7 == a4 >> 16)
  {
    return 1;
  }

  else
  {
    return sub_242732AC4() & 1;
  }
}

uint64_t sub_242700704(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAC60, &qword_2427370A0);
  v66 = *(v2 - 8);
  v67 = v2;
  v3 = *(v66 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v65 = v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v70 = v61 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAC68, &qword_2427370A8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v68 = v61 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAC70, &qword_2427370B0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v69 = v61 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAC78, &qword_2427370B8);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v61 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAC80, &qword_2427370C0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = v61 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAC88, &qword_2427370C8);
  v72 = *(v26 - 8);
  v73 = v26;
  v27 = *(v72 + 64);
  MEMORY[0x28223BE20](v26);
  v71 = v61 - v28;
  v29 = sub_242732484();
  v30 = [a1 valueForHTTPHeaderField_];

  if (v30)
  {
    v62 = v11;
    v63 = v10;
    v64 = a1;
    v31 = sub_2427324B4();
    v33 = v32;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAC90, &qword_2427370D0);
    sub_242732064();
    sub_2427010B0(&qword_27ECBAC98, &qword_27ECBAC78, &qword_2427370B8);
    sub_242732054();
    v34 = HIBYTE(v33) & 0xF;
    if ((v33 & 0x2000000000000000) == 0)
    {
      v34 = v31;
    }

    v35 = 7;
    if (((v33 >> 60) & ((v31 & 0x800000000000000) == 0)) != 0)
    {
      v35 = 11;
    }

    v61[1] = v35 | (v34 << 16);
    sub_242732644();
    sub_242732094();

    v36 = *(v15 + 8);
    v36(v19, v14);
    v36(v21, v14);
    v37 = v72;
    v38 = v73;
    v39 = (*(v72 + 48))(v25, 1, v73);
    v40 = v70;
    if (v39 == 1)
    {

      v41 = &qword_27ECBAC80;
      v42 = &qword_2427370C0;
LABEL_12:
      sub_2426FED88(v25, v41, v42);
      return 0;
    }

    (*(v37 + 32))(v71, v25, v38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBACA0, &qword_2427370D8);
    sub_242732064();
    sub_242732644();

    sub_2427010B0(&qword_27ECBACA8, &qword_27ECBAC60, &qword_2427370A0);
    v43 = v65;
    v44 = v67;
    sub_242732054();
    v45 = v68;
    sub_242732074();

    v46 = *(v66 + 8);
    v46(v43, v44);
    v46(v40, v44);
    v48 = v62;
    v47 = v63;
    v49 = v69;
    v25 = v45;
    v50 = (*(v62 + 48))(v45, 1, v63);
    v51 = v64;
    v52 = v71;
    v53 = v73;
    if (v50 == 1)
    {
      (*(v72 + 8))(v71, v73);

      v41 = &qword_27ECBAC68;
      v42 = &qword_2427370A8;
      goto LABEL_12;
    }

    (*(v48 + 32))(v49, v25, v47);
    swift_getKeyPath();
    sub_2427320A4();

    v55 = v78;
    v56 = v79;
    v58 = v80;
    v57 = v81;
    if (sub_242700698(0x6369736142, 0xE500000000000000, v78, v79, v80, v81))
    {

      (*(v48 + 8))(v49, v47);
      (*(v72 + 8))(v52, v53);
      return 0;
    }

    v59 = sub_242700698(0x747365676944, 0xE600000000000000, v55, v56, v58, v57);

    if (v59)
    {
      swift_getKeyPath();
      sub_2427320A4();

      v60 = MEMORY[0x245D17030](v74, v75, v76, v77);

      sub_2427325F4();

      (*(v48 + 8))(v49, v47);
      (*(v72 + 8))(v71, v53);
      return v60;
    }

    (*(v48 + 8))(v49, v47);
    (*(v72 + 8))(v71, v53);
  }

  else
  {
  }

  return 0;
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

uint64_t sub_2427010B0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_242701104(void *a1)
{
  v2 = [a1 protectionSpace];
  v3 = [v2 authenticationMethod];
  v4 = sub_2427324B4();
  v6 = v5;

  v7 = *MEMORY[0x277CCA710];
  if (sub_2427324B4() == v4 && v8 == v6)
  {

    goto LABEL_8;
  }

  v10 = sub_242732AE4();

  if (v10)
  {

LABEL_8:

    return 0;
  }

  v12 = *MEMORY[0x277CCA718];
  if (sub_2427324B4() == v4 && v13 == v6)
  {
  }

  else
  {
    v15 = sub_242732AE4();

    if ((v15 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  v16 = [v2 realm];
  if (v16)
  {
    v17 = v16;
    v18 = sub_2427324B4();

    sub_2427325F4();
    return v18;
  }

LABEL_18:

  return 0;
}

uint64_t getEnumTagSinglePayload for HTTPAuthenticationScheme.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for HTTPAuthenticationScheme.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_24270145C()
{
  result = qword_27ECBACB0;
  if (!qword_27ECBACB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECBACB0);
  }

  return result;
}

unint64_t sub_2427014B4()
{
  result = qword_27ECBACB8;
  if (!qword_27ECBACB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECBACB8);
  }

  return result;
}

unint64_t sub_24270150C()
{
  result = qword_27ECBACC0;
  if (!qword_27ECBACC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECBACC0);
  }

  return result;
}

unint64_t sub_242701564()
{
  result = qword_27ECBACC8;
  if (!qword_27ECBACC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECBACC8);
  }

  return result;
}

unint64_t sub_2427015BC()
{
  result = qword_27ECBACD0;
  if (!qword_27ECBACD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECBACD0);
  }

  return result;
}

unint64_t sub_242701614()
{
  result = qword_27ECBACD8;
  if (!qword_27ECBACD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECBACD8);
  }

  return result;
}

unint64_t sub_24270166C()
{
  result = qword_27ECBACE0;
  if (!qword_27ECBACE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECBACE0);
  }

  return result;
}

unint64_t sub_2427016C4()
{
  result = qword_27ECBACE8;
  if (!qword_27ECBACE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECBACE8);
  }

  return result;
}

unint64_t sub_24270171C()
{
  result = qword_27ECBACF0;
  if (!qword_27ECBACF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECBACF0);
  }

  return result;
}

unint64_t sub_242701774()
{
  result = qword_27ECBACF8;
  if (!qword_27ECBACF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECBACF8);
  }

  return result;
}

unint64_t sub_2427017CC()
{
  result = qword_27ECBAD00;
  if (!qword_27ECBAD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECBAD00);
  }

  return result;
}

uint64_t sub_24270183C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAB20, &unk_242737540);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v26 - v4;
  v27 = 0;
  v28 = 0xE000000000000000;
  sub_2427328F4();

  v27 = 0xD000000000000011;
  v28 = 0x8000000242733A70;
  MEMORY[0x245D17090](v1[9], v1[10]);
  MEMORY[0x245D17090](34, 0xE100000000000000);
  strcpy(v26, ", realm=");
  WORD1(v26[1]) = 0;
  HIDWORD(v26[1]) = -385875968;
  MEMORY[0x245D17090](*v1, v1[1]);
  MEMORY[0x245D17090](34, 0xE100000000000000);
  MEMORY[0x245D17090](v26[0], v26[1]);

  strcpy(v26, ", uri=");
  v26[1] = 0xE700000000000000;
  __swift_project_boxed_opaque_existential_1(v1 + 13, v1[16]);
  sub_242731D34();
  v6 = sub_242731F34();
  v7 = *(v6 - 8);
  result = (*(v7 + 48))(v5, 1, v6);
  if (result != 1)
  {
    v9 = sub_242708D6C();
    v11 = v10;
    (*(v7 + 8))(v5, v6);
    MEMORY[0x245D17090](v9, v11);

    MEMORY[0x245D17090](34, 0xE100000000000000);
    MEMORY[0x245D17090](v26[0], v26[1]);

    strcpy(v26, ", response=");
    BYTE5(v26[1]) = 0;
    HIWORD(v26[1]) = -5120;
    v12 = sub_242701D58();
    MEMORY[0x245D17090](v12);

    MEMORY[0x245D17090](34, 0xE100000000000000);
    MEMORY[0x245D17090](v26[0], v26[1]);

    strcpy(v26, ", algorithm=");
    BYTE5(v26[1]) = 0;
    HIWORD(v26[1]) = -5120;
    v13 = 0xE700000000000000;
    v14 = 0x3635322D414853;
    if (*(v0 + 32) != 2)
    {
      v14 = 0x2D3231352D414853;
      v13 = 0xEB00000000363532;
    }

    v15 = 0xE300000000000000;
    v16 = 3490893;
    if (*(v0 + 32))
    {
      v16 = 0x444D2D3176414B41;
      v15 = 0xE900000000000035;
    }

    if (*(v0 + 32) <= 1u)
    {
      v17 = v16;
    }

    else
    {
      v17 = v14;
    }

    if (*(v0 + 32) <= 1u)
    {
      v18 = v15;
    }

    else
    {
      v18 = v13;
    }

    MEMORY[0x245D17090](v17, v18);

    MEMORY[0x245D17090](v26[0], v26[1]);

    v26[0] = 0x3D636E202CLL;
    v26[1] = 0xE500000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAD08, &qword_242738770);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_242737530;
    v20 = *(v0 + 144);
    v21 = MEMORY[0x277D83C10];
    *(v19 + 56) = MEMORY[0x277D83B88];
    *(v19 + 64) = v21;
    *(v19 + 32) = v20;
    v22 = sub_2427324D4();
    MEMORY[0x245D17090](v22);

    MEMORY[0x245D17090](v26[0], v26[1]);

    strcpy(v26, ", nonce=");
    WORD1(v26[1]) = 0;
    HIDWORD(v26[1]) = -385875968;
    MEMORY[0x245D17090](*(v0 + 16), *(v0 + 24));
    MEMORY[0x245D17090](34, 0xE100000000000000);
    MEMORY[0x245D17090](v26[0], v26[1]);

    strcpy(v26, ", cnonce=");
    BYTE3(v26[1]) = 0;
    HIDWORD(v26[1]) = -369098752;
    MEMORY[0x245D17090](*(v0 + 152), *(v0 + 160));
    MEMORY[0x245D17090](34, 0xE100000000000000);
    MEMORY[0x245D17090](v26[0], v26[1]);

    strcpy(v26, ", opaque=");
    BYTE3(v26[1]) = 0;
    HIDWORD(v26[1]) = -369098752;
    MEMORY[0x245D17090](*(v0 + 48), *(v0 + 56));
    MEMORY[0x245D17090](34, 0xE100000000000000);
    MEMORY[0x245D17090](v26[0], v26[1]);

    v26[0] = 0x3D706F71202CLL;
    v26[1] = 0xE600000000000000;
    v23 = *(v0 + 40);
    if (v23[2])
    {
      v24 = v23[4];
      v25 = v23[5];

      MEMORY[0x245D17090](v24, v25);

      MEMORY[0x245D17090](v26[0], v26[1]);

      return v27;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_242701D58()
{
  v1 = sub_242702054();
  v3 = v2;
  v4 = sub_2427021B4();
  v6 = v5;
  v26 = *(v0 + 16);
  v27 = *(v0 + 24);

  MEMORY[0x245D17090](58, 0xE100000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAD08, &qword_242738770);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_242737530;
  v8 = *(v0 + 144);
  v9 = MEMORY[0x277D83C10];
  *(v7 + 56) = MEMORY[0x277D83B88];
  *(v7 + 64) = v9;
  *(v7 + 32) = v8;
  v10 = sub_2427324D4();
  v12 = v11;

  MEMORY[0x245D17090](v10, v12);

  MEMORY[0x245D17090](58, 0xE100000000000000);

  v13 = *(v0 + 152);
  v14 = *(v0 + 160);

  MEMORY[0x245D17090](v13, v14);

  MEMORY[0x245D17090](58, 0xE100000000000000);

  v16 = *(v0 + 40);
  if (v16[2])
  {
    v17 = v16[4];
    v18 = v16[5];

    MEMORY[0x245D17090](v17, v18);

    MEMORY[0x245D17090](58, 0xE100000000000000);

    MEMORY[0x245D17090](v4, v6);

    MEMORY[0x245D17090](58, 0xE100000000000000);
    MEMORY[0x245D17090](v26, v27);

    v19 = sub_242709A44(v1, v3);
    v21 = v20;
    v22 = sub_24271B0A0(v19, v20, *(v0 + 32));
    v24 = v23;
    sub_2427096C8(v22, v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAD10, &qword_242737550);
    sub_2427023DC();
    v25 = sub_242732474();
    sub_2426FBA18(v19, v21);
    sub_2426FBA18(v22, v24);

    return v25;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_242702054()
{
  v1 = v0;
  v2 = v0[10];
  v16 = v0[9];
  v17 = v2;

  MEMORY[0x245D17090](58, 0xE100000000000000);
  MEMORY[0x245D17090](*v1, v1[1]);
  MEMORY[0x245D17090](58, 0xE100000000000000);
  v20 = sub_242709A44(v16, v17);
  v21 = v3;
  v4 = v0[11];
  v5 = v1[12];
  v18 = MEMORY[0x277CC9318];
  v19 = MEMORY[0x277CC9300];
  v16 = v4;
  v17 = v5;
  v6 = __swift_project_boxed_opaque_existential_1(&v16, MEMORY[0x277CC9318]);
  v7 = *v6;
  v8 = v6[1];
  sub_2426FC2A4(v4, v5);
  sub_242711824(v7, v8);
  __swift_destroy_boxed_opaque_existential_1Tm(&v16);
  v9 = v20;
  v10 = v21;
  v11 = sub_24271B0A0(v20, v21, *(v1 + 32));
  v13 = v12;
  v16 = sub_2427096C8(v11, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAD10, &qword_242737550);
  sub_2427023DC();
  v14 = sub_242732474();
  sub_2426FBA18(v11, v13);

  sub_2426FBA18(v9, v10);
  return v14;
}

uint64_t sub_2427021B4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAB20, &unk_242737540);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v21 - v3;
  v22 = 0;
  v23 = 0xE000000000000000;
  __swift_project_boxed_opaque_existential_1((v0 + 104), *(v0 + 128));
  v5 = sub_242731CB4();
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v5 = 5522759;
    v7 = 0xE300000000000000;
  }

  MEMORY[0x245D17090](v5, v7);

  MEMORY[0x245D17090](58, 0xE100000000000000);
  __swift_project_boxed_opaque_existential_1((v0 + 104), *(v0 + 128));
  sub_242731D34();
  v8 = sub_242731F34();
  v9 = *(v8 - 8);
  result = (*(v9 + 48))(v4, 1, v8);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v11 = sub_242708D6C();
    v13 = v12;
    (*(v9 + 8))(v4, v8);
    MEMORY[0x245D17090](v11, v13);

    v14 = sub_242709A44(v22, v23);
    v16 = v15;
    v17 = sub_24271B0A0(v14, v15, *(v0 + 32));
    v19 = v18;
    v22 = sub_2427096C8(v17, v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAD10, &qword_242737550);
    sub_2427023DC();
    v20 = sub_242732474();
    sub_2426FBA18(v14, v16);
    sub_2426FBA18(v17, v19);

    return v20;
  }

  return result;
}

unint64_t sub_2427023DC()
{
  result = qword_27ECBAD18;
  if (!qword_27ECBAD18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECBAD10, &qword_242737550);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECBAD18);
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

__n128 __swift_memcpy168_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_242702498(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
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

uint64_t sub_2427024E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
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
      *(result + 168) = 1;
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

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_242702590()
{
  if (*v0)
  {
    return 7305076;
  }

  else
  {
    return 6647407;
  }
}

uint64_t sub_2427025B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 6647407 && a2 == 0xE300000000000000;
  if (v5 || (sub_242732AE4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 7305076 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_242732AE4();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_24270269C(uint64_t a1)
{
  v2 = sub_242702AB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2427026D8(uint64_t a1)
{
  v2 = sub_242702AB4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_242702714(uint64_t a1)
{
  v2 = sub_242702B5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242702750(uint64_t a1)
{
  v2 = sub_242702B5C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24270278C(uint64_t a1)
{
  v2 = sub_242702B08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2427027C8(uint64_t a1)
{
  v2 = sub_242702B08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SubscriptionID.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAD20, &qword_242737658);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x28223BE20](v3);
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAD28, &qword_242737660);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAD30, &qword_242737668);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_242702AB4();
  sub_242732BF4();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_242702B08();
    v18 = v22;
    sub_242732A64();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_242702B5C();
    sub_242732A64();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
}

unint64_t sub_242702AB4()
{
  result = qword_27ECBAD38;
  if (!qword_27ECBAD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECBAD38);
  }

  return result;
}

unint64_t sub_242702B08()
{
  result = qword_27ECBAD40;
  if (!qword_27ECBAD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECBAD40);
  }

  return result;
}

unint64_t sub_242702B5C()
{
  result = qword_27ECBAD48;
  if (!qword_27ECBAD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECBAD48);
  }

  return result;
}

uint64_t SubscriptionID.hashValue.getter()
{
  v1 = *v0;
  sub_242732BA4();
  MEMORY[0x245D176B0](v1);
  return sub_242732BD4();
}

uint64_t SubscriptionID.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAD50, &qword_242737670);
  v4 = *(v3 - 8);
  v33 = v3;
  v34 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAD58, &qword_242737678);
  v32 = *(v8 - 8);
  v9 = *(v32 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAD60, &qword_242737680);
  v35 = *(v12 - 8);
  v13 = *(v35 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v30 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_242702AB4();
  v17 = v37;
  sub_242732BE4();
  if (v17)
  {
    goto LABEL_7;
  }

  v31 = v8;
  v37 = a1;
  v19 = v35;
  v18 = v36;
  v20 = v15;
  v21 = sub_242732A54();
  if (*(v21 + 16) != 1)
  {
    v23 = sub_242732934();
    swift_allocError();
    v25 = v24;
    v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAC20, &unk_242737B70) + 48);
    *v25 = &type metadata for SubscriptionID;
    sub_2427329F4();
    sub_242732924();
    (*(*(v23 - 8) + 104))(v25, *MEMORY[0x277D84160], v23);
    swift_willThrow();
    (*(v19 + 8))(v20, v12);
    swift_unknownObjectRelease();
    a1 = v37;
LABEL_7:
    v28 = a1;
    return __swift_destroy_boxed_opaque_existential_1Tm(v28);
  }

  v30 = v21;
  v22 = *(v21 + 32);
  if (v22)
  {
    v39 = 1;
    sub_242702B08();
    sub_2427329E4();
    (*(v34 + 8))(v7, v33);
  }

  else
  {
    v27 = *(v21 + 32);
    v38 = 0;
    sub_242702B5C();
    sub_2427329E4();
    (*(v32 + 8))(v11, v31);
  }

  (*(v19 + 8))(v20, v12);
  swift_unknownObjectRelease();
  *v18 = v22;
  v28 = v37;
  return __swift_destroy_boxed_opaque_existential_1Tm(v28);
}

uint64_t sub_242703078()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2427030AC()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t SubscriptionID.init(ctSubscriptionSlot:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (result == 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

void SubscriptionID.init(ctServiceDescriptor:)(void *a1@<X0>, char *a2@<X8>)
{
  if ([a1 domain] == 1)
  {
    v4 = [a1 instance];
    v5 = [v4 integerValue];

    if (v5 == 2)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }

    if (v5 == 1)
    {
      v6 = 0;
    }
  }

  else
  {

    v6 = 2;
  }

  *a2 = v6;
}

void SubscriptionID.init(ctSubscriptionContext:)(void *a1@<X0>, char *a2@<X8>)
{
  v4 = [a1 slotID];

  if (v4 == 2)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (v4 == 1)
  {
    v5 = 0;
  }

  *a2 = v5;
}

uint64_t SubscriptionID.description.getter()
{
  if (*v0)
  {
    return 7305076;
  }

  else
  {
    return 6647407;
  }
}

unint64_t sub_242703244()
{
  result = qword_27ECBAD68;
  if (!qword_27ECBAD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECBAD68);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FileDownloadResult.Output.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FileDownloadResult.Output.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_242703430()
{
  result = qword_27ECBAD70;
  if (!qword_27ECBAD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECBAD70);
  }

  return result;
}

unint64_t sub_242703488()
{
  result = qword_27ECBAD78;
  if (!qword_27ECBAD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECBAD78);
  }

  return result;
}

unint64_t sub_2427034E0()
{
  result = qword_27ECBAD80;
  if (!qword_27ECBAD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECBAD80);
  }

  return result;
}

unint64_t sub_242703538()
{
  result = qword_27ECBAD88;
  if (!qword_27ECBAD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECBAD88);
  }

  return result;
}

unint64_t sub_242703590()
{
  result = qword_27ECBAD90;
  if (!qword_27ECBAD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECBAD90);
  }

  return result;
}

unint64_t sub_2427035E8()
{
  result = qword_27ECBAD98;
  if (!qword_27ECBAD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECBAD98);
  }

  return result;
}

unint64_t sub_242703640()
{
  result = qword_27ECBADA0;
  if (!qword_27ECBADA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECBADA0);
  }

  return result;
}

uint64_t sub_2427036BC(_BYTE *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  *(v2 + 160) = v1;
  v4 = sub_242731CA4();
  *(v2 + 168) = v4;
  v5 = *(v4 - 8);
  *(v2 + 176) = v5;
  v6 = *(v5 + 64) + 15;
  *(v2 + 184) = swift_task_alloc();
  *(v2 + 204) = *a1;
  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_2427037BC, 0, 0);
}

uint64_t sub_2427037BC()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_24270390C;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBADC0, &qword_242737A00);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2427040AC;
  v0[13] = &block_descriptor_0;
  v0[14] = v2;
  [v1 getSubscriptionInfo_];
  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24270390C()
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 192) = v2;
  if (v2)
  {
    v3 = sub_242703F98;
  }

  else
  {
    v3 = sub_242703A48;
  }

  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v3, 0, 0);
}