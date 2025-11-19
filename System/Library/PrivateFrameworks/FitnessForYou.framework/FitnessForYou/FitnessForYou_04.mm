uint64_t sub_20C356F84()
{
  v1 = v0[16];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 13, v1);
  v3 = *(v1 - 8);
  v4 = *(v3 + 64) + 15;
  v5 = swift_task_alloc();
  (*(v3 + 16))(v5, v2, v1);
  v0[11] = swift_getAssociatedTypeWitness();
  v0[12] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 8);
  sub_20C36CF44();

  __swift_destroy_boxed_opaque_existential_1(v0 + 13);
  v6 = v0[19];
  v7 = sub_20C36CEE4();
  v0[25] = v7;
  v8 = v0[12];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 8), v0[11]);
  v9 = *(MEMORY[0x277D856D8] + 4);
  v10 = swift_task_alloc();
  v0[26] = v10;
  *v10 = v0;
  v10[1] = sub_20C35715C;
  v11 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 57, v7, v11);
}

uint64_t sub_20C35715C()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v8 = *v1;

  if (!v0)
  {
    v5 = v2[25];

    v6 = v2[23];
    v7 = v2[24];

    return MEMORY[0x2822009F8](sub_20C357270, v6, v7);
  }

  return result;
}

uint64_t sub_20C357270()
{
  if (*(v0 + 57) == 1)
  {
    v1 = *(v0 + 160);

    __swift_destroy_boxed_opaque_existential_1((v0 + 64));
    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    if (qword_2810E8CA8 != -1)
    {
      swift_once();
    }

    v4 = sub_20C36C3D4();
    __swift_project_value_buffer(v4, qword_2810ED6B8);
    v5 = sub_20C36C3B4();
    v6 = sub_20C36CFD4();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_20C2F6000, v5, v6, "Personalization Privacy Preference Updated — refreshing", v7, 2u);
      MEMORY[0x20F2F83A0](v7, -1, -1);
    }

    *(v0 + 16) = 1;
    *(v0 + 24) = 0u;
    *(v0 + 40) = 0u;
    *(v0 + 56) = 2;
    v8 = *(MEMORY[0x277D043C8] + 4);
    v9 = swift_task_alloc();
    *(v0 + 216) = v9;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79ED20, &qword_20C376498);
    *v9 = v0;
    v9[1] = sub_20C357454;
    v11 = *(v0 + 144);

    return MEMORY[0x282159B08](v0 + 16, v10);
  }
}

uint64_t sub_20C357454()
{
  v1 = *v0;
  v2 = *(*v0 + 216);
  v6 = *v0;

  v3 = *(v1 + 192);
  v4 = *(v1 + 184);

  return MEMORY[0x2822009F8](sub_20C357574, v4, v3);
}

uint64_t sub_20C357574()
{
  v1 = v0[19];
  v2 = sub_20C36CEE4();
  v0[25] = v2;
  v3 = v0[12];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 8), v0[11]);
  v4 = *(MEMORY[0x277D856D8] + 4);
  v5 = swift_task_alloc();
  v0[26] = v5;
  *v5 = v0;
  v5[1] = sub_20C35715C;
  v6 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 57, v2, v6);
}

uint64_t sub_20C357650(uint64_t a1, uint64_t a2)
{
  v2[18] = a1;
  v2[19] = sub_20C36CEF4();
  v2[20] = sub_20C36CEE4();
  v4 = *(a2 + 216);
  v8 = (*(a2 + 208) + **(a2 + 208));
  v5 = *(*(a2 + 208) + 4);
  v6 = swift_task_alloc();
  v2[21] = v6;
  *v6 = v2;
  v6[1] = sub_20C357764;

  return v8(v2 + 13);
}

uint64_t sub_20C357764()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 168);
  v5 = *(*v1 + 160);
  v6 = *(*v1 + 152);
  v11 = *v1;
  v3[22] = v2;

  v8 = sub_20C36CEC4();
  v3[23] = v8;
  v3[24] = v7;
  if (v2)
  {
    v9 = sub_20C35B188;
  }

  else
  {
    v9 = sub_20C3578C4;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_20C3578C4()
{
  v1 = v0[16];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 13, v1);
  v3 = *(v1 - 8);
  v4 = *(v3 + 64) + 15;
  v5 = swift_task_alloc();
  (*(v3 + 16))(v5, v2, v1);
  v0[11] = swift_getAssociatedTypeWitness();
  v0[12] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 8);
  sub_20C36CF44();

  __swift_destroy_boxed_opaque_existential_1(v0 + 13);
  v6 = v0[19];
  v7 = sub_20C36CEE4();
  v0[25] = v7;
  v8 = v0[12];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 8), v0[11]);
  v9 = *(MEMORY[0x277D856D8] + 4);
  v10 = swift_task_alloc();
  v0[26] = v10;
  *v10 = v0;
  v10[1] = sub_20C357A9C;
  v11 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 57, v7, v11);
}

uint64_t sub_20C357A9C()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v8 = *v1;

  if (!v0)
  {
    v5 = v2[25];

    v6 = v2[23];
    v7 = v2[24];

    return MEMORY[0x2822009F8](sub_20C357BB0, v6, v7);
  }

  return result;
}

uint64_t sub_20C357BB0()
{
  if (*(v0 + 57) == 1)
  {
    v1 = *(v0 + 160);

    __swift_destroy_boxed_opaque_existential_1((v0 + 64));
    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    if (qword_2810E8CA8 != -1)
    {
      swift_once();
    }

    v4 = sub_20C36C3D4();
    __swift_project_value_buffer(v4, qword_2810ED6B8);
    v5 = sub_20C36C3B4();
    v6 = sub_20C36CFD4();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_20C2F6000, v5, v6, "Significant Time Change — refreshing", v7, 2u);
      MEMORY[0x20F2F83A0](v7, -1, -1);
    }

    *(v0 + 16) = 1;
    *(v0 + 24) = 0u;
    *(v0 + 40) = 0u;
    *(v0 + 56) = 2;
    v8 = *(MEMORY[0x277D043C8] + 4);
    v9 = swift_task_alloc();
    *(v0 + 216) = v9;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79ED20, &qword_20C376498);
    *v9 = v0;
    v9[1] = sub_20C357D94;
    v11 = *(v0 + 144);

    return MEMORY[0x282159B08](v0 + 16, v10);
  }
}

uint64_t sub_20C357D94()
{
  v1 = *v0;
  v2 = *(*v0 + 216);
  v6 = *v0;

  v3 = *(v1 + 192);
  v4 = *(v1 + 184);

  return MEMORY[0x2822009F8](sub_20C357EB4, v4, v3);
}

uint64_t sub_20C357EB4()
{
  v1 = v0[19];
  v2 = sub_20C36CEE4();
  v0[25] = v2;
  v3 = v0[12];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 8), v0[11]);
  v4 = *(MEMORY[0x277D856D8] + 4);
  v5 = swift_task_alloc();
  v0[26] = v5;
  *v5 = v0;
  v5[1] = sub_20C357A9C;
  v6 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 57, v2, v6);
}

uint64_t sub_20C357F90(uint64_t a1, uint64_t a2)
{
  v2[18] = a1;
  v2[19] = sub_20C36CEF4();
  v2[20] = sub_20C36CEE4();
  v4 = *(a2 + 248);
  v8 = (*(a2 + 240) + **(a2 + 240));
  v5 = *(*(a2 + 240) + 4);
  v6 = swift_task_alloc();
  v2[21] = v6;
  *v6 = v2;
  v6[1] = sub_20C3580A4;

  return v8(v2 + 13);
}

uint64_t sub_20C3580A4()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 168);
  v5 = *(*v1 + 160);
  v6 = *(*v1 + 152);
  v11 = *v1;
  v3[22] = v2;

  v8 = sub_20C36CEC4();
  v3[23] = v8;
  v3[24] = v7;
  if (v2)
  {
    v9 = sub_20C35B188;
  }

  else
  {
    v9 = sub_20C358204;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_20C358204()
{
  v1 = v0[16];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 13, v1);
  v3 = *(v1 - 8);
  v4 = *(v3 + 64) + 15;
  v5 = swift_task_alloc();
  (*(v3 + 16))(v5, v2, v1);
  v0[11] = swift_getAssociatedTypeWitness();
  v0[12] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 8);
  sub_20C36CF44();

  __swift_destroy_boxed_opaque_existential_1(v0 + 13);
  v6 = v0[19];
  v7 = sub_20C36CEE4();
  v0[25] = v7;
  v8 = v0[12];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 8), v0[11]);
  v9 = *(MEMORY[0x277D856D8] + 4);
  v10 = swift_task_alloc();
  v0[26] = v10;
  *v10 = v0;
  v10[1] = sub_20C3583DC;
  v11 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 57, v7, v11);
}

uint64_t sub_20C3583DC()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v8 = *v1;

  if (!v0)
  {
    v5 = v2[25];

    v6 = v2[23];
    v7 = v2[24];

    return MEMORY[0x2822009F8](sub_20C3584F0, v6, v7);
  }

  return result;
}

uint64_t sub_20C3584F0()
{
  if (*(v0 + 57) == 1)
  {
    v1 = *(v0 + 160);

    __swift_destroy_boxed_opaque_existential_1((v0 + 64));
    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    if (qword_2810E8CA8 != -1)
    {
      swift_once();
    }

    v4 = sub_20C36C3D4();
    __swift_project_value_buffer(v4, qword_2810ED6B8);
    v5 = sub_20C36C3B4();
    v6 = sub_20C36CFD4();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_20C2F6000, v5, v6, "Wheelchair Status Updated — refreshing", v7, 2u);
      MEMORY[0x20F2F83A0](v7, -1, -1);
    }

    *(v0 + 16) = 1;
    *(v0 + 24) = 0u;
    *(v0 + 40) = 0u;
    *(v0 + 56) = 2;
    v8 = *(MEMORY[0x277D043C8] + 4);
    v9 = swift_task_alloc();
    *(v0 + 216) = v9;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79ED20, &qword_20C376498);
    *v9 = v0;
    v9[1] = sub_20C3586D4;
    v11 = *(v0 + 144);

    return MEMORY[0x282159B08](v0 + 16, v10);
  }
}

uint64_t sub_20C3586D4()
{
  v1 = *v0;
  v2 = *(*v0 + 216);
  v6 = *v0;

  v3 = *(v1 + 192);
  v4 = *(v1 + 184);

  return MEMORY[0x2822009F8](sub_20C3587F4, v4, v3);
}

uint64_t sub_20C3587F4()
{
  v1 = v0[19];
  v2 = sub_20C36CEE4();
  v0[25] = v2;
  v3 = v0[12];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 8), v0[11]);
  v4 = *(MEMORY[0x277D856D8] + 4);
  v5 = swift_task_alloc();
  v0[26] = v5;
  *v5 = v0;
  v5[1] = sub_20C3583DC;
  v6 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 57, v2, v6);
}

uint64_t sub_20C3588D0(uint64_t a1, uint64_t a2)
{
  *(v2 + 96) = sub_20C36CEF4();
  *(v2 + 104) = sub_20C36CEE4();
  *(v2 + 112) = *(a2 + 16);
  v4 = *(a2 + 104);
  v8 = (*(a2 + 96) + **(a2 + 96));
  v5 = *(*(a2 + 96) + 4);
  v6 = swift_task_alloc();
  *(v2 + 128) = v6;
  *v6 = v2;
  v6[1] = sub_20C3589E8;

  return v8(v2 + 56);
}

uint64_t sub_20C3589E8()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 128);
  v5 = *(*v1 + 104);
  v6 = *(*v1 + 96);
  v11 = *v1;
  v3[17] = v2;

  v8 = sub_20C36CEC4();
  v3[18] = v8;
  v3[19] = v7;
  if (v2)
  {
    v9 = sub_20C359188;
  }

  else
  {
    v9 = sub_20C358B48;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_20C358B48()
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
  sub_20C36CF44();

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v6 = v0[12];
  v7 = sub_20C36CEE4();
  v0[20] = v7;
  v8 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v9 = *(MEMORY[0x277D856D8] + 4);
  v10 = swift_task_alloc();
  v0[21] = v10;
  *v10 = v0;
  v10[1] = sub_20C358D20;
  v11 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 24, v7, v11);
}

uint64_t sub_20C358D20()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v8 = *v1;

  if (!v0)
  {
    v5 = v2[20];

    v6 = v2[18];
    v7 = v2[19];

    return MEMORY[0x2822009F8](sub_20C358E34, v6, v7);
  }

  return result;
}

uint64_t sub_20C358E34()
{
  if (*(v0 + 192) == 1)
  {
    v1 = *(v0 + 104);

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    v7 = (*(v0 + 112) + **(v0 + 112));
    v4 = *(*(v0 + 112) + 4);
    v5 = swift_task_alloc();
    *(v0 + 176) = v5;
    *v5 = v0;
    v5[1] = sub_20C358F70;
    v6 = *(v0 + 120);

    return v7();
  }
}

uint64_t sub_20C358F70()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *v1;
  *(*v1 + 184) = v0;

  v5 = *(v2 + 152);
  v6 = *(v2 + 144);
  if (v0)
  {
    v7 = sub_20C3591EC;
  }

  else
  {
    v7 = sub_20C3590AC;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_20C3590AC()
{
  v1 = v0[12];
  v2 = sub_20C36CEE4();
  v0[20] = v2;
  v3 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v4 = *(MEMORY[0x277D856D8] + 4);
  v5 = swift_task_alloc();
  v0[21] = v5;
  *v5 = v0;
  v5[1] = sub_20C358D20;
  v6 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 24, v2, v6);
}

uint64_t sub_20C359188()
{
  v1 = v0[13];

  v2 = v0[17];
  v3 = v0[1];

  return v3();
}

uint64_t sub_20C3591EC()
{
  v1 = v0[13];

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v2 = v0[23];
  v3 = v0[1];

  return v3();
}

uint64_t ForYouFeature.dispose(localState:sharedState:)(uint64_t a1, uint64_t a2)
{
  memcpy(__dst, v2, sizeof(__dst));
  sub_20C34A8FC(0, 0, 0, 2, a2);
  v35 = *(type metadata accessor for ForYouState() + 20);
  v36 = a2;
  v4 = *(a2 + v35);
  v5 = v4 + 64;
  v6 = 1 << *(v4 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v4 + 64);
  v9 = (v6 + 63) >> 6;
  v37 = v4;

  v10 = 0;
  v11 = MEMORY[0x277D84F98];
  if (v8)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_7:
    v15 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_22;
    }

    if (v15 >= v9)
    {

      *(v36 + v35) = v11;
      return result;
    }

    v8 = *(v5 + 8 * v15);
    ++v10;
  }

  while (!v8);
  while (1)
  {
    v16 = __clz(__rbit64(v8)) | (v15 << 6);
    v17 = (*(v37 + 48) + 16 * v16);
    v19 = *v17;
    v18 = v17[1];
    v20 = *(*(v37 + 56) + 8 * v16);
    swift_bridgeObjectRetain_n();
    sub_20C336328(v20);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    __dst[0] = v11;
    v22 = sub_20C35A4F4(v19, v18);
    v24 = v11[2];
    v25 = (v23 & 1) == 0;
    v26 = __OFADD__(v24, v25);
    v27 = v24 + v25;
    if (v26)
    {
      break;
    }

    v28 = v23;
    if (v11[3] >= v27)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v33 = v22;
        sub_20C35A8CC();
        v22 = v33;
      }
    }

    else
    {
      sub_20C35A624(v27, isUniquelyReferenced_nonNull_native);
      v22 = sub_20C35A4F4(v19, v18);
      if ((v28 & 1) != (v29 & 1))
      {
        goto LABEL_24;
      }
    }

    v8 &= v8 - 1;
    if (v28)
    {
      v12 = v22;

      v11 = __dst[0];
      v13 = *(__dst[0] + 56);
      v14 = *(v13 + 8 * v12);
      *(v13 + 8 * v12) = 0;
      sub_20C336338(v14);

      sub_20C336338(v20);
      v10 = v15;
      if (!v8)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v11 = __dst[0];
      *(__dst[0] + 8 * (v22 >> 6) + 64) |= 1 << v22;
      v30 = (v11[6] + 16 * v22);
      *v30 = v19;
      v30[1] = v18;
      *(v11[7] + 8 * v22) = 0;

      sub_20C336338(v20);
      v31 = v11[2];
      v26 = __OFADD__(v31, 1);
      v32 = v31 + 1;
      if (v26)
      {
        goto LABEL_23;
      }

      v11[2] = v32;
      v10 = v15;
      if (!v8)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    v15 = v10;
  }

LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_20C36D284();
  __break(1u);
  return result;
}

uint64_t sub_20C3594F4(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_20C3595EC;

  return v7(a1);
}

uint64_t sub_20C3595EC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_20C3596E4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20C3295B8;

  return sub_20C35238C(a1, v1 + 16);
}

uint64_t sub_20C35977C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20C3295B8;

  return sub_20C352CCC(a1, v1 + 16);
}

uint64_t sub_20C359814(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20C3295B8;

  return sub_20C35360C(a1, v1 + 16);
}

uint64_t sub_20C3598AC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20C3295B8;

  return sub_20C353E94(a1, v1 + 16);
}

uint64_t sub_20C359944(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20C3295B8;

  return sub_20C354834(a1, v1 + 16);
}

uint64_t sub_20C3599DC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20C3295B8;

  return sub_20C355174(a1, v1 + 16);
}

uint64_t sub_20C359A74(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20C3295B8;

  return sub_20C355AB4(a1, v1 + 16);
}

uint64_t sub_20C359B0C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20C3295B8;

  return sub_20C3563F0(a1, v1 + 16);
}

uint64_t sub_20C359BA4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20C3295B8;

  return sub_20C356D10(a1, v1 + 16);
}

uint64_t sub_20C359C3C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20C3295B8;

  return sub_20C357650(a1, v1 + 16);
}

uint64_t sub_20C359CD4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20C3295B8;

  return sub_20C357F90(a1, v1 + 16);
}

uint64_t sub_20C359D6C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20C3295B8;

  return sub_20C3588D0(a1, v1 + 16);
}

uint64_t sub_20C359E04(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_20C359ED0(v11, 0, 0, 1, a1, a2);
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
    sub_20C35AF90(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_20C359ED0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_20C359FDC(a5, a6);
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
    result = sub_20C36D074();
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

uint64_t sub_20C359FDC(uint64_t a1, unint64_t a2)
{
  v4 = sub_20C35A028(a1, a2);
  sub_20C35A158(&unk_282358130);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_20C35A028(uint64_t a1, unint64_t a2)
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

  v6 = sub_20C35A244(v5, 0);
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

  result = sub_20C36D074();
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
        v10 = sub_20C36CDE4();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_20C35A244(v10, 0);
        result = sub_20C36D034();
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

uint64_t sub_20C35A158(uint64_t result)
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

  result = sub_20C35A2B8(result, v12, 1, v3);
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

void *sub_20C35A244(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C79ED30, &qword_20C3764C0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_20C35A2B8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C79ED30, &qword_20C3764C0);
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

uint64_t sub_20C35A3AC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_20C329164;

  return sub_20C3512B0(a1, v4, v5, v1 + 32);
}

uint64_t sub_20C35A45C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20C3295B8;

  return sub_20C35106C(a1, v1 + 16);
}

unint64_t sub_20C35A4F4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_20C36D314();
  sub_20C36CDC4();
  v6 = sub_20C36D354();

  return sub_20C35A56C(a1, a2, v6);
}

unint64_t sub_20C35A56C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_20C36D264())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_20C35A624(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79ED28, &qword_20C3764A0);
  v38 = a2;
  result = sub_20C36D0C4();
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

        sub_20C336328(v25);
      }

      v27 = *(v8 + 40);
      sub_20C36D314();
      sub_20C36CDC4();
      result = sub_20C36D354();
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

void *sub_20C35A8CC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79ED28, &qword_20C3764A0);
  v2 = *v0;
  v3 = sub_20C36D0B4();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = sub_20C336328(v20);
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

uint64_t sub_20C35AA3C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_20C3295B8;

  return sub_20C350F74(a1, v5, v4);
}

unint64_t sub_20C35AAE8()
{
  result = qword_2810E90E0;
  if (!qword_2810E90E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E90E0);
  }

  return result;
}

unint64_t sub_20C35AB40()
{
  result = qword_2810E90E8;
  if (!qword_2810E90E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E90E8);
  }

  return result;
}

unint64_t sub_20C35AB98()
{
  result = qword_2810E9508;
  if (!qword_2810E9508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E9508);
  }

  return result;
}

unint64_t sub_20C35ABF0()
{
  result = qword_2810E9308[0];
  if (!qword_2810E9308[0])
  {
    type metadata accessor for ForYouState();
    result = swift_getWitnessTable();
    atomic_store(result, qword_2810E9308);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ForYouFeature.TaskIdentifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE8)
  {
    goto LABEL_17;
  }

  if (a2 + 24 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 24) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 24;
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

      return (*a1 | (v4 << 8)) - 24;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 24;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x19;
  v8 = v6 - 25;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ForYouFeature.TaskIdentifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 24 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 24) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE8)
  {
    v4 = 0;
  }

  if (a2 > 0xE7)
  {
    v5 = ((a2 - 232) >> 8) + 1;
    *result = a2 + 24;
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
    *result = a2 + 24;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_20C35ADAC()
{
  result = qword_2810E90D0;
  if (!qword_2810E90D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E90D0);
  }

  return result;
}

