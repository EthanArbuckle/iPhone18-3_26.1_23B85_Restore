uint64_t sub_1DF4F4780()
{
  v30 = v0;
  v1 = v0[16];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[6];

  v5 = v1;
  v6 = sub_1DF564794();
  v7 = sub_1DF564C24();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[16];
    v10 = v0[11];
    v9 = v0[12];
    v11 = v0[6];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 136446722;
    v29[0] = v13;
    v29[1] = 91;
    v29[2] = 0xE100000000000000;
    MEMORY[0x1E12D62C0](0xD000000000000022, 0x80000001DF572A80);
    MEMORY[0x1E12D62C0](2108704, 0xE300000000000000);
    MEMORY[0x1E12D62C0](v10, v9);
    MEMORY[0x1E12D62C0](93, 0xE100000000000000);

    v14 = sub_1DF47EF6C(91, 0xE100000000000000, v29);

    *(v12 + 4) = v14;
    *(v12 + 12) = 2082;
    v15 = sub_1DF564884();
    v17 = sub_1DF47EF6C(v15, v16, v29);

    *(v12 + 14) = v17;
    *(v12 + 22) = 2082;
    swift_getErrorValue();
    v19 = v0[2];
    v18 = v0[3];
    v20 = v0[4];
    v21 = sub_1DF5651B4();
    v23 = sub_1DF47EF6C(v21, v22, v29);

    *(v12 + 24) = v23;
    _os_log_impl(&dword_1DF47C000, v6, v7, "%{public}s Failed to notify AvailabilityFoundationClient about access status: %{public}s. Error: %{public}s", v12, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12D75F0](v13, -1, -1);
    MEMORY[0x1E12D75F0](v12, -1, -1);
  }

  else
  {
    v24 = v0[16];
    v25 = v0[12];
  }

  v26 = v0[10];

  v27 = v0[1];

  return v27();
}

uint64_t sub_1DF4F4A28(char a1)
{
  *(v2 + 48) = v1;
  *(v2 + 72) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DF4F4A4C, 0, 0);
}

uint64_t sub_1DF4F4A4C()
{
  v15 = v0;
  v1 = *(v0 + 48);
  v2 = *(v1 + 32);
  if ((*(v1 + 24))())
  {
    if (qword_1ED9556D0 != -1)
    {
      swift_once();
    }

    v3 = sub_1DF5647B4();
    __swift_project_value_buffer(v3, qword_1ED9556D8);
    v4 = sub_1DF564794();
    v5 = sub_1DF564C44();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 72);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v14 = v8;
      *v7 = 136315394;
      *(v7 + 4) = sub_1DF47EF6C(0xD000000000000022, 0x80000001DF572A50, &v14);
      *(v7 + 12) = 1024;
      *(v7 + 14) = v6;
      _os_log_impl(&dword_1DF47C000, v4, v5, "%s Eligibility bypass is set to YES. Overriding access status %{BOOL}d to true.", v7, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x1E12D75F0](v8, -1, -1);
      MEMORY[0x1E12D75F0](v7, -1, -1);
    }

    v9 = 1;
  }

  else
  {
    v9 = *(v0 + 72);
  }

  *(v0 + 73) = v9;
  v10 = *(*(v0 + 48) + 16);
  v11 = *(MEMORY[0x1E69A1470] + 4);
  v12 = swift_task_alloc();
  *(v0 + 56) = v12;
  *v12 = v0;
  v12[1] = sub_1DF4F4C38;

  return MEMORY[0x1EEE0B5D0](v9);
}

uint64_t sub_1DF4F4C38()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_1DF4F4E70;
  }

  else
  {
    v3 = sub_1DF4F4D4C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DF4F4D4C()
{
  if (qword_1ED9556D0 != -1)
  {
    swift_once();
  }

  v1 = sub_1DF5647B4();
  __swift_project_value_buffer(v1, qword_1ED9556D8);
  v2 = sub_1DF564794();
  v3 = sub_1DF564C44();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 73);
    v5 = swift_slowAlloc();
    *v5 = 67240192;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_1DF47C000, v2, v3, "Successfully notified AvailabilityFoundationClient about access status: %{BOOL,public}d!", v5, 8u);
    MEMORY[0x1E12D75F0](v5, -1, -1);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1DF4F4E70()
{
  v20 = v0;
  if (qword_1ED9556D0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = sub_1DF5647B4();
  __swift_project_value_buffer(v2, qword_1ED9556D8);
  v3 = v1;
  v4 = sub_1DF564794();
  v5 = sub_1DF564C24();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 64);
  if (v6)
  {
    v8 = *(v0 + 73);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 67240450;
    *(v9 + 4) = v8;
    *(v9 + 8) = 2082;
    swift_getErrorValue();
    v12 = *(v0 + 16);
    v11 = *(v0 + 24);
    v13 = *(v0 + 32);
    v14 = sub_1DF5651B4();
    v16 = sub_1DF47EF6C(v14, v15, &v19);

    *(v9 + 10) = v16;
    _os_log_impl(&dword_1DF47C000, v4, v5, "Failed to notify AvailabilityFoundationClient about access status: %{BOOL,public}d. Error: %{public}s", v9, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1E12D75F0](v10, -1, -1);
    MEMORY[0x1E12D75F0](v9, -1, -1);
  }

  else
  {
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1DF4F5040(char a1)
{
  *(v2 + 224) = v1;
  *(v2 + 256) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DF4F5064, 0, 0);
}

uint64_t sub_1DF4F5064()
{
  v24 = v0;
  v1 = *(v0 + 224);
  v2 = *(v1 + 32);
  if ((*(v1 + 24))())
  {
    if (qword_1ED9556D0 != -1)
    {
      swift_once();
    }

    v3 = sub_1DF5647B4();
    __swift_project_value_buffer(v3, qword_1ED9556D8);
    v4 = sub_1DF564794();
    v5 = sub_1DF564C44();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 256);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v23 = v8;
      *v7 = 136315394;
      *(v7 + 4) = sub_1DF47EF6C(0xD000000000000019, 0x80000001DF572A30, &v23);
      *(v7 + 12) = 1024;
      *(v7 + 14) = v6;
      _os_log_impl(&dword_1DF47C000, v4, v5, "%s Eligibility bypass is set to YES. Overriding OptIn status %{BOOL}d to true.", v7, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x1E12D75F0](v8, -1, -1);
      MEMORY[0x1E12D75F0](v7, -1, -1);
    }
  }

  else if (*(v0 + 256) != 1)
  {
    v18 = 0;
    goto LABEL_17;
  }

  v9 = [objc_opt_self() mainBundle];
  v10 = [v9 bundleIdentifier];

  if (v10)
  {
    v11 = sub_1DF564944();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  *(v0 + 192) = v11;
  *(v0 + 200) = v13;
  v14 = swift_task_alloc();
  *(v14 + 16) = v0 + 192;
  v15 = sub_1DF4C1F84(sub_1DF4C35D8, v14, &unk_1F5A885C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE37B60, &unk_1DF567EB0);
  swift_arrayDestroy();

  if (v15)
  {
    v16 = objc_opt_self();
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_1DF4F5438;
    v17 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37F50, &unk_1DF56A370);
    *(v0 + 80) = MEMORY[0x1E69E9820];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1DF4F5CC4;
    *(v0 + 104) = &block_descriptor_3;
    *(v0 + 112) = v17;
    [v16 clearCFUWithCompletionHandler_];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }

  v18 = 1;
LABEL_17:
  *(v0 + 257) = v18;
  v19 = *(*(v0 + 224) + 16);
  v20 = *(MEMORY[0x1E69A1468] + 4);
  v21 = swift_task_alloc();
  *(v0 + 240) = v21;
  *v21 = v0;
  v21[1] = sub_1DF4F56A8;

  return MEMORY[0x1EEE0B5C8](v18);
}

uint64_t sub_1DF4F5438()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 232) = v2;
  if (v2)
  {
    v3 = sub_1DF4F58E0;
  }

  else
  {
    v3 = sub_1DF4F5548;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DF4F5548()
{
  if (qword_1ED9558B8 != -1)
  {
    swift_once();
  }

  v1 = sub_1DF5647B4();
  __swift_project_value_buffer(v1, qword_1ED955C68);
  v2 = sub_1DF564794();
  v3 = sub_1DF564C44();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DF47C000, v2, v3, "Successfully cleared CFU on opt-in", v4, 2u);
    MEMORY[0x1E12D75F0](v4, -1, -1);
  }

  *(v0 + 257) = 1;
  v5 = *(*(v0 + 224) + 16);
  v6 = *(MEMORY[0x1E69A1468] + 4);
  v7 = swift_task_alloc();
  *(v0 + 240) = v7;
  *v7 = v0;
  v7[1] = sub_1DF4F56A8;

  return MEMORY[0x1EEE0B5C8](1);
}

uint64_t sub_1DF4F56A8()
{
  v2 = *(*v1 + 240);
  v5 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = sub_1DF4F5AF4;
  }

  else
  {
    v3 = sub_1DF4F57BC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DF4F57BC()
{
  if (qword_1ED9556D0 != -1)
  {
    swift_once();
  }

  v1 = sub_1DF5647B4();
  __swift_project_value_buffer(v1, qword_1ED9556D8);
  v2 = sub_1DF564794();
  v3 = sub_1DF564C44();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 257);
    v5 = swift_slowAlloc();
    *v5 = 67240192;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_1DF47C000, v2, v3, "Successfully notified AvailabilityFoundationClient about new optIn status: %{BOOL,public}d!", v5, 8u);
    MEMORY[0x1E12D75F0](v5, -1, -1);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1DF4F58E0()
{
  v22 = v0;
  v1 = *(v0 + 232);
  swift_willThrow();
  if (qword_1ED9558B8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 232);
  v3 = sub_1DF5647B4();
  __swift_project_value_buffer(v3, qword_1ED955C68);
  v4 = v2;
  v5 = sub_1DF564794();
  v6 = sub_1DF564C24();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 232);
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 136446210;
    swift_getErrorValue();
    v12 = *(v0 + 168);
    v11 = *(v0 + 176);
    v13 = *(v0 + 184);
    v14 = sub_1DF5651B4();
    v16 = sub_1DF47EF6C(v14, v15, &v21);

    *(v9 + 4) = v16;
    _os_log_impl(&dword_1DF47C000, v5, v6, "Unable to clear CFU on opt-in. Error: %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1E12D75F0](v10, -1, -1);
    MEMORY[0x1E12D75F0](v9, -1, -1);
  }

  else
  {
  }

  *(v0 + 257) = 1;
  v17 = *(*(v0 + 224) + 16);
  v18 = *(MEMORY[0x1E69A1468] + 4);
  v19 = swift_task_alloc();
  *(v0 + 240) = v19;
  *v19 = v0;
  v19[1] = sub_1DF4F56A8;

  return MEMORY[0x1EEE0B5C8](1);
}

uint64_t sub_1DF4F5AF4()
{
  v20 = v0;
  if (qword_1ED9556D0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 248);
  v2 = sub_1DF5647B4();
  __swift_project_value_buffer(v2, qword_1ED9556D8);
  v3 = v1;
  v4 = sub_1DF564794();
  v5 = sub_1DF564C24();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 248);
  if (v6)
  {
    v8 = *(v0 + 257);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 67240450;
    *(v9 + 4) = v8;
    *(v9 + 8) = 2082;
    swift_getErrorValue();
    v12 = *(v0 + 144);
    v11 = *(v0 + 152);
    v13 = *(v0 + 160);
    v14 = sub_1DF5651B4();
    v16 = sub_1DF47EF6C(v14, v15, &v19);

    *(v9 + 10) = v16;
    _os_log_impl(&dword_1DF47C000, v4, v5, "Failed to notify AvailabilityFoundationClient about new optIn status: %{BOOL,public}d. Error: %{public}s", v9, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1E12D75F0](v10, -1, -1);
    MEMORY[0x1E12D75F0](v9, -1, -1);
  }

  else
  {
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1DF4F5CC4(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37900, &unk_1DF5673F0);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x1EEE6DEE8](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x1EEE6DEE0](v8);
  }
}

uint64_t sub_1DF4F5D70()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

unint64_t sub_1DF4F5DC8()
{
  result = qword_1ECE37F40;
  if (!qword_1ECE37F40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE37F48, &qword_1DF56A250);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37F40);
  }

  return result;
}

uint64_t sub_1DF4F5E3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1DF48D3C0;

  return v11(a1, a2, a3);
}

uint64_t sub_1DF4F5F64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1DF48D3C0;

  return v11(a1, a2, a3);
}

uint64_t sub_1DF4F608C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 24);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1DF48D3C0;

  return v11(a1, a2, a3);
}

uint64_t sub_1DF4F61B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 32);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1DF48D4B0;

  return v11(a1, a2, a3);
}

uint64_t sub_1DF4F6300(__n128 a1)
{
  v2 = 0;
  v3 = 0;
  v4 = *v1;
  v41 = MEMORY[0x1E69E7CD0];
  v37 = "notify(availability:)";
  v33 = " .shortOfStorage";
  v32 = "<Assets: unavailable -";
  v34 = 0x80000001DF5726B0;
  v35 = 0x80000001DF572650;
  a1.n128_u64[0] = 136315394;
  v36 = a1;
  do
  {
    v13 = v2;
    v14 = *(&unk_1F5A88A40 + v3 + 4);
    if ((v14 & ~v4) == 0)
    {
      if (v14 == 2)
      {
        v5 = sub_1DF5646B4();
        v6 = *(v5 - 8);
        v7 = *(v6 + 64);
        v8 = MEMORY[0x1EEE9AC00](v5);
        v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
        MEMORY[0x1EEE9AC00](v8);
        v12 = &v32 - v11;
        (*(v6 + 104))(&v32 - v11, *MEMORY[0x1E69A1480], v5);
        sub_1DF4F6E88(v10, v12);
        (*(v6 + 8))(v10, v5);
      }

      else if (v14 == 1)
      {
        v15 = sub_1DF5646B4();
        v16 = *(v15 - 8);
        v17 = *(v16 + 64);
        v18 = MEMORY[0x1EEE9AC00](v15);
        v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
        MEMORY[0x1EEE9AC00](v18);
        v22 = &v32 - v21;
        (*(v16 + 104))(&v32 - v21, *MEMORY[0x1E69A1488], v15);
        sub_1DF4F6E88(v20, v22);
        (*(v16 + 8))(v20, v15);
      }

      else
      {
        if (qword_1ED9556D0 != -1)
        {
          swift_once();
        }

        v23 = sub_1DF5647B4();
        __swift_project_value_buffer(v23, qword_1ED9556D8);
        v24 = sub_1DF564794();
        v25 = sub_1DF564C24();
        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          v27 = swift_slowAlloc();
          v40 = v27;
          *v26 = v36.n128_u32[0];
          *(v26 + 4) = sub_1DF47EF6C(0xD00000000000001ALL, v37 | 0x8000000000000000, &v40);
          *(v26 + 12) = 2080;
          if (v14)
          {
            v38 = 0xD000000000000016;
            v39 = v35;
            if (v14)
            {
              MEMORY[0x1E12D62C0](0xD000000000000011, v33 | 0x8000000000000000);
            }

            if ((v14 & 2) != 0)
            {
              MEMORY[0x1E12D62C0](0xD000000000000010, v32 | 0x8000000000000000);
            }

            MEMORY[0x1E12D62C0](62, 0xE100000000000000);
            v28 = v38;
            v29 = v39;
          }

          else
          {
            v28 = 0xD000000000000013;
            v29 = v34;
          }

          v30 = sub_1DF47EF6C(v28, v29, &v40);

          *(v26 + 14) = v30;
          _os_log_impl(&dword_1DF47C000, v24, v25, "%s: Unknown reason: %s)", v26, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1E12D75F0](v27, -1, -1);
          MEMORY[0x1E12D75F0](v26, -1, -1);
        }
      }
    }

    v2 = 1;
    v3 = 1;
  }

  while ((v13 & 1) == 0);
  return v41;
}

uint64_t sub_1DF4F6798()
{
  v18 = MEMORY[0x1E69E7CD0];
  v1 = [v0 unavailabiltyReasons];
  v2 = 0x20u;
  v17 = v1;
  do
  {
    v4 = *(&unk_1F5A88600 + v2);
    if ((v4 & ~v1) == 0)
    {
      v5 = sub_1DF564614();
      v6 = *(v5 - 8);
      v7 = *(v6 + 64);
      v8 = MEMORY[0x1EEE9AC00](v5);
      v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
      v11 = MEMORY[0x1EEE9AC00](v8);
      v13 = &v17 - v12;
      MEMORY[0x1EEE9AC00](v11);
      v15 = &v17 - v14;
      if (v4 <= 15)
      {
        if (v4 > 3)
        {
          if (v4 == 4)
          {
            v3 = MEMORY[0x1E69A1428];
            goto LABEL_3;
          }

          if (v4 == 8)
          {
            v3 = MEMORY[0x1E69A1430];
            goto LABEL_3;
          }
        }

        else
        {
          if (v4 == 1)
          {
            v3 = MEMORY[0x1E69A1420];
LABEL_3:
            (*(v6 + 104))(&v17 - v14, *v3, v5);
            (*(v6 + 32))(v13, v15, v5);
            sub_1DF4F6A40(v10, v13);
            (*(v6 + 8))(v10, v5);
            v1 = v17;
            goto LABEL_4;
          }

          v3 = MEMORY[0x1E69A1438];
          if (v4 == 2)
          {
            goto LABEL_3;
          }
        }
      }

      else if (v4 <= 63)
      {
        if (v4 == 16)
        {
          v3 = MEMORY[0x1E69A1418];
          goto LABEL_3;
        }

        if (v4 == 32)
        {
          v3 = MEMORY[0x1E69A1410];
          goto LABEL_3;
        }
      }

      else
      {
        switch(v4)
        {
          case 64:
            v3 = MEMORY[0x1E69A1408];
            goto LABEL_3;
          case 128:
            v3 = MEMORY[0x1E69A1400];
            goto LABEL_3;
          case 256:
            v3 = MEMORY[0x1E69A13F8];
            goto LABEL_3;
        }
      }

      v3 = MEMORY[0x1E69A1440];
      goto LABEL_3;
    }

LABEL_4:
    v2 += 8;
  }

  while (v2 != 112);
  return v18;
}

