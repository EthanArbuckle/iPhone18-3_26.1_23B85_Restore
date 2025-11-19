uint64_t sub_21BBC9D40()
{
  v17 = v0;
  v1 = v0[5];
  v2 = v0[2];
  sub_21BE261BC();
  v3 = v2;
  v4 = sub_21BE26A2C();
  v5 = sub_21BE28FCC();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v0[4];
  v7 = v0[5];
  v9 = v0[3];
  if (v6)
  {
    v10 = v0[2];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_21BB3D81C(*(v10 + qword_27CDB63F0), *(v10 + qword_27CDB63F0 + 8), &v16);
    _os_log_impl(&dword_21BB35000, v4, v5, "%s reloadItems() called", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x21CF05C50](v12, -1, -1);
    MEMORY[0x21CF05C50](v11, -1, -1);
  }

  (*(v8 + 8))(v7, v9);
  v13 = swift_task_alloc();
  v0[9] = v13;
  *v13 = v0;
  v13[1] = sub_21BBC9EF4;
  v14 = v0[2];

  return sub_21BBCF144(1);
}

uint64_t sub_21BBC9EF4()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v6 = *v0;

  v3 = *(v1 + 64);
  v4 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_21BBDACB8, v4, v3);
}

uint64_t sub_21BBCA014()
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

  return MEMORY[0x2822009F8](sub_21BBCA108, v6, v5);
}

uint64_t sub_21BBCA108()
{
  v17 = v0;
  v1 = v0[5];
  v2 = v0[2];
  sub_21BE261BC();
  v3 = v2;
  v4 = sub_21BE26A2C();
  v5 = sub_21BE28FCC();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v0[4];
  v7 = v0[5];
  v9 = v0[3];
  if (v6)
  {
    v10 = v0[2];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_21BB3D81C(*(v10 + qword_27CDB63F0), *(v10 + qword_27CDB63F0 + 8), &v16);
    _os_log_impl(&dword_21BB35000, v4, v5, "%s reloadItems() called", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x21CF05C50](v12, -1, -1);
    MEMORY[0x21CF05C50](v11, -1, -1);
  }

  (*(v8 + 8))(v7, v9);
  v13 = swift_task_alloc();
  v0[9] = v13;
  *v13 = v0;
  v13[1] = sub_21BBC9EF4;
  v14 = v0[2];

  return sub_21BBCFA88(1);
}

uint64_t sub_21BBCA2BC()
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

  return MEMORY[0x2822009F8](sub_21BBCA3B0, v6, v5);
}

uint64_t sub_21BBCA3B0()
{
  v17 = v0;
  v1 = v0[5];
  v2 = v0[2];
  sub_21BE261BC();
  v3 = v2;
  v4 = sub_21BE26A2C();
  v5 = sub_21BE28FCC();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v0[4];
  v7 = v0[5];
  v9 = v0[3];
  if (v6)
  {
    v10 = v0[2];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_21BB3D81C(*(v10 + qword_27CDB63F0), *(v10 + qword_27CDB63F0 + 8), &v16);
    _os_log_impl(&dword_21BB35000, v4, v5, "%s reloadItems() called", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x21CF05C50](v12, -1, -1);
    MEMORY[0x21CF05C50](v11, -1, -1);
  }

  (*(v8 + 8))(v7, v9);
  v13 = swift_task_alloc();
  v0[9] = v13;
  *v13 = v0;
  v13[1] = sub_21BBC9EF4;
  v14 = v0[2];

  return sub_21BBD038C(1);
}

uint64_t sub_21BBCA564()
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

  return MEMORY[0x2822009F8](sub_21BBCA658, v6, v5);
}

uint64_t sub_21BBCA658()
{
  v17 = v0;
  v1 = v0[5];
  v2 = v0[2];
  sub_21BE261BC();
  v3 = v2;
  v4 = sub_21BE26A2C();
  v5 = sub_21BE28FCC();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v0[4];
  v7 = v0[5];
  v9 = v0[3];
  if (v6)
  {
    v10 = v0[2];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_21BB3D81C(*(v10 + qword_27CDB63F0), *(v10 + qword_27CDB63F0 + 8), &v16);
    _os_log_impl(&dword_21BB35000, v4, v5, "%s reloadItems() called", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x21CF05C50](v12, -1, -1);
    MEMORY[0x21CF05C50](v11, -1, -1);
  }

  (*(v8 + 8))(v7, v9);
  v13 = swift_task_alloc();
  v0[9] = v13;
  *v13 = v0;
  v13[1] = sub_21BBC9EF4;
  v14 = v0[2];

  return sub_21BBD0C90(1);
}

uint64_t sub_21BBCA80C()
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

  return MEMORY[0x2822009F8](sub_21BBCA900, v6, v5);
}

uint64_t sub_21BBCA900()
{
  v17 = v0;
  v1 = v0[5];
  v2 = v0[2];
  sub_21BE261BC();
  v3 = v2;
  v4 = sub_21BE26A2C();
  v5 = sub_21BE28FCC();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v0[4];
  v7 = v0[5];
  v9 = v0[3];
  if (v6)
  {
    v10 = v0[2];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_21BB3D81C(*(v10 + qword_27CDB63F0), *(v10 + qword_27CDB63F0 + 8), &v16);
    _os_log_impl(&dword_21BB35000, v4, v5, "%s reloadItems() called", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x21CF05C50](v12, -1, -1);
    MEMORY[0x21CF05C50](v11, -1, -1);
  }

  (*(v8 + 8))(v7, v9);
  v13 = swift_task_alloc();
  v0[9] = v13;
  *v13 = v0;
  v13[1] = sub_21BBC9EF4;
  v14 = v0[2];

  return sub_21BBD1594(1);
}

uint64_t sub_21BBCAAB4()
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

  return MEMORY[0x2822009F8](sub_21BBCABA8, v6, v5);
}

uint64_t sub_21BBCABA8()
{
  v17 = v0;
  v1 = v0[5];
  v2 = v0[2];
  sub_21BE261BC();
  v3 = v2;
  v4 = sub_21BE26A2C();
  v5 = sub_21BE28FCC();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v0[4];
  v7 = v0[5];
  v9 = v0[3];
  if (v6)
  {
    v10 = v0[2];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_21BB3D81C(*(v10 + qword_27CDB63F0), *(v10 + qword_27CDB63F0 + 8), &v16);
    _os_log_impl(&dword_21BB35000, v4, v5, "%s reloadItems() called", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x21CF05C50](v12, -1, -1);
    MEMORY[0x21CF05C50](v11, -1, -1);
  }

  (*(v8 + 8))(v7, v9);
  v13 = swift_task_alloc();
  v0[9] = v13;
  *v13 = v0;
  v13[1] = sub_21BBC9EF4;
  v14 = v0[2];

  return sub_21BBD1E98(1);
}

uint64_t sub_21BBCAD5C()
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

  return MEMORY[0x2822009F8](sub_21BBCAE50, v6, v5);
}

uint64_t sub_21BBCAE50()
{
  v17 = v0;
  v1 = v0[5];
  v2 = v0[2];
  sub_21BE261BC();
  v3 = v2;
  v4 = sub_21BE26A2C();
  v5 = sub_21BE28FCC();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v0[4];
  v7 = v0[5];
  v9 = v0[3];
  if (v6)
  {
    v10 = v0[2];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_21BB3D81C(*(v10 + qword_27CDB63F0), *(v10 + qword_27CDB63F0 + 8), &v16);
    _os_log_impl(&dword_21BB35000, v4, v5, "%s reloadItems() called", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x21CF05C50](v12, -1, -1);
    MEMORY[0x21CF05C50](v11, -1, -1);
  }

  (*(v8 + 8))(v7, v9);
  v13 = swift_task_alloc();
  v0[9] = v13;
  *v13 = v0;
  v13[1] = sub_21BBC9EF4;
  v14 = v0[2];

  return sub_21BBD27DC(1);
}

uint64_t sub_21BBCB004()
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

  return MEMORY[0x2822009F8](sub_21BBCB0F8, v6, v5);
}

uint64_t sub_21BBCB0F8()
{
  v17 = v0;
  v1 = v0[5];
  v2 = v0[2];
  sub_21BE261BC();
  v3 = v2;
  v4 = sub_21BE26A2C();
  v5 = sub_21BE28FCC();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v0[4];
  v7 = v0[5];
  v9 = v0[3];
  if (v6)
  {
    v10 = v0[2];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_21BB3D81C(*(v10 + qword_27CDB63F0), *(v10 + qword_27CDB63F0 + 8), &v16);
    _os_log_impl(&dword_21BB35000, v4, v5, "%s reloadItems() called", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x21CF05C50](v12, -1, -1);
    MEMORY[0x21CF05C50](v11, -1, -1);
  }

  (*(v8 + 8))(v7, v9);
  v13 = swift_task_alloc();
  v0[9] = v13;
  *v13 = v0;
  v13[1] = sub_21BBC9EF4;
  v14 = v0[2];

  return sub_21BBD3B08(1);
}

uint64_t sub_21BBCB2AC()
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

  return MEMORY[0x2822009F8](sub_21BBCB3A0, v6, v5);
}

uint64_t sub_21BBCB3A0()
{
  v17 = v0;
  v1 = v0[5];
  v2 = v0[2];
  sub_21BE261BC();
  v3 = v2;
  v4 = sub_21BE26A2C();
  v5 = sub_21BE28FCC();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v0[4];
  v7 = v0[5];
  v9 = v0[3];
  if (v6)
  {
    v10 = v0[2];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_21BB3D81C(*(v10 + qword_27CDB63F0), *(v10 + qword_27CDB63F0 + 8), &v16);
    _os_log_impl(&dword_21BB35000, v4, v5, "%s reloadItems() called", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x21CF05C50](v12, -1, -1);
    MEMORY[0x21CF05C50](v11, -1, -1);
  }

  (*(v8 + 8))(v7, v9);
  v13 = swift_task_alloc();
  v0[9] = v13;
  *v13 = v0;
  v13[1] = sub_21BBC9EF4;
  v14 = v0[2];

  return sub_21BBD440C(1);
}

uint64_t sub_21BBCB554()
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

  return MEMORY[0x2822009F8](sub_21BBCB648, v6, v5);
}

uint64_t sub_21BBCB648()
{
  v17 = v0;
  v1 = v0[5];
  v2 = v0[2];
  sub_21BE261BC();
  v3 = v2;
  v4 = sub_21BE26A2C();
  v5 = sub_21BE28FCC();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v0[4];
  v7 = v0[5];
  v9 = v0[3];
  if (v6)
  {
    v10 = v0[2];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_21BB3D81C(*(v10 + qword_27CDB63F0), *(v10 + qword_27CDB63F0 + 8), &v16);
    _os_log_impl(&dword_21BB35000, v4, v5, "%s reloadItems() called", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x21CF05C50](v12, -1, -1);
    MEMORY[0x21CF05C50](v11, -1, -1);
  }

  (*(v8 + 8))(v7, v9);
  v13 = swift_task_alloc();
  v0[9] = v13;
  *v13 = v0;
  v13[1] = sub_21BBC9EF4;
  v14 = v0[2];

  return sub_21BBD4D10(1);
}

uint64_t sub_21BBCB7FC()
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

  return MEMORY[0x2822009F8](sub_21BBCB8F0, v6, v5);
}

uint64_t sub_21BBCB8F0()
{
  v17 = v0;
  v1 = v0[5];
  v2 = v0[2];
  sub_21BE261BC();
  v3 = v2;
  v4 = sub_21BE26A2C();
  v5 = sub_21BE28FCC();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v0[4];
  v7 = v0[5];
  v9 = v0[3];
  if (v6)
  {
    v10 = v0[2];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_21BB3D81C(*(v10 + qword_27CDB63F0), *(v10 + qword_27CDB63F0 + 8), &v16);
    _os_log_impl(&dword_21BB35000, v4, v5, "%s reloadItems() called", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x21CF05C50](v12, -1, -1);
    MEMORY[0x21CF05C50](v11, -1, -1);
  }

  (*(v8 + 8))(v7, v9);
  v13 = swift_task_alloc();
  v0[9] = v13;
  *v13 = v0;
  v13[1] = sub_21BBC9EF4;
  v14 = v0[2];

  return sub_21BBD5614(1);
}

uint64_t sub_21BBCBAA4()
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

  return MEMORY[0x2822009F8](sub_21BBCBB98, v6, v5);
}

uint64_t sub_21BBCBB98()
{
  v17 = v0;
  v1 = v0[5];
  v2 = v0[2];
  sub_21BE261BC();
  v3 = v2;
  v4 = sub_21BE26A2C();
  v5 = sub_21BE28FCC();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v0[4];
  v7 = v0[5];
  v9 = v0[3];
  if (v6)
  {
    v10 = v0[2];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_21BB3D81C(*(v10 + qword_27CDB63F0), *(v10 + qword_27CDB63F0 + 8), &v16);
    _os_log_impl(&dword_21BB35000, v4, v5, "%s reloadItems() called", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x21CF05C50](v12, -1, -1);
    MEMORY[0x21CF05C50](v11, -1, -1);
  }

  (*(v8 + 8))(v7, v9);
  v13 = swift_task_alloc();
  v0[9] = v13;
  *v13 = v0;
  v13[1] = sub_21BBC9EF4;
  v14 = v0[2];

  return sub_21BBD5F18(1);
}

uint64_t sub_21BBCBD4C()
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

  return MEMORY[0x2822009F8](sub_21BBCBE40, v6, v5);
}

uint64_t sub_21BBCBE40()
{
  v17 = v0;
  v1 = v0[5];
  v2 = v0[2];
  sub_21BE261BC();
  v3 = v2;
  v4 = sub_21BE26A2C();
  v5 = sub_21BE28FCC();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v0[4];
  v7 = v0[5];
  v9 = v0[3];
  if (v6)
  {
    v10 = v0[2];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_21BB3D81C(*(v10 + qword_27CDB63F0), *(v10 + qword_27CDB63F0 + 8), &v16);
    _os_log_impl(&dword_21BB35000, v4, v5, "%s reloadItems() called", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x21CF05C50](v12, -1, -1);
    MEMORY[0x21CF05C50](v11, -1, -1);
  }

  (*(v8 + 8))(v7, v9);
  v13 = swift_task_alloc();
  v0[9] = v13;
  *v13 = v0;
  v13[1] = sub_21BBC9EF4;
  v14 = v0[2];

  return sub_21BBD681C(1);
}

uint64_t sub_21BBCBFF4()
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

  return MEMORY[0x2822009F8](sub_21BBCC0E8, v6, v5);
}

uint64_t sub_21BBCC0E8()
{
  v17 = v0;
  v1 = v0[5];
  v2 = v0[2];
  sub_21BE261BC();
  v3 = v2;
  v4 = sub_21BE26A2C();
  v5 = sub_21BE28FCC();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v0[4];
  v7 = v0[5];
  v9 = v0[3];
  if (v6)
  {
    v10 = v0[2];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_21BB3D81C(*(v10 + qword_27CDB63F0), *(v10 + qword_27CDB63F0 + 8), &v16);
    _os_log_impl(&dword_21BB35000, v4, v5, "%s reloadItems() called", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x21CF05C50](v12, -1, -1);
    MEMORY[0x21CF05C50](v11, -1, -1);
  }

  (*(v8 + 8))(v7, v9);
  v13 = swift_task_alloc();
  v0[9] = v13;
  *v13 = v0;
  v13[1] = sub_21BBC9EF4;
  v14 = v0[2];

  return sub_21BBD7120(1);
}

uint64_t sub_21BBCC29C()
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

  return MEMORY[0x2822009F8](sub_21BBCC390, v6, v5);
}

uint64_t sub_21BBCC390()
{
  v17 = v0;
  v1 = v0[5];
  v2 = v0[2];
  sub_21BE261BC();
  v3 = v2;
  v4 = sub_21BE26A2C();
  v5 = sub_21BE28FCC();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v0[4];
  v7 = v0[5];
  v9 = v0[3];
  if (v6)
  {
    v10 = v0[2];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_21BB3D81C(*(v10 + qword_27CDB63F0), *(v10 + qword_27CDB63F0 + 8), &v16);
    _os_log_impl(&dword_21BB35000, v4, v5, "%s reloadItems() called", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x21CF05C50](v12, -1, -1);
    MEMORY[0x21CF05C50](v11, -1, -1);
  }

  (*(v8 + 8))(v7, v9);
  v13 = swift_task_alloc();
  v0[9] = v13;
  *v13 = v0;
  v13[1] = sub_21BBC9EF4;
  v14 = v0[2];

  return sub_21BBD7A24(1);
}

uint64_t sub_21BBCC544()
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

  return MEMORY[0x2822009F8](sub_21BBCC638, v6, v5);
}

uint64_t sub_21BBCC638()
{
  v17 = v0;
  v1 = v0[5];
  v2 = v0[2];
  sub_21BE261BC();
  v3 = v2;
  v4 = sub_21BE26A2C();
  v5 = sub_21BE28FCC();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v0[4];
  v7 = v0[5];
  v9 = v0[3];
  if (v6)
  {
    v10 = v0[2];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_21BB3D81C(*(v10 + qword_27CDB63F0), *(v10 + qword_27CDB63F0 + 8), &v16);
    _os_log_impl(&dword_21BB35000, v4, v5, "%s reloadItems() called", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x21CF05C50](v12, -1, -1);
    MEMORY[0x21CF05C50](v11, -1, -1);
  }

  (*(v8 + 8))(v7, v9);
  v13 = swift_task_alloc();
  v0[9] = v13;
  *v13 = v0;
  v13[1] = sub_21BBC9EF4;
  v14 = v0[2];

  return sub_21BBD8328(1);
}

uint64_t sub_21BBCC7EC()
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

  return MEMORY[0x2822009F8](sub_21BBCC8E0, v6, v5);
}

uint64_t sub_21BBCC8E0()
{
  v17 = v0;
  v1 = v0[5];
  v2 = v0[2];
  sub_21BE261BC();
  v3 = v2;
  v4 = sub_21BE26A2C();
  v5 = sub_21BE28FCC();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v0[4];
  v7 = v0[5];
  v9 = v0[3];
  if (v6)
  {
    v10 = v0[2];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_21BB3D81C(*(v10 + qword_27CDB63F0), *(v10 + qword_27CDB63F0 + 8), &v16);
    _os_log_impl(&dword_21BB35000, v4, v5, "%s reloadItems() called", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x21CF05C50](v12, -1, -1);
    MEMORY[0x21CF05C50](v11, -1, -1);
  }

  (*(v8 + 8))(v7, v9);
  v13 = swift_task_alloc();
  v0[9] = v13;
  *v13 = v0;
  v13[1] = sub_21BBC9EF4;
  v14 = v0[2];

  return sub_21BBD8C2C(1);
}

uint64_t sub_21BBCCA94()
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

  return MEMORY[0x2822009F8](sub_21BBCCB88, v6, v5);
}

uint64_t sub_21BBCCB88()
{
  v17 = v0;
  v1 = v0[5];
  v2 = v0[2];
  sub_21BE261BC();
  v3 = v2;
  v4 = sub_21BE26A2C();
  v5 = sub_21BE28FCC();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v0[4];
  v7 = v0[5];
  v9 = v0[3];
  if (v6)
  {
    v10 = v0[2];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_21BB3D81C(*(v10 + qword_27CDB63F0), *(v10 + qword_27CDB63F0 + 8), &v16);
    _os_log_impl(&dword_21BB35000, v4, v5, "%s reloadItems() called", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x21CF05C50](v12, -1, -1);
    MEMORY[0x21CF05C50](v11, -1, -1);
  }

  (*(v8 + 8))(v7, v9);
  v13 = swift_task_alloc();
  v0[9] = v13;
  *v13 = v0;
  v13[1] = sub_21BBCCD3C;
  v14 = v0[2];

  return sub_21BBD9530(1);
}

uint64_t sub_21BBCCD3C()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v6 = *v0;

  v3 = *(v1 + 64);
  v4 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_21BBCCE5C, v4, v3);
}

uint64_t sub_21BBCCE5C()
{
  v2 = v0[5];
  v1 = v0[6];

  v3 = v0[1];

  return v3();
}

BOOL sub_21BBCCEC4()
{
  v1 = *(v0 + 8);
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v4 = *(v0 + 8);
    }

    v2 = sub_21BE2951C();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v2 != 0;
}

uint64_t sub_21BBCCF10()
{
  v1 = *v0;
  sub_21BE29ACC();
  sub_21BDB08A0(v1);
  sub_21BE28ABC();

  sub_21BC5C62C(v1);
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

uint64_t sub_21BBCCF9C()
{
  v1 = *v0;
  sub_21BDB08A0(v1);
  sub_21BE28ABC();

  sub_21BC5C62C(v1);
  sub_21BE28ABC();
}

uint64_t sub_21BBCD024()
{
  v1 = *v0;
  sub_21BE29ACC();
  sub_21BDB08A0(v1);
  sub_21BE28ABC();

  sub_21BC5C62C(v1);
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

uint64_t sub_21BBCD0AC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_21BDB08A0(v2);
  v6 = v5;
  if (v4 == sub_21BDB08A0(v3) && v6 == v7)
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

unint64_t sub_21BBCD1B4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_21BBDA874(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

id sub_21BBCD1E0@<X0>(uint64_t a1@<X8>)
{
  v14 = *v1;
  v3 = *(v1 + 1);
  v15 = *(v1 + 3);
  v5 = v1[32];
  v18 = *(v1 + 2);
  v4 = v18;
  v19 = v3;
  type metadata accessor for ChecklistStateVars();
  sub_21BBA3854(&v19, v16, &qword_27CDB5F20, &unk_21BE33BA0);
  sub_21BBA3854(&v18, v16, &qword_27CDB5CC8, &qword_21BE36190);
  sub_21BBDABBC(&qword_27CDBDB60, type metadata accessor for ChecklistStateVars);
  v6 = sub_21BE26E9C();
  v8 = v7;
  v21[0] = 0;
  sub_21BE283EC();
  v9 = v16[0];
  v10 = v17;
  v21[0] = 0;
  sub_21BE283EC();
  v11 = v16[0];
  v12 = v17;
  result = [objc_allocWithZone(MEMORY[0x277D44850]) init];
  *a1 = v6;
  *(a1 + 8) = v8 & 1;
  *(a1 + 9) = v16[0];
  *(a1 + 12) = *(v16 + 3);
  *(a1 + 16) = v14;
  *(a1 + 17) = v19;
  *(a1 + 20) = *(&v19 + 3);
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 40) = v15;
  *(a1 + 48) = v5 & 1;
  *(a1 + 49) = v18;
  *(a1 + 52) = *(&v18 + 3);
  *(a1 + 56) = v9;
  *(a1 + 57) = *v21;
  *(a1 + 60) = *&v21[3];
  *(a1 + 64) = v10;
  *(a1 + 72) = v11;
  *(a1 + 73) = *v20;
  *(a1 + 76) = *&v20[3];
  *(a1 + 80) = v12;
  *(a1 + 88) = result;
  return result;
}

double sub_21BBCD3BC@<D0>(_OWORD *a1@<X8>)
{
  sub_21BBCD1E0(v6);
  v2 = v6[3];
  a1[2] = v6[2];
  a1[3] = v2;
  v3 = v6[5];
  a1[4] = v6[4];
  a1[5] = v3;
  result = *v6;
  v5 = v6[1];
  *a1 = v6[0];
  a1[1] = v5;
  return result;
}

id sub_21BBCD428()
{
  v7[1] = *MEMORY[0x277D85DE8];
  v1 = sub_21BE25DAC();
  v7[0] = 0;
  v2 = [v0 fetchFamilyGroceryListEligibilityForFamilyChecklistWithLocale:v1 error:v7];

  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    sub_21BE25A8C();

    swift_willThrow();
  }

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t sub_21BBCD56C()
{
  v9[1] = *MEMORY[0x277D85DE8];
  sub_21BB3A2A4(0, &qword_27CDB60E0, 0x277D445D8);
  v2 = sub_21BE28C1C();
  v9[0] = 0;
  v3 = [v0 sharedGroceryListForFamilyChecklistWithCommonParticipants:v2 error:v9];

  v4 = v9[0];
  if (v3)
  {
    sub_21BB3A2A4(0, &qword_27CDB60E8, 0x277D44628);
    v1 = sub_21BE28C3C();
    v5 = v4;
  }

  else
  {
    v6 = v9[0];
    sub_21BE25A8C();

    swift_willThrow();
  }

  v7 = *MEMORY[0x277D85DE8];
  return v1;
}

id sub_21BBCD6B8()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for SharedFamilyGroceryItemProvider();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_21BBCD730(void *a1)
{
  v2 = objc_opt_self();
  v3 = a1;
  v4 = [v2 defaultCenter];
  [v4 removeObserver_];

  v6.receiver = v3;
  v6.super_class = type metadata accessor for SharedFamilyGroceryItemProvider();
  return objc_msgSendSuper2(&v6, sel_dealloc);
}

uint64_t type metadata accessor for SharedFamilyGroceryItemProvider()
{
  result = qword_27CDB5EF0;
  if (!qword_27CDB5EF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21BBCD88C(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = sub_21BE28D7C();
  v1[4] = sub_21BE28D6C();
  v2 = swift_task_alloc();
  v1[5] = v2;
  *v2 = v1;
  v2[1] = sub_21BBCD93C;

  return sub_21BBCDED0();
}

uint64_t sub_21BBCD93C(uint64_t a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = *v2;
  v5[6] = v1;

  v8 = v5[4];
  v9 = v5[3];
  if (v3)
  {
    v10 = sub_21BE28D0C();
    v12 = v11;
    v13 = sub_21BBCDB2C;
  }

  else
  {
    v5[7] = a1;
    v10 = sub_21BE28D0C();
    v12 = v14;
    v13 = sub_21BBCDABC;
  }

  return MEMORY[0x2822009F8](v13, v10, v12);
}

uint64_t sub_21BBCDABC()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[2];

  *v3 = v1;
  v4 = v0[1];

  return v4();
}

uint64_t sub_21BBCDB2C()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

uint64_t sub_21BBCDB90(uint64_t a1, uint64_t a2)
{
  v2[5] = a2;
  sub_21BE28D7C();
  v2[6] = sub_21BE28D6C();
  v4 = sub_21BE28D0C();
  v2[7] = v4;
  v2[8] = v3;

  return MEMORY[0x2822009F8](sub_21BBCDC28, v4, v3);
}

uint64_t sub_21BBCDC28()
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

    return sub_21BBCA014();
  }

  else
  {
    v5 = v0[6];

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_21BBCDD2C()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v7 = *v0;

  v4 = *(v1 + 64);
  v5 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_21BBCDE6C, v5, v4);
}

uint64_t sub_21BBCDE6C()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21BBCDED0()
{
  v1[3] = v0;
  v2 = sub_21BE26A4C();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800) - 8) + 64) + 15;
  v1[10] = swift_task_alloc();
  sub_21BE28D7C();
  v1[11] = sub_21BE28D6C();
  v7 = sub_21BE28D0C();
  v1[12] = v7;
  v1[13] = v6;

  return MEMORY[0x2822009F8](sub_21BBCE020, v7, v6);
}