uint64_t sub_20C35AE00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79EBA8, &qword_20C3754C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C35AE70(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79EBA8, &qword_20C3754C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20C35AED8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_20C3295B8;

  return sub_20C3594F4(a1, v5);
}

uint64_t sub_20C35AF90(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t objectdestroyTm_1()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[13];

  v7 = v0[15];

  v8 = v0[17];

  v9 = v0[19];

  v10 = v0[21];

  v11 = v0[23];

  v12 = v0[25];

  v13 = v0[27];

  v14 = v0[29];

  v15 = v0[31];

  v16 = v0[33];

  v17 = v0[35];

  v18 = v0[37];

  v19 = v0[39];

  v20 = v0[41];

  v21 = v0[43];

  v22 = v0[45];

  return swift_deallocObject();
}

uint64_t sub_20C35B0D8(uint64_t a1)
{
  v4 = *(v1 + 369);
  v5 = *(v1 + 368);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_20C329164;

  return sub_20C34AF9C(a1, v1 + 16, v5, v4);
}

uint64_t sub_20C35B194(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x800000020C377BA0 == a2 || (sub_20C36D264() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x79536C65636E6163 && a2 == 0xEF72656D6954636ELL || (sub_20C36D264() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F5464656C696166 && a2 == 0xEC00000064616F4CLL || (sub_20C36D264() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000017 && 0x800000020C377BE0 == a2 || (sub_20C36D264() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x800000020C377C00 == a2 || (sub_20C36D264() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x657070416D657469 && a2 == 0xEC00000064657261 || (sub_20C36D264() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x646564616F6CLL && a2 == 0xE600000000000000 || (sub_20C36D264() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000018 && 0x800000020C3781C0 == a2 || (sub_20C36D264() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000012 && 0x800000020C3781E0 == a2 || (sub_20C36D264() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000018 && 0x800000020C377C60 == a2 || (sub_20C36D264() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x707061546D657469 && a2 == 0xEA00000000006465 || (sub_20C36D264() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6E79537472617473 && a2 == 0xEE0072656D695463 || (sub_20C36D264() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x4164694477656976 && a2 == 0xED00007261657070)
  {

    return 12;
  }

  else
  {
    v5 = sub_20C36D264();

    if (v5)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}

unint64_t sub_20C35B5E8(char a1)
{
  result = 0x79536C65636E6163;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x6F5464656C696166;
      break;
    case 3:
      result = 0xD000000000000017;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0x657070416D657469;
      break;
    case 6:
      result = 0x646564616F6CLL;
      break;
    case 7:
    case 9:
      result = 0xD000000000000018;
      break;
    case 8:
      result = 0xD000000000000012;
      break;
    case 10:
      result = 0x707061546D657469;
      break;
    case 11:
      result = 0x6E79537472617473;
      break;
    case 12:
      result = 0x4164694477656976;
      break;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

uint64_t sub_20C35B788(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x72656767697274 && a2 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_20C36D264();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_20C35B800(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000014 && 0x800000020C377D00 == a2)
  {

    v2 = 0;
  }

  else
  {
    v3 = sub_20C36D264();

    v2 = v3 ^ 1;
  }

  return v2 & 1;
}

uint64_t sub_20C35B884(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7865646E69 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_20C36D264();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_20C35B8F8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_20C36D264();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_20C35B978(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x800000020C377CE0 == a2)
  {

    v2 = 0;
  }

  else
  {
    v3 = sub_20C36D264();

    v2 = v3 ^ 1;
  }

  return v2 & 1;
}

uint64_t sub_20C35B9FC(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_20C36D264();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_20C35BA84(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_20C35BAD8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_20C35BB2C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_20C35BB80(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

unint64_t sub_20C35BBD4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_20C35B5E8(*v1);
}

uint64_t sub_20C35BBE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_20C35B194(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_20C35BC10@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  result = sub_20C3169FC();
  *a2 = result;
  return result;
}

uint64_t sub_20C35BC3C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_20C35BC90(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_20C35BCE4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_20C35BD38(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_20C35BD8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_20C35B788(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_20C35BDC0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_20C35BE14(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_20C35BE68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_20C35B800(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_20C35BE9C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_20C35BEF0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_20C35BF58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_20C35B884(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_20C35BF8C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_20C35BFE0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_20C35C050@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_20C35B8F8(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_20C35C084(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_20C35C0D8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_20C35C12C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_20C35B978(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_20C35C160(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_20C35C1B4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_20C35C208(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_20C35C25C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_20C35C2B0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_20C35C304(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_20C35C358(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_20C35C3AC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_20C35C400(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_20C35C454(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_20C35C4A8@<X0>(uint64_t a1@<X2>, uint64_t (*a2)(void, void)@<X4>, _BYTE *a3@<X8>)
{
  v4 = a2(*(a1 + 16), *(a1 + 24));

  *a3 = v4 & 1;
  return result;
}

uint64_t sub_20C35C4F4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_20C35C548(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t ForYouSummaryAction.encode(to:)(void *a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  v172 = type metadata accessor for ForYouSummaryAction.ViewDidAppearCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v170 = sub_20C36D244();
  v169 = *(v170 - 8);
  v6 = *(v169 + 64);
  MEMORY[0x28223BE20](v170);
  v167 = &v108 - v7;
  started = type metadata accessor for ForYouSummaryAction.StartSyncTimerCodingKeys();
  v9 = swift_getWitnessTable();
  v166 = started;
  v165 = v9;
  v164 = sub_20C36D244();
  v162 = *(v164 - 8);
  v10 = *(v162 + 64);
  MEMORY[0x28223BE20](v164);
  v160 = &v108 - v11;
  v12 = type metadata accessor for ForYouSummaryAction.ItemTappedCodingKeys();
  v13 = swift_getWitnessTable();
  v158 = v12;
  v155 = v13;
  v163 = sub_20C36D244();
  v115 = *(v163 - 8);
  v14 = *(v115 + 64);
  MEMORY[0x28223BE20](v163);
  v159 = &v108 - v15;
  v174 = type metadata accessor for ForYouItemContext();
  v16 = *(*(v174 - 8) + 64);
  MEMORY[0x28223BE20](v174);
  v157 = &v108 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ForYouSummaryAction.NetworkConditionsUpdatedCodingKeys();
  v19 = swift_getWitnessTable();
  v153 = v18;
  v151 = v19;
  v154 = sub_20C36D244();
  v113 = *(v154 - 8);
  v20 = *(v113 + 64);
  MEMORY[0x28223BE20](v154);
  v152 = &v108 - v21;
  v22 = type metadata accessor for ForYouSummaryAction.NavigateToSettingsCodingKeys();
  v23 = swift_getWitnessTable();
  v150 = v22;
  v149 = v23;
  v148 = sub_20C36D244();
  v147 = *(v148 - 8);
  v24 = *(v147 + 64);
  MEMORY[0x28223BE20](v148);
  v146 = &v108 - v25;
  v26 = type metadata accessor for ForYouSummaryAction.NavigateToFitnessPlusTabCodingKeys();
  v27 = swift_getWitnessTable();
  v145[2] = v26;
  v145[1] = v27;
  v145[0] = sub_20C36D244();
  v144 = *(v145[0] - 8);
  v28 = *(v144 + 64);
  MEMORY[0x28223BE20](v145[0]);
  v143 = &v108 - v29;
  v30 = type metadata accessor for ForYouSummaryAction.LoadedCodingKeys();
  v31 = swift_getWitnessTable();
  v142 = v30;
  v141 = v31;
  v161 = sub_20C36D244();
  v114 = *(v161 - 8);
  v32 = *(v114 + 64);
  MEMORY[0x28223BE20](v161);
  v156 = &v108 - v33;
  v34 = type metadata accessor for ForYouSummaryAction.ItemAppearedCodingKeys();
  v35 = swift_getWitnessTable();
  v139 = v34;
  v138 = v35;
  v140 = sub_20C36D244();
  v112 = *(v140 - 8);
  v36 = *(v112 + 64);
  MEMORY[0x28223BE20](v140);
  v137 = &v108 - v37;
  ErrorCodingKeys = type metadata accessor for ForYouSummaryAction.HandleFetchErrorCodingKeys();
  v39 = swift_getWitnessTable();
  v135 = ErrorCodingKeys;
  v133 = v39;
  v136 = sub_20C36D244();
  v111 = *(v136 - 8);
  v40 = *(v111 + 64);
  MEMORY[0x28223BE20](v136);
  v134 = &v108 - v41;
  SectionDescriptorsCodingKeys = type metadata accessor for ForYouSummaryAction.FetchSectionDescriptorsCodingKeys();
  v43 = swift_getWitnessTable();
  v131 = SectionDescriptorsCodingKeys;
  v129 = v43;
  v132 = sub_20C36D244();
  v110 = *(v132 - 8);
  v44 = *(v110 + 64);
  MEMORY[0x28223BE20](v132);
  v130 = &v108 - v45;
  CodingKeys = type metadata accessor for ForYouSummaryAction.FailedToLoadCodingKeys();
  v47 = swift_getWitnessTable();
  v127 = CodingKeys;
  v125 = v47;
  v128 = sub_20C36D244();
  v109 = *(v128 - 8);
  v48 = *(v109 + 64);
  MEMORY[0x28223BE20](v128);
  v126 = &v108 - v49;
  v50 = type metadata accessor for ForYouSummaryAction.CancelSyncTimerCodingKeys();
  v51 = swift_getWitnessTable();
  v124 = v50;
  v123 = v51;
  v122 = sub_20C36D244();
  v121 = *(v122 - 8);
  v52 = *(v121 + 64);
  MEMORY[0x28223BE20](v122);
  v120 = &v108 - v53;
  type metadata accessor for ForYouSummaryAction.AppDidBecomeActiveCodingKeys();
  v119 = swift_getWitnessTable();
  v118 = sub_20C36D244();
  v117 = *(v118 - 8);
  v54 = *(v117 + 64);
  v55 = MEMORY[0x28223BE20](v118);
  v116 = &v108 - v56;
  v57 = *(a2 - 8);
  v58 = *(v57 + 64);
  MEMORY[0x28223BE20](v55);
  v60 = &v108 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = v5;
  v173 = v4;
  type metadata accessor for ForYouSummaryAction.CodingKeys();
  swift_getWitnessTable();
  v178 = sub_20C36D244();
  v175 = *(v178 - 8);
  v61 = *(v175 + 64);
  MEMORY[0x28223BE20](v178);
  v63 = &v108 - v62;
  v64 = a1;
  v66 = a1[3];
  v65 = a1[4];
  __swift_project_boxed_opaque_existential_1(v64, v66);
  v177 = v63;
  sub_20C36D374();
  (*(v57 + 16))(v60, v176, a2);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v101 = *v60;
      LOBYTE(v180) = 3;
      v68 = v130;
      v70 = v177;
      v69 = v178;
      sub_20C36D1B4();
      LOBYTE(v180) = v101;
      sub_20C30A6A8();
      v71 = v132;
      sub_20C36D234();
      v72 = &v142;
      goto LABEL_12;
    case 2u:
      v92 = *v60;
      v91 = *(v60 + 1);
      LOBYTE(v180) = 4;
      v93 = v134;
      v95 = v177;
      v94 = v178;
      sub_20C36D1B4();
      v96 = v136;
      sub_20C36D1F4();

      (*(v111 + 8))(v93, v96);
      return (*(v175 + 8))(v95, v94);
    case 3u:
      v97 = *v60;
      LOBYTE(v180) = 5;
      v68 = v137;
      v70 = v177;
      v69 = v178;
      sub_20C36D1B4();
      v71 = v140;
      sub_20C36D224();
      v72 = &v144;
      goto LABEL_12;
    case 4u:
      v76 = *v60;
      LOBYTE(v180) = 6;
      v77 = v156;
      sub_20C36D1B4();
      v176 = v76;
      v198 = v76;
      v78 = sub_20C36C394();
      v172 = sub_20C36C344();
      WitnessTable = sub_20C36C354();
      v170 = sub_20C36C364();
      v169 = sub_20C36C3A4();
      v167 = sub_20C36C374();
      v166 = sub_20C35DE28(&qword_27C79D900, MEMORY[0x277D09808]);
      v79 = sub_20C35DE28(&qword_27C79D908, MEMORY[0x277D09738]);
      v80 = sub_20C35DE28(&qword_27C79D910, type metadata accessor for ForYouItemContext);
      v81 = sub_20C35DE28(&qword_27C79D918, type metadata accessor for ForYouItemContext);
      v82 = sub_20C35DE28(&qword_27C79D920, type metadata accessor for ForYouItemContext);
      v83 = sub_20C35DE28(&qword_27C79D928, MEMORY[0x277D09748]);
      v84 = sub_20C35DE28(&qword_27C79E398, MEMORY[0x277D09798]);
      v85 = sub_20C35DE28(&qword_27C79E3A0, MEMORY[0x277D09818]);
      v86 = sub_20C35DE28(&qword_27C79D930, MEMORY[0x277D097A8]);
      v180 = v78;
      v181 = v168;
      v182 = v172;
      v183 = v174;
      v184 = WitnessTable;
      v185 = v170;
      v186 = v169;
      v187 = v167;
      v188 = v166;
      v189 = v173;
      v190 = v79;
      v191 = v80;
      v192 = v81;
      v193 = v82;
      v194 = v83;
      v195 = v84;
      v196 = v85;
      v197 = v86;
      sub_20C36C2D4();
      sub_20C36CE94();
      v179 = swift_getWitnessTable();
      swift_getWitnessTable();
      v87 = v161;
      sub_20C36D234();
      (*(v114 + 8))(v77, v87);
      (*(v175 + 8))(v177, v178);

    case 5u:
      v102 = *v60;
      LOBYTE(v180) = 9;
      v68 = v152;
      v70 = v177;
      v69 = v178;
      sub_20C36D1B4();
      LOBYTE(v180) = v102;
      sub_20C30A438();
      v71 = v154;
      sub_20C36D234();
      v72 = v145;
      goto LABEL_12;
    case 6u:
      v103 = v157;
      sub_20C35DD68(v60, v157);
      LOBYTE(v180) = 10;
      v104 = v159;
      v70 = v177;
      v69 = v178;
      sub_20C36D1B4();
      sub_20C35DE28(&qword_27C79D918, type metadata accessor for ForYouItemContext);
      v105 = v163;
      sub_20C36D234();
      (*(v115 + 8))(v104, v105);
      sub_20C35DDCC(v103);
      goto LABEL_13;
    case 7u:
      LOBYTE(v180) = 0;
      v98 = v116;
      v99 = v177;
      v100 = v178;
      sub_20C36D1B4();
      (*(v117 + 8))(v98, v118);
      return (*(v175 + 8))(v99, v100);
    case 8u:
      LOBYTE(v180) = 1;
      v107 = v120;
      v75 = v177;
      v74 = v178;
      sub_20C36D1B4();
      (*(v121 + 8))(v107, v122);
      goto LABEL_17;
    case 9u:
      LOBYTE(v180) = 7;
      v90 = v143;
      v75 = v177;
      v74 = v178;
      sub_20C36D1B4();
      (*(v144 + 8))(v90, v145[0]);
      goto LABEL_17;
    case 0xAu:
      LOBYTE(v180) = 8;
      v106 = v146;
      v75 = v177;
      v74 = v178;
      sub_20C36D1B4();
      (*(v147 + 8))(v106, v148);
      goto LABEL_17;
    case 0xBu:
      LOBYTE(v180) = 11;
      v73 = v160;
      v75 = v177;
      v74 = v178;
      sub_20C36D1B4();
      (*(v162 + 8))(v73, v164);
      goto LABEL_17;
    case 0xCu:
      LOBYTE(v180) = 12;
      v89 = v167;
      v75 = v177;
      v74 = v178;
      sub_20C36D1B4();
      (*(v169 + 8))(v89, v170);
LABEL_17:
      result = (*(v175 + 8))(v75, v74);
      break;
    default:
      v67 = *v60;
      LOBYTE(v180) = 2;
      v68 = v126;
      v70 = v177;
      v69 = v178;
      sub_20C36D1B4();
      LOBYTE(v180) = v67;
      sub_20C301074();
      v71 = v128;
      sub_20C36D234();
      v72 = &v141;
LABEL_12:
      (*(*(v72 - 32) + 8))(v68, v71);
LABEL_13:
      result = (*(v175 + 8))(v70, v69);
      break;
  }

  return result;
}

uint64_t sub_20C35DD68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ForYouItemContext();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C35DDCC(uint64_t a1)
{
  v2 = type metadata accessor for ForYouItemContext();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20C35DE28(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t ForYouSummaryAction.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v214 = a4;
  v236 = type metadata accessor for ForYouSummaryAction.ViewDidAppearCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v235 = sub_20C36D1A4();
  v234 = *(v235 - 8);
  v7 = *(v234 + 64);
  MEMORY[0x28223BE20](v235);
  v211 = &v162 - v8;
  started = type metadata accessor for ForYouSummaryAction.StartSyncTimerCodingKeys();
  v10 = swift_getWitnessTable();
  v231 = started;
  v230 = v10;
  v189 = sub_20C36D1A4();
  v188 = *(v189 - 8);
  v11 = *(v188 + 64);
  MEMORY[0x28223BE20](v189);
  v209 = &v162 - v12;
  v13 = type metadata accessor for ForYouSummaryAction.ItemTappedCodingKeys();
  v14 = swift_getWitnessTable();
  v229 = v13;
  v228 = v14;
  v190 = sub_20C36D1A4();
  v173 = *(v190 - 8);
  v15 = *(v173 + 64);
  MEMORY[0x28223BE20](v190);
  v210 = &v162 - v16;
  v17 = type metadata accessor for ForYouSummaryAction.NetworkConditionsUpdatedCodingKeys();
  v18 = swift_getWitnessTable();
  v227 = v17;
  v226 = v18;
  v187 = sub_20C36D1A4();
  v172 = *(v187 - 8);
  v19 = *(v172 + 64);
  MEMORY[0x28223BE20](v187);
  v208 = &v162 - v20;
  v21 = type metadata accessor for ForYouSummaryAction.NavigateToSettingsCodingKeys();
  v22 = swift_getWitnessTable();
  v225 = v21;
  v224 = v22;
  v186 = sub_20C36D1A4();
  v185 = *(v186 - 8);
  v23 = *(v185 + 64);
  MEMORY[0x28223BE20](v186);
  v207 = &v162 - v24;
  v25 = type metadata accessor for ForYouSummaryAction.NavigateToFitnessPlusTabCodingKeys();
  v26 = swift_getWitnessTable();
  v223 = v25;
  v222 = v26;
  v184 = sub_20C36D1A4();
  v183 = *(v184 - 8);
  v27 = *(v183 + 64);
  MEMORY[0x28223BE20](v184);
  v206 = &v162 - v28;
  v29 = type metadata accessor for ForYouSummaryAction.LoadedCodingKeys();
  v30 = swift_getWitnessTable();
  v221 = v29;
  v220 = v30;
  v191 = sub_20C36D1A4();
  v232 = *(v191 - 8);
  v31 = *(v232 + 64);
  MEMORY[0x28223BE20](v191);
  v212 = &v162 - v32;
  v33 = type metadata accessor for ForYouSummaryAction.ItemAppearedCodingKeys();
  v34 = swift_getWitnessTable();
  v219 = v33;
  v218 = v34;
  v182 = sub_20C36D1A4();
  v171 = *(v182 - 8);
  v35 = *(v171 + 64);
  MEMORY[0x28223BE20](v182);
  v205 = &v162 - v36;
  ErrorCodingKeys = type metadata accessor for ForYouSummaryAction.HandleFetchErrorCodingKeys();
  v38 = swift_getWitnessTable();
  v217 = ErrorCodingKeys;
  v203 = v38;
  v181 = sub_20C36D1A4();
  v170 = *(v181 - 8);
  v39 = *(v170 + 64);
  MEMORY[0x28223BE20](v181);
  v204 = &v162 - v40;
  SectionDescriptorsCodingKeys = type metadata accessor for ForYouSummaryAction.FetchSectionDescriptorsCodingKeys();
  v42 = swift_getWitnessTable();
  v215 = SectionDescriptorsCodingKeys;
  v201 = v42;
  v180 = sub_20C36D1A4();
  v169 = *(v180 - 8);
  v43 = *(v169 + 64);
  MEMORY[0x28223BE20](v180);
  v202 = &v162 - v44;
  CodingKeys = type metadata accessor for ForYouSummaryAction.FailedToLoadCodingKeys();
  v46 = swift_getWitnessTable();
  v199 = CodingKeys;
  v198 = v46;
  v179 = sub_20C36D1A4();
  v168 = *(v179 - 8);
  v47 = *(v168 + 64);
  MEMORY[0x28223BE20](v179);
  v200 = &v162 - v48;
  v49 = type metadata accessor for ForYouSummaryAction.CancelSyncTimerCodingKeys();
  v50 = swift_getWitnessTable();
  v197 = v49;
  v196 = v50;
  v178 = sub_20C36D1A4();
  v177 = *(v178 - 8);
  v51 = *(v177 + 64);
  MEMORY[0x28223BE20](v178);
  v195 = &v162 - v52;
  active = type metadata accessor for ForYouSummaryAction.AppDidBecomeActiveCodingKeys();
  v54 = swift_getWitnessTable();
  v194 = active;
  v193 = v54;
  v176 = sub_20C36D1A4();
  v175 = *(v176 - 8);
  v55 = *(v175 + 64);
  MEMORY[0x28223BE20](v176);
  v192 = &v162 - v56;
  type metadata accessor for ForYouSummaryAction.CodingKeys();
  v243 = swift_getWitnessTable();
  v240 = sub_20C36D1A4();
  v239 = *(v240 - 8);
  v57 = *(v239 + 64);
  MEMORY[0x28223BE20](v240);
  v59 = &v162 - v58;
  v216 = a2;
  v238 = a3;
  v237 = type metadata accessor for ForYouSummaryAction();
  v213 = *(v237 - 8);
  v60 = *(v213 + 64);
  v61 = MEMORY[0x28223BE20](v237);
  v174 = &v162 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = MEMORY[0x28223BE20](v61);
  v166 = &v162 - v64;
  v65 = MEMORY[0x28223BE20](v63);
  v167 = (&v162 - v66);
  v67 = MEMORY[0x28223BE20](v65);
  v69 = &v162 - v68;
  v70 = MEMORY[0x28223BE20](v67);
  v72 = &v162 - v71;
  v73 = MEMORY[0x28223BE20](v70);
  v75 = &v162 - v74;
  v76 = MEMORY[0x28223BE20](v73);
  v78 = &v162 - v77;
  MEMORY[0x28223BE20](v76);
  v80 = &v162 - v79;
  v81 = a1;
  v82 = a1[3];
  v83 = v81[4];
  v242 = v81;
  __swift_project_boxed_opaque_existential_1(v81, v82);
  v241 = v59;
  v84 = v264;
  sub_20C36D364();
  if (v84)
  {
LABEL_20:
    v137 = v242;
    return __swift_destroy_boxed_opaque_existential_1(v137);
  }

  v163 = v78;
  v164 = v75;
  v165 = v72;
  v243 = v69;
  v85 = v238;
  v264 = v80;
  v86 = v240;
  *&v245 = sub_20C36D194();
  sub_20C36CE94();
  swift_getWitnessTable();
  *&v262 = sub_20C36D014();
  *(&v262 + 1) = v87;
  *&v263 = v88;
  *(&v263 + 1) = v89;
  sub_20C36D004();
  swift_getWitnessTable();
  sub_20C36CF84();
  if (v245 == 13 || (v162 = v262, v245 = v262, v246 = v263, (sub_20C36CFA4() & 1) == 0))
  {
    v99 = sub_20C36D064();
    swift_allocError();
    v101 = v100;
    v102 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79D8F0, &qword_20C36E2A0) + 48);
    *v101 = v237;
    v103 = v241;
    sub_20C36D104();
    sub_20C36D054();
    (*(*(v99 - 8) + 104))(v101, *MEMORY[0x277D84160], v99);
    swift_willThrow();
    (*(v239 + 8))(v103, v86);
LABEL_19:
    swift_unknownObjectRelease();
    goto LABEL_20;
  }

  v90 = v235;
  v91 = v234;
  v92 = v232;
  v93 = v216;
  switch(v220)
  {
    case 1:
      LOBYTE(v245) = 1;
      v125 = v195;
      v126 = v241;
      sub_20C36D0F4();
      (*(v177 + 8))(v125, v178);
      (*(v239 + 8))(v126, v86);
      swift_unknownObjectRelease();
      v97 = v264;
      v98 = v237;
      swift_storeEnumTagMultiPayload();
      v127 = v242;
      v96 = v214;
      goto LABEL_25;
    case 2:
      LOBYTE(v245) = 2;
      v115 = v200;
      v116 = v241;
      sub_20C36D0F4();
      sub_20C301D50();
      v117 = v179;
      sub_20C36D184();
      v118 = v239;
      (*(v168 + 8))(v115, v117);
      (*(v118 + 8))(v116, v86);
      swift_unknownObjectRelease();
      v114 = v163;
      *v163 = v245;
      v98 = v237;
      goto LABEL_27;
    case 3:
      LOBYTE(v245) = 3;
      v119 = v202;
      v120 = v241;
      sub_20C36D0F4();
      sub_20C30DA84();
      v121 = v180;
      sub_20C36D184();
      v122 = v239;
      (*(v169 + 8))(v119, v121);
      (*(v122 + 8))(v120, v86);
      swift_unknownObjectRelease();
      v114 = v164;
      *v164 = v245;
      v98 = v237;
      goto LABEL_27;
    case 4:
      LOBYTE(v245) = 4;
      v106 = v204;
      v107 = v241;
      sub_20C36D0F4();
      v139 = v181;
      v140 = sub_20C36D144();
      v141 = v239;
      v155 = v140;
      v157 = v156;
      (*(v170 + 8))(v106, v139);
      (*(v141 + 8))(v107, v86);
      swift_unknownObjectRelease();
      v158 = v165;
      *v165 = v155;
      v158[1] = v157;
      v98 = v237;
      goto LABEL_28;
    case 5:
      LOBYTE(v245) = 5;
      v128 = v205;
      v129 = v241;
      sub_20C36D0F4();
      v130 = v182;
      v131 = sub_20C36D174();
      v132 = v239;
      v159 = v131;
      (*(v171 + 8))(v128, v130);
      (*(v132 + 8))(v129, v86);
      swift_unknownObjectRelease();
      v160 = v243;
      *v243 = v159;
      v98 = v237;
      swift_storeEnumTagMultiPayload();
      v161 = v213;
      v97 = v264;
      (*(v213 + 32))(v264, v160, v98);
      goto LABEL_29;
    case 6:
      LOBYTE(v245) = 6;
      sub_20C36D0F4();
      v243 = sub_20C36C394();
      v236 = sub_20C36C344();
      v235 = type metadata accessor for ForYouItemContext();
      v234 = sub_20C36C354();
      WitnessTable = sub_20C36C364();
      v230 = sub_20C36C3A4();
      v229 = sub_20C36C374();
      v228 = sub_20C35DE28(&qword_27C79D900, MEMORY[0x277D09808]);
      v227 = sub_20C35DE28(&qword_27C79D908, MEMORY[0x277D09738]);
      v142 = sub_20C35DE28(&qword_27C79D910, type metadata accessor for ForYouItemContext);
      v143 = sub_20C35DE28(&qword_27C79D918, type metadata accessor for ForYouItemContext);
      v231 = 0;
      v144 = v143;
      v145 = sub_20C35DE28(&qword_27C79D920, type metadata accessor for ForYouItemContext);
      v146 = sub_20C35DE28(&qword_27C79D928, MEMORY[0x277D09748]);
      v147 = sub_20C35DE28(&qword_27C79E398, MEMORY[0x277D09798]);
      v148 = sub_20C35DE28(&qword_27C79E3A0, MEMORY[0x277D09818]);
      v149 = sub_20C35DE28(&qword_27C79D930, MEMORY[0x277D097A8]);
      *&v245 = v243;
      *(&v245 + 1) = v93;
      *&v246 = v236;
      *(&v246 + 1) = v235;
      v247 = v234;
      v248 = WitnessTable;
      v249 = v230;
      v250 = v229;
      v251 = v228;
      v252 = v85;
      v253 = v227;
      v254 = v142;
      v255 = v144;
      v256 = v145;
      v257 = v146;
      v258 = v147;
      v150 = v212;
      v259 = v148;
      v260 = v149;
      sub_20C36C2D4();
      sub_20C36CE94();
      v244 = swift_getWitnessTable();
      swift_getWitnessTable();
      v151 = v191;
      v152 = v231;
      sub_20C36D184();
      if (v152)
      {
        (*(v92 + 8))(v150, v151);
        (*(v239 + 8))(v241, v240);
        goto LABEL_19;
      }

      (*(v92 + 8))(v150, v151);
      (*(v239 + 8))(v241, v240);
      swift_unknownObjectRelease();
      v114 = v167;
      *v167 = v261;
      v98 = v237;
LABEL_27:
      swift_storeEnumTagMultiPayload();
      v161 = v213;
      v97 = v264;
      (*(v213 + 32))(v264, v114, v98);
LABEL_29:
      v127 = v242;
      v96 = v214;
LABEL_30:
      (*(v161 + 32))(v96, v97, v98);
      v137 = v127;
      break;
    case 7:
      LOBYTE(v245) = 7;
      v123 = v206;
      v124 = v241;
      sub_20C36D0F4();
      v96 = v214;
      (*(v183 + 8))(v123, v184);
      (*(v239 + 8))(v124, v86);
      swift_unknownObjectRelease();
      v97 = v264;
      v98 = v237;
      goto LABEL_24;
    case 8:
      LOBYTE(v245) = 8;
      v135 = v207;
      v136 = v241;
      sub_20C36D0F4();
      v96 = v214;
      (*(v185 + 8))(v135, v186);
      (*(v239 + 8))(v136, v86);
      swift_unknownObjectRelease();
      v97 = v264;
      v98 = v237;
      goto LABEL_24;
    case 9:
      LOBYTE(v245) = 9;
      v110 = v208;
      v111 = v241;
      sub_20C36D0F4();
      sub_20C30D9B8();
      v112 = v187;
      sub_20C36D184();
      v113 = v239;
      (*(v172 + 8))(v110, v112);
      (*(v113 + 8))(v111, v86);
      swift_unknownObjectRelease();
      v114 = v166;
      *v166 = v245;
      v98 = v237;
      goto LABEL_27;
    case 10:
      LOBYTE(v245) = 10;
      v133 = v210;
      v134 = v241;
      sub_20C36D0F4();
      type metadata accessor for ForYouItemContext();
      sub_20C35DE28(&qword_27C79D910, type metadata accessor for ForYouItemContext);
      v158 = v174;
      v153 = v190;
      sub_20C36D184();
      v154 = v239;
      (*(v173 + 8))(v133, v153);
      (*(v154 + 8))(v134, v86);
      swift_unknownObjectRelease();
      v98 = v237;
LABEL_28:
      swift_storeEnumTagMultiPayload();
      v161 = v213;
      v97 = v264;
      (*(v213 + 32))(v264, v158, v98);
      goto LABEL_29;
    case 11:
      LOBYTE(v245) = 11;
      v104 = v209;
      v105 = v241;
      sub_20C36D0F4();
      v96 = v214;
      (*(v188 + 8))(v104, v189);
      (*(v239 + 8))(v105, v86);
      swift_unknownObjectRelease();
      v97 = v264;
      v98 = v237;
      goto LABEL_24;
    case 12:
      LOBYTE(v245) = 12;
      v108 = v211;
      v109 = v241;
      sub_20C36D0F4();
      v96 = v214;
      (*(v91 + 8))(v108, v90);
      (*(v239 + 8))(v109, v86);
      swift_unknownObjectRelease();
      v97 = v264;
      v98 = v237;
      goto LABEL_24;
    default:
      LOBYTE(v245) = 0;
      v94 = v192;
      v95 = v241;
      sub_20C36D0F4();
      v96 = v214;
      (*(v175 + 8))(v94, v176);
      (*(v239 + 8))(v95, v86);
      swift_unknownObjectRelease();
      v97 = v264;
      v98 = v237;
LABEL_24:
      swift_storeEnumTagMultiPayload();
      v127 = v242;
LABEL_25:
      v161 = v213;
      goto LABEL_30;
  }

  return __swift_destroy_boxed_opaque_existential_1(v137);
}

void sub_20C35FF7C(uint64_t a1)
{
  sub_20C3602D8();
  if (v2 <= 0x3F)
  {
    sub_20C360308();
    if (v3 <= 0x3F)
    {
      sub_20C360338();
      if (v4 <= 0x3F)
      {
        sub_20C36C394();
        v7 = *(a1 + 16);
        sub_20C36C344();
        type metadata accessor for ForYouItemContext();
        sub_20C36C354();
        sub_20C36C364();
        sub_20C36C3A4();
        sub_20C36C374();
        sub_20C35DE28(&qword_27C79D900, MEMORY[0x277D09808]);
        v8 = *(a1 + 24);
        sub_20C35DE28(&qword_27C79D908, MEMORY[0x277D09738]);
        sub_20C35DE28(&qword_27C79D910, type metadata accessor for ForYouItemContext);
        sub_20C35DE28(&qword_27C79D918, type metadata accessor for ForYouItemContext);
        sub_20C35DE28(&qword_27C79D920, type metadata accessor for ForYouItemContext);
        sub_20C35DE28(&qword_27C79D928, MEMORY[0x277D09748]);
        sub_20C35DE28(&qword_27C79E398, MEMORY[0x277D09798]);
        sub_20C35DE28(&qword_27C79E3A0, MEMORY[0x277D09818]);
        sub_20C35DE28(&qword_27C79D930, MEMORY[0x277D097A8]);
        sub_20C36C2D4();
        sub_20C36CE94();
        if (v5 <= 0x3F)
        {
          sub_20C360368();
          if (v6 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

ValueMetadata *sub_20C3602D8()
{
  result = qword_27C79EDB8;
  if (!qword_27C79EDB8)
  {
    result = &type metadata for PersonalizationInferenceRequestTrigger;
    atomic_store(&type metadata for PersonalizationInferenceRequestTrigger, &qword_27C79EDB8);
  }

  return result;
}

uint64_t sub_20C360308()
{
  result = qword_27C79EDC0;
  if (!qword_27C79EDC0)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_27C79EDC0);
  }

  return result;
}

uint64_t sub_20C360338()
{
  result = qword_27C79EDC8;
  if (!qword_27C79EDC8)
  {
    result = MEMORY[0x277D83B88];
    atomic_store(MEMORY[0x277D83B88], &qword_27C79EDC8);
  }

  return result;
}

void sub_20C360368()
{
  if (!qword_27C79EDD0[0])
  {
    v0 = type metadata accessor for ForYouItemContext();
    if (!v1)
    {
      atomic_store(v0, qword_27C79EDD0);
    }
  }
}

uint64_t sub_20C3607A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_20C36C714();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  (*(*(a2 - 8) + 16))(&v8 - v6, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_20C36C724();
}

uint64_t sub_20C36089C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_20C36C714();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  (*(*(a3 - 8) + 16))(&v9 - v7, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_20C36C724();
}

uint64_t sub_20C360994(uint64_t a1)
{
  v2 = (v1 + *(a1 + 68));
  v3 = *v2;
  v4 = v2[1];
  v5 = *(v2 + 16);
  v7 = *(a1 + 16);
  v8 = *(a1 + 32);
  v9 = *(a1 + 56);
  type metadata accessor for ForYouSummaryFeature();
  swift_getWitnessTable();
  sub_20C36CD04();
  swift_getWitnessTable();
  return sub_20C36C494();
}

uint64_t sub_20C360A5C(uint64_t a1)
{
  v1 = *(a1 + 72);
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  swift_getFunctionTypeMetadata1();
  sub_20C36C194();
  sub_20C36C184();
  return v5;
}

uint64_t sub_20C360AB0(uint64_t a1)
{
  v4 = *(v1 + *(a1 + 76));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79F6B0, &qword_20C377648);
  sub_20C36CB64();
  return v3;
}

uint64_t sub_20C360B04(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + *(a2 + 76));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79F6B0, &qword_20C377648);
  return sub_20C36CB74();
}

uint64_t sub_20C360B5C(uint64_t a1)
{
  v4 = *(v1 + *(a1 + 76));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79F6B0, &qword_20C377648);
  sub_20C36CB84();
  return v3;
}

uint64_t sub_20C360BB4(uint64_t a1)
{
  v2 = (v1 + *(a1 + 80));
  v5 = *v2;
  v6 = *(v2 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79EBA0, &qword_20C377650);
  sub_20C36CB64();
  return v4;
}

uint64_t sub_20C360C14(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + *(a2 + 80));
  v5 = *v3;
  v6 = *(v3 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79EBA0, &qword_20C377650);
  return sub_20C36CB74();
}

uint64_t ForYouSummaryView.init(store:artworkViewBuilder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t *a7@<X8>, uint64_t a8, uint64_t a9)
{
  *a7 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79F4D8, &qword_20C377460);
  swift_storeEnumTagMultiPayload();
  *&v26 = a3;
  *(&v26 + 1) = a4;
  v15 = type metadata accessor for ForYouSummaryView();
  v16 = v15[19];
  sub_20C36CB54();
  *(a7 + v16) = v26;
  v17 = a7 + v15[20];
  sub_20C36CB54();
  *v17 = a3;
  *(v17 + 1) = a4;
  v18 = swift_allocObject();
  v18[2] = a3;
  v18[3] = a4;
  v18[4] = a5;
  v18[5] = a6;
  v18[6] = a8;
  v18[7] = a9;
  v18[8] = a1;
  v18[9] = a2;

  type metadata accessor for ForYouSummaryFeature();
  swift_getWitnessTable();
  sub_20C36CD04();
  swift_getWitnessTable();
  v19 = sub_20C36C484();
  v20 = a7 + v15[17];
  *v20 = v19;
  *(v20 + 1) = v21;
  v20[16] = v22 & 1;
  v23 = v15[18];
  swift_getFunctionTypeMetadata1();
  sub_20C36C174();
}

uint64_t sub_20C360E90@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79F710, &qword_20C377758);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v33 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79F718, &qword_20C377760);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v33 - v11;
  *v7 = sub_20C36C704();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79F720, &qword_20C377768);
  sub_20C3611C4(&v7[*(v13 + 44)]);
  sub_20C36CC34();
  sub_20C36C5C4();
  v39 = v12;
  sub_20C307054(v7, v12, &qword_27C79F710, &qword_20C377758);
  v14 = &v12[*(v9 + 44)];
  v15 = v67;
  *(v14 + 4) = v66;
  *(v14 + 5) = v15;
  *(v14 + 6) = v68;
  v16 = v63;
  *v14 = v62;
  *(v14 + 1) = v16;
  v17 = v65;
  *(v14 + 2) = v64;
  *(v14 + 3) = v17;
  v34 = v2;
  sub_20C360994(a1);
  v18 = a1[3];
  v53 = a1[2];
  v19 = v53;
  v54 = v18;
  v20 = v18;
  v21 = a1[4];
  v36 = a1[5];
  v55 = v21;
  v56 = v36;
  v22 = a1[6];
  v35 = a1[7];
  v33 = a1;
  v57 = v22;
  v58 = v35;
  swift_getKeyPath();
  sub_20C36CCE4();

  v38 = v61;
  sub_20C360994(a1);
  v47 = v19;
  v48 = v20;
  v23 = v20;
  v24 = v35;
  v25 = v36;
  v49 = v21;
  v50 = v36;
  v51 = v22;
  v52 = v35;
  swift_getKeyPath();
  sub_20C36CCE4();

  v37 = v60;
  sub_20C360994(v33);
  v41 = v19;
  v42 = v23;
  v43 = v21;
  v44 = v25;
  v45 = v22;
  v46 = v24;
  swift_getKeyPath();
  sub_20C36CCE4();

  v26 = v59;
  v27 = sub_20C36C834();
  v28 = v40;
  sub_20C307054(v39, v40, &qword_27C79F718, &qword_20C377760);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79F728, &qword_20C377770);
  v30 = v28 + *(result + 36);
  *v30 = v27;
  v31 = v37;
  v32 = v38;
  *(v30 + 8) = 0;
  *(v30 + 16) = v32;
  *(v30 + 24) = v31;
  *(v30 + 32) = v26;
  *(v30 + 40) = 0;
  return result;
}

uint64_t sub_20C3611C4@<X0>(uint64_t a1@<X8>)
{
  v82 = a1;
  v83 = sub_20C36C8F4();
  v81 = *(v83 - 8);
  v1 = *(v81 + 64);
  MEMORY[0x28223BE20](v83);
  v80 = &v72[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_20C36CAE4();
  v78 = *(v3 - 8);
  v79 = v3;
  v4 = *(v78 + 64);
  MEMORY[0x28223BE20](v3);
  v76 = &v72[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79F730, &qword_20C377778);
  v7 = *(v6 - 8);
  v77 = v6 - 8;
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6 - 8);
  v88 = &v72[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v84 = &v72[-v11];
  v12 = sub_20C36CE64();
  v12[2] = 18;
  v12[4] = 88;
  v12[5] = 0xE100000000000000;
  v12[6] = 88;
  v12[7] = 0xE100000000000000;
  v12[8] = 88;
  v12[9] = 0xE100000000000000;
  v12[10] = 88;
  v12[11] = 0xE100000000000000;
  v12[12] = 88;
  v12[13] = 0xE100000000000000;
  v12[14] = 88;
  v12[15] = 0xE100000000000000;
  v12[16] = 88;
  v12[17] = 0xE100000000000000;
  v12[18] = 88;
  v12[19] = 0xE100000000000000;
  v12[20] = 88;
  v12[21] = 0xE100000000000000;
  v12[22] = 88;
  v12[23] = 0xE100000000000000;
  v12[24] = 88;
  v12[25] = 0xE100000000000000;
  v12[26] = 88;
  v12[27] = 0xE100000000000000;
  v12[28] = 88;
  v12[29] = 0xE100000000000000;
  v12[30] = 88;
  v12[31] = 0xE100000000000000;
  v12[32] = 88;
  v12[33] = 0xE100000000000000;
  v12[34] = 88;
  v12[35] = 0xE100000000000000;
  v12[36] = 88;
  v12[37] = 0xE100000000000000;
  v12[38] = 88;
  v12[39] = 0xE100000000000000;
  v90 = v12;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79F738, &qword_20C377780);
  v86 = sub_20C3077A8(&qword_27C79F740, &qword_27C79F738, &qword_20C377780);
  v90 = sub_20C36CDF4();
  v91 = v13;
  v85 = sub_20C343EA0();
  v14 = sub_20C36C984();
  v16 = v15;
  v18 = v17;
  sub_20C36C904();
  sub_20C36C8A4();
  sub_20C36C8E4();

  v74 = sub_20C36C974();
  v20 = v19;
  v73 = v21;
  v75 = v22;

  sub_20C3078B8(v14, v16, v18 & 1);

  KeyPath = swift_getKeyPath();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79F748, &qword_20C3777B8);
  v25 = v84;
  v26 = &v84[*(v24 + 36)];
  v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79F750, &qword_20C3777C0) + 28);
  v28 = *MEMORY[0x277CE0B48];
  v29 = sub_20C36C964();
  v30 = *(v29 - 8);
  (*(v30 + 104))(v26 + v27, v28, v29);
  (*(v30 + 56))(v26 + v27, 0, 1, v29);
  *v26 = swift_getKeyPath();
  *v25 = v74;
  *(v25 + 1) = v20;
  v25[16] = v73 & 1;
  v31 = v76;
  *(v25 + 3) = v75;
  *(v25 + 4) = KeyPath;
  *(v25 + 5) = 1;
  v25[48] = 0;
  (*(v78 + 104))(v31, *MEMORY[0x277CE0EE0], v79);
  *&v25[*(v77 + 44)] = sub_20C36CB04();
  v32 = sub_20C36CE64();
  v32[2] = 20;
  v32[4] = 88;
  v32[5] = 0xE100000000000000;
  v32[6] = 88;
  v32[7] = 0xE100000000000000;
  v32[8] = 88;
  v32[9] = 0xE100000000000000;
  v32[10] = 88;
  v32[11] = 0xE100000000000000;
  v32[12] = 88;
  v32[13] = 0xE100000000000000;
  v32[14] = 88;
  v32[15] = 0xE100000000000000;
  v32[16] = 88;
  v32[17] = 0xE100000000000000;
  v32[18] = 88;
  v32[19] = 0xE100000000000000;
  v32[20] = 88;
  v32[21] = 0xE100000000000000;
  v32[22] = 88;
  v32[23] = 0xE100000000000000;
  v32[24] = 88;
  v32[25] = 0xE100000000000000;
  v32[26] = 88;
  v32[27] = 0xE100000000000000;
  v32[28] = 88;
  v32[29] = 0xE100000000000000;
  v32[30] = 88;
  v32[31] = 0xE100000000000000;
  v32[32] = 88;
  v32[33] = 0xE100000000000000;
  v32[34] = 88;
  v32[35] = 0xE100000000000000;
  v32[36] = 88;
  v32[37] = 0xE100000000000000;
  v32[38] = 88;
  v32[39] = 0xE100000000000000;
  v32[40] = 88;
  v32[41] = 0xE100000000000000;
  v32[42] = 88;
  v32[43] = 0xE100000000000000;
  v90 = v32;
  v90 = sub_20C36CDF4();
  v91 = v33;
  v34 = sub_20C36C984();
  v36 = v35;
  LOBYTE(v28) = v37;
  v79 = v38;
  sub_20C36C8D4();
  sub_20C36C884();

  v39 = v80;
  v40 = v81;
  v41 = v83;
  (*(v81 + 104))(v80, *MEMORY[0x277CE0A10], v83);
  sub_20C36C914();

  (*(v40 + 8))(v39, v41);
  v83 = sub_20C36C974();
  v80 = v42;
  v81 = v43;
  LODWORD(v78) = v44;

  sub_20C3078B8(v34, v36, v28 & 1);

  v79 = swift_getKeyPath();
  v45 = sub_20C36CE64();
  v45[2] = 20;
  v45[4] = 88;
  v45[5] = 0xE100000000000000;
  v45[6] = 88;
  v45[7] = 0xE100000000000000;
  v45[8] = 88;
  v45[9] = 0xE100000000000000;
  v45[10] = 88;
  v45[11] = 0xE100000000000000;
  v45[12] = 88;
  v45[13] = 0xE100000000000000;
  v45[14] = 88;
  v45[15] = 0xE100000000000000;
  v45[16] = 88;
  v45[17] = 0xE100000000000000;
  v45[18] = 88;
  v45[19] = 0xE100000000000000;
  v45[20] = 88;
  v45[21] = 0xE100000000000000;
  v45[22] = 88;
  v45[23] = 0xE100000000000000;
  v45[24] = 88;
  v45[25] = 0xE100000000000000;
  v45[26] = 88;
  v45[27] = 0xE100000000000000;
  v45[28] = 88;
  v45[29] = 0xE100000000000000;
  v45[30] = 88;
  v45[31] = 0xE100000000000000;
  v45[32] = 88;
  v45[33] = 0xE100000000000000;
  v45[34] = 88;
  v45[35] = 0xE100000000000000;
  v45[36] = 88;
  v45[37] = 0xE100000000000000;
  v45[38] = 88;
  v45[39] = 0xE100000000000000;
  v45[40] = 88;
  v45[41] = 0xE100000000000000;
  v45[42] = 88;
  v45[43] = 0xE100000000000000;
  v90 = v45;
  v90 = sub_20C36CDF4();
  v91 = v46;
  v47 = sub_20C36C984();
  v49 = v48;
  LOBYTE(v41) = v50;
  sub_20C36C904();
  sub_20C36C8B4();
  sub_20C36C8E4();

  v51 = sub_20C36C974();
  v53 = v52;
  LOBYTE(v26) = v54;
  v87 = v55;

  sub_20C3078B8(v47, v49, v41 & 1);

  v56 = swift_getKeyPath();
  LODWORD(v86) = sub_20C36C794();
  LOBYTE(v90) = v26 & 1;
  v92 = 0;
  v57 = v84;
  v58 = v88;
  sub_20C3077F0(v84, v88, &qword_27C79F730, &qword_20C377778);
  LOBYTE(v29) = v78 & 1;
  v89 = v78 & 1;
  v59 = v92;
  v60 = v90;
  v61 = v58;
  v62 = v82;
  sub_20C3077F0(v61, v82, &qword_27C79F730, &qword_20C377778);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79F758, &qword_20C3777F8);
  v64 = v62 + *(v63 + 48);
  v65 = v83;
  v66 = v80;
  v67 = v81;
  *v64 = v83;
  *(v64 + 8) = v66;
  *(v64 + 16) = v29;
  v68 = v79;
  *(v64 + 24) = v67;
  *(v64 + 32) = v68;
  *(v64 + 40) = 2;
  *(v64 + 48) = 0;
  v69 = v62 + *(v63 + 64);
  *v69 = v51;
  *(v69 + 8) = v53;
  *(v69 + 16) = v60;
  *(v69 + 24) = v87;
  *(v69 + 32) = v56;
  *(v69 + 40) = 1;
  *(v69 + 48) = v59;
  *(v69 + 52) = v86;
  v70 = v66;
  sub_20C3078C8(v65, v66, v29);

  sub_20C3078C8(v51, v53, v60 & 1);

  sub_20C307858(v57, &qword_27C79F730, &qword_20C377778);
  sub_20C3078B8(v51, v53, v60 & 1);

  sub_20C3078B8(v83, v70, v89);

  return sub_20C307858(v88, &qword_27C79F730, &qword_20C377778);
}

uint64_t sub_20C361A4C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v103 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79F580, &qword_20C3774C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v90 = (v89 - v6);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79F570, &qword_20C3774B8);
  v7 = *(*(v99 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v99);
  v91 = v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v94 = v89 - v10;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79F6F8, &qword_20C377740);
  v11 = *(*(v101 - 8) + 64);
  MEMORY[0x28223BE20](v101);
  v102 = v89 - v12;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79F700, &qword_20C377748);
  v13 = *(*(v96 - 8) + 64);
  MEMORY[0x28223BE20](v96);
  v97 = v89 - v14;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79F520, &qword_20C377490);
  v15 = *(*(v100 - 8) + 64);
  MEMORY[0x28223BE20](v100);
  v98 = v89 - v16;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79F530, &qword_20C377498);
  v17 = *(*(v104 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v104);
  v20 = v89 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v93 = v89 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = v89 - v24;
  MEMORY[0x28223BE20](v23);
  v95 = v89 - v26;
  v27 = sub_20C36C534();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v31 = v89 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v2;
  sub_20C36BC5C(v31);
  v92 = v28;
  v33 = v28;
  v34 = v27;
  v35 = (*(v33 + 88))(v31, v27);
  if (v35 == *MEMORY[0x277CDF9F8] || v35 == *MEMORY[0x277CDF9E0] || v35 == *MEMORY[0x277CDF9E8] || v35 == *MEMORY[0x277CDF9D8] || v35 == *MEMORY[0x277CDF9F0] || v35 == *MEMORY[0x277CDFA00] || v35 == *MEMORY[0x277CDFA10])
  {
    v56 = sub_20C36C6F4();
    v113 = 0;
    v57 = a1[3];
    v93 = a1[2];
    v94 = v56;
    v58 = a1[4];
    v59 = a1[5];
    v60 = *(a1 + 6);
    v61 = *(a1 + 7);
    v91 = *&v60;
    v92 = v58;
    v89[1] = v32;
    sub_20C3625B4(v93, v57, v58, v59, v60, v61, &v124);
    v116 = v126;
    v117 = v127;
    v114 = v124;
    v115 = v125;
    v120 = v125;
    v121 = v126;
    v122 = v127;
    v123 = v128;
    v118 = v128;
    v119 = v124;
    sub_20C3077F0(&v114, &v106, &qword_27C79F6C0, &qword_20C377680);
    sub_20C307858(&v119, &qword_27C79F6C0, &qword_20C377680);
    *&v105[23] = v115;
    *&v105[39] = v116;
    *&v105[55] = v117;
    *&v105[71] = v118;
    *&v105[7] = v114;
    LODWORD(v90) = v113;
    sub_20C36CC34();
    sub_20C36C5C4();
    v62 = sub_20C36CC14();
    v64 = v63;
    v65 = &v25[*(v104 + 36)];
    v106 = v93;
    v107 = v57;
    v108 = v92;
    v109 = v59;
    v110 = v91;
    v111 = *&v61;
    v66 = type metadata accessor for ForYouSummaryView();
    sub_20C360E90(v66, v65);
    v67 = (v65 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79F560, &qword_20C3774B0) + 36));
    *v67 = v62;
    v67[1] = v64;
    *v25 = v94;
    *(v25 + 1) = 0;
    v25[16] = v90;
    v68 = *v105;
    *(v25 + 33) = *&v105[16];
    *(v25 + 17) = v68;
    *(v25 + 12) = *&v105[79];
    *(v25 + 81) = *&v105[64];
    v69 = *&v105[32];
    *(v25 + 65) = *&v105[48];
    *(v25 + 49) = v69;
    v70 = v124;
    v71 = v125;
    v72 = v127;
    *(v25 + 136) = v126;
    *(v25 + 120) = v71;
    *(v25 + 104) = v70;
    v73 = v128;
    v74 = v129;
    *(v25 + 200) = v130;
    *(v25 + 184) = v74;
    *(v25 + 168) = v73;
    *(v25 + 152) = v72;
    v75 = &qword_27C79F530;
    v76 = &qword_20C377498;
    v77 = v95;
    sub_20C307054(v25, v95, &qword_27C79F530, &qword_20C377498);
    sub_20C3077F0(v77, v97, &qword_27C79F530, &qword_20C377498);
    swift_storeEnumTagMultiPayload();
    sub_20C36A818();
    sub_20C36A988();
    v78 = v98;
    sub_20C36C724();
    sub_20C3077F0(v78, v102, &qword_27C79F520, &qword_20C377490);
    swift_storeEnumTagMultiPayload();
    sub_20C36A78C();
    sub_20C36C724();
    v79 = v78;
  }

  else
  {
    if (v35 != *MEMORY[0x277CDF988] && v35 != *MEMORY[0x277CDF998] && v35 != *MEMORY[0x277CDF9A8] && v35 != *MEMORY[0x277CDF9B8] && v35 != *MEMORY[0x277CDF9D0])
    {
      v36 = sub_20C36C6F4();
      v113 = 0;
      v37 = a1[3];
      v98 = a1[2];
      v99 = v36;
      v38 = a1[5];
      v96 = a1[4];
      v97 = v37;
      v39 = *(a1 + 7);
      v94 = a1[6];
      v95 = v38;
      v91 = *&v39;
      sub_20C3625B4(v98, v37, v96, v38, *&v94, v39, &v124);
      v116 = v126;
      v117 = v127;
      v114 = v124;
      v115 = v125;
      v120 = v125;
      v121 = v126;
      v122 = v127;
      v123 = v128;
      v118 = v128;
      v119 = v124;
      sub_20C3077F0(&v114, &v106, &qword_27C79F6C0, &qword_20C377680);
      sub_20C307858(&v119, &qword_27C79F6C0, &qword_20C377680);
      *&v112[23] = v115;
      *&v112[39] = v116;
      *&v112[55] = v117;
      *&v112[71] = v118;
      *&v112[7] = v114;
      LODWORD(v90) = v113;
      sub_20C36CC34();
      sub_20C36C5C4();
      v40 = sub_20C36CC14();
      v42 = v41;
      v43 = &v20[*(v104 + 36)];
      v106 = v98;
      v107 = v97;
      v108 = v96;
      v109 = v95;
      v110 = v94;
      v111 = v91;
      v44 = type metadata accessor for ForYouSummaryView();
      sub_20C360E90(v44, v43);
      v45 = (v43 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79F560, &qword_20C3774B0) + 36));
      *v45 = v40;
      v45[1] = v42;
      *v20 = v99;
      *(v20 + 1) = 0;
      v20[16] = v90;
      v46 = *v112;
      *(v20 + 33) = *&v112[16];
      *(v20 + 17) = v46;
      *(v20 + 12) = *&v112[79];
      v47 = *&v112[48];
      *(v20 + 81) = *&v112[64];
      v48 = *&v112[32];
      *(v20 + 65) = v47;
      *(v20 + 49) = v48;
      v49 = v124;
      v50 = v125;
      v51 = v127;
      *(v20 + 136) = v126;
      *(v20 + 120) = v50;
      *(v20 + 104) = v49;
      v52 = v128;
      v53 = v129;
      *(v20 + 200) = v130;
      *(v20 + 184) = v53;
      *(v20 + 168) = v52;
      *(v20 + 152) = v51;
      v54 = v93;
      sub_20C307054(v20, v93, &qword_27C79F530, &qword_20C377498);
      sub_20C3077F0(v54, v102, &qword_27C79F530, &qword_20C377498);
      swift_storeEnumTagMultiPayload();
      sub_20C36A78C();
      sub_20C36A818();
      sub_20C36C724();
      sub_20C307858(v54, &qword_27C79F530, &qword_20C377498);
      return (*(v92 + 8))(v31, v34);
    }

    v80 = sub_20C36C704();
    v81 = v90;
    *v90 = v80;
    *(v81 + 8) = 0;
    *(v81 + 16) = 0;
    v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79F708, &qword_20C377750);
    sub_20C3626FC(v32, a1[2], a1[3], a1[4], a1[5], a1[6], a1[7], v81 + *(v82 + 44));
    sub_20C36CC34();
    sub_20C36C5C4();
    v83 = v91;
    sub_20C307054(v81, v91, &qword_27C79F580, &qword_20C3774C0);
    v84 = (v83 + *(v99 + 36));
    v85 = v129;
    v84[4] = v128;
    v84[5] = v85;
    v84[6] = v130;
    v86 = v125;
    *v84 = v124;
    v84[1] = v86;
    v87 = v127;
    v84[2] = v126;
    v84[3] = v87;
    v75 = &qword_27C79F570;
    v76 = &qword_20C3774B8;
    v77 = v94;
    sub_20C307054(v83, v94, &qword_27C79F570, &qword_20C3774B8);
    sub_20C3077F0(v77, v97, &qword_27C79F570, &qword_20C3774B8);
    swift_storeEnumTagMultiPayload();
    sub_20C36A818();
    sub_20C36A988();
    v88 = v98;
    sub_20C36C724();
    sub_20C3077F0(v88, v102, &qword_27C79F520, &qword_20C377490);
    swift_storeEnumTagMultiPayload();
    sub_20C36A78C();
    sub_20C36C724();
    v79 = v88;
  }

  sub_20C307858(v79, &qword_27C79F520, &qword_20C377490);
  return sub_20C307858(v77, v75, v76);
}

double sub_20C3625B4@<D0>(uint64_t a1@<X1>, char a2@<W2>, uint64_t a3@<X3>, char a4@<W4>, double a5@<X5>, double a6@<X6>, uint64_t a7@<X8>)
{
  v14 = sub_20C36CAF4();
  v15 = sub_20C36CAF4();
  v18[0] = a5;
  v18[1] = a6;
  v16 = type metadata accessor for ForYouSummaryView();
  sub_20C360994(v16);
  swift_getKeyPath();
  sub_20C36CCE4();

  sub_20C36CC24();
  sub_20C36C4B4();
  *a7 = v14;
  *(a7 + 8) = 0x3FFC71C71C71C71CLL;
  *(a7 + 16) = 0;
  *(a7 + 24) = v15;
  *(a7 + 32) = a1;
  *(a7 + 40) = a2;
  *(a7 + 48) = a3;
  *(a7 + 56) = a4;
  result = a5;
  *(a7 + 64) = *v18;
  return result;
}

uint64_t sub_20C3626FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v26[1] = a1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79F728, &qword_20C377770);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v26 - v20;
  v22 = sub_20C36CAF4();
  v26[2] = a2;
  v26[3] = a3;
  v26[4] = a4;
  v26[5] = a5;
  v26[6] = a6;
  v26[7] = a7;
  v23 = type metadata accessor for ForYouSummaryView();
  sub_20C360E90(v23, v21);
  sub_20C3077F0(v21, v19, &qword_27C79F728, &qword_20C377770);
  *a8 = v22;
  *(a8 + 8) = 0x3FFC71C71C71C71CLL;
  *(a8 + 16) = 0;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79F768, &qword_20C377808);
  sub_20C3077F0(v19, a8 + *(v24 + 48), &qword_27C79F728, &qword_20C377770);

  sub_20C307858(v21, &qword_27C79F728, &qword_20C377770);
  sub_20C307858(v19, &qword_27C79F728, &qword_20C377770);
}

__n128 sub_20C362894@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X7>, uint64_t a9@<X8>)
{
  v37 = sub_20C36C6F4();
  v54 = 0;
  sub_20C362BA0(&v44);
  v57 = v46;
  v58 = v47;
  v55 = v44;
  v56 = v45;
  v60[2] = v46;
  v60[3] = v47;
  v60[4] = v48;
  v60[1] = v45;
  v59 = v48;
  v60[0] = v44;
  sub_20C3077F0(&v55, v51, &qword_27C79F6C0, &qword_20C377680);
  sub_20C307858(v60, &qword_27C79F6C0, &qword_20C377680);
  *&v53[23] = v56;
  *&v53[39] = v57;
  *&v53[55] = v58;
  *&v53[71] = v59;
  *&v53[7] = v55;
  v33 = v54;
  sub_20C36CC34();
  sub_20C36C5C4();
  v31 = v9;
  sub_20C360994(a8);
  v12 = a8[3];
  v42 = a8[2];
  v13 = a8[4];
  v14 = a8[5];
  v15 = a8[6];
  v30 = a8[7];
  swift_getKeyPath();
  sub_20C36CCE4();

  v32 = v52;
  sub_20C360994(a8);
  swift_getKeyPath();
  sub_20C36CCE4();

  v16 = sub_20C36C834();
  v51[0] = 0;
  v17 = sub_20C36CC24();
  v19 = v18;
  v20 = a9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79F5A0, &qword_20C3774D0) + 36);
  sub_20C362C58(a1, a2, a3, a4, v31, a7, a5, a6, v20, v42, v12, v13, v14, v15, v30);
  v21 = (v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79F5C8, &qword_20C3774E0) + 36));
  *v21 = v17;
  v21[1] = v19;
  *a9 = v37;
  *(a9 + 8) = 0;
  *(a9 + 16) = v33;
  v22 = *v53;
  *(a9 + 33) = *&v53[16];
  *(a9 + 17) = v22;
  *(a9 + 96) = *&v53[79];
  v23 = *&v53[48];
  *(a9 + 81) = *&v53[64];
  v24 = *&v53[32];
  *(a9 + 65) = v23;
  *(a9 + 49) = v24;
  v25 = v44;
  v26 = v45;
  v27 = v47;
  *(a9 + 136) = v46;
  *(a9 + 120) = v26;
  *(a9 + 104) = v25;
  result = v48;
  v29 = v49;
  *(a9 + 200) = v50;
  *(a9 + 184) = v29;
  *(a9 + 168) = result;
  *(a9 + 152) = v27;
  *(a9 + 216) = v16;
  *(a9 + 224) = 0;
  *(a9 + 232) = v32;
  *(a9 + 240) = 0;
  *(a9 + 248) = v43;
  *(a9 + 256) = 0;
  return result;
}

double sub_20C362BA0@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_20C36CAF4();
  v3 = sub_20C36CAF4();
  sub_20C36CC24();
  sub_20C36C4B4();
  *a1 = v2;
  *(a1 + 8) = 0x3FFC71C71C71C71CLL;
  *(a1 + 16) = 0;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  *(a1 + 48) = v7;
  *(a1 + 56) = v8;
  result = *&v9;
  *(a1 + 64) = v9;
  return result;
}

