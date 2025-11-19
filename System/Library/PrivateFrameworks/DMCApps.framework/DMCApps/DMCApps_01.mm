uint64_t sub_2225B1300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = a4;
  v5[5] = v4;
  v5[2] = a1;
  v5[3] = a3;
  return MEMORY[0x2822009F8](sub_2225B1324, 0, 0);
}

uint64_t sub_2225B1324()
{
  v1 = v0[2];
  v2 = v1[3];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_1Tm(v1, v2);
  v4 = (*(v3 + 8))(v2, v3);
  v6 = v5;
  v0[6] = v5;
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_2225B1410;
  v8 = v0[5];

  return sub_2225B85AC(v4, v6, &unk_2835BE9F8, 0);
}

uint64_t sub_2225B1410(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 56);
  v8 = *v2;
  v3[8] = a1;
  v3[9] = v1;

  if (v1)
  {
    v5 = sub_2225B1928;
  }

  else
  {
    v6 = v3[6];

    v5 = sub_2225B152C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2225B152C()
{
  v1 = v0[8];
  if (!v1)
  {
LABEL_8:
    v6 = swift_task_alloc();
    v0[10] = v6;
    *v6 = v0;
    v6[1] = sub_2225B17B0;
    v7 = v0[4];
    v8 = v0[5];
    v10 = v0[2];
    v9 = v0[3];

    return sub_2225B8D94(v10, v9, v7);
  }

  v2 = v1;
  v3 = [v2 installationState];
  v4 = [v2 type];
  if (v3)
  {
    v5 = v3 == 3;
  }

  else
  {
    v5 = 1;
  }

  if (v5 || (v12 = v4, v13 = [v2 isAppClip], (v13 & 1) != 0) || (v14 = objc_msgSend(v2, sel_managementInformation)) != 0 && ((v15 = v14, v16 = objc_msgSend(v14, sel_state), v15, v16 <= 0x10) ? (v17 = ((1 << v16) & 0x17DF5) == 0) : (v17 = 1), !v17) || v12 != 1)
  {

    goto LABEL_8;
  }

  if (qword_2813114B8 != -1)
  {
    swift_once();
  }

  v18 = sub_2225C6AA0();
  __swift_project_value_buffer(v18, qword_281311550);
  v19 = sub_2225C6A80();
  v20 = sub_2225C6C60();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_222597000, v19, v20, "Trying to manage an existing system app...", v21, 2u);
    MEMORY[0x223DBAFE0](v21, -1, -1);
  }

  sub_2225BC524();
  swift_allocError();
  *v22 = 0;
  *(v22 + 8) = 0;
  *(v22 + 16) = 6;
  swift_willThrow();

  v23 = v0[1];

  return v23();
}

uint64_t sub_2225B17B0()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_2225B198C;
  }

  else
  {
    v3 = sub_2225B18C4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2225B18C4()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2225B1928()
{
  v1 = v0[6];

  v2 = v0[9];
  v3 = v0[1];

  return v3();
}

uint64_t sub_2225B198C()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2225B19F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = a4;
  v5[5] = v4;
  v5[2] = a1;
  v5[3] = a3;
  return MEMORY[0x2822009F8](sub_2225B1A14, 0, 0);
}

uint64_t sub_2225B1A14()
{
  v1 = v0[2];
  v2 = v1[3];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_1Tm(v1, v2);
  v4 = (*(v3 + 80))(v2, v3);
  v0[6] = v4;
  v0[7] = v5;
  if (v5)
  {
    v6 = v5;
    v7 = v4;
    v8 = sub_2225C4D04(v0[2]);
    v0[8] = v8;
    v0[9] = v9;
    v13 = v8;
    v14 = v9;
    v15 = v0[5];
    v16 = v15[6];
    v17 = v15[7];
    __swift_project_boxed_opaque_existential_1Tm(v15 + 3, v16);
    v18 = *(MEMORY[0x277D25A60] + 4);
    v19 = swift_task_alloc();
    v0[10] = v19;
    *v19 = v0;
    v19[1] = sub_2225B1D24;

    return MEMORY[0x282184928](v7, v6, v13, v14, v16, v17);
  }

  else
  {
    sub_2225B02BC();
    swift_allocError();
    *v10 = xmmword_2225C7700;
    *(v10 + 16) = 2;
    swift_willThrow();
    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_2225B1D24()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v7 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_2225B2198;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_2225B1E40;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2225B1E40()
{
  v1 = *(v0 + 72);

  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  *v2 = v0;
  v2[1] = sub_2225B1EE8;
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);

  return sub_2225BA330(v6, v5, v3);
}

uint64_t sub_2225B1EE8()
{
  v1 = *(*v0 + 96);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2225B1FDC()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v7 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_2225B2334;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_2225B20F8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2225B20F8()
{
  MEMORY[0x223DBAEB0](v0[13]);
  v1 = swift_task_alloc();
  v0[12] = v1;
  *v1 = v0;
  v1[1] = sub_2225B1EE8;
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[2];
  v4 = v0[3];

  return sub_2225BA330(v5, v4, v2);
}

uint64_t sub_2225B2198()
{
  v1 = *(v0 + 72);

  *(v0 + 104) = *(v0 + 88);
  if (qword_2813114B8 != -1)
  {
    swift_once();
  }

  v2 = sub_2225C6AA0();
  __swift_project_value_buffer(v2, qword_281311550);
  v3 = sub_2225C6A80();
  v4 = sub_2225C6C60();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_222597000, v3, v4, "Invalid app code identity. App config will be disabled.", v5, 2u);
    MEMORY[0x223DBAFE0](v5, -1, -1);
  }

  v6 = *(v0 + 56);
  v7 = *(v0 + 40);

  v8 = v7[6];
  v9 = v7[7];
  __swift_project_boxed_opaque_existential_1Tm(v7 + 3, v8);
  v10 = *(MEMORY[0x277D25A70] + 4);
  v11 = swift_task_alloc();
  *(v0 + 112) = v11;
  *v11 = v0;
  v11[1] = sub_2225B1FDC;
  v12 = *(v0 + 48);

  return MEMORY[0x282184938](v12, v6, v8, v9);
}

uint64_t sub_2225B2334()
{
  v1 = v0[7];
  MEMORY[0x223DBAEB0](v0[13]);

  v2 = v0[15];
  v3 = v0[1];

  return v3();
}

uint64_t sub_2225B23A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = a4;
  v5[5] = v4;
  v5[2] = a1;
  v5[3] = a3;
  return MEMORY[0x2822009F8](sub_2225B23C8, 0, 0);
}

uint64_t sub_2225B23C8()
{
  v1 = v0[2];
  v2 = v1[3];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_1Tm(v1, v2);
  v4 = (*(v3 + 80))(v2, v3);
  v0[6] = v5;
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    v8 = v0[5];
    v9 = v8[6];
    v10 = v8[7];
    __swift_project_boxed_opaque_existential_1Tm(v8 + 3, v9);
    v11 = *(MEMORY[0x277D25A78] + 4);
    v12 = swift_task_alloc();
    v0[7] = v12;
    *v12 = v0;
    v12[1] = sub_2225B254C;

    return MEMORY[0x282184940](v6, v7, v9, v10);
  }

  else
  {
    sub_2225B02BC();
    swift_allocError();
    *v13 = xmmword_2225C7700;
    *(v13 + 16) = 2;
    swift_willThrow();
    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_2225B254C()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  v3[8] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2225B27BC, 0, 0);
  }

  else
  {
    v4 = v3[6];

    v5 = swift_task_alloc();
    v3[9] = v5;
    *v5 = v3;
    v5[1] = sub_2225B26C8;
    v6 = v3[4];
    v7 = v3[5];
    v8 = v3[3];
    v9 = v3[2];

    return sub_2225BA330(v9, v8, v6);
  }
}

uint64_t sub_2225B26C8()
{
  v1 = *(*v0 + 72);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2225B27BC()
{
  v1 = v0[6];

  v2 = v0[8];
  v3 = v0[1];

  return v3();
}

uint64_t sub_2225B2820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[2] = a1;
  v5[3] = v4;
  v9 = swift_task_alloc();
  v5[4] = v9;
  *v9 = v5;
  v9[1] = sub_2225B28D0;

  return sub_2225BB85C(a1, a3, a4);
}

uint64_t sub_2225B28D0()
{
  v2 = *(*v1 + 32);
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2225B2A00, 0, 0);
  }
}

uint64_t sub_2225B2A00()
{
  v1 = v0[2];
  v2 = v1[3];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_1Tm(v1, v2);
  v4 = (*(v3 + 80))(v2, v3);
  v0[5] = v5;
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    v8 = v0[3];
    v9 = v8[6];
    v10 = v8[7];
    __swift_project_boxed_opaque_existential_1Tm(v8 + 3, v9);
    v11 = *(MEMORY[0x277D25A70] + 4);
    v12 = swift_task_alloc();
    v0[6] = v12;
    *v12 = v0;
    v12[1] = sub_2225B2B84;

    return MEMORY[0x282184938](v6, v7, v9, v10);
  }

  else
  {
    sub_2225B02BC();
    swift_allocError();
    *v13 = xmmword_2225C7700;
    *(v13 + 16) = 2;
    swift_willThrow();
    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_2225B2B84()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_2225B2CFC;
  }

  else
  {
    v3 = sub_2225B2C98;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2225B2C98()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2225B2CFC()
{
  v1 = v0[5];

  v2 = v0[7];
  v3 = v0[1];

  return v3();
}

uint64_t sub_2225B2D60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[2] = a1;
  v5[3] = v4;
  v9 = swift_task_alloc();
  v5[4] = v9;
  *v9 = v5;
  v9[1] = sub_2225B2E10;

  return sub_2225BB85C(a1, a3, a4);
}

uint64_t sub_2225B2E10()
{
  v2 = *(*v1 + 32);
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2225B2F40, 0, 0);
  }
}

uint64_t sub_2225B2F40()
{
  v1 = v0[2];
  v2 = v1[3];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_1Tm(v1, v2);
  v4 = (*(v3 + 80))(v2, v3);
  v0[5] = v5;
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    v8 = v0[3];
    v9 = v8[6];
    v10 = v8[7];
    __swift_project_boxed_opaque_existential_1Tm(v8 + 3, v9);
    v11 = *(MEMORY[0x277D25A58] + 4);
    v12 = swift_task_alloc();
    v0[6] = v12;
    *v12 = v0;
    v12[1] = sub_2225B30C4;

    return MEMORY[0x282184920](v6, v7, v9, v10);
  }

  else
  {
    sub_2225B02BC();
    swift_allocError();
    *v13 = xmmword_2225C7700;
    *(v13 + 16) = 2;
    swift_willThrow();
    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_2225B30C4()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_2225C1CA0;
  }

  else
  {
    v3 = sub_2225C1C9C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2225B31D8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2225B3264;

  return sub_2225B7224();
}

uint64_t sub_2225B3264(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 16);
  v7 = *v2;
  *(v3 + 24) = a1;
  *(v3 + 32) = v1;

  if (v1)
  {
    v5 = sub_2225B3680;
  }

  else
  {
    v5 = sub_2225B3378;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2225B3378()
{
  v1 = 0;
  v2 = *(v0 + 24);
  v3 = *(v2 + 16);
  v4 = MEMORY[0x277D84F90];
  v5 = MEMORY[0x277D84F90];
LABEL_2:
  v6 = v2 + 25 + 24 * v1;
  while (v3 != v1)
  {
    if (v1 >= *(v2 + 16))
    {
      __break(1u);
LABEL_27:
      swift_once();
LABEL_20:
      v24 = sub_2225C6AA0();
      __swift_project_value_buffer(v24, qword_281311550);
      v25 = sub_2225C6A80();
      v26 = sub_2225C6C50();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_222597000, v25, v26, "No unhideable apps found!", v27, 2u);
        MEMORY[0x223DBAFE0](v27, -1, -1);
      }

      v4 = 0;
      goto LABEL_23;
    }

    v7 = (v6 + 24);
    ++v1;
    v8 = *(v6 + 23);
    v6 += 24;
    if ((v8 & 1) == 0)
    {
      v9 = *(v7 - 17);
      v10 = *(v7 - 9);
      v11 = *v7;

      v31 = v2 + 25;
      v30 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2225BC9F8(0, *(v5 + 16) + 1, 1);
      }

      v13 = *(v5 + 16);
      v12 = *(v5 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_2225BC9F8((v12 > 1), v13 + 1, 1);
      }

      *(v5 + 16) = v13 + 1;
      v14 = v5 + 24 * v13;
      *(v14 + 32) = v30;
      *(v14 + 40) = v10;
      *(v14 + 48) = 0;
      *(v14 + 49) = v11;
      goto LABEL_2;
    }
  }

  v31 = v0;
  v15 = *(v0 + 24);

  v16 = *(v5 + 16);
  if (!v16)
  {

    v4 = MEMORY[0x277D84F90];
    if (*(MEMORY[0x277D84F90] + 16))
    {
      goto LABEL_23;
    }

LABEL_19:

    if (qword_2813114B8 != -1)
    {
      goto LABEL_27;
    }

    goto LABEL_20;
  }

  sub_2225BCA18(0, v16, 0);
  v17 = 0;
  v18 = *(v4 + 16);
  v19 = 16 * v18;
  do
  {
    v20 = *(v5 + v17 + 32);
    v21 = *(v5 + v17 + 40);
    v22 = *(v4 + 24);

    if (v18 >= v22 >> 1)
    {
      sub_2225BCA18((v22 > 1), v18 + 1, 1);
    }

    *(v4 + 16) = v18 + 1;
    v23 = v4 + v19;
    *(v23 + 32) = v20;
    *(v23 + 40) = v21;
    v19 += 16;
    v17 += 24;
    ++v18;
    --v16;
  }

  while (v16);

  if (!*(v4 + 16))
  {
    goto LABEL_19;
  }

LABEL_23:
  v28 = *(v31 + 8);

  return v28(v4);
}

uint64_t sub_2225B3680()
{
  if (qword_2813114B8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = sub_2225C6AA0();
  __swift_project_value_buffer(v2, qword_281311550);
  v3 = v1;
  v4 = sub_2225C6A80();
  v5 = sub_2225C6C60();
  MEMORY[0x223DBAEB0](v1);
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 32);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_222597000, v4, v5, "Failed to fetch any bundleIDs for protected apps: %{public}@", v8, 0xCu);
    sub_2225B01A4(v9, &qword_27D00FBC8, &unk_2225C7C40);
    MEMORY[0x223DBAFE0](v9, -1, -1);
    MEMORY[0x223DBAFE0](v8, -1, -1);
    MEMORY[0x223DBAEB0](v7);
  }

  else
  {

    MEMORY[0x223DBAEB0](v7);
  }

  v12 = *(v0 + 8);

  return v12(0);
}

uint64_t sub_2225B382C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2225B38B8;

  return sub_2225B7224();
}

uint64_t sub_2225B38B8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 16);
  v7 = *v2;
  *(v3 + 24) = a1;
  *(v3 + 32) = v1;

  if (v1)
  {
    v5 = sub_2225C1CA4;
  }

  else
  {
    v5 = sub_2225B39CC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2225B39CC()
{
  v1 = 0;
  v2 = *(v0 + 24);
  v3 = *(v2 + 16);
  v4 = MEMORY[0x277D84F90];
  v5 = MEMORY[0x277D84F90];
LABEL_2:
  v6 = v2 + 24 + 24 * v1;
  while (v3 != v1)
  {
    if (v1 >= *(v2 + 16))
    {
      __break(1u);
LABEL_27:
      swift_once();
LABEL_20:
      v24 = sub_2225C6AA0();
      __swift_project_value_buffer(v24, qword_281311550);
      v25 = sub_2225C6A80();
      v26 = sub_2225C6C50();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_222597000, v25, v26, "No unlockable apps found!", v27, 2u);
        MEMORY[0x223DBAFE0](v27, -1, -1);
      }

      v4 = 0;
      goto LABEL_23;
    }

    v7 = (v6 + 24);
    ++v1;
    v8 = *(v6 + 25);
    v6 += 24;
    if ((v8 & 1) == 0)
    {
      v10 = *(v7 - 2);
      v9 = *(v7 - 1);
      v11 = *v7;

      v31 = v2 + 24;
      v30 = v11;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2225BC9F8(0, *(v5 + 16) + 1, 1);
      }

      v13 = *(v5 + 16);
      v12 = *(v5 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_2225BC9F8((v12 > 1), v13 + 1, 1);
      }

      *(v5 + 16) = v13 + 1;
      v14 = v5 + 24 * v13;
      *(v14 + 32) = v10;
      *(v14 + 40) = v9;
      *(v14 + 48) = v30;
      *(v14 + 49) = 0;
      goto LABEL_2;
    }
  }

  v31 = v0;
  v15 = *(v0 + 24);

  v16 = *(v5 + 16);
  if (!v16)
  {

    v4 = MEMORY[0x277D84F90];
    if (*(MEMORY[0x277D84F90] + 16))
    {
      goto LABEL_23;
    }

LABEL_19:

    if (qword_2813114B8 != -1)
    {
      goto LABEL_27;
    }

    goto LABEL_20;
  }

  sub_2225BCA18(0, v16, 0);
  v17 = 0;
  v18 = *(v4 + 16);
  v19 = 16 * v18;
  do
  {
    v20 = *(v5 + v17 + 32);
    v21 = *(v5 + v17 + 40);
    v22 = *(v4 + 24);

    if (v18 >= v22 >> 1)
    {
      sub_2225BCA18((v22 > 1), v18 + 1, 1);
    }

    *(v4 + 16) = v18 + 1;
    v23 = v4 + v19;
    *(v23 + 32) = v20;
    *(v23 + 40) = v21;
    v19 += 16;
    v17 += 24;
    ++v18;
    --v16;
  }

  while (v16);

  if (!*(v4 + 16))
  {
    goto LABEL_19;
  }

LABEL_23:
  v28 = *(v31 + 8);

  return v28(v4);
}

uint64_t sub_2225B3CD4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2225B3D60;

  return sub_2225B7224();
}

uint64_t sub_2225B3D60(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 16);
  v7 = *v2;
  *(v3 + 24) = a1;
  *(v3 + 32) = v1;

  if (v1)
  {
    v5 = sub_2225C1CA4;
  }

  else
  {
    v5 = sub_2225B3E74;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

void sub_2225B3E74()
{
  v1 = 0;
  v2 = *(v0 + 24);
  v3 = *(v2 + 16);
  v4 = MEMORY[0x277D84F90];
  v5 = MEMORY[0x277D84F90];
LABEL_2:
  v6 = v2 + 48 + 24 * v1;
  while (v3 != v1)
  {
    v7 = v6;
    if (v1 >= *(v2 + 16))
    {
      __break(1u);
      return;
    }

    v6 += 24;
    ++v1;
    if ((*v7 & 1) == 0 && (v7[1] & 1) == 0)
    {
      v9 = *(v6 - 40);
      v8 = *(v6 - 32);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2225BC9F8(0, *(v5 + 16) + 1, 1);
      }

      v11 = *(v5 + 16);
      v10 = *(v5 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_2225BC9F8((v10 > 1), v11 + 1, 1);
      }

      *(v5 + 16) = v11 + 1;
      v12 = v5 + 24 * v11;
      *(v12 + 32) = v9;
      *(v12 + 40) = v8;
      *(v12 + 48) = 0;
      goto LABEL_2;
    }
  }

  v23 = v0;
  v13 = *(v0 + 24);

  v14 = *(v5 + 16);
  if (v14)
  {
    sub_2225BCA18(0, v14, 0);
    v15 = 0;
    v16 = *(v4 + 16);
    v17 = 16 * v16;
    do
    {
      v19 = *(v5 + v15 + 32);
      v18 = *(v5 + v15 + 40);
      v20 = *(v4 + 24);

      if (v16 >= v20 >> 1)
      {
        sub_2225BCA18((v20 > 1), v16 + 1, 1);
      }

      *(v4 + 16) = v16 + 1;
      v21 = v4 + v17;
      *(v21 + 32) = v19;
      *(v21 + 40) = v18;
      v17 += 16;
      v15 += 24;
      ++v16;
      --v14;
    }

    while (v14);
  }

  else
  {

    v4 = MEMORY[0x277D84F90];
  }

  v22 = *(v23 + 8);

  v22(v4);
}

uint64_t sub_2225B40A8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2225B4134;

  return sub_2225B7224();
}