uint64_t sub_1DF4F6A40(char *a1, char *a2)
{
  v31 = a1;
  v4 = sub_1DF564614();
  v30 = v2;
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_1DF4F8CDC(&qword_1ED9546C8, MEMORY[0x1EEE89528]);
  v37 = a2;
  v7 = sub_1DF5648B4();
  v36 = v5;
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  v34 = v5 + 56;
  v10 = *(v4 - 8);
  v11 = *(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9;
  v28 = v10;
  v29 = v4 - 8;
  if (v11)
  {
    v32 = ~v8;
    v35 = v10[2];
    v12 = v10[8];
    v33 = v10[9];
    v13 = (v10 + 1);
    while (1)
    {
      MEMORY[0x1EEE9AC00](v7);
      v14 = v33 * v9;
      v35(&v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), *(v36 + 48) + v33 * v9, v4);
      sub_1DF4F8CDC(&qword_1ED9546C0, MEMORY[0x1EEE89528]);
      v15 = sub_1DF5648F4();
      v16 = *v13;
      v7 = (*v13)(&v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v32;
      if (((*(v34 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v16(v37, v4);
    v35(v31, *(v36 + 48) + v14, v4);
    return 0;
  }

  else
  {
LABEL_5:
    v17 = v30;
    v18 = *v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = isUniquelyReferenced_nonNull_native;
    v21 = v28;
    v22 = v28[8];
    MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
    v24 = &v27 - v23;
    v25 = v37;
    (v21[2])(&v27 - v23, v37, v4);
    v38 = *v17;
    sub_1DF4F7A40(v24, v9, v20);
    *v17 = v38;
    (v21[4])(v31, v25, v4);
    return 1;
  }
}

uint64_t sub_1DF4F6D38(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_1DF565234();
  sub_1DF5649E4();
  v9 = sub_1DF565264();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_1DF5650D4() & 1) != 0)
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

    sub_1DF4F7CCC(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1DF4F6E88(char *a1, char *a2)
{
  v31 = a1;
  v4 = sub_1DF5646B4();
  v30 = v2;
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_1DF4F8CDC(&qword_1ECE37F60, MEMORY[0x1EEE89558]);
  v37 = a2;
  v7 = sub_1DF5648B4();
  v36 = v5;
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  v34 = v5 + 56;
  v10 = *(v4 - 8);
  v11 = *(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9;
  v28 = v10;
  v29 = v4 - 8;
  if (v11)
  {
    v32 = ~v8;
    v35 = v10[2];
    v12 = v10[8];
    v33 = v10[9];
    v13 = (v10 + 1);
    while (1)
    {
      MEMORY[0x1EEE9AC00](v7);
      v14 = v33 * v9;
      v35(&v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), *(v36 + 48) + v33 * v9, v4);
      sub_1DF4F8CDC(&qword_1ECE37F68, MEMORY[0x1EEE89558]);
      v15 = sub_1DF5648F4();
      v16 = *v13;
      v7 = (*v13)(&v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v32;
      if (((*(v34 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v16(v37, v4);
    v35(v31, *(v36 + 48) + v14, v4);
    return 0;
  }

  else
  {
LABEL_5:
    v17 = v30;
    v18 = *v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = isUniquelyReferenced_nonNull_native;
    v21 = v28;
    v22 = v28[8];
    MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
    v24 = &v27 - v23;
    v25 = v37;
    (v21[2])(&v27 - v23, v37, v4);
    v38 = *v17;
    sub_1DF4F7E4C(v24, v9, v20);
    *v17 = v38;
    (v21[4])(v31, v25, v4);
    return 1;
  }
}

uint64_t sub_1DF4F7180(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37F58, &qword_1DF56A390);
  result = sub_1DF564DB4();
  v6 = result;
  if (*(v3 + 16))
  {
    v36 = v2;
    v37 = v3;
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
      v15 = __clz(__rbit64(v11));
      v40 = (v11 - 1) & v11;
LABEL_17:
      v18 = v15 | (v7 << 6);
      v19 = sub_1DF564614();
      v39 = &v35;
      v20 = *(v19 - 8);
      v21 = v20[8];
      MEMORY[0x1EEE9AC00](v19);
      v23 = &v35 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
      v24 = *(v3 + 48);
      v25 = v20[9];
      v38 = v20[4];
      v38(v23, v24 + v25 * v18, v19);
      v26 = *(v6 + 40);
      sub_1DF4F8CDC(&qword_1ED9546C8, MEMORY[0x1EEE89528]);
      result = sub_1DF5648B4();
      v27 = -1 << *(v6 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v13 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v13 + 8 * v29);
          if (v33 != -1)
          {
            v14 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v28) & ~*(v13 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = (v38)(*(v6 + 48) + v14 * v25, v23, v19);
      ++*(v6 + 16);
      v11 = v40;
      v3 = v37;
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
        v40 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v34 = 1 << *(v3 + 32);
    if (v34 >= 64)
    {
      bzero(v8, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v34;
    }

    v2 = v36;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1DF4F74B0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE37F30, &unk_1DF56A3A0);
  result = sub_1DF564DB4();
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
      sub_1DF565234();
      sub_1DF5649E4();
      result = sub_1DF565264();
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

uint64_t sub_1DF4F7710(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37F70, &qword_1DF56A398);
  result = sub_1DF564DB4();
  v6 = result;
  if (*(v3 + 16))
  {
    v36 = v2;
    v37 = v3;
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
      v15 = __clz(__rbit64(v11));
      v40 = (v11 - 1) & v11;
LABEL_17:
      v18 = v15 | (v7 << 6);
      v19 = sub_1DF5646B4();
      v39 = &v35;
      v20 = *(v19 - 8);
      v21 = v20[8];
      MEMORY[0x1EEE9AC00](v19);
      v23 = &v35 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
      v24 = *(v3 + 48);
      v25 = v20[9];
      v38 = v20[4];
      v38(v23, v24 + v25 * v18, v19);
      v26 = *(v6 + 40);
      sub_1DF4F8CDC(&qword_1ECE37F60, MEMORY[0x1EEE89558]);
      result = sub_1DF5648B4();
      v27 = -1 << *(v6 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v13 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v13 + 8 * v29);
          if (v33 != -1)
          {
            v14 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v28) & ~*(v13 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = (v38)(*(v6 + 48) + v14 * v25, v23, v19);
      ++*(v6 + 16);
      v11 = v40;
      v3 = v37;
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
        v40 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v34 = 1 << *(v3 + 32);
    if (v34 >= 64)
    {
      bzero(v8, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v34;
    }

    v2 = v36;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1DF4F7A40(uint64_t a1, unint64_t a2, char a3)
{
  v30 = a1;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1DF4F7180(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      sub_1DF4F8234(&qword_1ECE37F58, &qword_1DF56A390, MEMORY[0x1EEE89530]);
      goto LABEL_12;
    }

    sub_1DF4F8474(v5 + 1);
  }

  v7 = *v3;
  v8 = *(*v3 + 40);
  v9 = sub_1DF564614();
  sub_1DF4F8CDC(&qword_1ED9546C8, MEMORY[0x1EEE89528]);
  v10 = sub_1DF5648B4();
  v28 = v7 + 56;
  v29 = v7;
  v11 = -1 << *(v7 + 32);
  a2 = v10 & ~v11;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v27 = ~v11;
    v12 = *(v9 - 8);
    v13 = v12[2];
    v14 = v12[8];
    v15 = v12[9];
    v16 = (v12 + 1);
    do
    {
      MEMORY[0x1EEE9AC00](v10);
      v13(&v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), *(v29 + 48) + v15 * a2, v9);
      sub_1DF4F8CDC(&qword_1ED9546C0, MEMORY[0x1EEE89528]);
      v17 = sub_1DF5648F4();
      v10 = (*v16)(&v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
      if (v17)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v27;
    }

    while (((*(v28 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v18 = *v26;
  *(*v26 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v19 = *(v18 + 48);
  v20 = sub_1DF564614();
  result = (*(*(v20 - 8) + 32))(v19 + *(*(v20 - 8) + 72) * a2, v30, v20);
  v22 = *(v18 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (!v23)
  {
    *(v18 + 16) = v24;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1DF565134();
  __break(1u);
  return result;
}

uint64_t sub_1DF4F7CCC(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_1DF4F74B0(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1DF4F80D8();
      goto LABEL_16;
    }

    sub_1DF4F878C(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_1DF565234();
  sub_1DF5649E4();
  result = sub_1DF565264();
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

      result = sub_1DF5650D4();
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
  result = sub_1DF565134();
  __break(1u);
  return result;
}

uint64_t sub_1DF4F7E4C(uint64_t a1, unint64_t a2, char a3)
{
  v30 = a1;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1DF4F7710(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      sub_1DF4F8234(&qword_1ECE37F70, &qword_1DF56A398, MEMORY[0x1EEE89550]);
      goto LABEL_12;
    }

    sub_1DF4F89C4(v5 + 1);
  }

  v7 = *v3;
  v8 = *(*v3 + 40);
  v9 = sub_1DF5646B4();
  sub_1DF4F8CDC(&qword_1ECE37F60, MEMORY[0x1EEE89558]);
  v10 = sub_1DF5648B4();
  v28 = v7 + 56;
  v29 = v7;
  v11 = -1 << *(v7 + 32);
  a2 = v10 & ~v11;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v27 = ~v11;
    v12 = *(v9 - 8);
    v13 = v12[2];
    v14 = v12[8];
    v15 = v12[9];
    v16 = (v12 + 1);
    do
    {
      MEMORY[0x1EEE9AC00](v10);
      v13(&v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), *(v29 + 48) + v15 * a2, v9);
      sub_1DF4F8CDC(&qword_1ECE37F68, MEMORY[0x1EEE89558]);
      v17 = sub_1DF5648F4();
      v10 = (*v16)(&v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
      if (v17)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v27;
    }

    while (((*(v28 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v18 = *v26;
  *(*v26 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v19 = *(v18 + 48);
  v20 = sub_1DF5646B4();
  result = (*(*(v20 - 8) + 32))(v19 + *(*(v20 - 8) + 72) * a2, v30, v20);
  v22 = *(v18 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (!v23)
  {
    *(v18 + 16) = v24;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1DF565134();
  __break(1u);
  return result;
}

void *sub_1DF4F80D8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE37F30, &unk_1DF56A3A0);
  v2 = *v0;
  v3 = sub_1DF564DA4();
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

void *sub_1DF4F8234(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v31 = a3;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v5 = *v3;
  v6 = sub_1DF564DA4();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v4;
    result = (v6 + 56);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v5 + 56 + 8 * v9)
    {
      result = memmove(result, (v5 + 56), 8 * v9);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v32 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 56);
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
LABEL_17:
        v21 = v18 | (v11 << 6);
        v22 = v31(0);
        v23 = *(v22 - 8);
        v24 = *(v23 + 64);
        MEMORY[0x1EEE9AC00](v22);
        v26 = &v29 - v25;
        v28 = *(v27 + 72) * v21;
        (*(v23 + 16))(&v29 - v25, *(v5 + 48) + v28, v22);
        result = (*(v23 + 32))(*(v32 + 48) + v28, v26, v22);
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v4 = v30;
        v7 = v32;
        goto LABEL_21;
      }

      v20 = *(v5 + 56 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v7;
  }

  return result;
}

uint64_t sub_1DF4F8474(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37F58, &qword_1DF56A390);
  result = sub_1DF564DB4();
  v6 = result;
  if (*(v3 + 16))
  {
    v37 = v2;
    v38 = v3;
    v7 = 0;
    v8 = v3 + 56;
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
    v39 = result;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v41 = (v11 - 1) & v11;
LABEL_17:
      v18 = v15 | (v7 << 6);
      v19 = sub_1DF564614();
      v40 = &v36;
      v20 = *(v19 - 8);
      v21 = *(v20 + 64);
      MEMORY[0x1EEE9AC00](v19);
      v23 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
      v25 = v24;
      v26 = *(v3 + 48);
      v27 = *(v25 + 72);
      (*(v20 + 16))(v23, v26 + v27 * v18, v19);
      v6 = v39;
      v28 = *(v39 + 40);
      sub_1DF4F8CDC(&qword_1ED9546C8, MEMORY[0x1EEE89528]);
      result = sub_1DF5648B4();
      v29 = -1 << *(v6 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v13 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v13 + 8 * v31);
          if (v35 != -1)
          {
            v14 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v30) & ~*(v13 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = (*(v20 + 32))(*(v6 + 48) + v14 * v27, v23, v19);
      ++*(v6 + 16);
      v11 = v41;
      v3 = v38;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v37;
        goto LABEL_28;
      }

      v17 = *(v8 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v41 = (v17 - 1) & v17;
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

uint64_t sub_1DF4F878C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE37F30, &unk_1DF56A3A0);
  result = sub_1DF564DB4();
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
      sub_1DF565234();

      sub_1DF5649E4();
      result = sub_1DF565264();
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

uint64_t sub_1DF4F89C4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37F70, &qword_1DF56A398);
  result = sub_1DF564DB4();
  v6 = result;
  if (*(v3 + 16))
  {
    v37 = v2;
    v38 = v3;
    v7 = 0;
    v8 = v3 + 56;
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
    v39 = result;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v41 = (v11 - 1) & v11;
LABEL_17:
      v18 = v15 | (v7 << 6);
      v19 = sub_1DF5646B4();
      v40 = &v36;
      v20 = *(v19 - 8);
      v21 = *(v20 + 64);
      MEMORY[0x1EEE9AC00](v19);
      v23 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
      v25 = v24;
      v26 = *(v3 + 48);
      v27 = *(v25 + 72);
      (*(v20 + 16))(v23, v26 + v27 * v18, v19);
      v6 = v39;
      v28 = *(v39 + 40);
      sub_1DF4F8CDC(&qword_1ECE37F60, MEMORY[0x1EEE89558]);
      result = sub_1DF5648B4();
      v29 = -1 << *(v6 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v13 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v13 + 8 * v31);
          if (v35 != -1)
          {
            v14 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v30) & ~*(v13 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = (*(v20 + 32))(*(v6 + 48) + v14 * v27, v23, v19);
      ++*(v6 + 16);
      v11 = v41;
      v3 = v38;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v37;
        goto LABEL_28;
      }

      v17 = *(v8 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v41 = (v17 - 1) & v17;
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

uint64_t sub_1DF4F8CDC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DF4F8D24(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 440);
  v8 = *v3;
  *(*v3 + 448) = v2;

  if (v2)
  {
    v10 = v6[49];
    v9 = v6[50];

    v11 = *(v8 + 8);

    return v11();
  }

  else
  {
    v6[57] = a2;
    v6[58] = a1;

    return MEMORY[0x1EEE6DFA0](sub_1DF4F8E94, 0, 0);
  }
}

uint64_t sub_1DF4F8E94()
{
  v1 = *(v0 + 456);
  v2 = *(v0 + 448);
  *(v0 + 304) = *(v0 + 464);
  *(v0 + 312) = v1;
  strcpy((v0 + 320), "{featureKey}");
  *(v0 + 333) = 0;
  *(v0 + 334) = -5120;
  *(v0 + 336) = *(v0 + 408);
  sub_1DF4FB068();
  v3 = sub_1DF564D14();
  v5 = v4;

  v6 = *__swift_project_boxed_opaque_existential_0((*(v0 + 368) + 56), *(*(v0 + 368) + 80));
  v7 = sub_1DF4A52C0();
  if (!v8)
  {

    sub_1DF498474();
    swift_allocError();
    *v11 = 11;
    swift_willThrow();
LABEL_7:
    v13 = *(v0 + 392);
    v12 = *(v0 + 400);

    v14 = *(v0 + 8);
    goto LABEL_9;
  }

  if (v5)
  {
    *(v0 + 256) = v3;
    *(v0 + 264) = v5;
    *(v0 + 272) = 0x7D644964757BLL;
    *(v0 + 280) = 0xE600000000000000;
    *(v0 + 288) = v7;
    *(v0 + 296) = v8;
    v3 = sub_1DF564D14();
    v10 = v9;
  }

  else
  {

    v10 = 0;
  }

  sub_1DF4FADB4(v3, v10, *(v0 + 352));
  if (v2)
  {
    goto LABEL_7;
  }

  v16 = *(v0 + 392);
  v15 = *(v0 + 400);

  v14 = *(v0 + 8);
LABEL_9:

  return v14();
}

uint64_t sub_1DF4F90A8(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 472);
  v6 = *v3;
  v4[60] = a1;
  v4[61] = a2;
  v4[62] = v2;

  if (v2)
  {
    v8 = v4[49];
    v7 = v4[50];

    v9 = *(v6 + 8);

    return v9();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1DF4F9204, 0, 0);
  }
}

uint64_t sub_1DF4F9204()
{
  v1 = *(v0 + 488);
  if (v1)
  {
    v2 = *(v0 + 496);
    *(v0 + 304) = *(v0 + 480);
    *(v0 + 312) = v1;
    strcpy((v0 + 320), "{featureKey}");
    *(v0 + 333) = 0;
    *(v0 + 334) = -5120;
    *(v0 + 336) = *(v0 + 408);
    sub_1DF4FB068();
    v3 = sub_1DF564D14();
    v5 = v4;
  }

  else
  {
    v5 = 0;
    v2 = *(v0 + 496);
    v3 = *(v0 + 480);
  }

  v6 = *__swift_project_boxed_opaque_existential_0((*(v0 + 368) + 56), *(*(v0 + 368) + 80));
  v7 = sub_1DF4A52C0();
  if (!v8)
  {

    sub_1DF498474();
    swift_allocError();
    *v11 = 11;
    swift_willThrow();
LABEL_10:
    v13 = *(v0 + 392);
    v12 = *(v0 + 400);

    v14 = *(v0 + 8);
    goto LABEL_12;
  }

  if (v5)
  {
    *(v0 + 256) = v3;
    *(v0 + 264) = v5;
    *(v0 + 272) = 0x7D644964757BLL;
    *(v0 + 280) = 0xE600000000000000;
    *(v0 + 288) = v7;
    *(v0 + 296) = v8;
    sub_1DF4FB068();
    v3 = sub_1DF564D14();
    v10 = v9;
  }

  else
  {

    v10 = 0;
  }

  sub_1DF4FADB4(v3, v10, *(v0 + 352));
  if (v2)
  {
    goto LABEL_10;
  }

  v16 = *(v0 + 392);
  v15 = *(v0 + 400);

  v14 = *(v0 + 8);
LABEL_12:

  return v14();
}

uint64_t sub_1DF4F9438(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 504);
  v8 = *v3;
  *(*v3 + 512) = v2;

  if (v2)
  {
    v10 = v6[49];
    v9 = v6[50];

    v11 = *(v8 + 8);

    return v11();
  }

  else
  {
    v6[65] = a2;
    v6[66] = a1;

    return MEMORY[0x1EEE6DFA0](sub_1DF4F95AC, 0, 0);
  }
}

uint64_t sub_1DF4F95AC()
{
  v1 = v0[65];
  v2 = v0[66];
  v3 = v0[64];
  v4 = *__swift_project_boxed_opaque_existential_0((v0[46] + 56), *(v0[46] + 80));
  v5 = sub_1DF4A52C0();
  if (!v6)
  {

    sub_1DF498474();
    swift_allocError();
    *v9 = 11;
    swift_willThrow();
LABEL_7:
    v11 = v0[49];
    v10 = v0[50];

    v12 = v0[1];
    goto LABEL_9;
  }

  if (v1)
  {
    v0[26] = v2;
    v0[27] = v1;
    v0[28] = 0x7D644964757BLL;
    v0[29] = 0xE600000000000000;
    v0[30] = v5;
    v0[31] = v6;
    sub_1DF4FB068();
    v2 = sub_1DF564D14();
    v8 = v7;
  }

  else
  {

    v8 = 0;
  }

  sub_1DF4FADB4(v2, v8, v0[44]);
  if (v3)
  {
    goto LABEL_7;
  }

  v14 = v0[49];
  v13 = v0[50];

  v12 = v0[1];
LABEL_9:

  return v12();
}

uint64_t sub_1DF4F9744(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 536);
  v8 = *v3;
  *(*v3 + 544) = v2;

  if (v2)
  {
    v10 = v6[49];
    v9 = v6[50];

    v11 = *(v8 + 8);

    return v11();
  }

  else
  {
    v6[69] = a2;
    v6[70] = a1;

    return MEMORY[0x1EEE6DFA0](sub_1DF4F98B8, 0, 0);
  }
}

uint64_t sub_1DF4F98B8()
{
  v1 = v0[70];
  v2 = v0[69];
  v3 = v0[68];
  v4 = *__swift_project_boxed_opaque_existential_0((v0[46] + 56), *(v0[46] + 80));
  v5 = sub_1DF4A52C0();
  if (!v6)
  {

    sub_1DF498474();
    swift_allocError();
    *v9 = 11;
    swift_willThrow();
LABEL_7:
    v11 = v0[49];
    v10 = v0[50];

    v12 = v0[1];
    goto LABEL_9;
  }

  if (v2)
  {
    v0[26] = v1;
    v0[27] = v2;
    v0[28] = 0x7D644964757BLL;
    v0[29] = 0xE600000000000000;
    v0[30] = v5;
    v0[31] = v6;
    sub_1DF4FB068();
    v1 = sub_1DF564D14();
    v8 = v7;
  }

  else
  {

    v8 = 0;
  }

  sub_1DF4FADB4(v1, v8, v0[44]);
  if (v3)
  {
    goto LABEL_7;
  }

  v14 = v0[49];
  v13 = v0[50];

  v12 = v0[1];
LABEL_9:

  return v12();
}

uint64_t sub_1DF4F9A50(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 568);
  v8 = *v3;
  *(*v3 + 576) = v2;

  if (v2)
  {
    v10 = v6[49];
    v9 = v6[50];

    v11 = *(v8 + 8);

    return v11();
  }

  else
  {
    v6[73] = a2;
    v6[74] = a1;

    return MEMORY[0x1EEE6DFA0](sub_1DF4F9BC4, 0, 0);
  }
}

uint64_t sub_1DF4F9BC4()
{
  v1 = v0[72];
  sub_1DF4FADB4(v0[74], v0[73], v0[44]);
  v3 = v0[49];
  v2 = v0[50];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1DF4F9C58()
{
  v1 = v0[54];
  sub_1DF4FADB4(v0[76], v0[75], v0[44]);
  v3 = v0[49];
  v2 = v0[50];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1DF4F9CEC(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 616);
  v8 = *v3;
  *(*v3 + 624) = v2;

  if (v2)
  {
    v10 = v6[49];
    v9 = v6[50];

    v11 = *(v8 + 8);

    return v11();
  }

  else
  {
    v6[79] = a2;
    v6[80] = a1;

    return MEMORY[0x1EEE6DFA0](sub_1DF4F9E60, 0, 0);
  }
}

uint64_t sub_1DF4F9E60()
{
  v1 = v0[78];
  sub_1DF4FADB4(v0[80], v0[79], v0[44]);
  v3 = v0[49];
  v2 = v0[50];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1DF4F9EF4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 648);
  v8 = *v3;
  *(*v3 + 656) = v2;

  if (v2)
  {
    v10 = v6[49];
    v9 = v6[50];

    v11 = *(v8 + 8);

    return v11();
  }

  else
  {
    v6[83] = a2;
    v6[84] = a1;

    return MEMORY[0x1EEE6DFA0](sub_1DF4FA068, 0, 0);
  }
}

uint64_t sub_1DF4FA068()
{
  v1 = *(v0 + 664);
  v2 = *(v0 + 672);
  v3 = *(v0 + 656);
  v4 = *__swift_project_boxed_opaque_existential_0((*(v0 + 368) + 56), *(*(v0 + 368) + 80));
  v5 = sub_1DF4A52C0();
  if (!v6)
  {

    sub_1DF498474();
    swift_allocError();
    *v16 = 11;
    swift_willThrow();
LABEL_7:
    v18 = *(v0 + 392);
    v17 = *(v0 + 400);

    v19 = *(v0 + 8);
    goto LABEL_9;
  }

  v7 = v6;
  if (v1)
  {
    v8 = v5;
    v10 = *(v0 + 408);
    v9 = *(v0 + 416);
    *(v0 + 112) = v2;
    *(v0 + 120) = v1;
    strcpy((v0 + 128), "{featureKey}");
    *(v0 + 141) = 0;
    *(v0 + 142) = -5120;
    *(v0 + 144) = v10;
    *(v0 + 152) = v9;
    sub_1DF4FB068();
    v11 = sub_1DF564D14();
    v13 = v12;

    *(v0 + 160) = v11;
    *(v0 + 168) = v13;
    *(v0 + 176) = 0x7D644964757BLL;
    *(v0 + 184) = 0xE600000000000000;
    *(v0 + 192) = v8;
    *(v0 + 200) = v7;
    v2 = sub_1DF564D14();
    v15 = v14;
  }

  else
  {

    v15 = 0;
  }

  sub_1DF4FADB4(v2, v15, *(v0 + 400));
  if (v3)
  {
    goto LABEL_7;
  }

  (*(*(v0 + 384) + 32))(*(v0 + 352), *(v0 + 400), *(v0 + 376));
  v21 = *(v0 + 392);
  v20 = *(v0 + 400);

  v19 = *(v0 + 8);
LABEL_9:

  return v19();
}

uint64_t sub_1DF4FA2A4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 680);
  v8 = *v3;
  *(*v3 + 688) = v2;

  if (v2)
  {
    v10 = v6[49];
    v9 = v6[50];

    v11 = *(v8 + 8);

    return v11();
  }

  else
  {
    v6[87] = a2;
    v6[88] = a1;

    return MEMORY[0x1EEE6DFA0](sub_1DF4FA418, 0, 0);
  }
}

uint64_t sub_1DF4FA418()
{
  v1 = *(v0 + 704);
  v2 = *(v0 + 696);
  v3 = *(v0 + 688);
  v4 = *__swift_project_boxed_opaque_existential_0((*(v0 + 368) + 56), *(*(v0 + 368) + 80));
  v5 = sub_1DF4A52C0();
  if (!v6)
  {

    sub_1DF498474();
    swift_allocError();
    *v16 = 11;
    swift_willThrow();
LABEL_7:
    v18 = *(v0 + 392);
    v17 = *(v0 + 400);

    v19 = *(v0 + 8);
    goto LABEL_9;
  }

  v7 = v6;
  if (v2)
  {
    v8 = v5;
    v10 = *(v0 + 408);
    v9 = *(v0 + 416);
    *(v0 + 112) = v1;
    *(v0 + 120) = v2;
    strcpy((v0 + 128), "{featureKey}");
    *(v0 + 141) = 0;
    *(v0 + 142) = -5120;
    *(v0 + 144) = v10;
    *(v0 + 152) = v9;
    sub_1DF4FB068();
    v11 = sub_1DF564D14();
    v13 = v12;

    *(v0 + 160) = v11;
    *(v0 + 168) = v13;
    *(v0 + 176) = 0x7D644964757BLL;
    *(v0 + 184) = 0xE600000000000000;
    *(v0 + 192) = v8;
    *(v0 + 200) = v7;
    v1 = sub_1DF564D14();
    v15 = v14;
  }

  else
  {

    v15 = 0;
  }

  sub_1DF4FADB4(v1, v15, *(v0 + 400));
  if (v3)
  {
    goto LABEL_7;
  }

  (*(*(v0 + 384) + 32))(*(v0 + 352), *(v0 + 400), *(v0 + 376));
  v21 = *(v0 + 392);
  v20 = *(v0 + 400);

  v19 = *(v0 + 8);
LABEL_9:

  return v19();
}

uint64_t sub_1DF4FA654(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 712);
  v8 = *v3;
  *(*v3 + 720) = v2;

  if (v2)
  {
    v10 = v6[49];
    v9 = v6[50];

    v11 = *(v8 + 8);

    return v11();
  }

  else
  {
    v6[91] = a2;
    v6[92] = a1;

    return MEMORY[0x1EEE6DFA0](sub_1DF4FA7C8, 0, 0);
  }
}

uint64_t sub_1DF4FA7C8()
{
  v1 = *(v0 + 728);
  v2 = *(v0 + 736);
  v3 = *(v0 + 720);
  v4 = *__swift_project_boxed_opaque_existential_0((*(v0 + 368) + 56), *(*(v0 + 368) + 80));
  v5 = sub_1DF4A52C0();
  if (!v6)
  {

    sub_1DF498474();
    swift_allocError();
    *v16 = 11;
    swift_willThrow();
LABEL_7:
    v18 = *(v0 + 392);
    v17 = *(v0 + 400);

    v19 = *(v0 + 8);
    goto LABEL_9;
  }

  v7 = v6;
  if (v1)
  {
    v8 = v5;
    v10 = *(v0 + 408);
    v9 = *(v0 + 416);
    *(v0 + 16) = v2;
    *(v0 + 24) = v1;
    strcpy((v0 + 32), "{featureKey}");
    *(v0 + 45) = 0;
    *(v0 + 46) = -5120;
    *(v0 + 48) = v10;
    *(v0 + 56) = v9;
    sub_1DF4FB068();
    v11 = sub_1DF564D14();
    v13 = v12;

    *(v0 + 64) = v11;
    *(v0 + 72) = v13;
    *(v0 + 80) = 0x7D644964757BLL;
    *(v0 + 88) = 0xE600000000000000;
    *(v0 + 96) = v8;
    *(v0 + 104) = v7;
    v2 = sub_1DF564D14();
    v15 = v14;
  }

  else
  {

    v15 = 0;
  }

  sub_1DF4FADB4(v2, v15, *(v0 + 392));
  if (v3)
  {
    goto LABEL_7;
  }

  (*(*(v0 + 384) + 32))(*(v0 + 352), *(v0 + 392), *(v0 + 376));
  v21 = *(v0 + 392);
  v20 = *(v0 + 400);

  v19 = *(v0 + 8);
LABEL_9:

  return v19();
}

uint64_t sub_1DF4FAA04(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 744);
  v8 = *v3;
  *(*v3 + 752) = v2;

  if (v2)
  {
    v10 = v6[49];
    v9 = v6[50];

    v11 = *(v8 + 8);

    return v11();
  }

  else
  {
    v6[95] = a2;
    v6[96] = a1;

    return MEMORY[0x1EEE6DFA0](sub_1DF4FAB78, 0, 0);
  }
}

uint64_t sub_1DF4FAB78()
{
  v1 = *(v0 + 768);
  v2 = *(v0 + 760);
  v3 = *(v0 + 752);
  v4 = *__swift_project_boxed_opaque_existential_0((*(v0 + 368) + 56), *(*(v0 + 368) + 80));
  v5 = sub_1DF4A52C0();
  if (!v6)
  {

    sub_1DF498474();
    swift_allocError();
    *v16 = 11;
    swift_willThrow();
LABEL_7:
    v18 = *(v0 + 392);
    v17 = *(v0 + 400);

    v19 = *(v0 + 8);
    goto LABEL_9;
  }

  v7 = v6;
  if (v2)
  {
    v8 = v5;
    v10 = *(v0 + 408);
    v9 = *(v0 + 416);
    *(v0 + 16) = v1;
    *(v0 + 24) = v2;
    strcpy((v0 + 32), "{featureKey}");
    *(v0 + 45) = 0;
    *(v0 + 46) = -5120;
    *(v0 + 48) = v10;
    *(v0 + 56) = v9;
    sub_1DF4FB068();
    v11 = sub_1DF564D14();
    v13 = v12;

    *(v0 + 64) = v11;
    *(v0 + 72) = v13;
    *(v0 + 80) = 0x7D644964757BLL;
    *(v0 + 88) = 0xE600000000000000;
    *(v0 + 96) = v8;
    *(v0 + 104) = v7;
    v1 = sub_1DF564D14();
    v15 = v14;
  }

  else
  {

    v15 = 0;
  }

  sub_1DF4FADB4(v1, v15, *(v0 + 392));
  if (v3)
  {
    goto LABEL_7;
  }

  (*(*(v0 + 384) + 32))(*(v0 + 352), *(v0 + 392), *(v0 + 376));
  v21 = *(v0 + 392);
  v20 = *(v0 + 400);

  v19 = *(v0 + 8);
LABEL_9:

  return v19();
}

uint64_t sub_1DF4FADB4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A18, qword_1DF56B370);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v21 - v8;
  if (a2)
  {

    sub_1DF564334();

    v10 = sub_1DF564344();
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(v9, 1, v10) != 1)
    {

      return (*(v11 + 32))(a3, v9, v10);
    }

    sub_1DF4FB0BC(v9);
  }

  if (qword_1ED9550A8 != -1)
  {
    swift_once();
  }

  v12 = sub_1DF5647B4();
  __swift_project_value_buffer(v12, qword_1ED9550B0);

  v13 = sub_1DF564794();
  v14 = sub_1DF564C24();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v22 = v16;
    *v15 = 136315138;
    if (a2)
    {
      v17 = a1;
    }

    else
    {
      v17 = 0x3E6C696E3CLL;
    }

    if (!a2)
    {
      a2 = 0xE500000000000000;
    }

    v18 = sub_1DF47EF6C(v17, a2, &v22);

    *(v15 + 4) = v18;
    _os_log_impl(&dword_1DF47C000, v13, v14, "failed to create url from string: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x1E12D75F0](v16, -1, -1);
    MEMORY[0x1E12D75F0](v15, -1, -1);
  }

  else
  {
  }

  sub_1DF498474();
  swift_allocError();
  *v19 = 6;
  return swift_willThrow();
}

unint64_t sub_1DF4FB068()
{
  result = qword_1ED9546B8;
  if (!qword_1ED9546B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9546B8);
  }

  return result;
}

uint64_t sub_1DF4FB0BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A18, qword_1DF56B370);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1DF4FB140(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DF4FB188(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_1DF4FB200(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  v7 = a7;
  v13 = a1;
  v35[0] = a5;
  v35[1] = a6;
  v35[2] = a3;
  v35[3] = a4;
  v35[4] = a1;
  v35[5] = a2;
  v14 = sub_1DF54836C(v35, a7);
  if (!v14)
  {
    if (qword_1ED956080 != -1)
    {
      swift_once();
    }

    v26 = sub_1DF5647B4();
    __swift_project_value_buffer(v26, qword_1ED956088);

    v25 = sub_1DF564794();
    v27 = sub_1DF564C44();

    if (os_log_type_enabled(v25, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v34[0] = v29;
      *v28 = 136446466;
      *(v28 + 4) = sub_1DF47EF6C(v13, a2, v34);
      *(v28 + 12) = 2082;
      *(v28 + 14) = sub_1DF47EF6C(a3, a4, v34);
      _os_log_impl(&dword_1DF47C000, v25, v27, "no geoclassification cache for featureID: %{public}s, and bundle ID: %{public}s", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12D75F0](v29, -1, -1);
      MEMORY[0x1E12D75F0](v28, -1, -1);
    }

    goto LABEL_12;
  }

  v17 = v14;
  if ((sub_1DF547604(a5, a6, v14, v15, v16) & 1) == 0)
  {
    v33 = a3;
    if (qword_1ED956080 != -1)
    {
      swift_once();
    }

    v18 = sub_1DF5647B4();
    __swift_project_value_buffer(v18, qword_1ED956088);

    v19 = sub_1DF564794();
    v20 = sub_1DF564C44();

    if (os_log_type_enabled(v19, v20))
    {
      v31 = v7;
      v21 = swift_slowAlloc();
      v32 = v13;
      v22 = swift_slowAlloc();
      v34[0] = v22;
      *v21 = 136446210;
      *(v21 + 4) = sub_1DF47EF6C(v32, a2, v34);
      _os_log_impl(&dword_1DF47C000, v19, v20, "Invalid geo cache for featureID: %{public}s. Deleting cache entry", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      v23 = v22;
      v13 = v32;
      MEMORY[0x1E12D75F0](v23, -1, -1);
      v24 = v21;
      v7 = v31;
      MEMORY[0x1E12D75F0](v24, -1, -1);
    }

    v34[0] = a5;
    v34[1] = a6;

    MEMORY[0x1E12D62C0](45, 0xE100000000000000);
    MEMORY[0x1E12D62C0](v33, a4);
    MEMORY[0x1E12D62C0](45, 0xE100000000000000);
    MEMORY[0x1E12D62C0](v13, a2);
    v25 = sub_1DF564914();

    [v7 removeObjectForKey_];

LABEL_12:
    return 0;
  }

  return v17;
}

id sub_1DF4FB5AC(id result)
{
  if (!result)
  {
    if (qword_1ED956258 != -1)
    {
      swift_once();
    }

    v2 = sub_1DF5647B4();
    __swift_project_value_buffer(v2, qword_1ED956260);
    v3 = sub_1DF564794();
    v4 = sub_1DF564C24();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1DF47C000, v3, v4, "GeoClassificationCache was passed invalid user defaults!", v5, 2u);
      MEMORY[0x1E12D75F0](v5, -1, -1);
    }

    v6 = objc_allocWithZone(MEMORY[0x1E695E000]);

    return [v6 init];
  }

  return result;
}

void sub_1DF4FB6B0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (qword_1ED956258 != -1)
    {
      swift_once();
    }

    v2 = sub_1DF5647B4();
    __swift_project_value_buffer(v2, qword_1ED956260);
    v3 = sub_1DF564794();
    v4 = sub_1DF564C44();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1DF47C000, v3, v4, "Refreshing geoclassification cache", v5, 2u);
      MEMORY[0x1E12D75F0](v5, -1, -1);
    }

    v6 = objc_opt_self();
    v7 = sub_1DF564914();
    v8 = sub_1DF564914();
    v9 = sub_1DF564914();
    aBlock[4] = nullsub_1;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DF515B10;
    aBlock[3] = &block_descriptor_4;
    v10 = _Block_copy(aBlock);
    [v6 requestGeoClassificationForFeatureID:v7 bundleID:v8 altDSID:v9 ignoreCache:1 completion:v10];
    _Block_release(v10);
  }

  else
  {
    if (qword_1ED956258 != -1)
    {
      swift_once();
    }

    v11 = sub_1DF5647B4();
    __swift_project_value_buffer(v11, qword_1ED956260);
    oslog = sub_1DF564794();
    v12 = sub_1DF564C24();
    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1DF47C000, oslog, v12, "altDSID is nil, unable to refresh geoclassification", v13, 2u);
      MEMORY[0x1E12D75F0](v13, -1, -1);
    }
  }
}

void sub_1DF4FB998(const char *a1, CFNotificationName *a2)
{
  if (qword_1ED955E08 != -1)
  {
    swift_once();
  }

  v4 = sub_1DF5647B4();
  __swift_project_value_buffer(v4, qword_1ED955E10);
  v5 = sub_1DF564794();
  v6 = sub_1DF564C44();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1DF47C000, v5, v6, a1, v7, 2u);
    MEMORY[0x1E12D75F0](v7, -1, -1);
  }

  v8 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(v8, *a2, 0, 0, 0);
}

uint64_t sub_1DF4FBB74(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, uint64_t *a6, uint64_t *a7, void (*a8)(void), uint64_t *a9, uint64_t *a10)
{
  v80 = a8;
  v81 = a6;
  v11 = v10;
  v83 = a5;
  v84 = a3;
  v82 = a7;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  v16 = *(*(v15 - 1) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v78 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v78 - v21;
  v23 = sub_1DF564494();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x1EEE9AC00](v23);
  v79 = &v78 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v78 - v28;
  if (a2)
  {
    v30 = (v11 + v15[13]);
    v31 = v30[1];
    if (!v31 || (*v30 == a1 ? (v32 = v31 == a2) : (v32 = 0), !v32 && (sub_1DF5650D4() & 1) == 0))
    {
      if (qword_1ED956080 != -1)
      {
        swift_once();
      }

      v38 = sub_1DF5647B4();
      __swift_project_value_buffer(v38, qword_1ED956088);
      v39 = sub_1DF564794();
      v40 = sub_1DF564C44();
      if (!os_log_type_enabled(v39, v40))
      {
        goto LABEL_52;
      }

      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v85 = v42;
      *v41 = 136315138;
      v80(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(a9, a10);
      v43 = sub_1DF5652D4();
      v45 = sub_1DF47EF6C(v43, v44, &v85);

      *(v41 + 4) = v45;
      _os_log_impl(&dword_1DF47C000, v39, v40, "Invalid cache box with type %s ... session id changed", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v42);
      MEMORY[0x1E12D75F0](v42, -1, -1);
      v46 = v41;
LABEL_51:
      MEMORY[0x1E12D75F0](v46, -1, -1);
LABEL_52:

      return 0;
    }
  }

  v33 = (v11 + v15[14]);
  v34 = v33[1];
  if (!a4)
  {
    if (!v34)
    {
      goto LABEL_15;
    }

    goto LABEL_24;
  }

  if (v34)
  {
    v35 = *v33 == v84 && v34 == a4;
    if (!v35 && (sub_1DF5650D4() & 1) == 0)
    {
LABEL_24:
      if (qword_1ED956080 != -1)
      {
        swift_once();
      }

      v47 = sub_1DF5647B4();
      __swift_project_value_buffer(v47, qword_1ED956088);
      v49 = v81;
      v48 = v82;
      sub_1DF47E4CC(v11, v18, v81, v82);

      v39 = sub_1DF564794();
      v50 = sub_1DF564C44();

      if (!os_log_type_enabled(v39, v50))
      {

        sub_1DF47E5B4(v18, v49, v48);
        return 0;
      }

      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v85 = v52;
      *v51 = 136315394;
      v53 = &v18[v15[14]];
      if (v53[1])
      {
        v54 = *v53;
        v55 = v53[1];
      }

      else
      {
        v55 = 0xE300000000000000;
        v54 = 7104878;
      }

      sub_1DF47E5B4(v18, v49, v48);
      v74 = sub_1DF47EF6C(v54, v55, &v85);

      *(v51 + 4) = v74;
      *(v51 + 12) = 2080;
      if (a4)
      {
        v75 = v84;
      }

      else
      {
        v75 = 7104878;
      }

      if (a4)
      {
        v76 = a4;
      }

      else
      {
        v76 = 0xE300000000000000;
      }

      v77 = sub_1DF47EF6C(v75, v76, &v85);

      *(v51 + 14) = v77;
      _os_log_impl(&dword_1DF47C000, v39, v50, "invalid ... altDSID changed. Cache altDSID: %s, currentAltDSID: %s", v51, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12D75F0](v52, -1, -1);
      v46 = v51;
      goto LABEL_51;
    }
  }

LABEL_15:
  if (v83)
  {
    return 1;
  }

  sub_1DF47E4CC(v11 + v15[11], v22, &qword_1ECE37A10, &qword_1DF567C00);
  v36 = v23;
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    sub_1DF47E5B4(v22, &qword_1ECE37A10, &qword_1DF567C00);
    return 1;
  }

  v56 = v29;
  (*(v24 + 32))(v29, v22, v36);
  v57 = v79;
  sub_1DF564484();
  sub_1DF5643C4();
  if (v58 <= 0.0)
  {
    v68 = v58;
    if (qword_1ED956080 != -1)
    {
      swift_once();
    }

    v69 = sub_1DF5647B4();
    __swift_project_value_buffer(v69, qword_1ED956088);
    v70 = sub_1DF564794();
    v71 = sub_1DF564C44();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      *v72 = 134349056;
      *(v72 + 4) = v68;
      _os_log_impl(&dword_1DF47C000, v70, v71, "invalid ... time until expiry is %{public}f", v72, 0xCu);
      MEMORY[0x1E12D75F0](v72, -1, -1);
    }

    v73 = *(v24 + 8);
    v73(v57, v36);
    v73(v56, v36);
    return 0;
  }

  v59 = v15[12];
  sub_1DF5643C4();
  v61 = v60 > 0.0;
  if (v60 <= 0.0)
  {
    v62 = v60;
    if (qword_1ED956080 != -1)
    {
      swift_once();
    }

    v63 = sub_1DF5647B4();
    __swift_project_value_buffer(v63, qword_1ED956088);
    v64 = sub_1DF564794();
    v65 = sub_1DF564C44();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 134349056;
      *(v66 + 4) = v62;
      _os_log_impl(&dword_1DF47C000, v64, v65, "invalid ... time since fetch is %{public}f", v66, 0xCu);
      MEMORY[0x1E12D75F0](v66, -1, -1);
    }
  }

  v67 = *(v24 + 8);
  v67(v57, v36);
  v67(v56, v36);
  return v61;
}

uint64_t FeatureCache.allFeatures(forDSID:allowAnySession:ignoreTTL:)(uint64_t a1, unint64_t a2, char a3, int a4)
{
  v5 = v4;
  v6 = a4;
  v7 = *(v4 + 64);
  v8 = MEMORY[0x1E69E7CC0];
  v34 = MEMORY[0x1E69E7CC0];
  v9 = sub_1DF513FE4(a4);
  if (!v9)
  {
    goto LABEL_4;
  }

  v10 = v9;
  MEMORY[0x1E12D6340]();
  if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_23;
  }

  while (1)
  {
    sub_1DF564AE4();

LABEL_4:
    sub_1DF47E4CC(v5 + 16, v31, &qword_1ECE37CE0, &qword_1DF568B40);
    v11 = v32;
    if (!v32)
    {
      break;
    }

    v12 = v33;
    __swift_project_boxed_opaque_existential_0(v31, v32);
    v13 = (*(v12 + 80))(0xD000000000000029, 0x80000001DF5708B0, v11, v12);
    __swift_destroy_boxed_opaque_existential_0(v31);
    if (!v13)
    {
      return v34;
    }

    v27 = v8;
    v31[0] = v8;
    v10 = (v13 + 64);
    v14 = 1 << *(v13 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v13 + 64);
    v8 = (v14 + 63) >> 6;

    v17 = 0;
    if (!v16)
    {
      goto LABEL_11;
    }

    do
    {
LABEL_9:
      while (1)
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
        v19 = (*(v13 + 48) + ((v17 << 10) | (16 * v18)));
        v20 = *v19;
        v21 = v19[1];

        v22 = FeatureCache.cachedFeature(identifier:altDSID:allowAnySession:ignoreTTL:)(v20, v21, a1, a2, a3 & 1, v6 & 1);

        if (v22)
        {
          break;
        }

        if (!v16)
        {
          goto LABEL_11;
        }
      }

      MEMORY[0x1E12D6340](v23);
      if (*((v31[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v25 = *((v31[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1DF564AC4();
      }

      sub_1DF564AE4();
      v27 = v31[0];
    }

    while (v16);
LABEL_11:
    while (1)
    {
      v24 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v24 >= v8)
      {

        sub_1DF4FCC8C(v27);
        return v34;
      }

      v16 = *(v10 + v24);
      ++v17;
      if (v16)
      {
        v17 = v24;
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_23:
    sub_1DF564AC4();
  }

  sub_1DF47E5B4(v31, &qword_1ECE37CE0, &qword_1DF568B40);
  return v34;
}

uint64_t sub_1DF4FC604(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1DF5642D4();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  v8 = sub_1DF5642C4();
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1DF564F04())
  {
    v10 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1E12D66D0](v10, a1);
      }

      else
      {
        if (v10 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v11 = *(a1 + 8 * v10 + 32);
      }

      v12 = v11;
      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      sub_1DF4FDDA0(v11, v8, a2, a3);

      ++v10;
      if (v13 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:
}

void sub_1DF4FC728(uint64_t a1, unint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v43 = &v42 - v7;
  v8 = *(v2 + 56);
  os_unfair_lock_lock(*(v8 + 16));
  v46 = v2;
  sub_1DF47E4CC(v2 + 16, v47, &qword_1ECE37CE0, &qword_1DF568B40);
  v9 = v48;
  if (v48)
  {
    v10 = v49;
    __swift_project_boxed_opaque_existential_0(v47, v48);
    v11 = (*(v10 + 80))(0xD000000000000029, 0x80000001DF5708B0, v9, v10);
    __swift_destroy_boxed_opaque_existential_0(v47);
    os_unfair_lock_unlock(*(v8 + 16));
    if (v11)
    {
      v44 = a1;
      v12 = v11 + 64;
      v13 = 1 << *(v11 + 32);
      v14 = -1;
      if (v13 < 64)
      {
        v14 = ~(-1 << v13);
      }

      v15 = v14 & *(v11 + 64);
      v16 = (v13 + 63) >> 6;

      v17 = 0;
      v45 = v11;
      while (v15)
      {
LABEL_12:
        v19 = (*(v11 + 48) + ((v17 << 10) | (16 * __clz(__rbit64(v15)))));
        v20 = *v19;
        v21 = v19[1];

        v22 = v44;
        v23 = FeatureCache.cachedFeature(identifier:altDSID:allowAnySession:ignoreTTL:)(v20, v21, v44, a2, 0, 0);
        v24 = a2;
        if (v23)
        {
          v25 = v23;
          v26 = v43;
          sub_1DF5643A4();
          v27 = sub_1DF564494();
          (*(*(v27 - 8) + 56))(v26, 0, 1, v27);
          v28 = OBJC_IVAR___CloudFeature_ttl;
          swift_beginAccess();
          sub_1DF48C214(v26, &v25[v28]);
          swift_endAccess();
          v29 = sub_1DF5642D4();
          v30 = *(v29 + 48);
          v31 = *(v29 + 52);
          swift_allocObject();
          v32 = sub_1DF5642C4();
          sub_1DF4FDDA0(v25, v32, v22, v24);
        }

        v15 &= v15 - 1;

        a2 = v24;
        v11 = v45;
      }

      while (1)
      {
        v18 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          __break(1u);
          goto LABEL_21;
        }

        if (v18 >= v16)
        {
          break;
        }

        v15 = *(v12 + 8 * v18);
        ++v17;
        if (v15)
        {
          v17 = v18;
          goto LABEL_12;
        }
      }

      if (qword_1ED956080 == -1)
      {
        goto LABEL_15;
      }

LABEL_21:
      swift_once();
LABEL_15:
      v33 = sub_1DF5647B4();
      __swift_project_value_buffer(v33, qword_1ED956088);

      v34 = sub_1DF564794();
      v35 = sub_1DF564C44();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v47[0] = v37;
        *v36 = 134218242;
        *(v36 + 4) = *(v11 + 16);

        *(v36 + 12) = 2080;
        v38 = sub_1DF5648A4();
        v40 = sub_1DF47EF6C(v38, v39, v47);

        *(v36 + 14) = v40;
        _os_log_impl(&dword_1DF47C000, v34, v35, "Expired cache for %ld features: %s", v36, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v37);
        MEMORY[0x1E12D75F0](v37, -1, -1);
        MEMORY[0x1E12D75F0](v36, -1, -1);
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }
    }
  }

  else
  {
    sub_1DF47E5B4(v47, &qword_1ECE37CE0, &qword_1DF568B40);
    os_unfair_lock_unlock(*(v8 + 16));
  }

  v41 = *(v46 + 64);
  sub_1DF51503C();
}

uint64_t sub_1DF4FCB98(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1DF4A9DAC(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1DF4FCC8C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_1DF564F04();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = sub_1DF564F04();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_1DF4FEBA4(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1DF4FEC44(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1DF4FCD7C(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_1DF4AA1A4(isUniquelyReferenced_nonNull_native, v16, 1, v3);
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
  v9 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for WaitlistCacheBox();
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t static FeatureCache.shared.getter()
{
  if (qword_1ED955FF0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1DF4FCF04@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1DF564494();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v47 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v49 = &v42 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v46 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v48 = &v42 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v42 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v42 - v19;
  v21 = *(v1 + 56);
  os_unfair_lock_lock(*(v21 + 16));
  sub_1DF47E4CC(v1 + 16, v50, &qword_1ECE37CE0, &qword_1DF568B40);
  v22 = v51;
  if (v51)
  {
    v23 = v52;
    __swift_project_boxed_opaque_existential_0(v50, v51);
    v24 = (*(v23 + 80))(0xD000000000000029, 0x80000001DF5708B0, v22, v23);
    __swift_destroy_boxed_opaque_existential_0(v50);
    if (v24)
    {
      goto LABEL_6;
    }
  }

  else
  {
    sub_1DF47E5B4(v50, &qword_1ECE37CE0, &qword_1DF568B40);
  }

  v24 = sub_1DF49A758(MEMORY[0x1E69E7CC0]);

LABEL_6:
  os_unfair_lock_unlock(*(v21 + 16));
  v25 = v5;
  v26 = *(v5 + 56);
  if (*(v24 + 16))
  {
    v26(v20, 1, 1, v4);

    sub_1DF4FEDE8(v24, v2, v20);

    v27 = *(v2 + 64);
    v28 = sub_1DF513FE4(0);
    if (v28)
    {
      v29 = v28;
      v45 = a1;
      v30 = OBJC_IVAR___CloudFeature_ttl;
      swift_beginAccess();
      sub_1DF47E4CC(v29 + v30, v18, &qword_1ECE37A10, &qword_1DF567C00);
      v31 = v25;
      v32 = *(v25 + 48);
      if (v32(v18, 1, v4) == 1)
      {

        sub_1DF47E5B4(v18, &qword_1ECE37A10, &qword_1DF567C00);
      }

      else
      {
        v34 = *(v25 + 32);
        v35 = v49;
        v43 = v34;
        v44 = v31 + 32;
        v34(v49, v18, v4);
        v36 = v48;
        sub_1DF47E4CC(v20, v48, &qword_1ECE37A10, &qword_1DF567C00);
        if (v32(v36, 1, v4) == 1)
        {

          sub_1DF47E5B4(v36, &qword_1ECE37A10, &qword_1DF567C00);
          sub_1DF47E5B4(v20, &qword_1ECE37A10, &qword_1DF567C00);
          v43(v20, v35, v4);
          v26(v20, 0, 1, v4);
        }

        else
        {
          v37 = v47;
          v43(v47, v36, v4);
          sub_1DF484ECC(&qword_1ED954CC0);
          v38 = sub_1DF5648D4();

          if (v38)
          {
            v39 = v37;
          }

          else
          {
            v39 = v35;
          }

          if (v38)
          {
            v40 = v35;
          }

          else
          {
            v40 = v37;
          }

          (*(v31 + 8))(v39, v4);
          v41 = v46;
          v43(v46, v40, v4);
          v26(v41, 0, 1, v4);
          sub_1DF48C214(v41, v20);
        }
      }

      a1 = v45;
    }

    return sub_1DF48C35C(v20, a1, &qword_1ECE37A10, &qword_1DF567C00);
  }

  else
  {
    v26(a1, 1, 1, v4);
  }
}

uint64_t FeatureCache.persistentDomain.getter()
{
  sub_1DF47E4CC(v0 + 16, v4, &qword_1ECE37CE0, &qword_1DF568B40);
  v1 = v5;
  if (v5)
  {
    v2 = v6;
    __swift_project_boxed_opaque_existential_0(v4, v5);
    v1 = (*(v2 + 80))(0xD000000000000029, 0x80000001DF5708B0, v1, v2);
    __swift_destroy_boxed_opaque_existential_0(v4);
  }

  else
  {
    sub_1DF47E5B4(v4, &qword_1ECE37CE0, &qword_1DF568B40);
  }

  return v1;
}

void sub_1DF4FD514(void **a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v55 - v4;
  v64 = sub_1DF564494();
  v62 = *(v64 - 8);
  v6 = *(v62 + 64);
  v7 = MEMORY[0x1EEE9AC00](v64);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v55 - v10;
  v12 = *a1;
  v13 = (*a1 + OBJC_IVAR___CloudFeature_featureID);
  v14 = v13[1];
  v63 = *v13;
  v65 = v14;

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37F80, &qword_1DF56A498);
  sub_1DF48B2B4(&qword_1ED9546D0, &qword_1ECE37F80, &qword_1DF56A498);
  v16 = sub_1DF5642B4();
  v18 = v17;
  v57 = v5;
  v58 = v12;
  v55 = v9;
  v56 = v11;
  v60 = v16;
  v19 = v61;
  v20 = *(v61 + 56);
  os_unfair_lock_lock(*(v20 + 16));
  sub_1DF47E4CC(v19 + 16, v67, &qword_1ECE37CE0, &qword_1DF568B40);
  v21 = v68;
  v59 = v18;
  if (v68)
  {
    v22 = v69;
    __swift_project_boxed_opaque_existential_0(v67, v68);
    v66[3] = MEMORY[0x1E6969080];
    v66[0] = v60;
    v66[1] = v18;
    v23 = v18;
    v24 = *(v22 + 8);
    sub_1DF4AD474(v60, v23);
    v24(v66, v63, v65, v21, v22);

    sub_1DF47E5B4(v66, &qword_1ECE378F0, &qword_1DF5686F0);
    __swift_destroy_boxed_opaque_existential_0(v67);
  }

  else
  {

    sub_1DF47E5B4(v67, &qword_1ECE37CE0, &qword_1DF568B40);
  }

  v25 = v58;
  os_unfair_lock_unlock(*(v20 + 16));
  v26 = v57;
  sub_1DF47E4CC(a1 + *(v15 + 44), v57, &qword_1ECE37A10, &qword_1DF567C00);
  v27 = v62;
  if ((*(v62 + 48))(v26, 1, v64) == 1)
  {
    sub_1DF47E5B4(v26, &qword_1ECE37A10, &qword_1DF567C00);
    v28 = v59;
    if (qword_1ED956080 != -1)
    {
      swift_once();
    }

    v29 = sub_1DF5647B4();
    __swift_project_value_buffer(v29, qword_1ED956088);
    v30 = v25;
    v31 = sub_1DF564794();
    v32 = sub_1DF564C44();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 138543362;
      *(v33 + 4) = v30;
      *v34 = v30;
      _os_log_impl(&dword_1DF47C000, v31, v32, "updating cache for feature: %{public}@, no cache-ttl.", v33, 0xCu);
      sub_1DF47E5B4(v34, &unk_1ECE37F10, &qword_1DF567510);
      MEMORY[0x1E12D75F0](v34, -1, -1);
      MEMORY[0x1E12D75F0](v33, -1, -1);
      sub_1DF48C308(v60, v28);
    }

    else
    {
      sub_1DF48C308(v60, v28);
    }
  }

  else
  {
    v35 = v56;
    (*(v27 + 32))(v56, v26, v64);
    if (qword_1ED956080 != -1)
    {
      swift_once();
    }

    v36 = sub_1DF5647B4();
    __swift_project_value_buffer(v36, qword_1ED956088);
    v37 = v55;
    (*(v27 + 16))(v55, v35, v64);
    v38 = v25;
    v39 = v35;
    v40 = sub_1DF564794();
    v41 = sub_1DF564C44();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v67[0] = v65;
      *v42 = 138543618;
      *(v42 + 4) = v38;
      *v43 = v38;
      *(v42 + 12) = 2082;
      sub_1DF484ECC(&qword_1ED954CB0);
      v44 = v37;
      v45 = v38;
      v46 = v64;
      v47 = sub_1DF5650A4();
      v49 = v48;
      v50 = *(v27 + 8);
      v50(v44, v46);
      v51 = sub_1DF47EF6C(v47, v49, v67);

      *(v42 + 14) = v51;
      _os_log_impl(&dword_1DF47C000, v40, v41, "updating cache for feature: %{public}@, cache-ttl:%{public}s", v42, 0x16u);
      sub_1DF47E5B4(v43, &unk_1ECE37F10, &qword_1DF567510);
      MEMORY[0x1E12D75F0](v43, -1, -1);
      v52 = v65;
      __swift_destroy_boxed_opaque_existential_0(v65);
      MEMORY[0x1E12D75F0](v52, -1, -1);
      MEMORY[0x1E12D75F0](v42, -1, -1);

      sub_1DF48C308(v60, v59);
      v50(v56, v46);
    }

    else
    {

      sub_1DF48C308(v60, v59);
      v53 = *(v27 + 8);
      v54 = v64;
      v53(v37, v64);
      v53(v39, v54);
    }
  }
}

void sub_1DF4FDDA0(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37F80, &qword_1DF56A498);
  v9 = *(*(v8 - 1) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (v40 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = v40 - v14;
  v16 = sub_1DF564494();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *&a1[OBJC_IVAR___CloudFeature_featureID];
  v22 = *&a1[OBJC_IVAR___CloudFeature_featureID + 8];
  if (sub_1DF564A24())
  {
    v23 = v4[8];
    sub_1DF514678(a1);
  }

  else
  {
    v40[1] = a2;
    v24 = OBJC_IVAR___CloudFeature_ttl;
    swift_beginAccess();
    sub_1DF47E4CC(&a1[v24], v15, &qword_1ECE37A10, &qword_1DF567C00);
    if ((*(v17 + 48))(v15, 1, v16) == 1)
    {
      sub_1DF47E5B4(v15, &qword_1ECE37A10, &qword_1DF567C00);
      if (qword_1ED956080 != -1)
      {
        swift_once();
      }

      v25 = sub_1DF5647B4();
      __swift_project_value_buffer(v25, qword_1ED956088);
      v26 = a1;
      v27 = sub_1DF564794();
      v28 = sub_1DF564C24();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        *v29 = 138543362;
        *(v29 + 4) = v26;
        *v30 = v26;
        v31 = v26;
        _os_log_impl(&dword_1DF47C000, v27, v28, "failed to cache feature %{public}@, missing TTL", v29, 0xCu);
        sub_1DF47E5B4(v30, &unk_1ECE37F10, &qword_1DF567510);
        MEMORY[0x1E12D75F0](v30, -1, -1);
        MEMORY[0x1E12D75F0](v29, -1, -1);
      }
    }

    else
    {
      (*(v17 + 32))(v20, v15, v16);
      v32 = v8[11];
      (*(v17 + 16))(v11 + v32, v20, v16);
      (*(v17 + 56))(v11 + v32, 0, 1, v16);
      v33 = v11 + v8[12];
      sub_1DF564484();
      v34 = *__swift_project_boxed_opaque_existential_0(v4 + 9, v4[12]);
      v35 = sub_1DF47E8A4();
      *v11 = a1;
      v36 = (v11 + v8[13]);
      *v36 = v35;
      v36[1] = v37;
      v38 = (v11 + v8[14]);
      *v38 = v41;
      v38[1] = a4;

      v39 = a1;
      sub_1DF4FD514(v11);
      sub_1DF47E5B4(v11, &qword_1ECE37F80, &qword_1DF56A498);
      (*(v17 + 8))(v20, v16);
    }
  }
}

uint64_t sub_1DF4FE1DC()
{
  v1 = v0;
  v2 = *(v0 + 56);
  os_unfair_lock_lock(*(v2 + 16));
  sub_1DF47E4CC(v0 + 16, v12, &qword_1ECE37CE0, &qword_1DF568B40);
  if (v13)
  {
    v3 = v14;
    __swift_project_boxed_opaque_existential_0(v12, v13);
    sub_1DF49A758(MEMORY[0x1E69E7CC0]);
    (*(v3 + 72))();

    __swift_destroy_boxed_opaque_existential_0(v12);
  }

  else
  {
    sub_1DF47E5B4(v12, &qword_1ECE37CE0, &qword_1DF568B40);
  }

  os_unfair_lock_unlock(*(v2 + 16));
  if (qword_1ED956080 != -1)
  {
    swift_once();
  }

  v4 = sub_1DF5647B4();
  __swift_project_value_buffer(v4, qword_1ED956088);
  v5 = sub_1DF564794();
  v6 = sub_1DF564C44();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1DF47C000, v5, v6, "Reset feature cache.", v7, 2u);
    MEMORY[0x1E12D75F0](v7, -1, -1);
  }

  v8 = *(v1 + 64);
  v9 = v8[5];
  v10 = v8[6];
  __swift_project_boxed_opaque_existential_0(v8 + 2, v9);
  return (*(v10 + 16))(0x6C6C2E64756F6C63, 0xE90000000000006DLL, v9, v10);
}

uint64_t sub_1DF4FE3D0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v72 = a3;
  v76 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v67 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v68 = &v63 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v63 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v63 - v14;
  v16 = sub_1DF564494();
  v70 = *(v16 - 8);
  v71 = v16;
  v17 = *(v70 + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v66 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v69 = &v63 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37F78, &qword_1DF56A490);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v63 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37F80, &qword_1DF56A498);
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v63 - v28;
  sub_1DF47E4CC(a1, v75, &qword_1ECE37CB8, &qword_1DF56A510);

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    return result;
  }

  v65 = v13;
  v31 = v73;
  v32 = v74;
  v33 = sub_1DF5642A4();
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  swift_allocObject();
  sub_1DF564294();
  sub_1DF48B2B4(&qword_1ED955AD0, &qword_1ECE37F80, &qword_1DF56A498);
  sub_1DF564284();
  if (v3)
  {

    sub_1DF48C308(v31, v32);

    (*(v26 + 56))(v24, 1, 1, v25);
    return sub_1DF47E5B4(v24, &qword_1ECE37F78, &qword_1DF56A490);
  }

  v64 = v31;

  (*(v26 + 56))(v24, 0, 1, v25);
  sub_1DF48C35C(v24, v29, &qword_1ECE37F80, &qword_1DF56A498);
  v36 = &v29[*(v25 + 52)];
  v37 = *v36;
  v38 = v36[1];
  v39 = *__swift_project_boxed_opaque_existential_0((v76 + 72), *(v76 + 96));
  v40 = sub_1DF47E8A4();
  if (!v38)
  {
    sub_1DF48C308(v64, v32);

    goto LABEL_15;
  }

  if (v37 != v40 || v38 != v41)
  {
    v43 = sub_1DF5650D4();

    v42 = v72;
    if (v43)
    {
      goto LABEL_10;
    }

    sub_1DF48C308(v64, v32);
LABEL_15:
    v51 = &qword_1ECE37F80;
    v52 = &qword_1DF56A498;
    v53 = v29;
    return sub_1DF47E5B4(v53, v51, v52);
  }

  v42 = v72;
LABEL_10:
  v76 = v32;
  sub_1DF47E4CC(v42, v15, &qword_1ECE37A10, &qword_1DF567C00);
  v45 = v70;
  v44 = v71;
  v46 = *(v70 + 48);
  if (v46(v15, 1, v71) == 1)
  {
    sub_1DF48C308(v64, v76);
    sub_1DF47E5B4(v15, &qword_1ECE37A10, &qword_1DF567C00);
    v47 = v65;
    sub_1DF47E4CC(&v29[*(v25 + 44)], v65, &qword_1ECE37A10, &qword_1DF567C00);
    sub_1DF47E5B4(v29, &qword_1ECE37F80, &qword_1DF56A498);
    return sub_1DF48C214(v47, v42);
  }

  v65 = *(v45 + 32);
  v65(v69, v15, v44);
  v48 = &v29[*(v25 + 44)];
  v49 = v68;
  sub_1DF47E4CC(v48, v68, &qword_1ECE37A10, &qword_1DF567C00);
  v50 = v44;
  if (v46(v49, 1, v44) == 1)
  {
    sub_1DF48C308(v64, v76);
    (*(v45 + 8))(v69, v44);
    sub_1DF47E5B4(v29, &qword_1ECE37F80, &qword_1DF56A498);
    v51 = &qword_1ECE37A10;
    v52 = &qword_1DF567C00;
    v53 = v49;
    return sub_1DF47E5B4(v53, v51, v52);
  }

  v54 = v66;
  v55 = v49;
  v56 = v65;
  v65(v66, v55, v50);
  sub_1DF484ECC(&qword_1ED954CC0);
  v57 = v69;
  v58 = sub_1DF5648D4();
  sub_1DF48C308(v64, v76);
  sub_1DF47E5B4(v29, &qword_1ECE37F80, &qword_1DF56A498);
  if (v58)
  {
    v59 = v54;
  }

  else
  {
    v59 = v57;
  }

  if (v58)
  {
    v60 = v57;
  }

  else
  {
    v60 = v54;
  }

  (*(v45 + 8))(v59, v50);
  v61 = v50;
  v62 = v67;
  v56(v67, v60, v61);
  (*(v45 + 56))(v62, 0, 1, v61);
  return sub_1DF48C214(v62, v72);
}

void *FeatureCache.deinit()
{
  sub_1DF47E5B4((v0 + 2), &qword_1ECE37CE0, &qword_1DF568B40);
  v1 = v0[7];

  v2 = v0[8];

  __swift_destroy_boxed_opaque_existential_0(v0 + 9);
  return v0;
}

uint64_t FeatureCache.__deallocating_deinit()
{
  sub_1DF47E5B4((v0 + 2), &qword_1ECE37CE0, &qword_1DF568B40);
  v1 = v0[7];

  v2 = v0[8];

  __swift_destroy_boxed_opaque_existential_0(v0 + 9);

  return MEMORY[0x1EEE6BDC0](v0, 112, 7);
}

uint64_t sub_1DF4FEBA4(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_1DF564F04();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_1DF564E24();
  *v1 = result;
  return result;
}

uint64_t sub_1DF4FEC44(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1DF564F04();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1DF564F04();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1DF48B2B4(&qword_1ECE37F88, &qword_1ECE37B08, &unk_1DF567DB0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37B08, &unk_1DF567DB0);
            v9 = sub_1DF5437E0(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for CloudFeature();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DF4FEDE8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v21 = a3;
  v6 = a1 + 64;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  while (v9)
  {
    v13 = v12;
LABEL_10:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v15 = v14 | (v13 << 6);
    v16 = (*(a1 + 48) + 16 * v15);
    v17 = *v16;
    v18 = v16[1];
    sub_1DF47F24C(*(a1 + 56) + 32 * v15, &v20);
    v19[0] = v17;
    v19[1] = v18;

    sub_1DF4FE3D0(v19, a2, v21);
    result = sub_1DF47E5B4(v19, &qword_1ECE37CB8, &qword_1DF56A510);
    if (v3)
    {
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
    }

    v9 = *(v6 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DF4FEF1C(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a1)
  {
    if (qword_1ED9556D0 != -1)
    {
      swift_once();
    }

    v3 = sub_1DF5647B4();
    __swift_project_value_buffer(v3, qword_1ED9556D8);
    v4 = sub_1DF564794();
    v5 = sub_1DF564C44();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v39 = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_1DF47EF6C(0xD000000000000041, 0x80000001DF572D20, &v39);
      _os_log_impl(&dword_1DF47C000, v4, v5, "%s: There is an account, skipping unregistration", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x1E12D75F0](v7, -1, -1);
      MEMORY[0x1E12D75F0](v6, -1, -1);
    }

    return 0;
  }

  if ((sub_1DF4BF050(a2) & 1) != 0 || (sub_1DF4BF050(a3) & 1) == 0)
  {
    v16 = 0;
  }

  else
  {
    if (qword_1ED9556D0 != -1)
    {
      swift_once();
    }

    v11 = sub_1DF5647B4();
    __swift_project_value_buffer(v11, qword_1ED9556D8);
    v12 = sub_1DF564794();
    v13 = sub_1DF564C44();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v39 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_1DF47EF6C(0xD000000000000041, 0x80000001DF572D20, &v39);
      _os_log_impl(&dword_1DF47C000, v12, v13, "%s: We transitioned to having access for afm", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x1E12D75F0](v15, -1, -1);
      MEMORY[0x1E12D75F0](v14, -1, -1);
    }

    v16 = 1;
  }

  if ((sub_1DF4BF1A0(a2) & 1) != 0 || (sub_1DF4BF1A0(a3) & 1) == 0)
  {
    if (!v16)
    {
      if (qword_1ED9556D0 != -1)
      {
        swift_once();
      }

      v27 = sub_1DF5647B4();
      __swift_project_value_buffer(v27, qword_1ED9556D8);

      v28 = sub_1DF564794();
      v29 = sub_1DF564C44();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v39 = v31;
        *v30 = 136315650;
        *(v30 + 4) = sub_1DF47EF6C(0xD000000000000041, 0x80000001DF572D20, &v39);
        *(v30 + 12) = 2080;
        v32 = type metadata accessor for CloudFeature();
        v33 = MEMORY[0x1E12D6370](a2, v32);
        v35 = sub_1DF47EF6C(v33, v34, &v39);

        *(v30 + 14) = v35;
        *(v30 + 22) = 2080;
        v36 = MEMORY[0x1E12D6370](a3, v32);
        v38 = sub_1DF47EF6C(v36, v37, &v39);

        *(v30 + 24) = v38;
        _os_log_impl(&dword_1DF47C000, v28, v29, "%s: We did not transition to having access, skipping unregistration.\n Old features: %s,\n new features: %s", v30, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1E12D75F0](v31, -1, -1);
        MEMORY[0x1E12D75F0](v30, -1, -1);
      }

      return 0;
    }
  }

  else
  {
    if (qword_1ED9556D0 != -1)
    {
      swift_once();
    }

    v17 = sub_1DF5647B4();
    __swift_project_value_buffer(v17, qword_1ED9556D8);
    v18 = sub_1DF564794();
    v19 = sub_1DF564C44();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v39 = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_1DF47EF6C(0xD000000000000041, 0x80000001DF572D20, &v39);
      _os_log_impl(&dword_1DF47C000, v18, v19, "%s: We transitioned to having access for adm", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x1E12D75F0](v21, -1, -1);
      MEMORY[0x1E12D75F0](v20, -1, -1);
    }
  }

  if (qword_1ED9556D0 != -1)
  {
    swift_once();
  }

  v22 = sub_1DF5647B4();
  __swift_project_value_buffer(v22, qword_1ED9556D8);
  v23 = sub_1DF564794();
  v24 = sub_1DF564C44();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v39 = v26;
    *v25 = 136315138;
    *(v25 + 4) = sub_1DF47EF6C(0xD000000000000041, 0x80000001DF572D20, &v39);
    _os_log_impl(&dword_1DF47C000, v23, v24, "%s: We transitioned to having access, proceeding with unregistration.", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x1E12D75F0](v26, -1, -1);
    MEMORY[0x1E12D75F0](v25, -1, -1);
  }

  [objc_opt_self() unregisterForLoggedOutPushNotifications];
  return 1;
}

BOOL sub_1DF4FF5AC(uint64_t a1)
{
  if (a1)
  {
    if (qword_1ED9556D0 != -1)
    {
      swift_once();
    }

    v2 = sub_1DF5647B4();
    __swift_project_value_buffer(v2, qword_1ED9556D8);
    v3 = sub_1DF564794();
    v4 = sub_1DF564C44();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v13 = v6;
      *v5 = 136315138;
      *(v5 + 4) = sub_1DF47EF6C(0xD000000000000026, 0x80000001DF572D70, &v13);
      _os_log_impl(&dword_1DF47C000, v3, v4, "%s: There is an account, skipping registration", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x1E12D75F0](v6, -1, -1);
      MEMORY[0x1E12D75F0](v5, -1, -1);
    }
  }

  else
  {
    if (qword_1ED9556D0 != -1)
    {
      swift_once();
    }

    v7 = sub_1DF5647B4();
    __swift_project_value_buffer(v7, qword_1ED9556D8);
    v8 = sub_1DF564794();
    v9 = sub_1DF564C44();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v13 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_1DF47EF6C(0xD000000000000026, 0x80000001DF572D70, &v13);
      _os_log_impl(&dword_1DF47C000, v8, v9, "%s: There is no account, will proceed with registration", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x1E12D75F0](v11, -1, -1);
      MEMORY[0x1E12D75F0](v10, -1, -1);
    }

    [objc_opt_self() registerForLoggedOutPushNotifications];
  }

  return a1 == 0;
}

uint64_t FeaturesLoggerWithCategory.wrappedValue.getter()
{
  v2 = *v0;
  v1 = v0[1];

  return sub_1DF5647A4();
}

uint64_t sub_1DF4FF950()
{
  v0 = sub_1DF5647B4();
  __swift_allocate_value_buffer(v0, qword_1ED956260);
  __swift_project_value_buffer(v0, qword_1ED956260);
  return sub_1DF5647A4();
}

uint64_t sub_1DF4FFA18()
{
  v0 = sub_1DF5647B4();
  __swift_allocate_value_buffer(v0, qword_1ED954C50);
  __swift_project_value_buffer(v0, qword_1ED954C50);
  return sub_1DF5647A4();
}

uint64_t sub_1DF4FFC78()
{
  v0 = sub_1DF5647B4();
  __swift_allocate_value_buffer(v0, qword_1ED9558C0);
  __swift_project_value_buffer(v0, qword_1ED9558C0);
  return sub_1DF5647A4();
}

uint64_t sub_1DF4FFEFC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1DF5647B4();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t GMAnalyticsAction.init(rawValue:)(uint64_t result)
{
  if ((result | 8) != 0xE)
  {
    return 0;
  }

  return result;
}

uint64_t *sub_1DF4FFFD0@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  if ((*result | 8) == 0xE)
  {
    v3 = 0;
  }

  else
  {
    v2 = 0;
    v3 = 1;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

id GMAnalyticsProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id GMAnalyticsProvider.init()()
{
  v1 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v2 = sub_1DF564914();
  v3 = [v1 initWithSuiteName_];

  v10 = sub_1DF4BECB0(0, &qword_1ED9562E0, 0x1E695E000);
  v11 = &off_1F5A8A490;
  if (!v3)
  {
    v3 = [objc_opt_self() standardUserDefaults];
  }

  *&v9 = v3;
  sub_1DF47E390(&v9, &v0[OBJC_IVAR___CSFGMAnalyticsProvider_dataStore]);
  if (qword_1ED954D60 != -1)
  {
    swift_once();
  }

  v4 = qword_1ED954D68;
  v5 = &v0[OBJC_IVAR___CSFGMAnalyticsProvider_availabilityManager];
  v5[3] = type metadata accessor for AvailabilityManager();
  v5[4] = &off_1F5A8A208;
  *v5 = v4;
  v6 = &v0[OBJC_IVAR___CSFGMAnalyticsProvider_sendFunction];
  *v6 = sub_1DF47FD50;
  v6[1] = 0;
  v8.receiver = v0;
  v8.super_class = type metadata accessor for GMAnalyticsProvider();

  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t sub_1DF5001EC(uint64_t a1)
{
  v2[27] = a1;
  v2[28] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00) - 8) + 64) + 15;
  v2[29] = swift_task_alloc();
  v4 = sub_1DF564494();
  v2[30] = v4;
  v5 = *(v4 - 8);
  v2[31] = v5;
  v6 = *(v5 + 64) + 15;
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF5002F0, 0, 0);
}

uint64_t sub_1DF5002F0()
{
  v1 = *(v0 + 216);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37DC0, &qword_1DF56A5C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DF567CF0;
  *(inited + 32) = 7627617;
  *(inited + 40) = 0xE300000000000000;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v3 = sub_1DF480040(inited);
  swift_setDeallocating();
  sub_1DF47E5B4(inited + 32, &qword_1ECE37DC8, &unk_1DF5692B0);
  if (v1 == 6)
  {
    v7 = &unk_1F5A887C0;
  }

  else
  {
    if (v1 != 14)
    {
      *(v0 + 192) = *(v0 + 216);
      v7 = &type metadata for GMAnalyticsAction;
      v6 = MEMORY[0x1E69E6530];
      v4 = v0 + 192;
      v5 = &type metadata for GMAnalyticsAction;

      return MEMORY[0x1EEE6B498](v7, v4, v5, v6);
    }

    v7 = &unk_1F5A887E8;
  }

  *(v0 + 272) = v7;
  v8 = *(v7 + 16);
  *(v0 + 280) = v8;
  if (v8)
  {
    v9 = 0;
    v10 = OBJC_IVAR___CSFGMAnalyticsProvider_availabilityManager;
    v11 = &qword_1ECE378F0;
    *(v0 + 288) = OBJC_IVAR___CSFGMAnalyticsProvider_dataStore;
    *(v0 + 296) = v10;
    v12 = &qword_1DF5686F0;
    v13 = &qword_1ECE37A10;
    v14 = v3;
    while (1)
    {
      *(v0 + 312) = v9;
      *(v0 + 320) = v14;
      *(v0 + 304) = v3;
      v15 = *(v0 + 272);
      if (v9 >= *(v15 + 16))
      {
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
        return MEMORY[0x1EEE6B498](v7, v4, v5, v6);
      }

      v16 = *(v15 + v9 + 32);
      *(v0 + 336) = v16;
      if (v16 == 1)
      {
        v57 = (*(v0 + 224) + *(v0 + 296));
        v58 = *__swift_project_boxed_opaque_existential_0(v57, v57[3]);
        v59 = swift_task_alloc();
        *(v0 + 328) = v59;
        *v59 = v0;
        v59[1] = sub_1DF500A58;

        return sub_1DF4E62F0(v0 + 72);
      }

      v17 = (*(v0 + 224) + *(v0 + 288));
      v18 = v17[3];
      v19 = v17[4];
      __swift_project_boxed_opaque_existential_0(v17, v18);
      (*(v19 + 24))(0xD00000000000001ALL, 0x80000001DF572E00, v18, v19);
      v21 = *(v0 + 240);
      v20 = *(v0 + 248);
      v22 = *(v0 + 232);
      if (!*(v0 + 168))
      {
        break;
      }

      v23 = *(v0 + 232);
      v24 = *(v0 + 240);
      v25 = swift_dynamicCast();
      (*(v20 + 56))(v22, v25 ^ 1u, 1, v21);
      if ((*(v20 + 48))(v22, 1, v21) == 1)
      {
        goto LABEL_19;
      }

      v27 = *(v0 + 256);
      v26 = *(v0 + 264);
      v28 = *(v0 + 240);
      v29 = *(v0 + 248);
      (*(v29 + 32))(v26, *(v0 + 232), v28);
      sub_1DF564484();
      sub_1DF5643C4();
      v31 = v30;
      v32 = *(v29 + 8);
      v32(v27, v28);
      v7 = (v32)(v26, v28);
      v33 = v31 / 3600.0;
      if (COERCE__INT64(fabs(v31 / 3600.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_52;
      }

      if (v33 <= -1.0)
      {
        goto LABEL_54;
      }

      if (v33 >= 1.84467441e19)
      {
        goto LABEL_55;
      }

      v34 = v33;
LABEL_20:
      v35 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
      v36 = sub_1DF4BECB0(0, &qword_1ED9560B0, 0x1E696AD98);
      *(v0 + 112) = v35;
      *(v0 + 120) = *(v0 + 176);
      *(v0 + 136) = v36;
      if (v36)
      {
        sub_1DF4BECB0(0, &qword_1ED9560A8, 0x1E69E58C0);
        v7 = swift_dynamicCast();
        if (v7)
        {
          v37 = v13;
          v38 = v12;
          v39 = v11;
          v40 = *(v0 + 304);
          if (*(v0 + 336))
          {
            v41 = 7631717;
          }

          else
          {
            v41 = 6973044;
          }

          v42 = *(v0 + 200);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v0 + 208) = v40;
          v44 = sub_1DF480420(v41, 0xE300000000000000);
          v45 = *(v40 + 16);
          v46 = (v4 & 1) == 0;
          v7 = v45 + v46;
          if (__OFADD__(v45, v46))
          {
            goto LABEL_53;
          }

          v47 = v4;
          if (*(*(v0 + 304) + 24) >= v7)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              v3 = *(v0 + 208);
              if ((v4 & 1) == 0)
              {
                goto LABEL_34;
              }
            }

            else
            {
              sub_1DF4C2DE0();
              v3 = *(v0 + 208);
              if ((v47 & 1) == 0)
              {
                goto LABEL_34;
              }
            }
          }

          else
          {
            sub_1DF501DF8(v7, isUniquelyReferenced_nonNull_native);
            v48 = *(v0 + 208);
            v49 = sub_1DF480420(v41, 0xE300000000000000);
            if ((v47 & 1) != (v50 & 1))
            {

              return sub_1DF565144();
            }

            v44 = v49;
            v3 = *(v0 + 208);
            if ((v47 & 1) == 0)
            {
LABEL_34:
              v3[(v44 >> 6) + 8] |= 1 << v44;
              v53 = (v3[6] + 16 * v44);
              *v53 = v41;
              v53[1] = 0xE300000000000000;
              *(v3[7] + 8 * v44) = v42;

              v54 = v3[2];
              v55 = __OFADD__(v54, 1);
              v56 = v54 + 1;
              if (v55)
              {
                goto LABEL_56;
              }

              v3[2] = v56;
              goto LABEL_36;
            }
          }

          v51 = v3[7];
          v52 = *(v51 + 8 * v44);
          *(v51 + 8 * v44) = v42;

LABEL_36:
          v14 = v3;
          v11 = v39;
          v12 = v38;
          v13 = v37;
          goto LABEL_9;
        }
      }

      else
      {
        v7 = sub_1DF47E5B4(v0 + 112, v11, v12);
      }

      v14 = *(v0 + 320);
      v3 = *(v0 + 304);
LABEL_9:
      v9 = *(v0 + 312) + 1;
      if (v9 == *(v0 + 280))
      {
        v61 = *(v0 + 272);
        goto LABEL_45;
      }
    }

    sub_1DF47E5B4(v0 + 144, v11, v12);
    (*(v20 + 56))(v22, 1, 1, v21);
LABEL_19:
    sub_1DF47E5B4(*(v0 + 232), v13, &qword_1DF567C00);
    v34 = 0;
    goto LABEL_20;
  }

  v14 = v3;
LABEL_45:
  v63 = *(v0 + 256);
  v62 = *(v0 + 264);
  v64 = *(v0 + 224);
  v65 = *(v0 + 232);

  v67 = *(v64 + OBJC_IVAR___CSFGMAnalyticsProvider_sendFunction);
  v66 = *(v64 + OBJC_IVAR___CSFGMAnalyticsProvider_sendFunction + 8);
  v68 = swift_allocObject();
  *(v68 + 16) = v14;
  v69 = v67(0xD00000000000002CLL, 0x80000001DF572E20, sub_1DF502390, v68);

  v70 = *(v0 + 8);

  return v70(v69 & 1);
}