uint64_t sub_20C362C58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  *a9 = sub_20C36C6F4();
  *(a9 + 8) = 0x4014000000000000;
  *(a9 + 16) = 0;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79F6C8, &qword_20C377688);
  sub_20C362D68(a1, a2, a3, a4, a5, a6, a7, a8, (a9 + *(v23 + 44)), a10, a11, a12, a13, a14, a15);
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79F6D0, &qword_20C3776C0);
  v26 = a9 + *(result + 36);
  *v26 = KeyPath;
  *(v26 + 8) = 1;
  return result;
}

uint64_t sub_20C362D68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v105 = a8;
  v104 = a7;
  v99 = a6;
  v117 = a5;
  v91 = a4;
  v90 = a3;
  v110 = a9;
  v116 = a15;
  v115 = a14;
  v114 = a11;
  v113 = a12;
  v107 = sub_20C36CAE4();
  v106 = *(v107 - 8);
  v17 = *(v106 + 64);
  MEMORY[0x28223BE20](v107);
  v103 = &v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = a10;
  v112 = a13;
  v95 = type metadata accessor for ForYouSummaryAction();
  v94 = *(v95 - 8);
  v97 = *(v94 + 64);
  MEMORY[0x28223BE20](v95);
  v93 = &v84 - v19;
  v126 = a10;
  v127 = a11;
  v128 = a12;
  v129 = a13;
  v130 = a14;
  v131 = a15;
  v87 = type metadata accessor for ForYouSummaryView();
  v86 = *(v87 - 8);
  v92 = *(v86 + 64);
  MEMORY[0x28223BE20](v87);
  v85 = &v84 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79F6D8, &unk_20C3776C8);
  v22 = *(v21 - 8);
  v108 = v21 - 8;
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v21 - 8);
  v109 = &v84 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v111 = &v84 - v26;
  v126 = a1;
  v127 = a2;
  sub_20C343EA0();

  v27 = sub_20C36C984();
  v29 = v28;
  v31 = v30;
  sub_20C36C8C4();
  v32 = sub_20C36C974();
  v34 = v33;
  v36 = v35;

  sub_20C3078B8(v27, v29, v31 & 1);

  sub_20C36C894();
  v102 = sub_20C36C944();
  v100 = v37;
  v98 = v38;
  v101 = v39;
  sub_20C3078B8(v32, v34, v36 & 1);

  v126 = v90;
  v127 = v91;

  v40 = sub_20C36C984();
  v42 = v41;
  LOBYTE(v32) = v43;
  sub_20C36C874();
  v44 = sub_20C36C974();
  v46 = v45;
  v48 = v47;

  sub_20C3078B8(v40, v42, v32 & 1);

  LODWORD(v126) = sub_20C36C794();
  v88 = sub_20C36C954();
  v89 = v49;
  LODWORD(v90) = v50;
  v91 = v51;
  sub_20C3078B8(v44, v46, v48 & 1);

  v52 = v86;
  v53 = v85;
  v54 = v87;
  (*(v86 + 16))(v85, v117, v87);
  v55 = v94;
  v56 = v93;
  v57 = v95;
  (*(v94 + 16))(v93, v99, v95);
  v58 = (*(v52 + 80) + 64) & ~*(v52 + 80);
  v59 = (v92 + v58 + *(v55 + 80)) & ~*(v55 + 80);
  v60 = swift_allocObject();
  v61 = v96;
  v62 = v114;
  *(v60 + 2) = v96;
  *(v60 + 3) = v62;
  v63 = v112;
  *(v60 + 4) = v113;
  *(v60 + 5) = v63;
  v64 = v116;
  *(v60 + 6) = v115;
  *(v60 + 7) = v64;
  (*(v52 + 32))(&v60[v58], v53, v54);
  (*(v55 + 32))(&v60[v59], v56, v57);
  v124 = v104;
  v125 = v105;
  v65 = v111;
  sub_20C36CBA4();
  (*(v106 + 104))(v103, *MEMORY[0x277CE0EE0], v107);
  v66 = sub_20C36CB04();
  KeyPath = swift_getKeyPath();
  v126 = v66;
  v68 = sub_20C36C4C4();
  v69 = (v65 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79F6E0, &qword_20C377708) + 36));
  *v69 = KeyPath;
  v69[1] = v68;
  sub_20C360994(v54);
  v118 = v61;
  v119 = v114;
  v120 = v113;
  v121 = v112;
  v122 = v115;
  v123 = v116;
  swift_getKeyPath();
  sub_20C36CCE4();

  LOBYTE(v68) = v126;
  *(v65 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79F6E8, &qword_20C377730) + 36)) = (v68 & 1) == 0;
  LOBYTE(v68) = sub_20C36C844();
  sub_20C36C3E4();
  v70 = v65 + *(v108 + 44);
  *v70 = v68;
  *(v70 + 8) = v71;
  *(v70 + 16) = v72;
  *(v70 + 24) = v73;
  *(v70 + 32) = v74;
  *(v70 + 40) = 0;
  LOBYTE(v68) = v98 & 1;
  LOBYTE(v126) = v98 & 1;
  v75 = v109;
  sub_20C3077F0(v65, v109, &qword_27C79F6D8, &unk_20C3776C8);
  v76 = v110;
  v77 = v102;
  v78 = v100;
  *v110 = v102;
  v76[1] = v78;
  *(v76 + 16) = v68;
  v79 = v88;
  v76[3] = v101;
  v76[4] = v79;
  v80 = v89;
  v76[5] = v89;
  LOBYTE(KeyPath) = v90 & 1;
  *(v76 + 48) = v90 & 1;
  v76[7] = v91;
  v81 = v76;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79F6F0, &qword_20C377738);
  sub_20C3077F0(v75, v81 + *(v82 + 64), &qword_27C79F6D8, &unk_20C3776C8);
  sub_20C3078C8(v77, v78, v68);

  sub_20C3078C8(v79, v80, KeyPath);

  sub_20C307858(v111, &qword_27C79F6D8, &unk_20C3776C8);
  sub_20C307858(v75, &qword_27C79F6D8, &unk_20C3776C8);
  sub_20C3078B8(v79, v80, KeyPath);

  sub_20C3078B8(v77, v78, v126);
}