uint64_t sub_2225B4134(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 16);
  v7 = *v2;
  *(v3 + 24) = a1;
  *(v3 + 32) = v1;

  if (v1)
  {
    v5 = sub_2225C1CA4;
  }

  else
  {
    v5 = sub_2225B4248;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

void sub_2225B4248()
{
  v1 = 0;
  v2 = *(v0 + 24);
  v3 = *(v2 + 16);
  v4 = v2 + 48;
  v5 = MEMORY[0x277D84F90];
  v6 = MEMORY[0x277D84F90];
LABEL_2:
  v7 = (v4 + 24 * v1);
  while (v3 != v1)
  {
    if (v1 >= *(v2 + 16))
    {
      __break(1u);
      return;
    }

    v8 = v7 + 24;
    ++v1;
    v9 = *v7;
    v10 = v7[1];
    if (v9 == 1)
    {
      v7 += 24;
      if (v10)
      {
        continue;
      }
    }

    v24 = *(v8 - 5);
    v25 = *(v8 - 4);

    v26 = v4;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2225BC9F8(0, *(v6 + 16) + 1, 1);
    }

    v12 = *(v6 + 16);
    v11 = *(v6 + 24);
    if (v12 >= v11 >> 1)
    {
      sub_2225BC9F8((v11 > 1), v12 + 1, 1);
    }

    *(v6 + 16) = v12 + 1;
    v13 = v6 + 24 * v12;
    *(v13 + 32) = v24;
    *(v13 + 40) = v25;
    *(v13 + 48) = v9;
    *(v13 + 49) = v10;
    v4 = v26;
    goto LABEL_2;
  }

  v27 = v0;
  v14 = *(v0 + 24);

  v15 = *(v6 + 16);
  if (v15)
  {
    sub_2225BCA18(0, v15, 0);
    v16 = 0;
    v17 = *(v5 + 16);
    v18 = 16 * v17;
    do
    {
      v20 = *(v6 + v16 + 32);
      v19 = *(v6 + v16 + 40);
      v21 = *(v5 + 24);

      if (v17 >= v21 >> 1)
      {
        sub_2225BCA18((v21 > 1), v17 + 1, 1);
      }

      *(v5 + 16) = v17 + 1;
      v22 = v5 + v18;
      *(v22 + 32) = v20;
      *(v22 + 40) = v19;
      v18 += 16;
      v16 += 24;
      ++v17;
      --v15;
    }

    while (v15);
  }

  else
  {

    v5 = MEMORY[0x277D84F90];
  }

  v23 = *(v27 + 8);

  v23(v5);
}

uint64_t sub_2225B44A4()
{
  if (qword_2813114B8 != -1)
  {
    swift_once();
  }

  v1 = sub_2225C6AA0();
  __swift_project_value_buffer(v1, qword_281311550);
  v2 = sub_2225C6A80();
  v3 = sub_2225C6C70();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_222597000, v2, v3, "preserveAppIDsOnDisk() called!", v4, 2u);
    MEMORY[0x223DBAFE0](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_2225AD2F0;
  v6 = *(v0 + 16);

  return sub_2225B46E8();
}

uint64_t sub_2225B45F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_2225C6E00();
  sub_2225C6B70();
  v7 = sub_2225C6E20();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_2225C6D90() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_2225B4708()
{
  if (qword_2813114B8 != -1)
  {
    swift_once();
  }

  v1 = sub_2225C6AA0();
  v0[6] = __swift_project_value_buffer(v1, qword_281311550);
  v2 = sub_2225C6A80();
  v3 = sub_2225C6C70();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_222597000, v2, v3, "preserveApps() called! trying self.fetchAppBundleIDs()...", v4, 2u);
    MEMORY[0x223DBAFE0](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_2225B4858;
  v6 = v0[5];

  return sub_2225B7684();
}

uint64_t sub_2225B4858(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 56);
  v7 = *v2;
  *(v3 + 64) = a1;
  *(v3 + 72) = v1;

  if (v1)
  {
    v5 = sub_2225B4C00;
  }

  else
  {
    v5 = sub_2225B496C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2225B496C()
{
  v1 = v0[8];
  v2 = v0[6];

  v3 = sub_2225C6A80();
  v4 = sub_2225C6C70();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[8];
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = *(v6 + 16);

    _os_log_impl(&dword_222597000, v3, v4, "Successfully returned from self.fetchAppBundleIDs() with %ld bundleIDs", v7, 0xCu);
    MEMORY[0x223DBAFE0](v7, -1, -1);
  }

  else
  {
    v8 = v0[8];
  }

  v9 = v0[9];
  sub_2225BFF94();
  if (v9)
  {

    v12 = v0[1];
  }

  else
  {
    sub_2225C07F8(v0[8]);
    v10 = v0[8];
    v11 = v0[6];

    v14 = sub_2225C6A80();
    v15 = sub_2225C6C70();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_222597000, v14, v15, "writeAppIDPlistToDiskWith completed successfully! \n preserveApps() completed successfully!", v16, 2u);
      MEMORY[0x223DBAFE0](v16, -1, -1);
    }

    v12 = v0[1];
  }

  return v12();
}

uint64_t sub_2225B4C00()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v1;
  v4 = sub_2225C6A80();
  v5 = sub_2225C6C60();
  MEMORY[0x223DBAEB0](v1);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[9];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_222597000, v4, v5, "DMF Fetch Apps Info request threw error: %@!", v7, 0xCu);
    sub_2225B01A4(v8, &qword_27D00FBC8, &unk_2225C7C40);
    MEMORY[0x223DBAFE0](v8, -1, -1);
    MEMORY[0x223DBAFE0](v7, -1, -1);
  }

  v11 = v0[9];

  sub_2225C6D30();
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  MEMORY[0x223DBA8C0](0xD00000000000002FLL, 0x80000002225C8CA0);
  v0[4] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00FBC0, &qword_2225C7788);
  sub_2225C6D50();
  MEMORY[0x223DBA8C0](33, 0xE100000000000000);
  v12 = v0[2];
  v13 = v0[3];
  sub_2225B02BC();
  swift_allocError();
  *v14 = v12;
  *(v14 + 8) = v13;
  *(v14 + 16) = 0;
  swift_willThrow();
  MEMORY[0x223DBAEB0](v11);
  v15 = v0[1];

  return v15();
}

uint64_t sub_2225B4E34()
{
  if (qword_2813114B8 != -1)
  {
    swift_once();
  }

  v1 = sub_2225C6AA0();
  v0[4] = __swift_project_value_buffer(v1, qword_281311550);
  v2 = sub_2225C6A80();
  v3 = sub_2225C6C70();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_222597000, v2, v3, "removeUnusedPreservedApps() beginning!", v4, 2u);
    MEMORY[0x223DBAFE0](v4, -1, -1);
  }

  v5 = sub_2225C6A80();
  v6 = sub_2225C6C70();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_222597000, v5, v6, "Checking for unenroll with preserved Apps status!", v7, 2u);
    MEMORY[0x223DBAFE0](v7, -1, -1);
  }

  if (sub_2225C145C())
  {
    v13 = sub_2225C6A80();
    v14 = sub_2225C6C70();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_222597000, v13, v14, "attempting to call self.fetchAppBundleIDs()...", v15, 2u);
      MEMORY[0x223DBAFE0](v15, -1, -1);
    }

    v16 = swift_task_alloc();
    v0[5] = v16;
    *v16 = v0;
    v16[1] = sub_2225B5214;
    v17 = v0[3];

    return sub_2225B7684();
  }

  else
  {
    v8 = sub_2225C6A80();
    v9 = sub_2225C6C70();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_222597000, v8, v9, "Unenroll for preserved apps status file did not exist!! Returning", v10, 2u);
      MEMORY[0x223DBAFE0](v10, -1, -1);
    }

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_2225B5214(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 40);
  v7 = *v2;
  *(v3 + 48) = a1;
  *(v3 + 56) = v1;

  if (v1)
  {
    v5 = sub_2225B5DA8;
  }

  else
  {
    v5 = sub_2225B5328;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2225B5328()
{
  v50 = v0;
  v0[2] = v0[6];
  v1 = v0[4];
  v2 = v0[7];
  v0[8] = sub_2225BF720();
  v3 = sub_2225C6A80();
  if (v2)
  {
    v4 = sub_2225C6C60();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_222597000, v3, v4, "Failed to Fetch AppIDs from Disk!", v5, 2u);
      MEMORY[0x223DBAFE0](v5, -1, -1);
    }

    v6 = v0[6];

    sub_2225B02BC();
    swift_allocError();
    *v7 = 0xD000000000000021;
    *(v7 + 8) = 0x80000002225C8DF0;
    *(v7 + 16) = 0;
    swift_willThrow();
    MEMORY[0x223DBAEB0](v2);

    v8 = v0[1];
    goto LABEL_5;
  }

  v10 = sub_2225C6C70();
  if (os_log_type_enabled(v3, v10))
  {
    v11 = v0[6];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v49[0] = v13;
    *v12 = 136315394;

    v14 = sub_2225C6C10();
    v16 = v15;

    v17 = sub_2225AD5C8(v14, v16, v49);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2080;

    v19 = MEMORY[0x223DBA900](v18, MEMORY[0x277D837D0]);
    v21 = v20;

    v22 = sub_2225AD5C8(v19, v21, v49);

    *(v12 + 14) = v22;
    _os_log_impl(&dword_222597000, v3, v10, "Resolving which apps need to be removed from this list of preserved apps: %s, based on the list of apps managed by the server: %s !", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DBAFE0](v13, -1, -1);
    MEMORY[0x223DBAFE0](v12, -1, -1);
  }

  v23 = v0[4];

  v25 = sub_2225B63D0(v24, v0 + 2);
  v0[9] = v25;
  v26 = sub_2225C6A80();
  v27 = sub_2225C6C70();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v49[0] = v29;
    *v28 = 136315138;

    v31 = MEMORY[0x223DBA900](v30, MEMORY[0x277D837D0]);
    v33 = v32;

    v34 = sub_2225AD5C8(v31, v33, v49);

    *(v28 + 4) = v34;
    _os_log_impl(&dword_222597000, v26, v27, "The apps that need to be removed are: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    MEMORY[0x223DBAFE0](v29, -1, -1);
    MEMORY[0x223DBAFE0](v28, -1, -1);
  }

  v35 = *(v25 + 16);
  v0[10] = v35;
  if (!v35)
  {
    sub_2225C187C();
    v46 = v0[8];
    v47 = v0[9];

    v48 = v0[6];

    v8 = v0[1];
LABEL_5:

    return v8();
  }

  v0[11] = 0;
  v36 = v0[9];
  v37 = v0[4];
  v38 = *(v36 + 32);
  v0[12] = v38;
  v39 = *(v36 + 40);
  v0[13] = v39;
  swift_bridgeObjectRetain_n();

  v40 = sub_2225C6A80();
  v41 = sub_2225C6C70();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v49[0] = v43;
    *v42 = 136315138;
    *(v42 + 4) = sub_2225AD5C8(v38, v39, v49);
    _os_log_impl(&dword_222597000, v40, v41, "Calling self.removeAppForAppID: %s", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v43);
    MEMORY[0x223DBAFE0](v43, -1, -1);
    MEMORY[0x223DBAFE0](v42, -1, -1);
  }

  v44 = swift_task_alloc();
  v0[14] = v44;
  *v44 = v0;
  v44[1] = sub_2225B597C;
  v45 = v0[3];

  return sub_2225B67D0(v38, v39);
}

uint64_t sub_2225B597C()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v7 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_2225B5F44;
  }

  else
  {
    v5 = *(v2 + 104);

    v4 = sub_2225B5A98;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2225B5A98()
{
  v31 = v0;
  v1 = v0[11] + 1;
  if (v1 == v0[10])
  {
    v2 = v0[15];
    v3 = v0[9];

    sub_2225C187C();
    if (v2)
    {
      v4 = v0[4];
      v5 = v2;
      v6 = sub_2225C6A80();
      v7 = sub_2225C6C60();
      MEMORY[0x223DBAEB0](v2);
      v8 = os_log_type_enabled(v6, v7);
      v9 = v0[8];
      v10 = v0[9];
      if (v8)
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        *v11 = 138412290;
        v13 = v2;
        v14 = _swift_stdlib_bridgeErrorToNSError();
        *(v11 + 4) = v14;
        *v12 = v14;
        _os_log_impl(&dword_222597000, v6, v7, "Failed to clear preserved apps list with error: %@", v11, 0xCu);
        sub_2225B01A4(v12, &qword_27D00FBC8, &unk_2225C7C40);
        MEMORY[0x223DBAFE0](v12, -1, -1);
        MEMORY[0x223DBAFE0](v11, -1, -1);
        MEMORY[0x223DBAEB0](v2);
      }

      else
      {

        MEMORY[0x223DBAEB0](v2);
      }
    }

    else
    {
      v26 = v0[8];
      v27 = v0[9];
    }

    v28 = v0[6];

    v29 = v0[1];

    return v29();
  }

  else
  {
    v0[11] = v1;
    v15 = v0[4];
    v16 = v0[9] + 16 * v1;
    v17 = *(v16 + 32);
    v0[12] = v17;
    v18 = *(v16 + 40);
    v0[13] = v18;
    swift_bridgeObjectRetain_n();
    v19 = sub_2225C6A80();
    v20 = sub_2225C6C70();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v30 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_2225AD5C8(v17, v18, &v30);
      _os_log_impl(&dword_222597000, v19, v20, "Calling self.removeAppForAppID: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x223DBAFE0](v22, -1, -1);
      MEMORY[0x223DBAFE0](v21, -1, -1);
    }

    v23 = swift_task_alloc();
    v0[14] = v23;
    *v23 = v0;
    v23[1] = sub_2225B597C;
    v24 = v0[3];

    return sub_2225B67D0(v17, v18);
  }
}

uint64_t sub_2225B5DA8()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = v1;
  v4 = sub_2225C6A80();
  v5 = sub_2225C6C60();
  MEMORY[0x223DBAEB0](v1);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[7];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_222597000, v4, v5, "DMF Fetch Apps Info request returned error: %@!", v7, 0xCu);
    sub_2225B01A4(v8, &qword_27D00FBC8, &unk_2225C7C40);
    MEMORY[0x223DBAFE0](v8, -1, -1);
    MEMORY[0x223DBAFE0](v7, -1, -1);
  }

  v11 = v0[7];

  sub_2225B02BC();
  swift_allocError();
  *v12 = 0xD000000000000032;
  *(v12 + 8) = 0x80000002225C8DB0;
  *(v12 + 16) = 0;
  swift_willThrow();
  MEMORY[0x223DBAEB0](v11);
  v13 = v0[1];

  return v13();
}

uint64_t sub_2225B5F44()
{
  v35 = v0;
  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[4];

  v4 = v1;
  v5 = sub_2225C6A80();
  v6 = sub_2225C6C60();

  MEMORY[0x223DBAEB0](v1);
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[15];
  v9 = v0[13];
  if (v7)
  {
    v10 = v0[12];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v34[0] = v13;
    *v11 = 136315394;
    v14 = sub_2225AD5C8(v10, v9, v34);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2112;
    v15 = v8;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v16;
    *v12 = v16;
    _os_log_impl(&dword_222597000, v5, v6, "Failed to remove app: %s with error: %@, continuing..", v11, 0x16u);
    sub_2225B01A4(v12, &qword_27D00FBC8, &unk_2225C7C40);
    MEMORY[0x223DBAFE0](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x223DBAFE0](v13, -1, -1);
    MEMORY[0x223DBAFE0](v11, -1, -1);
    MEMORY[0x223DBAEB0](v8);
  }

  else
  {

    MEMORY[0x223DBAEB0](v8);
  }

  v17 = v0[11] + 1;
  if (v17 == v0[10])
  {
    v18 = v0[9];

    sub_2225C187C();
    v30 = v0[8];
    v31 = v0[9];

    v32 = v0[6];

    v33 = v0[1];

    return v33();
  }

  else
  {
    v0[11] = v17;
    v19 = v0[4];
    v20 = v0[9] + 16 * v17;
    v21 = *(v20 + 32);
    v0[12] = v21;
    v22 = *(v20 + 40);
    v0[13] = v22;
    swift_bridgeObjectRetain_n();
    v23 = sub_2225C6A80();
    v24 = sub_2225C6C70();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v34[0] = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_2225AD5C8(v21, v22, v34);
      _os_log_impl(&dword_222597000, v23, v24, "Calling self.removeAppForAppID: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x223DBAFE0](v26, -1, -1);
      MEMORY[0x223DBAFE0](v25, -1, -1);
    }

    v27 = swift_task_alloc();
    v0[14] = v27;
    *v27 = v0;
    v27[1] = sub_2225B597C;
    v28 = v0[3];

    return sub_2225B67D0(v21, v22);
  }
}

uint64_t sub_2225B63D0(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v27 = a2;
  v28 = a1;
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 56);
  result = swift_beginAccess();
  v9 = 0;
  v10 = (v5 + 63) >> 6;
  v26 = MEMORY[0x277D84F90];
LABEL_4:
  v11 = v9;
  if (!v7)
  {
    goto LABEL_6;
  }

  do
  {
    v9 = v11;
LABEL_9:
    v29 = &v25;
    v12 = (*(v28 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v7)))));
    v13 = *v12;
    v14 = v12[1];
    v15 = *v27;
    v7 &= v7 - 1;
    v30[0] = *v12;
    v30[1] = v14;
    MEMORY[0x28223BE20](result);
    v24[2] = v30;

    v16 = v3;
    v17 = sub_2225BC94C(sub_2225C1AC8, v24, v15);

    if ((v17 & 1) == 0)
    {
      v29 = v13;
      v18 = v26;
      result = swift_isUniquelyReferenced_nonNull_native();
      v31 = v18;
      if ((result & 1) == 0)
      {
        result = sub_2225BCA18(0, *(v18 + 16) + 1, 1);
        v18 = v31;
      }

      v3 = v16;
      v20 = *(v18 + 16);
      v19 = *(v18 + 24);
      v21 = v20 + 1;
      v22 = v29;
      if (v20 >= v19 >> 1)
      {
        v26 = v20 + 1;
        result = sub_2225BCA18((v19 > 1), v20 + 1, 1);
        v21 = v26;
        v18 = v31;
      }

      *(v18 + 16) = v21;
      v26 = v18;
      v23 = v18 + 16 * v20;
      *(v23 + 32) = v22;
      *(v23 + 40) = v14;
      goto LABEL_4;
    }

    v11 = v9;
    v3 = v16;
  }

  while (v7);
LABEL_6:
  while (1)
  {
    v9 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v9 >= v10)
    {

      return v26;
    }

    v7 = *(v4 + 8 * v9);
    ++v11;
    if (v7)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2225B6608(uint64_t a1, unint64_t a2, char a3, uint64_t a4)
{
  if (*(a4 + 16))
  {
    v8 = sub_2225ADB70(a1, a2);
    if (v9)
    {
      sub_2225B0214(*(a4 + 56) + 32 * v8, v18);
      sub_2225B0214(v18, v17);
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v18);
        a3 = v16;
      }

      else
      {
        if (qword_2813114B8 != -1)
        {
          swift_once();
        }

        v10 = sub_2225C6AA0();
        __swift_project_value_buffer(v10, qword_281311550);

        v11 = sub_2225C6A80();
        v12 = sub_2225C6C60();

        if (os_log_type_enabled(v11, v12))
        {
          v13 = swift_slowAlloc();
          v14 = swift_slowAlloc();
          v17[0] = v14;
          *v13 = 136446210;
          *(v13 + 4) = sub_2225AD5C8(a1, a2, v17);
          _os_log_impl(&dword_222597000, v11, v12, "non-BOOL value specified for %{public}s, using default value", v13, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v14);
          MEMORY[0x223DBAFE0](v14, -1, -1);
          MEMORY[0x223DBAFE0](v13, -1, -1);
        }

        __swift_destroy_boxed_opaque_existential_1Tm(v18);
      }
    }
  }

  return a3 & 1;
}

uint64_t sub_2225B67D0(uint64_t a1, uint64_t a2)
{
  v3[24] = a2;
  v3[25] = v2;
  v3[23] = a1;
  return MEMORY[0x2822009F8](sub_2225B67F4, 0, 0);
}

uint64_t sub_2225B67F4()
{
  v33 = v0;
  if (qword_2813114B8 != -1)
  {
    swift_once();
  }

  v1 = v0[24];
  v2 = sub_2225C6AA0();
  v0[26] = __swift_project_value_buffer(v2, qword_281311550);

  v3 = sub_2225C6A80();
  v4 = sub_2225C6C70();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[23];
    v5 = v0[24];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v32[0] = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_2225AD5C8(v6, v5, v32);
    _os_log_impl(&dword_222597000, v3, v4, "Creating dmfRemoveAppRequest for app: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x223DBAFE0](v8, -1, -1);
    MEMORY[0x223DBAFE0](v7, -1, -1);
  }

  v9 = [objc_allocWithZone(MEMORY[0x277D04CB8]) init];
  v0[27] = v9;
  if (v9)
  {
    v10 = v9;
    v11 = v0[23];
    v12 = v0[24];
    v13 = v9;
    v14 = sub_2225C6B40();
    [v13 setBundleIdentifier_];

    v15 = v13;
    v16 = sub_2225C6A80();
    v17 = sub_2225C6C70();

    if (os_log_type_enabled(v16, v17))
    {
      v19 = v0[23];
      v18 = v0[24];
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v32[0] = v22;
      *v20 = 136315394;
      *(v20 + 4) = sub_2225AD5C8(v19, v18, v32);
      *(v20 + 12) = 2112;
      *(v20 + 14) = v15;
      *v21 = v10;
      v23 = v15;
      _os_log_impl(&dword_222597000, v16, v17, "attempting to remove app: %s on DMFConnection with request: %@", v20, 0x16u);
      sub_2225B01A4(v21, &qword_27D00FBC8, &unk_2225C7C40);
      MEMORY[0x223DBAFE0](v21, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x223DBAFE0](v22, -1, -1);
      MEMORY[0x223DBAFE0](v20, -1, -1);
    }

    v24 = *(v0[25] + 16);
    v0[2] = v0;
    v0[7] = v0 + 21;
    v0[3] = sub_2225B6CBC;
    v25 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00FC00, &qword_2225C7D78);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_2225B7154;
    v0[13] = &block_descriptor_61;
    v0[14] = v25;
    [v24 performRequest:v15 completion:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    v26 = sub_2225C6A80();
    v27 = sub_2225C6C60();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_222597000, v26, v27, "Failed to create a DMFRemoveAppRequest object", v28, 2u);
      MEMORY[0x223DBAFE0](v28, -1, -1);
    }

    sub_2225BC524();
    swift_allocError();
    *v29 = 0xD00000000000002DLL;
    *(v29 + 8) = 0x80000002225C8C70;
    *(v29 + 16) = 5;
    swift_willThrow();
    v30 = v0[1];

    return v30();
  }
}