uint64_t sub_1DF500A58()
{
  v1 = *(*v0 + 328);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DF500B54, 0, 0);
}

void sub_1DF500B54()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(v0 + 104);

  if ((v2 & 1) == 0)
  {
    if (v1)
    {
      if ((v1 & 2) == 0)
      {
        v4 = 1;
        if ((v1 & 4) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }

      v4 = 5;
      if ((v1 & 4) != 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      if ((v1 & 2) == 0)
      {
        v4 = 0;
        if ((v1 & 4) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }

      v4 = 4;
      if ((v1 & 4) != 0)
      {
LABEL_9:
        v4 |= 2uLL;
      }
    }

LABEL_10:
    if ((v1 & 8) != 0)
    {
      v4 |= 8uLL;
      if ((v1 & 0x200) == 0)
      {
        goto LABEL_13;
      }
    }

    else if ((v1 & 0x200) == 0)
    {
      goto LABEL_13;
    }

    v4 |= 0x10uLL;
    goto LABEL_13;
  }

  v4 = 0;
LABEL_13:
  v5 = "daemon.controller";
  v6 = &off_1E86BB000;
  v7 = &qword_1ED9560B0;
  while (1)
  {
    v8 = [objc_allocWithZone(MEMORY[0x1E696AD98]) v6[309]];
    v9 = sub_1DF4BECB0(0, v7, 0x1E696AD98);
    *(v0 + 112) = v8;
    *(v0 + 120) = *(v0 + 176);
    *(v0 + 136) = v9;
    if (!v9)
    {
      sub_1DF47E5B4(v0 + 112, &qword_1ECE378F0, &qword_1DF5686F0);
LABEL_28:
      v31 = *(v0 + 320);
      v26 = *(v0 + 304);
      goto LABEL_33;
    }

    sub_1DF4BECB0(0, &qword_1ED9560A8, 0x1E69E58C0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_28;
    }

    v10 = v5;
    v11 = v7;
    v12 = v6;
    v13 = *(v0 + 304);
    if (*(v0 + 336))
    {
      v14 = 7631717;
    }

    else
    {
      v14 = 6973044;
    }

    v15 = *(v0 + 200);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 208) = v13;
    v18 = sub_1DF480420(v14, 0xE300000000000000);
    v19 = *(v13 + 16);
    v20 = (v17 & 1) == 0;
    v21 = v19 + v20;
    if (__OFADD__(v19, v20))
    {
      goto LABEL_60;
    }

    v22 = v17;
    if (*(*(v0 + 304) + 24) < v21)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v26 = *(v0 + 208);
      if ((v17 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    else
    {
      sub_1DF4C2DE0();
      v26 = *(v0 + 208);
      if ((v22 & 1) == 0)
      {
LABEL_25:
        v26[(v18 >> 6) + 8] |= 1 << v18;
        v27 = (v26[6] + 16 * v18);
        *v27 = v14;
        v27[1] = 0xE300000000000000;
        *(v26[7] + 8 * v18) = v15;

        v28 = v26[2];
        v29 = __OFADD__(v28, 1);
        v30 = v28 + 1;
        if (v29)
        {
          goto LABEL_64;
        }

        v26[2] = v30;
        goto LABEL_32;
      }
    }

LABEL_31:
    v32 = v26[7];
    v33 = *(v32 + 8 * v18);
    *(v32 + 8 * v18) = v15;

LABEL_32:
    v31 = v26;
    v6 = v12;
    v7 = v11;
    v5 = v10;
LABEL_33:
    v34 = *(v0 + 312) + 1;
    if (v34 == *(v0 + 280))
    {
      v55 = *(v0 + 264);
      v54 = *(v0 + 272);
      v56 = *(v0 + 256);
      v57 = *(v0 + 224);
      v58 = *(v0 + 232);

      v60 = *(v57 + OBJC_IVAR___CSFGMAnalyticsProvider_sendFunction);
      v59 = *(v57 + OBJC_IVAR___CSFGMAnalyticsProvider_sendFunction + 8);
      v61 = swift_allocObject();
      *(v61 + 16) = v31;
      v62 = v60(0xD00000000000002CLL, 0x80000001DF572E20, sub_1DF502390, v61);

      v63 = *(v0 + 8);

      v63(v62 & 1);
      return;
    }

    *(v0 + 312) = v34;
    *(v0 + 320) = v31;
    *(v0 + 304) = v26;
    v35 = *(v0 + 272);
    if (v34 >= *(v35 + 16))
    {
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
      return;
    }

    v36 = *(v35 + v34 + 32);
    *(v0 + 336) = v36;
    if (v36 == 1)
    {
      v64 = (*(v0 + 224) + *(v0 + 296));
      v65 = *__swift_project_boxed_opaque_existential_0(v64, v64[3]);
      v66 = swift_task_alloc();
      *(v0 + 328) = v66;
      *v66 = v0;
      v66[1] = sub_1DF500A58;

      sub_1DF4E62F0(v0 + 72);
      return;
    }

    v37 = (*(v0 + 224) + *(v0 + 288));
    v38 = v37[3];
    v39 = v37[4];
    __swift_project_boxed_opaque_existential_0(v37, v38);
    (*(v39 + 24))(0xD00000000000001ALL, v5 | 0x8000000000000000, v38, v39);
    v40 = *(v0 + 240);
    v41 = *(v0 + 248);
    v42 = *(v0 + 232);
    if (!*(v0 + 168))
    {
      sub_1DF47E5B4(v0 + 144, &qword_1ECE378F0, &qword_1DF5686F0);
      (*(v41 + 56))(v42, 1, 1, v40);
      goto LABEL_15;
    }

    v43 = *(v0 + 232);
    v44 = *(v0 + 240);
    v45 = swift_dynamicCast();
    (*(v41 + 56))(v42, v45 ^ 1u, 1, v40);
    if ((*(v41 + 48))(v42, 1, v40) == 1)
    {
LABEL_15:
      sub_1DF47E5B4(*(v0 + 232), &qword_1ECE37A10, &qword_1DF567C00);
      v4 = 0;
    }

    else
    {
      v46 = *(v0 + 256);
      v47 = *(v0 + 264);
      v48 = *(v0 + 240);
      v49 = *(v0 + 248);
      (*(v49 + 32))(v47, *(v0 + 232), v48);
      sub_1DF564484();
      sub_1DF5643C4();
      v51 = v50;
      v52 = *(v49 + 8);
      v52(v46, v48);
      v52(v47, v48);
      v53 = v51 / 3600.0;
      if (COERCE__INT64(fabs(v51 / 3600.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_61;
      }

      if (v53 <= -1.0)
      {
        goto LABEL_62;
      }

      if (v53 >= 1.84467441e19)
      {
        goto LABEL_63;
      }

      v4 = v53;
    }
  }

  sub_1DF501DF8(v21, isUniquelyReferenced_nonNull_native);
  v23 = *(v0 + 208);
  v24 = sub_1DF480420(v14, 0xE300000000000000);
  if ((v22 & 1) == (v25 & 1))
  {
    v18 = v24;
    v26 = *(v0 + 208);
    if ((v22 & 1) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_31;
  }

  sub_1DF565144();
}

uint64_t sub_1DF501370(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  a3;
  v6 = swift_task_alloc();
  v3[4] = v6;
  *v6 = v3;
  v6[1] = sub_1DF50142C;

  return sub_1DF5001EC(a1);
}

uint64_t sub_1DF50142C(char a1)
{
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v8 = *v1;

  v4[2](v4, a1 & 1);
  _Block_release(v4);
  v6 = *(v8 + 8);

  return v6();
}

id GMAnalyticsProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GMAnalyticsProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1DF501608(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37CD0, &unk_1DF56A380);
  v38 = a2;
  result = sub_1DF564F24();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_1DF565234();
      sub_1DF5649E4();
      result = sub_1DF565264();
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
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
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

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

uint64_t sub_1DF5018A8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38018, &qword_1DF56A708);
  v38 = a2;
  result = sub_1DF564F24();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_1DF565234();
      sub_1DF5649E4();
      result = sub_1DF565264();
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
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
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

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

uint64_t sub_1DF501B50(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37CB0, &unk_1DF568870);
  v38 = a2;
  result = sub_1DF564F24();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_1DF565234();
      sub_1DF5649E4();
      result = sub_1DF565264();
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
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
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

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

uint64_t sub_1DF501DF8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37CC8, &unk_1DF568880);
  v39 = a2;
  result = sub_1DF564F24();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
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
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_1DF565234();
      sub_1DF5649E4();
      result = sub_1DF565264();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
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

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1DF50209C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1DF480420(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1DF501B50(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_1DF480420(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_1DF565144();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1DF4C2AC8();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

uint64_t sub_1DF502218(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1DF480420(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1DF501DF8(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_1DF480420(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        sub_1DF565144();
        __break(1u);
        return MEMORY[0x1EEE66BB8]();
      }
    }

    else
    {
      v19 = v11;
      sub_1DF4C2DE0();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return MEMORY[0x1EEE66BB8]();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v26 = v22[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v27;
}

unint64_t sub_1DF50239C()
{
  result = qword_1ECE38010;
  if (!qword_1ECE38010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE38010);
  }

  return result;
}

uint64_t dispatch thunk of GMAnalyticsProvider.sendAction(_:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x78);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1DF502548;

  return v8(a1);
}

uint64_t sub_1DF502548(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_1DF502644()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1DF48D4B0;

  return sub_1DF501370(v2, v3, v4);
}

uint64_t sub_1DF5026FC(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if (*(a5 + 16) && (v10 = sub_1DF480420(a3, a4), (v11 & 1) != 0))
  {
    v12 = (*(a5 + 56) + 24 * v10);
    v13 = v12[2];
    if (v13)
    {
      v14 = v12[1];
      v15 = v12[2];

      v16 = sub_1DF5026FC(a1, a2, v14, v13, a5);

      return v16 & 1;
    }

    v24 = *v12;
    if (v24)
    {
      v25 = (v24 + 48);
      v26 = *(v24 + 16) + 1;
      while (--v26)
      {
        v23 = *v25;
        if (*(v25 - 2) != a1 || *(v25 - 1) != a2)
        {
          v25 += 24;
          if ((sub_1DF5650D4() & 1) == 0)
          {
            continue;
          }
        }

        v28 = qword_1ED956258;

        if (v28 != -1)
        {
          swift_once();
        }

        v29 = sub_1DF5647B4();
        __swift_project_value_buffer(v29, qword_1ED956260);

        v30 = sub_1DF564794();
        v31 = sub_1DF564C44();

        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          v33 = swift_slowAlloc();
          v39 = v33;
          *v32 = 67240450;
          *(v32 + 4) = v23;

          *(v32 + 8) = 2082;
          *(v32 + 10) = sub_1DF47EF6C(a1, a2, &v39);
          _os_log_impl(&dword_1DF47C000, v30, v31, "Returning eligibility status %{BOOL,public}d for feature ID: %{public}s", v32, 0x12u);
          __swift_destroy_boxed_opaque_existential_0(v33);
          MEMORY[0x1E12D75F0](v33, -1, -1);
          MEMORY[0x1E12D75F0](v32, -1, -1);
        }

        else
        {

          swift_bridgeObjectRelease_n();
        }

        return v23;
      }
    }

    if (qword_1ED956258 != -1)
    {
      swift_once();
    }

    v34 = sub_1DF5647B4();
    __swift_project_value_buffer(v34, qword_1ED956260);

    v35 = sub_1DF564794();
    v36 = sub_1DF564C24();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v39 = v38;
      *v37 = 136446210;
      *(v37 + 4) = sub_1DF47EF6C(a1, a2, &v39);
      _os_log_impl(&dword_1DF47C000, v35, v36, "Eligibility section not found for feature ID: %{public}s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v38);
      MEMORY[0x1E12D75F0](v38, -1, -1);
      MEMORY[0x1E12D75F0](v37, -1, -1);
    }
  }

  else
  {
    if (qword_1ED956258 != -1)
    {
      swift_once();
    }

    v18 = sub_1DF5647B4();
    __swift_project_value_buffer(v18, qword_1ED956260);

    v19 = sub_1DF564794();
    v20 = sub_1DF564C24();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v39 = v22;
      *v21 = 136446210;
      *(v21 + 4) = sub_1DF47EF6C(a3, a4, &v39);
      _os_log_impl(&dword_1DF47C000, v19, v20, "Eligibility section not found for bundle ID: %{public}s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x1E12D75F0](v22, -1, -1);
      MEMORY[0x1E12D75F0](v21, -1, -1);
    }
  }

  return 0;
}

void *sub_1DF502B70(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_1DF564494();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v15 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v15)
  {
    v16 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v16 = a1 & 0xFFFFFFFFFFFFLL;
    }

    if (v16)
    {
      v17 = *(v5 + 32);
      if (v17[2] && (v18 = *(v5 + 32), v19 = sub_1DF480420(a3, a4), (v20 & 1) != 0))
      {
        a4 = *(v17[7] + 8 * v19);
        if (a4 >> 62)
        {
          if (a4 < 0)
          {
            v50 = *(v17[7] + 8 * v19);
          }

          v21 = sub_1DF564F04();
        }

        else
        {
          v21 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (!v21)
        {
LABEL_29:
          if (qword_1ECE37838 != -1)
          {
            swift_once();
          }

          v40 = sub_1DF5647B4();
          __swift_project_value_buffer(v40, qword_1ECE37FA0);

          v32 = sub_1DF564794();
          v41 = sub_1DF564C24();

          if (!os_log_type_enabled(v32, v41))
          {

            goto LABEL_34;
          }

          v42 = swift_slowAlloc();
          v17 = swift_slowAlloc();
          v52[0] = v17;
          *v42 = 136315394;
          *(v42 + 4) = sub_1DF47EF6C(a1, a2, v52);
          *(v42 + 12) = 2080;
          v43 = type metadata accessor for GeoClassificationInfo();
          v44 = MEMORY[0x1E12D6370](a4, v43);
          v46 = v45;

          v47 = sub_1DF47EF6C(v44, v46, v52);

          *(v42 + 14) = v47;
          _os_log_impl(&dword_1DF47C000, v32, v41, "Unable to find featureID %s in bundle %s", v42, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1E12D75F0](v17, -1, -1);
          v39 = v42;
          goto LABEL_33;
        }

        a3 = 0;
        v5 = a4 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          if ((a4 & 0xC000000000000001) != 0)
          {
            v22 = MEMORY[0x1E12D66D0](a3, a4);
          }

          else
          {
            if (a3 >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_39;
            }

            v22 = *(a4 + 8 * a3 + 32);
          }

          v17 = v22;
          v23 = a3 + 1;
          if (__OFADD__(a3, 1))
          {
            break;
          }

          v24 = *(v22 + OBJC_IVAR____TtC25CloudSubscriptionFeatures21GeoClassificationInfo_featureKey) == a1 && *(v22 + OBJC_IVAR____TtC25CloudSubscriptionFeatures21GeoClassificationInfo_featureKey + 8) == a2;
          if (v24 || (sub_1DF5650D4() & 1) != 0)
          {

            return v17;
          }

          ++a3;
          if (v23 == v21)
          {
            goto LABEL_29;
          }
        }

        __break(1u);
LABEL_39:
        __break(1u);
      }

      else if (qword_1ECE37838 == -1)
      {
LABEL_27:
        v30 = sub_1DF5647B4();
        __swift_project_value_buffer(v30, qword_1ECE37FA0);
        v31 = *v5;
        v53 = *(v5 + 16);
        v54 = v31;

        sub_1DF50402C(&v54, v52);
        sub_1DF50402C(&v53, v52);

        v32 = sub_1DF564794();
        v33 = sub_1DF564C24();

        sub_1DF4BF4C8(&v54);
        sub_1DF4BF4C8(&v53);

        if (!os_log_type_enabled(v32, v33))
        {
LABEL_34:

          sub_1DF498474();
          swift_allocError();
          *v48 = 2;
          swift_willThrow();
          return v17;
        }

        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v52[0] = v35;
        *v34 = 136315394;
        *(v34 + 4) = sub_1DF47EF6C(a3, a4, v52);
        *(v34 + 12) = 2080;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38020, &qword_1DF56A710);
        v36 = sub_1DF564884();
        v38 = sub_1DF47EF6C(v36, v37, v52);

        *(v34 + 14) = v38;
        _os_log_impl(&dword_1DF47C000, v32, v33, "Unable to find bundleID %s in appIDs %s", v34, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12D75F0](v35, -1, -1);
        v39 = v34;
LABEL_33:
        MEMORY[0x1E12D75F0](v39, -1, -1);
        goto LABEL_34;
      }

      swift_once();
      goto LABEL_27;
    }
  }

  sub_1DF564484();
  v25 = type metadata accessor for GeoClassificationInfo();
  v26 = objc_allocWithZone(v25);
  v27 = OBJC_IVAR____TtC25CloudSubscriptionFeatures21GeoClassificationInfo_isBeta;
  v26[OBJC_IVAR____TtC25CloudSubscriptionFeatures21GeoClassificationInfo_isBeta] = 0;
  v28 = &v26[OBJC_IVAR____TtC25CloudSubscriptionFeatures21GeoClassificationInfo_featureKey];
  *v28 = 0;
  v28[1] = 0xE000000000000000;
  v29 = &v26[OBJC_IVAR____TtC25CloudSubscriptionFeatures21GeoClassificationInfo_geoClassification];
  *v29 = 0;
  v29[1] = 0xE000000000000000;
  (*(v11 + 16))(&v26[OBJC_IVAR____TtC25CloudSubscriptionFeatures21GeoClassificationInfo_cacheTill], v14, v10);
  v26[v27] = 0;
  v51.receiver = v26;
  v51.super_class = v25;
  v17 = objc_msgSendSuper2(&v51, sel_init);
  (*(v11 + 8))(v14, v10);
  return v17;
}

uint64_t sub_1DF503188(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v14 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE380A0, &qword_1DF56ACD8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF505360();
  sub_1DF5652A4();
  v16 = 0;
  sub_1DF565054();
  if (!v4)
  {
    v15 = 1;
    sub_1DF565064();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1DF50331C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38048, &qword_1DF56A900);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF504C68();
  sub_1DF5652A4();
  v17 = a2;
  v16 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38040, &qword_1DF56A8F8);
  sub_1DF504CBC(&qword_1ECE38050, sub_1DF504D88);
  sub_1DF565044();
  if (!v4)
  {
    v15 = 1;
    sub_1DF565024();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1DF503528@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7263736275537369 && a2 == 0xEC00000072656269)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DF5650D4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DF5035B4(uint64_t a1)
{
  v2 = sub_1DF50435C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF5035F0(uint64_t a1)
{
  v2 = sub_1DF50435C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF50362C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38028, &qword_1DF56A8D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF50435C();
  sub_1DF565284();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v11 = sub_1DF564FD4();
  (*(v6 + 8))(v9, v5);
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  *a2 = v11 & 1;
  return result;
}

uint64_t sub_1DF503790(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38078, &qword_1DF56A910);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF50435C();
  sub_1DF5652A4();
  sub_1DF565064();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1DF5038C8()
{
  if (*v0)
  {
    result = 0xD000000000000014;
  }

  else
  {
    result = 0x4B65727574616566;
  }

  *v0;
  return result;
}

uint64_t sub_1DF50390C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4B65727574616566 && a2 == 0xEA00000000007965;
  if (v6 || (sub_1DF5650D4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001DF572ED0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DF5650D4();

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

uint64_t sub_1DF5039F8(uint64_t a1)
{
  v2 = sub_1DF505360();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF503A34(uint64_t a1)
{
  v2 = sub_1DF505360();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF503A70@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1DF5043B0(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
  }

  return result;
}

uint64_t sub_1DF503AC4()
{
  if (*v0)
  {
    result = 0x754264656B6E696CLL;
  }

  else
  {
    result = 0x446E6F6974636573;
  }

  *v0;
  return result;
}

uint64_t sub_1DF503B18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x446E6F6974636573 && a2 == 0xEE00736C69617465;
  if (v6 || (sub_1DF5650D4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x754264656B6E696CLL && a2 == 0xEF79654B656C646ELL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DF5650D4();

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

uint64_t sub_1DF503C04(uint64_t a1)
{
  v2 = sub_1DF504C68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF503C40(uint64_t a1)
{
  v2 = sub_1DF504C68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF503C7C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1DF504588(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_1DF503CCC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38060, &qword_1DF56A908);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF504B50();
  sub_1DF5652A4();
  v11 = *v3;
  v12 = v3[1];
  v19 = 0;
  sub_1DF565054();
  if (!v2)
  {
    v14 = v3[2];
    v15 = v3[3];
    v18 = 1;
    sub_1DF565054();
    v17 = v3[4];
    v16[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37D60, &qword_1DF568D60);
    sub_1DF504DDC();
    sub_1DF565074();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1DF503EC0()
{
  v1 = 0x4379616C70736964;
  if (*v0 != 1)
  {
    v1 = 0x734449707061;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x437972746E756F63;
  }
}

uint64_t sub_1DF503F2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DF5047BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DF503F54(uint64_t a1)
{
  v2 = sub_1DF504B50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF503F90(uint64_t a1)
{
  v2 = sub_1DF504B50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1DF503FCC@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DF5048DC(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1DF50409C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

uint64_t sub_1DF5040F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1DF50415C(uint64_t a1, int a2)
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

uint64_t sub_1DF5041A4(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for SubscriberStatus(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SubscriberStatus(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DF50435C()
{
  result = qword_1ED954948;
  if (!qword_1ED954948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED954948);
  }

  return result;
}

uint64_t sub_1DF5043B0(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38098, &qword_1DF56ACD0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF505360();
  sub_1DF565284();
  if (!v1)
  {
    v10[15] = 0;
    v8 = sub_1DF564FC4();
    v10[14] = 1;
    sub_1DF564FD4();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v8;
}

uint64_t sub_1DF504588(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38038, &qword_1DF56A8F0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10[-v6];
  v8 = a1[3];
  __swift_project_boxed_opaque_existential_0(a1, v8);
  sub_1DF504C68();
  sub_1DF565284();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38040, &qword_1DF56A8F8);
    v10[7] = 0;
    sub_1DF504CBC(&qword_1ED954698, sub_1DF504D34);
    sub_1DF564FB4();
    v8 = v11;
    v10[6] = 1;
    sub_1DF564F84();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v8;
}

uint64_t sub_1DF5047BC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x437972746E756F63 && a2 == 0xEB0000000065646FLL;
  if (v4 || (sub_1DF5650D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4379616C70736964 && a2 == 0xEE007972746E756FLL || (sub_1DF5650D4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x734449707061 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1DF5650D4();

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

uint64_t sub_1DF5048DC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38030, &unk_1DF56A8E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF504B50();
  sub_1DF565284();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v24 = 0;
  v11 = sub_1DF564FC4();
  v13 = v12;
  v20 = v11;
  v23 = 1;
  v18 = sub_1DF564FC4();
  v19 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37D60, &qword_1DF568D60);
  v22 = 2;
  sub_1DF504BA4();
  sub_1DF564FE4();
  (*(v6 + 8))(v9, v5);
  v15 = v21;
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  *a2 = v20;
  a2[1] = v13;
  v17 = v19;
  a2[2] = v18;
  a2[3] = v17;
  a2[4] = v15;
  return result;
}

unint64_t sub_1DF504B50()
{
  result = qword_1ECE376E0;
  if (!qword_1ECE376E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE376E0);
  }

  return result;
}

unint64_t sub_1DF504BA4()
{
  result = qword_1ECE374C0;
  if (!qword_1ECE374C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE37D60, &qword_1DF568D60);
    sub_1DF504EA0(&qword_1ECE374B0, &qword_1ECE37648);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE374C0);
  }

  return result;
}

unint64_t sub_1DF504C68()
{
  result = qword_1ED954C40;
  if (!qword_1ED954C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED954C40);
  }

  return result;
}

uint64_t sub_1DF504CBC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE38040, &qword_1DF56A8F8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DF504D34()
{
  result = qword_1ED9548F0;
  if (!qword_1ED9548F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9548F0);
  }

  return result;
}

unint64_t sub_1DF504D88()
{
  result = qword_1ECE38058;
  if (!qword_1ECE38058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE38058);
  }

  return result;
}

unint64_t sub_1DF504DDC()
{
  result = qword_1ECE38068;
  if (!qword_1ECE38068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE37D60, &qword_1DF568D60);
    sub_1DF504EA0(&qword_1ECE38070, &unk_1ECE37650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE38068);
  }

  return result;
}

uint64_t sub_1DF504EA0(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE38020, &qword_1DF56A710);
    sub_1DF504F28(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DF504F28(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for GeoClassificationInfo();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1DF504FB0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_1DF504FF8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_1DF50504C()
{
  result = qword_1ECE38080;
  if (!qword_1ECE38080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE38080);
  }

  return result;
}

unint64_t sub_1DF5050A4()
{
  result = qword_1ECE38088;
  if (!qword_1ECE38088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE38088);
  }

  return result;
}

unint64_t sub_1DF5050FC()
{
  result = qword_1ECE38090;
  if (!qword_1ECE38090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE38090);
  }

  return result;
}

unint64_t sub_1DF505154()
{
  result = qword_1ED954C30;
  if (!qword_1ED954C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED954C30);
  }

  return result;
}

unint64_t sub_1DF5051AC()
{
  result = qword_1ED954C38;
  if (!qword_1ED954C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED954C38);
  }

  return result;
}

unint64_t sub_1DF505204()
{
  result = qword_1ECE376D0;
  if (!qword_1ECE376D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE376D0);
  }

  return result;
}

unint64_t sub_1DF50525C()
{
  result = qword_1ECE376D8;
  if (!qword_1ECE376D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE376D8);
  }

  return result;
}

unint64_t sub_1DF5052B4()
{
  result = qword_1ED954938;
  if (!qword_1ED954938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED954938);
  }

  return result;
}

unint64_t sub_1DF50530C()
{
  result = qword_1ED954940;
  if (!qword_1ED954940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED954940);
  }

  return result;
}

unint64_t sub_1DF505360()
{
  result = qword_1ED954908;
  if (!qword_1ED954908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED954908);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Ticket.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

unint64_t sub_1DF505458()
{
  result = qword_1ECE380A8;
  if (!qword_1ECE380A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE380A8);
  }

  return result;
}

unint64_t sub_1DF5054B0()
{
  result = qword_1ED9548F8;
  if (!qword_1ED9548F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9548F8);
  }

  return result;
}

unint64_t sub_1DF505508()
{
  result = qword_1ED954900;
  if (!qword_1ED954900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED954900);
  }

  return result;
}

BOOL sub_1DF505580(uint64_t a1)
{
  v2 = sub_1DF49A0C0(a1);
  v3 = [v2 domain];

  v4 = sub_1DF564944();
  v6 = v5;

  if (v4 == sub_1DF564944() && v6 == v7)
  {

    goto LABEL_8;
  }

  v9 = sub_1DF5650D4();

  result = 0;
  if (v9)
  {
LABEL_8:
    v11 = sub_1DF49A0C0(a1);
    v12 = [v11 code];

    return v12 > 499;
  }

  return result;
}

CloudSubscriptionFeatures::ServerError_optional __swiftcall ServerError.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue <= 403)
  {
    switch(rawValue)
    {
      case 204:
        *v1 = 0;
        return rawValue;
      case 400:
        *v1 = 2;
        return rawValue;
      case 401:
        *v1 = 1;
        return rawValue;
    }

LABEL_14:
    *v1 = 7;
    return rawValue;
  }

  if (rawValue > 428)
  {
    if (rawValue == 429)
    {
      *v1 = 5;
      return rawValue;
    }

    if (rawValue == 1000)
    {
      *v1 = 6;
      return rawValue;
    }

    goto LABEL_14;
  }

  if (rawValue == 404)
  {
    *v1 = 3;
    return rawValue;
  }

  if (rawValue != 412)
  {
    goto LABEL_14;
  }

  *v1 = 4;
  return rawValue;
}

uint64_t sub_1DF50575C(uint64_t a1)
{
  v2 = sub_1DF505D10();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1DF505798(uint64_t a1)
{
  v2 = sub_1DF505D10();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

unint64_t sub_1DF50580C()
{
  result = qword_1ECE380B0;
  if (!qword_1ECE380B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE380B0);
  }

  return result;
}

uint64_t sub_1DF505860()
{
  v1 = *v0;
  sub_1DF565234();
  MEMORY[0x1E12D6B00](qword_1DF56B0B8[v1]);
  return sub_1DF565264();
}

uint64_t sub_1DF5058E8()
{
  v1 = *v0;
  sub_1DF565234();
  MEMORY[0x1E12D6B00](qword_1DF56B0B8[v1]);
  return sub_1DF565264();
}

unint64_t sub_1DF505954(uint64_t a1)
{
  *(a1 + 8) = sub_1DF505984();
  result = sub_1DF5059D8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1DF505984()
{
  result = qword_1ECE37788;
  if (!qword_1ECE37788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37788);
  }

  return result;
}

unint64_t sub_1DF5059D8()
{
  result = qword_1ECE380B8;
  if (!qword_1ECE380B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE380B8);
  }

  return result;
}

unint64_t sub_1DF505A50()
{
  result = qword_1ECE380C0;
  if (!qword_1ECE380C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE380C8, &qword_1DF56AFB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE380C0);
  }

  return result;
}