uint64_t sub_20C3636B0()
{
  v0 = type metadata accessor for ForYouSummaryView();
  sub_20C360994(v0);
  sub_20C36CCF4();
}

uint64_t sub_20C36370C@<X0>(uint64_t a1@<X8>)
{
  sub_20C343EA0();

  v2 = sub_20C36C984();
  v4 = v3;
  v6 = v5;
  sub_20C36C874();
  v7 = sub_20C36C974();
  v9 = v8;
  v11 = v10;
  v13 = v12;

  sub_20C3078B8(v2, v4, v6 & 1);

  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v13;
  return result;
}

uint64_t ForYouSummaryView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v96 = a2;
  v94 = *(a1 - 8);
  v95 = *(v94 + 64);
  MEMORY[0x28223BE20](a1);
  v93 = &v83 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C79F4E0, &qword_20C377468);
  v100 = sub_20C36C394();
  v101 = sub_20C36C344();
  v4 = type metadata accessor for ForYouItemContext();
  v98 = v4;
  v99 = sub_20C36C354();
  v5 = sub_20C36C374();
  v6 = sub_20C36B564(&qword_27C79D900, MEMORY[0x277D09808]);
  v7 = sub_20C36B564(&qword_27C79D908, MEMORY[0x277D09738]);
  v8 = sub_20C36B564(&qword_27C79D910, type metadata accessor for ForYouItemContext);
  v9 = sub_20C36B564(&qword_27C79D918, type metadata accessor for ForYouItemContext);
  v10 = sub_20C36B564(&qword_27C79D920, type metadata accessor for ForYouItemContext);
  v85 = v10;
  v11 = sub_20C36B564(&qword_27C79D928, MEMORY[0x277D09748]);
  v12 = sub_20C36B564(&qword_27C79D930, MEMORY[0x277D097A8]);
  v120.i64[1] = v101;
  v121 = v4;
  v122 = v99;
  v123 = v5;
  v126 = v7;
  v127 = v8;
  v128 = v9;
  v129 = v10;
  v130 = v11;
  v131 = v12;
  v13 = *(a1 + 16);
  v101 = *(a1 + 40);
  v119 = v100;
  v120.i64[0] = v13;
  v14 = v13;
  v91 = v13;
  v124 = v6;
  v125 = v101;
  v15 = sub_20C36C284();
  swift_getTupleTypeMetadata2();
  v84 = sub_20C36CE94();
  WitnessTable = swift_getWitnessTable();
  v18 = *(a1 + 48);
  v17 = *(a1 + 56);
  v89 = a1;
  v19 = MEMORY[0x277CE1428];
  v119 = v15;
  v121 = MEMORY[0x277CE1428];
  v122 = MEMORY[0x277CE1428];
  v123 = MEMORY[0x277CE1428];
  v124 = MEMORY[0x277CE1428];
  v125 = WitnessTable;
  v126 = v17;
  v20 = v17;
  v99 = v18;
  v100 = v17;
  v127 = v18;
  v21 = MEMORY[0x277CE1410];
  v128 = MEMORY[0x277CE1410];
  v129 = MEMORY[0x277CE1410];
  v130 = MEMORY[0x277CE1410];
  v131 = MEMORY[0x277CE1410];
  v22.i64[0] = v14;
  v88 = v22;
  v97 = *(a1 + 24);
  v87 = vextq_s8(v97, v97, 8uLL);
  v120 = v87;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v120 = v87;
  v119 = v15;
  v121 = v19;
  v122 = v19;
  v123 = v19;
  v124 = v19;
  v125 = WitnessTable;
  v126 = v20;
  v127 = v18;
  v128 = v21;
  v129 = v21;
  v130 = v21;
  v131 = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v119 = OpaqueTypeMetadata2;
  v120.i64[0] = OpaqueTypeConformance2;
  v87.i64[0] = MEMORY[0x277CE0E50];
  v25 = swift_getOpaqueTypeMetadata2();
  v119 = OpaqueTypeMetadata2;
  v120.i64[0] = OpaqueTypeConformance2;
  v26 = swift_getOpaqueTypeConformance2();
  v119 = v25;
  v120.i64[0] = v26;
  v86 = MEMORY[0x277CDEBD8];
  swift_getOpaqueTypeMetadata2();
  v27 = sub_20C36C544();
  v28 = v84;
  v29 = swift_getWitnessTable();
  v119 = v28;
  v120.i64[0] = v98;
  v120.i64[1] = v27;
  v121 = v29;
  v122 = v85;
  sub_20C36CBE4();
  v119 = v25;
  v120.i64[0] = v26;
  v117 = swift_getOpaqueTypeConformance2();
  v118 = MEMORY[0x277CE0790];
  v98 = MEMORY[0x277CDFAD8];
  v116 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_20C36CBC4();
  swift_getWitnessTable();
  v30 = sub_20C36C3F4();
  v31 = swift_getWitnessTable();
  v119 = v30;
  v32 = MEMORY[0x277D83B88];
  v120.i64[0] = MEMORY[0x277D83B88];
  v33 = MEMORY[0x277D83BA8];
  v120.i64[1] = v31;
  v121 = MEMORY[0x277D83BA8];
  v34 = swift_getOpaqueTypeMetadata2();
  v119 = v30;
  v120.i64[0] = v32;
  v120.i64[1] = v31;
  v121 = v33;
  v35 = swift_getOpaqueTypeConformance2();
  v119 = v34;
  v120.i64[0] = v35;
  v36 = swift_getOpaqueTypeMetadata2();
  v119 = v34;
  v120.i64[0] = v35;
  v37 = swift_getOpaqueTypeConformance2();
  v38 = sub_20C341484();
  v39 = MEMORY[0x277D85048];
  v119 = v36;
  v120.i64[0] = MEMORY[0x277D85048];
  v120.i64[1] = v37;
  v121 = v38;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C79F4E8, &qword_20C377470);
  v40 = sub_20C36C544();
  v41 = sub_20C36C7E4();
  v119 = v36;
  v120.i64[0] = v39;
  v120.i64[1] = v37;
  v121 = v38;
  v42 = swift_getOpaqueTypeConformance2();
  v43 = sub_20C3077A8(&qword_27C79F4F0, &qword_27C79F4E8, &qword_20C377470);
  v114 = v42;
  v115 = v43;
  v44 = swift_getWitnessTable();
  v119 = v40;
  v120.i64[0] = v41;
  v45 = MEMORY[0x277CDE3A8];
  v120.i64[1] = v44;
  v121 = MEMORY[0x277CDE3A8];
  v46 = swift_getOpaqueTypeMetadata2();
  v119 = v40;
  v120.i64[0] = v41;
  v120.i64[1] = v44;
  v121 = v45;
  v47 = swift_getOpaqueTypeConformance2();
  v119 = v46;
  v120.i64[0] = v47;
  v48 = swift_getOpaqueTypeMetadata2();
  v119 = v46;
  v120.i64[0] = v47;
  v49 = swift_getOpaqueTypeConformance2();
  v119 = v48;
  v120.i64[0] = v49;
  swift_getOpaqueTypeMetadata2();
  v119 = v48;
  v120.i64[0] = v49;
  swift_getOpaqueTypeConformance2();
  sub_20C36C5B4();
  sub_20C36C734();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C79F4F8, &qword_20C377478);
  sub_20C36C734();
  v50 = sub_20C36CB24();
  v85 = *(v50 - 8);
  v51 = (*(v85 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v50);
  v53 = &v83 - v52;
  v54 = sub_20C36C544();
  v90 = *(v54 - 8);
  v55 = *(v90 + 64);
  v56 = MEMORY[0x28223BE20](v54);
  v83 = &v83 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v56);
  v84 = &v83 - v58;
  *&v59 = vdupq_laneq_s64(v97, 1).u64[0];
  *(&v59 + 1) = v101;
  v102 = vzip1q_s64(v88, v97);
  v103 = v59;
  v104 = v99;
  v105 = v100;
  v60 = v92;
  v106 = v92;
  v61 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C79F500, &qword_20C377480);
  v62 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C79F508, &qword_20C377488);
  v63 = sub_20C36A700();
  v119 = v62;
  v120.i64[0] = v63;
  v64 = swift_getOpaqueTypeConformance2();
  v119 = v61;
  v120.i64[0] = v64;
  v65 = swift_getOpaqueTypeConformance2();
  v66 = swift_getWitnessTable();
  v112 = v65;
  v113 = v66;
  v67 = swift_getWitnessTable();
  v68 = sub_20C36AA40();
  v110 = v67;
  v111 = v68;
  v69 = swift_getWitnessTable();
  sub_20C36CB14();
  v70 = v93;
  v71 = v94;
  v72 = v89;
  (*(v94 + 16))(v93, v60, v89);
  v73 = (*(v71 + 80) + 64) & ~*(v71 + 80);
  v74 = swift_allocObject();
  *(v74 + 16) = v91;
  *(v74 + 24) = v97;
  v76 = v99;
  v75 = v100;
  *(v74 + 40) = v101;
  *(v74 + 48) = v76;
  *(v74 + 56) = v75;
  (*(v71 + 32))(v74 + v73, v70, v72);
  v109 = v69;
  v77 = swift_getWitnessTable();
  v78 = v83;
  sub_20C36CA94();

  (*(v85 + 8))(v53, v50);
  v107 = v77;
  v108 = MEMORY[0x277CE0790];
  v79 = swift_getWitnessTable();
  v80 = v84;
  sub_20C34559C(v78, v54, v79);
  v81 = *(v90 + 8);
  v81(v78, v54);
  sub_20C34559C(v80, v54, v79);
  return (v81)(v80, v54);
}