uint64_t sub_21BBCE020()
{
  v1 = v0[10];
  v2 = v0[3];
  v3 = *&v2[qword_27CDB63F0];
  v4 = *&v2[qword_27CDB63F0 + 8];
  v5 = type metadata accessor for FamilySignpost();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();

  v0[14] = sub_21BC84D18(v3, v4, "computeItems", 12, 2);
  v8 = sub_21BE28DAC();
  (*(*(v8 - 8) + 56))(v1, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v2;
  v10 = v2;
  v11 = sub_21BC363F4(0, 0, v1, &unk_21BE33DE0, v9);
  v0[15] = v11;
  sub_21BB3A4CC(v1, &qword_27CDB5790, &qword_21BE32800);
  v12 = *(MEMORY[0x277D857E0] + 4);
  v13 = swift_task_alloc();
  v0[16] = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB60D8, &qword_21BE390D0);
  *v13 = v0;
  v13[1] = sub_21BBCE1F0;

  return MEMORY[0x282200460](v0 + 2, v11, v14);
}

uint64_t sub_21BBCE1F0()
{
  v1 = *v0;
  v2 = *(*v0 + 128);
  v3 = *(*v0 + 120);
  v7 = *v0;

  v4 = *(v1 + 104);
  v5 = *(v1 + 96);

  return MEMORY[0x2822009F8](sub_21BBCE334, v5, v4);
}

uint64_t sub_21BBCE334()
{
  v1 = v0[11];

  v2 = v0[2];
  if (!v2)
  {
    goto LABEL_16;
  }

  v3 = (v0[3] + qword_27CDD4120);
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1Tm(v3, v4);
  v6 = *(v5 + 8);
  v7 = v2;
  v8 = v6(v4, v5);
  if (v8)
  {
    v9 = v8;
    v10 = sub_21BE2905C();
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if ([v7 isEligible])
  {
    v11 = v0[9];
    sub_21BE261BC();
    v12 = sub_21BE26A2C();
    v13 = sub_21BE28FFC();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_21BB35000, v12, v13, "Family Grocery checklist item is eligible to be displayed", v14, 2u);
      MEMORY[0x21CF05C50](v14, -1, -1);
    }

    v15 = v0[9];
    v17 = v0[4];
    v16 = v0[5];
    v18 = v0[3];

    (*(v16 + 8))(v15, v17);
    v19 = *(v18 + qword_27CDD4128 + 32);
    __swift_project_boxed_opaque_existential_1Tm((v18 + qword_27CDD4128), *(v18 + qword_27CDD4128 + 24));
    sub_21BBCECA4();
    v37 = (*(v19 + 16))();

    v38 = sub_21BBBCBBC(0, 1, 1, MEMORY[0x277D84F90]);
    v28 = v38;
    v40 = *(v38 + 2);
    v39 = *(v38 + 3);
    if (v40 >= v39 >> 1)
    {
      v28 = sub_21BBBCBBC((v39 > 1), v40 + 1, 1, v38);
    }

    *(v28 + 2) = v40 + 1;
    v41 = &v28[40 * v40];
    v41[32] = 13;
    *(v41 + 5) = v37;
    *(v41 + 6) = v10;
    *(v41 + 7) = 0;
    v41[64] = 1;
    goto LABEL_17;
  }

  if (([v7 ineligibilityReasons] & 0x10) != 0)
  {
    v20 = v0[8];

    sub_21BE261BC();
    v21 = sub_21BE26A2C();
    v22 = sub_21BE28FFC();
    v23 = os_log_type_enabled(v21, v22);
    v24 = v0[8];
    v25 = v0[4];
    v26 = v0[5];
    if (v23)
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_21BB35000, v21, v22, "Family grocery list cannot be shown because of unsupported locale", v27, 2u);
      MEMORY[0x21CF05C50](v27, -1, -1);
    }

    (*(v26 + 8))(v24, v25);
    goto LABEL_16;
  }

  if (([v7 ineligibilityReasons] & 0x100) != 0)
  {
    v42 = v0[7];
    sub_21BE261BC();
    v43 = sub_21BE26A2C();
    v44 = sub_21BE28FFC();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_21BB35000, v43, v44, "Showing grocery list item, but account needs to be updated", v45, 2u);
      MEMORY[0x21CF05C50](v45, -1, -1);
    }

    v46 = v0[7];
  }

  else
  {
    if (([v7 ineligibilityReasons] & 4) == 0)
    {

LABEL_16:
      v28 = MEMORY[0x277D84F90];
      goto LABEL_17;
    }

    v47 = v0[6];
    sub_21BE261BC();
    v43 = sub_21BE26A2C();
    v48 = sub_21BE28FFC();
    if (os_log_type_enabled(v43, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_21BB35000, v43, v48, "Showing grocery list item, but ICloud is disabled for reminders", v49, 2u);
      MEMORY[0x21CF05C50](v49, -1, -1);
    }

    v46 = v0[6];
  }

  v50 = v0[4];
  v51 = v0[5];

  (*(v51 + 8))(v46, v50);
  v52 = [v7 ineligibilityReasons];
  v53 = MEMORY[0x277D84F90];
  v28 = sub_21BBBCBBC(0, 1, 1, MEMORY[0x277D84F90]);
  v55 = *(v28 + 2);
  v54 = *(v28 + 3);
  if (v55 >= v54 >> 1)
  {
    v28 = sub_21BBBCBBC((v54 > 1), v55 + 1, 1, v28);
  }

  *(v28 + 2) = v55 + 1;
  v56 = &v28[40 * v55];
  v56[32] = 13;
  *(v56 + 5) = v53;
  *(v56 + 6) = v10;
  *(v56 + 7) = v52;
  v56[64] = 0;
LABEL_17:
  v29 = v0[14];
  v31 = v0[9];
  v30 = v0[10];
  v33 = v0[7];
  v32 = v0[8];
  v34 = v0[6];
  sub_21BC852D8();

  v35 = v0[1];

  return v35(v28);
}

uint64_t sub_21BBCE924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v5 = sub_21BE26A4C();
  v4[4] = v5;
  v6 = *(v5 - 8);
  v4[5] = v6;
  v7 = *(v6 + 64) + 15;
  v4[6] = swift_task_alloc();
  v8 = sub_21BE25DFC();
  v4[7] = v8;
  v9 = *(v8 - 8);
  v4[8] = v9;
  v10 = *(v9 + 64) + 15;
  v4[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21BBCEA40, 0, 0);
}

uint64_t sub_21BBCEA40()
{
  *(v0 + 80) = qword_27CDD4128;
  sub_21BE28D7C();
  *(v0 + 88) = sub_21BE28D6C();
  v2 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BBCEAE0, v2, v1);
}

uint64_t sub_21BBCEAE0()
{
  v1 = *(v0 + 88);

  return MEMORY[0x2822009F8](sub_21BBCEB48, 0, 0);
}

uint64_t sub_21BBCEB48()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = (*(v0 + 24) + *(v0 + 80));
  v5 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1Tm(v4, v5);
  sub_21BE25DBC();
  v7 = (*(v6 + 8))(v1, v5, v6);
  (*(v3 + 8))(v1, v2);
  v8 = *(v0 + 72);
  v9 = *(v0 + 48);
  **(v0 + 16) = v7;

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_21BBCECA4()
{
  v1 = *(v0 + qword_27CDD4120 + 24);
  v2 = *(v0 + qword_27CDD4120 + 32);
  __swift_project_boxed_opaque_existential_1Tm((v0 + qword_27CDD4120), v1);
  v3 = (*(v2 + 8))(v1, v2);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v5 = v3;
    v6 = sub_21BE2905C();

    v29 = v4;
    if (v6 >> 62)
    {
LABEL_28:
      v28 = v6 & 0xFFFFFFFFFFFFFF8;
      v7 = sub_21BE2951C();
      if (!v7)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v28 = v6 & 0xFFFFFFFFFFFFFF8;
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v7)
      {
        goto LABEL_24;
      }
    }

    v8 = 0;
    while (1)
    {
      v27 = v4;
      v9 = v8;
      while (1)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x21CF047C0](v9, v6);
        }

        else
        {
          if (v9 >= *(v28 + 16))
          {
            goto LABEL_27;
          }

          v10 = *(v6 + 8 * v9 + 32);
        }

        v11 = v10;
        v8 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          __break(1u);
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

        v12 = [v10 appleID];
        if (v12)
        {
          break;
        }

LABEL_7:
        ++v9;
        if (v8 == v7)
        {
          v4 = v27;
          goto LABEL_24;
        }
      }

      v13 = v12;
      v14 = sub_21BE28A0C();
      v16 = v15;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC880, &qword_21BE32F40);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_21BE32770;
      *(v17 + 32) = v14;
      *(v17 + 40) = v16;
      v18 = [v11 appleIDAliases];
      if (v18)
      {
        v19 = v18;
        v20 = sub_21BE28C3C();
      }

      else
      {
        v20 = MEMORY[0x277D84F90];
      }

      sub_21BDE57E8(v20);
      v4 = v17;
      sub_21BE291DC();
      v21 = objc_allocWithZone(MEMORY[0x277D445D8]);
      v22 = sub_21BE28C1C();

      v23 = sub_21BE28C1C();

      v24 = [v21 initWithPhones:v22 emails:v23];

      if (!v24)
      {
        goto LABEL_7;
      }

      MEMORY[0x21CF03DB0]();
      if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v25 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_21BE28C5C();
      }

      sub_21BE28C8C();
      v4 = v29;
      if (v8 == v7)
      {
LABEL_24:

        return v4;
      }
    }
  }

  return v4;
}

unint64_t sub_21BBCEFC0()
{
  result = qword_27CDB5F00;
  if (!qword_27CDB5F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB5F00);
  }

  return result;
}

unint64_t sub_21BBCF014(uint64_t a1)
{
  *(a1 + 8) = sub_21BBCF044();
  result = sub_21BBCF098();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21BBCF044()
{
  result = qword_27CDB5F08;
  if (!qword_27CDB5F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB5F08);
  }

  return result;
}

unint64_t sub_21BBCF098()
{
  result = qword_27CDB5F10;
  if (!qword_27CDB5F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB5F10);
  }

  return result;
}

unint64_t sub_21BBCF0F0()
{
  result = qword_27CDB5F18;
  if (!qword_27CDB5F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB5F18);
  }

  return result;
}

uint64_t sub_21BBCF144(char a1)
{
  v3 = v1;
  v2[12] = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5F28, &qword_21BE33BC8);
  v2[13] = v5;
  v6 = *(v5 - 8);
  v2[14] = v6;
  v7 = *(v6 + 64) + 15;
  v2[15] = swift_task_alloc();
  v8 = sub_21BE26A4C();
  v2[16] = v8;
  v9 = *(v8 - 8);
  v2[17] = v9;
  v10 = *(v9 + 64) + 15;
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5F30, &unk_21BE33BD0) - 8) + 64) + 15;
  v2[20] = swift_task_alloc();
  v2[21] = sub_21BE28D7C();
  v2[22] = sub_21BE28D6C();
  if (a1)
  {
    v2[8] = v3;
    v12 = sub_21BBDAB14(&qword_27CDB5F48, &qword_27CDB5F50, &qword_21BE33BF8);
    v13 = *(v12 + 64);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5F50, &qword_21BE33BF8);
    v26 = (v13 + *v13);
    v15 = v13[1];
    v16 = swift_task_alloc();
    v2[25] = v16;
    *v16 = v2;
    v16[1] = sub_21BBCF63C;
    v17 = v14;
    v18 = v12;
    v19 = v26;
  }

  else
  {
    v2[11] = v3;
    v20 = sub_21BBDAB14(&qword_27CDB5F48, &qword_27CDB5F50, &qword_21BE33BF8);
    v21 = *(v20 + 56);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5F50, &qword_21BE33BF8);
    v27 = (v21 + *v21);
    v23 = v21[1];
    v24 = swift_task_alloc();
    v2[23] = v24;
    *v24 = v2;
    v24[1] = sub_21BBCF4F0;
    v17 = v22;
    v18 = v20;
    v19 = v27;
  }

  return v19(v17, v18);
}

uint64_t sub_21BBCF4F0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[2] = v2;
  v4[3] = a1;
  v4[4] = v1;
  v5 = v3[23];
  v16 = *v2;
  v4[24] = v1;

  if (v1)
  {
    v6 = v4[21];
    v7 = v4[22];
    v8 = sub_21BE28D0C();
    v10 = v9;
    v11 = sub_21BBDACC4;
  }

  else
  {
    v12 = v4[21];
    v13 = v4[22];
    v8 = sub_21BE28D0C();
    v10 = v14;
    v11 = sub_21BBCF788;
  }

  return MEMORY[0x2822009F8](v11, v8, v10);
}

uint64_t sub_21BBCF63C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[5] = v2;
  v4[6] = a1;
  v4[7] = v1;
  v5 = v3[25];
  v16 = *v2;
  v4[26] = v1;

  if (v1)
  {
    v6 = v4[21];
    v7 = v4[22];
    v8 = sub_21BE28D0C();
    v10 = v9;
    v11 = sub_21BBDACC8;
  }

  else
  {
    v12 = v4[21];
    v13 = v4[22];
    v8 = sub_21BE28D0C();
    v10 = v14;
    v11 = sub_21BBCF908;
  }

  return MEMORY[0x2822009F8](v11, v8, v10);
}

uint64_t sub_21BBCF788()
{
  v1 = v0[3];
  v2 = v0[22];
  v3 = v0[12];

  v4 = swift_task_alloc();
  *v4 = &type metadata for SharedFamilyGroceryItem;
  v5 = sub_21BBDAA6C();
  v4[1] = v5;
  swift_getKeyPath();

  v6 = swift_task_alloc();
  *v6 = &type metadata for SharedFamilyGroceryItem;
  v6[1] = v5;
  swift_getKeyPath();

  v0[10] = v1;
  v7 = v3;
  sub_21BE26CBC();
  if (qword_27CDB5030 != -1)
  {
    swift_once();
  }

  sub_21BE08934(*(v0[12] + qword_27CDB63F0), *(v0[12] + qword_27CDB63F0 + 8));
  v9 = v0[19];
  v8 = v0[20];
  v10 = v0[18];
  v11 = v0[15];

  v12 = v0[1];

  return v12();
}

uint64_t sub_21BBCF908()
{
  v1 = v0[6];
  v2 = v0[22];
  v3 = v0[12];

  v4 = swift_task_alloc();
  *v4 = &type metadata for SharedFamilyGroceryItem;
  v5 = sub_21BBDAA6C();
  v4[1] = v5;
  swift_getKeyPath();

  v6 = swift_task_alloc();
  *v6 = &type metadata for SharedFamilyGroceryItem;
  v6[1] = v5;
  swift_getKeyPath();

  v0[10] = v1;
  v7 = v3;
  sub_21BE26CBC();
  if (qword_27CDB5030 != -1)
  {
    swift_once();
  }

  sub_21BE08934(*(v0[12] + qword_27CDB63F0), *(v0[12] + qword_27CDB63F0 + 8));
  v9 = v0[19];
  v8 = v0[20];
  v10 = v0[18];
  v11 = v0[15];

  v12 = v0[1];

  return v12();
}

uint64_t sub_21BBCFA88(char a1)
{
  v3 = v1;
  v2[11] = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5F28, &qword_21BE33BC8);
  v2[12] = v5;
  v6 = *(v5 - 8);
  v2[13] = v6;
  v7 = *(v6 + 64) + 15;
  v2[14] = swift_task_alloc();
  v8 = sub_21BE26A4C();
  v2[15] = v8;
  v9 = *(v8 - 8);
  v2[16] = v9;
  v10 = *(v9 + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5F30, &unk_21BE33BD0) - 8) + 64) + 15;
  v2[19] = swift_task_alloc();
  v2[20] = sub_21BE28D7C();
  v2[21] = sub_21BE28D6C();
  if (a1)
  {
    v2[8] = v3;
    v12 = sub_21BBDABBC(&qword_27CDB5F38, type metadata accessor for SharedFamilyGroceryItemProvider);
    v13 = *(v12 + 64);
    v14 = type metadata accessor for SharedFamilyGroceryItemProvider();
    v26 = (v13 + *v13);
    v15 = v13[1];
    v16 = swift_task_alloc();
    v2[24] = v16;
    *v16 = v2;
    v16[1] = sub_21BBCFF98;
    v17 = v14;
    v18 = v12;
    v19 = v26;
  }

  else
  {
    v2[10] = v3;
    v20 = sub_21BBDABBC(&qword_27CDB5F38, type metadata accessor for SharedFamilyGroceryItemProvider);
    v21 = *(v20 + 56);
    v22 = type metadata accessor for SharedFamilyGroceryItemProvider();
    v27 = (v21 + *v21);
    v23 = v21[1];
    v24 = swift_task_alloc();
    v2[22] = v24;
    *v24 = v2;
    v24[1] = sub_21BBCFE4C;
    v17 = v22;
    v18 = v20;
    v19 = v27;
  }

  return v19(v17, v18);
}

uint64_t sub_21BBCFE4C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[2] = v2;
  v4[3] = a1;
  v4[4] = v1;
  v5 = v3[22];
  v16 = *v2;
  v4[23] = v1;

  if (v1)
  {
    v6 = v4[20];
    v7 = v4[21];
    v8 = sub_21BE28D0C();
    v10 = v9;
    v11 = sub_21BBDACBC;
  }

  else
  {
    v12 = v4[20];
    v13 = v4[21];
    v8 = sub_21BE28D0C();
    v10 = v14;
    v11 = sub_21BBD00E4;
  }

  return MEMORY[0x2822009F8](v11, v8, v10);
}

uint64_t sub_21BBCFF98(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[5] = v2;
  v4[6] = a1;
  v4[7] = v1;
  v5 = v3[24];
  v16 = *v2;
  v4[25] = v1;

  if (v1)
  {
    v6 = v4[20];
    v7 = v4[21];
    v8 = sub_21BE28D0C();
    v10 = v9;
    v11 = sub_21BBDACC0;
  }

  else
  {
    v12 = v4[20];
    v13 = v4[21];
    v8 = sub_21BE28D0C();
    v10 = v14;
    v11 = sub_21BBD0238;
  }

  return MEMORY[0x2822009F8](v11, v8, v10);
}

uint64_t sub_21BBD00E4()
{
  v1 = v0[3];
  v2 = v0[21];
  v3 = v0[11];

  v4 = sub_21BBDABBC(&qword_27CDB5F40, type metadata accessor for SharedFamilyGroceryItemProvider);
  v5 = *(v4 + 40);
  v6 = type metadata accessor for SharedFamilyGroceryItemProvider();
  v5(v1, v6, v4);
  if (qword_27CDB5030 != -1)
  {
    swift_once();
  }

  sub_21BE08934(*(v0[11] + qword_27CDB63F0), *(v0[11] + qword_27CDB63F0 + 8));
  v8 = v0[18];
  v7 = v0[19];
  v9 = v0[17];
  v10 = v0[14];

  v11 = v0[1];

  return v11();
}

uint64_t sub_21BBD0238()
{
  v1 = v0[6];
  v2 = v0[21];
  v3 = v0[11];

  v4 = sub_21BBDABBC(&qword_27CDB5F40, type metadata accessor for SharedFamilyGroceryItemProvider);
  v5 = *(v4 + 40);
  v6 = type metadata accessor for SharedFamilyGroceryItemProvider();
  v5(v1, v6, v4);
  if (qword_27CDB5030 != -1)
  {
    swift_once();
  }

  sub_21BE08934(*(v0[11] + qword_27CDB63F0), *(v0[11] + qword_27CDB63F0 + 8));
  v8 = v0[18];
  v7 = v0[19];
  v9 = v0[17];
  v10 = v0[14];

  v11 = v0[1];

  return v11();
}

uint64_t sub_21BBD038C(char a1)
{
  v3 = v1;
  v2[11] = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6078, &qword_21BE33D88);
  v2[12] = v5;
  v6 = *(v5 - 8);
  v2[13] = v6;
  v7 = *(v6 + 64) + 15;
  v2[14] = swift_task_alloc();
  v8 = sub_21BE26A4C();
  v2[15] = v8;
  v9 = *(v8 - 8);
  v2[16] = v9;
  v10 = *(v9 + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5F30, &unk_21BE33BD0) - 8) + 64) + 15;
  v2[19] = swift_task_alloc();
  v2[20] = sub_21BE28D7C();
  v2[21] = sub_21BE28D6C();
  if (a1)
  {
    v2[8] = v3;
    v12 = sub_21BBDABBC(&qword_27CDB6080, type metadata accessor for FamilyMessageConfigProvider);
    v13 = *(v12 + 64);
    v14 = type metadata accessor for FamilyMessageConfigProvider();
    v26 = (v13 + *v13);
    v15 = v13[1];
    v16 = swift_task_alloc();
    v2[24] = v16;
    *v16 = v2;
    v16[1] = sub_21BBD089C;
    v17 = v14;
    v18 = v12;
    v19 = v26;
  }

  else
  {
    v2[10] = v3;
    v20 = sub_21BBDABBC(&qword_27CDB6080, type metadata accessor for FamilyMessageConfigProvider);
    v21 = *(v20 + 56);
    v22 = type metadata accessor for FamilyMessageConfigProvider();
    v27 = (v21 + *v21);
    v23 = v21[1];
    v24 = swift_task_alloc();
    v2[22] = v24;
    *v24 = v2;
    v24[1] = sub_21BBD0750;
    v17 = v22;
    v18 = v20;
    v19 = v27;
  }

  return v19(v17, v18);
}

uint64_t sub_21BBD0750(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[2] = v2;
  v4[3] = a1;
  v4[4] = v1;
  v5 = v3[22];
  v16 = *v2;
  v4[23] = v1;

  if (v1)
  {
    v6 = v4[20];
    v7 = v4[21];
    v8 = sub_21BE28D0C();
    v10 = v9;
    v11 = sub_21BBDACBC;
  }

  else
  {
    v12 = v4[20];
    v13 = v4[21];
    v8 = sub_21BE28D0C();
    v10 = v14;
    v11 = sub_21BBD09E8;
  }

  return MEMORY[0x2822009F8](v11, v8, v10);
}

uint64_t sub_21BBD089C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[5] = v2;
  v4[6] = a1;
  v4[7] = v1;
  v5 = v3[24];
  v16 = *v2;
  v4[25] = v1;

  if (v1)
  {
    v6 = v4[20];
    v7 = v4[21];
    v8 = sub_21BE28D0C();
    v10 = v9;
    v11 = sub_21BBDACC0;
  }

  else
  {
    v12 = v4[20];
    v13 = v4[21];
    v8 = sub_21BE28D0C();
    v10 = v14;
    v11 = sub_21BBD0B3C;
  }

  return MEMORY[0x2822009F8](v11, v8, v10);
}

uint64_t sub_21BBD09E8()
{
  v1 = v0[3];
  v2 = v0[21];
  v3 = v0[11];

  v4 = sub_21BBDABBC(&qword_27CDB6088, type metadata accessor for FamilyMessageConfigProvider);
  v5 = *(v4 + 40);
  v6 = type metadata accessor for FamilyMessageConfigProvider();
  v5(v1, v6, v4);
  if (qword_27CDB5030 != -1)
  {
    swift_once();
  }

  sub_21BE08934(*(v0[11] + qword_27CDB63F0), *(v0[11] + qword_27CDB63F0 + 8));
  v8 = v0[18];
  v7 = v0[19];
  v9 = v0[17];
  v10 = v0[14];

  v11 = v0[1];

  return v11();
}

uint64_t sub_21BBD0B3C()
{
  v1 = v0[6];
  v2 = v0[21];
  v3 = v0[11];

  v4 = sub_21BBDABBC(&qword_27CDB6088, type metadata accessor for FamilyMessageConfigProvider);
  v5 = *(v4 + 40);
  v6 = type metadata accessor for FamilyMessageConfigProvider();
  v5(v1, v6, v4);
  if (qword_27CDB5030 != -1)
  {
    swift_once();
  }

  sub_21BE08934(*(v0[11] + qword_27CDB63F0), *(v0[11] + qword_27CDB63F0 + 8));
  v8 = v0[18];
  v7 = v0[19];
  v9 = v0[17];
  v10 = v0[14];

  v11 = v0[1];

  return v11();
}

uint64_t sub_21BBD0C90(char a1)
{
  v3 = v1;
  v2[11] = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6068, &qword_21BE33D70);
  v2[12] = v5;
  v6 = *(v5 - 8);
  v2[13] = v6;
  v7 = *(v6 + 64) + 15;
  v2[14] = swift_task_alloc();
  v8 = sub_21BE26A4C();
  v2[15] = v8;
  v9 = *(v8 - 8);
  v2[16] = v9;
  v10 = *(v9 + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5F30, &unk_21BE33BD0) - 8) + 64) + 15;
  v2[19] = swift_task_alloc();
  v2[20] = sub_21BE28D7C();
  v2[21] = sub_21BE28D6C();
  if (a1)
  {
    v2[8] = v3;
    v12 = sub_21BBDABBC(&unk_27CDB6580, type metadata accessor for AppleCashItemProvider);
    v13 = *(v12 + 64);
    v14 = type metadata accessor for AppleCashItemProvider(0);
    v26 = (v13 + *v13);
    v15 = v13[1];
    v16 = swift_task_alloc();
    v2[24] = v16;
    *v16 = v2;
    v16[1] = sub_21BBD11A0;
    v17 = v14;
    v18 = v12;
    v19 = v26;
  }

  else
  {
    v2[10] = v3;
    v20 = sub_21BBDABBC(&unk_27CDB6580, type metadata accessor for AppleCashItemProvider);
    v21 = *(v20 + 56);
    v22 = type metadata accessor for AppleCashItemProvider(0);
    v27 = (v21 + *v21);
    v23 = v21[1];
    v24 = swift_task_alloc();
    v2[22] = v24;
    *v24 = v2;
    v24[1] = sub_21BBD1054;
    v17 = v22;
    v18 = v20;
    v19 = v27;
  }

  return v19(v17, v18);
}

uint64_t sub_21BBD1054(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[2] = v2;
  v4[3] = a1;
  v4[4] = v1;
  v5 = v3[22];
  v16 = *v2;
  v4[23] = v1;

  if (v1)
  {
    v6 = v4[20];
    v7 = v4[21];
    v8 = sub_21BE28D0C();
    v10 = v9;
    v11 = sub_21BBDACBC;
  }

  else
  {
    v12 = v4[20];
    v13 = v4[21];
    v8 = sub_21BE28D0C();
    v10 = v14;
    v11 = sub_21BBD12EC;
  }

  return MEMORY[0x2822009F8](v11, v8, v10);
}