uint64_t sub_2225B6CBC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 224) = v2;
  if (v2)
  {
    v3 = sub_2225B6F24;
  }

  else
  {
    v3 = sub_2225B6DCC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2225B6DCC()
{
  v15 = v0;
  v1 = *(v0 + 208);
  v2 = *(v0 + 192);
  v3 = *(v0 + 168);

  v4 = sub_2225C6A80();
  v5 = sub_2225C6C70();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 216);
  if (v6)
  {
    v9 = *(v0 + 184);
    v8 = *(v0 + 192);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v14 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_2225AD5C8(v9, v8, &v14);
    _os_log_impl(&dword_222597000, v4, v5, "Successfully returned from dmfConnection.perform(dmfRemoveRequest) for appID: %s!", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x223DBAFE0](v11, -1, -1);
    MEMORY[0x223DBAFE0](v10, -1, -1);
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_2225B6F24()
{
  v28 = v0;
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[26];
  v4 = v0[24];
  swift_willThrow();

  v5 = v1;
  v6 = sub_2225C6A80();
  v7 = sub_2225C6C60();

  MEMORY[0x223DBAEB0](v1);
  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[28];
    v10 = v0[23];
    v9 = v0[24];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v27 = v13;
    *v11 = 136315394;
    *(v11 + 4) = sub_2225AD5C8(v10, v9, &v27);
    *(v11 + 12) = 2112;
    v14 = v8;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v15;
    *v12 = v15;
    _os_log_impl(&dword_222597000, v6, v7, "Remove App request for app: %s on DMFConnection failed with error: %@", v11, 0x16u);
    sub_2225B01A4(v12, &qword_27D00FBC8, &unk_2225C7C40);
    MEMORY[0x223DBAFE0](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x223DBAFE0](v13, -1, -1);
    MEMORY[0x223DBAFE0](v11, -1, -1);
  }

  v17 = v0[27];
  v16 = v0[28];
  swift_getErrorValue();
  v19 = v0[18];
  v18 = v0[19];
  v20 = v0[20];
  v21 = sub_2225C6DB0();
  v23 = v22;
  sub_2225BC524();
  swift_allocError();
  *v24 = v21;
  *(v24 + 8) = v23;
  *(v24 + 16) = 5;
  swift_willThrow();
  MEMORY[0x223DBAEB0](v16);

  v25 = v0[1];

  return v25();
}

uint64_t sub_2225B7154(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00FBC0, &qword_2225C7788);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_2225B7224()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2225B72B0;

  return sub_2225B7C24();
}

uint64_t sub_2225B72B0(uint64_t a1)
{
  v3 = *(*v2 + 16);
  v4 = *v2;
  *(v4 + 24) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2225B73E4, 0, 0);
  }
}

uint64_t sub_2225B73E4()
{
  v27 = v0;
  v1 = 0;
  v2 = *(v0 + 24);
  v3 = *(v2 + 16);
  v4 = MEMORY[0x277D84F90];
LABEL_2:
  v5 = (v2 + 48 + 24 * v1);
  while (v3 != v1)
  {
    if (v1 >= *(v2 + 16))
    {
      __break(1u);
      goto LABEL_19;
    }

    v6 = v5 + 24;
    ++v1;
    v7 = *v5;
    v8 = v5[1];
    if (v7 == 1)
    {
      v5 += 24;
      if (v8)
      {
        continue;
      }
    }

    v9 = *(v6 - 4);
    v24 = *(v6 - 5);

    v25 = v0;
    v26 = v4;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2225BC9F8(0, *(v4 + 16) + 1, 1);
      v4 = v26;
    }

    v11 = *(v4 + 16);
    v10 = *(v4 + 24);
    if (v11 >= v10 >> 1)
    {
      sub_2225BC9F8((v10 > 1), v11 + 1, 1);
      v4 = v26;
    }

    *(v4 + 16) = v11 + 1;
    v12 = v4 + 24 * v11;
    v0 = v25;
    *(v12 + 32) = v24;
    *(v12 + 40) = v9;
    *(v12 + 48) = v7;
    *(v12 + 49) = v8;
    goto LABEL_2;
  }

  v13 = *(v0 + 24);

  if (qword_2813114B8 == -1)
  {
    goto LABEL_13;
  }

LABEL_19:
  swift_once();
LABEL_13:
  v14 = sub_2225C6AA0();
  __swift_project_value_buffer(v14, qword_281311550);

  v15 = sub_2225C6A80();
  v16 = sub_2225C6C70();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v26 = v18;
    *v17 = 136446210;
    v19 = MEMORY[0x223DBA900](v4, &type metadata for DMCAppsManager.AppProtectionStatus);
    v21 = sub_2225AD5C8(v19, v20, &v26);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_222597000, v15, v16, "appsWithNonDefaultProtectionAttributes = %{public}s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    MEMORY[0x223DBAFE0](v18, -1, -1);
    MEMORY[0x223DBAFE0](v17, -1, -1);
  }

  v22 = *(v0 + 8);

  return v22(v4);
}

uint64_t sub_2225B76A4()
{
  v1 = v0[19];
  v2 = [objc_allocWithZone(MEMORY[0x277D04C28]) init];
  v0[20] = v2;
  v3 = *(v1 + 16);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_2225B77F4;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00FC00, &qword_2225C7D78);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2225B7154;
  v0[13] = &block_descriptor_54;
  v0[14] = v4;
  [v3 performRequest:v2 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2225B77F4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 168) = v2;
  if (v2)
  {
    v3 = sub_2225B7B74;
  }

  else
  {
    v3 = sub_2225B7904;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2225B7904()
{
  v18 = v0;
  v1 = v0[20];
  v2 = v0[18];
  v3 = v2;

  if (!v2)
  {
LABEL_7:
    v9 = v0[20];
    sub_2225BC524();
    swift_allocError();
    *v10 = xmmword_2225C7700;
    *(v10 + 16) = 6;
    swift_willThrow();

    v11 = v0[1];

    return v11();
  }

  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (!v4)
  {
LABEL_6:

    goto LABEL_7;
  }

  v5 = [v4 managedApps];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00FB40, &qword_2225C7D90);
  v6 = sub_2225C6B20();

  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = sub_2225BC89C(*(v6 + 16), 0);
    v16 = sub_2225BDFFC(&v17, v8 + 4, v7, v6);

    sub_2225BE154();
    if (v16 != v7)
    {
      __break(1u);
      goto LABEL_6;
    }
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v17 = v8;
  sub_2225BD524(&v17);
  v13 = v0[20];

  v14 = v17;
  v15 = v0[1];

  return v15(v14);
}

uint64_t sub_2225B7B74()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);
  swift_willThrow();

  sub_2225BC524();
  swift_allocError();
  *v3 = v2;
  *(v3 + 8) = 0;
  *(v3 + 16) = 4;
  swift_willThrow();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2225B7C44()
{
  v1 = v0[19];
  v2 = [objc_allocWithZone(MEMORY[0x277D04C28]) init];
  v0[20] = v2;
  v3 = *(v1 + 16);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_2225B7D90;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00FC00, &qword_2225C7D78);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2225B7154;
  v0[13] = &block_descriptor_50;
  v0[14] = v4;
  [v3 performRequest:v2 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2225B7D90()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 168) = v2;
  if (v2)
  {
    v3 = sub_2225B82B8;
  }

  else
  {
    v3 = sub_2225B7EA0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

void sub_2225B7EA0()
{
  v1 = v0[18];
  if (v1 && (objc_opt_self(), (v2 = swift_dynamicCastObjCClass()) != 0))
  {
    v3 = v2;
    v33 = v0;
    v36 = (v0 + 10);
    v37 = v0 + 18;
    v34 = v1;
    v4 = [v3 managedApps];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00FB40, &qword_2225C7D90);
    v5 = sub_2225C6B20();

    v6 = 0;
    v7 = -1;
    v8 = -1 << *(v5 + 32);
    if (-v8 < 64)
    {
      v7 = ~(-1 << -v8);
    }

    v9 = v7 & *(v5 + 64);
    v35 = MEMORY[0x277D84F90];
    v10 = (63 - v8) >> 6;
    v11 = 0x7475626972747441;
    while (v9)
    {
LABEL_15:
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v17 = v16 | (v6 << 6);
      v18 = *(*(v5 + 56) + 8 * v17);
      if (*(v18 + 16))
      {
        v19 = (*(v5 + 48) + 16 * v17);
        v20 = *v19;
        v21 = v19[1];

        v22 = sub_2225ADB70(v11, 0xEA00000000007365);
        if (v23)
        {
          v24 = v11;
          sub_2225B0214(*(v18 + 56) + 32 * v22, v36);

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00FC10, &qword_2225C7D98);
          if (swift_dynamicCast())
          {
            v25 = sub_2225B8364(*v37);

            v32 = sub_2225B6608(0x657355776F6C6C41, 0xEF656469486F5472, 1, v25);
            v31 = sub_2225B6608(0x657355776F6C6C41, 0xEF6B636F4C6F5472, 1, v25);

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v35 = sub_2225BC578(0, *(v35 + 2) + 1, 1, v35);
            }

            v11 = v24;
            v27 = *(v35 + 2);
            v26 = *(v35 + 3);
            if (v27 >= v26 >> 1)
            {
              v35 = sub_2225BC578((v26 > 1), v27 + 1, 1, v35);
            }

            *(v35 + 2) = v27 + 1;
            v28 = &v35[24 * v27];
            *(v28 + 4) = v20;
            *(v28 + 5) = v21;
            v28[48] = v32 & 1;
            v28[49] = v31 & 1;
          }

          else
          {
          }
        }

        else
        {
        }
      }
    }

    while (1)
    {
      v15 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
        return;
      }

      if (v15 >= v10)
      {
        break;
      }

      v9 = *(v5 + 64 + 8 * v15);
      ++v6;
      if (v9)
      {
        v6 = v15;
        goto LABEL_15;
      }
    }

    v29 = v33[20];

    v30 = v33[1];

    v30(v35);
  }

  else
  {
    v12 = v0[20];
    sub_2225BC524();
    swift_allocError();
    *v13 = xmmword_2225C7700;
    *(v13 + 16) = 6;
    swift_willThrow();

    v14 = v0[1];

    v14();
  }
}

uint64_t sub_2225B82B8()
{
  v1 = *(v0 + 168);
  swift_willThrow();
  sub_2225BC524();
  swift_allocError();
  *v2 = v1;
  *(v2 + 8) = 0;
  *(v2 + 16) = 4;
  swift_willThrow();

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_2225B8364(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00FC20, &qword_2225C7DA8);
    v2 = sub_2225C6D60();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
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
        v24 = *(*(a1 + 56) + v15);

        swift_dynamicCast();
        sub_2225B0204(&v25, v27);
        sub_2225B0204(v27, v28);
        sub_2225B0204(v28, &v26);
        result = sub_2225ADB70(v18, v17);
        if (v19)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_1Tm(v12);
          result = sub_2225B0204(&v26, v12);
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
          result = sub_2225B0204(&v26, (v2[7] + 32 * result));
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

uint64_t sub_2225B85AC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 200) = a4;
  *(v5 + 168) = a3;
  *(v5 + 176) = v4;
  *(v5 + 152) = a1;
  *(v5 + 160) = a2;
  return MEMORY[0x2822009F8](sub_2225B85D4, 0, 0);
}

uint64_t sub_2225B85D4()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D04C38]) init];
  *(v0 + 184) = v1;
  if (v1)
  {
    v2 = *(v0 + 200);
    v3 = *(v0 + 168);
    v4 = *(v0 + 176);
    v6 = *(v0 + 152);
    v5 = *(v0 + 160);
    v7 = v1;
    [v1 setType_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00FC30, &qword_2225C7DB8);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_2225C7C60;
    *(v8 + 32) = v6;
    *(v8 + 40) = v5;

    v9 = sub_2225C6BB0();

    [v7 setBundleIdentifiers_];

    [v7 setManagedAppsOnly_];
    *(v3 + 16);
    v10 = sub_2225C6BB0();
    [v7 setPropertyKeys_];

    v11 = *(v4 + 16);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = sub_2225B8910;
    v12 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00FC00, &qword_2225C7D78);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_2225B7154;
    *(v0 + 104) = &block_descriptor_80;
    *(v0 + 112) = v12;
    [v11 performRequest:v7 completion:v0 + 80];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    if (qword_2813114B8 != -1)
    {
      swift_once();
    }

    v13 = sub_2225C6AA0();
    __swift_project_value_buffer(v13, qword_281311550);
    v14 = sub_2225C6A80();
    v15 = sub_2225C6C60();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_222597000, v14, v15, "Failed to create fetch request", v16, 2u);
      MEMORY[0x223DBAFE0](v16, -1, -1);
    }

    v17 = *(v0 + 8);

    return v17(0);
  }
}

uint64_t sub_2225B8910()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 192) = v2;
  if (v2)
  {
    v3 = sub_2225B8B54;
  }

  else
  {
    v3 = sub_2225B8A20;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2225B8A20()
{
  v1 = v0[23];
  v2 = v0[18];
  v3 = v2;

  if (v2)
  {
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    v5 = v0[23];
    if (v4)
    {
      v6 = [v4 appsByBundleIdentifier];
      sub_2225C1B74(0, &qword_281311210, 0x277D04BD0);
      v7 = sub_2225C6B20();

      v8 = sub_2225B8D24(v7);

      v9 = v8;
      if (v8)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v3 = v0[23];
  }

LABEL_8:
  v9 = 0;
LABEL_9:
  v10 = v0[1];

  return v10(v9);
}

uint64_t sub_2225B8B54()
{
  v1 = v0[23];
  v2 = v0[24];
  swift_willThrow();

  if (qword_2813114B8 != -1)
  {
    swift_once();
  }

  v3 = v0[24];
  v4 = sub_2225C6AA0();
  __swift_project_value_buffer(v4, qword_281311550);
  v5 = v3;
  v6 = sub_2225C6A80();
  v7 = sub_2225C6C60();
  MEMORY[0x223DBAEB0](v3);
  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[24];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138543362;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_222597000, v6, v7, "Failed to fetch apps with error: %{public}@", v9, 0xCu);
    sub_2225B01A4(v10, &qword_27D00FBC8, &unk_2225C7C40);
    MEMORY[0x223DBAFE0](v10, -1, -1);
    MEMORY[0x223DBAFE0](v9, -1, -1);
  }

  v14 = v0[23];
  v13 = v0[24];

  sub_2225BC524();
  swift_allocError();
  *v15 = v13;
  *(v15 + 8) = 0;
  *(v15 + 16) = 0;
  swift_willThrow();

  v16 = v0[1];

  return v16();
}

void *sub_2225B8D24(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  v3 = sub_2225C6CD0();
  if (v3 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v5 = sub_2225BE170(v3, *(a1 + 36), 0, a1);
  v6 = v5;
  return v5;
}

uint64_t sub_2225B8D94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[24] = a3;
  v4[25] = v3;
  v4[22] = a1;
  v4[23] = a2;
  return MEMORY[0x2822009F8](sub_2225B8DB8, 0, 0);
}