uint64_t sub_1DF505AC4(uint64_t a1)
{
  v2 = sub_1DF505984();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1DF505B00(uint64_t a1)
{
  v2 = sub_1DF505984();
  v3 = sub_1DF505CBC();
  v4 = sub_1DF4995C8();

  return MEMORY[0x1EEDC6AB0](a1, v2, v3, v4);
}

uint64_t getEnumTagSinglePayload for ServerError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ServerError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1DF505CBC()
{
  result = qword_1ECE37780;
  if (!qword_1ECE37780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37780);
  }

  return result;
}

unint64_t sub_1DF505D10()
{
  result = qword_1ECE380D0;
  if (!qword_1ECE380D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE380D0);
  }

  return result;
}

CloudSubscriptionFeatures::LocalError_optional __swiftcall LocalError.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 17;
  if (rawValue < 0x11)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1DF505DA8()
{
  result = qword_1ECE380D8;
  if (!qword_1ECE380D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE380D8);
  }

  return result;
}

unint64_t sub_1DF505E04(uint64_t a1)
{
  *(a1 + 8) = sub_1DF499060();
  result = sub_1DF505E34();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1DF505E34()
{
  result = qword_1ECE380E0;
  if (!qword_1ECE380E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE380E0);
  }

  return result;
}

unint64_t sub_1DF505E90()
{
  result = qword_1ECE380E8;
  if (!qword_1ECE380E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECE380F0, &qword_1DF56B200);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE380E8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LocalError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LocalError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1DF506054(unsigned __int8 a1)
{
  v2 = 0xD00000000000002ELL;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE378E0, &unk_1DF56B300);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DF56B0F0;
  v4 = *MEMORY[0x1E696A578];
  *(inited + 32) = sub_1DF564944();
  *(inited + 40) = v5;
  v6 = MEMORY[0x1E69E6158];
  *(inited + 72) = MEMORY[0x1E69E6158];
  if (a1 <= 2u)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        v8 = 0xD000000000000023;
        v7 = 0xD000000000000029;
        v9 = "ng of the requested feature ID";
        v10 = "nd to any premium feature";
        v11 = "ature ID is not a valid value";
        v2 = 0xD000000000000029;
      }

      else
      {
        v7 = 0xD00000000000002DLL;
        v9 = "uest to the correct path";
        v10 = "d at the given URL";
        v11 = "404 server not found";
        v8 = 0xD000000000000039;
      }
    }

    else
    {
      v8 = 0xD000000000000032;
      v2 = 0xD000000000000021;
      v9 = "ate with the server again";
      v10 = "ticate successfully";
      v11 = "ith the server has failed";
      v7 = 0xD00000000000002ELL;
    }
  }

  else if (a1 > 4u)
  {
    if (a1 == 5)
    {
      v7 = 0xD000000000000028;
      v2 = 0xD000000000000022;
      v9 = "he response body";
      v10 = " valid feature ID";
      v11 = " existing features";
      v8 = 0xD00000000000002ELL;
    }

    else
    {
      v8 = 0xD000000000000020;
      v7 = 0xD000000000000032;
      v2 = 0xD000000000000030;
      v9 = "response was nil";
      v10 = "o data in the body";
      v11 = "ish connection with daemon";
    }
  }

  else if (a1 == 3)
  {
    v7 = 0xD000000000000014;
    v8 = 0xD000000000000022;
    v9 = "ling the right partition";
    v10 = "ch any user in this partition";
    v11 = "n this partition";
    v2 = 0xD000000000000038;
  }

  else
  {
    v7 = 0xD000000000000020;
    v8 = 0xD00000000000002DLL;
    v9 = "ng another request";
    v10 = "s have been performed recently";
    v11 = " limit has been exceeded";
    v2 = 0xD000000000000048;
  }

  *(inited + 48) = v7;
  *(inited + 56) = v11 | 0x8000000000000000;
  v12 = *MEMORY[0x1E696A588];
  *(inited + 80) = sub_1DF564944();
  *(inited + 88) = v13;
  *(inited + 120) = v6;
  *(inited + 96) = v8;
  *(inited + 104) = v10 | 0x8000000000000000;
  v14 = *MEMORY[0x1E696A598];
  *(inited + 128) = sub_1DF564944();
  *(inited + 136) = v15;
  *(inited + 168) = v6;
  *(inited + 144) = v2;
  *(inited + 152) = v9 | 0x8000000000000000;
  v16 = sub_1DF49A758(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE378E8, &unk_1DF5673D0);
  swift_arrayDestroy();
  return v16;
}