uint64_t sub_20C3643F4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v265 = a7;
  v266 = a4;
  v268 = a6;
  v264 = a3;
  v260 = a1;
  v256 = a8;
  v240 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79F668, &qword_20C377578);
  v14 = *(*(v240 - 8) + 64);
  MEMORY[0x28223BE20](v240);
  v243 = v222 - v15;
  v228 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79F670, &qword_20C377580);
  v16 = *(*(v228 - 8) + 64);
  MEMORY[0x28223BE20](v228);
  v229 = v222 - v17;
  v242 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79F598, &qword_20C3774C8);
  v18 = *(*(v242 - 8) + 64);
  MEMORY[0x28223BE20](v242);
  v233 = v222 - v19;
  v267 = a5;
  v20 = type metadata accessor for ForYouSummaryAction();
  v225 = *(v20 - 8);
  v226 = v20;
  v21 = *(v225 + 64);
  MEMORY[0x28223BE20](v20);
  v223 = v222 - v22;
  v23 = sub_20C36C144();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v222[1] = v222 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_20C36CD64();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v234 = v222 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79F5A0, &qword_20C3774D0);
  v29 = *(*(v227 - 8) + 64);
  MEMORY[0x28223BE20](v227);
  v224 = v222 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79F678, &qword_20C377588);
  v231 = *(v31 - 8);
  v232 = v31;
  v32 = *(v231 + 64);
  MEMORY[0x28223BE20](v31);
  v230 = v222 - v33;
  v263 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79F4F8, &qword_20C377478);
  v34 = *(*(v263 - 8) + 64);
  MEMORY[0x28223BE20](v263);
  v241 = v222 - v35;
  v298 = a2;
  v299 = a3;
  v261 = a2;
  v300 = a4;
  v301 = a5;
  v302 = a6;
  v303 = a7;
  v259 = type metadata accessor for ForYouSummaryView();
  v239 = *(v259 - 1);
  v237 = *(v239 + 64);
  MEMORY[0x28223BE20](v259);
  v238 = v222 - v36;
  v262 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C79F4E0, &qword_20C377468);
  v255 = sub_20C36C394();
  OpaqueTypeMetadata2 = sub_20C36C344();
  v37 = type metadata accessor for ForYouItemContext();
  v258 = v37;
  v253 = sub_20C36C354();
  v38 = sub_20C36C374();
  v39 = sub_20C36B564(&qword_27C79D900, MEMORY[0x277D09808]);
  v40 = sub_20C36B564(&qword_27C79D908, MEMORY[0x277D09738]);
  v41 = sub_20C36B564(&qword_27C79D910, type metadata accessor for ForYouItemContext);
  v42 = sub_20C36B564(&qword_27C79D918, type metadata accessor for ForYouItemContext);
  v43 = sub_20C36B564(&qword_27C79D920, type metadata accessor for ForYouItemContext);
  v257 = v43;
  v44 = sub_20C36B564(&qword_27C79D928, MEMORY[0x277D09748]);
  v45 = sub_20C36B564(&qword_27C79D930, MEMORY[0x277D097A8]);
  v298 = v255;
  v299 = a2;
  v300 = OpaqueTypeMetadata2;
  v301 = v37;
  v302 = v253;
  v303 = v38;
  v304 = v39;
  v305 = v267;
  v306 = v40;
  v307 = v41;
  v308 = v42;
  v309 = v43;
  v310 = v44;
  v311 = v45;
  v46 = sub_20C36C284();
  swift_getTupleTypeMetadata2();
  v255 = sub_20C36CE94();
  WitnessTable = swift_getWitnessTable();
  v49 = v265;
  v48 = v266;
  v298 = v46;
  v299 = v266;
  v50 = MEMORY[0x277CE1428];
  v51 = v264;
  v300 = v264;
  v301 = MEMORY[0x277CE1428];
  v302 = MEMORY[0x277CE1428];
  v303 = MEMORY[0x277CE1428];
  v304 = MEMORY[0x277CE1428];
  v305 = WitnessTable;
  v52 = v268;
  v306 = v265;
  v307 = v268;
  v53 = MEMORY[0x277CE1410];
  v308 = MEMORY[0x277CE1410];
  v309 = MEMORY[0x277CE1410];
  v310 = MEMORY[0x277CE1410];
  v311 = MEMORY[0x277CE1410];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v298 = v46;
  v299 = v48;
  v300 = v51;
  v301 = v50;
  v302 = v50;
  v303 = v50;
  v304 = v50;
  v305 = WitnessTable;
  v306 = v49;
  v307 = v52;
  v308 = v53;
  v309 = v53;
  v310 = v53;
  v311 = v53;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v55 = OpaqueTypeMetadata2;
  v298 = OpaqueTypeMetadata2;
  v299 = OpaqueTypeConformance2;
  v56 = swift_getOpaqueTypeMetadata2();
  v298 = v55;
  v299 = OpaqueTypeConformance2;
  v57 = swift_getOpaqueTypeConformance2();
  v298 = v56;
  v299 = v57;
  swift_getOpaqueTypeMetadata2();
  v58 = sub_20C36C544();
  v59 = v255;
  v60 = swift_getWitnessTable();
  v298 = v59;
  v299 = v258;
  v300 = v58;
  v301 = v60;
  v302 = v257;
  sub_20C36CBE4();
  v298 = v56;
  v299 = v57;
  v296 = swift_getOpaqueTypeConformance2();
  v297 = MEMORY[0x277CE0790];
  v258 = MEMORY[0x277CDFAD8];
  v295 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_20C36CBC4();
  swift_getWitnessTable();
  v61 = sub_20C36C3F4();
  v62 = swift_getWitnessTable();
  v298 = v61;
  v63 = MEMORY[0x277D83B88];
  v299 = MEMORY[0x277D83B88];
  v64 = MEMORY[0x277D83BA8];
  v300 = v62;
  v301 = MEMORY[0x277D83BA8];
  v65 = swift_getOpaqueTypeMetadata2();
  v298 = v61;
  v299 = v63;
  v300 = v62;
  v301 = v64;
  v66 = swift_getOpaqueTypeConformance2();
  v298 = v65;
  v299 = v66;
  v67 = swift_getOpaqueTypeMetadata2();
  v298 = v65;
  v299 = v66;
  v68 = swift_getOpaqueTypeConformance2();
  v69 = sub_20C341484();
  v70 = MEMORY[0x277D85048];
  v298 = v67;
  v299 = MEMORY[0x277D85048];
  v300 = v68;
  v301 = v69;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C79F4E8, &qword_20C377470);
  v71 = sub_20C36C544();
  v72 = sub_20C36C7E4();
  v298 = v67;
  v299 = v70;
  v300 = v68;
  v301 = v69;
  v73 = swift_getOpaqueTypeConformance2();
  v74 = sub_20C3077A8(&qword_27C79F4F0, &qword_27C79F4E8, &qword_20C377470);
  v293 = v73;
  v294 = v74;
  v75 = swift_getWitnessTable();
  v298 = v71;
  v299 = v72;
  v76 = MEMORY[0x277CDE3A8];
  v300 = v75;
  v301 = MEMORY[0x277CDE3A8];
  v77 = swift_getOpaqueTypeMetadata2();
  v298 = v71;
  v299 = v72;
  v300 = v75;
  v301 = v76;
  v78 = swift_getOpaqueTypeConformance2();
  v298 = v77;
  v299 = v78;
  v79 = swift_getOpaqueTypeMetadata2();
  v298 = v77;
  v299 = v78;
  v80 = swift_getOpaqueTypeConformance2();
  v298 = v79;
  v299 = v80;
  v81 = swift_getOpaqueTypeMetadata2();
  v298 = v79;
  v299 = v80;
  v235 = swift_getOpaqueTypeConformance2();
  v236 = v81;
  v82 = sub_20C36C5B4();
  v83 = v262;
  OpaqueTypeMetadata2 = v82;
  v84 = sub_20C36C734();
  v250 = *(v84 - 8);
  v85 = *(v250 + 64);
  MEMORY[0x28223BE20](v84);
  v249 = (v222 - v86);
  v87 = sub_20C36C584();
  v245 = *(v87 - 8);
  v246 = v87;
  v88 = *(v245 + 64);
  MEMORY[0x28223BE20](v87);
  v90 = v222 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
  v258 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79F508, &qword_20C377488);
  v91 = *(*(v258 - 8) + 64);
  MEMORY[0x28223BE20](v258);
  v93 = v222 - v92;
  v257 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79F500, &qword_20C377480);
  v244 = *(v257 - 8);
  v94 = *(v244 + 64);
  v95 = MEMORY[0x28223BE20](v257);
  v97 = v222 - v96;
  v248 = *(v83 - 8);
  v98 = *(v248 + 64);
  MEMORY[0x28223BE20](v95);
  v247 = v222 - v99;
  v255 = v84;
  v100 = sub_20C36C734();
  v252 = *(v100 - 8);
  v253 = v100;
  v101 = *(v252 + 64);
  MEMORY[0x28223BE20](v100);
  v251 = v222 - v102;
  v103 = v259;
  v104 = v260;
  sub_20C360994(v259);
  v105 = v261;
  v269 = v261;
  v106 = v264;
  v270 = v264;
  v271 = v266;
  v272 = v267;
  v273 = v268;
  v274 = v265;
  swift_getKeyPath();
  sub_20C36CCE4();

  v107 = v291;
  if (v292)
  {
    if (v292 == 1)
    {
      v109 = v238;
      v108 = v239;
      (*(v239 + 16))(v238, v104, v103);
      v110 = (*(v108 + 80) + 72) & ~*(v108 + 80);
      v111 = swift_allocObject();
      *(v111 + 2) = v105;
      *(v111 + 3) = v106;
      v112 = v267;
      *(v111 + 4) = v266;
      *(v111 + 5) = v112;
      v113 = v265;
      *(v111 + 6) = v268;
      *(v111 + 7) = v113;
      *(v111 + 8) = v107;
      (*(v108 + 32))(&v111[v110], v109, v103);
      v283 = sub_20C36C5A4();
      v284 = v114;
      v115 = OpaqueTypeMetadata2;
      v116 = swift_getWitnessTable();
      sub_20C34559C(&v283, v115, v116);

      v268 = v299;
      v281 = v298;
      v282 = v299;
      sub_20C34559C(&v281, v115, v116);
      v281 = v283;
      v282 = v284;
      v117 = sub_20C36A700();
      v118 = v258;
      v279 = v258;
      v280 = v117;
      v119 = swift_getOpaqueTypeConformance2();
      v120 = v257;
      v279 = v257;
      v280 = v119;
      v121 = swift_getOpaqueTypeConformance2();
      v122 = v249;
      sub_20C36089C(&v281, v262, v115);
      v277 = v121;
      v278 = v116;
      v123 = v255;
      swift_getWitnessTable();
      sub_20C36AA40();
      v124 = v251;
      sub_20C3607A4(v122, v123);
      (*(v250 + 8))(v122, v123);
    }

    else
    {
      sub_20C361A4C(v103, v93);
      sub_20C36C804();
      sub_20C36CC24();
      v133 = sub_20C36A700();
      v134 = v258;
      sub_20C36CA34();
      sub_20C307858(v93, &qword_27C79F508, &qword_20C377488);
      sub_20C36C574();
      v298 = v134;
      v299 = v133;
      v135 = v134;
      v136 = swift_getOpaqueTypeConformance2();
      v137 = v247;
      v120 = v257;
      sub_20C36CAB4();
      (*(v245 + 8))(v90, v246);
      (*(v244 + 8))(v97, v120);
      v298 = v120;
      v299 = v136;
      v138 = swift_getOpaqueTypeConformance2();
      v139 = swift_getWitnessTable();
      v140 = v249;
      v141 = v137;
      v142 = v262;
      sub_20C3607A4(v137, v262);
      v275 = v138;
      v276 = v139;
      v118 = v135;
      v143 = v255;
      swift_getWitnessTable();
      sub_20C36AA40();
      v124 = v251;
      sub_20C3607A4(v140, v143);
      (*(v250 + 8))(v140, v143);
      (*(v248 + 8))(v141, v142);
    }
  }

  else
  {
    if (v291 - 2 >= 2)
    {
      if (v291)
      {
        v298 = 0;
        v299 = 0xE000000000000000;
        sub_20C36D044();

        v298 = 0xD000000000000017;
        v299 = 0x800000020C378200;
        v174 = sub_20C360994(v103);
        MEMORY[0x28223BE20](v174);
        v222[-6] = v105;
        v222[-5] = v106;
        v175 = v267;
        v222[-4] = v266;
        v222[-3] = v175;
        v176 = v265;
        v222[-2] = v268;
        v222[-1] = v176;
        swift_getKeyPath();
        sub_20C36CCE4();

        MEMORY[0x20F2F7910](v283, v284);

        MEMORY[0x20F2F7910](0xD000000000000017, 0x800000020C378220);
        v247 = v299;
        v248 = v298;
        sub_20C36CD54();
        if (qword_2810E8BF0 != -1)
        {
          swift_once();
        }

        v177 = qword_2810ED6B0;
        v178 = v259;
        v179 = sub_20C360994(v259);
        MEMORY[0x28223BE20](v179);
        v180 = v264;
        v222[-6] = v261;
        v222[-5] = v180;
        v181 = v267;
        v222[-4] = v266;
        v222[-3] = v181;
        v222[-2] = v268;
        v222[-1] = v176;
        swift_getKeyPath();
        sub_20C36CCE4();

        v182 = sub_20C36CD84();
        v249 = v183;
        v250 = v182;
        sub_20C36CD74();
        v184 = qword_2810ED6B0;
        v185 = sub_20C360994(v178);
        MEMORY[0x28223BE20](v185);
        v186 = v264;
        v222[-6] = v261;
        v222[-5] = v186;
        v187 = v267;
        v222[-4] = v266;
        v222[-3] = v187;
        v222[-2] = v268;
        v222[-1] = v176;
        swift_getKeyPath();
        sub_20C36CCE4();

        v248 = sub_20C36CD84();
        v189 = v188;
        sub_20C36CD54();
        v190 = qword_2810ED6B0;
        v191 = v178;
        v192 = sub_20C360994(v178);
        MEMORY[0x28223BE20](v192);
        v193 = v264;
        v222[-6] = v261;
        v222[-5] = v193;
        v194 = v267;
        v222[-4] = v266;
        v222[-3] = v194;
        v195 = v265;
        v222[-2] = v268;
        v222[-1] = v195;
        swift_getKeyPath();
        sub_20C36CCE4();

        v196 = sub_20C36CD84();
        v198 = v197;
        v199 = v223;
        v200 = v226;
        swift_storeEnumTagMultiPayload();
        v201 = v224;
        sub_20C362894(v250, v249, v248, v189, v196, v198, v199, v191, v224);

        (*(v225 + 8))(v199, v200);
        sub_20C36C804();
        sub_20C36CC24();
        v169 = sub_20C36AC0C();
        v170 = v230;
        v171 = v227;
        sub_20C36CA34();
        sub_20C307858(v201, &qword_27C79F5A0, &qword_20C3774D0);
        v173 = v231;
        v172 = v232;
        (*(v231 + 16))(v229, v170, v232);
      }

      else
      {
        sub_20C36CD54();
        v145 = v265;
        v144 = v266;
        v146 = v267;
        v147 = v268;
        if (qword_2810E8BF0 != -1)
        {
          swift_once();
        }

        v250 = qword_2810ED6B0;
        v148 = qword_2810ED6B0;
        v149 = sub_20C360994(v103);
        v249 = v222;
        MEMORY[0x28223BE20](v149);
        v222[-6] = v105;
        v222[-5] = v106;
        v222[-4] = v144;
        v222[-3] = v146;
        v222[-2] = v147;
        v222[-1] = v145;
        swift_getKeyPath();
        sub_20C36CCE4();

        v150 = sub_20C36CD84();
        v249 = v151;
        v250 = v150;
        sub_20C36CD54();
        v152 = qword_2810ED6B0;
        v153 = sub_20C360994(v103);
        MEMORY[0x28223BE20](v153);
        v154 = v264;
        v222[-6] = v261;
        v222[-5] = v154;
        v155 = v267;
        v222[-4] = v266;
        v222[-3] = v155;
        v222[-2] = v268;
        v222[-1] = v145;
        swift_getKeyPath();
        sub_20C36CCE4();

        v248 = sub_20C36CD84();
        v157 = v156;
        sub_20C36CD54();
        v158 = qword_2810ED6B0;
        v159 = sub_20C360994(v103);
        MEMORY[0x28223BE20](v159);
        v160 = v264;
        v222[-6] = v261;
        v222[-5] = v160;
        v161 = v267;
        v222[-4] = v266;
        v222[-3] = v161;
        v162 = v265;
        v222[-2] = v268;
        v222[-1] = v162;
        swift_getKeyPath();
        sub_20C36CCE4();

        v163 = sub_20C36CD84();
        v165 = v164;
        v166 = v223;
        v167 = v226;
        swift_storeEnumTagMultiPayload();
        v168 = v224;
        sub_20C362894(v250, v249, v248, v157, v163, v165, v166, v259, v224);

        (*(v225 + 8))(v166, v167);
        sub_20C36C804();
        sub_20C36CC24();
        v169 = sub_20C36AC0C();
        v170 = v230;
        v171 = v227;
        sub_20C36CA34();
        sub_20C307858(v168, &qword_27C79F5A0, &qword_20C3774D0);
        v173 = v231;
        v172 = v232;
        (*(v231 + 16))(v229, v170, v232);
      }

      swift_storeEnumTagMultiPayload();
      v298 = v171;
      v299 = v169;
      swift_getOpaqueTypeConformance2();
      v202 = v233;
      sub_20C36C724();
      sub_20C2FA154(v202, v243);
      swift_storeEnumTagMultiPayload();
      sub_20C36AB4C();
      v203 = sub_20C36A700();
      v127 = v258;
      v298 = v258;
      v299 = v203;
      v204 = swift_getOpaqueTypeConformance2();
      v205 = v257;
      v298 = v257;
      v299 = v204;
      swift_getOpaqueTypeConformance2();
      v132 = v241;
      sub_20C36C724();
      sub_20C307858(v202, &qword_27C79F598, &qword_20C3774C8);
      v206 = v170;
      v120 = v205;
      (*(v173 + 8))(v206, v172);
    }

    else
    {
      sub_20C361A4C(v103, v93);
      sub_20C36C804();
      sub_20C36CC24();
      v125 = sub_20C36A700();
      v126 = v258;
      sub_20C36CA34();
      sub_20C307858(v93, &qword_27C79F508, &qword_20C377488);
      sub_20C36C574();
      v127 = v126;
      v298 = v126;
      v299 = v125;
      v128 = swift_getOpaqueTypeConformance2();
      v129 = v247;
      v120 = v257;
      sub_20C36CAB4();
      (*(v245 + 8))(v90, v246);
      (*(v244 + 8))(v97, v120);
      v130 = v248;
      v131 = v262;
      (*(v248 + 16))(v243, v129, v262);
      swift_storeEnumTagMultiPayload();
      sub_20C36AB4C();
      v298 = v120;
      v299 = v128;
      swift_getOpaqueTypeConformance2();
      v132 = v241;
      sub_20C36C724();
      (*(v130 + 8))(v129, v131);
    }

    v207 = sub_20C36A700();
    v118 = v127;
    v298 = v127;
    v299 = v207;
    v208 = swift_getOpaqueTypeConformance2();
    v298 = v120;
    v299 = v208;
    v209 = swift_getOpaqueTypeConformance2();
    v210 = swift_getWitnessTable();
    v289 = v209;
    v290 = v210;
    v211 = v255;
    swift_getWitnessTable();
    sub_20C36AA40();
    v124 = v251;
    sub_20C36089C(v132, v211, v263);
    sub_20C307858(v132, &qword_27C79F4F8, &qword_20C377478);
  }

  v213 = v252;
  v212 = v253;
  v214 = sub_20C36A700();
  v298 = v118;
  v299 = v214;
  v215 = swift_getOpaqueTypeConformance2();
  v298 = v120;
  v299 = v215;
  v216 = swift_getOpaqueTypeConformance2();
  v217 = swift_getWitnessTable();
  v287 = v216;
  v288 = v217;
  v218 = swift_getWitnessTable();
  v219 = sub_20C36AA40();
  v285 = v218;
  v286 = v219;
  v220 = swift_getWitnessTable();
  sub_20C34559C(v124, v212, v220);
  return (*(v213 + 8))(v124, v212);
}