uint64_t sub_2225B8DB8()
{
  v195 = v0;
  v1 = (v0 + 80);
  if (qword_2813114B8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 176);
  v3 = sub_2225C6AA0();
  *(v0 + 208) = __swift_project_value_buffer(v3, qword_281311550);
  sub_2225B0314(v2, v0 + 80);
  v4 = sub_2225C6A80();
  v5 = sub_2225C6C70();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v194[0] = v7;
    *v6 = 136446210;
    v8 = *(v0 + 104);
    v9 = *(v0 + 120);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 80), v8);
    v10 = (*(v9 + 8))(v8, v9);
    v12 = v11;
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 80));
    v13 = sub_2225AD5C8(v10, v12, v194);

    *(v6 + 4) = v13;
    _os_log_impl(&dword_222597000, v4, v5, "Start managing app: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x223DBAFE0](v7, -1, -1);
    MEMORY[0x223DBAFE0](v6, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 80));
  }

  v14 = [objc_allocWithZone(MEMORY[0x277D04C10]) init];
  *(v0 + 216) = v14;
  if (v14)
  {
    v15 = v14;
    v16 = *(v0 + 192);
    v17 = *(v0 + 176);
    v18 = v17[3];
    v19 = v17[5];
    __swift_project_boxed_opaque_existential_1Tm(v17, v18);
    v20 = *(v19 + 8);
    v21 = v15;
    v22 = v19;
    v23 = v21;
    v20(v18, v22);
    v24 = sub_2225C6B40();

    [v23 setBundleIdentifier_];

    v25 = sub_2225C6B40();
    [v23 setSourceIdentifier_];

    if (v16)
    {
      v26 = *(v0 + 184);
      v27 = *(v0 + 192);
      v28 = sub_2225C6B40();
    }

    else
    {
      v28 = 0;
    }

    v39 = *(v0 + 176);
    [v23 setPersonaIdentifier_];

    v40 = v17[3];
    v41 = v39[7];
    __swift_project_boxed_opaque_existential_1Tm(v39, v40);
    (*(v41 + 8))(v194, v40, v41);
    sub_2225C1B74(0, &qword_27D00FBE0, 0x277CCABB0);
    v42 = sub_2225C6CA0();
    [v23 setRemovable_];

    v43 = v17[3];
    v44 = v39[4];
    __swift_project_boxed_opaque_existential_1Tm(v39, v43);
    (*(v44 + 8))(v194, v43, v44);
    v45 = 5;
    if (v194[0])
    {
      v45 = 1;
    }

    if (LOBYTE(v194[0]) == 2)
    {
      v46 = 1;
    }

    else
    {
      v46 = v45;
    }

    v47 = *(v0 + 176);
    [v23 setManagementOptions_];
    v48 = v17[3];
    v49 = v17[5];
    __swift_project_boxed_opaque_existential_1Tm(v47, v48);
    v50 = (*(v49 + 104))(v48, v49);
    if (!v50)
    {
      goto LABEL_28;
    }

    v51 = v50;
    v52 = *MEMORY[0x277D24898];
    v53 = sub_2225C6B50();
    if (*(v51 + 16))
    {
      v55 = sub_2225ADB70(v53, v54);
      v57 = v56;

      if (v57)
      {
        sub_2225B0214(*(v51 + 56) + 32 * v55, v0 + 80);

        if (swift_dynamicCast())
        {
          v58 = *(v0 + 144);
          v59 = *(v0 + 152);
          v60 = sub_2225C6B40();

          goto LABEL_29;
        }

LABEL_28:
        v60 = 0;
LABEL_29:
        v64 = *(v0 + 176);
        [v23 setVPNUUIDString_];

        v65 = v17[3];
        v66 = v17[5];
        __swift_project_boxed_opaque_existential_1Tm(v64, v65);
        v67 = (*(v66 + 104))(v65, v66);
        if (!v67)
        {
          goto LABEL_36;
        }

        v68 = v67;
        v69 = *MEMORY[0x277D24868];
        v70 = sub_2225C6B50();
        if (*(v68 + 16))
        {
          v72 = sub_2225ADB70(v70, v71);
          v74 = v73;

          if (v74)
          {
            sub_2225B0214(*(v68 + 56) + 32 * v72, v0 + 80);

            if (swift_dynamicCast())
            {
              v75 = *(v0 + 144);
              v76 = *(v0 + 152);
              v77 = sub_2225C6B40();

              goto LABEL_37;
            }

LABEL_36:
            v77 = 0;
LABEL_37:
            v78 = *(v0 + 176);
            [v23 setCellularSliceUUIDString_];

            v79 = v17[3];
            v80 = v17[5];
            __swift_project_boxed_opaque_existential_1Tm(v78, v79);
            v81 = (*(v80 + 104))(v79, v80);
            if (!v81)
            {
              goto LABEL_44;
            }

            v82 = v81;
            v83 = *MEMORY[0x277D24870];
            v84 = sub_2225C6B50();
            if (*(v82 + 16))
            {
              v86 = sub_2225ADB70(v84, v85);
              v88 = v87;

              if (v88)
              {
                sub_2225B0214(*(v82 + 56) + 32 * v86, v0 + 80);

                if (swift_dynamicCast())
                {
                  v89 = *(v0 + 144);
                  v90 = *(v0 + 152);
                  v91 = sub_2225C6B40();

                  goto LABEL_45;
                }

LABEL_44:
                v91 = 0;
LABEL_45:
                v92 = *(v0 + 176);
                [v23 setContentFilterUUIDString_];

                v93 = v17[3];
                v94 = v17[5];
                __swift_project_boxed_opaque_existential_1Tm(v92, v93);
                v95 = (*(v94 + 104))(v93, v94);
                if (!v95)
                {
                  goto LABEL_52;
                }

                v96 = v95;
                v97 = *MEMORY[0x277D24878];
                v98 = sub_2225C6B50();
                if (*(v96 + 16))
                {
                  v100 = sub_2225ADB70(v98, v99);
                  v102 = v101;

                  if (v102)
                  {
                    sub_2225B0214(*(v96 + 56) + 32 * v100, v0 + 80);

                    if (swift_dynamicCast())
                    {
                      v103 = *(v0 + 144);
                      v104 = *(v0 + 152);
                      v105 = sub_2225C6B40();

                      goto LABEL_53;
                    }

LABEL_52:
                    v105 = 0;
LABEL_53:
                    v106 = *(v0 + 176);
                    [v23 setDNSProxyUUIDString_];

                    v107 = v17[3];
                    v108 = v17[5];
                    __swift_project_boxed_opaque_existential_1Tm(v106, v107);
                    v109 = (*(v108 + 104))(v107, v108);
                    if (!v109)
                    {
                      goto LABEL_60;
                    }

                    v110 = v109;
                    v111 = *MEMORY[0x277D24880];
                    v112 = sub_2225C6B50();
                    if (*(v110 + 16))
                    {
                      v114 = sub_2225ADB70(v112, v113);
                      v116 = v115;

                      if (v116)
                      {
                        sub_2225B0214(*(v110 + 56) + 32 * v114, v0 + 80);

                        if (swift_dynamicCast())
                        {
                          v117 = *(v0 + 144);
                          v118 = *(v0 + 152);
                          v119 = sub_2225C6B40();

                          goto LABEL_61;
                        }

LABEL_60:
                        v119 = 0;
LABEL_61:
                        v120 = *(v0 + 176);
                        [v23 setRelayUUIDString_];

                        v121 = v17[3];
                        v122 = v17[5];
                        __swift_project_boxed_opaque_existential_1Tm(v120, v121);
                        v123 = (*(v122 + 104))(v121, v122);
                        if (!v123)
                        {
                          goto LABEL_68;
                        }

                        v124 = v123;
                        v125 = *MEMORY[0x277D24858];
                        v126 = sub_2225C6B50();
                        if (*(v124 + 16))
                        {
                          v128 = sub_2225ADB70(v126, v127);
                          v130 = v129;

                          if (v130)
                          {
                            sub_2225B0214(*(v124 + 56) + 32 * v128, v0 + 80);

                            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00FC08, &qword_2225C7D88);
                            if (swift_dynamicCast())
                            {
                              v131 = *v193;
                              v132 = sub_2225C6BB0();

                              goto LABEL_69;
                            }

LABEL_68:
                            v132 = 0;
LABEL_69:
                            v133 = *(v0 + 176);
                            [v23 setAssociatedDomains_];

                            v134 = v17[3];
                            v135 = v17[5];
                            __swift_project_boxed_opaque_existential_1Tm(v133, v134);
                            v136 = (*(v135 + 104))(v134, v135);
                            if (v136)
                            {
                              v137 = v136;
                              v138 = *MEMORY[0x277D24860];
                              v139 = sub_2225C6B50();
                              if (*(v137 + 16))
                              {
                                v141 = sub_2225ADB70(v139, v140);
                                v143 = v142;

                                if (v143)
                                {
                                  sub_2225B0214(*(v137 + 56) + 32 * v141, v0 + 80);

                                  goto LABEL_76;
                                }
                              }

                              else
                              {
                              }
                            }

                            *v1 = 0u;
                            *(v0 + 96) = 0u;
LABEL_76:
                            sub_2225B013C(v0 + 80, v193, &qword_27D00FBD8, &qword_2225C7D80);
                            if (*(v0 + 168))
                            {
                              if (swift_dynamicCast())
                              {
                                v144 = *(v0 + 232);
                                v145 = sub_2225C6CA0();
                                sub_2225B01A4(v0 + 80, &qword_27D00FBD8, &qword_2225C7D80);
                                goto LABEL_82;
                              }

                              v146 = v0 + 80;
                            }

                            else
                            {
                              sub_2225B01A4(v0 + 80, &qword_27D00FBD8, &qword_2225C7D80);
                              v146 = v193;
                            }

                            sub_2225B01A4(v146, &qword_27D00FBD8, &qword_2225C7D80);
                            v145 = 0;
LABEL_82:
                            v147 = *(v0 + 176);
                            [v23 setAssociatedDomainsEnableDirectDownloads_];

                            v148 = v17[3];
                            v149 = v17[5];
                            __swift_project_boxed_opaque_existential_1Tm(v147, v148);
                            v150 = (*(v149 + 104))(v148, v149);
                            if (v150)
                            {
                              v151 = v150;
                              v152 = *MEMORY[0x277D24890];
                              v153 = sub_2225C6B50();
                              if (*(v151 + 16))
                              {
                                v155 = sub_2225ADB70(v153, v154);
                                v157 = v156;

                                if (v157)
                                {
                                  sub_2225B0214(*(v151 + 56) + 32 * v155, v0 + 80);

                                  goto LABEL_89;
                                }
                              }

                              else
                              {
                              }
                            }

                            *v1 = 0u;
                            *(v0 + 96) = 0u;
LABEL_89:
                            sub_2225B013C(v0 + 80, v193, &qword_27D00FBD8, &qword_2225C7D80);
                            if (*(v0 + 168))
                            {
                              if (swift_dynamicCast())
                              {
                                v158 = *(v0 + 232);
                                v159 = sub_2225C6CA0();
                                sub_2225B01A4(v0 + 80, &qword_27D00FBD8, &qword_2225C7D80);
                                goto LABEL_95;
                              }

                              v160 = v0 + 80;
                            }

                            else
                            {
                              sub_2225B01A4(v0 + 80, &qword_27D00FBD8, &qword_2225C7D80);
                              v160 = v193;
                            }

                            sub_2225B01A4(v160, &qword_27D00FBD8, &qword_2225C7D80);
                            v159 = 0;
LABEL_95:
                            v161 = *(v0 + 176);
                            [v23 setTapToPayScreenLock_];

                            v162 = v17[3];
                            v163 = v17[5];
                            __swift_project_boxed_opaque_existential_1Tm(v161, v162);
                            v164 = (*(v163 + 104))(v162, v163);
                            if (v164)
                            {
                              v165 = v164;
                              v166 = *MEMORY[0x277D24848];
                              v167 = sub_2225C6B50();
                              if (*(v165 + 16))
                              {
                                v169 = sub_2225ADB70(v167, v168);
                                v171 = v170;

                                if (v171)
                                {
                                  sub_2225B0214(*(v165 + 56) + 32 * v169, v0 + 80);

                                  goto LABEL_102;
                                }
                              }

                              else
                              {
                              }
                            }

                            *v1 = 0u;
                            *(v0 + 96) = 0u;
LABEL_102:
                            sub_2225B013C(v0 + 80, v193, &qword_27D00FBD8, &qword_2225C7D80);
                            if (*(v0 + 168))
                            {
                              if (swift_dynamicCast())
                              {
                                v172 = *(v0 + 232);
                                v173 = sub_2225C6CA0();
                                sub_2225B01A4(v0 + 80, &qword_27D00FBD8, &qword_2225C7D80);
                                goto LABEL_108;
                              }

                              v174 = v0 + 80;
                            }

                            else
                            {
                              sub_2225B01A4(v0 + 80, &qword_27D00FBD8, &qword_2225C7D80);
                              v174 = v193;
                            }

                            sub_2225B01A4(v174, &qword_27D00FBD8, &qword_2225C7D80);
                            v173 = 0;
LABEL_108:
                            v175 = *(v0 + 176);
                            [v23 setAllowUserToHide_];

                            v176 = v17[3];
                            v177 = v17[5];
                            __swift_project_boxed_opaque_existential_1Tm(v175, v176);
                            v178 = (*(v177 + 104))(v176, v177);
                            if (v178)
                            {
                              v179 = v178;
                              v180 = *MEMORY[0x277D24850];
                              v181 = sub_2225C6B50();
                              if (*(v179 + 16))
                              {
                                v183 = sub_2225ADB70(v181, v182);
                                v185 = v184;

                                if (v185)
                                {
                                  sub_2225B0214(*(v179 + 56) + 32 * v183, v0 + 80);

                                  goto LABEL_115;
                                }
                              }

                              else
                              {
                              }
                            }

                            *v1 = 0u;
                            *(v0 + 96) = 0u;
LABEL_115:
                            sub_2225B013C(v0 + 80, v193, &qword_27D00FBD8, &qword_2225C7D80);
                            if (*(v0 + 168))
                            {
                              if (swift_dynamicCast())
                              {
                                v186 = *(v0 + 232);
                                v187 = sub_2225C6CA0();
                                sub_2225B01A4(v0 + 80, &qword_27D00FBD8, &qword_2225C7D80);
LABEL_121:
                                v189 = *(v0 + 200);
                                [v23 setAllowUserToLock_];

                                v190 = *(v189 + 16);
                                *(v0 + 16) = v0;
                                *(v0 + 56) = v193;
                                *(v0 + 24) = sub_2225BA020;
                                v191 = v23;
                                v192 = swift_continuation_init();
                                *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00FC00, &qword_2225C7D78);
                                *(v0 + 80) = MEMORY[0x277D85DD0];
                                *(v0 + 88) = 1107296256;
                                *(v0 + 96) = sub_2225B7154;
                                *(v0 + 104) = &block_descriptor_46;
                                *(v0 + 112) = v192;
                                [v190 performRequest:v191 completion:v0 + 80];

                                return MEMORY[0x282200938](v0 + 16);
                              }

                              v188 = v0 + 80;
                            }

                            else
                            {
                              sub_2225B01A4(v0 + 80, &qword_27D00FBD8, &qword_2225C7D80);
                              v188 = v193;
                            }

                            sub_2225B01A4(v188, &qword_27D00FBD8, &qword_2225C7D80);
                            v187 = 0;
                            goto LABEL_121;
                          }
                        }

                        else
                        {
                        }

                        goto LABEL_68;
                      }
                    }

                    else
                    {
                    }

                    goto LABEL_60;
                  }
                }

                else
                {
                }

                goto LABEL_52;
              }
            }

            else
            {
            }

            goto LABEL_44;
          }
        }

        else
        {
        }

        goto LABEL_36;
      }
    }

    else
    {
    }

    goto LABEL_28;
  }

  sub_2225B0314(*(v0 + 176), v0 + 80);
  v29 = sub_2225C6A80();
  v30 = sub_2225C6C60();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v194[0] = v32;
    *v31 = 136446210;
    v33 = *(v0 + 104);
    v34 = *(v0 + 120);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 80), v33);
    v35 = (*(v34 + 8))(v33, v34);
    v37 = v36;
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 80));
    v38 = sub_2225AD5C8(v35, v37, v194);

    *(v31 + 4) = v38;
    _os_log_impl(&dword_222597000, v29, v30, "Unable to create DMFDDMStartManagingAppRequest for %{public}s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
    MEMORY[0x223DBAFE0](v32, -1, -1);
    MEMORY[0x223DBAFE0](v31, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 80));
  }

  sub_2225BC524();
  swift_allocError();
  *v61 = 0;
  *(v61 + 8) = 0;
  *(v61 + 16) = 1;
  swift_willThrow();
  v62 = *(v0 + 8);

  return v62();
}

uint64_t sub_2225BA020()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 224) = v2;
  if (v2)
  {
    v3 = sub_2225BA1A0;
  }

  else
  {
    v3 = sub_2225BA130;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2225BA130()
{
  v1 = v0[27];

  v2 = v0[18];
  v3 = v0[1];

  return v3();
}

uint64_t sub_2225BA1A0()
{
  v1 = v0[27];
  v2 = v0[28];
  v3 = v0[26];
  swift_willThrow();

  v4 = v2;
  v5 = sub_2225C6A80();
  v6 = sub_2225C6C60();
  MEMORY[0x223DBAEB0](v2);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[28];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_222597000, v5, v6, "Failed to perform start managing request with error: %{public}@", v8, 0xCu);
    sub_2225B01A4(v9, &qword_27D00FBC8, &unk_2225C7C40);
    MEMORY[0x223DBAFE0](v9, -1, -1);
    MEMORY[0x223DBAFE0](v8, -1, -1);
  }

  v13 = v0[27];
  v12 = v0[28];

  sub_2225BC524();
  swift_allocError();
  *v14 = v12;
  *(v14 + 8) = 0;
  *(v14 + 16) = 1;
  swift_willThrow();

  v15 = v0[1];

  return v15();
}

uint64_t sub_2225BA330(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[24] = a3;
  v4[25] = v3;
  v4[22] = a1;
  v4[23] = a2;
  return MEMORY[0x2822009F8](sub_2225BA354, 0, 0);
}