uint64_t sub_21BBD11A0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[5] = v2;
  v4[6] = a1;
  v4[7] = v1;
  v5 = v3[24];
  v16 = *v2;
  v4[25] = v1;

  if (v1)
  {
    v6 = v4[20];
    v7 = v4[21];
    v8 = sub_21BE28D0C();
    v10 = v9;
    v11 = sub_21BBDACC0;
  }

  else
  {
    v12 = v4[20];
    v13 = v4[21];
    v8 = sub_21BE28D0C();
    v10 = v14;
    v11 = sub_21BBD1440;
  }

  return MEMORY[0x2822009F8](v11, v8, v10);
}

uint64_t sub_21BBD12EC()
{
  v1 = v0[3];
  v2 = v0[21];
  v3 = v0[11];

  v4 = sub_21BBDABBC(&qword_27CDB6070, type metadata accessor for AppleCashItemProvider);
  v5 = *(v4 + 40);
  v6 = type metadata accessor for AppleCashItemProvider(0);
  v5(v1, v6, v4);
  if (qword_27CDB5030 != -1)
  {
    swift_once();
  }

  sub_21BE08934(*(v0[11] + qword_27CDB63F0), *(v0[11] + qword_27CDB63F0 + 8));
  v8 = v0[18];
  v7 = v0[19];
  v9 = v0[17];
  v10 = v0[14];

  v11 = v0[1];

  return v11();
}

uint64_t sub_21BBD1440()
{
  v1 = v0[6];
  v2 = v0[21];
  v3 = v0[11];

  v4 = sub_21BBDABBC(&qword_27CDB6070, type metadata accessor for AppleCashItemProvider);
  v5 = *(v4 + 40);
  v6 = type metadata accessor for AppleCashItemProvider(0);
  v5(v1, v6, v4);
  if (qword_27CDB5030 != -1)
  {
    swift_once();
  }

  sub_21BE08934(*(v0[11] + qword_27CDB63F0), *(v0[11] + qword_27CDB63F0 + 8));
  v8 = v0[18];
  v7 = v0[19];
  v9 = v0[17];
  v10 = v0[14];

  v11 = v0[1];

  return v11();
}

uint64_t sub_21BBD1594(char a1)
{
  v3 = v1;
  v2[11] = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6020, &qword_21BE33D28);
  v2[12] = v5;
  v6 = *(v5 - 8);
  v2[13] = v6;
  v7 = *(v6 + 64) + 15;
  v2[14] = swift_task_alloc();
  v8 = sub_21BE26A4C();
  v2[15] = v8;
  v9 = *(v8 - 8);
  v2[16] = v9;
  v10 = *(v9 + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5F30, &unk_21BE33BD0) - 8) + 64) + 15;
  v2[19] = swift_task_alloc();
  v2[20] = sub_21BE28D7C();
  v2[21] = sub_21BE28D6C();
  if (a1)
  {
    v2[8] = v3;
    v12 = sub_21BBDABBC(&qword_27CDB6028, type metadata accessor for IcloudPlusItemProvider);
    v13 = *(v12 + 64);
    v14 = type metadata accessor for IcloudPlusItemProvider();
    v26 = (v13 + *v13);
    v15 = v13[1];
    v16 = swift_task_alloc();
    v2[24] = v16;
    *v16 = v2;
    v16[1] = sub_21BBD1AA4;
    v17 = v14;
    v18 = v12;
    v19 = v26;
  }

  else
  {
    v2[10] = v3;
    v20 = sub_21BBDABBC(&qword_27CDB6028, type metadata accessor for IcloudPlusItemProvider);
    v21 = *(v20 + 56);
    v22 = type metadata accessor for IcloudPlusItemProvider();
    v27 = (v21 + *v21);
    v23 = v21[1];
    v24 = swift_task_alloc();
    v2[22] = v24;
    *v24 = v2;
    v24[1] = sub_21BBD1958;
    v17 = v22;
    v18 = v20;
    v19 = v27;
  }

  return v19(v17, v18);
}

uint64_t sub_21BBD1958(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[2] = v2;
  v4[3] = a1;
  v4[4] = v1;
  v5 = v3[22];
  v16 = *v2;
  v4[23] = v1;

  if (v1)
  {
    v6 = v4[20];
    v7 = v4[21];
    v8 = sub_21BE28D0C();
    v10 = v9;
    v11 = sub_21BBDACBC;
  }

  else
  {
    v12 = v4[20];
    v13 = v4[21];
    v8 = sub_21BE28D0C();
    v10 = v14;
    v11 = sub_21BBD1BF0;
  }

  return MEMORY[0x2822009F8](v11, v8, v10);
}

uint64_t sub_21BBD1AA4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[5] = v2;
  v4[6] = a1;
  v4[7] = v1;
  v5 = v3[24];
  v16 = *v2;
  v4[25] = v1;

  if (v1)
  {
    v6 = v4[20];
    v7 = v4[21];
    v8 = sub_21BE28D0C();
    v10 = v9;
    v11 = sub_21BBDACC0;
  }

  else
  {
    v12 = v4[20];
    v13 = v4[21];
    v8 = sub_21BE28D0C();
    v10 = v14;
    v11 = sub_21BBD1D44;
  }

  return MEMORY[0x2822009F8](v11, v8, v10);
}

uint64_t sub_21BBD1BF0()
{
  v1 = v0[3];
  v2 = v0[21];
  v3 = v0[11];

  v4 = sub_21BBDABBC(&qword_27CDB6030, type metadata accessor for IcloudPlusItemProvider);
  v5 = *(v4 + 40);
  v6 = type metadata accessor for IcloudPlusItemProvider();
  v5(v1, v6, v4);
  if (qword_27CDB5030 != -1)
  {
    swift_once();
  }

  sub_21BE08934(*(v0[11] + qword_27CDB63F0), *(v0[11] + qword_27CDB63F0 + 8));
  v8 = v0[18];
  v7 = v0[19];
  v9 = v0[17];
  v10 = v0[14];

  v11 = v0[1];

  return v11();
}

uint64_t sub_21BBD1D44()
{
  v1 = v0[6];
  v2 = v0[21];
  v3 = v0[11];

  v4 = sub_21BBDABBC(&qword_27CDB6030, type metadata accessor for IcloudPlusItemProvider);
  v5 = *(v4 + 40);
  v6 = type metadata accessor for IcloudPlusItemProvider();
  v5(v1, v6, v4);
  if (qword_27CDB5030 != -1)
  {
    swift_once();
  }

  sub_21BE08934(*(v0[11] + qword_27CDB63F0), *(v0[11] + qword_27CDB63F0 + 8));
  v8 = v0[18];
  v7 = v0[19];
  v9 = v0[17];
  v10 = v0[14];

  v11 = v0[1];

  return v11();
}

uint64_t sub_21BBD1E98(char a1)
{
  v3 = v1;
  v2[12] = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5F90, &qword_21BE33C98);
  v2[13] = v5;
  v6 = *(v5 - 8);
  v2[14] = v6;
  v7 = *(v6 + 64) + 15;
  v2[15] = swift_task_alloc();
  v8 = sub_21BE26A4C();
  v2[16] = v8;
  v9 = *(v8 - 8);
  v2[17] = v9;
  v10 = *(v9 + 64) + 15;
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5F30, &unk_21BE33BD0) - 8) + 64) + 15;
  v2[20] = swift_task_alloc();
  v2[21] = sub_21BE28D7C();
  v2[22] = sub_21BE28D6C();
  if (a1)
  {
    v2[8] = v3;
    v12 = sub_21BBDAB14(&qword_27CDB5FA8, &qword_27CDB5FB0, &qword_21BE33CB0);
    v13 = *(v12 + 64);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5FB0, &qword_21BE33CB0);
    v26 = (v13 + *v13);
    v15 = v13[1];
    v16 = swift_task_alloc();
    v2[25] = v16;
    *v16 = v2;
    v16[1] = sub_21BBD2390;
    v17 = v14;
    v18 = v12;
    v19 = v26;
  }

  else
  {
    v2[11] = v3;
    v20 = sub_21BBDAB14(&qword_27CDB5FA8, &qword_27CDB5FB0, &qword_21BE33CB0);
    v21 = *(v20 + 56);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5FB0, &qword_21BE33CB0);
    v27 = (v21 + *v21);
    v23 = v21[1];
    v24 = swift_task_alloc();
    v2[23] = v24;
    *v24 = v2;
    v24[1] = sub_21BBD2244;
    v17 = v22;
    v18 = v20;
    v19 = v27;
  }

  return v19(v17, v18);
}

uint64_t sub_21BBD2244(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[2] = v2;
  v4[3] = a1;
  v4[4] = v1;
  v5 = v3[23];
  v16 = *v2;
  v4[24] = v1;

  if (v1)
  {
    v6 = v4[21];
    v7 = v4[22];
    v8 = sub_21BE28D0C();
    v10 = v9;
    v11 = sub_21BBDACC4;
  }

  else
  {
    v12 = v4[21];
    v13 = v4[22];
    v8 = sub_21BE28D0C();
    v10 = v14;
    v11 = sub_21BBD24DC;
  }

  return MEMORY[0x2822009F8](v11, v8, v10);
}

uint64_t sub_21BBD2390(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[5] = v2;
  v4[6] = a1;
  v4[7] = v1;
  v5 = v3[25];
  v16 = *v2;
  v4[26] = v1;

  if (v1)
  {
    v6 = v4[21];
    v7 = v4[22];
    v8 = sub_21BE28D0C();
    v10 = v9;
    v11 = sub_21BBDACC8;
  }

  else
  {
    v12 = v4[21];
    v13 = v4[22];
    v8 = sub_21BE28D0C();
    v10 = v14;
    v11 = sub_21BBD265C;
  }

  return MEMORY[0x2822009F8](v11, v8, v10);
}

uint64_t sub_21BBD24DC()
{
  v1 = v0[3];
  v2 = v0[22];
  v3 = v0[12];

  v4 = swift_task_alloc();
  *v4 = &type metadata for SharedFamilyCalendarItem;
  v5 = sub_21BBDAB68();
  v4[1] = v5;
  swift_getKeyPath();

  v6 = swift_task_alloc();
  *v6 = &type metadata for SharedFamilyCalendarItem;
  v6[1] = v5;
  swift_getKeyPath();

  v0[10] = v1;
  v7 = v3;
  sub_21BE26CBC();
  if (qword_27CDB5030 != -1)
  {
    swift_once();
  }

  sub_21BE08934(*(v0[12] + qword_27CDB63F0), *(v0[12] + qword_27CDB63F0 + 8));
  v9 = v0[19];
  v8 = v0[20];
  v10 = v0[18];
  v11 = v0[15];

  v12 = v0[1];

  return v12();
}

uint64_t sub_21BBD265C()
{
  v1 = v0[6];
  v2 = v0[22];
  v3 = v0[12];

  v4 = swift_task_alloc();
  *v4 = &type metadata for SharedFamilyCalendarItem;
  v5 = sub_21BBDAB68();
  v4[1] = v5;
  swift_getKeyPath();

  v6 = swift_task_alloc();
  *v6 = &type metadata for SharedFamilyCalendarItem;
  v6[1] = v5;
  swift_getKeyPath();

  v0[10] = v1;
  v7 = v3;
  sub_21BE26CBC();
  if (qword_27CDB5030 != -1)
  {
    swift_once();
  }

  sub_21BE08934(*(v0[12] + qword_27CDB63F0), *(v0[12] + qword_27CDB63F0 + 8));
  v9 = v0[19];
  v8 = v0[20];
  v10 = v0[18];
  v11 = v0[15];

  v12 = v0[1];

  return v12();
}

uint64_t sub_21BBD27DC(char a1)
{
  v3 = v1;
  v2[12] = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5F60, &qword_21BE33C68);
  v2[13] = v5;
  v6 = *(v5 - 8);
  v2[14] = v6;
  v7 = *(v6 + 64) + 15;
  v2[15] = swift_task_alloc();
  v8 = sub_21BE26A4C();
  v2[16] = v8;
  v9 = *(v8 - 8);
  v2[17] = v9;
  v10 = *(v9 + 64) + 15;
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5F30, &unk_21BE33BD0) - 8) + 64) + 15;
  v2[20] = swift_task_alloc();
  v2[21] = sub_21BE28D7C();
  v2[22] = sub_21BE28D6C();
  if (a1)
  {
    v2[8] = v3;
    v12 = sub_21BBDAB14(&qword_27CDB5F78, &qword_27CDB5F80, &qword_21BE33C80);
    v13 = *(v12 + 64);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5F80, &qword_21BE33C80);
    v26 = (v13 + *v13);
    v15 = v13[1];
    v16 = swift_task_alloc();
    v2[25] = v16;
    *v16 = v2;
    v16[1] = sub_21BBD2CD4;
    v17 = v14;
    v18 = v12;
    v19 = v26;
  }

  else
  {
    v2[11] = v3;
    v20 = sub_21BBDAB14(&qword_27CDB5F78, &qword_27CDB5F80, &qword_21BE33C80);
    v21 = *(v20 + 56);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5F80, &qword_21BE33C80);
    v27 = (v21 + *v21);
    v23 = v21[1];
    v24 = swift_task_alloc();
    v2[23] = v24;
    *v24 = v2;
    v24[1] = sub_21BBD2B88;
    v17 = v22;
    v18 = v20;
    v19 = v27;
  }

  return v19(v17, v18);
}

uint64_t sub_21BBD2B88(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[2] = v2;
  v4[3] = a1;
  v4[4] = v1;
  v5 = v3[23];
  v16 = *v2;
  v4[24] = v1;

  if (v1)
  {
    v6 = v4[21];
    v7 = v4[22];
    v8 = sub_21BE28D0C();
    v10 = v9;
    v11 = sub_21BBD2FA0;
  }

  else
  {
    v12 = v4[21];
    v13 = v4[22];
    v8 = sub_21BE28D0C();
    v10 = v14;
    v11 = sub_21BBD2E20;
  }

  return MEMORY[0x2822009F8](v11, v8, v10);
}

uint64_t sub_21BBD2CD4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[5] = v2;
  v4[6] = a1;
  v4[7] = v1;
  v5 = v3[25];
  v16 = *v2;
  v4[26] = v1;

  if (v1)
  {
    v6 = v4[21];
    v7 = v4[22];
    v8 = sub_21BE28D0C();
    v10 = v9;
    v11 = sub_21BBD3614;
  }

  else
  {
    v12 = v4[21];
    v13 = v4[22];
    v8 = sub_21BE28D0C();
    v10 = v14;
    v11 = sub_21BBD3494;
  }

  return MEMORY[0x2822009F8](v11, v8, v10);
}

uint64_t sub_21BBD2E20()
{
  v1 = v0[3];
  v2 = v0[22];
  v3 = v0[12];

  v4 = swift_task_alloc();
  *v4 = &type metadata for SharedPasswordsItem;
  v5 = sub_21BBDAAC0();
  v4[1] = v5;
  swift_getKeyPath();

  v6 = swift_task_alloc();
  *v6 = &type metadata for SharedPasswordsItem;
  v6[1] = v5;
  swift_getKeyPath();

  v0[10] = v1;
  v7 = v3;
  sub_21BE26CBC();
  if (qword_27CDB5030 != -1)
  {
    swift_once();
  }

  sub_21BE08934(*(v0[12] + qword_27CDB63F0), *(v0[12] + qword_27CDB63F0 + 8));
  v9 = v0[19];
  v8 = v0[20];
  v10 = v0[18];
  v11 = v0[15];

  v12 = v0[1];

  return v12();
}

uint64_t sub_21BBD2FA0()
{
  v50 = v0;
  v1 = v0[22];

  v2 = v0[24];
  v0[9] = v2;
  v3 = v0[20];
  v4 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAFB0, &qword_21BE3AAD0);
  v5 = sub_21BE28D3C();
  v6 = swift_dynamicCast();
  v7 = *(*(v5 - 8) + 56);
  v8 = v0[20];
  v9 = v0[12];
  if (!v6)
  {
    v24 = v0[18];
    v7(v8, 1, 1, v5);
    sub_21BB3A4CC(v8, &qword_27CDB5F30, &unk_21BE33BD0);
    sub_21BE261BC();
    v48 = 0;
    v49 = 0xE000000000000000;
    v25 = v2;
    sub_21BE295EC();

    v26 = *&v9[qword_27CDB63F0 + 8];
    v48 = *&v9[qword_27CDB63F0];
    v49 = v26;

    result = MEMORY[0x21CF03CA0](23328, 0xE200000000000000);
    if (*&v9[qword_27CDB6400])
    {
      v28 = v0[17];
      v27 = v0[18];
      v29 = v0[15];
      v47 = v0[16];
      v31 = v0[13];
      v30 = v0[14];

      sub_21BE262BC();

      v32 = sub_21BE2628C();
      v34 = v33;
      (*(v30 + 8))(v29, v31);
      MEMORY[0x21CF03CA0](v32, v34);

      MEMORY[0x21CF03CA0](0x3A726F727265205DLL, 0xEB00000000402520);
      sub_21BC51D50(v2);

      (*(v28 + 8))(v27, v47);
      goto LABEL_8;
    }

    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  v10 = v0[19];
  v7(v8, 0, 1, v5);
  sub_21BB3A4CC(v8, &qword_27CDB5F30, &unk_21BE33BD0);
  sub_21BE261BC();
  v11 = v9;
  v12 = sub_21BE26A2C();
  v13 = sub_21BE28FFC();

  if (!os_log_type_enabled(v12, v13))
  {
    v35 = v0[19];
    v36 = v0[16];
    v37 = v0[17];

    (*(v37 + 8))(v35, v36);
    goto LABEL_8;
  }

  v14 = v0[12];
  v15 = swift_slowAlloc();
  v46 = swift_slowAlloc();
  v48 = v46;
  *v15 = 136315394;
  result = sub_21BB3D81C(*(v14 + qword_27CDB63F0), *(v14 + qword_27CDB63F0 + 8), &v48);
  *(v15 + 4) = result;
  *(v15 + 12) = 2080;
  if (!*(v14 + qword_27CDB6400))
  {
    goto LABEL_14;
  }

  v43 = v0[17];
  v44 = v0[16];
  v45 = v0[19];
  v17 = v0[14];
  v18 = v0[15];
  v19 = v0[13];

  sub_21BE262BC();

  v20 = sub_21BE2628C();
  v22 = v21;
  (*(v17 + 8))(v18, v19);
  v23 = sub_21BB3D81C(v20, v22, &v48);

  *(v15 + 14) = v23;
  _os_log_impl(&dword_21BB35000, v12, v13, "%s [%s] cancelled", v15, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x21CF05C50](v46, -1, -1);
  MEMORY[0x21CF05C50](v15, -1, -1);

  (*(v43 + 8))(v45, v44);
LABEL_8:
  if (qword_27CDB5030 != -1)
  {
    swift_once();
  }

  sub_21BE08A90(*(v0[12] + qword_27CDB63F0), *(v0[12] + qword_27CDB63F0 + 8), v2);

  v39 = v0[19];
  v38 = v0[20];
  v40 = v0[18];
  v41 = v0[15];

  v42 = v0[1];

  return v42();
}

uint64_t sub_21BBD3494()
{
  v1 = v0[6];
  v2 = v0[22];
  v3 = v0[12];

  v4 = swift_task_alloc();
  *v4 = &type metadata for SharedPasswordsItem;
  v5 = sub_21BBDAAC0();
  v4[1] = v5;
  swift_getKeyPath();

  v6 = swift_task_alloc();
  *v6 = &type metadata for SharedPasswordsItem;
  v6[1] = v5;
  swift_getKeyPath();

  v0[10] = v1;
  v7 = v3;
  sub_21BE26CBC();
  if (qword_27CDB5030 != -1)
  {
    swift_once();
  }

  sub_21BE08934(*(v0[12] + qword_27CDB63F0), *(v0[12] + qword_27CDB63F0 + 8));
  v9 = v0[19];
  v8 = v0[20];
  v10 = v0[18];
  v11 = v0[15];

  v12 = v0[1];

  return v12();
}

uint64_t sub_21BBD3614()
{
  v50 = v0;
  v1 = v0[22];

  v2 = v0[26];
  v0[9] = v2;
  v3 = v0[20];
  v4 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAFB0, &qword_21BE3AAD0);
  v5 = sub_21BE28D3C();
  v6 = swift_dynamicCast();
  v7 = *(*(v5 - 8) + 56);
  v8 = v0[20];
  v9 = v0[12];
  if (!v6)
  {
    v24 = v0[18];
    v7(v8, 1, 1, v5);
    sub_21BB3A4CC(v8, &qword_27CDB5F30, &unk_21BE33BD0);
    sub_21BE261BC();
    v48 = 0;
    v49 = 0xE000000000000000;
    v25 = v2;
    sub_21BE295EC();

    v26 = *&v9[qword_27CDB63F0 + 8];
    v48 = *&v9[qword_27CDB63F0];
    v49 = v26;

    result = MEMORY[0x21CF03CA0](23328, 0xE200000000000000);
    if (*&v9[qword_27CDB6400])
    {
      v28 = v0[17];
      v27 = v0[18];
      v29 = v0[15];
      v47 = v0[16];
      v31 = v0[13];
      v30 = v0[14];

      sub_21BE262BC();

      v32 = sub_21BE2628C();
      v34 = v33;
      (*(v30 + 8))(v29, v31);
      MEMORY[0x21CF03CA0](v32, v34);

      MEMORY[0x21CF03CA0](0x3A726F727265205DLL, 0xEB00000000402520);
      sub_21BC51D50(v2);

      (*(v28 + 8))(v27, v47);
      goto LABEL_8;
    }

    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  v10 = v0[19];
  v7(v8, 0, 1, v5);
  sub_21BB3A4CC(v8, &qword_27CDB5F30, &unk_21BE33BD0);
  sub_21BE261BC();
  v11 = v9;
  v12 = sub_21BE26A2C();
  v13 = sub_21BE28FFC();

  if (!os_log_type_enabled(v12, v13))
  {
    v35 = v0[19];
    v36 = v0[16];
    v37 = v0[17];

    (*(v37 + 8))(v35, v36);
    goto LABEL_8;
  }

  v14 = v0[12];
  v15 = swift_slowAlloc();
  v46 = swift_slowAlloc();
  v48 = v46;
  *v15 = 136315394;
  result = sub_21BB3D81C(*(v14 + qword_27CDB63F0), *(v14 + qword_27CDB63F0 + 8), &v48);
  *(v15 + 4) = result;
  *(v15 + 12) = 2080;
  if (!*(v14 + qword_27CDB6400))
  {
    goto LABEL_14;
  }

  v43 = v0[17];
  v44 = v0[16];
  v45 = v0[19];
  v17 = v0[14];
  v18 = v0[15];
  v19 = v0[13];

  sub_21BE262BC();

  v20 = sub_21BE2628C();
  v22 = v21;
  (*(v17 + 8))(v18, v19);
  v23 = sub_21BB3D81C(v20, v22, &v48);

  *(v15 + 14) = v23;
  _os_log_impl(&dword_21BB35000, v12, v13, "%s [%s] cancelled", v15, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x21CF05C50](v46, -1, -1);
  MEMORY[0x21CF05C50](v15, -1, -1);

  (*(v43 + 8))(v45, v44);
LABEL_8:
  if (qword_27CDB5030 != -1)
  {
    swift_once();
  }

  sub_21BE08A90(*(v0[12] + qword_27CDB63F0), *(v0[12] + qword_27CDB63F0 + 8), v2);

  v39 = v0[19];
  v38 = v0[20];
  v40 = v0[18];
  v41 = v0[15];

  v42 = v0[1];

  return v42();
}

uint64_t sub_21BBD3B08(char a1)
{
  v3 = v1;
  v2[11] = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5FD8, &qword_21BE33CE0);
  v2[12] = v5;
  v6 = *(v5 - 8);
  v2[13] = v6;
  v7 = *(v6 + 64) + 15;
  v2[14] = swift_task_alloc();
  v8 = sub_21BE26A4C();
  v2[15] = v8;
  v9 = *(v8 - 8);
  v2[16] = v9;
  v10 = *(v9 + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5F30, &unk_21BE33BD0) - 8) + 64) + 15;
  v2[19] = swift_task_alloc();
  v2[20] = sub_21BE28D7C();
  v2[21] = sub_21BE28D6C();
  if (a1)
  {
    v2[8] = v3;
    v12 = sub_21BBDABBC(&qword_27CDB5FE0, type metadata accessor for ParentalControlItemProvider);
    v13 = *(v12 + 64);
    v14 = type metadata accessor for ParentalControlItemProvider(0);
    v26 = (v13 + *v13);
    v15 = v13[1];
    v16 = swift_task_alloc();
    v2[24] = v16;
    *v16 = v2;
    v16[1] = sub_21BBD4018;
    v17 = v14;
    v18 = v12;
    v19 = v26;
  }

  else
  {
    v2[10] = v3;
    v20 = sub_21BBDABBC(&qword_27CDB5FE0, type metadata accessor for ParentalControlItemProvider);
    v21 = *(v20 + 56);
    v22 = type metadata accessor for ParentalControlItemProvider(0);
    v27 = (v21 + *v21);
    v23 = v21[1];
    v24 = swift_task_alloc();
    v2[22] = v24;
    *v24 = v2;
    v24[1] = sub_21BBD3ECC;
    v17 = v22;
    v18 = v20;
    v19 = v27;
  }

  return v19(v17, v18);
}

uint64_t sub_21BBD3ECC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[2] = v2;
  v4[3] = a1;
  v4[4] = v1;
  v5 = v3[22];
  v16 = *v2;
  v4[23] = v1;

  if (v1)
  {
    v6 = v4[20];
    v7 = v4[21];
    v8 = sub_21BE28D0C();
    v10 = v9;
    v11 = sub_21BBDACBC;
  }

  else
  {
    v12 = v4[20];
    v13 = v4[21];
    v8 = sub_21BE28D0C();
    v10 = v14;
    v11 = sub_21BBD4164;
  }

  return MEMORY[0x2822009F8](v11, v8, v10);
}

uint64_t sub_21BBD4018(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[5] = v2;
  v4[6] = a1;
  v4[7] = v1;
  v5 = v3[24];
  v16 = *v2;
  v4[25] = v1;

  if (v1)
  {
    v6 = v4[20];
    v7 = v4[21];
    v8 = sub_21BE28D0C();
    v10 = v9;
    v11 = sub_21BBDACC0;
  }

  else
  {
    v12 = v4[20];
    v13 = v4[21];
    v8 = sub_21BE28D0C();
    v10 = v14;
    v11 = sub_21BBD42B8;
  }

  return MEMORY[0x2822009F8](v11, v8, v10);
}

uint64_t sub_21BBD4164()
{
  v1 = v0[3];
  v2 = v0[21];
  v3 = v0[11];

  v4 = sub_21BBDABBC(&qword_27CDB5FE8, type metadata accessor for ParentalControlItemProvider);
  v5 = *(v4 + 40);
  v6 = type metadata accessor for ParentalControlItemProvider(0);
  v5(v1, v6, v4);
  if (qword_27CDB5030 != -1)
  {
    swift_once();
  }

  sub_21BE08934(*(v0[11] + qword_27CDB63F0), *(v0[11] + qword_27CDB63F0 + 8));
  v8 = v0[18];
  v7 = v0[19];
  v9 = v0[17];
  v10 = v0[14];

  v11 = v0[1];

  return v11();
}