uint64_t sub_20C36637C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v208 = a2;
  v209 = a8;
  v214 = a6;
  v215 = a5;
  v213 = a3;
  v198 = a1;
  v194 = a9;
  v210 = a10;
  v15 = sub_20C36C764();
  v192 = *(v15 - 8);
  v193 = v15;
  v16 = *(v192 + 64);
  MEMORY[0x28223BE20](v15);
  v191 = &v152 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_20C36C7C4();
  v189 = *(v18 - 8);
  v190 = v18;
  v19 = *(v189 + 64);
  MEMORY[0x28223BE20](v18);
  v186 = &v152 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = sub_20C36C7E4();
  v188 = *(v204 - 8);
  v21 = *(v188 + 64);
  MEMORY[0x28223BE20](v204);
  v187 = &v152 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = sub_20C36C564();
  v206 = *(v185 - 8);
  v195 = *(v206 + 64);
  MEMORY[0x28223BE20](v185);
  v184 = &v152 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v237 = a4;
  v238 = a5;
  v211 = a4;
  v239 = a6;
  v240 = a7;
  v24 = a7;
  v207 = a7;
  v241 = a8;
  v242 = a10;
  v205 = type metadata accessor for ForYouSummaryView();
  v212 = *(v205 - 8);
  v197 = *(v212 + 64);
  MEMORY[0x28223BE20](v205);
  v183 = &v152 - v25;
  v201 = sub_20C36C394();
  OpaqueTypeMetadata2 = sub_20C36C344();
  v26 = type metadata accessor for ForYouItemContext();
  v203 = v26;
  v199 = sub_20C36C354();
  v196 = sub_20C36C374();
  v27 = sub_20C36B564(&qword_27C79D900, MEMORY[0x277D09808]);
  v28 = sub_20C36B564(&qword_27C79D908, MEMORY[0x277D09738]);
  v29 = sub_20C36B564(&qword_27C79D910, type metadata accessor for ForYouItemContext);
  v30 = sub_20C36B564(&qword_27C79D918, type metadata accessor for ForYouItemContext);
  v31 = sub_20C36B564(&qword_27C79D920, type metadata accessor for ForYouItemContext);
  v202 = v31;
  v32 = sub_20C36B564(&qword_27C79D928, MEMORY[0x277D09748]);
  v33 = sub_20C36B564(&qword_27C79D930, MEMORY[0x277D097A8]);
  v237 = v201;
  v238 = a4;
  v239 = OpaqueTypeMetadata2;
  v240 = v26;
  v241 = v199;
  v242 = v196;
  v243 = v27;
  v244 = v24;
  v245 = v28;
  v246 = v29;
  v247 = v30;
  v248 = v31;
  v249 = v32;
  v250 = v33;
  v34 = sub_20C36C284();
  swift_getTupleTypeMetadata2();
  v201 = sub_20C36CE94();
  WitnessTable = swift_getWitnessTable();
  v37 = v214;
  v36 = v215;
  v237 = v34;
  v238 = v214;
  v38 = MEMORY[0x277CE1428];
  v239 = v215;
  v240 = MEMORY[0x277CE1428];
  v241 = MEMORY[0x277CE1428];
  v242 = MEMORY[0x277CE1428];
  v243 = MEMORY[0x277CE1428];
  v244 = WitnessTable;
  v40 = v209;
  v39 = v210;
  v245 = v210;
  v246 = v209;
  v41 = MEMORY[0x277CE1410];
  v247 = MEMORY[0x277CE1410];
  v248 = MEMORY[0x277CE1410];
  v249 = MEMORY[0x277CE1410];
  v250 = MEMORY[0x277CE1410];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v237 = v34;
  v238 = v37;
  v239 = v36;
  v240 = v38;
  v241 = v38;
  v242 = v38;
  v243 = v38;
  v244 = WitnessTable;
  v245 = v39;
  v246 = v40;
  v247 = v41;
  v248 = v41;
  v249 = v41;
  v250 = v41;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v43 = OpaqueTypeMetadata2;
  v237 = OpaqueTypeMetadata2;
  v238 = OpaqueTypeConformance2;
  v44 = swift_getOpaqueTypeMetadata2();
  v237 = v43;
  v238 = OpaqueTypeConformance2;
  v45 = swift_getOpaqueTypeConformance2();
  v237 = v44;
  v238 = v45;
  swift_getOpaqueTypeMetadata2();
  v46 = sub_20C36C544();
  v47 = v201;
  v48 = swift_getWitnessTable();
  v237 = v47;
  v238 = v203;
  v239 = v46;
  v240 = v48;
  v241 = v202;
  sub_20C36CBE4();
  v237 = v44;
  v238 = v45;
  v235 = swift_getOpaqueTypeConformance2();
  v236 = MEMORY[0x277CE0790];
  v234 = swift_getWitnessTable();
  swift_getWitnessTable();
  OpaqueTypeMetadata2 = sub_20C36CBC4();
  v199 = swift_getWitnessTable();
  v49 = sub_20C36C3F4();
  v167 = *(v49 - 8);
  v50 = *(v167 + 64);
  MEMORY[0x28223BE20](v49);
  v202 = &v152 - v51;
  v52 = swift_getWitnessTable();
  v237 = v49;
  v53 = v49;
  v159 = v49;
  v54 = MEMORY[0x277D83B88];
  v238 = MEMORY[0x277D83B88];
  v239 = v52;
  v240 = MEMORY[0x277D83BA8];
  v55 = v52;
  v160 = v52;
  v56 = MEMORY[0x277D83BA8];
  v57 = swift_getOpaqueTypeMetadata2();
  v168 = *(v57 - 8);
  v58 = *(v168 + 64);
  MEMORY[0x28223BE20](v57);
  v201 = &v152 - v59;
  v237 = v53;
  v238 = v54;
  v239 = v55;
  v240 = v56;
  v60 = swift_getOpaqueTypeConformance2();
  v237 = v57;
  v238 = v60;
  v161 = v57;
  v162 = v60;
  v61 = v60;
  v62 = swift_getOpaqueTypeMetadata2();
  v170 = *(v62 - 8);
  v63 = *(v170 + 64);
  MEMORY[0x28223BE20](v62);
  v203 = &v152 - v64;
  v237 = v57;
  v238 = v61;
  v65 = swift_getOpaqueTypeConformance2();
  v66 = sub_20C341484();
  v67 = MEMORY[0x277D85048];
  v237 = v62;
  v238 = MEMORY[0x277D85048];
  v68 = v62;
  v155 = v62;
  v156 = v65;
  v239 = v65;
  v240 = v66;
  v154 = v66;
  v166 = swift_getOpaqueTypeMetadata2();
  v171 = *(v166 - 8);
  v69 = *(v171 + 64);
  MEMORY[0x28223BE20](v166);
  v163 = &v152 - v70;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C79F4E8, &qword_20C377470);
  v71 = sub_20C36C544();
  v169 = *(v71 - 8);
  v72 = *(v169 + 64);
  MEMORY[0x28223BE20](v71);
  v165 = &v152 - v73;
  v237 = v68;
  v238 = v67;
  v239 = v65;
  v240 = v66;
  v74 = swift_getOpaqueTypeConformance2();
  v164 = v74;
  v75 = sub_20C3077A8(&qword_27C79F4F0, &qword_27C79F4E8, &qword_20C377470);
  v232 = v74;
  v233 = v75;
  v76 = swift_getWitnessTable();
  v237 = v71;
  v77 = v71;
  v157 = v71;
  v78 = v204;
  v238 = v204;
  v239 = v76;
  v240 = MEMORY[0x277CDE3A8];
  v79 = v76;
  v158 = v76;
  v80 = MEMORY[0x277CDE3A8];
  v81 = swift_getOpaqueTypeMetadata2();
  v181 = *(v81 - 8);
  v82 = *(v181 + 64);
  MEMORY[0x28223BE20](v81);
  v153 = &v152 - v83;
  v237 = v77;
  v238 = v78;
  v239 = v79;
  v240 = v80;
  v84 = swift_getOpaqueTypeConformance2();
  v237 = v81;
  v238 = v84;
  v85 = swift_getOpaqueTypeMetadata2();
  v178 = *(v85 - 8);
  v86 = *(v178 + 64);
  MEMORY[0x28223BE20](v85);
  v176 = &v152 - v87;
  v182 = v81;
  v237 = v81;
  v238 = v84;
  v173 = v84;
  v88 = swift_getOpaqueTypeConformance2();
  v180 = v85;
  v237 = v85;
  v238 = v88;
  v175 = v88;
  v179 = swift_getOpaqueTypeMetadata2();
  v177 = *(v179 - 8);
  v89 = *(v177 + 64);
  v90 = MEMORY[0x28223BE20](v179);
  v172 = &v152 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v90);
  v174 = &v152 - v92;
  sub_20C36C804();
  v93 = v210;
  v224 = v211;
  v225 = v215;
  v226 = v214;
  v227 = v207;
  v228 = v209;
  v229 = v210;
  v230 = v208;
  v94 = v213;
  v231 = v213;
  sub_20C36C404();
  v95 = v205;
  v237 = sub_20C360AB0(v205);
  v96 = v212;
  v199 = *(v212 + 16);
  OpaqueTypeMetadata2 = v212 + 16;
  v97 = v183;
  (v199)(v183, v94, v95);
  v98 = v206;
  v100 = v184;
  v99 = v185;
  (*(v206 + 16))(v184, v198, v185);
  v101 = *(v96 + 80);
  v102 = (v101 + 64) & ~v101;
  v103 = v102 + v197;
  v196 = v102;
  v197 = v101 | 7;
  v198 = v103;
  v104 = (v103 + 7) & 0xFFFFFFFFFFFFFFF8;
  v105 = (*(v98 + 80) + v104 + 8) & ~*(v98 + 80);
  v106 = swift_allocObject();
  v108 = v214;
  v107 = v215;
  *(v106 + 2) = v211;
  *(v106 + 3) = v107;
  v109 = v207;
  *(v106 + 4) = v108;
  *(v106 + 5) = v109;
  *(v106 + 6) = v209;
  *(v106 + 7) = v93;
  v110 = *(v96 + 32);
  v212 = v96 + 32;
  v195 = v110;
  v111 = &v106[v102];
  v112 = v205;
  v110(v111, v97, v205);
  *&v106[v104] = v208;
  (*(v206 + 32))(&v106[v105], v100, v99);

  v113 = v202;
  v114 = v159;
  sub_20C36CAA4();

  (*(v167 + 8))(v113, v114);
  v115 = v97;
  v116 = v112;
  (v199)(v97, v213, v112);
  v117 = swift_allocObject();
  v118 = v210;
  v119 = v214;
  v120 = v215;
  *(v117 + 2) = v211;
  *(v117 + 3) = v120;
  v121 = v207;
  *(v117 + 4) = v119;
  *(v117 + 5) = v121;
  v122 = v209;
  *(v117 + 6) = v209;
  *(v117 + 7) = v118;
  v195(&v117[v196], v115, v116);
  v123 = v161;
  v124 = v201;
  sub_20C36CA04();

  (*(v168 + 8))(v124, v123);
  v125 = v116;
  (v199)(v115, v213, v116);
  v126 = v186;
  v127 = swift_allocObject();
  v128 = v211;
  *(v127 + 2) = v211;
  *(v127 + 3) = v120;
  *(v127 + 4) = v119;
  *(v127 + 5) = v121;
  v129 = v210;
  *(v127 + 6) = v122;
  *(v127 + 7) = v129;
  v195(&v127[v196], v115, v125);
  v130 = v163;
  v131 = v155;
  v132 = v203;
  sub_20C36CA44();

  (*(v170 + 8))(v132, v131);
  sub_20C36CC14();
  v216 = v128;
  v217 = v215;
  v218 = v214;
  v219 = v121;
  v220 = v122;
  v221 = v129;
  v133 = v153;
  v222 = v213;
  v223 = v208;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79F680, &qword_20C3775F0);
  sub_20C36B424();
  v134 = v165;
  v135 = v166;
  sub_20C36CA84();
  (*(v171 + 8))(v130, v135);
  v136 = v187;
  sub_20C36C7D4();
  v137 = v157;
  v138 = v204;
  sub_20C36CA24();
  (*(v188 + 8))(v136, v138);
  (*(v169 + 8))(v134, v137);
  sub_20C36C754();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79F6A8, &qword_20C377600);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C377420;
  LOBYTE(v137) = sub_20C36C824();
  *(inited + 32) = v137;
  v140 = sub_20C36C804();
  *(inited + 33) = v140;
  sub_20C36C814();
  sub_20C36C814();
  if (sub_20C36C814() != v137)
  {
    sub_20C36C814();
  }

  sub_20C36C814();
  if (sub_20C36C814() != v140)
  {
    sub_20C36C814();
  }

  v141 = v176;
  v142 = v182;
  sub_20C36C9E4();
  (*(v189 + 8))(v126, v190);
  (*(v181 + 8))(v133, v142);
  v143 = v191;
  sub_20C36C754();
  sub_20C36C804();
  v144 = v172;
  v145 = v180;
  v146 = v175;
  sub_20C36CA14();
  (*(v192 + 8))(v143, v193);
  (*(v178 + 8))(v141, v145);
  v237 = v145;
  v238 = v146;
  v147 = swift_getOpaqueTypeConformance2();
  v148 = v174;
  v149 = v179;
  sub_20C34559C(v144, v179, v147);
  v150 = *(v177 + 8);
  v150(v144, v149);
  sub_20C34559C(v148, v149, v147);
  return (v150)(v148, v149);
}