uint64_t sub_2225BA354()
{
  v195 = v0;
  v1 = (v0 + 80);
  if (qword_2813114B8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 176);
  v3 = sub_2225C6AA0();
  *(v0 + 208) = __swift_project_value_buffer(v3, qword_281311550);
  sub_2225B0314(v2, v0 + 80);
  v4 = sub_2225C6A80();
  v5 = sub_2225C6C70();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v194[0] = v7;
    *v6 = 136446210;
    v8 = *(v0 + 104);
    v9 = *(v0 + 120);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 80), v8);
    v10 = (*(v9 + 8))(v8, v9);
    v12 = v11;
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 80));
    v13 = sub_2225AD5C8(v10, v12, v194);

    *(v6 + 4) = v13;
    _os_log_impl(&dword_222597000, v4, v5, "Update managing app: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x223DBAFE0](v7, -1, -1);
    MEMORY[0x223DBAFE0](v6, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 80));
  }

  v14 = [objc_allocWithZone(MEMORY[0x277D04D78]) init];
  *(v0 + 216) = v14;
  if (v14)
  {
    v15 = v14;
    v16 = *(v0 + 192);
    v17 = *(v0 + 176);
    v18 = v17[3];
    v19 = v17[5];
    __swift_project_boxed_opaque_existential_1Tm(v17, v18);
    v20 = *(v19 + 8);
    v21 = v15;
    v22 = v19;
    v23 = v21;
    v20(v18, v22);
    v24 = sub_2225C6B40();

    [v23 setBundleIdentifier_];

    v25 = sub_2225C6B40();
    [v23 setSourceIdentifier_];

    if (v16)
    {
      v26 = *(v0 + 184);
      v27 = *(v0 + 192);
      v28 = sub_2225C6B40();
    }

    else
    {
      v28 = 0;
    }

    v39 = *(v0 + 176);
    [v23 setPersonaIdentifier_];

    v40 = v17[3];
    v41 = v39[7];
    __swift_project_boxed_opaque_existential_1Tm(v39, v40);
    (*(v41 + 8))(v194, v40, v41);
    sub_2225C1B74(0, &qword_27D00FBE0, 0x277CCABB0);
    v42 = sub_2225C6CA0();
    [v23 setRemovable_];

    v43 = v17[3];
    v44 = v39[4];
    __swift_project_boxed_opaque_existential_1Tm(v39, v43);
    (*(v44 + 8))(v194, v43, v44);
    v45 = 5;
    if (v194[0])
    {
      v45 = 1;
    }

    if (LOBYTE(v194[0]) == 2)
    {
      v46 = 1;
    }

    else
    {
      v46 = v45;
    }

    v47 = *(v0 + 176);
    [v23 setManagementOptions_];
    v48 = v17[3];
    v49 = v17[5];
    __swift_project_boxed_opaque_existential_1Tm(v47, v48);
    v50 = (*(v49 + 104))(v48, v49);
    if (!v50)
    {
      goto LABEL_28;
    }

    v51 = v50;
    v52 = *MEMORY[0x277D24898];
    v53 = sub_2225C6B50();
    if (*(v51 + 16))
    {
      v55 = sub_2225ADB70(v53, v54);
      v57 = v56;

      if (v57)
      {
        sub_2225B0214(*(v51 + 56) + 32 * v55, v0 + 80);

        if (swift_dynamicCast())
        {
          v58 = *(v0 + 144);
          v59 = *(v0 + 152);
          v60 = sub_2225C6B40();

          goto LABEL_29;
        }

LABEL_28:
        v60 = 0;
LABEL_29:
        v64 = *(v0 + 176);
        [v23 setVPNUUIDString_];

        v65 = v17[3];
        v66 = v17[5];
        __swift_project_boxed_opaque_existential_1Tm(v64, v65);
        v67 = (*(v66 + 104))(v65, v66);
        if (!v67)
        {
          goto LABEL_36;
        }

        v68 = v67;
        v69 = *MEMORY[0x277D24868];
        v70 = sub_2225C6B50();
        if (*(v68 + 16))
        {
          v72 = sub_2225ADB70(v70, v71);
          v74 = v73;

          if (v74)
          {
            sub_2225B0214(*(v68 + 56) + 32 * v72, v0 + 80);

            if (swift_dynamicCast())
            {
              v75 = *(v0 + 144);
              v76 = *(v0 + 152);
              v77 = sub_2225C6B40();

              goto LABEL_37;
            }

LABEL_36:
            v77 = 0;
LABEL_37:
            v78 = *(v0 + 176);
            [v23 setCellularSliceUUIDString_];

            v79 = v17[3];
            v80 = v17[5];
            __swift_project_boxed_opaque_existential_1Tm(v78, v79);
            v81 = (*(v80 + 104))(v79, v80);
            if (!v81)
            {
              goto LABEL_44;
            }

            v82 = v81;
            v83 = *MEMORY[0x277D24870];
            v84 = sub_2225C6B50();
            if (*(v82 + 16))
            {
              v86 = sub_2225ADB70(v84, v85);
              v88 = v87;

              if (v88)
              {
                sub_2225B0214(*(v82 + 56) + 32 * v86, v0 + 80);

                if (swift_dynamicCast())
                {
                  v89 = *(v0 + 144);
                  v90 = *(v0 + 152);
                  v91 = sub_2225C6B40();

                  goto LABEL_45;
                }

LABEL_44:
                v91 = 0;
LABEL_45:
                v92 = *(v0 + 176);
                [v23 setContentFilterUUIDString_];

                v93 = v17[3];
                v94 = v17[5];
                __swift_project_boxed_opaque_existential_1Tm(v92, v93);
                v95 = (*(v94 + 104))(v93, v94);
                if (!v95)
                {
                  goto LABEL_52;
                }

                v96 = v95;
                v97 = *MEMORY[0x277D24878];
                v98 = sub_2225C6B50();
                if (*(v96 + 16))
                {
                  v100 = sub_2225ADB70(v98, v99);
                  v102 = v101;

                  if (v102)
                  {
                    sub_2225B0214(*(v96 + 56) + 32 * v100, v0 + 80);

                    if (swift_dynamicCast())
                    {
                      v103 = *(v0 + 144);
                      v104 = *(v0 + 152);
                      v105 = sub_2225C6B40();

                      goto LABEL_53;
                    }

LABEL_52:
                    v105 = 0;
LABEL_53:
                    v106 = *(v0 + 176);
                    [v23 setDNSProxyUUIDString_];

                    v107 = v17[3];
                    v108 = v17[5];
                    __swift_project_boxed_opaque_existential_1Tm(v106, v107);
                    v109 = (*(v108 + 104))(v107, v108);
                    if (!v109)
                    {
                      goto LABEL_60;
                    }

                    v110 = v109;
                    v111 = *MEMORY[0x277D24880];
                    v112 = sub_2225C6B50();
                    if (*(v110 + 16))
                    {
                      v114 = sub_2225ADB70(v112, v113);
                      v116 = v115;

                      if (v116)
                      {
                        sub_2225B0214(*(v110 + 56) + 32 * v114, v0 + 80);

                        if (swift_dynamicCast())
                        {
                          v117 = *(v0 + 144);
                          v118 = *(v0 + 152);
                          v119 = sub_2225C6B40();

                          goto LABEL_61;
                        }

LABEL_60:
                        v119 = 0;
LABEL_61:
                        v120 = *(v0 + 176);
                        [v23 setRelayUUIDString_];

                        v121 = v17[3];
                        v122 = v17[5];
                        __swift_project_boxed_opaque_existential_1Tm(v120, v121);
                        v123 = (*(v122 + 104))(v121, v122);
                        if (!v123)
                        {
                          goto LABEL_68;
                        }

                        v124 = v123;
                        v125 = *MEMORY[0x277D24858];
                        v126 = sub_2225C6B50();
                        if (*(v124 + 16))
                        {
                          v128 = sub_2225ADB70(v126, v127);
                          v130 = v129;

                          if (v130)
                          {
                            sub_2225B0214(*(v124 + 56) + 32 * v128, v0 + 80);

                            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00FC08, &qword_2225C7D88);
                            if (swift_dynamicCast())
                            {
                              v131 = *v193;
                              v132 = sub_2225C6BB0();

                              goto LABEL_69;
                            }

LABEL_68:
                            v132 = 0;
LABEL_69:
                            v133 = *(v0 + 176);
                            [v23 setAssociatedDomains_];

                            v134 = v17[3];
                            v135 = v17[5];
                            __swift_project_boxed_opaque_existential_1Tm(v133, v134);
                            v136 = (*(v135 + 104))(v134, v135);
                            if (v136)
                            {
                              v137 = v136;
                              v138 = *MEMORY[0x277D24860];
                              v139 = sub_2225C6B50();
                              if (*(v137 + 16))
                              {
                                v141 = sub_2225ADB70(v139, v140);
                                v143 = v142;

                                if (v143)
                                {
                                  sub_2225B0214(*(v137 + 56) + 32 * v141, v0 + 80);

                                  goto LABEL_76;
                                }
                              }

                              else
                              {
                              }
                            }

                            *v1 = 0u;
                            *(v0 + 96) = 0u;
LABEL_76:
                            sub_2225B013C(v0 + 80, v193, &qword_27D00FBD8, &qword_2225C7D80);
                            if (*(v0 + 168))
                            {
                              if (swift_dynamicCast())
                              {
                                v144 = *(v0 + 232);
                                v145 = sub_2225C6CA0();
                                sub_2225B01A4(v0 + 80, &qword_27D00FBD8, &qword_2225C7D80);
                                goto LABEL_82;
                              }

                              v146 = v0 + 80;
                            }

                            else
                            {
                              sub_2225B01A4(v0 + 80, &qword_27D00FBD8, &qword_2225C7D80);
                              v146 = v193;
                            }

                            sub_2225B01A4(v146, &qword_27D00FBD8, &qword_2225C7D80);
                            v145 = 0;
LABEL_82:
                            v147 = *(v0 + 176);
                            [v23 setAssociatedDomainsEnableDirectDownloads_];

                            v148 = v17[3];
                            v149 = v17[5];
                            __swift_project_boxed_opaque_existential_1Tm(v147, v148);
                            v150 = (*(v149 + 104))(v148, v149);
                            if (v150)
                            {
                              v151 = v150;
                              v152 = *MEMORY[0x277D24890];
                              v153 = sub_2225C6B50();
                              if (*(v151 + 16))
                              {
                                v155 = sub_2225ADB70(v153, v154);
                                v157 = v156;

                                if (v157)
                                {
                                  sub_2225B0214(*(v151 + 56) + 32 * v155, v0 + 80);

                                  goto LABEL_89;
                                }
                              }

                              else
                              {
                              }
                            }

                            *v1 = 0u;
                            *(v0 + 96) = 0u;
LABEL_89:
                            sub_2225B013C(v0 + 80, v193, &qword_27D00FBD8, &qword_2225C7D80);
                            if (*(v0 + 168))
                            {
                              if (swift_dynamicCast())
                              {
                                v158 = *(v0 + 232);
                                v159 = sub_2225C6CA0();
                                sub_2225B01A4(v0 + 80, &qword_27D00FBD8, &qword_2225C7D80);
                                goto LABEL_95;
                              }

                              v160 = v0 + 80;
                            }

                            else
                            {
                              sub_2225B01A4(v0 + 80, &qword_27D00FBD8, &qword_2225C7D80);
                              v160 = v193;
                            }

                            sub_2225B01A4(v160, &qword_27D00FBD8, &qword_2225C7D80);
                            v159 = 0;
LABEL_95:
                            v161 = *(v0 + 176);
                            [v23 setTapToPayScreenLock_];

                            v162 = v17[3];
                            v163 = v17[5];
                            __swift_project_boxed_opaque_existential_1Tm(v161, v162);
                            v164 = (*(v163 + 104))(v162, v163);
                            if (v164)
                            {
                              v165 = v164;
                              v166 = *MEMORY[0x277D24848];
                              v167 = sub_2225C6B50();
                              if (*(v165 + 16))
                              {
                                v169 = sub_2225ADB70(v167, v168);
                                v171 = v170;

                                if (v171)
                                {
                                  sub_2225B0214(*(v165 + 56) + 32 * v169, v0 + 80);

                                  goto LABEL_102;
                                }
                              }

                              else
                              {
                              }
                            }

                            *v1 = 0u;
                            *(v0 + 96) = 0u;
LABEL_102:
                            sub_2225B013C(v0 + 80, v193, &qword_27D00FBD8, &qword_2225C7D80);
                            if (*(v0 + 168))
                            {
                              if (swift_dynamicCast())
                              {
                                v172 = *(v0 + 232);
                                v173 = sub_2225C6CA0();
                                sub_2225B01A4(v0 + 80, &qword_27D00FBD8, &qword_2225C7D80);
                                goto LABEL_108;
                              }

                              v174 = v0 + 80;
                            }

                            else
                            {
                              sub_2225B01A4(v0 + 80, &qword_27D00FBD8, &qword_2225C7D80);
                              v174 = v193;
                            }

                            sub_2225B01A4(v174, &qword_27D00FBD8, &qword_2225C7D80);
                            v173 = 0;
LABEL_108:
                            v175 = *(v0 + 176);
                            [v23 setAllowUserToHide_];

                            v176 = v17[3];
                            v177 = v17[5];
                            __swift_project_boxed_opaque_existential_1Tm(v175, v176);
                            v178 = (*(v177 + 104))(v176, v177);
                            if (v178)
                            {
                              v179 = v178;
                              v180 = *MEMORY[0x277D24850];
                              v181 = sub_2225C6B50();
                              if (*(v179 + 16))
                              {
                                v183 = sub_2225ADB70(v181, v182);
                                v185 = v184;

                                if (v185)
                                {
                                  sub_2225B0214(*(v179 + 56) + 32 * v183, v0 + 80);

                                  goto LABEL_115;
                                }
                              }

                              else
                              {
                              }
                            }

                            *v1 = 0u;
                            *(v0 + 96) = 0u;
LABEL_115:
                            sub_2225B013C(v0 + 80, v193, &qword_27D00FBD8, &qword_2225C7D80);
                            if (*(v0 + 168))
                            {
                              if (swift_dynamicCast())
                              {
                                v186 = *(v0 + 232);
                                v187 = sub_2225C6CA0();
                                sub_2225B01A4(v0 + 80, &qword_27D00FBD8, &qword_2225C7D80);
LABEL_121:
                                v189 = *(v0 + 200);
                                [v23 setAllowUserToLock_];

                                v190 = *(v189 + 16);
                                *(v0 + 16) = v0;
                                *(v0 + 56) = v193;
                                *(v0 + 24) = sub_2225BB5BC;
                                v191 = v23;
                                v192 = swift_continuation_init();
                                *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00FC00, &qword_2225C7D78);
                                *(v0 + 80) = MEMORY[0x277D85DD0];
                                *(v0 + 88) = 1107296256;
                                *(v0 + 96) = sub_2225B7154;
                                *(v0 + 104) = &block_descriptor_42;
                                *(v0 + 112) = v192;
                                [v190 performRequest:v191 completion:v0 + 80];

                                return MEMORY[0x282200938](v0 + 16);
                              }

                              v188 = v0 + 80;
                            }

                            else
                            {
                              sub_2225B01A4(v0 + 80, &qword_27D00FBD8, &qword_2225C7D80);
                              v188 = v193;
                            }

                            sub_2225B01A4(v188, &qword_27D00FBD8, &qword_2225C7D80);
                            v187 = 0;
                            goto LABEL_121;
                          }
                        }

                        else
                        {
                        }

                        goto LABEL_68;
                      }
                    }

                    else
                    {
                    }

                    goto LABEL_60;
                  }
                }

                else
                {
                }

                goto LABEL_52;
              }
            }

            else
            {
            }

            goto LABEL_44;
          }
        }

        else
        {
        }

        goto LABEL_36;
      }
    }

    else
    {
    }

    goto LABEL_28;
  }

  sub_2225B0314(*(v0 + 176), v0 + 80);
  v29 = sub_2225C6A80();
  v30 = sub_2225C6C60();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v194[0] = v32;
    *v31 = 136446210;
    v33 = *(v0 + 104);
    v34 = *(v0 + 120);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 80), v33);
    v35 = (*(v34 + 8))(v33, v34);
    v37 = v36;
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 80));
    v38 = sub_2225AD5C8(v35, v37, v194);

    *(v31 + 4) = v38;
    _os_log_impl(&dword_222597000, v29, v30, "Unable to create DMFUpdateAppAttributesRequest for %{public}s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
    MEMORY[0x223DBAFE0](v32, -1, -1);
    MEMORY[0x223DBAFE0](v31, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 80));
  }

  sub_2225BC524();
  swift_allocError();
  *v61 = 0;
  *(v61 + 8) = 0;
  *(v61 + 16) = 1;
  swift_willThrow();
  v62 = *(v0 + 8);

  return v62();
}

uint64_t sub_2225BB5BC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 224) = v2;
  if (v2)
  {
    v3 = sub_2225BB6CC;
  }

  else
  {
    v3 = sub_2225C1C98;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2225BB6CC()
{
  v1 = v0[27];
  v2 = v0[28];
  v3 = v0[26];
  swift_willThrow();

  v4 = v2;
  v5 = sub_2225C6A80();
  v6 = sub_2225C6C60();
  MEMORY[0x223DBAEB0](v2);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[28];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_222597000, v5, v6, "Failed to perform update app attributes request with error: %{public}@", v8, 0xCu);
    sub_2225B01A4(v9, &qword_27D00FBC8, &unk_2225C7C40);
    MEMORY[0x223DBAFE0](v9, -1, -1);
    MEMORY[0x223DBAFE0](v8, -1, -1);
  }

  v13 = v0[27];
  v12 = v0[28];

  sub_2225BC524();
  swift_allocError();
  *v14 = v12;
  *(v14 + 8) = 0;
  *(v14 + 16) = 1;
  swift_willThrow();

  v15 = v0[1];

  return v15();
}

uint64_t sub_2225BB85C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[45] = a3;
  v4[46] = v3;
  v4[43] = a1;
  v4[44] = a2;
  return MEMORY[0x2822009F8](sub_2225BB880, 0, 0);
}

uint64_t sub_2225BB880()
{
  v23 = v0;
  if (qword_2813114B8 != -1)
  {
    swift_once();
  }

  v1 = v0[43];
  v2 = sub_2225C6AA0();
  v0[47] = __swift_project_value_buffer(v2, qword_281311550);
  sub_2225B0314(v1, (v0 + 10));
  v3 = sub_2225C6A80();
  v4 = sub_2225C6C70();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v22 = v6;
    *v5 = 136446210;
    v7 = v0[13];
    v8 = v0[15];
    __swift_project_boxed_opaque_existential_1Tm(v0 + 10, v7);
    v9 = (*(v8 + 8))(v7, v8);
    v11 = v10;
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 10);
    v12 = sub_2225AD5C8(v9, v11, &v22);

    *(v5 + 4) = v12;
    _os_log_impl(&dword_222597000, v3, v4, "Stop managing app: %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x223DBAFE0](v6, -1, -1);
    MEMORY[0x223DBAFE0](v5, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 10);
  }

  v13 = v0[43];
  v14 = v13[3];
  v15 = v13[5];
  __swift_project_boxed_opaque_existential_1Tm(v13, v14);
  v16 = (*(v15 + 8))(v14, v15);
  v18 = v17;
  v0[48] = v17;
  v19 = swift_task_alloc();
  v0[49] = v19;
  *v19 = v0;
  v19[1] = sub_2225BBAE4;
  v20 = v0[46];

  return sub_2225B0FA4(v16, v18);
}

uint64_t sub_2225BBAE4(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 392);
  v6 = *v2;
  *(*v2 + 400) = v1;

  if (v1)
  {
    v7 = sub_2225BC2EC;
  }

  else
  {
    v8 = *(v4 + 384);

    *(v4 + 424) = a1;
    v7 = sub_2225BBC14;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2225BBC14()
{
  v31 = v0;
  if (*(v0 + 424) == 2)
  {
    v1 = [objc_allocWithZone(MEMORY[0x277D04D68]) init];
    *(v0 + 408) = v1;
    v2 = *(v0 + 344);
    if (v1)
    {
      v3 = *(v0 + 360);
      v4 = v2[3];
      v5 = v2[5];
      __swift_project_boxed_opaque_existential_1Tm(v2, v4);
      v6 = *(v5 + 8);
      v7 = v1;
      v6(v4, v5);
      v8 = sub_2225C6B40();

      [v7 setBundleIdentifier_];

      v9 = sub_2225C6B40();
      [v7 setSourceIdentifier_];

      if (v3)
      {
        v10 = *(v0 + 352);
        v11 = *(v0 + 360);
        v12 = sub_2225C6B40();
      }

      else
      {
        v12 = 0;
      }

      v25 = *(v0 + 368);
      [v7 setPersonaIdentifier_];

      [v7 setShouldPreserveAppBinary_];
      v26 = *(v25 + 16);
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 336;
      *(v0 + 24) = sub_2225BC018;
      v27 = swift_continuation_init();
      *(v0 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00FC00, &qword_2225C7D78);
      *(v0 + 208) = MEMORY[0x277D85DD0];
      *(v0 + 216) = 1107296256;
      *(v0 + 224) = sub_2225B7154;
      *(v0 + 232) = &block_descriptor_0;
      *(v0 + 240) = v27;
      [v26 performRequest:v7 completion:v0 + 208];

      return MEMORY[0x282200938](v0 + 16);
    }

    v14 = *(v0 + 376);
    sub_2225B0314(v2, v0 + 144);
    v15 = sub_2225C6A80();
    v16 = sub_2225C6C60();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v30 = v18;
      *v17 = 136446210;
      v19 = *(v0 + 168);
      v20 = *(v0 + 184);
      __swift_project_boxed_opaque_existential_1Tm((v0 + 144), v19);
      v21 = (*(v20 + 8))(v19, v20);
      v23 = v22;
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 144));
      v24 = sub_2225AD5C8(v21, v23, &v30);

      *(v17 + 4) = v24;
      _os_log_impl(&dword_222597000, v15, v16, "Unable to create DMFStopManagingAppRequest for %{public}s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      MEMORY[0x223DBAFE0](v18, -1, -1);
      MEMORY[0x223DBAFE0](v17, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 144));
    }

    sub_2225BC524();
    swift_allocError();
    *v28 = 0;
    *(v28 + 8) = 0;
    *(v28 + 16) = 1;
    swift_willThrow();
    v13 = *(v0 + 8);
  }

  else
  {
    v13 = *(v0 + 8);
  }

  return v13();
}

uint64_t sub_2225BC018()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 416) = v3;
  if (v3)
  {
    v4 = sub_2225BC350;
  }

  else
  {

    v4 = sub_2225BC130;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2225BC130()
{
  v19 = v0;
  v1 = *(v0 + 376);
  v3 = *(v0 + 336);
  v2 = *(v0 + 344);

  sub_2225B0314(v2, v0 + 272);
  v4 = sub_2225C6A80();
  v5 = sub_2225C6C50();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 408);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136446210;
    v10 = *(v0 + 296);
    v11 = *(v0 + 312);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 272), v10);
    v12 = (*(v11 + 8))(v10, v11);
    v14 = v13;
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 272));
    v15 = sub_2225AD5C8(v12, v14, &v18);

    *(v8 + 4) = v15;
    _os_log_impl(&dword_222597000, v4, v5, "Removed DMF app data for: %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x223DBAFE0](v9, -1, -1);
    MEMORY[0x223DBAFE0](v8, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 272));
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_2225BC2EC()
{
  v1 = v0[48];

  v2 = v0[50];
  v3 = v0[1];

  return v3();
}

uint64_t sub_2225BC350()
{
  v1 = v0[51];
  v2 = v0[52];
  v3 = v0[47];
  swift_willThrow();

  v4 = v2;
  v5 = sub_2225C6A80();
  v6 = sub_2225C6C60();
  MEMORY[0x223DBAEB0](v2);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[52];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_222597000, v5, v6, "Failed to remove DMF app data: %{public}@", v8, 0xCu);
    sub_2225B01A4(v9, &qword_27D00FBC8, &unk_2225C7C40);
    MEMORY[0x223DBAFE0](v9, -1, -1);
    MEMORY[0x223DBAFE0](v8, -1, -1);
  }

  v12 = v0[51];
  v13 = v0[52];

  swift_willThrow();
  v14 = v0[52];
  v15 = v0[1];

  return v15();
}

uint64_t sub_2225BC4B8()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));

  return MEMORY[0x2821FE8D8](v0, 104, 7);
}

unint64_t sub_2225BC524()
{
  result = qword_281311218[0];
  if (!qword_281311218[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281311218);
  }

  return result;
}