uint64_t sub_21BBD42B8()
{
  v1 = v0[6];
  v2 = v0[21];
  v3 = v0[11];

  v4 = sub_21BBDABBC(&qword_27CDB5FE8, type metadata accessor for ParentalControlItemProvider);
  v5 = *(v4 + 40);
  v6 = type metadata accessor for ParentalControlItemProvider(0);
  v5(v1, v6, v4);
  if (qword_27CDB5030 != -1)
  {
    swift_once();
  }

  sub_21BE08934(*(v0[11] + qword_27CDB63F0), *(v0[11] + qword_27CDB63F0 + 8));
  v8 = v0[18];
  v7 = v0[19];
  v9 = v0[17];
  v10 = v0[14];

  v11 = v0[1];

  return v11();
}

uint64_t sub_21BBD440C(char a1)
{
  v3 = v1;
  v2[11] = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5F60, &qword_21BE33C68);
  v2[12] = v5;
  v6 = *(v5 - 8);
  v2[13] = v6;
  v7 = *(v6 + 64) + 15;
  v2[14] = swift_task_alloc();
  v8 = sub_21BE26A4C();
  v2[15] = v8;
  v9 = *(v8 - 8);
  v2[16] = v9;
  v10 = *(v9 + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5F30, &unk_21BE33BD0) - 8) + 64) + 15;
  v2[19] = swift_task_alloc();
  v2[20] = sub_21BE28D7C();
  v2[21] = sub_21BE28D6C();
  if (a1)
  {
    v2[8] = v3;
    v12 = sub_21BBDABBC(&qword_27CDB5F68, type metadata accessor for SharedPasswordsItemProvider);
    v13 = *(v12 + 64);
    v14 = type metadata accessor for SharedPasswordsItemProvider();
    v26 = (v13 + *v13);
    v15 = v13[1];
    v16 = swift_task_alloc();
    v2[24] = v16;
    *v16 = v2;
    v16[1] = sub_21BBD491C;
    v17 = v14;
    v18 = v12;
    v19 = v26;
  }

  else
  {
    v2[10] = v3;
    v20 = sub_21BBDABBC(&qword_27CDB5F68, type metadata accessor for SharedPasswordsItemProvider);
    v21 = *(v20 + 56);
    v22 = type metadata accessor for SharedPasswordsItemProvider();
    v27 = (v21 + *v21);
    v23 = v21[1];
    v24 = swift_task_alloc();
    v2[22] = v24;
    *v24 = v2;
    v24[1] = sub_21BBD47D0;
    v17 = v22;
    v18 = v20;
    v19 = v27;
  }

  return v19(v17, v18);
}

uint64_t sub_21BBD47D0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[2] = v2;
  v4[3] = a1;
  v4[4] = v1;
  v5 = v3[22];
  v16 = *v2;
  v4[23] = v1;

  if (v1)
  {
    v6 = v4[20];
    v7 = v4[21];
    v8 = sub_21BE28D0C();
    v10 = v9;
    v11 = sub_21BBDACBC;
  }

  else
  {
    v12 = v4[20];
    v13 = v4[21];
    v8 = sub_21BE28D0C();
    v10 = v14;
    v11 = sub_21BBD4A68;
  }

  return MEMORY[0x2822009F8](v11, v8, v10);
}

uint64_t sub_21BBD491C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[5] = v2;
  v4[6] = a1;
  v4[7] = v1;
  v5 = v3[24];
  v16 = *v2;
  v4[25] = v1;

  if (v1)
  {
    v6 = v4[20];
    v7 = v4[21];
    v8 = sub_21BE28D0C();
    v10 = v9;
    v11 = sub_21BBDACC0;
  }

  else
  {
    v12 = v4[20];
    v13 = v4[21];
    v8 = sub_21BE28D0C();
    v10 = v14;
    v11 = sub_21BBD4BBC;
  }

  return MEMORY[0x2822009F8](v11, v8, v10);
}

uint64_t sub_21BBD4A68()
{
  v1 = v0[3];
  v2 = v0[21];
  v3 = v0[11];

  v4 = sub_21BBDABBC(&qword_27CDB5F70, type metadata accessor for SharedPasswordsItemProvider);
  v5 = *(v4 + 40);
  v6 = type metadata accessor for SharedPasswordsItemProvider();
  v5(v1, v6, v4);
  if (qword_27CDB5030 != -1)
  {
    swift_once();
  }

  sub_21BE08934(*(v0[11] + qword_27CDB63F0), *(v0[11] + qword_27CDB63F0 + 8));
  v8 = v0[18];
  v7 = v0[19];
  v9 = v0[17];
  v10 = v0[14];

  v11 = v0[1];

  return v11();
}

uint64_t sub_21BBD4BBC()
{
  v1 = v0[6];
  v2 = v0[21];
  v3 = v0[11];

  v4 = sub_21BBDABBC(&qword_27CDB5F70, type metadata accessor for SharedPasswordsItemProvider);
  v5 = *(v4 + 40);
  v6 = type metadata accessor for SharedPasswordsItemProvider();
  v5(v1, v6, v4);
  if (qword_27CDB5030 != -1)
  {
    swift_once();
  }

  sub_21BE08934(*(v0[11] + qword_27CDB63F0), *(v0[11] + qword_27CDB63F0 + 8));
  v8 = v0[18];
  v7 = v0[19];
  v9 = v0[17];
  v10 = v0[14];

  v11 = v0[1];

  return v11();
}

uint64_t sub_21BBD4D10(char a1)
{
  v3 = v1;
  v2[11] = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5FF0, &qword_21BE33CF8);
  v2[12] = v5;
  v6 = *(v5 - 8);
  v2[13] = v6;
  v7 = *(v6 + 64) + 15;
  v2[14] = swift_task_alloc();
  v8 = sub_21BE26A4C();
  v2[15] = v8;
  v9 = *(v8 - 8);
  v2[16] = v9;
  v10 = *(v9 + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5F30, &unk_21BE33BD0) - 8) + 64) + 15;
  v2[19] = swift_task_alloc();
  v2[20] = sub_21BE28D7C();
  v2[21] = sub_21BE28D6C();
  if (a1)
  {
    v2[8] = v3;
    v12 = sub_21BBDABBC(&qword_27CDB5FF8, type metadata accessor for LocationItemProvider);
    v13 = *(v12 + 64);
    v14 = type metadata accessor for LocationItemProvider();
    v26 = (v13 + *v13);
    v15 = v13[1];
    v16 = swift_task_alloc();
    v2[24] = v16;
    *v16 = v2;
    v16[1] = sub_21BBD5220;
    v17 = v14;
    v18 = v12;
    v19 = v26;
  }

  else
  {
    v2[10] = v3;
    v20 = sub_21BBDABBC(&qword_27CDB5FF8, type metadata accessor for LocationItemProvider);
    v21 = *(v20 + 56);
    v22 = type metadata accessor for LocationItemProvider();
    v27 = (v21 + *v21);
    v23 = v21[1];
    v24 = swift_task_alloc();
    v2[22] = v24;
    *v24 = v2;
    v24[1] = sub_21BBD50D4;
    v17 = v22;
    v18 = v20;
    v19 = v27;
  }

  return v19(v17, v18);
}

uint64_t sub_21BBD50D4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[2] = v2;
  v4[3] = a1;
  v4[4] = v1;
  v5 = v3[22];
  v16 = *v2;
  v4[23] = v1;

  if (v1)
  {
    v6 = v4[20];
    v7 = v4[21];
    v8 = sub_21BE28D0C();
    v10 = v9;
    v11 = sub_21BBDACBC;
  }

  else
  {
    v12 = v4[20];
    v13 = v4[21];
    v8 = sub_21BE28D0C();
    v10 = v14;
    v11 = sub_21BBD536C;
  }

  return MEMORY[0x2822009F8](v11, v8, v10);
}

uint64_t sub_21BBD5220(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[5] = v2;
  v4[6] = a1;
  v4[7] = v1;
  v5 = v3[24];
  v16 = *v2;
  v4[25] = v1;

  if (v1)
  {
    v6 = v4[20];
    v7 = v4[21];
    v8 = sub_21BE28D0C();
    v10 = v9;
    v11 = sub_21BBDACC0;
  }

  else
  {
    v12 = v4[20];
    v13 = v4[21];
    v8 = sub_21BE28D0C();
    v10 = v14;
    v11 = sub_21BBD54C0;
  }

  return MEMORY[0x2822009F8](v11, v8, v10);
}

uint64_t sub_21BBD536C()
{
  v1 = v0[3];
  v2 = v0[21];
  v3 = v0[11];

  v4 = sub_21BBDABBC(&qword_27CDB6000, type metadata accessor for LocationItemProvider);
  v5 = *(v4 + 40);
  v6 = type metadata accessor for LocationItemProvider();
  v5(v1, v6, v4);
  if (qword_27CDB5030 != -1)
  {
    swift_once();
  }

  sub_21BE08934(*(v0[11] + qword_27CDB63F0), *(v0[11] + qword_27CDB63F0 + 8));
  v8 = v0[18];
  v7 = v0[19];
  v9 = v0[17];
  v10 = v0[14];

  v11 = v0[1];

  return v11();
}

uint64_t sub_21BBD54C0()
{
  v1 = v0[6];
  v2 = v0[21];
  v3 = v0[11];

  v4 = sub_21BBDABBC(&qword_27CDB6000, type metadata accessor for LocationItemProvider);
  v5 = *(v4 + 40);
  v6 = type metadata accessor for LocationItemProvider();
  v5(v1, v6, v4);
  if (qword_27CDB5030 != -1)
  {
    swift_once();
  }

  sub_21BE08934(*(v0[11] + qword_27CDB63F0), *(v0[11] + qword_27CDB63F0 + 8));
  v8 = v0[18];
  v7 = v0[19];
  v9 = v0[17];
  v10 = v0[14];

  v11 = v0[1];

  return v11();
}

uint64_t sub_21BBD5614(char a1)
{
  v3 = v1;
  v2[11] = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6038, &qword_21BE33D40);
  v2[12] = v5;
  v6 = *(v5 - 8);
  v2[13] = v6;
  v7 = *(v6 + 64) + 15;
  v2[14] = swift_task_alloc();
  v8 = sub_21BE26A4C();
  v2[15] = v8;
  v9 = *(v8 - 8);
  v2[16] = v9;
  v10 = *(v9 + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5F30, &unk_21BE33BD0) - 8) + 64) + 15;
  v2[19] = swift_task_alloc();
  v2[20] = sub_21BE28D7C();
  v2[21] = sub_21BE28D6C();
  if (a1)
  {
    v2[8] = v3;
    v12 = sub_21BBDABBC(&qword_27CDB6040, type metadata accessor for BeneficiaryItemProvider);
    v13 = *(v12 + 64);
    v14 = type metadata accessor for BeneficiaryItemProvider(0);
    v26 = (v13 + *v13);
    v15 = v13[1];
    v16 = swift_task_alloc();
    v2[24] = v16;
    *v16 = v2;
    v16[1] = sub_21BBD5B24;
    v17 = v14;
    v18 = v12;
    v19 = v26;
  }

  else
  {
    v2[10] = v3;
    v20 = sub_21BBDABBC(&qword_27CDB6040, type metadata accessor for BeneficiaryItemProvider);
    v21 = *(v20 + 56);
    v22 = type metadata accessor for BeneficiaryItemProvider(0);
    v27 = (v21 + *v21);
    v23 = v21[1];
    v24 = swift_task_alloc();
    v2[22] = v24;
    *v24 = v2;
    v24[1] = sub_21BBD59D8;
    v17 = v22;
    v18 = v20;
    v19 = v27;
  }

  return v19(v17, v18);
}

uint64_t sub_21BBD59D8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[2] = v2;
  v4[3] = a1;
  v4[4] = v1;
  v5 = v3[22];
  v16 = *v2;
  v4[23] = v1;

  if (v1)
  {
    v6 = v4[20];
    v7 = v4[21];
    v8 = sub_21BE28D0C();
    v10 = v9;
    v11 = sub_21BBDACBC;
  }

  else
  {
    v12 = v4[20];
    v13 = v4[21];
    v8 = sub_21BE28D0C();
    v10 = v14;
    v11 = sub_21BBD5C70;
  }

  return MEMORY[0x2822009F8](v11, v8, v10);
}

uint64_t sub_21BBD5B24(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[5] = v2;
  v4[6] = a1;
  v4[7] = v1;
  v5 = v3[24];
  v16 = *v2;
  v4[25] = v1;

  if (v1)
  {
    v6 = v4[20];
    v7 = v4[21];
    v8 = sub_21BE28D0C();
    v10 = v9;
    v11 = sub_21BBDACC0;
  }

  else
  {
    v12 = v4[20];
    v13 = v4[21];
    v8 = sub_21BE28D0C();
    v10 = v14;
    v11 = sub_21BBD5DC4;
  }

  return MEMORY[0x2822009F8](v11, v8, v10);
}

uint64_t sub_21BBD5C70()
{
  v1 = v0[3];
  v2 = v0[21];
  v3 = v0[11];

  v4 = sub_21BBDABBC(&qword_27CDB6048, type metadata accessor for BeneficiaryItemProvider);
  v5 = *(v4 + 40);
  v6 = type metadata accessor for BeneficiaryItemProvider(0);
  v5(v1, v6, v4);
  if (qword_27CDB5030 != -1)
  {
    swift_once();
  }

  sub_21BE08934(*(v0[11] + qword_27CDB63F0), *(v0[11] + qword_27CDB63F0 + 8));
  v8 = v0[18];
  v7 = v0[19];
  v9 = v0[17];
  v10 = v0[14];

  v11 = v0[1];

  return v11();
}

uint64_t sub_21BBD5DC4()
{
  v1 = v0[6];
  v2 = v0[21];
  v3 = v0[11];

  v4 = sub_21BBDABBC(&qword_27CDB6048, type metadata accessor for BeneficiaryItemProvider);
  v5 = *(v4 + 40);
  v6 = type metadata accessor for BeneficiaryItemProvider(0);
  v5(v1, v6, v4);
  if (qword_27CDB5030 != -1)
  {
    swift_once();
  }

  sub_21BE08934(*(v0[11] + qword_27CDB63F0), *(v0[11] + qword_27CDB63F0 + 8));
  v8 = v0[18];
  v7 = v0[19];
  v9 = v0[17];
  v10 = v0[14];

  v11 = v0[1];

  return v11();
}

uint64_t sub_21BBD5F18(char a1)
{
  v3 = v1;
  v2[11] = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6050, &qword_21BE33D58);
  v2[12] = v5;
  v6 = *(v5 - 8);
  v2[13] = v6;
  v7 = *(v6 + 64) + 15;
  v2[14] = swift_task_alloc();
  v8 = sub_21BE26A4C();
  v2[15] = v8;
  v9 = *(v8 - 8);
  v2[16] = v9;
  v10 = *(v9 + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5F30, &unk_21BE33BD0) - 8) + 64) + 15;
  v2[19] = swift_task_alloc();
  v2[20] = sub_21BE28D7C();
  v2[21] = sub_21BE28D6C();
  if (a1)
  {
    v2[8] = v3;
    v12 = sub_21BBDABBC(&qword_27CDB6058, type metadata accessor for EmergencyContactItemProvider);
    v13 = *(v12 + 64);
    v14 = type metadata accessor for EmergencyContactItemProvider(0);
    v26 = (v13 + *v13);
    v15 = v13[1];
    v16 = swift_task_alloc();
    v2[24] = v16;
    *v16 = v2;
    v16[1] = sub_21BBD6428;
    v17 = v14;
    v18 = v12;
    v19 = v26;
  }

  else
  {
    v2[10] = v3;
    v20 = sub_21BBDABBC(&qword_27CDB6058, type metadata accessor for EmergencyContactItemProvider);
    v21 = *(v20 + 56);
    v22 = type metadata accessor for EmergencyContactItemProvider(0);
    v27 = (v21 + *v21);
    v23 = v21[1];
    v24 = swift_task_alloc();
    v2[22] = v24;
    *v24 = v2;
    v24[1] = sub_21BBD62DC;
    v17 = v22;
    v18 = v20;
    v19 = v27;
  }

  return v19(v17, v18);
}

uint64_t sub_21BBD62DC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[2] = v2;
  v4[3] = a1;
  v4[4] = v1;
  v5 = v3[22];
  v16 = *v2;
  v4[23] = v1;

  if (v1)
  {
    v6 = v4[20];
    v7 = v4[21];
    v8 = sub_21BE28D0C();
    v10 = v9;
    v11 = sub_21BBDACBC;
  }

  else
  {
    v12 = v4[20];
    v13 = v4[21];
    v8 = sub_21BE28D0C();
    v10 = v14;
    v11 = sub_21BBD6574;
  }

  return MEMORY[0x2822009F8](v11, v8, v10);
}

uint64_t sub_21BBD6428(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[5] = v2;
  v4[6] = a1;
  v4[7] = v1;
  v5 = v3[24];
  v16 = *v2;
  v4[25] = v1;

  if (v1)
  {
    v6 = v4[20];
    v7 = v4[21];
    v8 = sub_21BE28D0C();
    v10 = v9;
    v11 = sub_21BBDACC0;
  }

  else
  {
    v12 = v4[20];
    v13 = v4[21];
    v8 = sub_21BE28D0C();
    v10 = v14;
    v11 = sub_21BBD66C8;
  }

  return MEMORY[0x2822009F8](v11, v8, v10);
}

uint64_t sub_21BBD6574()
{
  v1 = v0[3];
  v2 = v0[21];
  v3 = v0[11];

  v4 = sub_21BBDABBC(&qword_27CDB6060, type metadata accessor for EmergencyContactItemProvider);
  v5 = *(v4 + 40);
  v6 = type metadata accessor for EmergencyContactItemProvider(0);
  v5(v1, v6, v4);
  if (qword_27CDB5030 != -1)
  {
    swift_once();
  }

  sub_21BE08934(*(v0[11] + qword_27CDB63F0), *(v0[11] + qword_27CDB63F0 + 8));
  v8 = v0[18];
  v7 = v0[19];
  v9 = v0[17];
  v10 = v0[14];

  v11 = v0[1];

  return v11();
}

uint64_t sub_21BBD66C8()
{
  v1 = v0[6];
  v2 = v0[21];
  v3 = v0[11];

  v4 = sub_21BBDABBC(&qword_27CDB6060, type metadata accessor for EmergencyContactItemProvider);
  v5 = *(v4 + 40);
  v6 = type metadata accessor for EmergencyContactItemProvider(0);
  v5(v1, v6, v4);
  if (qword_27CDB5030 != -1)
  {
    swift_once();
  }

  sub_21BE08934(*(v0[11] + qword_27CDB63F0), *(v0[11] + qword_27CDB63F0 + 8));
  v8 = v0[18];
  v7 = v0[19];
  v9 = v0[17];
  v10 = v0[14];

  v11 = v0[1];

  return v11();
}

uint64_t sub_21BBD681C(char a1)
{
  v3 = v1;
  v2[11] = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6090, &qword_21BE33DA0);
  v2[12] = v5;
  v6 = *(v5 - 8);
  v2[13] = v6;
  v7 = *(v6 + 64) + 15;
  v2[14] = swift_task_alloc();
  v8 = sub_21BE26A4C();
  v2[15] = v8;
  v9 = *(v8 - 8);
  v2[16] = v9;
  v10 = *(v9 + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5F30, &unk_21BE33BD0) - 8) + 64) + 15;
  v2[19] = swift_task_alloc();
  v2[20] = sub_21BE28D7C();
  v2[21] = sub_21BE28D6C();
  if (a1)
  {
    v2[8] = v3;
    v12 = sub_21BBDABBC(&qword_27CDB6098, type metadata accessor for FamilyContactsItemProvider);
    v13 = *(v12 + 64);
    v14 = type metadata accessor for FamilyContactsItemProvider();
    v26 = (v13 + *v13);
    v15 = v13[1];
    v16 = swift_task_alloc();
    v2[24] = v16;
    *v16 = v2;
    v16[1] = sub_21BBD6D2C;
    v17 = v14;
    v18 = v12;
    v19 = v26;
  }

  else
  {
    v2[10] = v3;
    v20 = sub_21BBDABBC(&qword_27CDB6098, type metadata accessor for FamilyContactsItemProvider);
    v21 = *(v20 + 56);
    v22 = type metadata accessor for FamilyContactsItemProvider();
    v27 = (v21 + *v21);
    v23 = v21[1];
    v24 = swift_task_alloc();
    v2[22] = v24;
    *v24 = v2;
    v24[1] = sub_21BBD6BE0;
    v17 = v22;
    v18 = v20;
    v19 = v27;
  }

  return v19(v17, v18);
}

uint64_t sub_21BBD6BE0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[2] = v2;
  v4[3] = a1;
  v4[4] = v1;
  v5 = v3[22];
  v16 = *v2;
  v4[23] = v1;

  if (v1)
  {
    v6 = v4[20];
    v7 = v4[21];
    v8 = sub_21BE28D0C();
    v10 = v9;
    v11 = sub_21BBDACBC;
  }

  else
  {
    v12 = v4[20];
    v13 = v4[21];
    v8 = sub_21BE28D0C();
    v10 = v14;
    v11 = sub_21BBD6E78;
  }

  return MEMORY[0x2822009F8](v11, v8, v10);
}

uint64_t sub_21BBD6D2C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[5] = v2;
  v4[6] = a1;
  v4[7] = v1;
  v5 = v3[24];
  v16 = *v2;
  v4[25] = v1;

  if (v1)
  {
    v6 = v4[20];
    v7 = v4[21];
    v8 = sub_21BE28D0C();
    v10 = v9;
    v11 = sub_21BBDACC0;
  }

  else
  {
    v12 = v4[20];
    v13 = v4[21];
    v8 = sub_21BE28D0C();
    v10 = v14;
    v11 = sub_21BBD6FCC;
  }

  return MEMORY[0x2822009F8](v11, v8, v10);
}

uint64_t sub_21BBD6E78()
{
  v1 = v0[3];
  v2 = v0[21];
  v3 = v0[11];

  v4 = sub_21BBDABBC(&qword_27CDB60A0, type metadata accessor for FamilyContactsItemProvider);
  v5 = *(v4 + 40);
  v6 = type metadata accessor for FamilyContactsItemProvider();
  v5(v1, v6, v4);
  if (qword_27CDB5030 != -1)
  {
    swift_once();
  }

  sub_21BE08934(*(v0[11] + qword_27CDB63F0), *(v0[11] + qword_27CDB63F0 + 8));
  v8 = v0[18];
  v7 = v0[19];
  v9 = v0[17];
  v10 = v0[14];

  v11 = v0[1];

  return v11();
}

uint64_t sub_21BBD6FCC()
{
  v1 = v0[6];
  v2 = v0[21];
  v3 = v0[11];

  v4 = sub_21BBDABBC(&qword_27CDB60A0, type metadata accessor for FamilyContactsItemProvider);
  v5 = *(v4 + 40);
  v6 = type metadata accessor for FamilyContactsItemProvider();
  v5(v1, v6, v4);
  if (qword_27CDB5030 != -1)
  {
    swift_once();
  }

  sub_21BE08934(*(v0[11] + qword_27CDB63F0), *(v0[11] + qword_27CDB63F0 + 8));
  v8 = v0[18];
  v7 = v0[19];
  v9 = v0[17];
  v10 = v0[14];

  v11 = v0[1];

  return v11();
}

uint64_t sub_21BBD7120(char a1)
{
  v3 = v1;
  v2[11] = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5F90, &qword_21BE33C98);
  v2[12] = v5;
  v6 = *(v5 - 8);
  v2[13] = v6;
  v7 = *(v6 + 64) + 15;
  v2[14] = swift_task_alloc();
  v8 = sub_21BE26A4C();
  v2[15] = v8;
  v9 = *(v8 - 8);
  v2[16] = v9;
  v10 = *(v9 + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5F30, &unk_21BE33BD0) - 8) + 64) + 15;
  v2[19] = swift_task_alloc();
  v2[20] = sub_21BE28D7C();
  v2[21] = sub_21BE28D6C();
  if (a1)
  {
    v2[8] = v3;
    v12 = sub_21BBDABBC(&qword_27CDB5F98, type metadata accessor for SharedFamilyCalendarItemProvider);
    v13 = *(v12 + 64);
    v14 = type metadata accessor for SharedFamilyCalendarItemProvider();
    v26 = (v13 + *v13);
    v15 = v13[1];
    v16 = swift_task_alloc();
    v2[24] = v16;
    *v16 = v2;
    v16[1] = sub_21BBD7630;
    v17 = v14;
    v18 = v12;
    v19 = v26;
  }

  else
  {
    v2[10] = v3;
    v20 = sub_21BBDABBC(&qword_27CDB5F98, type metadata accessor for SharedFamilyCalendarItemProvider);
    v21 = *(v20 + 56);
    v22 = type metadata accessor for SharedFamilyCalendarItemProvider();
    v27 = (v21 + *v21);
    v23 = v21[1];
    v24 = swift_task_alloc();
    v2[22] = v24;
    *v24 = v2;
    v24[1] = sub_21BBD74E4;
    v17 = v22;
    v18 = v20;
    v19 = v27;
  }

  return v19(v17, v18);
}

uint64_t sub_21BBD74E4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[2] = v2;
  v4[3] = a1;
  v4[4] = v1;
  v5 = v3[22];
  v16 = *v2;
  v4[23] = v1;

  if (v1)
  {
    v6 = v4[20];
    v7 = v4[21];
    v8 = sub_21BE28D0C();
    v10 = v9;
    v11 = sub_21BBDACBC;
  }

  else
  {
    v12 = v4[20];
    v13 = v4[21];
    v8 = sub_21BE28D0C();
    v10 = v14;
    v11 = sub_21BBD777C;
  }

  return MEMORY[0x2822009F8](v11, v8, v10);
}

uint64_t sub_21BBD7630(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[5] = v2;
  v4[6] = a1;
  v4[7] = v1;
  v5 = v3[24];
  v16 = *v2;
  v4[25] = v1;

  if (v1)
  {
    v6 = v4[20];
    v7 = v4[21];
    v8 = sub_21BE28D0C();
    v10 = v9;
    v11 = sub_21BBDACC0;
  }

  else
  {
    v12 = v4[20];
    v13 = v4[21];
    v8 = sub_21BE28D0C();
    v10 = v14;
    v11 = sub_21BBD78D0;
  }

  return MEMORY[0x2822009F8](v11, v8, v10);
}