uint64_t sub_20C3677B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v31 = a8;
  v30 = a7;
  v32 = a6;
  v37 = a5;
  v38 = a4;
  v33 = a3;
  v35 = a2;
  v34 = a1;
  v36 = a9;
  sub_20C36C394();
  v27[1] = sub_20C36C344();
  v29 = type metadata accessor for ForYouItemContext();
  v27[0] = sub_20C36C354();
  sub_20C36C374();
  sub_20C36B564(&qword_27C79D900, MEMORY[0x277D09808]);
  sub_20C36B564(&qword_27C79D908, MEMORY[0x277D09738]);
  sub_20C36B564(&qword_27C79D910, type metadata accessor for ForYouItemContext);
  sub_20C36B564(&qword_27C79D918, type metadata accessor for ForYouItemContext);
  v28 = sub_20C36B564(&qword_27C79D920, type metadata accessor for ForYouItemContext);
  sub_20C36B564(&qword_27C79D928, MEMORY[0x277D09748]);
  sub_20C36B564(&qword_27C79D930, MEMORY[0x277D097A8]);
  sub_20C36C284();
  swift_getTupleTypeMetadata2();
  v27[2] = sub_20C36CE94();
  WitnessTable = swift_getWitnessTable();
  v10 = MEMORY[0x277CE1428];
  v11 = v31;
  v12 = v30;
  v13 = MEMORY[0x277CE1410];
  swift_getOpaqueTypeMetadata2();
  v55 = v10;
  v56 = v10;
  v57 = WitnessTable;
  v58 = v31;
  v59 = v30;
  v60 = v13;
  v61 = v13;
  v62 = v13;
  v63 = v13;
  swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  v52 = sub_20C36C544();
  v53 = swift_getWitnessTable();
  v54 = v28;
  sub_20C36CBE4();
  v50 = OpaqueTypeMetadata2;
  v51 = OpaqueTypeConformance2;
  v48 = swift_getOpaqueTypeConformance2();
  v49 = MEMORY[0x277CE0790];
  v47 = swift_getWitnessTable();
  swift_getWitnessTable();
  v16 = sub_20C36CBC4();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = v27 - v22;
  v39 = v33;
  v40 = v38;
  v41 = v37;
  v42 = v32;
  v43 = v12;
  v44 = v11;
  v45 = v34;
  v46 = v35;
  sub_20C36C6D4();
  sub_20C36CBB4();
  v24 = swift_getWitnessTable();
  sub_20C34559C(v21, v16, v24);
  v25 = *(v17 + 8);
  v25(v21, v16);
  sub_20C34559C(v23, v16, v24);
  return (v25)(v23, v16);
}

uint64_t sub_20C367E30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v71 = a8;
  v72 = a7;
  v69 = a5;
  v70 = a4;
  v66 = a2;
  v67 = a1;
  v68 = a9;
  v77 = a3;
  v78 = a4;
  v61 = a3;
  v79 = a5;
  v80 = a6;
  v60 = a6;
  v81 = a7;
  v82 = a8;
  v65 = type metadata accessor for ForYouSummaryView();
  v63 = *(v65 - 8);
  v64 = *(v63 + 64);
  MEMORY[0x28223BE20](v65);
  v62 = v55 - v11;
  v58 = sub_20C36C394();
  v57 = sub_20C36C344();
  v12 = type metadata accessor for ForYouItemContext();
  v73 = v12;
  v56 = sub_20C36C354();
  v13 = sub_20C36C374();
  v14 = sub_20C36B564(&qword_27C79D900, MEMORY[0x277D09808]);
  v15 = sub_20C36B564(&qword_27C79D908, MEMORY[0x277D09738]);
  v16 = sub_20C36B564(&qword_27C79D910, type metadata accessor for ForYouItemContext);
  v17 = sub_20C36B564(&qword_27C79D918, type metadata accessor for ForYouItemContext);
  v18 = sub_20C36B564(&qword_27C79D920, type metadata accessor for ForYouItemContext);
  v59 = v18;
  v19 = sub_20C36B564(&qword_27C79D928, MEMORY[0x277D09748]);
  v20 = sub_20C36B564(&qword_27C79D930, MEMORY[0x277D097A8]);
  v77 = v58;
  v78 = a3;
  v79 = v57;
  v80 = v12;
  v81 = v56;
  v82 = v13;
  v83 = v14;
  v84 = a6;
  v85 = v15;
  v86 = v16;
  v87 = v17;
  v88 = v18;
  v89 = v19;
  v90 = v20;
  v21 = sub_20C36C284();
  swift_getTupleTypeMetadata2();
  v58 = sub_20C36CE94();
  WitnessTable = swift_getWitnessTable();
  v23 = v69;
  v77 = v21;
  v78 = v69;
  v24 = MEMORY[0x277CE1428];
  v25 = v70;
  v26 = v71;
  v79 = v70;
  v80 = MEMORY[0x277CE1428];
  v81 = MEMORY[0x277CE1428];
  v82 = MEMORY[0x277CE1428];
  v83 = MEMORY[0x277CE1428];
  v84 = WitnessTable;
  v27 = v72;
  v85 = v71;
  v86 = v72;
  v28 = MEMORY[0x277CE1410];
  v87 = MEMORY[0x277CE1410];
  v88 = MEMORY[0x277CE1410];
  v89 = MEMORY[0x277CE1410];
  v90 = MEMORY[0x277CE1410];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v77 = v21;
  v78 = v23;
  v79 = v25;
  v80 = v24;
  v81 = v24;
  v82 = v24;
  v83 = v24;
  v84 = WitnessTable;
  v85 = v26;
  v86 = v27;
  v87 = v28;
  v88 = v28;
  v89 = v28;
  v90 = v28;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v77 = OpaqueTypeMetadata2;
  v78 = OpaqueTypeConformance2;
  v31 = swift_getOpaqueTypeMetadata2();
  v57 = v31;
  v77 = OpaqueTypeMetadata2;
  v78 = OpaqueTypeConformance2;
  v56 = swift_getOpaqueTypeConformance2();
  v77 = v31;
  v78 = v56;
  v55[1] = MEMORY[0x277CDEBD8];
  swift_getOpaqueTypeMetadata2();
  v32 = sub_20C36C544();
  v55[0] = v32;
  v33 = v58;
  v34 = swift_getWitnessTable();
  v77 = v33;
  v78 = v73;
  v79 = v32;
  v80 = v34;
  v81 = v59;
  v35 = sub_20C36CBE4();
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  v38 = MEMORY[0x28223BE20](v35);
  v40 = v55 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v42 = v55 - v41;
  v43 = v63;
  v44 = v62;
  v45 = v65;
  (*(v63 + 16))(v62, v66, v65);
  v46 = (*(v43 + 80) + 64) & ~*(v43 + 80);
  v47 = swift_allocObject();
  v48 = v70;
  *(v47 + 2) = v61;
  *(v47 + 3) = v48;
  v49 = v60;
  *(v47 + 4) = v69;
  *(v47 + 5) = v49;
  v50 = v71;
  *(v47 + 6) = v72;
  *(v47 + 7) = v50;
  (*(v43 + 32))(&v47[v46], v44, v45);

  v77 = v57;
  v78 = v56;
  v75 = swift_getOpaqueTypeConformance2();
  v76 = MEMORY[0x277CE0790];
  v51 = swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_20C36CBD4();
  v74 = v51;
  v52 = swift_getWitnessTable();
  sub_20C34559C(v40, v35, v52);
  v53 = *(v36 + 8);
  v53(v40, v35);
  sub_20C34559C(v42, v35, v52);
  return (v53)(v42, v35);
}

uint64_t sub_20C3685D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v153 = a8;
  v150 = a7;
  v148 = a6;
  v143 = a5;
  v151 = a3;
  v147 = a2;
  v138 = a1;
  v139 = a9;
  v152 = a10;
  v137 = sub_20C36C584();
  v136 = *(v137 - 8);
  v12 = *(v136 + 64);
  MEMORY[0x28223BE20](v137);
  v135 = &v106 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_20C36C334();
  v133 = *(v134 - 8);
  v14 = *(v133 + 64);
  v15 = MEMORY[0x28223BE20](v134);
  v131 = &v106 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = *(a6 - 1);
  v17 = *(v132 + 64);
  MEMORY[0x28223BE20](v15);
  v146 = &v106 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = sub_20C36C394();
  v145 = sub_20C36C344();
  v19 = type metadata accessor for ForYouItemContext();
  v20 = sub_20C36C354();
  v21 = sub_20C36C374();
  v22 = sub_20C36B564(&qword_27C79D900, MEMORY[0x277D09808]);
  v23 = sub_20C36B564(&qword_27C79D908, MEMORY[0x277D09738]);
  v24 = sub_20C36B564(&qword_27C79D910, type metadata accessor for ForYouItemContext);
  v25 = sub_20C36B564(&qword_27C79D918, type metadata accessor for ForYouItemContext);
  v26 = sub_20C36B564(&qword_27C79D920, type metadata accessor for ForYouItemContext);
  v27 = sub_20C36B564(&qword_27C79D928, MEMORY[0x277D09748]);
  v28 = sub_20C36B564(&qword_27C79D930, MEMORY[0x277D097A8]);
  v162 = v149;
  v163 = a4;
  v144 = a4;
  v164 = v145;
  v165 = v19;
  v166 = v20;
  v167 = v21;
  v29 = v150;
  v168 = v22;
  v169 = v150;
  v170 = v23;
  v171 = v24;
  v172 = v25;
  v173 = v26;
  v174 = v27;
  v175 = v28;
  v30 = sub_20C36C284();
  v107 = *(v30 - 8);
  v110 = *(v107 + 64);
  MEMORY[0x28223BE20](v30);
  v145 = &v106 - v31;
  v32 = v143;
  v162 = a4;
  v163 = v143;
  v33 = v148;
  v164 = v148;
  v165 = v29;
  v34 = v153;
  v35 = v152;
  v166 = v153;
  v167 = v152;
  v141 = type metadata accessor for ForYouSummaryView();
  v149 = *(v141 - 8);
  v111 = *(v149 + 64);
  MEMORY[0x28223BE20](v141);
  v142 = &v106 - v36;
  WitnessTable = swift_getWitnessTable();
  v162 = v30;
  v163 = v33;
  v140 = v30;
  v38 = MEMORY[0x277CE1428];
  v164 = v32;
  v165 = MEMORY[0x277CE1428];
  v166 = MEMORY[0x277CE1428];
  v167 = MEMORY[0x277CE1428];
  v168 = MEMORY[0x277CE1428];
  v169 = WitnessTable;
  v112 = WitnessTable;
  v170 = v35;
  v171 = v34;
  v39 = v34;
  v40 = MEMORY[0x277CE1410];
  v172 = MEMORY[0x277CE1410];
  v173 = MEMORY[0x277CE1410];
  v174 = MEMORY[0x277CE1410];
  v175 = MEMORY[0x277CE1410];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v130 = *(OpaqueTypeMetadata2 - 8);
  v42 = *(v130 + 64);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v117 = &v106 - v43;
  v162 = v30;
  v163 = v33;
  v164 = v32;
  v165 = v38;
  v166 = v38;
  v167 = v38;
  v168 = v38;
  v169 = WitnessTable;
  v170 = v35;
  v171 = v39;
  v172 = v40;
  v173 = v40;
  v174 = v40;
  v175 = v40;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v118 = OpaqueTypeMetadata2;
  v162 = OpaqueTypeMetadata2;
  v163 = OpaqueTypeConformance2;
  v45 = OpaqueTypeConformance2;
  v119 = OpaqueTypeConformance2;
  v46 = swift_getOpaqueTypeMetadata2();
  v121 = v46;
  v125 = *(v46 - 8);
  v47 = *(v125 + 64);
  MEMORY[0x28223BE20](v46);
  v116 = &v106 - v48;
  v162 = OpaqueTypeMetadata2;
  v163 = v45;
  v122 = swift_getOpaqueTypeConformance2();
  v162 = v46;
  v163 = v122;
  v126 = MEMORY[0x277CDEBD8];
  v123 = swift_getOpaqueTypeMetadata2();
  v128 = *(v123 - 8);
  v49 = *(v128 + 64);
  MEMORY[0x28223BE20](v123);
  v115 = &v106 - v50;
  v127 = sub_20C36C544();
  v129 = *(v127 - 8);
  v51 = *(v129 + 64);
  v52 = MEMORY[0x28223BE20](v127);
  v120 = &v106 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52);
  v124 = &v106 - v54;
  v55 = v149;
  v56 = *(v149 + 16);
  v113 = v149 + 16;
  v114 = v56;
  v57 = v142;
  v58 = v141;
  v56(v142, v151, v141);
  v59 = v107;
  v60 = v140;
  (*(v107 + 16))(v145, v147, v140);
  v61 = *(v55 + 80);
  v62 = (v61 + 64) & ~v61;
  v109 = v62 + v111;
  v108 = v62;
  v111 = v61 | 7;
  v63 = (v109 + *(v59 + 80)) & ~*(v59 + 80);
  v64 = swift_allocObject();
  v65 = v144;
  v64[2] = v144;
  v64[3] = v32;
  v66 = v150;
  v64[4] = v148;
  v64[5] = v66;
  v67 = v152;
  v64[6] = v153;
  v64[7] = v67;
  v68 = *(v55 + 32);
  v149 = v55 + 32;
  v110 = v68;
  v69 = v64 + v62;
  v70 = v64;
  v106 = v64;
  v68(v69, v57, v58);
  (*(v59 + 32))(v70 + v63, v145, v60);
  sub_20C360994(v58);
  v154 = v65;
  v155 = v32;
  v71 = v148;
  v156 = v148;
  v157 = v66;
  v72 = v66;
  v73 = v153;
  v74 = v152;
  v158 = v153;
  v159 = v152;
  swift_getKeyPath();
  sub_20C36CCE4();

  v145 = sub_20C360A5C(v58);
  v107 = v75;
  v76 = swift_allocObject();
  v77 = v65;
  v76[2] = v65;
  v76[3] = v32;
  v78 = v71;
  v76[4] = v71;
  v76[5] = v72;
  v79 = v72;
  v76[6] = v73;
  v76[7] = v74;
  v80 = swift_allocObject();
  v80[2] = v77;
  v80[3] = v32;
  v80[4] = v78;
  v80[5] = v79;
  v80[6] = v73;
  v80[7] = v74;
  v81 = v131;
  sub_20C36C324();
  v82 = v117;
  v83 = v146;
  sub_20C36C2E4();

  (*(v133 + 8))(v81, v134);
  (*(v132 + 8))(v83, v78);
  sub_20C36C264();
  v84 = v135;
  sub_20C36CF64();

  v85 = v116;
  v86 = v118;
  sub_20C36CAB4();
  (*(v136 + 8))(v84, v137);
  (*(v130 + 8))(v82, v86);
  sub_20C36C804();
  sub_20C36CC24();
  v87 = v115;
  v88 = v121;
  v89 = v122;
  sub_20C36CA34();
  v90 = v88;
  (*(v125 + 8))(v85, v88);
  v91 = v142;
  v92 = v141;
  v114(v142, v151, v141);
  v93 = (v109 + 7) & 0xFFFFFFFFFFFFFFF8;
  v94 = swift_allocObject();
  v95 = v143;
  *(v94 + 2) = v144;
  *(v94 + 3) = v95;
  v96 = v150;
  *(v94 + 4) = v78;
  *(v94 + 5) = v96;
  v97 = v152;
  *(v94 + 6) = v153;
  *(v94 + 7) = v97;
  v110(&v94[v108], v91, v92);
  *&v94[v93] = v138;
  v162 = v90;
  v163 = v89;
  v98 = swift_getOpaqueTypeConformance2();
  v99 = v120;
  v100 = v123;
  sub_20C36CA94();

  (*(v128 + 8))(v87, v100);
  v160 = v98;
  v161 = MEMORY[0x277CE0790];
  v101 = v127;
  v102 = swift_getWitnessTable();
  v103 = v124;
  sub_20C34559C(v99, v101, v102);
  v104 = *(v129 + 8);
  v104(v99, v101);
  sub_20C34559C(v103, v101, v102);
  return (v104)(v103, v101);
}