unint64_t sub_1DF506310(unsigned __int8 a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE378E0, &unk_1DF56B300);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DF56B0F0;
  v3 = *MEMORY[0x1E696A578];
  *(inited + 32) = sub_1DF564944();
  *(inited + 40) = v4;
  v5 = MEMORY[0x1E69E6158];
  *(inited + 72) = MEMORY[0x1E69E6158];
  if (a1 > 2u)
  {
    if (a1 > 4u)
    {
      if (a1 != 5)
      {
        *(inited + 48) = 0xD00000000000002ELL;
        *(inited + 56) = 0x80000001DF573D40;
        v33 = *MEMORY[0x1E696A588];
        *(inited + 80) = sub_1DF564944();
        *(inited + 88) = v34;
        *(inited + 120) = v5;
        *(inited + 96) = 0xD000000000000039;
        *(inited + 104) = 0x80000001DF573D70;
        v35 = *MEMORY[0x1E696A598];
        *(inited + 128) = sub_1DF564944();
        *(inited + 136) = v36;
        v10 = 0x80000001DF573DB0;
        v11 = 0xD00000000000001FLL;
        goto LABEL_16;
      }

      *(inited + 48) = 0xD00000000000001ELL;
      *(inited + 56) = 0x80000001DF573F00;
      v16 = *MEMORY[0x1E696A588];
      *(inited + 80) = sub_1DF564944();
      *(inited + 88) = v17;
      *(inited + 120) = v5;
      v11 = 0xD00000000000001CLL;
      *(inited + 96) = 0xD00000000000001CLL;
      *(inited + 104) = 0x80000001DF573E30;
      v18 = *MEMORY[0x1E696A598];
      *(inited + 128) = sub_1DF564944();
      *(inited + 136) = v19;
      v20 = "Check logs for error message";
    }

    else
    {
      if (a1 == 3)
      {
        *(inited + 48) = 0xD000000000000015;
        *(inited + 56) = 0x80000001DF573F50;
        v6 = *MEMORY[0x1E696A588];
        *(inited + 80) = sub_1DF564944();
        *(inited + 88) = v7;
        *(inited + 120) = v5;
        *(inited + 96) = 0xD000000000000022;
        *(inited + 104) = 0x80000001DF573E70;
        v8 = *MEMORY[0x1E696A598];
        *(inited + 128) = sub_1DF564944();
        *(inited + 136) = v9;
        v10 = 0xEC00000072616461;
        v11 = 0x72206120656C6966;
        goto LABEL_16;
      }

      v11 = 0xD000000000000015;
      *(inited + 48) = 0xD000000000000026;
      *(inited + 56) = 0x80000001DF573F20;
      v29 = *MEMORY[0x1E696A588];
      *(inited + 80) = sub_1DF564944();
      *(inited + 88) = v30;
      *(inited + 120) = v5;
      *(inited + 96) = 0xD00000000000001ELL;
      *(inited + 104) = 0x80000001DF573E50;
      v31 = *MEMORY[0x1E696A598];
      *(inited + 128) = sub_1DF564944();
      *(inited + 136) = v32;
      v20 = "check string contents";
    }

    v10 = (v20 - 32) | 0x8000000000000000;
    goto LABEL_16;
  }

  if (a1)
  {
    if (a1 == 1)
    {
      *(inited + 48) = 0xD000000000000022;
      *(inited + 56) = 0x80000001DF573FA0;
      v12 = *MEMORY[0x1E696A588];
      *(inited + 80) = sub_1DF564944();
      *(inited + 88) = v13;
      v14 = 0x80000001DF573EC0;
      *(inited + 120) = v5;
      v15 = 0xD000000000000019;
    }

    else
    {
      *(inited + 48) = 0xD000000000000020;
      *(inited + 56) = 0x80000001DF573F70;
      v25 = *MEMORY[0x1E696A588];
      *(inited + 80) = sub_1DF564944();
      *(inited + 88) = v26;
      v14 = 0x80000001DF573EA0;
      *(inited + 120) = v5;
      v15 = 0xD00000000000001ALL;
    }

    *(inited + 96) = v15;
    *(inited + 104) = v14;
    v27 = *MEMORY[0x1E696A598];
    *(inited + 128) = sub_1DF564944();
    *(inited + 136) = v28;
    v10 = 0x80000001DF573E10;
    v11 = 0xD000000000000018;
  }

  else
  {
    *(inited + 48) = 0xD000000000000012;
    *(inited + 56) = 0x80000001DF573FD0;
    v21 = *MEMORY[0x1E696A588];
    *(inited + 80) = sub_1DF564944();
    *(inited + 88) = v22;
    *(inited + 120) = v5;
    *(inited + 96) = 0xD000000000000015;
    *(inited + 104) = 0x80000001DF573EE0;
    v23 = *MEMORY[0x1E696A598];
    *(inited + 128) = sub_1DF564944();
    *(inited + 136) = v24;
    v10 = 0x80000001DF572FB0;
    v11 = 0xD000000000000014;
  }