uint64_t sub_21BBD777C()
{
  v1 = v0[3];
  v2 = v0[21];
  v3 = v0[11];

  v4 = sub_21BBDABBC(&qword_27CDB5FA0, type metadata accessor for SharedFamilyCalendarItemProvider);
  v5 = *(v4 + 40);
  v6 = type metadata accessor for SharedFamilyCalendarItemProvider();
  v5(v1, v6, v4);
  if (qword_27CDB5030 != -1)
  {
    swift_once();
  }

  sub_21BE08934(*(v0[11] + qword_27CDB63F0), *(v0[11] + qword_27CDB63F0 + 8));
  v8 = v0[18];
  v7 = v0[19];
  v9 = v0[17];
  v10 = v0[14];

  v11 = v0[1];

  return v11();
}

uint64_t sub_21BBD78D0()
{
  v1 = v0[6];
  v2 = v0[21];
  v3 = v0[11];

  v4 = sub_21BBDABBC(&qword_27CDB5FA0, type metadata accessor for SharedFamilyCalendarItemProvider);
  v5 = *(v4 + 40);
  v6 = type metadata accessor for SharedFamilyCalendarItemProvider();
  v5(v1, v6, v4);
  if (qword_27CDB5030 != -1)
  {
    swift_once();
  }

  sub_21BE08934(*(v0[11] + qword_27CDB63F0), *(v0[11] + qword_27CDB63F0 + 8));
  v8 = v0[18];
  v7 = v0[19];
  v9 = v0[17];
  v10 = v0[14];

  v11 = v0[1];

  return v11();
}

uint64_t sub_21BBD7A24(char a1)
{
  v3 = v1;
  v2[11] = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB60C0, &qword_21BE33DD0);
  v2[12] = v5;
  v6 = *(v5 - 8);
  v2[13] = v6;
  v7 = *(v6 + 64) + 15;
  v2[14] = swift_task_alloc();
  v8 = sub_21BE26A4C();
  v2[15] = v8;
  v9 = *(v8 - 8);
  v2[16] = v9;
  v10 = *(v9 + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5F30, &unk_21BE33BD0) - 8) + 64) + 15;
  v2[19] = swift_task_alloc();
  v2[20] = sub_21BE28D7C();
  v2[21] = sub_21BE28D6C();
  if (a1)
  {
    v2[8] = v3;
    v12 = sub_21BBDABBC(&qword_27CDB60C8, type metadata accessor for HomeItemProvider);
    v13 = *(v12 + 64);
    v14 = type metadata accessor for HomeItemProvider();
    v26 = (v13 + *v13);
    v15 = v13[1];
    v16 = swift_task_alloc();
    v2[24] = v16;
    *v16 = v2;
    v16[1] = sub_21BBD7F34;
    v17 = v14;
    v18 = v12;
    v19 = v26;
  }

  else
  {
    v2[10] = v3;
    v20 = sub_21BBDABBC(&qword_27CDB60C8, type metadata accessor for HomeItemProvider);
    v21 = *(v20 + 56);
    v22 = type metadata accessor for HomeItemProvider();
    v27 = (v21 + *v21);
    v23 = v21[1];
    v24 = swift_task_alloc();
    v2[22] = v24;
    *v24 = v2;
    v24[1] = sub_21BBD7DE8;
    v17 = v22;
    v18 = v20;
    v19 = v27;
  }

  return v19(v17, v18);
}

uint64_t sub_21BBD7DE8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[2] = v2;
  v4[3] = a1;
  v4[4] = v1;
  v5 = v3[22];
  v16 = *v2;
  v4[23] = v1;

  if (v1)
  {
    v6 = v4[20];
    v7 = v4[21];
    v8 = sub_21BE28D0C();
    v10 = v9;
    v11 = sub_21BBDACBC;
  }

  else
  {
    v12 = v4[20];
    v13 = v4[21];
    v8 = sub_21BE28D0C();
    v10 = v14;
    v11 = sub_21BBD8080;
  }

  return MEMORY[0x2822009F8](v11, v8, v10);
}

uint64_t sub_21BBD7F34(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[5] = v2;
  v4[6] = a1;
  v4[7] = v1;
  v5 = v3[24];
  v16 = *v2;
  v4[25] = v1;

  if (v1)
  {
    v6 = v4[20];
    v7 = v4[21];
    v8 = sub_21BE28D0C();
    v10 = v9;
    v11 = sub_21BBDACC0;
  }

  else
  {
    v12 = v4[20];
    v13 = v4[21];
    v8 = sub_21BE28D0C();
    v10 = v14;
    v11 = sub_21BBD81D4;
  }

  return MEMORY[0x2822009F8](v11, v8, v10);
}

uint64_t sub_21BBD8080()
{
  v1 = v0[3];
  v2 = v0[21];
  v3 = v0[11];

  v4 = sub_21BBDABBC(&qword_27CDB60D0, type metadata accessor for HomeItemProvider);
  v5 = *(v4 + 40);
  v6 = type metadata accessor for HomeItemProvider();
  v5(v1, v6, v4);
  if (qword_27CDB5030 != -1)
  {
    swift_once();
  }

  sub_21BE08934(*(v0[11] + qword_27CDB63F0), *(v0[11] + qword_27CDB63F0 + 8));
  v8 = v0[18];
  v7 = v0[19];
  v9 = v0[17];
  v10 = v0[14];

  v11 = v0[1];

  return v11();
}

uint64_t sub_21BBD81D4()
{
  v1 = v0[6];
  v2 = v0[21];
  v3 = v0[11];

  v4 = sub_21BBDABBC(&qword_27CDB60D0, type metadata accessor for HomeItemProvider);
  v5 = *(v4 + 40);
  v6 = type metadata accessor for HomeItemProvider();
  v5(v1, v6, v4);
  if (qword_27CDB5030 != -1)
  {
    swift_once();
  }

  sub_21BE08934(*(v0[11] + qword_27CDB63F0), *(v0[11] + qword_27CDB63F0 + 8));
  v8 = v0[18];
  v7 = v0[19];
  v9 = v0[17];
  v10 = v0[14];

  v11 = v0[1];

  return v11();
}

uint64_t sub_21BBD8328(char a1)
{
  v3 = v1;
  v2[11] = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5FC0, &qword_21BE33CC8);
  v2[12] = v5;
  v6 = *(v5 - 8);
  v2[13] = v6;
  v7 = *(v6 + 64) + 15;
  v2[14] = swift_task_alloc();
  v8 = sub_21BE26A4C();
  v2[15] = v8;
  v9 = *(v8 - 8);
  v2[16] = v9;
  v10 = *(v9 + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5F30, &unk_21BE33BD0) - 8) + 64) + 15;
  v2[19] = swift_task_alloc();
  v2[20] = sub_21BE28D7C();
  v2[21] = sub_21BE28D6C();
  if (a1)
  {
    v2[8] = v3;
    v12 = sub_21BBDABBC(&qword_27CDB5FC8, type metadata accessor for PurchaseSharingItemProvider);
    v13 = *(v12 + 64);
    v14 = type metadata accessor for PurchaseSharingItemProvider(0);
    v26 = (v13 + *v13);
    v15 = v13[1];
    v16 = swift_task_alloc();
    v2[24] = v16;
    *v16 = v2;
    v16[1] = sub_21BBD8838;
    v17 = v14;
    v18 = v12;
    v19 = v26;
  }

  else
  {
    v2[10] = v3;
    v20 = sub_21BBDABBC(&qword_27CDB5FC8, type metadata accessor for PurchaseSharingItemProvider);
    v21 = *(v20 + 56);
    v22 = type metadata accessor for PurchaseSharingItemProvider(0);
    v27 = (v21 + *v21);
    v23 = v21[1];
    v24 = swift_task_alloc();
    v2[22] = v24;
    *v24 = v2;
    v24[1] = sub_21BBD86EC;
    v17 = v22;
    v18 = v20;
    v19 = v27;
  }

  return v19(v17, v18);
}

uint64_t sub_21BBD86EC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[2] = v2;
  v4[3] = a1;
  v4[4] = v1;
  v5 = v3[22];
  v16 = *v2;
  v4[23] = v1;

  if (v1)
  {
    v6 = v4[20];
    v7 = v4[21];
    v8 = sub_21BE28D0C();
    v10 = v9;
    v11 = sub_21BBDACBC;
  }

  else
  {
    v12 = v4[20];
    v13 = v4[21];
    v8 = sub_21BE28D0C();
    v10 = v14;
    v11 = sub_21BBD8984;
  }

  return MEMORY[0x2822009F8](v11, v8, v10);
}

uint64_t sub_21BBD8838(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[5] = v2;
  v4[6] = a1;
  v4[7] = v1;
  v5 = v3[24];
  v16 = *v2;
  v4[25] = v1;

  if (v1)
  {
    v6 = v4[20];
    v7 = v4[21];
    v8 = sub_21BE28D0C();
    v10 = v9;
    v11 = sub_21BBDACC0;
  }

  else
  {
    v12 = v4[20];
    v13 = v4[21];
    v8 = sub_21BE28D0C();
    v10 = v14;
    v11 = sub_21BBD8AD8;
  }

  return MEMORY[0x2822009F8](v11, v8, v10);
}

uint64_t sub_21BBD8984()
{
  v1 = v0[3];
  v2 = v0[21];
  v3 = v0[11];

  v4 = sub_21BBDABBC(&qword_27CDB5FD0, type metadata accessor for PurchaseSharingItemProvider);
  v5 = *(v4 + 40);
  v6 = type metadata accessor for PurchaseSharingItemProvider(0);
  v5(v1, v6, v4);
  if (qword_27CDB5030 != -1)
  {
    swift_once();
  }

  sub_21BE08934(*(v0[11] + qword_27CDB63F0), *(v0[11] + qword_27CDB63F0 + 8));
  v8 = v0[18];
  v7 = v0[19];
  v9 = v0[17];
  v10 = v0[14];

  v11 = v0[1];

  return v11();
}

uint64_t sub_21BBD8AD8()
{
  v1 = v0[6];
  v2 = v0[21];
  v3 = v0[11];

  v4 = sub_21BBDABBC(&qword_27CDB5FD0, type metadata accessor for PurchaseSharingItemProvider);
  v5 = *(v4 + 40);
  v6 = type metadata accessor for PurchaseSharingItemProvider(0);
  v5(v1, v6, v4);
  if (qword_27CDB5030 != -1)
  {
    swift_once();
  }

  sub_21BE08934(*(v0[11] + qword_27CDB63F0), *(v0[11] + qword_27CDB63F0 + 8));
  v8 = v0[18];
  v7 = v0[19];
  v9 = v0[17];
  v10 = v0[14];

  v11 = v0[1];

  return v11();
}

uint64_t sub_21BBD8C2C(char a1)
{
  v3 = v1;
  v2[11] = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6008, &qword_21BE33D10);
  v2[12] = v5;
  v6 = *(v5 - 8);
  v2[13] = v6;
  v7 = *(v6 + 64) + 15;
  v2[14] = swift_task_alloc();
  v8 = sub_21BE26A4C();
  v2[15] = v8;
  v9 = *(v8 - 8);
  v2[16] = v9;
  v10 = *(v9 + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5F30, &unk_21BE33BD0) - 8) + 64) + 15;
  v2[19] = swift_task_alloc();
  v2[20] = sub_21BE28D7C();
  v2[21] = sub_21BE28D6C();
  if (a1)
  {
    v2[8] = v3;
    v12 = sub_21BBDABBC(&qword_27CDB6010, type metadata accessor for RecoveryContactItemProvider);
    v13 = *(v12 + 64);
    v14 = type metadata accessor for RecoveryContactItemProvider(0);
    v26 = (v13 + *v13);
    v15 = v13[1];
    v16 = swift_task_alloc();
    v2[24] = v16;
    *v16 = v2;
    v16[1] = sub_21BBD913C;
    v17 = v14;
    v18 = v12;
    v19 = v26;
  }

  else
  {
    v2[10] = v3;
    v20 = sub_21BBDABBC(&qword_27CDB6010, type metadata accessor for RecoveryContactItemProvider);
    v21 = *(v20 + 56);
    v22 = type metadata accessor for RecoveryContactItemProvider(0);
    v27 = (v21 + *v21);
    v23 = v21[1];
    v24 = swift_task_alloc();
    v2[22] = v24;
    *v24 = v2;
    v24[1] = sub_21BBD8FF0;
    v17 = v22;
    v18 = v20;
    v19 = v27;
  }

  return v19(v17, v18);
}

uint64_t sub_21BBD8FF0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[2] = v2;
  v4[3] = a1;
  v4[4] = v1;
  v5 = v3[22];
  v16 = *v2;
  v4[23] = v1;

  if (v1)
  {
    v6 = v4[20];
    v7 = v4[21];
    v8 = sub_21BE28D0C();
    v10 = v9;
    v11 = sub_21BBDACBC;
  }

  else
  {
    v12 = v4[20];
    v13 = v4[21];
    v8 = sub_21BE28D0C();
    v10 = v14;
    v11 = sub_21BBD9288;
  }

  return MEMORY[0x2822009F8](v11, v8, v10);
}

uint64_t sub_21BBD913C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[5] = v2;
  v4[6] = a1;
  v4[7] = v1;
  v5 = v3[24];
  v16 = *v2;
  v4[25] = v1;

  if (v1)
  {
    v6 = v4[20];
    v7 = v4[21];
    v8 = sub_21BE28D0C();
    v10 = v9;
    v11 = sub_21BBDACC0;
  }

  else
  {
    v12 = v4[20];
    v13 = v4[21];
    v8 = sub_21BE28D0C();
    v10 = v14;
    v11 = sub_21BBD93DC;
  }

  return MEMORY[0x2822009F8](v11, v8, v10);
}

uint64_t sub_21BBD9288()
{
  v1 = v0[3];
  v2 = v0[21];
  v3 = v0[11];

  v4 = sub_21BBDABBC(&qword_27CDB6018, type metadata accessor for RecoveryContactItemProvider);
  v5 = *(v4 + 40);
  v6 = type metadata accessor for RecoveryContactItemProvider(0);
  v5(v1, v6, v4);
  if (qword_27CDB5030 != -1)
  {
    swift_once();
  }

  sub_21BE08934(*(v0[11] + qword_27CDB63F0), *(v0[11] + qword_27CDB63F0 + 8));
  v8 = v0[18];
  v7 = v0[19];
  v9 = v0[17];
  v10 = v0[14];

  v11 = v0[1];

  return v11();
}

uint64_t sub_21BBD93DC()
{
  v1 = v0[6];
  v2 = v0[21];
  v3 = v0[11];

  v4 = sub_21BBDABBC(&qword_27CDB6018, type metadata accessor for RecoveryContactItemProvider);
  v5 = *(v4 + 40);
  v6 = type metadata accessor for RecoveryContactItemProvider(0);
  v5(v1, v6, v4);
  if (qword_27CDB5030 != -1)
  {
    swift_once();
  }

  sub_21BE08934(*(v0[11] + qword_27CDB63F0), *(v0[11] + qword_27CDB63F0 + 8));
  v8 = v0[18];
  v7 = v0[19];
  v9 = v0[17];
  v10 = v0[14];

  v11 = v0[1];

  return v11();
}

uint64_t sub_21BBD9530(char a1)
{
  v3 = v1;
  v2[11] = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB60A8, &qword_21BE33DB8);
  v2[12] = v5;
  v6 = *(v5 - 8);
  v2[13] = v6;
  v7 = *(v6 + 64) + 15;
  v2[14] = swift_task_alloc();
  v8 = sub_21BE26A4C();
  v2[15] = v8;
  v9 = *(v8 - 8);
  v2[16] = v9;
  v10 = *(v9 + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5F30, &unk_21BE33BD0) - 8) + 64) + 15;
  v2[19] = swift_task_alloc();
  v2[20] = sub_21BE28D7C();
  v2[21] = sub_21BE28D6C();
  if (a1)
  {
    v2[8] = v3;
    v12 = sub_21BBDABBC(&qword_27CDB60B0, type metadata accessor for CommLimitsItemProvider);
    v13 = *(v12 + 64);
    v14 = type metadata accessor for CommLimitsItemProvider(0);
    v26 = (v13 + *v13);
    v15 = v13[1];
    v16 = swift_task_alloc();
    v2[24] = v16;
    *v16 = v2;
    v16[1] = sub_21BBD9A40;
    v17 = v14;
    v18 = v12;
    v19 = v26;
  }

  else
  {
    v2[10] = v3;
    v20 = sub_21BBDABBC(&qword_27CDB60B0, type metadata accessor for CommLimitsItemProvider);
    v21 = *(v20 + 56);
    v22 = type metadata accessor for CommLimitsItemProvider(0);
    v27 = (v21 + *v21);
    v23 = v21[1];
    v24 = swift_task_alloc();
    v2[22] = v24;
    *v24 = v2;
    v24[1] = sub_21BBD98F4;
    v17 = v22;
    v18 = v20;
    v19 = v27;
  }

  return v19(v17, v18);
}

uint64_t sub_21BBD98F4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[2] = v2;
  v4[3] = a1;
  v4[4] = v1;
  v5 = v3[22];
  v16 = *v2;
  v4[23] = v1;

  if (v1)
  {
    v6 = v4[20];
    v7 = v4[21];
    v8 = sub_21BE28D0C();
    v10 = v9;
    v11 = sub_21BBD9CE0;
  }

  else
  {
    v12 = v4[20];
    v13 = v4[21];
    v8 = sub_21BE28D0C();
    v10 = v14;
    v11 = sub_21BBD9B8C;
  }

  return MEMORY[0x2822009F8](v11, v8, v10);
}

uint64_t sub_21BBD9A40(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[5] = v2;
  v4[6] = a1;
  v4[7] = v1;
  v5 = v3[24];
  v16 = *v2;
  v4[25] = v1;

  if (v1)
  {
    v6 = v4[20];
    v7 = v4[21];
    v8 = sub_21BE28D0C();
    v10 = v9;
    v11 = sub_21BBDA328;
  }

  else
  {
    v12 = v4[20];
    v13 = v4[21];
    v8 = sub_21BE28D0C();
    v10 = v14;
    v11 = sub_21BBDA1D4;
  }

  return MEMORY[0x2822009F8](v11, v8, v10);
}

uint64_t sub_21BBD9B8C()
{
  v1 = v0[3];
  v2 = v0[21];
  v3 = v0[11];

  v4 = sub_21BBDABBC(&qword_27CDB60B8, type metadata accessor for CommLimitsItemProvider);
  v5 = *(v4 + 40);
  v6 = type metadata accessor for CommLimitsItemProvider(0);
  v5(v1, v6, v4);
  if (qword_27CDB5030 != -1)
  {
    swift_once();
  }

  sub_21BE08934(*(v0[11] + qword_27CDB63F0), *(v0[11] + qword_27CDB63F0 + 8));
  v8 = v0[18];
  v7 = v0[19];
  v9 = v0[17];
  v10 = v0[14];

  v11 = v0[1];

  return v11();
}

uint64_t sub_21BBD9CE0()
{
  v50 = v0;
  v1 = v0[21];

  v2 = v0[23];
  v0[9] = v2;
  v3 = v0[19];
  v4 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAFB0, &qword_21BE3AAD0);
  v5 = sub_21BE28D3C();
  v6 = swift_dynamicCast();
  v7 = *(*(v5 - 8) + 56);
  v8 = v0[19];
  v9 = v0[11];
  if (!v6)
  {
    v24 = v0[17];
    v7(v8, 1, 1, v5);
    sub_21BB3A4CC(v8, &qword_27CDB5F30, &unk_21BE33BD0);
    sub_21BE261BC();
    v48 = 0;
    v49 = 0xE000000000000000;
    v25 = v2;
    sub_21BE295EC();

    v26 = *&v9[qword_27CDB63F0 + 8];
    v48 = *&v9[qword_27CDB63F0];
    v49 = v26;

    result = MEMORY[0x21CF03CA0](23328, 0xE200000000000000);
    if (*&v9[qword_27CDB6400])
    {
      v28 = v0[16];
      v27 = v0[17];
      v29 = v0[14];
      v47 = v0[15];
      v31 = v0[12];
      v30 = v0[13];

      sub_21BE262BC();

      v32 = sub_21BE2628C();
      v34 = v33;
      (*(v30 + 8))(v29, v31);
      MEMORY[0x21CF03CA0](v32, v34);

      MEMORY[0x21CF03CA0](0x3A726F727265205DLL, 0xEB00000000402520);
      sub_21BC51D50(v2);

      (*(v28 + 8))(v27, v47);
      goto LABEL_8;
    }

    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  v10 = v0[18];
  v7(v8, 0, 1, v5);
  sub_21BB3A4CC(v8, &qword_27CDB5F30, &unk_21BE33BD0);
  sub_21BE261BC();
  v11 = v9;
  v12 = sub_21BE26A2C();
  v13 = sub_21BE28FFC();

  if (!os_log_type_enabled(v12, v13))
  {
    v35 = v0[18];
    v36 = v0[15];
    v37 = v0[16];

    (*(v37 + 8))(v35, v36);
    goto LABEL_8;
  }

  v14 = v0[11];
  v15 = swift_slowAlloc();
  v46 = swift_slowAlloc();
  v48 = v46;
  *v15 = 136315394;
  result = sub_21BB3D81C(*(v14 + qword_27CDB63F0), *(v14 + qword_27CDB63F0 + 8), &v48);
  *(v15 + 4) = result;
  *(v15 + 12) = 2080;
  if (!*(v14 + qword_27CDB6400))
  {
    goto LABEL_14;
  }

  v43 = v0[16];
  v44 = v0[15];
  v45 = v0[18];
  v17 = v0[13];
  v18 = v0[14];
  v19 = v0[12];

  sub_21BE262BC();

  v20 = sub_21BE2628C();
  v22 = v21;
  (*(v17 + 8))(v18, v19);
  v23 = sub_21BB3D81C(v20, v22, &v48);

  *(v15 + 14) = v23;
  _os_log_impl(&dword_21BB35000, v12, v13, "%s [%s] cancelled", v15, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x21CF05C50](v46, -1, -1);
  MEMORY[0x21CF05C50](v15, -1, -1);

  (*(v43 + 8))(v45, v44);
LABEL_8:
  if (qword_27CDB5030 != -1)
  {
    swift_once();
  }

  sub_21BE08A90(*(v0[11] + qword_27CDB63F0), *(v0[11] + qword_27CDB63F0 + 8), v2);

  v39 = v0[18];
  v38 = v0[19];
  v40 = v0[17];
  v41 = v0[14];

  v42 = v0[1];

  return v42();
}

uint64_t sub_21BBDA1D4()
{
  v1 = v0[6];
  v2 = v0[21];
  v3 = v0[11];

  v4 = sub_21BBDABBC(&qword_27CDB60B8, type metadata accessor for CommLimitsItemProvider);
  v5 = *(v4 + 40);
  v6 = type metadata accessor for CommLimitsItemProvider(0);
  v5(v1, v6, v4);
  if (qword_27CDB5030 != -1)
  {
    swift_once();
  }

  sub_21BE08934(*(v0[11] + qword_27CDB63F0), *(v0[11] + qword_27CDB63F0 + 8));
  v8 = v0[18];
  v7 = v0[19];
  v9 = v0[17];
  v10 = v0[14];

  v11 = v0[1];

  return v11();
}

uint64_t sub_21BBDA328()
{
  v50 = v0;
  v1 = v0[21];

  v2 = v0[25];
  v0[9] = v2;
  v3 = v0[19];
  v4 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAFB0, &qword_21BE3AAD0);
  v5 = sub_21BE28D3C();
  v6 = swift_dynamicCast();
  v7 = *(*(v5 - 8) + 56);
  v8 = v0[19];
  v9 = v0[11];
  if (!v6)
  {
    v24 = v0[17];
    v7(v8, 1, 1, v5);
    sub_21BB3A4CC(v8, &qword_27CDB5F30, &unk_21BE33BD0);
    sub_21BE261BC();
    v48 = 0;
    v49 = 0xE000000000000000;
    v25 = v2;
    sub_21BE295EC();

    v26 = *&v9[qword_27CDB63F0 + 8];
    v48 = *&v9[qword_27CDB63F0];
    v49 = v26;

    result = MEMORY[0x21CF03CA0](23328, 0xE200000000000000);
    if (*&v9[qword_27CDB6400])
    {
      v28 = v0[16];
      v27 = v0[17];
      v29 = v0[14];
      v47 = v0[15];
      v31 = v0[12];
      v30 = v0[13];

      sub_21BE262BC();

      v32 = sub_21BE2628C();
      v34 = v33;
      (*(v30 + 8))(v29, v31);
      MEMORY[0x21CF03CA0](v32, v34);

      MEMORY[0x21CF03CA0](0x3A726F727265205DLL, 0xEB00000000402520);
      sub_21BC51D50(v2);

      (*(v28 + 8))(v27, v47);
      goto LABEL_8;
    }

    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  v10 = v0[18];
  v7(v8, 0, 1, v5);
  sub_21BB3A4CC(v8, &qword_27CDB5F30, &unk_21BE33BD0);
  sub_21BE261BC();
  v11 = v9;
  v12 = sub_21BE26A2C();
  v13 = sub_21BE28FFC();

  if (!os_log_type_enabled(v12, v13))
  {
    v35 = v0[18];
    v36 = v0[15];
    v37 = v0[16];

    (*(v37 + 8))(v35, v36);
    goto LABEL_8;
  }

  v14 = v0[11];
  v15 = swift_slowAlloc();
  v46 = swift_slowAlloc();
  v48 = v46;
  *v15 = 136315394;
  result = sub_21BB3D81C(*(v14 + qword_27CDB63F0), *(v14 + qword_27CDB63F0 + 8), &v48);
  *(v15 + 4) = result;
  *(v15 + 12) = 2080;
  if (!*(v14 + qword_27CDB6400))
  {
    goto LABEL_14;
  }

  v43 = v0[16];
  v44 = v0[15];
  v45 = v0[18];
  v17 = v0[13];
  v18 = v0[14];
  v19 = v0[12];

  sub_21BE262BC();

  v20 = sub_21BE2628C();
  v22 = v21;
  (*(v17 + 8))(v18, v19);
  v23 = sub_21BB3D81C(v20, v22, &v48);

  *(v15 + 14) = v23;
  _os_log_impl(&dword_21BB35000, v12, v13, "%s [%s] cancelled", v15, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x21CF05C50](v46, -1, -1);
  MEMORY[0x21CF05C50](v15, -1, -1);

  (*(v43 + 8))(v45, v44);
LABEL_8:
  if (qword_27CDB5030 != -1)
  {
    swift_once();
  }

  sub_21BE08A90(*(v0[11] + qword_27CDB63F0), *(v0[11] + qword_27CDB63F0 + 8), v2);

  v39 = v0[18];
  v38 = v0[19];
  v40 = v0[17];
  v41 = v0[14];

  v42 = v0[1];

  return v42();
}

uint64_t sub_21BBDA81C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_21BBBF5B8();
  *a2 = result;
  return result;
}

uint64_t sub_21BBDA848(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_21BBBF678();
}

unint64_t sub_21BBDA874(char a1)
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

unint64_t sub_21BBDAA6C()
{
  result = qword_27CDB5F58;
  if (!qword_27CDB5F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB5F58);
  }

  return result;
}