uint64_t sub_20C369554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v37 = a2;
  v36 = type metadata accessor for ForYouSummaryAction();
  v14 = *(v36 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v36);
  v17 = &v29 - v16;
  v38 = a3;
  v39 = a4;
  v40 = a5;
  v41 = a6;
  v42 = a7;
  v43 = a8;
  v18 = type metadata accessor for ForYouSummaryView();
  v35 = sub_20C360994(v18);
  v34 = sub_20C36C394();
  v33 = sub_20C36C344();
  v32 = type metadata accessor for ForYouItemContext();
  v31 = sub_20C36C354();
  v30 = sub_20C36C374();
  v19 = sub_20C36B564(&qword_27C79D900, MEMORY[0x277D09808]);
  v20 = sub_20C36B564(&qword_27C79D908, MEMORY[0x277D09738]);
  v21 = sub_20C36B564(&qword_27C79D910, type metadata accessor for ForYouItemContext);
  v22 = sub_20C36B564(&qword_27C79D918, type metadata accessor for ForYouItemContext);
  v23 = sub_20C36B564(&qword_27C79D920, type metadata accessor for ForYouItemContext);
  v24 = sub_20C36B564(&qword_27C79D928, MEMORY[0x277D09748]);
  v25 = sub_20C36B564(&qword_27C79D930, MEMORY[0x277D097A8]);
  v38 = v34;
  v39 = a3;
  v40 = v33;
  v41 = v32;
  v42 = v31;
  v43 = v30;
  v44 = v19;
  v45 = a6;
  v46 = v20;
  v47 = v21;
  v48 = v22;
  v49 = v23;
  v50 = v24;
  v51 = v25;
  v26 = sub_20C36C284();
  MEMORY[0x20F2F6D90](v26);
  v27 = v36;
  swift_storeEnumTagMultiPayload();
  sub_20C36CCF4();

  return (*(v14 + 8))(v17, v27);
}

uint64_t sub_20C369884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22 = a2;
  v14 = type metadata accessor for ForYouSummaryAction();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = (&v21 - v17);
  v23 = a3;
  v24 = a4;
  v25 = a5;
  v26 = a6;
  v27 = a7;
  v28 = a8;
  v19 = type metadata accessor for ForYouSummaryView();
  sub_20C360994(v19);
  *v18 = v22;
  swift_storeEnumTagMultiPayload();
  sub_20C36CCF4();

  return (*(v15 + 8))(v18, v14);
}

uint64_t sub_20C3699C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v42 = a8;
  v41 = a7;
  v33[1] = a5;
  v34 = a4;
  v38 = a3;
  v40 = a11;
  v39 = a10;
  v37 = a9;
  v12 = type metadata accessor for ForYouItemContext();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v33[0] = v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_20C36C394();
  v35 = sub_20C36C344();
  v15 = sub_20C36C354();
  v16 = sub_20C36C374();
  v17 = sub_20C36B564(&qword_27C79D900, MEMORY[0x277D09808]);
  v18 = sub_20C36B564(&qword_27C79D908, MEMORY[0x277D09738]);
  v19 = sub_20C36B564(&qword_27C79D910, type metadata accessor for ForYouItemContext);
  v20 = sub_20C36B564(&qword_27C79D918, type metadata accessor for ForYouItemContext);
  v21 = sub_20C36B564(&qword_27C79D920, type metadata accessor for ForYouItemContext);
  v22 = sub_20C36B564(&qword_27C79D928, MEMORY[0x277D09748]);
  v23 = sub_20C36B564(&qword_27C79D930, MEMORY[0x277D097A8]);
  *&v46 = v36;
  *(&v46 + 1) = a6;
  v47 = v35;
  v48 = v12;
  v36 = v12;
  v49 = v15;
  v50 = v16;
  v51 = v17;
  v24 = v37;
  v52 = v37;
  v53 = v18;
  v54 = v19;
  v55 = v20;
  v56 = v21;
  v57 = v22;
  v58 = v23;
  v25 = sub_20C36C284();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v29 = v33 - v28;
  *&v46 = a6;
  *(&v46 + 1) = v41;
  v47 = v42;
  v48 = v24;
  v49 = v39;
  v50 = v40;
  v30 = type metadata accessor for ForYouSummaryView();
  result = sub_20C360BB4(v30);
  if (result)
  {
    v45 = v34;
    sub_20C36CE94();
    swift_getWitnessTable();
    sub_20C36CF74();
    v44 = v46;
    v43 = sub_20C360AB0(v30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79F6B8, &qword_20C377658);
    result = sub_20C36CFB4();
    if (result)
    {
      sub_20C360AB0(v30);
      sub_20C36CEB4();
      v32 = v33[0];
      MEMORY[0x20F2F6DB0](v25);
      (*(v26 + 8))(v29, v25);
      sub_20C36C554();
      return sub_20C35DDCC(v32);
    }
  }

  return result;
}

double sub_20C369EC0@<D0>(double *a1@<X8>)
{
  sub_20C36C524();
  v3 = v2;
  sub_20C36C514();
  result = v3 / v4;
  *a1 = result;
  return result;
}

void sub_20C369F00(uint64_t a1, double *a2)
{
  v2 = round(*a2);
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    if (v2 <= -9.22337204e18)
    {
      __break(1u);
    }

    else if (v2 < 9.22337204e18)
    {
      v3 = v2;
      v4 = type metadata accessor for ForYouSummaryView();
      sub_20C360B04(v3, v4);
      return;
    }

    __break(1u);
  }
}

uint64_t sub_20C369FA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v53 = a2;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79F698, &qword_20C3775F8);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v55 = &v43 - v20;
  v65 = a3;
  v66 = a4;
  v67 = a5;
  v68 = a6;
  v69 = a7;
  v70 = a8;
  v52 = type metadata accessor for ForYouSummaryView();
  v54 = a1;
  sub_20C360994(v52);
  v59 = a3;
  v60 = a4;
  v56 = a4;
  v57 = a5;
  v61 = a5;
  v62 = a6;
  v58 = a7;
  v63 = a7;
  v64 = a8;
  swift_getKeyPath();
  sub_20C36CCE4();

  if (v65 == 1)
  {
    v21 = sub_20C36C394();
    v50 = sub_20C36C344();
    v49 = type metadata accessor for ForYouItemContext();
    v48 = sub_20C36C354();
    v47 = sub_20C36C374();
    v45 = sub_20C36B564(&qword_27C79D900, MEMORY[0x277D09808]);
    v44 = sub_20C36B564(&qword_27C79D908, MEMORY[0x277D09738]);
    v22 = sub_20C36B564(&qword_27C79D910, type metadata accessor for ForYouItemContext);
    v23 = sub_20C36B564(&qword_27C79D918, type metadata accessor for ForYouItemContext);
    v51 = a9;
    v24 = v23;
    v25 = sub_20C36B564(&qword_27C79D920, type metadata accessor for ForYouItemContext);
    v26 = sub_20C36B564(&qword_27C79D928, MEMORY[0x277D09748]);
    v27 = v55;
    v46 = a8;
    v28 = v18;
    v29 = v17;
    v30 = v26;
    v31 = sub_20C36B564(&qword_27C79D930, MEMORY[0x277D097A8]);
    v65 = v21;
    v66 = a3;
    v67 = v50;
    v68 = v49;
    v69 = v48;
    v70 = v47;
    v71 = v45;
    v72 = a6;
    v73 = v44;
    v74 = v22;
    v75 = v24;
    v76 = v25;
    v77 = v30;
    v78 = v31;
    v17 = v29;
    v18 = v28;
    sub_20C36C284();
    sub_20C36CE74();
    v32 = v52;
    sub_20C360B5C(v52);
    sub_20C36C1A4();
    LOBYTE(v25) = sub_20C36C854();
    v33 = sub_20C360994(v32);
    MEMORY[0x28223BE20](v33);
    v34 = v56;
    *(&v43 - 6) = a3;
    *(&v43 - 5) = v34;
    *(&v43 - 4) = v57;
    *(&v43 - 3) = a6;
    v35 = v46;
    *(&v43 - 2) = v58;
    *(&v43 - 1) = v35;
    swift_getKeyPath();
    a9 = v51;
    sub_20C36CCE4();

    sub_20C36C3E4();
    v36 = v27 + *(v17 + 36);
    *v36 = v25;
    *(v36 + 8) = v37;
    *(v36 + 16) = v38;
    *(v36 + 24) = v39;
    *(v36 + 32) = v40;
    *(v36 + 40) = 0;
    sub_20C307054(v27, a9, &qword_27C79F698, &qword_20C3775F8);
    v41 = 0;
  }

  else
  {
    v41 = 1;
  }

  return (*(v18 + 56))(a9, v41, 1, v17);
}

uint64_t sub_20C36A4AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for ForYouSummaryAction();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v20 - v16;
  v20[0] = a2;
  v20[1] = a3;
  v20[2] = a4;
  v20[3] = a5;
  v20[4] = a6;
  v20[5] = a7;
  v18 = type metadata accessor for ForYouSummaryView();
  sub_20C360994(v18);
  swift_storeEnumTagMultiPayload();
  sub_20C36CCF4();

  return (*(v14 + 8))(v17, v13);
}

uint64_t sub_20C36A5E4(uint64_t a1)
{
  v2 = sub_20C36C534();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_20C36C604();
}

uint64_t sub_20C36A6C4()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  return v1();
}

unint64_t sub_20C36A700()
{
  result = qword_27C79F510;
  if (!qword_27C79F510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C79F508, &qword_20C377488);
    sub_20C36A78C();
    sub_20C36A818();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79F510);
  }

  return result;
}

unint64_t sub_20C36A78C()
{
  result = qword_27C79F518;
  if (!qword_27C79F518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C79F520, &qword_20C377490);
    sub_20C36A818();
    sub_20C36A988();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79F518);
  }

  return result;
}

unint64_t sub_20C36A818()
{
  result = qword_27C79F528;
  if (!qword_27C79F528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C79F530, &qword_20C377498);
    sub_20C36A8D0();
    sub_20C3077A8(&qword_27C79F558, &qword_27C79F560, &qword_20C3774B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79F528);
  }

  return result;
}

unint64_t sub_20C36A8D0()
{
  result = qword_27C79F538;
  if (!qword_27C79F538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C79F540, &qword_20C3774A0);
    sub_20C3077A8(&qword_27C79F548, &qword_27C79F550, &qword_20C3774A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79F538);
  }

  return result;
}

unint64_t sub_20C36A988()
{
  result = qword_27C79F568;
  if (!qword_27C79F568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C79F570, &qword_20C3774B8);
    sub_20C3077A8(&qword_27C79F578, &qword_27C79F580, &qword_20C3774C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79F568);
  }

  return result;
}

unint64_t sub_20C36AA40()
{
  result = qword_27C79F588;
  if (!qword_27C79F588)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C79F4F8, &qword_20C377478);
    sub_20C36AB4C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C79F500, &qword_20C377480);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C79F508, &qword_20C377488);
    sub_20C36A700();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79F588);
  }

  return result;
}

unint64_t sub_20C36AB4C()
{
  result = qword_27C79F590;
  if (!qword_27C79F590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C79F598, &qword_20C3774C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C79F5A0, &qword_20C3774D0);
    sub_20C36AC0C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79F590);
  }

  return result;
}

unint64_t sub_20C36AC0C()
{
  result = qword_27C79F5A8;
  if (!qword_27C79F5A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C79F5A0, &qword_20C3774D0);
    sub_20C36ACC4();
    sub_20C3077A8(&qword_27C79F5C0, &qword_27C79F5C8, &qword_20C3774E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79F5A8);
  }

  return result;
}

unint64_t sub_20C36ACC4()
{
  result = qword_27C79F5B0;
  if (!qword_27C79F5B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C79F5B8, &qword_20C3774D8);
    sub_20C36A8D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79F5B0);
  }

  return result;
}

uint64_t sub_20C36AD50()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = *(type metadata accessor for ForYouSummaryView() - 8);
  v8 = v0 + ((*(v7 + 80) + 64) & ~*(v7 + 80));

  return sub_20C36A4AC(v8, v1, v2, v3, v4, v5, v6);
}

uint64_t sub_20C36AE0C(uint64_t a1, _OWORD *a2)
{
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  return swift_getOpaqueTypeConformance2();
}

void sub_20C36AE60(uint64_t a1)
{
  sub_20C36B010();
  if (v2 <= 0x3F)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 32);
    v10 = *(a1 + 56);
    type metadata accessor for ForYouSummaryFeature();
    swift_getWitnessTable();
    sub_20C36CD04();
    swift_getWitnessTable();
    sub_20C36C4A4();
    if (v3 <= 0x3F)
    {
      v4 = *(a1 + 24);
      swift_getFunctionTypeMetadata1();
      sub_20C36C194();
      if (v5 <= 0x3F)
      {
        sub_20C343C44(319, &qword_27C79F660);
        if (v6 <= 0x3F)
        {
          sub_20C343C44(319, &qword_2810E8C60);
          if (v7 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_20C36B010()
{
  if (!qword_27C79F658)
  {
    sub_20C36C534();
    v0 = sub_20C36C464();
    if (!v1)
    {
      atomic_store(v0, &qword_27C79F658);
    }
  }
}

uint64_t sub_20C36B068@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v11 = *(type metadata accessor for ForYouSummaryView() - 8);
  return sub_20C36637C(a1, v2[8], v2 + ((*(v11 + 80) + 72) & ~*(v11 + 80)), v5, v6, v7, v8, v9, a2, v10);
}

uint64_t sub_20C36B14C(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v4 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  v8 = v2[6];
  v9 = v2[7];
  v10 = *(type metadata accessor for ForYouSummaryView() - 8);
  v11 = (*(v10 + 80) + 64) & ~*(v10 + 80);
  v12 = (*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(sub_20C36C564() - 8);
  return sub_20C3699C8(a1, a2, v2 + v11, *(v2 + v12), v2 + ((v12 + *(v13 + 80) + 8) & ~*(v13 + 80)), v5, v4, v6, v7, v8, v9);
}

uint64_t sub_20C36B27C(uint64_t a1, char a2)
{
  v5 = v2[6];
  v6 = v2[7];
  v9 = v2[2];
  v10 = v2[3];
  v11 = v2[4];
  v12 = v2[5];
  v7 = *(*(type metadata accessor for ForYouSummaryView() - 8) + 80);
  return sub_20C369E64(a1, a2);
}

void sub_20C36B348(uint64_t a1, double *a2)
{
  v5 = v2[7];
  v7 = v2[2];
  v8 = v2[3];
  v9 = v2[4];
  v10 = v2[5];
  v11 = v2[6];
  v6 = *(*(type metadata accessor for ForYouSummaryView() - 8) + 80);
  sub_20C369F00(a1, a2);
}

unint64_t sub_20C36B424()
{
  result = qword_27C79F688;
  if (!qword_27C79F688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C79F680, &qword_20C3775F0);
    sub_20C36B4A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79F688);
  }

  return result;
}

unint64_t sub_20C36B4A8()
{
  result = qword_27C79F690;
  if (!qword_27C79F690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C79F698, &qword_20C3775F8);
    sub_20C36B564(&qword_27C79F6A0, MEMORY[0x277D09DB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79F690);
  }

  return result;
}

uint64_t sub_20C36B564(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_4Tm()
{
  v17 = *(v0 + 16);
  v16 = *(v0 + 24);
  v18 = *(v0 + 40);
  v19 = *(v0 + 56);
  v1 = type metadata accessor for ForYouSummaryView();
  v2 = (*(*(v1 - 1) + 80) + 64) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v0 + v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79F4D8, &qword_20C377460);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_20C36C534();
    (*(*(v5 - 8) + 8))(v0 + v2, v5);
  }

  else
  {
    v6 = *v4;
  }

  v7 = &v4[v1[17]];
  v8 = *v7;
  v9 = *(v7 + 1);
  v10 = v7[16];
  sub_20C3070BC();
  v11 = v1[18];
  swift_getFunctionTypeMetadata1();
  v12 = sub_20C36C194();
  (*(*(v12 - 8) + 8))(&v4[v11], v12);
  v13 = *&v4[v1[19] + 8];

  v14 = *&v4[v1[20] + 8];

  return swift_deallocObject();
}

uint64_t sub_20C36B7AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = v3[2];
  v8 = v3[3];
  v9 = v3[4];
  v10 = v3[5];
  v11 = v3[6];
  v12 = v3[7];
  v13 = *(type metadata accessor for ForYouSummaryView() - 8);
  return sub_20C3685D0(a1, a2, v3 + ((*(v13 + 80) + 64) & ~*(v13 + 80)), v7, v8, v9, v10, v11, a3, v12);
}

uint64_t sub_20C36B87C()
{
  v1 = v0[2];
  v2 = v0[5];
  v11 = v0[4];
  v12 = v0[3];
  v9 = v0[7];
  v10 = v0[6];
  v3 = *(type metadata accessor for ForYouSummaryView() - 8);
  v4 = (*(v3 + 80) + 64) & ~*(v3 + 80);
  v8 = *(v3 + 64);
  sub_20C36C394();
  sub_20C36C344();
  type metadata accessor for ForYouItemContext();
  sub_20C36C354();
  sub_20C36C374();
  sub_20C36B564(&qword_27C79D900, MEMORY[0x277D09808]);
  sub_20C36B564(&qword_27C79D908, MEMORY[0x277D09738]);
  sub_20C36B564(&qword_27C79D910, type metadata accessor for ForYouItemContext);
  sub_20C36B564(&qword_27C79D918, type metadata accessor for ForYouItemContext);
  sub_20C36B564(&qword_27C79D920, type metadata accessor for ForYouItemContext);
  sub_20C36B564(&qword_27C79D928, MEMORY[0x277D09748]);
  sub_20C36B564(&qword_27C79D930, MEMORY[0x277D097A8]);
  v5 = *(sub_20C36C284() - 8);
  v6 = v0 + ((v4 + v8 + *(v5 + 80)) & ~*(v5 + 80));

  return sub_20C369554(v0 + v4, v6, v1, v12, v11, v2, v10, v9);
}

uint64_t sub_20C36BB74()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = *(type metadata accessor for ForYouSummaryView() - 8);
  v8 = (*(v7 + 80) + 64) & ~*(v7 + 80);
  v9 = *(v0 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_20C369884(v0 + v8, v9, v1, v2, v3, v4, v5, v6);
}

uint64_t sub_20C36BC5C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_20C36C6C4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79F4D8, &qword_20C377460);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v20 - v11);
  sub_20C3077F0(v2, &v20 - v11, &qword_27C79F4D8, &qword_20C377460);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_20C36C534();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    v16 = sub_20C36CFC4();
    v17 = sub_20C36C7F4();
    if (os_log_type_enabled(v17, v16))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v21 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_20C359E04(0x5463696D616E7944, 0xEF657A6953657079, &v21);
      _os_log_impl(&dword_20C2F6000, v17, v16, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x20F2F83A0](v19, -1, -1);
      MEMORY[0x20F2F83A0](v18, -1, -1);
    }

    sub_20C36C6B4();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_20C36BEE8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79F760, &qword_20C377800);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_20C3077F0(a1, &v6 - v4, &qword_27C79F760, &qword_20C377800);
  return sub_20C36C684();
}

uint64_t sub_20C36BF90()
{
  v1 = v0[2];
  v6 = v0[3];
  v7 = v0[4];
  v8 = v0[5];
  v9 = v0[6];
  v10 = v0[7];
  v2 = *(type metadata accessor for ForYouSummaryView() - 8);
  v3 = ((*(v2 + 80) + 64) & ~*(v2 + 80)) + *(v2 + 64);
  v4 = *(*(type metadata accessor for ForYouSummaryAction() - 8) + 80);

  return sub_20C3636B0();
}

uint64_t sub_20C36C0B8@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_20C36370C(a1);
}