char *sub_2225BC578(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00FC18, &qword_2225C7DA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2225BC694(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00FC60, &qword_2225C7DD8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_2225BC798(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00FC28, &qword_2225C7DB0);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_2225BC89C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00FC30, &qword_2225C7DB8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

uint64_t sub_2225BC94C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

char *sub_2225BC9F8(char *a1, int64_t a2, char a3)
{
  result = sub_2225BCA38(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2225BCA18(char *a1, int64_t a2, char a3)
{
  result = sub_2225BCB54(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2225BCA38(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00FC18, &qword_2225C7DA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2225BCB54(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00FC30, &qword_2225C7DB8);
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

uint64_t sub_2225BCC60(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_2225C6E00();
  sub_2225C6B70();
  v9 = sub_2225C6E20();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_2225C6D90() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_2225BD010(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_2225BCDB0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00FC58, &qword_2225C7DD0);
  result = sub_2225C6D10();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
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
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_2225C6E00();
      sub_2225C6B70();
      result = sub_2225C6E20();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_2225BD010(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_2225BCDB0(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_2225BD190();
      goto LABEL_16;
    }

    sub_2225BD2EC(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_2225C6E00();
  sub_2225C6B70();
  result = sub_2225C6E20();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_2225C6D90();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_2225C6DA0();
  __break(1u);
  return result;
}

void *sub_2225BD190()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00FC58, &qword_2225C7DD0);
  v2 = *v0;
  v3 = sub_2225C6D00();
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
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_2225BD2EC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00FC58, &qword_2225C7DD0);
  result = sub_2225C6D10();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
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
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_2225C6E00();

      sub_2225C6B70();
      result = sub_2225C6E20();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_2225BD524(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2225BE15C(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_2225BD590(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_2225BD590(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_2225C6D70();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_2225C6BE0();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_2225BD758(v7, v8, a1, v4);
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
    return sub_2225BD688(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2225BD688(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_2225C6D90(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2225BD758(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_2225BDFE8(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_2225BDD34((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_2225C6D90();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_2225C6D90();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2225BC798(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_2225BC798((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_2225BDD34((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_2225BDFE8(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_2225BDF5C(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_2225C6D90(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_2225BDD34(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_2225C6D90() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_2225C6D90() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_2225BDF5C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2225BDFE8(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

void *sub_2225BDFFC(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
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

uint64_t sub_2225BE170(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 56) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_2225BE1C0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2225BE1E0, 0, 0);
}

uint64_t sub_2225BE1E0()
{
  v1 = v0[2];
  v2 = v1[3];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_1Tm(v1, v2);
  v4 = (*(v3 + 80))(v2, v3);
  v0[4] = v5;
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    v9 = v0[2];
    v8 = v0[3];
    v10 = v8[6];
    v11 = v8[7];
    __swift_project_boxed_opaque_existential_1Tm(v8 + 3, v10);
    v12 = v1[3];
    v13 = v1[5];
    __swift_project_boxed_opaque_existential_1Tm(v9, v12);
    v14 = (*(v13 + 8))(v12, v13);
    v16 = v15;
    v0[5] = v15;
    v17 = *(MEMORY[0x277D25A68] + 4);
    v18 = swift_task_alloc();
    v0[6] = v18;
    *v18 = v0;
    v18[1] = sub_2225BE3C8;

    return MEMORY[0x282184930](v6, v7, v14, v16, v10, v11);
  }

  else
  {
    sub_2225B02BC();
    swift_allocError();
    *v19 = xmmword_2225C7700;
    *(v19 + 16) = 2;
    swift_willThrow();
    v20 = v0[1];

    return v20();
  }
}

uint64_t sub_2225BE3C8()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2225BE510, 0, 0);
  }

  else
  {
    v5 = v3[4];
    v4 = v3[5];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_2225BE510()
{
  v2 = v0[4];
  v1 = v0[5];

  v3 = v0[7];
  v4 = v0[1];

  return v4();
}

uint64_t sub_2225BE57C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2225BE59C, 0, 0);
}

uint64_t sub_2225BE59C()
{
  v1 = v0[2];
  v2 = v1[3];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_1Tm(v1, v2);
  v4 = (*(v3 + 80))(v2, v3);
  v0[4] = v5;
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    v8 = v0[3];
    v9 = v8[6];
    v10 = v8[7];
    __swift_project_boxed_opaque_existential_1Tm(v8 + 3, v9);
    v11 = *(MEMORY[0x277D25A78] + 4);
    v12 = swift_task_alloc();
    v0[5] = v12;
    *v12 = v0;
    v12[1] = sub_2225BE720;

    return MEMORY[0x282184940](v6, v7, v9, v10);
  }

  else
  {
    sub_2225B02BC();
    swift_allocError();
    *v13 = xmmword_2225C7700;
    *(v13 + 16) = 2;
    swift_willThrow();
    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_2225BE720()
{
  v2 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = sub_2225BE898;
  }

  else
  {
    v3 = sub_2225BE834;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2225BE834()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2225BE898()
{
  v1 = v0[4];

  v2 = v0[6];
  v3 = v0[1];

  return v3();
}

uint64_t sub_2225BE8FC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_2225BE91C, 0, 0);
}

uint64_t sub_2225BE91C()
{
  v30 = v0;
  v1 = v0[2];
  v2 = v1[3];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_1Tm(v1, v2);
  v4 = (*(v3 + 32))(v2, v3);
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    v8 = v0[3];
    v9 = objc_opt_self();
    v10 = sub_2225C6B40();
    LOBYTE(v8) = [v9 verifySignatureForPath:v10 composedIdentifier:v8];

    if (v8)
    {

      v11 = v0[1];
      goto LABEL_12;
    }

    if (qword_2813114B8 != -1)
    {
      swift_once();
    }

    v13 = v0[3];
    v14 = sub_2225C6AA0();
    __swift_project_value_buffer(v14, qword_281311550);

    v15 = v13;
    v16 = sub_2225C6A80();
    v17 = sub_2225C6C60();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = v0[3];
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v29[0] = v20;
      *v19 = 136315394;
      v21 = sub_2225AD5C8(v6, v7, v29);

      *(v19 + 4) = v21;
      *(v19 + 12) = 2082;
      v22 = [v18 composedIdentifier];
      v23 = sub_2225C6B50();
      v25 = v24;

      v26 = sub_2225AD5C8(v23, v25, v29);

      *(v19 + 14) = v26;
      _os_log_impl(&dword_222597000, v16, v17, "App at path %s does not match %{public}s", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DBAFE0](v20, -1, -1);
      MEMORY[0x223DBAFE0](v19, -1, -1);
    }

    else
    {
    }

    v12 = 3;
  }

  else
  {
    v12 = 2;
  }

  sub_2225B02BC();
  swift_allocError();
  *v27 = v12;
  *(v27 + 8) = 0;
  *(v27 + 16) = 2;
  swift_willThrow();
  v11 = v0[1];
LABEL_12:

  return v11();
}

unint64_t sub_2225BEC14(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00FC20, &qword_2225C7DA8);
    v3 = sub_2225C6D60();
    v4 = a1 + 32;

    while (1)
    {
      sub_2225B013C(v4, &v13, &qword_27D00FC40, &qword_2225C7DC8);
      v5 = v13;
      v6 = v14;
      result = sub_2225ADB70(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_2225B0204(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_2225BED44(uint64_t a1)
{
  v2 = sub_2225C69E0();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = (MEMORY[0x28223BE20])();
  v7 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v87 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v95 = &v87 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v87 - v13;
  if (qword_2813114B8 != -1)
  {
    swift_once();
  }

  v15 = sub_2225C6AA0();
  v16 = __swift_project_value_buffer(v15, qword_281311550);
  v90 = v3[2];
  v91 = v3 + 2;
  v90(v14, a1, v2);
  v17 = sub_2225C6A80();
  v18 = sub_2225C6C70();
  v19 = os_log_type_enabled(v17, v18);
  v93 = v16;
  v88 = v10;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v87 = v7;
    v21 = v3;
    v22 = v2;
    v23 = v20;
    v24 = swift_slowAlloc();
    v89 = a1;
    v25 = v24;
    v96[0] = v24;
    *v23 = 136315138;
    sub_2225C1404();
    v26 = sub_2225C6D80();
    v28 = v27;
    v92 = v21[1];
    v92(v14, v22);
    v29 = sub_2225AD5C8(v26, v28, v96);

    *(v23 + 4) = v29;
    _os_log_impl(&dword_222597000, v17, v18, "beginning getPreservedAppIDArrayFromPlistOnDiskAt with url: %s !", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    v30 = v25;
    a1 = v89;
    MEMORY[0x223DBAFE0](v30, -1, -1);
    v31 = v23;
    v2 = v22;
    v7 = v87;
    MEMORY[0x223DBAFE0](v31, -1, -1);
  }

  else
  {

    v92 = v3[1];
    v92(v14, v2);
  }

  v32 = v94;
  v33 = sub_2225C63E8();
  v34 = v32;
  v35 = v95;
  if (v32)
  {
    goto LABEL_7;
  }

  v47 = v33;
  if (v33)
  {
    v90(v95, a1, v2);
    v48 = sub_2225C6A80();
    v49 = v2;
    v50 = sub_2225C6C70();
    if (os_log_type_enabled(v48, v50))
    {
      v51 = v35;
      v52 = swift_slowAlloc();
      v93 = v52;
      v94 = swift_slowAlloc();
      v96[0] = v94;
      *v52 = 136315138;
      sub_2225C1404();
      v53 = sub_2225C6D80();
      v55 = v54;
      v92(v51, v49);
      v56 = sub_2225AD5C8(v53, v55, v96);

      v57 = v93;
      *(v93 + 1) = v56;
      v58 = v57;
      _os_log_impl(&dword_222597000, v48, v50, "ReadPlist(from: url) returned successfully with dict from %s", v57, 0xCu);
      v59 = v94;
      __swift_destroy_boxed_opaque_existential_1Tm(v94);
      MEMORY[0x223DBAFE0](v59, -1, -1);
      MEMORY[0x223DBAFE0](v58, -1, -1);

      if (!v47[2])
      {
        goto LABEL_25;
      }
    }

    else
    {

      v92(v35, v49);
      if (!v47[2])
      {
        goto LABEL_25;
      }
    }

    v83 = sub_2225ADB70(0x6576726573657250, 0xED00007370704164);
    if (v84)
    {
      sub_2225B0214(v47[7] + 32 * v83, v96);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00FC08, &qword_2225C7D88);
      if (swift_dynamicCast())
      {
        return v97;
      }

      else
      {
        return 0;
      }
    }

LABEL_25:

    return 0;
  }

  v70 = v88;
  v90(v88, a1, v2);
  v71 = sub_2225C6A80();
  v72 = sub_2225C6C60();
  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v89 = a1;
    v75 = v2;
    v76 = v74;
    v96[0] = v74;
    *v73 = 136315138;
    sub_2225C1404();
    v77 = sub_2225C6D80();
    v78 = v70;
    v80 = v79;
    v92(v78, v75);
    v81 = sub_2225AD5C8(v77, v80, v96);

    *(v73 + 4) = v81;
    _os_log_impl(&dword_222597000, v71, v72, "Could not ReadPList data from URL: %s", v73, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v76);
    v82 = v76;
    v2 = v75;
    a1 = v89;
    MEMORY[0x223DBAFE0](v82, -1, -1);
    MEMORY[0x223DBAFE0](v73, -1, -1);
  }

  else
  {

    v92(v70, v2);
  }

  sub_2225C1B20();
  v34 = swift_allocError();
  *v86 = 1;
  swift_willThrow();
LABEL_7:
  v96[0] = v34;
  v36 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00FBC0, &qword_2225C7788);
  if (swift_dynamicCast())
  {
    MEMORY[0x223DBAEB0](v34);
    v37 = v98;
    v38 = sub_2225C6A80();
    v39 = sub_2225C6C60();
    v40 = os_log_type_enabled(v38, v39);
    LODWORD(v95) = v37;
    if (v40)
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *v41 = 138412290;
      sub_2225C1B20();
      swift_allocError();
      *v43 = v95;
      v44 = _swift_stdlib_bridgeErrorToNSError();
      *(v41 + 4) = v44;
      *v42 = v44;
      _os_log_impl(&dword_222597000, v38, v39, "ReadPlist(from: url) threw an error: %@!", v41, 0xCu);
      sub_2225B01A4(v42, &qword_27D00FBC8, &unk_2225C7C40);
      MEMORY[0x223DBAFE0](v42, -1, -1);
      v45 = v41;
      v37 = v95;
      MEMORY[0x223DBAFE0](v45, -1, -1);
    }

    if (v37 == 2)
    {
      MEMORY[0x223DBAEB0](v96[0]);
      return MEMORY[0x277D84F90];
    }

    v90(v7, a1, v2);
    v60 = sub_2225C6A80();
    v61 = sub_2225C6C60();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = v7;
      v64 = v2;
      v65 = swift_slowAlloc();
      v97 = v65;
      *v62 = 136315138;
      sub_2225C1404();
      v66 = sub_2225C6D80();
      v68 = v67;
      v92(v63, v64);
      v69 = sub_2225AD5C8(v66, v68, &v97);

      *(v62 + 4) = v69;
      _os_log_impl(&dword_222597000, v60, v61, "Could not ReadPList data from URL: %s", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v65);
      MEMORY[0x223DBAFE0](v65, -1, -1);
      MEMORY[0x223DBAFE0](v62, -1, -1);
    }

    else
    {

      v92(v7, v2);
    }

    sub_2225C1B20();
    swift_allocError();
    *v85 = v95;
    swift_willThrow();
  }

  return MEMORY[0x223DBAEB0](v96[0]);
}

uint64_t sub_2225BF688(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x223DBA960](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_2225BCC60(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

NSObject *sub_2225BF720()
{
  v1 = v0;
  v2 = sub_2225C69E0();
  isa = v2[-1].isa;
  v4 = *(isa + 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v33[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_2813114B8 != -1)
  {
    swift_once();
  }

  v7 = sub_2225C6AA0();
  __swift_project_value_buffer(v7, qword_281311550);
  v8 = sub_2225C6A80();
  v9 = sub_2225C6C70();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_222597000, v8, v9, "beginning preservedAppIDs() to fetch AppIDs from disk!", v10, 2u);
    MEMORY[0x223DBAFE0](v10, -1, -1);
  }

  v11 = sub_2225C6A80();
  v12 = sub_2225C6C70();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_222597000, v11, v12, "Attempting to call getPreservedAppIDArrayFromPlistOnDiskAt...", v13, 2u);
    MEMORY[0x223DBAFE0](v13, -1, -1);
  }

  if (qword_27D00FB08 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v2, qword_27D0107D0);
  (*(isa + 2))(v6, v14, v2);
  v15 = sub_2225BED44(v6);
  if (v0)
  {
    (*(isa + 1))(v6, v2);
  }

  else
  {
    v24 = v15;
    (*(isa + 1))(v6, v2);
    if (v24)
    {

      v25 = sub_2225C6A80();
      v26 = sub_2225C6C70();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 134217984;
        *(v27 + 4) = *(v24 + 16);

        _os_log_impl(&dword_222597000, v25, v26, "Successfully retrieved %ld AppIDs from disk! Returning Set...", v27, 0xCu);
        MEMORY[0x223DBAFE0](v27, -1, -1);
      }

      else
      {
      }

      v2 = sub_2225BF688(v24);

      return v2;
    }

    v28 = sub_2225C6A80();
    v29 = sub_2225C6C60();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_222597000, v28, v29, "getArrayFromPlistOnDiskAt returned nil value!", v30, 2u);
      MEMORY[0x223DBAFE0](v30, -1, -1);
    }

    v2 = 0x80000002225C8E50;
    sub_2225B02BC();
    v1 = swift_allocError();
    *v31 = 0xD00000000000002DLL;
    *(v31 + 8) = 0x80000002225C8E50;
    *(v31 + 16) = 0;
    swift_willThrow();
  }

  v34 = v1;
  v16 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00FBC0, &qword_2225C7788);
  if (swift_dynamicCast())
  {
    MEMORY[0x223DBAEB0](v1);
    v17 = v33[7];
    v2 = sub_2225C6A80();
    v18 = sub_2225C6C60();
    if (os_log_type_enabled(v2, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      sub_2225C1B20();
      swift_allocError();
      *v21 = v17;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 4) = v22;
      *v20 = v22;
      _os_log_impl(&dword_222597000, v2, v18, "Failed to getArrayFromPlistOnDiskAt with Plist Error: %@", v19, 0xCu);
      sub_2225B01A4(v20, &qword_27D00FBC8, &unk_2225C7C40);
      MEMORY[0x223DBAFE0](v20, -1, -1);
      MEMORY[0x223DBAFE0](v19, -1, -1);
    }

    sub_2225C1B20();
    swift_allocError();
    *v23 = v17;
    swift_willThrow();
  }

  MEMORY[0x223DBAEB0](v34);
  return v2;
}

uint64_t sub_2225BFC70(uint64_t a1, unint64_t a2)
{
  if (qword_2813114B8 != -1)
  {
    swift_once();
  }

  v5 = sub_2225C6AA0();
  __swift_project_value_buffer(v5, qword_281311550);

  v6 = sub_2225C6A80();
  v7 = sub_2225C6C70();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_2225AD5C8(a1, a2, &v20);
    _os_log_impl(&dword_222597000, v6, v7, " isPreservedAppFor(bundleID: String) called with bundleID: %s!", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x223DBAFE0](v9, -1, -1);
    MEMORY[0x223DBAFE0](v8, -1, -1);
  }

  v10 = sub_2225BF720();
  if (v2)
  {
    v11 = sub_2225C6A80();
    v12 = sub_2225C6C60();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_222597000, v11, v12, "Failed to Fetch AppIDs from Disk!", v13, 2u);
      MEMORY[0x223DBAFE0](v13, -1, -1);
    }

    sub_2225B02BC();
    swift_allocError();
    *v14 = 0xD000000000000021;
    *(v14 + 8) = 0x80000002225C8DF0;
    *(v14 + 16) = 0;
    swift_willThrow();
    MEMORY[0x223DBAEB0](v2);
  }

  else
  {
    LOBYTE(v6) = sub_2225B45F0(a1, a2, v10);

    v15 = sub_2225C6A80();
    v16 = sub_2225C6C70();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v20 = v18;
      *v17 = 67109378;
      *(v17 + 4) = v6 & 1;
      *(v17 + 8) = 2080;
      *(v17 + 10) = sub_2225AD5C8(a1, a2, &v20);
      _os_log_impl(&dword_222597000, v15, v16, "isPreservedAppFor(bundleID: String) returning %{BOOL}d for %s", v17, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      MEMORY[0x223DBAFE0](v18, -1, -1);
      MEMORY[0x223DBAFE0](v17, -1, -1);
    }
  }

  return v6 & 1;
}

void sub_2225BFF94()
{
  v62[1] = *MEMORY[0x277D85DE8];
  v0 = sub_2225C69E0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2813114B8 != -1)
  {
    swift_once();
  }

  v5 = sub_2225C6AA0();
  v60 = __swift_project_value_buffer(v5, qword_281311550);
  v6 = sub_2225C6A80();
  v7 = sub_2225C6C70();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v62[0] = v9;
    *v8 = 136315138;
    if (qword_27D00FB10 != -1)
    {
      swift_once();
    }

    v10 = __swift_project_value_buffer(v0, qword_27D0107E8);
    (*(v1 + 16))(v4, v10, v0);
    v11 = sub_2225C69C0();
    v13 = v12;
    (*(v1 + 8))(v4, v0);
    v14 = sub_2225AD5C8(v11, v13, v62);

    *(v8 + 4) = v14;
    _os_log_impl(&dword_222597000, v6, v7, "Creating File on disk: %s !!", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x223DBAFE0](v9, -1, -1);
    MEMORY[0x223DBAFE0](v8, -1, -1);
  }

  v15 = v4;
  v61 = 1;
  v59 = objc_opt_self();
  v16 = [v59 defaultManager];
  if (qword_27D00FB00 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v0, qword_27D0107B8);
  v58 = *(v1 + 16);
  v58(v15, v17, v0);
  sub_2225C69C0();
  v19 = v1 + 8;
  v18 = *(v1 + 8);
  v18(v15, v0);
  v20 = sub_2225C6B40();

  v21 = [v16 fileExistsAtPath:v20 isDirectory:&v61];

  v57[1] = v19;
  if (v21)
  {
    v22 = v58;
    v23 = v15;
    if ((v61 & 1) == 0)
    {
      v24 = sub_2225C6A80();
      v25 = sub_2225C6C60();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_222597000, v24, v25, "A non directory file with same name already exists at preserved apps directory path!", v26, 2u);
        MEMORY[0x223DBAFE0](v26, -1, -1);
      }

      v27 = 0x80000002225C8D20;
      sub_2225B02BC();
      swift_allocError();
      v29 = 0xD000000000000046;
LABEL_28:
      *v28 = v29;
      *(v28 + 8) = v27;
      *(v28 + 16) = 0;
      swift_willThrow();
      goto LABEL_29;
    }
  }

  else
  {
    v30 = [v59 defaultManager];
    v31 = v17;
    v32 = v58;
    v58(v15, v31, v0);
    v33 = sub_2225C69A0();
    v18(v15, v0);
    v62[0] = 0;
    v34 = [v30 createDirectoryAtURL:v33 withIntermediateDirectories:1 attributes:0 error:v62];

    if (!v34)
    {
      v43 = v62[0];
      v44 = sub_2225C6970();

      swift_willThrow();
      v45 = v44;
      v46 = sub_2225C6A80();
      v47 = sub_2225C6C60();
      MEMORY[0x223DBAEB0](v44);
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v62[0] = v49;
        *v48 = 136315138;
        swift_getErrorValue();
        v50 = sub_2225C6DB0();
        v52 = sub_2225AD5C8(v50, v51, v62);

        *(v48 + 4) = v52;
        _os_log_impl(&dword_222597000, v46, v47, "Error creating Features/Migration/ Directory! Error: %s", v48, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v49);
        MEMORY[0x223DBAFE0](v49, -1, -1);
        MEMORY[0x223DBAFE0](v48, -1, -1);
      }

      sub_2225B02BC();
      swift_allocError();
      *v53 = 0xD00000000000002FLL;
      *(v53 + 8) = 0x80000002225C8CD0;
      *(v53 + 16) = 0;
      swift_willThrow();
      MEMORY[0x223DBAEB0](v44);
      goto LABEL_29;
    }

    v22 = v32;
    v23 = v15;
    v35 = v62[0];
  }

  v36 = [v59 defaultManager];
  if (qword_27D00FB10 != -1)
  {
    swift_once();
  }

  v37 = __swift_project_value_buffer(v0, qword_27D0107E8);
  v22(v23, v37, v0);
  sub_2225C69C0();
  v18(v23, v0);
  v38 = sub_2225C6B40();

  v39 = [v36 createFileAtPath:v38 contents:0 attributes:0];

  v40 = sub_2225C6A80();
  if ((v39 & 1) == 0)
  {
    v54 = sub_2225C6C60();
    if (os_log_type_enabled(v40, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_222597000, v40, v54, "Failed to write UnenrollWithPreservedAppsStatus file to disk!", v55, 2u);
      MEMORY[0x223DBAFE0](v55, -1, -1);
    }

    v27 = 0x80000002225C8D70;
    sub_2225B02BC();
    swift_allocError();
    v29 = 0xD000000000000039;
    goto LABEL_28;
  }

  v41 = sub_2225C6C70();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&dword_222597000, v40, v41, "Successfully wrote UnenrollWithPreservedAppsStatus file to disk!", v42, 2u);
    MEMORY[0x223DBAFE0](v42, -1, -1);
  }

LABEL_29:
  v56 = *MEMORY[0x277D85DE8];
}

void sub_2225C07F8(uint64_t a1)
{
  v93[11] = *MEMORY[0x277D85DE8];
  v2 = sub_2225C69E0();
  v91 = *(v2 - 8);
  v3 = *(v91 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v87 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v82 - v6;
  if (qword_2813114B8 != -1)
  {
    swift_once();
  }

  v8 = sub_2225C6AA0();
  v9 = __swift_project_value_buffer(v8, qword_281311550);

  v90 = v9;
  v10 = sub_2225C6A80();
  v11 = sub_2225C6C70();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v93[0] = v13;
    *v12 = 136315138;
    v14 = MEMORY[0x223DBA900](a1, MEMORY[0x277D837D0]);
    v16 = sub_2225AD5C8(v14, v15, v93);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_222597000, v10, v11, "writeAppIDPlistToDiskWith with stringArray: %s !", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x223DBAFE0](v13, -1, -1);
    MEMORY[0x223DBAFE0](v12, -1, -1);
  }

  v92 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00FC38, &qword_2225C7DC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2225C7C60;
  strcpy((inited + 32), "PreservedApps");
  *(inited + 46) = -4864;
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00FC08, &qword_2225C7D88);
  *(inited + 48) = a1;

  v89 = sub_2225BEC14(inited);
  swift_setDeallocating();
  sub_2225B01A4(inited + 32, &qword_27D00FC40, &qword_2225C7DC8);
  v86 = objc_opt_self();
  v18 = [v86 defaultManager];
  if (qword_27D00FB00 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v2, qword_27D0107B8);
  v20 = v91;
  v21 = v91 + 16;
  v22 = *(v91 + 16);
  v83 = v19;
  v22(v7);
  sub_2225C69C0();
  v23 = *(v20 + 8);
  v23(v7, v2);
  v24 = sub_2225C6B40();

  v25 = [v18 fileExistsAtPath:v24 isDirectory:&v92];

  v91 = v20 + 8;
  v82 = v7;
  v85 = v21;
  v84 = v22;
  if (v25)
  {
    v26 = v2;
    v86 = v23;
    if ((v92 & 1) == 0)
    {

      v27 = sub_2225C6A80();
      v28 = sub_2225C6C60();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_222597000, v27, v28, "A file with same name already exists at preserved apps directory path!", v29, 2u);
        MEMORY[0x223DBAFE0](v29, -1, -1);
      }

      sub_2225B02BC();
      swift_allocError();
      *v30 = 0xD000000000000046;
      *(v30 + 8) = 0x80000002225C8D20;
      *(v30 + 16) = 0;
      swift_willThrow();
      goto LABEL_32;
    }

    goto LABEL_14;
  }

  v31 = [v86 defaultManager];
  (v22)(v7, v83, v2);
  v32 = sub_2225C69A0();
  v26 = v2;
  v23(v7, v2);
  v93[0] = 0;
  v33 = [v31 createDirectoryAtURL:v32 withIntermediateDirectories:1 attributes:0 error:v93];

  if (v33)
  {
    v86 = v23;
    v34 = v93[0];
LABEL_14:

    v35 = sub_2225C6A80();
    v36 = sub_2225C6C70();

    v37 = 0x27D00F000uLL;
    if (os_log_type_enabled(v35, v36))
    {
      v38 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v93[0] = v83;
      *v38 = 136315394;
      v39 = sub_2225C6B30();
      v41 = sub_2225AD5C8(v39, v40, v93);

      *(v38 + 4) = v41;
      *(v38 + 12) = 2080;
      v42 = v26;
      v43 = v84;
      if (qword_27D00FB08 != -1)
      {
        swift_once();
      }

      v44 = __swift_project_value_buffer(v26, qword_27D0107D0);
      v45 = v82;
      v43(v82, v44, v26);
      sub_2225C1404();
      v46 = sub_2225C6D80();
      v48 = v47;
      (v86)(v45, v26);
      v49 = sub_2225AD5C8(v46, v48, v93);

      *(v38 + 14) = v49;
      _os_log_impl(&dword_222597000, v35, v36, "Writing plist: %s to url: %s !", v38, 0x16u);
      v50 = v83;
      swift_arrayDestroy();
      MEMORY[0x223DBAFE0](v50, -1, -1);
      MEMORY[0x223DBAFE0](v38, -1, -1);

      v37 = 0x27D00F000;
    }

    else
    {

      v42 = v26;
      v43 = v84;
    }

    v62 = v87;
    if (*(v37 + 2824) != -1)
    {
      swift_once();
    }

    v63 = __swift_project_value_buffer(v42, qword_27D0107D0);
    v43(v62, v63, v42);
    v64 = v88;
    sub_2225C6630();
    if (v64)
    {
      (v86)(v62, v42);

      v65 = v64;
      v66 = sub_2225C6A80();
      v67 = sub_2225C6C60();

      MEMORY[0x223DBAEB0](v64);
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v93[0] = v70;
        *v68 = 136315394;
        v71 = sub_2225C6B30();
        v73 = v72;

        v74 = sub_2225AD5C8(v71, v73, v93);

        *(v68 + 4) = v74;
        *(v68 + 12) = 2112;
        v75 = v64;
        v76 = _swift_stdlib_bridgeErrorToNSError();
        *(v68 + 14) = v76;
        *v69 = v76;
        _os_log_impl(&dword_222597000, v66, v67, "Failed to write plist: %s, to disk with error: %@ !", v68, 0x16u);
        sub_2225B01A4(v69, &qword_27D00FBC8, &unk_2225C7C40);
        MEMORY[0x223DBAFE0](v69, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm(v70);
        MEMORY[0x223DBAFE0](v70, -1, -1);
        MEMORY[0x223DBAFE0](v68, -1, -1);
      }

      else
      {
      }

      sub_2225B02BC();
      swift_allocError();
      *v80 = 0xD00000000000001ELL;
      *(v80 + 8) = 0x80000002225C8D00;
      *(v80 + 16) = 0;
      swift_willThrow();
      MEMORY[0x223DBAEB0](v64);
    }

    else
    {
      (v86)(v62, v42);

      v77 = sub_2225C6A80();
      v78 = sub_2225C6C70();
      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        *v79 = 0;
        _os_log_impl(&dword_222597000, v77, v78, "returned from WritePlist without error !", v79, 2u);
        MEMORY[0x223DBAFE0](v79, -1, -1);
      }
    }

    goto LABEL_32;
  }

  v51 = v93[0];

  v52 = sub_2225C6970();

  swift_willThrow();
  v53 = v52;
  v54 = sub_2225C6A80();
  v55 = sub_2225C6C60();
  MEMORY[0x223DBAEB0](v52);
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v93[0] = v57;
    *v56 = 136315138;
    swift_getErrorValue();
    v58 = sub_2225C6DB0();
    v60 = sub_2225AD5C8(v58, v59, v93);

    *(v56 + 4) = v60;
    _os_log_impl(&dword_222597000, v54, v55, "Error creating Features/Migration/ Directory! Error: %s", v56, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v57);
    MEMORY[0x223DBAFE0](v57, -1, -1);
    MEMORY[0x223DBAFE0](v56, -1, -1);
  }

  sub_2225B02BC();
  swift_allocError();
  *v61 = 0xD00000000000002FLL;
  *(v61 + 8) = 0x80000002225C8CD0;
  *(v61 + 16) = 0;
  swift_willThrow();
  MEMORY[0x223DBAEB0](v52);