unint64_t sub_21BBDAAC0()
{
  result = qword_27CDB5F88;
  if (!qword_27CDB5F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB5F88);
  }

  return result;
}

uint64_t sub_21BBDAB14(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_21BBDAB68()
{
  result = qword_27CDB5FB8;
  if (!qword_27CDB5FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB5FB8);
  }

  return result;
}

uint64_t sub_21BBDABBC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21BBDAC04(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21BBA6A64;

  return sub_21BBCE924(a1, v4, v5, v6);
}

uint64_t type metadata accessor for AppleCardFamilySettingsCell()
{
  result = qword_27CDB60F8;
  if (!qword_27CDB60F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21BBDAD40()
{
  sub_21BBDADDC();
  if (v0 <= 0x3F)
  {
    sub_21BBDAE70();
    if (v1 <= 0x3F)
    {
      sub_21BBDAF50();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21BBDADDC()
{
  if (!qword_27CDB6108)
  {
    type metadata accessor for AppleCardFamilySettingsViewModel();
    sub_21BBDD940(&unk_27CDB5760, type metadata accessor for AppleCardFamilySettingsViewModel);
    v0 = sub_21BE270DC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDB6108);
    }
  }
}

void sub_21BBDAE70()
{
  if (!qword_27CDB6110)
  {
    sub_21BBDAF04();
    sub_21BBDD940(&qword_280BD8A20, sub_21BBDAF04);
    v0 = sub_21BE270DC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDB6110);
    }
  }
}

unint64_t sub_21BBDAF04()
{
  result = qword_280BD8A10;
  if (!qword_280BD8A10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280BD8A10);
  }

  return result;
}

void sub_21BBDAF50()
{
  if (!qword_27CDB6118)
  {
    sub_21BE27B0C();
    v0 = sub_21BE26E8C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDB6118);
    }
  }
}

uint64_t sub_21BBDAFC4@<X0>(uint64_t a1@<X8>)
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
  v12 = type metadata accessor for AppleCardFamilySettingsCell();
  sub_21BBA3854(v1 + *(v12 + 24), v11, &qword_27CDB6138, &qword_21BE33F20);
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

uint64_t sub_21BBDB1CC@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v2 = type metadata accessor for AppleCardFamilySettingsCell();
  v31 = *(v2 - 8);
  v3 = *(v31 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6120, &unk_21BE33E90);
  v4 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32);
  v6 = &v31 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6128, &qword_21BE48D20);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v31 - v9;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6130, &qword_21BE33EA0);
  v11 = *(v33 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v33);
  v14 = &v31 - v13;
  v15 = *(v1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  if (v37 == 1)
  {
    v17 = MEMORY[0x28223BE20](v16);
    *(&v31 - 2) = v1;
    v18 = MEMORY[0x28223BE20](v17);
    *(&v31 - 2) = v1;
    MEMORY[0x28223BE20](v18);
    *(&v31 - 2) = sub_21BBDD250;
    *(&v31 - 1) = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB61A0, &qword_21BE33F48);
    sub_21BBDD2B0();
    sub_21BE268EC();
    v20 = sub_21BE268FC();
    v21 = (*(*(v20 - 8) + 56))(v10, 0, 1, v20);
    MEMORY[0x28223BE20](v21);
    *(&v31 - 2) = sub_21BBDD258;
    *(&v31 - 1) = (&v31 - 4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB61D0, &unk_21BE33F58);
    sub_21BBDD4C0();
    sub_21BBDD940(&qword_27CDB61E8, MEMORY[0x277D40260]);
    sub_21BE2709C();
    v22 = v33;
    (*(v11 + 16))(v6, v14, v33);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6140, &qword_21BE33F28);
    sub_21BB3B038(&qword_27CDB6148, &qword_27CDB6130, &qword_21BE33EA0);
    sub_21BBDCF84();
    sub_21BE2784C();
    return (*(v11 + 8))(v14, v22);
  }

  else
  {
    type metadata accessor for AppleCardFamilySettingsViewModel();
    sub_21BBDD940(&unk_27CDB5760, type metadata accessor for AppleCardFamilySettingsViewModel);
    v24 = v15;
    v25 = sub_21BE270CC();
    v27 = v26;
    KeyPath = swift_getKeyPath();
    v36 = 0;
    v35 = 0;
    sub_21BBDCE5C(v1, &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
    v29 = (*(v31 + 80) + 16) & ~*(v31 + 80);
    v30 = swift_allocObject();
    sub_21BBDCEC0(&v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v30 + v29);
    *v6 = v25;
    *(v6 + 1) = v27;
    *(v6 + 2) = sub_21BBDC524;
    *(v6 + 3) = 0;
    v6[32] = 0;
    v6[40] = 1;
    *(v6 + 6) = KeyPath;
    *(v6 + 28) = 0;
    *(v6 + 8) = sub_21BBDCF24;
    *(v6 + 9) = v30;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6140, &qword_21BE33F28);
    sub_21BB3B038(&qword_27CDB6148, &qword_27CDB6130, &qword_21BE33EA0);
    sub_21BBDCF84();
    return sub_21BE2784C();
  }
}

uint64_t sub_21BBDB7F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 24);
  type metadata accessor for AppleCardFamilySettingsViewModel();
  sub_21BBDD940(&unk_27CDB5760, type metadata accessor for AppleCardFamilySettingsViewModel);
  v5 = v4;
  v6 = v3;
  v7 = sub_21BE270CC();
  v9 = v8;
  sub_21BBDAF04();
  sub_21BBDD940(&qword_280BD8A20, sub_21BBDAF04);
  v10 = sub_21BE270CC();
  v12 = v11;
  result = sub_21BE27B7C();
  *a2 = v7;
  *(a2 + 8) = v9;
  *(a2 + 16) = v10;
  *(a2 + 24) = v12;
  *(a2 + 32) = result;
  return result;
}

uint64_t sub_21BBDB8F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  type metadata accessor for AppleCardFamilySettingsViewModel();
  sub_21BBDD940(&unk_27CDB5760, type metadata accessor for AppleCardFamilySettingsViewModel);
  v4 = v3;
  result = sub_21BE270CC();
  *a2 = result;
  *(a2 + 8) = v6;
  *(a2 + 16) = sub_21BBDC524;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  return result;
}

uint64_t sub_21BBDB990(uint64_t a1)
{
  v2 = sub_21BE27B0C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21BBDAFC4(v6);
  v9 = a1;
  sub_21BE27AFC();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_21BBDBA7C(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for AppleCardFamilySettingsCell();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v20 - v10;
  v12 = sub_21BE28DAC();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_21BBDCE5C(a2, v7);
  sub_21BE28D7C();
  v13 = a1;
  v14 = sub_21BE28D6C();
  v15 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v16 = (v6 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D85700];
  *(v17 + 16) = v14;
  *(v17 + 24) = v18;
  sub_21BBDCEC0(v7, v17 + v15);
  *(v17 + v16) = a1;
  sub_21BBA932C(0, 0, v11, &unk_21BE33F70, v17);
}

uint64_t sub_21BBDBC54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_21BE28D7C();
  v5[4] = sub_21BE28D6C();
  v7 = sub_21BE28D0C();
  v5[5] = v7;
  v5[6] = v6;

  return MEMORY[0x2822009F8](sub_21BBDBCEC, v7, v6);
}

uint64_t sub_21BBDBCEC()
{
  v1 = [*(v0 + 24) navigationController];
  *(v0 + 56) = v1;
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_21BBDBDA0;
  v3 = *(v0 + 16);

  return sub_21BBDBF40(v1);
}

uint64_t sub_21BBDBDA0()
{
  v1 = *v0;
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);
  v7 = *v0;

  v4 = *(v1 + 48);
  v5 = *(v1 + 40);

  return MEMORY[0x2822009F8](sub_21BBDBEE0, v5, v4);
}

uint64_t sub_21BBDBEE0()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21BBDBF40(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v3 = sub_21BE26A4C();
  v2[20] = v3;
  v4 = *(v3 - 8);
  v2[21] = v4;
  v5 = *(v4 + 64) + 15;
  v2[22] = swift_task_alloc();
  sub_21BE28D7C();
  v2[23] = sub_21BE28D6C();
  v7 = sub_21BE28D0C();
  v2[24] = v7;
  v2[25] = v6;

  return MEMORY[0x2822009F8](sub_21BBDC034, v7, v6);
}

uint64_t sub_21BBDC034()
{
  v1 = *(v0 + 144);
  if (v1)
  {
    v2 = *(*(v0 + 152) + 8);
    swift_getKeyPath();
    swift_getKeyPath();
    v3 = v1;
    sub_21BE26CAC();

    if (*(v0 + 216))
    {
      *(v0 + 208) = *(v2 + OBJC_IVAR____TtC14FamilyCircleUI32AppleCardFamilySettingsViewModel_appleCardUtilities);
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 217;
      *(v0 + 24) = sub_21BBDC230;
      v4 = swift_continuation_init();
      *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB61F0, &qword_21BE39610);
      *(v0 + 80) = MEMORY[0x277D85DD0];
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_21BBDC4C4;
      *(v0 + 104) = &block_descriptor_1;
      *(v0 + 112) = v4;
      [swift_unknownObjectRetain() presentAppleCardUserInvitationFlowWithViewController:v3 completion:v0 + 80];

      return MEMORY[0x282200938](v0 + 16);
    }

    v6 = *(v0 + 184);
  }

  else
  {
    v5 = *(v0 + 184);
  }

  v7 = *(v0 + 176);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_21BBDC230()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 192);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_21BBDC338, v2, v1);
}

uint64_t sub_21BBDC338()
{
  v21 = v0;
  v1 = *(v0 + 208);
  v3 = *(v0 + 176);
  v2 = *(v0 + 184);
  v4 = *(v0 + 144);

  v5 = *(v0 + 217);
  swift_unknownObjectRelease();

  sub_21BE2614C();
  v6 = sub_21BE26A2C();
  v7 = sub_21BE28FFC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 67109120;
    *(v8 + 4) = v5;
    _os_log_impl(&dword_21BB35000, v6, v7, "AppleCardFamilySettingsCell presentAppleCardUserInvitationFlow %{BOOL}d", v8, 8u);
    MEMORY[0x21CF05C50](v8, -1, -1);
  }

  v10 = *(v0 + 168);
  v9 = *(v0 + 176);
  v11 = *(v0 + 160);

  (*(v10 + 8))(v9, v11);
  if (qword_27CDB4F90 != -1)
  {
    swift_once();
  }

  v12 = *(v0 + 144);
  v16[0] = 0;
  v17 = xmmword_21BE33DF0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  sub_21BD23430(v16);

  v13 = *(v0 + 176);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_21BBDC4C4(uint64_t a1, char a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  **(*(v3 + 64) + 40) = a2;

  return MEMORY[0x282200948](v3);
}

void *sub_21BBDC524()
{
  type metadata accessor for AppleCardFamilyCache();
  swift_allocObject();
  return sub_21BE206D4();
}

uint64_t sub_21BBDC55C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for FamilyChecklistStore();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = sub_21BE289CC();
  v7 = [objc_opt_self() imageNamed:v6 inBundle:v5 withConfiguration:0];

  if (v7)
  {
    v8 = sub_21BE2836C();
    v9 = sub_21BE2771C();
    v48 = 1;
    sub_21BBDC868(a1, v49);
    *&v47[7] = v49[0];
    *&v47[23] = v49[1];
    *&v47[39] = v49[2];
    *&v47[55] = v49[3];
    v10 = v48;
    sub_21BE286AC();
    sub_21BE2725C();
    v32 = v9;
    v33[0] = v10;
    *&v33[17] = *&v47[16];
    *&v33[33] = *&v47[32];
    *&v33[49] = *&v47[48];
    *&v33[64] = *&v47[63];
    *&v33[1] = *v47;
    v11 = v27;
    *&v33[120] = v28;
    v12 = v28;
    *&v33[136] = v29;
    v13 = v29;
    *&v33[152] = v30;
    v14 = v30;
    *&v33[168] = v31;
    *&v33[72] = v25;
    v15 = v25;
    v16 = v26;
    *&v33[88] = v26;
    *&v33[104] = v27;
    v17 = *&v33[48];
    *(a2 + 88) = *&v33[64];
    v18 = *&v33[96];
    *(a2 + 104) = *&v33[80];
    *(a2 + 120) = v18;
    v19 = *v33;
    *(a2 + 8) = v32;
    *(a2 + 72) = v17;
    v20 = *&v33[16];
    *(a2 + 56) = *&v33[32];
    *(a2 + 40) = v20;
    *(a2 + 24) = v19;
    v21 = *&v33[144];
    *(a2 + 184) = *&v33[160];
    *(a2 + 168) = v21;
    v22 = *&v33[112];
    *(a2 + 152) = *&v33[128];
    *(a2 + 136) = v22;
    v37 = *&v47[16];
    v38 = *&v47[32];
    *v39 = *&v47[48];
    v36 = *v47;
    v43 = v12;
    v44 = v13;
    v45 = v14;
    v46 = v31;
    v40 = v15;
    v41 = v16;
    *a2 = v8;
    *(a2 + 200) = *&v33[176];
    v34[0] = v9;
    v34[1] = 0;
    v35 = v10;
    *&v39[15] = *&v47[63];
    v42 = v11;

    sub_21BBA3854(&v32, v24, &qword_27CDB6210, &qword_21BE340D0);
    sub_21BB3A4CC(v34, &qword_27CDB6210, &qword_21BE340D0);
  }

  else
  {
    result = sub_21BE2978C();
    __break(1u);
  }

  return result;
}

uint64_t sub_21BBDC868@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_21BE2599C();

  sub_21BB41FA4();
  v6 = sub_21BE27DBC();
  v8 = v7;
  v10 = v9;
  sub_21BE2832C();
  v11 = sub_21BE27D4C();
  v36 = v12;
  v37 = v11;
  v35 = v13;
  v38 = v14;

  sub_21BBC7C7C(v6, v8, v10 & 1);

  v15 = *(a1 + 16);
  v16 = *(a1 + 24);
  v17 = *(a1 + 32);
  sub_21BBDD7B8();
  v18 = sub_21BE27DBC();
  v20 = v19;
  v22 = v21;
  sub_21BE27BEC();
  v23 = sub_21BE27D9C();
  v25 = v24;
  LOBYTE(v5) = v26;

  sub_21BBC7C7C(v18, v20, v22 & 1);

  sub_21BE2833C();
  v27 = sub_21BE27D4C();
  v29 = v28;
  v31 = v30;
  v33 = v32;

  sub_21BBC7C7C(v23, v25, v5 & 1);

  *a2 = v37;
  *(a2 + 8) = v36;
  *(a2 + 16) = v35 & 1;
  *(a2 + 24) = v38;
  *(a2 + 32) = v27;
  *(a2 + 40) = v29;
  *(a2 + 48) = v31 & 1;
  *(a2 + 56) = v33;
  sub_21BBA4A38(v37, v36, v35 & 1);

  sub_21BBA4A38(v27, v29, v31 & 1);

  sub_21BBC7C7C(v27, v29, v31 & 1);

  sub_21BBC7C7C(v37, v36, v35 & 1);
}

double sub_21BBDCB10@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v29[0] = *v1;
  v29[1] = v3;
  v30 = *(v1 + 32);
  v4 = sub_21BE275DC();
  v28 = 0;
  sub_21BBDC55C(v29, &v14);
  v41 = v24;
  v42 = v25;
  v43 = v26;
  v37 = v20;
  v38 = v21;
  v39 = v22;
  v40 = v23;
  v33 = v16;
  v34 = v17;
  v35 = v18;
  v36 = v19;
  v31 = v14;
  v32 = v15;
  v44[10] = v24;
  v44[11] = v25;
  v44[12] = v26;
  v44[6] = v20;
  v44[7] = v21;
  v44[8] = v22;
  v44[9] = v23;
  v44[2] = v16;
  v44[3] = v17;
  v44[4] = v18;
  v44[5] = v19;
  v44[0] = v14;
  v44[1] = v15;
  sub_21BBA3854(&v31, &v13, &qword_27CDB6208, &qword_21BE340C8);
  sub_21BB3A4CC(v44, &qword_27CDB6208, &qword_21BE340C8);
  *&v27[151] = v40;
  *&v27[167] = v41;
  *&v27[183] = v42;
  *&v27[199] = v43;
  *&v27[87] = v36;
  *&v27[103] = v37;
  *&v27[119] = v38;
  *&v27[135] = v39;
  *&v27[23] = v32;
  *&v27[39] = v33;
  *&v27[55] = v34;
  *&v27[71] = v35;
  *&v27[7] = v31;
  v5 = *&v27[176];
  *(a1 + 177) = *&v27[160];
  *(a1 + 193) = v5;
  *(a1 + 209) = *&v27[192];
  v6 = *&v27[112];
  *(a1 + 113) = *&v27[96];
  *(a1 + 129) = v6;
  v7 = *&v27[144];
  *(a1 + 145) = *&v27[128];
  *(a1 + 161) = v7;
  v8 = *&v27[48];
  *(a1 + 49) = *&v27[32];
  *(a1 + 65) = v8;
  v9 = *&v27[80];
  *(a1 + 81) = *&v27[64];
  *(a1 + 97) = v9;
  result = *v27;
  v11 = *&v27[16];
  *(a1 + 17) = *v27;
  v12 = v28;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = v12;
  *(a1 + 224) = *&v27[207];
  *(a1 + 33) = v11;
  return result;
}

uint64_t sub_21BBDCCCC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21BE274DC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_21BBDCD60@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  *a2 = v5;
  return result;
}

uint64_t sub_21BBDCDF0(char *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return sub_21BE26CBC();
}

uint64_t sub_21BBDCE5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppleCardFamilySettingsCell();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BBDCEC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppleCardFamilySettingsCell();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BBDCF24()
{
  v1 = *(type metadata accessor for AppleCardFamilySettingsCell() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_21BBDB990(v2);
}

unint64_t sub_21BBDCF84()
{
  result = qword_27CDB6150;
  if (!qword_27CDB6150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6140, &qword_21BE33F28);
    sub_21BBDD010();
    sub_21BBDD1FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB6150);
  }

  return result;
}

unint64_t sub_21BBDD010()
{
  result = qword_27CDB6158;
  if (!qword_27CDB6158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6160, &qword_21BE33F30);
    sub_21BBDD0C8();
    sub_21BB3B038(&qword_27CDB6188, &qword_27CDB6190, &qword_21BE33F40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB6158);
  }

  return result;
}

unint64_t sub_21BBDD0C8()
{
  result = qword_27CDB6168;
  if (!qword_27CDB6168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6170, &qword_21BE33F38);
    sub_21BBDD154();
    sub_21BBDD1A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB6168);
  }

  return result;
}

unint64_t sub_21BBDD154()
{
  result = qword_27CDB6178;
  if (!qword_27CDB6178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB6178);
  }

  return result;
}

unint64_t sub_21BBDD1A8()
{
  result = qword_27CDB6180;
  if (!qword_27CDB6180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB6180);
  }

  return result;
}

unint64_t sub_21BBDD1FC()
{
  result = qword_27CDB6198;
  if (!qword_27CDB6198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB6198);
  }

  return result;
}

double sub_21BBDD260@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v3(&v9);
  result = *&v9;
  v6 = v10;
  v7 = v11;
  v8 = v12;
  *a1 = v9;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  return result;
}

unint64_t sub_21BBDD2B0()
{
  result = qword_27CDB61A8;
  if (!qword_27CDB61A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB61A0, &qword_21BE33F48);
    sub_21BBDD33C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB61A8);
  }

  return result;
}

unint64_t sub_21BBDD33C()
{
  result = qword_27CDB61B0;
  if (!qword_27CDB61B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB61B8, &qword_21BE33F50);
    sub_21BBDD3C8();
    sub_21BBDD41C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB61B0);
  }

  return result;
}

unint64_t sub_21BBDD3C8()
{
  result = qword_27CDB61C0;
  if (!qword_27CDB61C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB61C0);
  }

  return result;
}

unint64_t sub_21BBDD41C()
{
  result = qword_27CDB61C8;
  if (!qword_27CDB61C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB61C8);
  }

  return result;
}

__n128 sub_21BBDD470@<Q0>(__n128 *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v3(v8);
  v5 = v8[1];
  v6 = v10;
  result = v9;
  a1->n128_u64[0] = v8[0];
  a1->n128_u64[1] = v5;
  a1[1] = result;
  a1[2].n128_u8[0] = v6;
  return result;
}

unint64_t sub_21BBDD4C0()
{
  result = qword_27CDB61D8;
  if (!qword_27CDB61D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB61D0, &unk_21BE33F58);
    sub_21BBDD154();
    sub_21BBDD54C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB61D8);
  }

  return result;
}

unint64_t sub_21BBDD54C()
{
  result = qword_27CDB61E0;
  if (!qword_27CDB61E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB61E0);
  }

  return result;
}

uint64_t sub_21BBDD5A8(uint64_t a1)
{
  v4 = *(type metadata accessor for AppleCardFamilySettingsCell() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21BBA6A64;

  return sub_21BBDBC54(a1, v6, v7, v1 + v5, v8);
}

unint64_t sub_21BBDD6E4()
{
  result = qword_27CDB61F8;
  if (!qword_27CDB61F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6200, &qword_21BE34070);
    sub_21BB3B038(&qword_27CDB6148, &qword_27CDB6130, &qword_21BE33EA0);
    sub_21BBDCF84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB61F8);
  }

  return result;
}

uint64_t sub_21BBDD7B8()
{
  type metadata accessor for AppleCardFamilyCache();
  sub_21BBDD940(&qword_280BD8840, type metadata accessor for AppleCardFamilyCache);
  sub_21BE26EAC();
  sub_21BE1EF04(&v6);
  v5[0] = v6;
  v5[1] = v7;
  v0 = sub_21BE20000(v5);

  if (!v0)
  {
    goto LABEL_6;
  }

  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    goto LABEL_6;
  }

  v6 = 0;
  v7 = 0;
  sub_21BE289FC();

  if (!v7)
  {
LABEL_6:
    type metadata accessor for ConfirmChildAgeViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v3 = [objc_opt_self() bundleForClass_];
    v1 = sub_21BE2599C();

    return v1;
  }

  return v6;
}

uint64_t sub_21BBDD940(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21BBDD988(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  sub_21BE28D7C();
  v2[5] = sub_21BE28D6C();
  v5 = sub_21BE28D0C();
  v2[6] = v5;
  v2[7] = v4;

  return MEMORY[0x2822009F8](sub_21BBDDA58, v5, v4);
}

void sub_21BBDDA58()
{
  v1 = *(v0[3] + 40);
  v0[8] = v1;
  if (v1)
  {
    v2 = v0[4];
    v3 = sub_21BE28DAC();
    (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
    v4 = *(MEMORY[0x277D07FD0] + 4);
    v8 = (*MEMORY[0x277D07FD0] + MEMORY[0x277D07FD0]);

    v5 = swift_task_alloc();
    v0[9] = v5;
    *v5 = v0;
    v5[1] = sub_21BBDDB6C;
    v6 = v0[4];
    v7 = v0[2];

    v8(v7, v6);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21BBDDB6C()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 32);
  v6 = *v1;
  *(*v1 + 80) = v0;

  sub_21BBDE578(v5);

  v7 = *(v2 + 56);
  v8 = *(v2 + 48);
  if (v0)
  {
    v9 = sub_21BBDDD54;
  }

  else
  {
    v9 = sub_21BBDDCE8;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_21BBDDCE8()
{
  v2 = v0[4];
  v1 = v0[5];

  v3 = v0[1];

  return v3();
}

uint64_t sub_21BBDDD54()
{
  v2 = v0[4];
  v1 = v0[5];

  v3 = v0[1];
  v4 = v0[10];

  return v3();
}

uint64_t sub_21BBDDDC0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  sub_21BE28D7C();
  v2[5] = sub_21BE28D6C();
  v5 = sub_21BE28D0C();
  v2[6] = v5;
  v2[7] = v4;

  return MEMORY[0x2822009F8](sub_21BBDDE90, v5, v4);
}

void sub_21BBDDE90()
{
  v1 = *(v0[3] + 40);
  v0[8] = v1;
  if (v1)
  {
    v2 = v0[4];
    v3 = sub_21BE28DAC();
    (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
    v4 = *(MEMORY[0x277D07FF8] + 4);
    v8 = (*MEMORY[0x277D07FF8] + MEMORY[0x277D07FF8]);

    v5 = swift_task_alloc();
    v0[9] = v5;
    *v5 = v0;
    v5[1] = sub_21BBDDFA4;
    v6 = v0[4];
    v7 = v0[2];

    v8(v7, v6);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21BBDDFA4()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 32);
  v6 = *v1;
  *(*v1 + 80) = v0;

  sub_21BBDE578(v5);

  v7 = *(v2 + 56);
  v8 = *(v2 + 48);
  if (v0)
  {
    v9 = sub_21BBDEABC;
  }

  else
  {
    v9 = sub_21BBDEAB8;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

void *AsyncStore.deinit()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  return v0;
}

uint64_t AsyncStore.__deallocating_deinit()
{
  AsyncStore.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_21BBDE184@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 80);
  type metadata accessor for AsyncStore();
  result = sub_21BE26C0C();
  *a2 = result;
  return result;
}

uint64_t sub_21BBDE1C8(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21BBA6A64;

  return (sub_21BC493F4)(a1);
}

uint64_t sub_21BBDE27C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21BBB7EB8;

  return (sub_21BD9CDBC)(a1);
}

uint64_t sub_21BBDE330()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_21BBDE3D4;

  return sub_21BC49210();
}

uint64_t sub_21BBDE3D4(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_21BBDE4D4()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_21BBDEAC0;

  return sub_21BD9CBD8();
}

uint64_t sub_21BBDE578(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21BBDE5EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_21BBB7EB8;

  return v11(a1, a2, a3);
}

uint64_t sub_21BBDE718(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 24);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_21BBB7EB8;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of AsyncStore.doLoad()(uint64_t a1)
{
  v4 = *(*v1 + 168);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21BBA6A64;

  return v8(a1);
}

uint64_t dispatch thunk of AsyncStore.doReload()(uint64_t a1)
{
  v4 = *(*v1 + 176);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21BBB7EB8;

  return v8(a1);
}

void *sub_21BBDEAC4()
{
  result = sub_21BBBCBD8(0, 1, 1, MEMORY[0x277D84F90]);
  v1 = result;
  v3 = result[2];
  v2 = result[3];
  if (v3 >= v2 >> 1)
  {
    result = sub_21BBBCBD8((v2 > 1), v3 + 1, 1, result);
    v1 = result;
  }

  *(v1 + 16) = v3 + 1;
  v4 = v1 + 16 * v3;
  *(v4 + 32) = sub_21BBDF958;
  *(v4 + 40) = 0;
  qword_27CDD4130 = v1;
  return result;
}

unsigned __int8 sub_21BBDEB4C@<W0>(Swift::OpaquePointer *a1@<X0>, uint64_t a2@<X8>)
{
  result = FamilyDestinations.SubscriptionsDeepLink.init(pathComponents:)(a1).is_nil;
  if (v4)
  {
    *(a2 + 48) = 0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }

  else
  {

    return sub_21BBDEEF8(a2);
  }

  return result;
}

uint64_t sub_21BBDEBB8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = sub_21BC205B4(*a1, &unk_282D84EB8);
  result = sub_21BB3A250(&unk_282D84ED8);
  if (v4)
  {
    if (*(v3 + 16))
    {
      sub_21BBBED1C(0, 1);
      v6[3] = &type metadata for FamilyDestinations.AskToBuyMemberDestination;
      v6[4] = sub_21BBE0590();
      __swift_project_boxed_opaque_existential_1Tm(v6, &type metadata for FamilyDestinations.AskToBuyMemberDestination);
      *(a2 + 24) = &type metadata for FamilyDestinations.AskToBuyMemberDestination;
      *(a2 + 32) = sub_21BBE05E4();
      *(a2 + 40) = sub_21BBE0638;
      *(a2 + 48) = 0;
      return __swift_destroy_boxed_opaque_existential_0Tm(v6);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    *(a2 + 48) = 0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }

  return result;
}

uint64_t sub_21BBDEC90@<X0>(Swift::OpaquePointer *a1@<X0>, void *a2@<X8>)
{
  FamilyDestinations.MemberDetails.init(pathComponents:)(a1);
  if (v17)
  {
    v3 = &type metadata for FamilyDestinations.MemberDetails;
    v16[3] = &type metadata for FamilyDestinations.MemberDetails;
    v16[4] = sub_21BBE02E4();
    v16[0] = v16[5];
    v16[1] = v17;
    v4 = __swift_project_boxed_opaque_existential_1Tm(v16, &type metadata for FamilyDestinations.MemberDetails);
    v5 = *(off_282D8A778 + 8);
    MEMORY[0x28223BE20](v4);
    v7 = (&v16[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7);
    v10 = *v7;
    v9 = v7[1];
    v11 = sub_21BBE0338();
    *a2 = v10;
    a2[1] = v9;
    v12 = swift_allocObject();
    *(v12 + 16) = v10;
    *(v12 + 24) = v9;

    __swift_destroy_boxed_opaque_existential_0Tm(v16);

    v14 = sub_21BBE0724;
  }

  else
  {

    v3 = 0;
    v11 = 0;
    v14 = 0;
    v12 = 0;
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  a2[3] = v3;
  a2[4] = v11;
  a2[5] = v14;
  a2[6] = v12;
  return result;
}

uint64_t sub_21BBDEE20@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = sub_21BC205B4(*a1, &unk_282D84EE8);
  result = sub_21BB3A250(&unk_282D84F08);
  if (v4)
  {
    if (*(v3 + 16))
    {
      sub_21BBBED1C(0, 1);
      v6[3] = &type metadata for FamilyDestinations.AppleCashDetails;
      v6[4] = sub_21BBE0450();
      __swift_project_boxed_opaque_existential_1Tm(v6, &type metadata for FamilyDestinations.AppleCashDetails);
      *(a2 + 24) = &type metadata for FamilyDestinations.AppleCashDetails;
      *(a2 + 32) = sub_21BBE04A4();
      *(a2 + 40) = sub_21BBE04F8;
      *(a2 + 48) = 0;
      return __swift_destroy_boxed_opaque_existential_0Tm(v6);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    *(a2 + 48) = 0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }

  return result;
}

unint64_t sub_21BBDEEF8@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB62A8, &qword_21BE34240);
  if (swift_dynamicCast())
  {
    sub_21BB3D104(v10, v12);
    v2 = v13;
    v3 = v14;
    v4 = __swift_project_boxed_opaque_existential_1Tm(v12, v13);
    v5 = *(*(v2 - 8) + 64);
    MEMORY[0x28223BE20](v4);
    v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v7);
    sub_21BD2C034(v7, v2, v3, a1);
    return __swift_destroy_boxed_opaque_existential_0Tm(v12);
  }

  else
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    sub_21BB3A4CC(v10, &qword_27CDB62B0, &unk_21BE446C0);
    a1[3] = &type metadata for FamilyDestinations.SubscriptionsDeepLink;
    result = sub_21BBE06D0();
    a1[4] = result;
    a1[5] = sub_21BBDF074;
    a1[6] = 0;
  }

  return result;
}