LABEL_16:
  *(inited + 168) = v5;
  *(inited + 144) = v11;
  *(inited + 152) = v10;
  v37 = sub_1DF49A758(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE378E8, &unk_1DF5673D0);
  swift_arrayDestroy();
  return v37;
}

void sub_1DF506780()
{
  sub_1DF50682C(319, &unk_1ED954CA0, sub_1DF4820E4);
  if (v0 <= 0x3F)
  {
    sub_1DF50682C(319, &qword_1ED954CC8, MEMORY[0x1E6969530]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1DF50682C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

id sub_1DF506878()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A18, qword_1DF56B370);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v45 - v4;
  v6 = [objc_allocWithZone(MEMORY[0x1E6997AD0]) init];
  v7 = *v1;
  v46 = v1[1];
  v47 = v7;
  v8 = sub_1DF564914();
  [v6 setUniqueIdentifier_];

  v9 = v1[2];
  v10 = v1[3];
  v11 = sub_1DF564914();
  [v6 setGroupIdentifier_];

  v12 = v1[10];
  v45[0] = v1[11];
  v45[1] = v12;
  v13 = sub_1DF564914();
  [v6 setTitle_];

  v14 = v1[12];
  v15 = v1[13];
  v16 = sub_1DF564914();
  [v6 setInformativeText_];

  v17 = v1[14];
  v18 = v1[15];
  v19 = type metadata accessor for FollowUpConfig();
  sub_1DF50731C(v1 + *(v19 + 48), v5);
  v20 = sub_1DF564914();
  v21 = sub_1DF564344();
  v22 = *(v21 - 8);
  v23 = 0;
  if ((*(v22 + 48))(v5, 1, v21) != 1)
  {
    v23 = sub_1DF564314();
    (*(v22 + 8))(v5, v21);
  }

  v24 = objc_opt_self();
  v25 = [v24 actionWithLabel:v20 url:v23];

  if (v25)
  {
    v26 = v25;
    v27 = sub_1DF564914();
    [v26 setIdentifier_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37ED0, &qword_1DF569BB0);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1DF569350;
    *(v28 + 32) = v26;
    sub_1DF4BECB0(0, &qword_1ECE37468, 0x1E6997AC0);
    v29 = v26;
    v30 = sub_1DF564A94();

    [v6 setActions_];
  }

  v31 = [objc_allocWithZone(MEMORY[0x1E6997AD8]) init];
  v32 = sub_1DF564914();
  [v31 setTitle_];

  v33 = sub_1DF564914();
  [v31 setInformativeText_];

  [v31 setFrequency_];
  [v31 setActivateAction_];
  v34 = [v24 actionWithLabel:0 url:0];
  v35 = v34;
  if (v34)
  {
    v36 = v34;
    v37 = sub_1DF564914();
    [v36 setIdentifier_];
  }

  [v31 setClearAction_];
  [v6 setNotification_];
  if (v47 == 0xD000000000000017 && 0x80000001DF573FF0 == v46 || (sub_1DF5650D4() & 1) != 0)
  {
    [v6 setDisplayStyle_];
    if (v1[5])
    {
      v38 = v1[4];
      v39 = sub_1DF564914();
    }

    else
    {
      v39 = 0;
    }

    [v6 setExtensionIdentifier_];

    if (v1[7])
    {
      v40 = v1[6];
      v41 = sub_1DF564914();
    }

    else
    {
      v41 = 0;
    }

    [v6 setRepresentingBundlePath_];

    if (v1[9])
    {
      v42 = v1[8];
      v43 = sub_1DF564914();
    }

    else
    {
      v43 = 0;
    }

    [v6 setBundleIconName_];
  }

  else
  {
    [v6 setDisplayStyle_];
  }

  return v6;
}

double sub_1DF506DCC@<D0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E6997A98];
  v3 = sub_1DF564944();
  v22 = v4;
  v23 = v3;
  sub_1DF4BECB0(0, &qword_1ECE37460, off_1E86BACB8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = objc_opt_self();
  v7 = [v6 bundleForClass_];
  v8 = sub_1DF564274();
  v20 = v9;
  v21 = v8;

  v10 = [v6 bundleForClass_];
  v11 = sub_1DF564274();
  v13 = v12;

  v14 = [v6 bundleForClass_];
  v15 = sub_1DF564274();
  v17 = v16;

  v18 = a1 + *(type metadata accessor for FollowUpConfig() + 48);
  sub_1DF564334();
  *a1 = 0xD000000000000013;
  *(a1 + 8) = 0x80000001DF5709F0;
  *(a1 + 16) = v23;
  *(a1 + 24) = v22;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = v21;
  *(a1 + 88) = v20;
  *(a1 + 96) = v11;
  *(a1 + 104) = v13;
  *(a1 + 112) = v15;
  *(a1 + 120) = v17;
  return result;
}