LABEL_32:
  v81 = *MEMORY[0x277D85DE8];
}

unint64_t sub_2225C1404()
{
  result = qword_27D00FC48;
  if (!qword_27D00FC48)
  {
    sub_2225C69E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D00FC48);
  }

  return result;
}

id sub_2225C145C()
{
  v30[1] = *MEMORY[0x277D85DE8];
  v0 = sub_2225C69E0();
  v1 = *(v0 - 8);
  v2 = v1[8];
  MEMORY[0x28223BE20](v0);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = objc_opt_self();
  v5 = [v29 defaultManager];
  if (qword_27D00FB10 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_27D0107E8);
  v28 = v1[2];
  v28(v4, v6, v0);
  sub_2225C69C0();
  v27 = v1[1];
  v27(v4, v0);
  v7 = sub_2225C6B40();

  v8 = [v5 fileExistsAtPath_];

  if (v8)
  {
    v9 = [v29 defaultManager];
    v28(v4, v6, v0);
    v10 = sub_2225C69A0();
    v27(v4, v0);
    v30[0] = 0;
    v11 = [v9 removeItemAtURL:v10 error:v30];

    if (v11)
    {
      v12 = v30[0];
    }

    else
    {
      v13 = v30[0];
      v14 = sub_2225C6970();

      swift_willThrow();
      if (qword_2813114B8 != -1)
      {
        swift_once();
      }

      v15 = sub_2225C6AA0();
      __swift_project_value_buffer(v15, qword_281311550);
      v16 = v14;
      v17 = sub_2225C6A80();
      v18 = sub_2225C6C60();
      MEMORY[0x223DBAEB0](v14);
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v30[0] = v20;
        *v19 = 136315138;
        swift_getErrorValue();
        v21 = sub_2225C6DB0();
        v23 = sub_2225AD5C8(v21, v22, v30);

        *(v19 + 4) = v23;
        _os_log_impl(&dword_222597000, v17, v18, "Error removing plist from Disk! Error: %s", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v20);
        MEMORY[0x223DBAFE0](v20, -1, -1);
        MEMORY[0x223DBAFE0](v19, -1, -1);
      }

      sub_2225B02BC();
      swift_allocError();
      *v24 = 0xD00000000000002ALL;
      *(v24 + 8) = 0x80000002225C8E20;
      *(v24 + 16) = 0;
      swift_willThrow();
      MEMORY[0x223DBAEB0](v14);
    }
  }

  v25 = *MEMORY[0x277D85DE8];
  return v8;
}

void sub_2225C187C()
{
  if (qword_2813114B8 != -1)
  {
    swift_once();
  }

  v1 = sub_2225C6AA0();
  __swift_project_value_buffer(v1, qword_281311550);
  v2 = sub_2225C6A80();
  v3 = sub_2225C6C70();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_222597000, v2, v3, "Clearing Preserved Apps list!", v4, 2u);
    MEMORY[0x223DBAFE0](v4, -1, -1);
  }

  sub_2225C07F8(MEMORY[0x277D84F90]);
  if (v0)
  {
    v5 = v0;
    v6 = sub_2225C6A80();
    v7 = sub_2225C6C60();
    MEMORY[0x223DBAEB0](v0);
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      v10 = v0;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v11;
      *v9 = v11;
      _os_log_impl(&dword_222597000, v6, v7, "writeAppIDPlistToDiskWith with empty array failed with error: %@!", v8, 0xCu);
      sub_2225B01A4(v9, &qword_27D00FBC8, &unk_2225C7C40);
      MEMORY[0x223DBAFE0](v9, -1, -1);
      MEMORY[0x223DBAFE0](v8, -1, -1);
    }

    swift_willThrow();
  }

  else
  {
    v12 = sub_2225C6A80();
    v13 = sub_2225C6C70();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_222597000, v12, v13, "Successfully cleared preserved apps list", v14, 2u);
      MEMORY[0x223DBAFE0](v14, -1, -1);
    }
  }
}

uint64_t sub_2225C1AC8(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_2225C6D90() & 1;
  }
}

unint64_t sub_2225C1B20()
{
  result = qword_27D00FC50;
  if (!qword_27D00FC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D00FC50);
  }

  return result;
}

uint64_t sub_2225C1B74(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_2225C1BD0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 18))
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

uint64_t sub_2225C1C18(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t dispatch thunk of DMCAppsPreservable.preserveApps()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2225ACB0C;

  return v9(a1, a2);
}

uint64_t dispatch thunk of DMCAppsPreservable.removeUnusedPreservedApps()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 32);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2225B04A8;

  return v9(a1, a2);
}

uint64_t _s7DMCApps0A17RemoveStateResultO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = *(a2 + 8);
  if (!v3)
  {
    if (v5)
    {
      goto LABEL_8;
    }

    sub_2225AFF20(*a1, 0);
    v7 = v4;
    v8 = 0;
LABEL_15:
    sub_2225AFF20(v7, v8);
    return 1;
  }

  if (v3 != 1)
  {
    if (v5 < 2)
    {
      goto LABEL_8;
    }

    v9 = *a1;
    if (v2 != v4 || v3 != v5)
    {
      v11 = sub_2225C6D90();
      sub_2225AFF0C(v4, v5);
      sub_2225AFF0C(v2, v3);
      sub_2225AFF20(v2, v3);
      sub_2225AFF20(v4, v5);
      return v11 & 1;
    }

    sub_2225AFF0C(v9, v3);
    sub_2225AFF0C(v2, v3);
    sub_2225AFF20(v2, v3);
    v7 = v2;
    v8 = v3;
    goto LABEL_15;
  }

  if (v5 != 1)
  {
LABEL_8:
    sub_2225AFF0C(*a2, *(a2 + 8));
    sub_2225AFF0C(v2, v3);
    sub_2225AFF20(v2, v3);
    sub_2225AFF20(v4, v5);
    return 0;
  }

  v6 = 1;
  sub_2225AFF20(*a1, 1uLL);
  sub_2225AFF20(v4, 1uLL);
  return v6;
}

uint64_t _s7DMCApps0A18InstallStateResultO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = *(a2 + 8);
  if (v3 <= 3)
  {
    if (v3 > 1)
    {
      if (v3 == 2)
      {
        if (v5 == 2)
        {
          sub_2225AFE34(*a1, 2uLL);
          v6 = v4;
          v7 = 2;
          goto LABEL_34;
        }
      }

      else if (v5 == 3)
      {
        sub_2225AFE34(*a1, 3uLL);
        v6 = v4;
        v7 = 3;
        goto LABEL_34;
      }

      goto LABEL_30;
    }

    if (!v3)
    {
      if (!v5)
      {
        sub_2225AFE34(*a1, 0);
        v6 = v4;
        v7 = 0;
        goto LABEL_34;
      }

      goto LABEL_30;
    }

    if (v3 == 1)
    {
      if (v5 == 1)
      {
        v8 = 1;
        sub_2225AFE34(*a1, 1uLL);
        sub_2225AFE34(v4, 1uLL);
        return v8;
      }

LABEL_30:
      sub_2225AFE20(*a2, *(a2 + 8));
      sub_2225AFE20(v2, v3);
      sub_2225AFE34(v2, v3);
      sub_2225AFE34(v4, v5);
      return 0;
    }
  }

  else
  {
    if (v3 <= 5)
    {
      if (v3 == 4)
      {
        if (v5 == 4)
        {
          sub_2225AFE34(*a1, 4uLL);
          v6 = v4;
          v7 = 4;
          goto LABEL_34;
        }
      }

      else if (v5 == 5)
      {
        sub_2225AFE34(*a1, 5uLL);
        v6 = v4;
        v7 = 5;
        goto LABEL_34;
      }

      goto LABEL_30;
    }

    switch(v3)
    {
      case 6:
        if (v5 == 6)
        {
          sub_2225AFE34(*a1, 6uLL);
          v6 = v4;
          v7 = 6;
          goto LABEL_34;
        }

        goto LABEL_30;
      case 7:
        if (v5 == 7)
        {
          sub_2225AFE34(*a1, 7uLL);
          v6 = v4;
          v7 = 7;
          goto LABEL_34;
        }

        goto LABEL_30;
      case 8:
        if (v5 == 8)
        {
          sub_2225AFE34(*a1, 8uLL);
          v6 = v4;
          v7 = 8;
LABEL_34:
          sub_2225AFE34(v6, v7);
          return 1;
        }

        goto LABEL_30;
    }
  }

  if (v5 < 9)
  {
    goto LABEL_30;
  }

  if (v2 == v4 && v3 == v5)
  {
    sub_2225AFE20(*a1, v3);
    sub_2225AFE20(v2, v3);
    sub_2225AFE34(v2, v3);
    v6 = v2;
    v7 = v3;
    goto LABEL_34;
  }

  v10 = *a1;
  v11 = sub_2225C6D90();
  sub_2225AFE20(v4, v5);
  sub_2225AFE20(v2, v3);
  sub_2225AFE34(v2, v3);
  sub_2225AFE34(v4, v5);
  return v11 & 1;
}

uint64_t _s7DMCApps0A29OtherAppNowPresentStateResultO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = *(a2 + 8);
  if (v3 > 2)
  {
    switch(v3)
    {
      case 3:
        if (v5 == 3)
        {
          sub_2225AFF48(*a1, 3uLL);
          v6 = v4;
          v7 = 3;
          goto LABEL_24;
        }

        goto LABEL_25;
      case 4:
        if (v5 == 4)
        {
          sub_2225AFF48(*a1, 4uLL);
          v6 = v4;
          v7 = 4;
          goto LABEL_24;
        }

        goto LABEL_25;
      case 5:
        if (v5 == 5)
        {
          sub_2225AFF48(*a1, 5uLL);
          v6 = v4;
          v7 = 5;
          goto LABEL_24;
        }

LABEL_25:
        sub_2225AFF34(*a2, *(a2 + 8));
        sub_2225AFF34(v2, v3);
        sub_2225AFF48(v2, v3);
        sub_2225AFF48(v4, v5);
        return 0;
    }
  }

  else
  {
    switch(v3)
    {
      case 0:
        if (!v5)
        {
          sub_2225AFF48(*a1, 0);
          v6 = v4;
          v7 = 0;
          goto LABEL_24;
        }

        goto LABEL_25;
      case 1:
        if (v5 == 1)
        {
          v8 = 1;
          sub_2225AFF48(*a1, 1uLL);
          sub_2225AFF48(v4, 1uLL);
          return v8;
        }

        goto LABEL_25;
      case 2:
        if (v5 == 2)
        {
          sub_2225AFF48(*a1, 2uLL);
          v6 = v4;
          v7 = 2;
LABEL_24:
          sub_2225AFF48(v6, v7);
          return 1;
        }

        goto LABEL_25;
    }
  }

  if (v5 < 6)
  {
    goto LABEL_25;
  }

  if (v2 == v4 && v3 == v5)
  {
    sub_2225AFF34(*a1, v3);
    sub_2225AFF34(v2, v3);
    sub_2225AFF48(v2, v3);
    v6 = v2;
    v7 = v3;
    goto LABEL_24;
  }

  v10 = *a1;
  v11 = sub_2225C6D90();
  sub_2225AFF34(v4, v5);
  sub_2225AFF34(v2, v3);
  sub_2225AFF48(v2, v3);
  sub_2225AFF48(v4, v5);
  return v11 & 1;
}

uint64_t sub_2225C2618(uint64_t *a1, uint64_t *a2, void (*a3)(uint64_t, uint64_t), void (*a4)(uint64_t, uint64_t))
{
  v5 = *a1;
  v6 = a1[1];
  v7 = *a2;
  v8 = a2[1];
  switch(v6)
  {
    case 0:
      if (!v8)
      {
        a3(*a1, 0);
        v9 = v7;
        v10 = 0;
        goto LABEL_15;
      }

      goto LABEL_11;
    case 1:
      if (v8 == 1)
      {
        v11 = 1;
        a3(*a1, 1);
        a3(v7, 1);
        return v11;
      }

      goto LABEL_11;
    case 2:
      if (v8 == 2)
      {
        a3(*a1, 2);
        v9 = v7;
        v10 = 2;
LABEL_15:
        a3(v9, v10);
        return 1;
      }

      goto LABEL_11;
  }

  if (v8 < 3)
  {
LABEL_11:
    a4(*a2, a2[1]);
    a4(v5, v6);
    a3(v5, v6);
    a3(v7, v8);
    return 0;
  }

  if (v5 == v7 && v6 == v8)
  {
    a4(*a1, v6);
    a4(v5, v6);
    a3(v5, v6);
    v9 = v5;
    v10 = v6;
    goto LABEL_15;
  }

  v15 = *a1;
  v17 = sub_2225C6D90();
  a4(v7, v8);
  a4(v5, v6);
  a3(v5, v6);
  a3(v7, v8);
  return v17 & 1;
}

uint64_t sub_2225C27F8(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (!v4)
  {
    if (!v5)
    {
      swift_bridgeObjectRelease_n();
      return 1;
    }

    return 0;
  }

  if (!v5)
  {
    return 0;
  }

  if (*a1 == *a2 && v4 == v5)
  {
    return 1;
  }

  return sub_2225C6D90();
}

uint64_t dispatch thunk of DMCAppStateReporting.willInstallApplication(_:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_2225C4468;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of DMCAppStateReporting.didInstallApplication(_:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 16);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_2225C2AD0;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_2225C2AD0(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t dispatch thunk of DMCAppStateReporting.updateApp(_:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 24);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_2225C4468;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of DMCAppStateReporting2.isManaged(bundleID:persona:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 16);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_2225C4468;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of DMCAppStateReporting3.shouldPromptForInstallConsent(for:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 16);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_2225C2F74;

  return (v13)(a1, a2 & 1, a3, a4);
}

uint64_t sub_2225C2F74(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t dispatch thunk of DMCAppStateReporting5.configurationApplied(_:appAlreadyPresent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 16);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_2225B04A8;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of DMCAppStateReporting5.configurationRemoved(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 24);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_2225B04A8;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of DMCAppStateReporting5.optionalAppRequested(_:appAlreadyPresent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 32);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_2225B04A8;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of DMCAppStateReporting5.otherAppNowPresent(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 40);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_2225B04A8;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of DMCAppStateReporting5.canTakeOverManagementOfExistingApp(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 48);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_2225B04A8;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of DMCAppStateReporting5.willDownload(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 56);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_2225B04A8;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of DMCAppStateReporting5.willInstall(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 64);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_2225B04A8;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of DMCAppStateReporting5.didInstall(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 72);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_2225ACB0C;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of DMCAppStateReporting5.willUpdate(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 80);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_2225B04A8;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of DMCAppStateReporting5.didUpdate(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 88);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_2225B04A8;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of DMCAppStateReporting5.didUninstall(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 96);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_2225B04A8;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of DMCAppStateReporting5.didRemoveConfiguration(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 104);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_2225B04A8;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of DMCAppStateReporting5.installFailed(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 112);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2225B04A8;

  return v11(a1, a2, a3);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2225C4048(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF6 && *(a1 + 16))
  {
    return (*a1 + 2147483639);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 8;
  if (v4 >= 0xA)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2225C40A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF7)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483639;
    if (a3 >= 0x7FFFFFF7)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF7)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 8;
    }
  }

  return result;
}