uint64_t sub_21BBDF074(void *a1)
{
  v2 = sub_21BE2966C();
  swift_allocError();
  v4 = v3;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6248, &qword_21BE446D0) + 48);
  v4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB62C0, &qword_21BE34248);
  *v4 = &type metadata for FamilyDestinations.SubscriptionsDeepLink;
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_21BE29B5C();
  sub_21BE28A7C();
  sub_21BE2963C();
  (*(*(v2 - 8) + 104))(v4, *MEMORY[0x277D841A8], v2);
  return swift_willThrow();
}

uint64_t sub_21BBDF1B8(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_21BE2590C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = a2;
  v34 = a3;
  sub_21BE258FC();
  v12 = sub_21BE257BC();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  sub_21BE257AC();
  sub_21BBE03A8();
  v15 = sub_21BE2579C();
  if (v3)
  {
    (*(v8 + 8))(v11, v7);
  }

  else
  {
    v35 = a1;
    v18 = v15;
    v19 = v16;

    sub_21BE25BDC();
    sub_21BBBEF94(v18, v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5810, qword_21BE328D0);
    v20 = *(sub_21BE2585C() - 8);
    v21 = *(v20 + 72);
    v22 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    *(swift_allocObject() + 16) = xmmword_21BE32770;
    v31 = &type metadata for FamilyDestinations.MemberDetails;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6240, &qword_21BE34220);
    sub_21BE28A7C();
    sub_21BE2582C();

    sub_21BE2587C();
    v23 = sub_21BE2588C();
    if (v24)
    {
      v31 = 63;
      v32 = 0xE100000000000000;
      MEMORY[0x21CF03CA0](v23);

      sub_21BE28B0C();
      (*(v8 + 8))(v11, v7);
    }

    else
    {
      v25 = sub_21BE2966C();
      swift_allocError();
      v27 = v26;
      v30[1] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6248, &qword_21BE446D0) + 48);
      v27[3] = v7;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v27);
      (*(v8 + 16))(boxed_opaque_existential_1, v11, v7);
      v29 = v35[4];
      __swift_project_boxed_opaque_existential_1Tm(v35, v35[3]);
      sub_21BE29B5C();
      sub_21BE2963C();
      (*(*(v25 - 8) + 104))(v27, *MEMORY[0x277D841A8], v25);
      swift_willThrow();
      return (*(v8 + 8))(v11, v7);
    }
  }
}

uint64_t sub_21BBDF58C(void *a1, void (*a2)(void), uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v35 = a4;
  v36 = a5;
  v39 = a1;
  v8 = sub_21BE2590C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE258FC();
  v13 = sub_21BE257BC();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  sub_21BE257AC();
  a2();
  v16 = sub_21BE2579C();
  if (v5)
  {
    (*(v9 + 8))(v12, v8);
  }

  else
  {
    v19 = v16;
    v20 = v17;
    v34 = v9;

    sub_21BE25BDC();
    sub_21BBBEF94(v19, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5810, qword_21BE328D0);
    v21 = *(sub_21BE2585C() - 8);
    v22 = *(v21 + 72);
    v23 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    *(swift_allocObject() + 16) = xmmword_21BE32770;
    v37 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(v35, v36);
    sub_21BE28A7C();
    sub_21BE2582C();

    sub_21BE2587C();
    v24 = sub_21BE2588C();
    if (v25)
    {
      v37 = 63;
      v38 = 0xE100000000000000;
      MEMORY[0x21CF03CA0](v24);

      sub_21BE28B0C();
      (*(v34 + 8))(v12, v8);
    }

    else
    {
      v26 = sub_21BE2966C();
      swift_allocError();
      v28 = v27;
      v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6248, &qword_21BE446D0) + 48);
      v29 = v8;
      v28[3] = v8;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v28);
      v31 = v34;
      (*(v34 + 16))(boxed_opaque_existential_1, v12, v29);
      v32 = v39[4];
      __swift_project_boxed_opaque_existential_1Tm(v39, v39[3]);
      sub_21BE29B5C();
      sub_21BE2963C();
      (*(*(v26 - 8) + 104))(v28, *MEMORY[0x277D841A8], v26);
      swift_willThrow();
      return (*(v31 + 8))(v12, v29);
    }
  }
}

uint64_t sub_21BBDF958@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_21BB3A35C(a1, v16);
  result = sub_21BBDFAD8(v16, v17);
  if (!v2)
  {
    v6 = v17[0];
    v5 = v17[1];
    v16[3] = &type metadata for FamilyDestinations.MemberDetails;
    v16[4] = sub_21BBE02E4();
    v16[0] = v6;
    v16[1] = v5;
    v7 = __swift_project_boxed_opaque_existential_1Tm(v16, &type metadata for FamilyDestinations.MemberDetails);
    v8 = *(off_282D8A778 + 8);
    MEMORY[0x28223BE20](v7);
    v10 = (&v16[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v11 + 16))(v10);
    v13 = *v10;
    v12 = v10[1];
    a2[3] = &type metadata for FamilyDestinations.MemberDetails;
    a2[4] = sub_21BBE0338();
    *a2 = v13;
    a2[1] = v12;
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    *(v14 + 24) = v12;
    a2[5] = sub_21BBE038C;
    a2[6] = v14;

    __swift_destroy_boxed_opaque_existential_0Tm(v16);
  }

  return result;
}

uint64_t sub_21BBDFAD8@<X0>(uint64_t *a1@<X0>, ValueMetadata **a2@<X8>)
{
  v72 = a2;
  v3 = sub_21BE2585C();
  v73 = *(v3 - 8);
  v74 = v3;
  v4 = *(v73 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v75 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v63 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6250, &unk_21BE49110);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v63 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5800, &qword_21BE328C0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v63 - v21;
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  v24 = v79;
  sub_21BE29B2C();
  if (v24)
  {
    goto LABEL_26;
  }

  v67 = v20;
  v68 = v22;
  v79 = v8;
  v69 = v13;
  v25 = v74;
  v71 = a1;
  __swift_project_boxed_opaque_existential_1Tm(v78, v78[3]);
  sub_21BE2997C();
  v64 = 0;
  v66 = v15;
  v26 = v68;
  sub_21BE258EC();

  v76 = &type metadata for FamilyDestinations.MemberDetails;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6240, &qword_21BE34220);
  v70 = sub_21BE28A7C();
  v65 = v27;
  v28 = v67;
  sub_21BBA3854(v26, v67, &qword_27CDB5800, &qword_21BE328C0);
  v29 = sub_21BE2590C();
  v30 = *(v29 - 8);
  if ((*(v30 + 48))(v28, 1, v29) == 1)
  {
    sub_21BB3A4CC(v28, &qword_27CDB5800, &qword_21BE328C0);
    v31 = v25;
    v32 = v73;
    v33 = v69;
LABEL_14:
    v43 = v66;
    (*(v32 + 56))(v66, 1, 1, v31);
    v44 = v68;
    v46 = v71;
    v45 = v72;
    v36 = v75;
    goto LABEL_19;
  }

  v34 = sub_21BE2586C();
  result = (*(v30 + 8))(v28, v29);
  v31 = v25;
  v32 = v73;
  v33 = v69;
  if (!v34)
  {
    goto LABEL_14;
  }

  v36 = v75;
  v37 = v65;
  if (!*(v34 + 16))
  {
LABEL_13:

    v43 = v66;
    (*(v32 + 56))(v66, 1, 1, v31);
LABEL_18:
    v44 = v68;
    v46 = v71;
    v45 = v72;
LABEL_19:
    sub_21BBA3854(v43, v33, &qword_27CDB6250, &unk_21BE49110);
    if ((*(v32 + 48))(v33, 1, v31) == 1 || ((*(v32 + 32))(v36, v33, v31), sub_21BE2584C(), v48 = v47, (*(v32 + 8))(v36, v31), !v48))
    {
      v79 = 0;
      v51 = 0xF000000000000000;
    }

    else
    {

      v49 = sub_21BE25BBC();
      v51 = v50;
      swift_bridgeObjectRelease_n();
      if (v51 >> 60 != 15)
      {

        v58 = sub_21BE2578C();
        v59 = *(v58 + 48);
        v60 = *(v58 + 52);
        swift_allocObject();
        sub_21BE2577C();
        sub_21BBE03FC();
        v61 = v64;
        sub_21BE2576C();
        sub_21BBBF0B4(v49, v51);

        sub_21BB3A4CC(v43, &qword_27CDB6250, &unk_21BE49110);
        sub_21BB3A4CC(v44, &qword_27CDB5800, &qword_21BE328C0);
        if (!v61)
        {
          v62 = v77;
          *v45 = v76;
          v45[1] = v62;
          __swift_destroy_boxed_opaque_existential_0Tm(v78);
          v57 = v46;
          return __swift_destroy_boxed_opaque_existential_0Tm(v57);
        }

        goto LABEL_25;
      }

      v79 = v49;
    }

    v52 = sub_21BE2964C();
    swift_allocError();
    v54 = v53;
    v55 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6258, &qword_21BE34228) + 48);
    *v54 = &type metadata for FamilyDestinations.MemberDetails;
    v56 = v46[4];
    __swift_project_boxed_opaque_existential_1Tm(v46, v46[3]);
    sub_21BE29B1C();
    v76 = 0;
    v77 = 0xE000000000000000;
    sub_21BE295EC();

    v76 = 0xD00000000000001FLL;
    v77 = 0x800000021BE56E50;
    MEMORY[0x21CF03CA0](v70, v65);

    sub_21BE2963C();
    (*(*(v52 - 8) + 104))(v54, *MEMORY[0x277D84170], v52);
    swift_willThrow();
    sub_21BBBF0B4(v79, v51);
    sub_21BB3A4CC(v66, &qword_27CDB6250, &unk_21BE49110);
    sub_21BB3A4CC(v68, &qword_27CDB5800, &qword_21BE328C0);
LABEL_25:
    __swift_destroy_boxed_opaque_existential_0Tm(v78);
    a1 = v71;
LABEL_26:
    v57 = a1;
    return __swift_destroy_boxed_opaque_existential_0Tm(v57);
  }

  v38 = *(v34 + 16);
  v39 = 0;
  v67 = (v73 + 16);
  v40 = (v73 + 8);
  while (v39 < *(v34 + 16))
  {
    (*(v32 + 16))(v79, v34 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v39, v31);
    if (sub_21BE2583C() == v70 && v41 == v37)
    {

LABEL_17:
      v33 = v69;
      v43 = v66;
      (*(v32 + 32))(v66, v79, v31);
      (*(v32 + 56))(v43, 0, 1, v31);
      goto LABEL_18;
    }

    v42 = sub_21BE2995C();

    if (v42)
    {

      v36 = v75;
      goto LABEL_17;
    }

    ++v39;
    result = (*v40)(v79, v31);
    v36 = v75;
    v33 = v69;
    if (v38 == v39)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_21BBE02E4()
{
  result = qword_27CDB6228;
  if (!qword_27CDB6228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB6228);
  }

  return result;
}

unint64_t sub_21BBE0338()
{
  result = qword_27CDB6230;
  if (!qword_27CDB6230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB6230);
  }

  return result;
}

unint64_t sub_21BBE03A8()
{
  result = qword_27CDB6238;
  if (!qword_27CDB6238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB6238);
  }

  return result;
}

unint64_t sub_21BBE03FC()
{
  result = qword_27CDB6260;
  if (!qword_27CDB6260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB6260);
  }

  return result;
}

unint64_t sub_21BBE0450()
{
  result = qword_27CDB6268;
  if (!qword_27CDB6268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB6268);
  }

  return result;
}

unint64_t sub_21BBE04A4()
{
  result = qword_27CDB6270;
  if (!qword_27CDB6270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB6270);
  }

  return result;
}

unint64_t sub_21BBE053C()
{
  result = qword_27CDB6278;
  if (!qword_27CDB6278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB6278);
  }

  return result;
}

unint64_t sub_21BBE0590()
{
  result = qword_27CDB6288;
  if (!qword_27CDB6288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB6288);
  }

  return result;
}

unint64_t sub_21BBE05E4()
{
  result = qword_27CDB6290;
  if (!qword_27CDB6290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB6290);
  }

  return result;
}

unint64_t sub_21BBE067C()
{
  result = qword_27CDB6298;
  if (!qword_27CDB6298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB6298);
  }

  return result;
}

unint64_t sub_21BBE06D0()
{
  result = qword_27CDB62B8;
  if (!qword_27CDB62B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB62B8);
  }

  return result;
}

void sub_21BBE073C()
{
  v1 = *(v0 + *((*MEMORY[0x277D85000] & *v0) + qword_27CDD4138 + 16));
  if (!v1)
  {
    v8 = 0u;
    v9 = 0u;
LABEL_9:
    sub_21BBBC274(&v8);
    goto LABEL_10;
  }

  v2 = v1;
  v3 = sub_21BE289CC();
  v4 = [v2 propertyForKey_];

  if (v4)
  {
    sub_21BE294BC();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8 = v6;
  v9 = v7;
  if (!*(&v7 + 1))
  {
    goto LABEL_9;
  }

  type metadata accessor for PSControllerURLHandlingRelay();
  if (swift_dynamicCast())
  {
    v5 = v6;
    sub_21BBE3684(v6);

    return;
  }

LABEL_10:
  sub_21BBE3684(0);
}

uint64_t sub_21BBE089C(uint64_t a1)
{
  v2 = *((*MEMORY[0x277D85000] & *v1) + qword_27CDD4138 + 24);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
  return MEMORY[0x2821F96F8]();
}

void sub_21BBE08EC()
{
  v1 = v0;
  v2 = MEMORY[0x277D85000];
  v3 = *MEMORY[0x277D85000] & *v0;
  v4 = v3;
  v5 = qword_27CDD4138;
  v6 = *(v0 + *(v3 + qword_27CDD4138 + 40));
  if (v6)
  {
    v7 = v6;
    sub_21BE259FC();
    v8 = *((*v2 & *v1) + qword_27CDD4138 + 40);
    v9 = *(v1 + v8);
    *(v1 + v8) = 0;

    v5 = qword_27CDD4138;
    v3 = *v2 & *v1;
  }

  v10 = *(v3 + v5 + 32);
  v11 = *(v1 + v10);
  if (v11)
  {
    v19 = *(v1 + v10);
    swift_getKeyPath();
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13 = swift_allocObject();
    v14 = v4 + qword_27CDD4138;
    v13[2] = *(v4 + qword_27CDD4138);
    v13[3] = *(v14 + 8);
    v13[4] = v12;
    v15 = v11;
    v16 = sub_21BE25ACC();

    v17 = *((*v2 & *v1) + qword_27CDD4138 + 40);
    v18 = *(v1 + v17);
    *(v1 + v17) = v16;
  }
}

uint64_t sub_21BBE0B14@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC14FamilyCircleUI28PSControllerURLHandlingRelay_resourceDictionary;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_21BBE0B70(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC14FamilyCircleUI28PSControllerURLHandlingRelay_resourceDictionary;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

void sub_21BBE0BD8(uint64_t *a1)
{
  v1 = *a1;
  v2 = OBJC_IVAR____TtC14FamilyCircleUI28PSControllerURLHandlingRelay_resourceDictionary;
  swift_beginAccess();
  if (*(v1 + v2))
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      sub_21BBE24AC();
    }
  }
}

uint64_t sub_21BBE0C5C(uint64_t a1)
{
  v2 = *((*MEMORY[0x277D85000] & *v1) + qword_27CDD4138 + 40);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
  return MEMORY[0x2821F96F8]();
}

uint64_t sub_21BBE0CAC()
{
  v1 = MEMORY[0x277D85000];

  v2 = *(v0 + *((*v1 & *v0) + qword_27CDD4138 + 56));
}

id sub_21BBE0E68()
{
  v1 = v0;
  v2 = *MEMORY[0x277D85000] & *v0;
  v3 = *(v2 + qword_27CDD4138 + 40);
  v4 = *&v0[v3];
  if (v4)
  {
    v5 = v4;
    sub_21BE259FC();

    v4 = *&v1[v3];
  }

  *&v1[v3] = 0;

  v6 = *(v2 + qword_27CDD4138);
  v7 = *(v2 + qword_27CDD4138 + 8);
  v9.receiver = v1;
  v9.super_class = type metadata accessor for ModernFamilyHostingController();
  return objc_msgSendSuper2(&v9, sel_dealloc);
}

uint64_t sub_21BBE0F5C(void *a1)
{
  v2 = MEMORY[0x277D85000];

  v3 = *(a1 + *((*v2 & *a1) + qword_27CDD4138 + 56));
}

id sub_21BBE1128()
{
  v0 = sub_21BBE3784();

  return v0;
}

void sub_21BBE115C(void *a1)
{
  v2 = *((*MEMORY[0x277D85000] & *v1) + qword_27CDD4138 + 24);
  v4 = *(v1 + v2);
  *(v1 + v2) = a1;
  v3 = a1;
}

void sub_21BBE11E0(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_21BBE115C(a3);
}

id sub_21BBE124C()
{
  v0 = sub_21BBE378C();

  return v0;
}

void sub_21BBE1280(void *a1)
{
  v2 = a1;
  sub_21BBE3704(a1);
}

void sub_21BBE12CC(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_21BBE1280(a3);
}

void *sub_21BBE1338(void *a1)
{
  v1 = a1;
  v2 = sub_21BBE37D8();
  v3 = v2;

  return v2;
}

uint64_t sub_21BBE1378(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v5 = a4;
    v6 = a1;
    swift_unknownObjectRetain();
    sub_21BE294BC();

    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
  }

  return sub_21BBBC274(v8);
}

double sub_21BBE13F4@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

id sub_21BBE1400()
{
  sub_21BBE13F4(v8);
  v0 = v9;
  if (v9)
  {
    v1 = __swift_project_boxed_opaque_existential_1Tm(v8, v9);
    v2 = *(v0 - 8);
    v3 = *(v2 + 64);
    MEMORY[0x28223BE20](v1);
    v5 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v2 + 16))(v5);
    v6 = sub_21BE2994C();
    (*(v2 + 8))(v5, v0);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_21BBE1530(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = sub_21BE2870C();
  v2[11] = v3;
  v4 = *(v3 - 8);
  v2[12] = v4;
  v5 = *(v4 + 64) + 15;
  v2[13] = swift_task_alloc();
  v6 = sub_21BE2874C();
  v2[14] = v6;
  v7 = *(v6 - 8);
  v2[15] = v7;
  v8 = *(v7 + 64) + 15;
  v2[16] = swift_task_alloc();
  sub_21BE28D7C();
  v2[17] = sub_21BE28D6C();
  v10 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BBE1680, v10, v9);
}

uint64_t sub_21BBE1680()
{
  v2 = v0[16];
  v1 = v0[17];
  v16 = v0[15];
  v17 = v0[14];
  v3 = v0[13];
  v4 = v0[10];
  v14 = v0[11];
  v15 = v0[12];
  v5 = v0[9];

  sub_21BBE1EF0();
  v6 = *(v4 + *((*MEMORY[0x277D85000] & *v4) + qword_27CDD4138 + 48));
  v7 = sub_21BE288EC();
  [v6 handleURL_];

  sub_21BB3A2A4(0, &qword_280BD6930, 0x277D85C78);
  v8 = sub_21BE2925C();
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  v0[6] = sub_21BBE3CE0;
  v0[7] = v9;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_21BB42A18;
  v0[5] = &block_descriptor_2;
  v10 = _Block_copy(v0 + 2);

  sub_21BE2872C();
  v0[8] = MEMORY[0x277D84F90];
  sub_21BBE3CE8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBAF0, &unk_21BE3B600);
  sub_21BB3D7B8(&qword_280BD69A0, &qword_27CDBBAF0, &unk_21BE3B600);
  sub_21BE294DC();
  MEMORY[0x21CF04410](0, v2, v3, v10);
  _Block_release(v10);

  (*(v15 + 8))(v3, v14);
  (*(v16 + 8))(v2, v17);
  v11 = v0[7];

  v12 = v0[1];

  return v12();
}

uint64_t sub_21BBE1940(uint64_t a1)
{
  sub_21BE2958C();
  if (*(a1 + 16) && (v2 = sub_21BBB31E8(v8), (v3 & 1) != 0))
  {
    sub_21BB3DCD4(*(a1 + 56) + 32 * v2, v9);
    sub_21BBB7238(v8);
    if (swift_dynamicCast())
    {
      v5 = 0x6150796C696D6166;
      v4 = 0xEA00000000006874;
      goto LABEL_7;
    }
  }

  else
  {
    sub_21BBB7238(v8);
  }

  v5 = 0;
  v4 = 0xE000000000000000;
LABEL_7:
  if (qword_280BD7CC0 != -1)
  {
    swift_once();
  }

  v6 = *(qword_280BD7CD0 + OBJC_IVAR____TtC14FamilyCircleUI25FamilySettingsApplication_navigationPathSubject);
  v8[0] = v5;
  v8[1] = v4;

  sub_21BE26C1C();
}

uint64_t sub_21BBE1A80(void *a1, uint64_t a2, void *a3, const void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = a1;
  v13 = sub_21BE28DAC();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_21BE343D8;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_21BE32A10;
  v15[5] = v14;
  v16 = a3;
  v17 = a1;
  sub_21BDC4F90(0, 0, v10, &unk_21BE391F0, v15);
}

uint64_t sub_21BBE1C08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_21BE28D7C();
  v3[5] = sub_21BE28D6C();
  v5 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BBE1CA4, v5, v4);
}

uint64_t sub_21BBE1CA4()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = v0[3];

  v0[6] = _Block_copy(v4);
  v5 = sub_21BE2890C();
  v0[7] = v5;
  v6 = v2;
  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_21BBE1D8C;
  v8 = v0[4];

  return sub_21BBE1530(v5);
}

uint64_t sub_21BBE1D8C()
{
  v1 = *v0;
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 32);
  v6 = *v0;

  if (v4)
  {
    v7 = *(v1 + 48);
    v7[2](v7);
    _Block_release(v7);
  }

  v8 = *(v6 + 8);

  return v8();
}