double sub_1DF507018@<D0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E6997AA0];
  v3 = sub_1DF564944();
  v22 = v4;
  v23 = v3;
  sub_1DF4BECB0(0, &qword_1ECE37460, off_1E86BACB8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = objc_opt_self();
  v7 = [v6 bundleForClass_];
  v8 = sub_1DF564274();
  v21 = v9;

  v10 = [v6 bundleForClass_];
  v11 = sub_1DF564274();
  v13 = v12;

  v14 = [v6 bundleForClass_];
  v15 = sub_1DF564274();
  v17 = v16;

  v18 = *(type metadata accessor for FollowUpConfig() + 48);
  v19 = sub_1DF564344();
  (*(*(v19 - 8) + 56))(a1 + v18, 1, 1, v19);
  *a1 = 0xD000000000000017;
  *(a1 + 8) = 0x80000001DF573FF0;
  *(a1 + 16) = v23;
  *(a1 + 24) = v22;
  *(a1 + 32) = 0xD000000000000038;
  *(a1 + 40) = 0x80000001DF574030;
  *(a1 + 48) = 0xD000000000000068;
  *(a1 + 56) = 0x80000001DF574070;
  result = 4.73648168e180;
  *(a1 + 64) = xmmword_1DF56B360;
  *(a1 + 80) = v8;
  *(a1 + 88) = v21;
  *(a1 + 96) = v11;
  *(a1 + 104) = v13;
  *(a1 + 112) = v15;
  *(a1 + 120) = v17;
  return result;
}