uint64_t sub_2225C4100(uint64_t a1, unsigned int a2)
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

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2225C4154(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_2225C41D0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF9 && *(a1 + 16))
  {
    return (*a1 + 2147483642);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 5;
  if (v4 >= 7)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2225C4228(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFA)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483642;
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 5;
    }
  }

  return result;
}

uint64_t sub_2225C4288(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2225C42E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_2225C43A4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2225C43F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

id sub_2225C44B8(uint64_t a1, uint64_t a2, char a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = sub_2225C6B40();

  v11[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v11];

  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    sub_2225C6970();

    swift_willThrow();
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

id sub_2225C4594(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = objc_opt_self();
  v7 = sub_2225C6B40();
  v8 = [v6 codeIdentityForPath_];

  result = v8;
  if (v8)
  {
    return result;
  }

  sub_2225C1B74(0, &qword_27D00FC88, 0x277D03500);
  v10 = sub_2225C6C90();
  result = 0;
  if ((v10 & 1) == 0)
  {
    return result;
  }

  v11 = [a3 bundleIdentifier];
  if (!v11)
  {
    sub_2225C6C80();
LABEL_12:

    return 0;
  }

  v12 = v11;
  sub_2225C6B50();
  v14 = v13;

  sub_2225C6C80();
  if (!v14 || !v15)
  {
    goto LABEL_12;
  }

  if (qword_2813114B8 != -1)
  {
    swift_once();
  }

  v16 = sub_2225C6AA0();
  __swift_project_value_buffer(v16, qword_281311550);

  v17 = sub_2225C6A80();
  v18 = sub_2225C6C40();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v26 = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_2225AD5C8(a1, a2, &v26);
    _os_log_impl(&dword_222597000, v17, v18, "Overriding code identity for bundle: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x223DBAFE0](v20, -1, -1);
    MEMORY[0x223DBAFE0](v19, -1, -1);
  }

  v21 = objc_allocWithZone(MEMORY[0x277D034C8]);
  v22 = sub_2225C6B40();

  v23 = sub_2225C6B40();

  v24 = sub_2225C6B40();
  v25 = [v21 initWithCodeSigningID:v22 teamID:v23 path:v24];

  return v25;
}

void sub_2225C4850(void *a1)
{
  v48 = sub_2225C69E0();
  v2 = *(v48 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v48);
  v47 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = MEMORY[0x277D84F90];
  v5 = [a1 applicationExtensionRecords];
  v6 = sub_2225C1B74(0, &qword_27D00FC78, 0x277CC1E50);
  sub_2225C5CD4();
  v44 = v6;
  v7 = sub_2225C6C00();

  if ((v7 & 0xC000000000000001) != 0)
  {
    sub_2225C6CE0();
    sub_2225C6C30();
    v7 = v52;
    v9 = v53;
    v10 = v54;
    v11 = v55;
    v12 = v56;
  }

  else
  {
    v11 = 0;
    v13 = -1 << *(v7 + 32);
    v9 = v7 + 56;
    v10 = ~v13;
    v14 = -v13;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v12 = v15 & *(v7 + 56);
  }

  v40 = v10;
  v16 = (v10 + 64) >> 6;
  v46 = (v2 + 8);
  v41 = MEMORY[0x277D84F90];
  *&v8 = 136315138;
  v42 = v8;
  v43 = v9;
  v45 = v16;
LABEL_8:
  v17 = v11;
  while (v7 < 0)
  {
    v22 = sub_2225C6CF0();
    if (!v22 || (v49 = v22, swift_dynamicCast(), v21 = v50, v11 = v17, v20 = v12, !v50))
    {
LABEL_28:
      sub_2225BE154();
      return;
    }

LABEL_20:
    v23 = [v21 URL];
    v24 = v47;
    sub_2225C69B0();

    v25 = sub_2225C69C0();
    v27 = v26;
    (*v46)(v24, v48);
    v28 = sub_2225C4594(v25, v27, v21);
    if (v28)
    {
      v37 = v28;

      v38 = v37;
      MEMORY[0x223DBA8E0]();
      if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v39 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_2225C6BD0();
      }

      sub_2225C6BF0();

      v41 = v51;
      v12 = v20;
      goto LABEL_8;
    }

    if (qword_2813114B8 != -1)
    {
      swift_once();
    }

    v29 = sub_2225C6AA0();
    __swift_project_value_buffer(v29, qword_281311550);

    v30 = sub_2225C6A80();
    v31 = sub_2225C6C60();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = v7;
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v50 = v34;
      *v33 = v42;
      v35 = sub_2225AD5C8(v25, v27, &v50);

      *(v33 + 4) = v35;
      _os_log_impl(&dword_222597000, v30, v31, "Failed to get code identity for extension %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      MEMORY[0x223DBAFE0](v34, -1, -1);
      v36 = v33;
      v7 = v32;
      v9 = v43;
      MEMORY[0x223DBAFE0](v36, -1, -1);
    }

    else
    {
    }

    v17 = v11;
    v12 = v20;
    v16 = v45;
  }

  v18 = v17;
  v19 = v12;
  v11 = v17;
  if (v12)
  {
LABEL_16:
    v20 = (v19 - 1) & v19;
    v21 = *(*(v7 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v19)))));
    if (!v21)
    {
      goto LABEL_28;
    }

    goto LABEL_20;
  }

  while (1)
  {
    v11 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v11 >= v16)
    {
      goto LABEL_28;
    }

    v19 = *(v9 + 8 * v11);
    ++v18;
    if (v19)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

id sub_2225C4D04(void *a1)
{
  v2 = sub_2225C69E0();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00FC68, &qword_2225C8588);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v128 = (&v122 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v122 - v9;
  MEMORY[0x28223BE20](v8);
  v129 = &v122 - v11;
  v12 = sub_2225C6AF0();
  v131 = *(v12 - 8);
  isa = v131[8].isa;
  v14 = MEMORY[0x28223BE20](v12);
  v126 = &v122 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v125 = &v122 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v124 = &v122 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v127 = &v122 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  MEMORY[0x28223BE20](v22);
  v24 = &v122 - v23;
  v25 = a1[3];
  v26 = a1[5];
  __swift_project_boxed_opaque_existential_1Tm(a1, v25);
  v27 = (*(v26 + 32))(v25, v26);
  if (v28)
  {
    MEMORY[0x223DBA840](v27);
    sub_2225C6AC0();
    v29 = a1[3];
    v30 = a1[5];
    __swift_project_boxed_opaque_existential_1Tm(a1, v29);
    v31 = (*(v30 + 8))(v29, v30);
    v33 = v32;
    v34 = objc_allocWithZone(MEMORY[0x277CC1E70]);
    v35 = v130;
    v36 = sub_2225C44B8(v31, v33, 1);
    if (v35)
    {
      MEMORY[0x223DBAEB0](v35);
      v37 = v12;
LABEL_4:
      if (qword_2813114B8 != -1)
      {
        swift_once();
      }

      v38 = sub_2225C6AA0();
      __swift_project_value_buffer(v38, qword_281311550);
      sub_2225B0314(a1, v132);
      v39 = sub_2225C6A80();
      v40 = sub_2225C6C60();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v135 = v42;
        *v41 = 136315138;
        v43 = v133;
        v44 = v24;
        v45 = v134;
        __swift_project_boxed_opaque_existential_1Tm(v132, v133);
        v46 = *(v45 + 8);
        v47 = v45;
        v24 = v44;
        v48 = v46(v43, v47);
        v50 = v49;
        __swift_destroy_boxed_opaque_existential_1Tm(v132);
        v51 = sub_2225AD5C8(v48, v50, &v135);

        *(v41 + 4) = v51;
        _os_log_impl(&dword_222597000, v39, v40, "Failed to get record for app %s", v41, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v42);
        MEMORY[0x223DBAFE0](v42, -1, -1);
        MEMORY[0x223DBAFE0](v41, -1, -1);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1Tm(v132);
      }

      v56 = 0x80000002225C8EA0;
      sub_2225B02BC();
      swift_allocError();
      *v58 = 0xD000000000000014;
      *(v58 + 8) = 0x80000002225C8EA0;
      *(v58 + 16) = 0;
      swift_willThrow();
      (v131[1].isa)(v24, v37);
      return v56;
    }

    v37 = v12;
    if (!v36)
    {
      goto LABEL_4;
    }

    v130 = v24;
    v123 = v36;
    v60 = [v123 URL];
    sub_2225C69B0();

    sub_2225C6AB0();
    v61 = v131;
    v62 = v131[6].isa;
    v63 = v131 + 7;
    if ((v62)(v10, 1, v37) == 1)
    {
      sub_2225B01A4(v10, &qword_27D00FC68, &qword_2225C8588);
      v64 = 1;
      v65 = v129;
    }

    else
    {
      v65 = v129;
      sub_2225C6AC0();
      v64 = 0;
    }

    v66 = v128;
    (v63->isa)(v65, v64, 1, v37);
    sub_2225C5C0C(v65, v66);
    if ((v62)(v66, 1, v37) == 1)
    {
      sub_2225B01A4(v66, &qword_27D00FC68, &qword_2225C8588);
      if (qword_2813114B8 != -1)
      {
        swift_once();
      }

      v67 = sub_2225C6AA0();
      __swift_project_value_buffer(v67, qword_281311550);
      v68 = sub_2225C6A80();
      v69 = sub_2225C6C60();
      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        *v70 = 0;
        _os_log_impl(&dword_222597000, v68, v69, "Missing app record path", v70, 2u);
        MEMORY[0x223DBAFE0](v70, -1, -1);
      }

      sub_2225B02BC();
      swift_allocError();
      *v71 = 0xD000000000000017;
      *(v71 + 8) = 0x80000002225C8EC0;
      *(v71 + 16) = 0;
      swift_willThrow();
      v56 = v123;

      sub_2225B01A4(v65, &qword_27D00FC68, &qword_2225C8588);
      (v61[1].isa)(v130, v37);
    }

    else
    {
      v72 = v127;
      (v61[4].isa)(v127, v66, v37);
      if (sub_2225C6AD0())
      {
        v73 = sub_2225C6AE0();
        v75 = sub_2225C4594(v73, v74, v123);

        if (v75)
        {
          if (qword_2813114B8 != -1)
          {
            swift_once();
          }

          v76 = sub_2225C6AA0();
          __swift_project_value_buffer(v76, qword_281311550);
          v56 = v75;
          v77 = sub_2225C6A80();
          v78 = sub_2225C6C50();

          if (os_log_type_enabled(v77, v78))
          {
            v79 = swift_slowAlloc();
            v80 = swift_slowAlloc();
            *v79 = 138412290;
            *(v79 + 4) = v56;
            *v80 = v75;
            v81 = v56;
            _os_log_impl(&dword_222597000, v77, v78, "Got code identity %@", v79, 0xCu);
            sub_2225B01A4(v80, &qword_27D00FBC8, &unk_2225C7C40);
            MEMORY[0x223DBAFE0](v80, -1, -1);
            v82 = v79;
            v72 = v127;
            MEMORY[0x223DBAFE0](v82, -1, -1);
          }

          v83 = v123;
          sub_2225C4850(v123);

          v84 = v131[1].isa;
          (v84)(v72, v37);
          sub_2225B01A4(v65, &qword_27D00FC68, &qword_2225C8588);
          (v84)(v130, v37);
        }

        else
        {
          if (qword_2813114B8 != -1)
          {
            swift_once();
          }

          v108 = sub_2225C6AA0();
          __swift_project_value_buffer(v108, qword_281311550);
          v109 = v124;
          (v61[2].isa)(v124, v130, v37);
          v110 = sub_2225C6A80();
          v111 = v61;
          v112 = sub_2225C6C60();
          if (os_log_type_enabled(v110, v112))
          {
            v113 = swift_slowAlloc();
            v128 = swift_slowAlloc();
            v132[0] = v128;
            *v113 = 136315138;
            sub_2225C5C7C();
            v114 = sub_2225C6D80();
            v115 = v109;
            v117 = v116;
            v118 = v111[1].isa;
            v118(v115, v37);
            v119 = sub_2225AD5C8(v114, v117, v132);

            *(v113 + 4) = v119;
            _os_log_impl(&dword_222597000, v110, v112, "Failed to get code identity for app %s", v113, 0xCu);
            v120 = v128;
            __swift_destroy_boxed_opaque_existential_1Tm(v128);
            MEMORY[0x223DBAFE0](v120, -1, -1);
            MEMORY[0x223DBAFE0](v113, -1, -1);
          }

          else
          {

            v118 = v111[1].isa;
            v118(v109, v37);
          }

          sub_2225B02BC();
          swift_allocError();
          *v121 = 0xD00000000000001FLL;
          *(v121 + 8) = 0x80000002225C8F00;
          *(v121 + 16) = 0;
          swift_willThrow();
          v56 = v123;

          v118(v127, v37);
          sub_2225B01A4(v129, &qword_27D00FC68, &qword_2225C8588);
          v118(v130, v37);
        }
      }

      else
      {
        if (qword_2813114B8 != -1)
        {
          swift_once();
        }

        v85 = sub_2225C6AA0();
        __swift_project_value_buffer(v85, qword_281311550);
        v86 = v61[2].isa;
        v87 = v125;
        v86(v125, v130, v37);
        v88 = v126;
        v86(v126, v72, v37);
        v89 = sub_2225C6A80();
        v90 = sub_2225C6C60();
        if (os_log_type_enabled(v89, v90))
        {
          v91 = swift_slowAlloc();
          v128 = swift_slowAlloc();
          v132[0] = v128;
          *v91 = 136315394;
          sub_2225C5C7C();
          LODWORD(v124) = v90;
          v92 = sub_2225C6D80();
          v94 = v93;
          v95 = v87;
          v96 = v61[1].isa;
          v96(v95, v37);
          v97 = sub_2225AD5C8(v92, v94, v132);
          v65 = v129;

          *(v91 + 4) = v97;
          *(v91 + 12) = 2080;
          v98 = v126;
          v99 = sub_2225C6D80();
          v131 = v89;
          v100 = v99;
          v102 = v101;
          v96(v98, v37);
          v103 = sub_2225AD5C8(v100, v102, v132);
          v72 = v127;

          *(v91 + 14) = v103;
          v104 = v131;
          _os_log_impl(&dword_222597000, v131, v124, "Path %s does not match record path %s", v91, 0x16u);
          v105 = v128;
          swift_arrayDestroy();
          MEMORY[0x223DBAFE0](v105, -1, -1);
          MEMORY[0x223DBAFE0](v91, -1, -1);
        }

        else
        {

          v106 = v87;
          v96 = v61[1].isa;
          v96(v88, v37);
          v96(v106, v37);
        }

        sub_2225B02BC();
        swift_allocError();
        *v107 = 0xD00000000000001CLL;
        *(v107 + 8) = 0x80000002225C8EE0;
        *(v107 + 16) = 0;
        swift_willThrow();
        v56 = v123;

        v96(v72, v37);
        sub_2225B01A4(v65, &qword_27D00FC68, &qword_2225C8588);
        v96(v130, v37);
      }
    }
  }

  else
  {
    if (qword_2813114B8 != -1)
    {
      swift_once();
    }

    v52 = sub_2225C6AA0();
    __swift_project_value_buffer(v52, qword_281311550);
    v53 = sub_2225C6A80();
    v54 = sub_2225C6C60();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_222597000, v53, v54, "Missing app path", v55, 2u);
      MEMORY[0x223DBAFE0](v55, -1, -1);
    }

    v56 = 0x80000002225C8E80;
    sub_2225B02BC();
    swift_allocError();
    *v57 = 0xD000000000000010;
    *(v57 + 8) = 0x80000002225C8E80;
    *(v57 + 16) = 0;
    swift_willThrow();
  }

  return v56;
}

uint64_t sub_2225C5C0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00FC68, &qword_2225C8588);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2225C5C7C()
{
  result = qword_27D00FC70;
  if (!qword_27D00FC70)
  {
    sub_2225C6AF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D00FC70);
  }

  return result;
}

unint64_t sub_2225C5CD4()
{
  result = qword_27D00FC80;
  if (!qword_27D00FC80)
  {
    sub_2225C1B74(255, &qword_27D00FC78, 0x277CC1E50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D00FC80);
  }

  return result;
}

uint64_t sub_2225C5D78(uint64_t a1, uint64_t *a2)
{
  v3 = sub_2225C6AA0();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_2225C6A90();
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

id sub_2225C5E54()
{
  v0 = sub_2225C69E0();
  __swift_allocate_value_buffer(v0, qword_27D0107B8);
  __swift_project_value_buffer(v0, qword_27D0107B8);
  result = MDMMigrationDirectory();
  if (result)
  {
    v2 = result;
    sub_2225C6B50();

    sub_2225C6990();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2225C5EF0()
{
  v0 = sub_2225C6980();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2225C69E0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v8, qword_27D0107D0);
  __swift_project_value_buffer(v5, qword_27D0107D0);
  if (qword_27D00FB00 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v5, qword_27D0107B8);
  (*(v6 + 16))(v10, v11, v5);
  v13[0] = 0xD000000000000013;
  v13[1] = 0x80000002225C8F60;
  (*(v1 + 104))(v4, *MEMORY[0x277CC91D8], v0);
  sub_2225C6394();
  sub_2225C69D0();
  (*(v1 + 8))(v4, v0);
  return (*(v6 + 8))(v10, v5);
}

uint64_t sub_2225C6130()
{
  v0 = sub_2225C6980();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2225C69E0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v8, qword_27D0107E8);
  __swift_project_value_buffer(v5, qword_27D0107E8);
  if (qword_27D00FB00 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v5, qword_27D0107B8);
  (*(v6 + 16))(v10, v11, v5);
  v13[0] = 0xD000000000000021;
  v13[1] = 0x80000002225C8F80;
  (*(v1 + 104))(v4, *MEMORY[0x277CC91D8], v0);
  sub_2225C6394();
  sub_2225C69D0();
  (*(v1 + 8))(v4, v0);
  return (*(v6 + 8))(v10, v5);
}

unint64_t sub_2225C6394()
{
  result = qword_27D00FC90;
  if (!qword_27D00FC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D00FC90);
  }

  return result;
}

id sub_2225C63E8()
{
  v13[4] = *MEMORY[0x277D85DE8];
  v0 = objc_allocWithZone(MEMORY[0x277CBEAE0]);
  v1 = sub_2225C69A0();
  v2 = [v0 initWithURL_];

  if (!v2)
  {
    sub_2225C1B20();
    swift_allocError();
    *v6 = 0;
    swift_willThrow();
    goto LABEL_9;
  }

  v3 = v2;
  [v3 open];
  sub_2225BEC14(MEMORY[0x277D84F90]);

  v13[0] = 0;
  v4 = [objc_opt_self() propertyListWithStream:v3 options:0 format:0 error:v13];
  if (!v4)
  {
    v7 = v13[0];
    v0 = sub_2225C6970();

    swift_willThrow();
    sub_2225C1B20();
    swift_allocError();
    *v8 = 1;
    swift_willThrow();
    MEMORY[0x223DBAEB0](v0);
LABEL_8:
    [v3 close];

    goto LABEL_9;
  }

  v0 = v4;
  v5 = v13[0];
  sub_2225C6CC0();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00FB40, &qword_2225C7D90);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_2225C1B20();
    swift_allocError();
    *v9 = 1;
    swift_willThrow();
    goto LABEL_8;
  }

  v0 = v12;
  [v3 close];

LABEL_9:
  v10 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t sub_2225C6630()
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = objc_opt_self();
  v2 = sub_2225C6B10();
  v16 = 0;
  v3 = [v1 dataWithPropertyList:v2 format:100 options:0 error:&v16];

  v4 = v16;
  if (v3)
  {
    v5 = sub_2225C69F0();
    v7 = v6;

    sub_2225C6A00();
    if (v0)
    {
      v16 = 0;
      v17 = 0xE000000000000000;
      sub_2225C6D30();

      v16 = 0xD000000000000017;
      v17 = 0x80000002225C8FD0;
      v8 = sub_2225C6B30();
      MEMORY[0x223DBA8C0](v8);

      MEMORY[0x223DBA8C0](0x3A6C7275206F7420, 0xE900000000000020);
      sub_2225C69E0();
      sub_2225C1404();
      v9 = sub_2225C6D80();
      MEMORY[0x223DBA8C0](v9);

      MEMORY[0x223DBA8C0](8480, 0xE200000000000000);
      v10 = v16;
      v11 = v17;
      sub_2225B02BC();
      swift_allocError();
      *v12 = v10;
      *(v12 + 8) = v11;
      *(v12 + 16) = 0;
      swift_willThrow();
      MEMORY[0x223DBAEB0](v0);
    }

    result = sub_2225C68B4(v5, v7);
    v14 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v15 = v4;
    sub_2225C6970();

    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_2225C68B4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_2225C691C()
{
  result = qword_27D00FC98;
  if (!qword_27D00FC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D00FC98);
  }

  return result;
}