void sub_21BBE1EF0()
{
  v1 = v0;
  v2 = sub_21BE26A4C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21BE288BC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [v0 traitCollection];
  sub_21BE292BC();

  LOBYTE(v12) = sub_21BE2887C();
  v13 = *(v8 + 8);
  v13(v11, v7);
  if (v12)
  {
    v14 = [v1 traitCollection];
    sub_21BE292BC();

    sub_21BE2888C();
    v13(v11, v7);
    return;
  }

  v15 = [v1 navigationController];
  if (!v15)
  {
    goto LABEL_22;
  }

  v16 = v15;
  v17 = [v15 viewControllers];

  sub_21BB3A2A4(0, &qword_27CDB6358, 0x277D75D28);
  v18 = sub_21BE28C3C();

  v29 = v3;
  v30 = v2;
  if (!(v18 >> 62))
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  v19 = sub_21BE2951C();
  if (!v19)
  {
LABEL_21:

    v3 = v29;
    v2 = v30;
LABEL_22:
    sub_21BE260FC();
    v26 = sub_21BE26A2C();
    v27 = sub_21BE28FDC();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_21BB35000, v26, v27, "Could not find viewController containing ModernFamilyHostingController", v28, 2u);
      MEMORY[0x21CF05C50](v28, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    return;
  }

LABEL_6:
  v20 = 0;
  while (1)
  {
    if ((v18 & 0xC000000000000001) != 0)
    {
      v21 = MEMORY[0x21CF047C0](v20, v18);
    }

    else
    {
      if (v20 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v21 = *(v18 + 8 * v20 + 32);
    }

    v22 = v21;
    v23 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v31 = v21;
    if (sub_21BBE22BC(&v31))
    {
      break;
    }

    ++v20;
    if (v23 == v19)
    {
      goto LABEL_21;
    }
  }

  v24 = [v1 navigationController];
  if (v24)
  {
    v25 = v24;
  }
}

uint64_t sub_21BBE22BC(uint64_t *a1)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21BBE3C78();
  sub_21BB3D7B8(&qword_27CDB6368, &qword_27CDB6370, &qword_21BE343A0);
  v1 = sub_21BE2650C();

  return v1 & 1;
}

void sub_21BBE2354(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 childViewControllers];
  sub_21BB3A2A4(0, &qword_27CDB6358, 0x277D75D28);
  v4 = sub_21BE28C3C();

  *a2 = v4;
}

void sub_21BBE23C8(char a1)
{
  v3 = *MEMORY[0x277D85000] & *v1;
  v4 = *(v3 + qword_27CDD4138);
  v5 = *(v3 + qword_27CDD4138 + 8);
  v6.receiver = v1;
  v6.super_class = type metadata accessor for ModernFamilyHostingController();
  objc_msgSendSuper2(&v6, sel_viewDidAppear_, a1 & 1);
  sub_21BBE24AC();
}

void sub_21BBE2458(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_21BBE23C8(a3);
}

void sub_21BBE24AC()
{
  v1 = MEMORY[0x277D85000];
  v2 = *MEMORY[0x277D85000] & *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v21[-v5];
  v7 = [v0 viewIfLoaded];
  v8 = [v7 window];

  if (v8)
  {

    v9 = *(v0 + *((*v1 & *v0) + qword_27CDD4138 + 32));
    if (v9)
    {
      v10 = OBJC_IVAR____TtC14FamilyCircleUI28PSControllerURLHandlingRelay_resourceDictionary;
      swift_beginAccess();
      v11 = *(v9 + v10);
      if (v11)
      {
        v12 = *(v0 + *((*v1 & *v0) + qword_27CDD4138 + 32));
        if (v12)
        {
          v13 = OBJC_IVAR____TtC14FamilyCircleUI28PSControllerURLHandlingRelay_resourceDictionary;
          swift_beginAccess();
          v14 = *(v12 + v13);
          *(v12 + v13) = 0;

          v15 = sub_21BE28DAC();
          (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
          v16 = swift_allocObject();
          swift_unknownObjectWeakInit();
          sub_21BE28D7C();

          v17 = sub_21BE28D6C();
          v18 = swift_allocObject();
          v19 = MEMORY[0x277D85700];
          v18[2] = v17;
          v18[3] = v19;
          v20 = v2 + qword_27CDD4138;
          v18[4] = *(v2 + qword_27CDD4138);
          v18[5] = *(v20 + 8);
          v18[6] = v16;
          v18[7] = v11;

          sub_21BBA9018(0, 0, v6, &unk_21BE34350, v18);
        }

        else
        {
          __break(1u);
        }
      }
    }
  }
}

uint64_t sub_21BBE277C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  sub_21BE28D7C();
  v5[8] = sub_21BE28D6C();
  v7 = sub_21BE28D0C();
  v5[9] = v7;
  v5[10] = v6;

  return MEMORY[0x2822009F8](sub_21BBE2818, v7, v6);
}

uint64_t sub_21BBE2818()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 88) = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    *(v0 + 96) = v3;
    *v3 = v0;
    v3[1] = sub_21BBE2924;
    v4 = *(v0 + 56);

    return sub_21BBE1530(v4);
  }

  else
  {
    v6 = *(v0 + 64);

    **(v0 + 40) = *(v0 + 88) == 0;
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_21BBE2924()
{
  v1 = *v0;
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 88);
  v7 = *v0;

  v4 = *(v1 + 80);
  v5 = *(v1 + 72);

  return MEMORY[0x2822009F8](sub_21BBE2A64, v5, v4);
}

uint64_t sub_21BBE2A64()
{
  v1 = *(v0 + 64);

  **(v0 + 40) = *(v0 + 88) == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21BBE2AD8(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v1);
  v5 = sub_21BBE38AC(a1);
  (*(*(*(v2 + qword_27CDD4138) - 8) + 8))(a1);
  return v5;
}

uint64_t sub_21BBE2B9C(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & *v2) + qword_27CDD4138);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = &v15 - v8;
  *(v2 + *(v10 + 16)) = 0;
  *(v2 + *((*v4 & *v2) + qword_27CDD4138 + 24)) = 0;
  *(v2 + *((*v4 & *v2) + qword_27CDD4138 + 32)) = 0;
  *(v2 + *((*v4 & *v2) + qword_27CDD4138 + 40)) = 0;
  v11 = *((*v4 & *v2) + qword_27CDD4138 + 48);
  if (qword_280BD7CC0 != -1)
  {
    swift_once();
  }

  *(v2 + v11) = [objc_allocWithZone(FASettingsSpecifierProvider) initWithAccountManager_];
  v12 = *((*v4 & *v2) + qword_27CDD4138 + 56);
  if (qword_280BD79D8 != -1)
  {
    swift_once();
  }

  *(v2 + v12) = qword_280BD79E0;
  (*(v6 + 16))(v9, a2, v5);

  v13 = sub_21BE2773C();
  (*(v6 + 8))(a2, v5);
  return v13;
}

id sub_21BBE2EB4(void *a1)
{
  v3 = MEMORY[0x277D85000];
  v4 = *MEMORY[0x277D85000] & *v1;
  *(v1 + *(v4 + qword_27CDD4138 + 16)) = 0;
  *(v1 + *((*v3 & *v1) + qword_27CDD4138 + 24)) = 0;
  *(v1 + *((*v3 & *v1) + qword_27CDD4138 + 32)) = 0;
  *(v1 + *((*v3 & *v1) + qword_27CDD4138 + 40)) = 0;
  v5 = *((*v3 & *v1) + qword_27CDD4138 + 48);
  if (qword_280BD7CC0 != -1)
  {
    swift_once();
  }

  *(v1 + v5) = [objc_allocWithZone(FASettingsSpecifierProvider) initWithAccountManager_];
  v6 = *((*v3 & *v1) + qword_27CDD4138 + 56);
  if (qword_280BD79D8 != -1)
  {
    swift_once();
  }

  *(v1 + v6) = qword_280BD79E0;
  v7 = *(v4 + qword_27CDD4138);
  v8 = *(v4 + qword_27CDD4138 + 8);
  v11.receiver = v1;
  v11.super_class = type metadata accessor for ModernFamilyHostingController();

  v9 = objc_msgSendSuper2(&v11, sel_initWithCoder_, a1);

  if (v9)
  {
  }

  return v9;
}

uint64_t sub_21BBE327C()
{
  v1 = OBJC_IVAR____TtC14FamilyCircleUI28PSControllerURLHandlingRelay_resourceDictionary;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_21BBE3354(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14FamilyCircleUI28PSControllerURLHandlingRelay_resourceDictionary;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id PSControllerURLHandlingRelay.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PSControllerURLHandlingRelay.init()()
{
  *&v0[OBJC_IVAR____TtC14FamilyCircleUI28PSControllerURLHandlingRelay_resourceDictionary] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PSControllerURLHandlingRelay();
  return objc_msgSendSuper2(&v2, sel_init);
}

id PSControllerURLHandlingRelay.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PSControllerURLHandlingRelay();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_21BBE3684(void *a1)
{
  v2 = *((*MEMORY[0x277D85000] & *v1) + qword_27CDD4138 + 32);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
  v4 = a1;

  sub_21BBE08EC();
}

void sub_21BBE3704(void *a1)
{
  v2 = *((*MEMORY[0x277D85000] & *v1) + qword_27CDD4138 + 16);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
  v4 = a1;

  sub_21BBE073C();
}

uint64_t sub_21BBE37D8()
{
  v1 = sub_21BE289CC();
  v2 = [objc_allocWithZone(MEMORY[0x277D3FAD8]) initWithName:v1 target:0 set:0 get:0 detail:0 cell:0 edit:0];

  sub_21BBE3704(v2);
  return *(v0 + *((*MEMORY[0x277D85000] & *v0) + qword_27CDD4138 + 16));
}

uint64_t sub_21BBE38AC(uint64_t a1)
{
  v3 = MEMORY[0x277D85000];
  v4 = *((*MEMORY[0x277D85000] & *v1) + qword_27CDD4138);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = &v13 - v7;
  *(v1 + *(v9 + 16)) = 0;
  *(v1 + *((*v3 & *v1) + qword_27CDD4138 + 24)) = 0;
  *(v1 + *((*v3 & *v1) + qword_27CDD4138 + 32)) = 0;
  *(v1 + *((*v3 & *v1) + qword_27CDD4138 + 40)) = 0;
  v10 = *((*v3 & *v1) + qword_27CDD4138 + 48);
  if (qword_280BD7CC0 != -1)
  {
    swift_once();
  }

  *(v1 + v10) = [objc_allocWithZone(FASettingsSpecifierProvider) initWithAccountManager_];
  v11 = *((*v3 & *v1) + qword_27CDD4138 + 56);
  if (qword_280BD79D8 != -1)
  {
    swift_once();
  }

  *(v1 + v11) = qword_280BD79E0;
  (*(v5 + 16))(v8, a1, v4);

  return sub_21BE2774C();
}

uint64_t sub_21BBE3B98(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[2];
  v7 = v1[3];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_21BBA6A64;

  return sub_21BBE277C(a1, v6, v7, v9, v8);
}

unint64_t sub_21BBE3C78()
{
  result = qword_27CDB6360;
  if (!qword_27CDB6360)
  {
    sub_21BB3A2A4(255, &qword_27CDB6358, 0x277D75D28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB6360);
  }

  return result;
}

unint64_t sub_21BBE3CE8()
{
  result = qword_280BD69E0;
  if (!qword_280BD69E0)
  {
    sub_21BE2870C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BD69E0);
  }

  return result;
}

void sub_21BBE3D40(uint64_t *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  sub_21BBE0BD8(a1);
}

uint64_t sub_21BBE3D4C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_21BBB7EB8;

  return sub_21BBE1C08(v2, v3, v4);
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_21BBE3E1C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_21BBE3E64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_OWORD *sub_21BBE3EE0@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v14 = *v1;
  v15 = v3;
  v16[0] = v1[2];
  *(v16 + 9) = *(v1 + 41);
  v4 = *(v1 + 8);
  v18 = *(v1 + 24);
  v19 = v4;
  v17 = *(v1 + 40);
  type metadata accessor for FamilyChecklistStore();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = objc_opt_self();
  sub_21BBC8120(&v19, v13);
  sub_21BBC8120(&v17, v13);
  sub_21BBE40F0(v1, v13);
  sub_21BBE4128(&v18, v13);
  v7 = [v6 bundleForClass_];
  v8 = sub_21BE289CC();
  v9 = [objc_opt_self() imageNamed:v8 inBundle:v7 withConfiguration:0];

  if (v9)
  {
    *(a1 + 104) = &type metadata for IcloudPlusDataItem;
    *(a1 + 112) = sub_21BBE4198();
    result = swift_allocObject();
    *(a1 + 72) = 0;
    *(a1 + 80) = result;
    v11 = v15;
    result[1] = v14;
    result[2] = v11;
    result[3] = v16[0];
    *(result + 57) = *(v16 + 9);
    v12 = v18;
    *a1 = v19;
    *(a1 + 16) = v12;
    *(a1 + 32) = v17;
    *(a1 + 120) = 0;
    *(a1 + 48) = v9;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
  }

  else
  {
    result = sub_21BE2978C();
    __break(1u);
  }

  return result;
}

_OWORD *sub_21BBE40AC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  *v5 = v1[2];
  *&v5[9] = *(v1 + 41);
  return sub_21BBE3EE0(a1);
}

uint64_t sub_21BBE4128(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7AB0, &qword_21BE39110);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21BBE4198()
{
  result = qword_27CDB6378;
  if (!qword_27CDB6378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB6378);
  }

  return result;
}

void *sub_21BBE41EC()
{
  type metadata accessor for RemoteFlowPresenter();
  result = swift_allocObject();
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  qword_27CDD4148 = result;
  return result;
}

id sub_21BBE4220(void *a1, void *a2)
{
  [a1 setModalPresentationStyle_];

  return [a2 presentViewController:a1 animated:0 completion:0];
}

void sub_21BBE42A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = v2[2];
  if (v6)
  {
    v7 = v6;
    v8 = sub_21BD948E4();

    v9 = [v8 presentingViewController];
    if (v9)
    {
      [v9 dismissViewControllerAnimated:1 completion:0];
    }
  }

  v10 = v3[2];
  v3[2] = 0;

  v11 = v3[3];
  if (v11)
  {
    v12 = v3[4];

    v11(a1, a2);

    sub_21BB5AEC4(v11);
  }
}

void sub_21BBE4394(void *a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v44 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v43 - v11;
  v13 = sub_21BE26A4C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v43 - v19;
  if (v5[2])
  {
    sub_21BE2614C();
    v21 = sub_21BE26A2C();
    v22 = sub_21BE28FFC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_21BB35000, v21, v22, "Trying to show remote flow while it is already shown", v23, 2u);
      MEMORY[0x21CF05C50](v23, -1, -1);
    }

    (*(v14 + 8))(v18, v13);
  }

  else
  {
    v43 = v13;
    v25 = v5[3];
    v24 = v5[4];
    v5[3] = a4;
    v5[4] = a5;

    sub_21BB5AEC4(v25);
    v26 = swift_allocObject();
    swift_weakInit();
    v27 = type metadata accessor for HostRemoteViewCoordinator();
    v28 = objc_allocWithZone(v27);
    v28[OBJC_IVAR____TtC14FamilyCircleUI25HostRemoteViewCoordinator_state] = 0;
    *&v28[OBJC_IVAR____TtC14FamilyCircleUI25HostRemoteViewCoordinator_xpcConnection] = 0;
    v29 = &v28[OBJC_IVAR____TtC14FamilyCircleUI25HostRemoteViewCoordinator_onEnd];
    *v29 = 0;
    v29[1] = 0;
    *&v28[OBJC_IVAR____TtC14FamilyCircleUI25HostRemoteViewCoordinator____lazy_storage___remoteViewController] = 0;
    *&v28[OBJC_IVAR____TtC14FamilyCircleUI25HostRemoteViewCoordinator_ageRangeRequestModel] = a1;
    *v29 = sub_21BBE48A8;
    v29[1] = v26;
    v45.receiver = v28;
    v45.super_class = v27;
    v30 = a1;
    v31 = objc_msgSendSuper2(&v45, sel_init);
    v32 = v5[2];
    v5[2] = v31;
    v33 = v31;

    v34 = sub_21BD948E4();
    v44();

    sub_21BE2614C();
    v35 = sub_21BE26A2C();
    v36 = sub_21BE28FFC();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_21BB35000, v35, v36, "RemoteFlowPresenter (Host): Begin presentation...", v37, 2u);
      MEMORY[0x21CF05C50](v37, -1, -1);
    }

    (*(v14 + 8))(v20, v43);
    if (*(v33 + OBJC_IVAR____TtC14FamilyCircleUI25HostRemoteViewCoordinator_state))
    {
    }

    else
    {
      *(v33 + OBJC_IVAR____TtC14FamilyCircleUI25HostRemoteViewCoordinator_state) = 1;
      v38 = sub_21BE28DAC();
      (*(*(v38 - 8) + 56))(v12, 1, 1, v38);
      sub_21BE28D7C();
      v39 = v33;
      v40 = sub_21BE28D6C();
      v41 = swift_allocObject();
      v42 = MEMORY[0x277D85700];
      v41[2] = v40;
      v41[3] = v42;
      v41[4] = v39;
      sub_21BBA932C(0, 0, v12, &unk_21BE344D0, v41);
    }
  }
}

uint64_t sub_21BBE47D0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_21BBE42A4(a1, a2);
  }

  return result;
}

uint64_t sub_21BBE4844()
{
  v1 = *(v0 + 32);
  sub_21BB5AEC4(*(v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_21BBE48B0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21BBA6A64;

  return sub_21BD94EA8(a1, v4, v5, v6);
}

unint64_t sub_21BBE4964(char a1)
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

uint64_t sub_21BBE4B64(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = a2[1];
  if (a1[1])
  {
    v5 = 256;
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_21BDB089C(v5 | v2);
  v8 = v7;
  if (v4)
  {
    v9 = 256;
  }

  else
  {
    v9 = 0;
  }

  if (v6 == sub_21BDB089C(v9 | v3) && v8 == v10)
  {
  }

  else
  {
    v12 = sub_21BE2995C();

    v13 = 0;
    if ((v12 & 1) == 0)
    {
      return v13 & 1;
    }
  }

  v14 = sub_21BC5C62C(v2);
  v16 = v15;
  if (v14 == sub_21BC5C62C(v3) && v16 == v17)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_21BE2995C();
  }

  return v13 & 1;
}

uint64_t sub_21BBE4C88()
{
  v1 = v0[1];
  v2 = *v0;
  sub_21BE29ACC();
  if (v1)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  sub_21BDB089C(v3 | v2);
  sub_21BE28ABC();

  sub_21BC5C62C(v2);
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

uint64_t sub_21BBE4D2C()
{
  if (v0[1])
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  v2 = *v0;
  sub_21BDB089C(v1 | v2);
  sub_21BE28ABC();

  sub_21BC5C62C(v2);
  sub_21BE28ABC();
}

uint64_t sub_21BBE4DC4()
{
  v1 = v0[1];
  v2 = *v0;
  sub_21BE29ACC();
  if (v1)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  sub_21BDB089C(v3 | v2);
  sub_21BE28ABC();

  sub_21BC5C62C(v2);
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

unint64_t sub_21BBE4E64@<X0>(unint64_t *a1@<X8>)
{
  result = sub_21BBE4964(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_21BBE4EA4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  type metadata accessor for ChecklistStateVars();
  sub_21BBE6598(&qword_27CDBDB60, type metadata accessor for ChecklistStateVars);
  v5 = sub_21BE26E9C();
  v7 = v6;
  if (qword_280BD79D8 != -1)
  {
    swift_once();
  }

  type metadata accessor for FamilyChecklistStore();
  sub_21BBE6598(&qword_27CDB63D0, type metadata accessor for FamilyChecklistStore);

  v8 = sub_21BE2727C();
  v10 = v9;
  type metadata accessor for FamilyCircleStore(0);
  sub_21BBE6598(&qword_27CDB5C40, type metadata accessor for FamilyCircleStore);
  v11 = sub_21BE270CC();
  v13 = v12;
  result = sub_21BE283EC();
  *a1 = v5;
  *(a1 + 8) = v7 & 1;
  *(a1 + 9) = v3;
  *(a1 + 10) = v4;
  *(a1 + 16) = v11;
  *(a1 + 24) = v13;
  *(a1 + 32) = v8;
  *(a1 + 40) = v10;
  *(a1 + 48) = v15;
  *(a1 + 56) = v16;
  return result;
}

uint64_t sub_21BBE5084()
{
  v1 = qword_27CDB6388;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB63D8, &qword_21BE346D8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = (v0 + qword_27CDD4150);

  return __swift_destroy_boxed_opaque_existential_0Tm(v3);
}

id sub_21BBE5108()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for FamilyMessageConfigProvider();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_21BBE5180(void *a1)
{
  v2 = objc_opt_self();
  v3 = a1;
  v4 = [v2 defaultCenter];
  [v4 removeObserver_];

  v6.receiver = v3;
  v6.super_class = type metadata accessor for FamilyMessageConfigProvider();
  return objc_msgSendSuper2(&v6, sel_dealloc);
}

uint64_t sub_21BBE520C(uint64_t a1)
{
  v2 = qword_27CDB6388;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB63D8, &qword_21BE346D8);
  (*(*(v3 - 8) + 8))(a1 + v2, v3);
  v4 = (a1 + qword_27CDD4150);

  return __swift_destroy_boxed_opaque_existential_0Tm(v4);
}

uint64_t sub_21BBE5294()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  return v1;
}

uint64_t sub_21BBE5308(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = sub_21BE28D7C();
  v1[4] = sub_21BE28D6C();
  v2 = swift_task_alloc();
  v1[5] = v2;
  *v2 = v1;
  v2[1] = sub_21BBCD93C;

  return sub_21BBE5730();
}

uint64_t sub_21BBE53B8(uint64_t a1, uint64_t a2)
{
  v2[8] = a2;
  sub_21BE28D7C();
  v2[9] = sub_21BE28D6C();
  v4 = sub_21BE28D0C();
  v2[10] = v4;
  v2[11] = v3;

  return MEMORY[0x2822009F8](sub_21BBE5450, v4, v3);
}

uint64_t sub_21BBE5450()
{
  v1 = v0[8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[qword_27CDB6380] = 1;
  }

  v3 = v0[8];
  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  v0[12] = v4;
  if (v4)
  {
    v5 = swift_task_alloc();
    v0[13] = v5;
    *v5 = v0;
    v5[1] = sub_21BBE558C;

    return sub_21BBCA2BC();
  }

  else
  {
    v7 = v0[9];

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_21BBE558C()
{
  v1 = *v0;
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 96);
  v7 = *v0;

  v4 = *(v1 + 88);
  v5 = *(v1 + 80);

  return MEMORY[0x2822009F8](sub_21BBE56CC, v5, v4);
}

uint64_t sub_21BBE56CC()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21BBE5730()
{
  v1[2] = v0;
  sub_21BE28D7C();
  v1[3] = sub_21BE28D6C();
  v3 = sub_21BE28D0C();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x2822009F8](sub_21BBE57C8, v3, v2);
}

uint64_t sub_21BBE57C8()
{
  v1 = v0[2];
  v3 = *(v1 + qword_27CDB63F0);
  v2 = *(v1 + qword_27CDB63F0 + 8);
  v4 = type metadata accessor for FamilySignpost();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();

  v0[6] = sub_21BC84D18(v3, v2, "computeItems", 12, 2);
  v7 = qword_27CDD4150;
  v8 = swift_task_alloc();
  v0[7] = v8;
  *v8 = v0;
  v8[1] = sub_21BBE58E4;
  v9 = v0[2];

  return (sub_21BE19D18)(v1 + v7);
}

uint64_t sub_21BBE58E4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *v2;
  *(v4 + 64) = a1;
  *(v4 + 72) = v1;

  v7 = *(v3 + 40);
  v8 = *(v3 + 32);
  if (v1)
  {
    v9 = sub_21BBE5E28;
  }

  else
  {
    v9 = sub_21BBE5A28;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_21BBE5A28()
{
  v1 = [*(v0 + 64) members];
  sub_21BBE66D8();
  v2 = sub_21BE28C3C();
  *(v0 + 80) = v2;

  if (v2 >> 62)
  {
    v10 = sub_21BE2951C();
    *(v0 + 88) = v10;
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 88) = v3;
    if (v3)
    {
LABEL_3:
      v4 = *(v0 + 16);
      v5 = qword_27CDB6380;
      *(v0 + 96) = qword_27CDB6380;
      v6 = *(v4 + v5);
      v7 = *(MEMORY[0x277D08068] + 4);
      v8 = swift_task_alloc();
      *(v0 + 104) = v8;
      *v8 = v0;
      v8[1] = sub_21BBE5BA4;
      v9 = *(v0 + 64);

      return MEMORY[0x28215E528](v6);
    }
  }

  v11 = *(v0 + 64);
  v12 = *(v0 + 24);

  v13 = *(v0 + 48);
  sub_21BC852D8();

  v14 = *(v0 + 8);
  v15 = MEMORY[0x277D84F90];

  return v14(v15);
}

uint64_t sub_21BBE5BA4()
{
  v1 = *v0;
  v2 = *(*v0 + 104);
  v6 = *v0;

  v3 = *(v1 + 40);
  v4 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_21BBE5CC4, v4, v3);
}

void sub_21BBE5CC4()
{
  v1 = v0[12];
  v2 = v0[10];
  v4 = v0[2];
  v3 = v0[3];

  v5 = 0;
  *(v4 + v1) = 0;
  v6 = v2 & 0xC000000000000001;
  v7 = v2 & 0xFFFFFFFFFFFFFF8;
  v8 = v2 + 32;
  do
  {
    v9 = v5;
    v10 = v0[11];
    if (v5 == v10)
    {
      break;
    }

    if (v6)
    {
      v11 = MEMORY[0x21CF047C0](v5, v0[10]);
    }

    else
    {
      if (v5 >= *(v7 + 16))
      {
        goto LABEL_14;
      }

      v11 = *(v8 + 8 * v5);
    }

    v12 = v11;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      return;
    }

    v13 = sub_21BE291BC();

    v5 = v9 + 1;
  }

  while ((v13 & 1) != 0);
  v14 = v9 == v10;
  v15 = v0[10];
  v16 = v0[8];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB63E0, &unk_21BE346E0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_21BE32770;
  *(v17 + 32) = 12;
  *(v17 + 33) = v14;

  v18 = v0[6];
  sub_21BC852D8();

  v19 = v0[1];

  v19(v17);
}

uint64_t sub_21BBE5E28()
{
  v1 = v0[6];
  v2 = v0[3];

  sub_21BC852D8();

  v3 = v0[1];
  v4 = v0[9];

  return v3();
}

uint64_t sub_21BBE5E9C()
{
  v0[2] = sub_21BE28D7C();
  v0[3] = sub_21BE28D6C();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_21BBAFDA8;

  return sub_21BBCA2BC();
}

void sub_21BBE5F60(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v11 - v4;
  v6 = sub_21BE28DAC();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_21BE28D7C();
  v7 = a1;
  v8 = sub_21BE28D6C();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v7;
  sub_21BBA932C(0, 0, v5, &unk_21BE346F8, v9);
}

uint64_t type metadata accessor for FamilyMessageConfigProvider()
{
  result = qword_27CDB6390;
  if (!qword_27CDB6390)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21BBE60DC()
{
  sub_21BBE6180();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_initClassMetadata2();
  }
}

void sub_21BBE6180()
{
  if (!qword_27CDB63A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB63A8, &qword_21BE34530);
    v0 = sub_21BE26CCC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDB63A0);
    }
  }
}

uint64_t getEnumTagSinglePayload for FamilyMessageItemDataItem(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FamilyMessageItemDataItem(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}