uint64_t type metadata accessor for FollowUpConfig()
{
  result = qword_1ECE37758;
  if (!qword_1ECE37758)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DF50731C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A18, qword_1DF56B370);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1DF5073B4()
{
  sub_1DF482924();
  if (v0 <= 0x3F)
  {
    sub_1DF507454();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1DF507454()
{
  if (!qword_1ECE377D0)
  {
    sub_1DF564344();
    v0 = sub_1DF564D04();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECE377D0);
    }
  }
}

uint64_t GeoClassificationInfo.featureKey.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC25CloudSubscriptionFeatures21GeoClassificationInfo_featureKey);
  v2 = *(v0 + OBJC_IVAR____TtC25CloudSubscriptionFeatures21GeoClassificationInfo_featureKey + 8);

  return v1;
}

uint64_t sub_1DF50763C()
{
  v0 = sub_1DF564494();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DF564484();
  v5 = sub_1DF5643F4();
  (*(v1 + 8))(v4, v0);
  return v5 & 1;
}

uint64_t sub_1DF507764()
{
  v1 = *(v0 + OBJC_IVAR____TtC25CloudSubscriptionFeatures21GeoClassificationInfo_geoClassification);
  v2 = *(v0 + OBJC_IVAR____TtC25CloudSubscriptionFeatures21GeoClassificationInfo_geoClassification + 8);

  return sub_1DF508CAC(v1, v2);
}

_BYTE *GeoClassificationInfo.init(from:)(uint64_t *a1)
{
  v3 = sub_1DF564494();
  v33 = *(v3 - 8);
  v4 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38108, &unk_1DF56B3B0);
  v34 = *(v7 - 8);
  v35 = v7;
  v8 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v30 - v9;
  v11 = OBJC_IVAR____TtC25CloudSubscriptionFeatures21GeoClassificationInfo_isBeta;
  v12 = v1;
  *(v1 + OBJC_IVAR____TtC25CloudSubscriptionFeatures21GeoClassificationInfo_isBeta) = 0;
  v14 = a1[3];
  v13 = a1[4];
  v37 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v14);
  sub_1DF508DD0();
  v15 = v36;
  sub_1DF565284();
  if (v15)
  {
    __swift_destroy_boxed_opaque_existential_0(v37);
    type metadata accessor for GeoClassificationInfo();
    v20 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x30);
    v21 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v36 = v11;
    v16 = v6;
    v18 = v34;
    v17 = v35;
    v39 = 3;
    v19 = sub_1DF564FC4();
    v23 = (v1 + OBJC_IVAR____TtC25CloudSubscriptionFeatures21GeoClassificationInfo_featureKey);
    *v23 = v19;
    v23[1] = v24;
    v39 = 0;
    v25 = sub_1DF564FC4();
    v26 = (v1 + OBJC_IVAR____TtC25CloudSubscriptionFeatures21GeoClassificationInfo_geoClassification);
    *v26 = v25;
    v26[1] = v27;
    v32 = v26;
    v39 = 1;
    sub_1DF484ECC(&qword_1ED955C88);
    v31 = v16;
    sub_1DF564FE4();
    (*(v33 + 32))(v1 + OBJC_IVAR____TtC25CloudSubscriptionFeatures21GeoClassificationInfo_cacheTill, v31, v3);
    v39 = 2;
    v28 = sub_1DF564F94();
    (*(v18 + 8))(v10, v17);
    v12[v36] = v28 & 1;
    v29 = type metadata accessor for GeoClassificationInfo();
    v38.receiver = v12;
    v38.super_class = v29;
    v12 = objc_msgSendSuper2(&v38, sel_init);
    __swift_destroy_boxed_opaque_existential_0(v37);
  }

  return v12;
}

id GeoClassificationInfo.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = sub_1DF564494();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC25CloudSubscriptionFeatures21GeoClassificationInfo_isBeta;
  *(v1 + OBJC_IVAR____TtC25CloudSubscriptionFeatures21GeoClassificationInfo_isBeta) = 0;
  sub_1DF4BECB0(0, &qword_1ED9560A0, 0x1E696AEC0);
  v10 = sub_1DF564CB4();
  if (!v10)
  {
    if (qword_1ED9545D8 != -1)
    {
      swift_once();
    }

    v28 = sub_1DF5647B4();
    __swift_project_value_buffer(v28, qword_1ED9545E0);
    v29 = sub_1DF564794();
    v30 = sub_1DF564C24();
    if (!os_log_type_enabled(v29, v30))
    {
      goto LABEL_18;
    }

    v31 = swift_slowAlloc();
    *v31 = 0;
    v32 = "Could not decode feature key for GeoclassificationInfo!";
    goto LABEL_17;
  }

  v11 = v10;
  v12 = sub_1DF564944();
  v14 = v13;

  v15 = sub_1DF564CB4();
  if (!v15)
  {

    if (qword_1ED9545D8 != -1)
    {
      swift_once();
    }

    v33 = sub_1DF5647B4();
    __swift_project_value_buffer(v33, qword_1ED9545E0);
    v29 = sub_1DF564794();
    v30 = sub_1DF564C24();
    if (!os_log_type_enabled(v29, v30))
    {
      goto LABEL_18;
    }

    v31 = swift_slowAlloc();
    *v31 = 0;
    v32 = "Could not decode geoClassification for GeoclassificationInfo!";
    goto LABEL_17;
  }

  v16 = v15;
  v38 = sub_1DF564944();
  v18 = v17;

  sub_1DF4BECB0(0, &qword_1ED955DD0, 0x1E695DF00);
  v19 = sub_1DF564CB4();
  if (v19)
  {
    v20 = (v2 + OBJC_IVAR____TtC25CloudSubscriptionFeatures21GeoClassificationInfo_featureKey);
    *v20 = v12;
    v20[1] = v14;
    v21 = (v2 + OBJC_IVAR____TtC25CloudSubscriptionFeatures21GeoClassificationInfo_geoClassification);
    *v21 = v38;
    v21[1] = v18;
    v22 = v19;
    sub_1DF564464();
    (*(v5 + 32))(v2 + OBJC_IVAR____TtC25CloudSubscriptionFeatures21GeoClassificationInfo_cacheTill, v8, v4);
    v23 = sub_1DF564914();
    v24 = [a1 decodeBoolForKey_];

    *(v2 + v9) = v24;
    v25 = type metadata accessor for GeoClassificationInfo();
    v39.receiver = v2;
    v39.super_class = v25;
    v26 = objc_msgSendSuper2(&v39, sel_init);

    return v26;
  }

  if (qword_1ED9545D8 != -1)
  {
    swift_once();
  }

  v34 = sub_1DF5647B4();
  __swift_project_value_buffer(v34, qword_1ED9545E0);
  v29 = sub_1DF564794();
  v30 = sub_1DF564C24();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    v32 = "Could not decode cacheTill for GeoclassificationInfo!";
LABEL_17:
    _os_log_impl(&dword_1DF47C000, v29, v30, v32, v31, 2u);
    MEMORY[0x1E12D75F0](v31, -1, -1);
  }

LABEL_18:

  type metadata accessor for GeoClassificationInfo();
  v35 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x30);
  v36 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x34);
  swift_deallocPartialClassInstance();
  return 0;
}

void sub_1DF508124(void *a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC25CloudSubscriptionFeatures21GeoClassificationInfo_featureKey);
  v5 = *(v1 + OBJC_IVAR____TtC25CloudSubscriptionFeatures21GeoClassificationInfo_featureKey + 8);
  v6 = sub_1DF564914();
  v7 = sub_1DF564914();
  [a1 encodeObject:v6 forKey:v7];

  v8 = *(v2 + OBJC_IVAR____TtC25CloudSubscriptionFeatures21GeoClassificationInfo_geoClassification);
  v9 = *(v2 + OBJC_IVAR____TtC25CloudSubscriptionFeatures21GeoClassificationInfo_geoClassification + 8);
  v10 = sub_1DF564914();
  v11 = sub_1DF564914();
  [a1 encodeObject:v10 forKey:v11];

  v12 = sub_1DF5643E4();
  v13 = sub_1DF564914();
  [a1 encodeObject:v12 forKey:v13];

  v14 = *(v2 + OBJC_IVAR____TtC25CloudSubscriptionFeatures21GeoClassificationInfo_isBeta);
  v15 = sub_1DF564914();
  [a1 encodeBool:v14 forKey:v15];
}

uint64_t sub_1DF50837C()
{
  v1 = v0;
  sub_1DF564DF4();
  MEMORY[0x1E12D62C0](0x4B65727574616566, 0xEC000000203A7965);
  MEMORY[0x1E12D62C0](*(v1 + OBJC_IVAR____TtC25CloudSubscriptionFeatures21GeoClassificationInfo_featureKey), *(v1 + OBJC_IVAR____TtC25CloudSubscriptionFeatures21GeoClassificationInfo_featureKey + 8));
  MEMORY[0x1E12D62C0](0x737574617473202CLL, 0xEA0000000000203ALL);
  v2 = *(v0 + OBJC_IVAR____TtC25CloudSubscriptionFeatures21GeoClassificationInfo_geoClassification);
  v3 = *(v1 + OBJC_IVAR____TtC25CloudSubscriptionFeatures21GeoClassificationInfo_geoClassification + 8);

  v4 = sub_1DF508CAC(v2, v3);
  v5 = CSFGeoClassificationStatusDescription(v4);
  v6 = sub_1DF564944();
  v8 = v7;

  MEMORY[0x1E12D62C0](v6, v8);

  MEMORY[0x1E12D62C0](0x546568636163202CLL, 0xED0000203A6C6C69);
  sub_1DF564494();
  sub_1DF484ECC(&qword_1ED954CB0);
  v9 = sub_1DF5650A4();
  MEMORY[0x1E12D62C0](v9);

  MEMORY[0x1E12D62C0](0x617465427369202CLL, 0xEA0000000000203ALL);
  if (*(v1 + OBJC_IVAR____TtC25CloudSubscriptionFeatures21GeoClassificationInfo_isBeta))
  {
    v10 = 1702195828;
  }

  else
  {
    v10 = 0x65736C6166;
  }

  if (*(v1 + OBJC_IVAR____TtC25CloudSubscriptionFeatures21GeoClassificationInfo_isBeta))
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  MEMORY[0x1E12D62C0](v10, v11);

  return 0;
}

uint64_t sub_1DF50856C(uint64_t a1)
{
  sub_1DF4EC8F4(a1, v9);
  if (!v10)
  {
    sub_1DF4A7D80(v9);
    goto LABEL_17;
  }

  type metadata accessor for GeoClassificationInfo();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:
    v6 = 0;
    return v6 & 1;
  }

  v2 = *(v1 + OBJC_IVAR____TtC25CloudSubscriptionFeatures21GeoClassificationInfo_featureKey) == *&v8[OBJC_IVAR____TtC25CloudSubscriptionFeatures21GeoClassificationInfo_featureKey] && *(v1 + OBJC_IVAR____TtC25CloudSubscriptionFeatures21GeoClassificationInfo_featureKey + 8) == *&v8[OBJC_IVAR____TtC25CloudSubscriptionFeatures21GeoClassificationInfo_featureKey + 8];
  if (!v2 && (sub_1DF5650D4() & 1) == 0 || (*(v1 + OBJC_IVAR____TtC25CloudSubscriptionFeatures21GeoClassificationInfo_geoClassification) == *&v8[OBJC_IVAR____TtC25CloudSubscriptionFeatures21GeoClassificationInfo_geoClassification] ? (v3 = *(v1 + OBJC_IVAR____TtC25CloudSubscriptionFeatures21GeoClassificationInfo_geoClassification + 8) == *&v8[OBJC_IVAR____TtC25CloudSubscriptionFeatures21GeoClassificationInfo_geoClassification + 8]) : (v3 = 0), !v3 && (sub_1DF5650D4() & 1) == 0 || (sub_1DF564454() & 1) == 0))
  {

    goto LABEL_17;
  }

  v4 = *(v1 + OBJC_IVAR____TtC25CloudSubscriptionFeatures21GeoClassificationInfo_isBeta);
  v5 = v8[OBJC_IVAR____TtC25CloudSubscriptionFeatures21GeoClassificationInfo_isBeta];

  v6 = v4 ^ v5 ^ 1;
  return v6 & 1;
}

id GeoClassificationInfo.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

unint64_t sub_1DF508794()
{
  v1 = 0x6C69546568636163;
  v2 = 0x617465427369;
  if (*v0 != 2)
  {
    v2 = 0x4B65727574616566;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000011;
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

uint64_t sub_1DF508818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DF509124(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DF508840(uint64_t a1)
{
  v2 = sub_1DF508DD0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF50887C(uint64_t a1)
{
  v2 = sub_1DF508DD0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id GeoClassificationInfo.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GeoClassificationInfo();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1DF508984(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38110, &qword_1DF56B3C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF508DD0();
  sub_1DF5652A4();
  v11 = *(v3 + OBJC_IVAR____TtC25CloudSubscriptionFeatures21GeoClassificationInfo_geoClassification);
  v12 = *(v3 + OBJC_IVAR____TtC25CloudSubscriptionFeatures21GeoClassificationInfo_geoClassification + 8);
  v17[15] = 0;
  sub_1DF565054();
  if (!v2)
  {
    v17[14] = 1;
    sub_1DF564494();
    sub_1DF484ECC(&qword_1ED955120);
    sub_1DF565074();
    v13 = *(v3 + OBJC_IVAR____TtC25CloudSubscriptionFeatures21GeoClassificationInfo_isBeta);
    v17[13] = 2;
    sub_1DF565064();
    v14 = *(v3 + OBJC_IVAR____TtC25CloudSubscriptionFeatures21GeoClassificationInfo_featureKey);
    v15 = *(v3 + OBJC_IVAR____TtC25CloudSubscriptionFeatures21GeoClassificationInfo_featureKey + 8);
    v17[12] = 3;
    sub_1DF565054();
  }

  return (*(v6 + 8))(v9, v5);
}