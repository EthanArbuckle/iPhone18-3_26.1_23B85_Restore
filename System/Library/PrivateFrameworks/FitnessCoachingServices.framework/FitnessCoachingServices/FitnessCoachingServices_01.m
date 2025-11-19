uint64_t sub_2278157F4()
{
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v1 = swift_task_alloc();
  v0[14] = v1;
  *v1 = v0;
  v1[1] = sub_227815898;
  v2 = v0[13];

  return sub_227817FE0(v2);
}

uint64_t sub_227815898()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 64);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2278159A8, v2, 0);
}

uint64_t sub_2278159A8()
{
  v22 = v0;
  v1 = v0[13];
  v2 = v0[11];
  sub_2278C73A0();

  v3 = sub_2278C7590();
  v4 = sub_2278C7970();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[13];
  v7 = v0[10];
  v8 = v0[11];
  v9 = v0[9];
  if (v5)
  {
    v20 = v0[11];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v10 = 136315138;
    v12 = sub_2278C7670();
    v14 = v13;

    v15 = sub_2278021B4(v12, v14, &v21);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_2277F7000, v3, v4, "[Notification System] Updated settings for watch: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x22AA9E860](v11, -1, -1);
    MEMORY[0x22AA9E860](v10, -1, -1);

    (*(v7 + 8))(v20, v9);
  }

  else
  {
    v16 = v0[13];

    (*(v7 + 8))(v8, v9);
  }

  v17 = v0[11];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v18 = v0[1];

  return v18();
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_227815C00(uint64_t a1)
{
  v4 = *(sub_2278C6570() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2278003CC;

  return sub_2278143E0(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_227815D20(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D60A0, qword_2278C98D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_227815DE0(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_227815EF8;

  return v9(a1, a2);
}

uint64_t sub_227815EF8(char a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1 & 1);
}

uint64_t sub_227815FF4(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_227818534;

  return v9(a1, a2);
}

uint64_t sub_22781610C(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 24);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_227818534;

  return v9(a1, a2);
}

uint64_t sub_227816224(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 32);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_227818534;

  return v9(a1, a2);
}

uint64_t sub_22781633C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 40);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_227818538;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_22781646C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 48);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_22781659C;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_22781659C(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_227816698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 56);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_227818538;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_2278167C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 64);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_22781659C;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_2278168F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 72);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_2278004C0;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t sub_227816A38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 80);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_2278004C0;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t sub_227816B78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 88);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2278004C0;

  return v11(a1, a2, a3);
}

uint64_t sub_227816CA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 96);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2278003CC;

  return v11(a1, a2, a3);
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_227816DE4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_227816E2C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_227816EA4(Class *a1, SEL *a2, const char *a3)
{
  v7 = sub_2278C75A0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v3 + 40);
  v12 = *(v3 + 48);
  v14 = objc_allocWithZone(*a1);
  v15 = sub_2278C76F0();
  v16 = [v14 *a2];

  if (!v16)
  {
    sub_2278C73A0();
    v17 = sub_2278C7590();
    v18 = sub_2278C7950();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_2277F7000, v17, v18, a3, v19, 2u);
      MEMORY[0x22AA9E860](v19, -1, -1);
    }

    (*(v8 + 8))(v11, v7);
    return 0;
  }

  return v16;
}

uint64_t sub_227817030(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_227817054, 0, 0);
}

uint64_t sub_227817054()
{
  v1 = *__swift_project_boxed_opaque_existential_1(*(v0 + 32), *(*(v0 + 32) + 24));

  return MEMORY[0x2822009F8](sub_2278170C0, v1, 0);
}

id sub_2278170C0()
{
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v2 = result;
    v3 = [result fitnessMode];

    if (sub_22786233C(v3))
    {
      v4 = swift_task_alloc();
      v0[6] = v4;
      *v4 = v0;
      v4[1] = sub_227817314;
      v5 = v0[3];
      v6 = v0[4];
      v7 = v0[2];

      return sub_2278175F4(v7, v5);
    }

    else
    {
      v8 = swift_task_alloc();
      v0[5] = v8;
      *v8 = v0;
      v8[1] = sub_227817218;
      v9 = v0[3];
      v10 = v0[4];
      v11 = v0[2];

      return sub_227817410(v11, v9);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_227817218(uint64_t a1)
{
  v3 = *(*v1 + 40);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_227817314(uint64_t a1)
{
  v3 = *(*v1 + 48);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_227817410(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_2278174A4, 0, 0);
}

uint64_t sub_2278174A4()
{
  v14 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 32);
  v2 = sub_227816EA4(0x277D2BA58, &selRef_initWithDomain_, "Failed to create notification domain accessor");
  v3 = [v2 synchronize];

  *(v0 + 40) = 0;
  v4 = sub_227816EA4(0x277D2BA58, &selRef_initWithDomain_, "Failed to create notification domain accessor");
  v5 = 2;
  if (v4)
  {
    v6 = v4;
    v7 = *(v0 + 16);
    v8 = *(v0 + 24);
    v9 = sub_2278C76F0();
    v10 = [v6 BOOLForKey:v9 keyExistsAndHasValidFormat:v0 + 40];

    if (*(v0 + 40))
    {
      v5 = v10;
    }

    else
    {
      v5 = 2;
    }
  }

  v11 = *(v0 + 8);
  v12 = *MEMORY[0x277D85DE8];

  return v11(v5);
}

uint64_t sub_2278175F4(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return MEMORY[0x2822009F8](sub_227817618, 0, 0);
}

uint64_t sub_227817618()
{
  v1 = *(v0 + 72);
  v2 = sub_227816EA4(0x277CBEBD0, &selRef_initWithSuiteName_, "Failed to create notification settings user defaults");
  if (!v2)
  {
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
LABEL_9:
    sub_227815D20(v0 + 16);
    goto LABEL_10;
  }

  v3 = v2;
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  v6 = sub_2278C76F0();
  v7 = [v3 objectForKey_];

  if (v7)
  {
    sub_2278C7AD0();
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  *(v0 + 16) = v13;
  *(v0 + 32) = v14;
  if (!*(v0 + 40))
  {
    goto LABEL_9;
  }

  sub_2278184E8();
  if (swift_dynamicCast())
  {
    v8 = *(v0 + 48);
    v9 = [v8 BOOLValue];

    v10 = v9;
    goto LABEL_11;
  }

LABEL_10:
  v10 = 2;
LABEL_11:
  v11 = *(v0 + 8);

  return v11(v10);
}

uint64_t sub_227817770(uint64_t a1, char a2)
{
  v6 = *MEMORY[0x277D85DE8];
  *(v3 + 33) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_227817804, 0, 0);
}

uint64_t sub_227817804()
{
  v37 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 16);
  v2 = sub_2278C3CE0(MEMORY[0x277D84F90]);
  v3 = *(v1 + 16);
  if (v3)
  {
    v34 = *(v0 + 33);
    v4 = (*(v0 + 16) + 40);
    do
    {
      v35 = v3;
      v36 = v2;
      v5 = *(v0 + 24);
      v6 = *(v4 - 1);
      v7 = *v4;

      v8 = sub_227816EA4(0x277D2BA58, &selRef_initWithDomain_, "Failed to create notification domain accessor");
      v9 = [v8 synchronize];

      *(v0 + 32) = 0;
      v10 = v6;
      v11 = sub_227816EA4(0x277D2BA58, &selRef_initWithDomain_, "Failed to create notification domain accessor");
      if (v11 && (v12 = v11, v13 = sub_2278C76F0(), v14 = [v12 BOOLForKey:v13 keyExistsAndHasValidFormat:v0 + 32], v13, v12, *(v0 + 32) == 1))
      {
        v2 = v36;
      }

      else
      {
        v14 = v34;
        v2 = v36;
        if (v34 == 2)
        {

          goto LABEL_4;
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v16 = sub_2278AE31C(v10, v7);
      v18 = v2[2];
      v19 = (v17 & 1) == 0;
      v20 = __OFADD__(v18, v19);
      v21 = v18 + v19;
      if (v20)
      {
        __break(1u);
LABEL_26:
        __break(1u);
      }

      v22 = v17;
      if (v2[3] >= v21)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v26 = v16;
          sub_2278AF664();
          v16 = v26;
          v24 = v14 ^ 1;
          if (v22)
          {
LABEL_15:
            v25 = v16;

            *(v2[7] + v25) = v24 & 1;
            goto LABEL_4;
          }

          goto LABEL_17;
        }
      }

      else
      {
        sub_2278AED70(v21, isUniquelyReferenced_nonNull_native);
        v16 = sub_2278AE31C(v10, v7);
        if ((v22 & 1) != (v23 & 1))
        {
          v33 = *MEMORY[0x277D85DE8];

          return sub_2278C7E00();
        }
      }

      v24 = v14 ^ 1;
      if (v22)
      {
        goto LABEL_15;
      }

LABEL_17:
      v2[(v16 >> 6) + 8] |= 1 << v16;
      v27 = (v2[6] + 16 * v16);
      *v27 = v10;
      v27[1] = v7;
      *(v2[7] + v16) = v24 & 1;
      v28 = v2[2];
      v20 = __OFADD__(v28, 1);
      v29 = v28 + 1;
      if (v20)
      {
        goto LABEL_26;
      }

      v2[2] = v29;
LABEL_4:
      v4 += 2;
      v3 = v35 - 1;
    }

    while (v35 != 1);
  }

  v30 = *(v0 + 8);
  v31 = *MEMORY[0x277D85DE8];

  return v30(v2);
}

uint64_t sub_227817B30(uint64_t a1, char a2)
{
  *(v3 + 96) = a2;
  *(v3 + 56) = a1;
  *(v3 + 64) = v2;
  v4 = sub_2278C75A0();
  *(v3 + 72) = v4;
  v5 = *(v4 - 8);
  *(v3 + 80) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 88) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227817BF4, 0, 0);
}

uint64_t sub_227817BF4()
{
  v1 = *(v0 + 56);
  v2 = sub_2278C3CE0(MEMORY[0x277D84F90]);
  v3 = *(v1 + 16);
  if (!v3)
  {
LABEL_30:
    v35 = *(v0 + 88);

    v36 = *(v0 + 8);

    return v36(v2);
  }

  v4 = *(v0 + 96);
  v5 = *(v0 + 64);
  v39 = *(v5 + 48);
  v40 = *(v5 + 40);
  v37 = (*(v0 + 80) + 8);
  v6 = (*(v0 + 56) + 40);
  v38 = v4;
  while (1)
  {
    v7 = *(v6 - 1);
    v8 = *v6;

    v9 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v10 = sub_2278C76F0();
    v11 = [v9 initWithSuiteName_];

    if (!v11)
    {
      v14 = *(v0 + 88);
      sub_2278C73A0();
      v15 = sub_2278C7590();
      v16 = sub_2278C7950();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_2277F7000, v15, v16, "Failed to create notification settings user defaults", v17, 2u);
        MEMORY[0x22AA9E860](v17, -1, -1);
      }

      v18 = *(v0 + 88);
      v19 = *(v0 + 72);

      (*v37)(v18, v19);
      *(v0 + 16) = 0u;
      *(v0 + 32) = 0u;
LABEL_15:
      sub_227815D20(v0 + 16);
      if (v4 == 2)
      {
        goto LABEL_3;
      }

      goto LABEL_18;
    }

    v12 = sub_2278C76F0();
    v13 = [v11 objectForKey_];

    if (v13)
    {
      sub_2278C7AD0();
      swift_unknownObjectRelease();
    }

    else
    {
      v42 = 0u;
      v43 = 0u;
    }

    *(v0 + 16) = v42;
    *(v0 + 32) = v43;
    if (!*(v0 + 40))
    {
      goto LABEL_15;
    }

    sub_2278184E8();
    if (swift_dynamicCast())
    {
      v20 = *(v0 + 48);
      v41 = [v20 BOOLValue];

      goto LABEL_19;
    }

    if (v4 == 2)
    {
LABEL_3:

      goto LABEL_4;
    }

LABEL_18:
    v41 = v4;
LABEL_19:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v42 = v2;
    v22 = v7;
    v24 = sub_2278AE31C(v7, v8);
    v25 = v2[2];
    v26 = (v23 & 1) == 0;
    result = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      __break(1u);
LABEL_37:
      __break(1u);
      return result;
    }

    v28 = v23;
    if (v2[3] >= result)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        result = sub_2278AF664();
      }

      goto LABEL_25;
    }

    sub_2278AED70(result, isUniquelyReferenced_nonNull_native);
    result = sub_2278AE31C(v22, v8);
    if ((v28 & 1) != (v29 & 1))
    {
      break;
    }

    v24 = result;
LABEL_25:
    v30 = v41 ^ 1;
    if (v28)
    {

      *(v2[7] + v24) = v30 & 1;
    }

    else
    {
      v2[(v24 >> 6) + 8] |= 1 << v24;
      v31 = (v2[6] + 16 * v24);
      *v31 = v22;
      v31[1] = v8;
      *(v2[7] + v24) = v30 & 1;
      v32 = v2[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_37;
      }

      v2[2] = v34;
    }

    v4 = v38;
LABEL_4:
    v6 += 2;
    if (!--v3)
    {
      goto LABEL_30;
    }
  }

  return sub_2278C7E00();
}

uint64_t sub_227817FE0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_227818000, 0, 0);
}

uint64_t sub_227818000()
{
  v1 = v0[2];
  v2 = -1;
  v3 = -1 << *(v1 + 32);
  if (-v3 < 64)
  {
    v2 = ~(-1 << -v3);
  }

  v4 = v2 & *(v1 + 64);
  v5 = (63 - v3) >> 6;
  v6 = v0[2];

  v8 = 0;
  while (v4)
  {
LABEL_10:
    v13 = v0[3];
    v14 = __clz(__rbit64(v4)) | (v8 << 6);
    v15 = (*(v1 + 48) + 16 * v14);
    v17 = *v15;
    v16 = v15[1];
    v18 = *(*(v1 + 56) + v14);

    v19 = sub_227816EA4(0x277D2BA58, &selRef_initWithDomain_, "Failed to create notification domain accessor");
    if (v19)
    {
      v20 = v19;
      v21 = sub_2278C76F0();
      [v20 setBool:v18 ^ 1u forKey:v21];
    }

    v4 &= v4 - 1;
    v9 = v0[3];
    v10 = sub_227816EA4(0x277D2BA58, &selRef_initWithDomain_, "Failed to create notification domain accessor");
    v11 = [v10 synchronize];
  }

  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      return result;
    }

    if (v12 >= v5)
    {
      break;
    }

    v4 = *(v1 + 64 + 8 * v12);
    ++v8;
    if (v4)
    {
      v8 = v12;
      goto LABEL_10;
    }
  }

  v22 = v0[2];

  v23 = v0[1];

  return v23();
}

uint64_t sub_2278181C4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_2278C75A0();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227818284, 0, 0);
}

uint64_t sub_227818284()
{
  v1 = v0[2];
  v33 = v1;
  v34 = v0[3];
  v2 = v1 + 64;
  v3 = -1;
  v4 = -1 << *(v1 + 32);
  if (-v4 < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & *(v1 + 64);
  v6 = (63 - v4) >> 6;
  v31 = (v0[5] + 8);

  v8 = 0;
  while (v5)
  {
LABEL_11:
    v10 = __clz(__rbit64(v5)) | (v8 << 6);
    v11 = (*(v33 + 48) + 16 * v10);
    v12 = *v11;
    v13 = v11[1];
    v14 = *(*(v33 + 56) + v10);

    v15 = *(v34 + 40);
    v16 = *(v34 + 48);
    v17 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v18 = sub_2278C76F0();
    v19 = [v17 initWithSuiteName_];

    if (v19)
    {
      v20 = sub_2278C76F0();
      [v19 setBool:v14 ^ 1u forKey:v20];
    }

    else
    {
      v21 = v32[6];
      sub_2278C73A0();
      v22 = sub_2278C7590();
      v23 = sub_2278C7950();
      v24 = os_log_type_enabled(v22, v23);
      v25 = v32[6];
      v26 = v32[4];
      if (v24)
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_2277F7000, v22, v23, "Failed to create notification settings user defaults", v27, 2u);
        MEMORY[0x22AA9E860](v27, -1, -1);
      }

      (*v31)(v25, v26);
    }

    v5 &= v5 - 1;
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      return result;
    }

    if (v9 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_11;
    }
  }

  v28 = v32[6];
  v29 = v32[2];

  v30 = v32[1];

  return v30();
}

unint64_t sub_2278184E8()
{
  result = qword_2813B9A80;
  if (!qword_2813B9A80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2813B9A80);
  }

  return result;
}

void sub_22781853C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6100, &qword_2278CA020);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2278C9F40;
  v1 = WheelchairHalfMarathonWorkout();
  if (!v1)
  {
    __break(1u);
LABEL_59:
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
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    return;
  }

  v2 = v1;
  v3 = [v1 uniqueName];

  if (v3)
  {
    v4 = sub_2278C7700();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  *(v0 + 32) = v4;
  *(v0 + 40) = v6;
  v7 = HalfMarathonWorkout();
  if (!v7)
  {
    goto LABEL_59;
  }

  v8 = v7;
  v9 = [v7 uniqueName];

  if (v9)
  {
    v10 = sub_2278C7700();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  *(v0 + 48) = v10;
  *(v0 + 56) = v12;
  v13 = FastestWheelchairHalfMarathonWorkout();
  if (!v13)
  {
    goto LABEL_60;
  }

  v14 = v13;
  v15 = [v13 uniqueName];

  if (v15)
  {
    v16 = sub_2278C7700();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  *(v0 + 64) = v16;
  *(v0 + 72) = v18;
  v19 = FastestHalfMarathonWorkout();
  if (!v19)
  {
    goto LABEL_61;
  }

  v20 = v19;
  v21 = [v19 uniqueName];

  if (v21)
  {
    v22 = sub_2278C7700();
    v24 = v23;
  }

  else
  {
    v22 = 0;
    v24 = 0;
  }

  *(v0 + 80) = v22;
  *(v0 + 88) = v24;
  v25 = OneHundredKilometersCyclingWorkout();
  if (!v25)
  {
    goto LABEL_62;
  }

  v26 = v25;
  v27 = [v25 uniqueName];

  if (v27)
  {
    v28 = sub_2278C7700();
    v30 = v29;
  }

  else
  {
    v28 = 0;
    v30 = 0;
  }

  *(v0 + 96) = v28;
  *(v0 + 104) = v30;
  v31 = OneHundredMilesCyclingWorkout();
  if (!v31)
  {
    goto LABEL_63;
  }

  v32 = v31;
  v33 = [v31 uniqueName];

  if (v33)
  {
    v34 = sub_2278C7700();
    v36 = v35;
  }

  else
  {
    v34 = 0;
    v36 = 0;
  }

  *(v0 + 112) = v34;
  *(v0 + 120) = v36;
  v37 = WheelchairMarathonWorkout();
  if (!v37)
  {
    goto LABEL_64;
  }

  v38 = v37;
  v39 = [v37 uniqueName];

  if (v39)
  {
    v40 = sub_2278C7700();
    v42 = v41;
  }

  else
  {
    v40 = 0;
    v42 = 0;
  }

  *(v0 + 128) = v40;
  *(v0 + 136) = v42;
  v43 = MarathonWorkout();
  if (!v43)
  {
    goto LABEL_65;
  }

  v44 = v43;
  v45 = [v43 uniqueName];

  if (v45)
  {
    v46 = sub_2278C7700();
    v48 = v47;
  }

  else
  {
    v46 = 0;
    v48 = 0;
  }

  *(v0 + 144) = v46;
  *(v0 + 152) = v48;
  v49 = FastestWheelchairMarathonWorkout();
  if (!v49)
  {
    goto LABEL_66;
  }

  v50 = v49;
  v51 = [v49 uniqueName];

  if (v51)
  {
    v52 = sub_2278C7700();
    v54 = v53;
  }

  else
  {
    v52 = 0;
    v54 = 0;
  }

  *(v0 + 160) = v52;
  *(v0 + 168) = v54;
  v55 = FastestMarathonWorkout();
  if (!v55)
  {
    goto LABEL_67;
  }

  v56 = v55;
  v57 = [v55 uniqueName];

  if (v57)
  {
    v58 = sub_2278C7700();
    v60 = v59;
  }

  else
  {
    v58 = 0;
    v60 = 0;
  }

  *(v0 + 176) = v58;
  *(v0 + 184) = v60;
  v61 = SprintTriathlonWorkout();
  if (!v61)
  {
    goto LABEL_68;
  }

  v62 = v61;
  v63 = [v61 uniqueName];

  if (v63)
  {
    v64 = sub_2278C7700();
    v66 = v65;
  }

  else
  {
    v64 = 0;
    v66 = 0;
  }

  *(v0 + 192) = v64;
  *(v0 + 200) = v66;
  v67 = FiftyKilometerTriathlonWorkout();
  if (!v67)
  {
    goto LABEL_69;
  }

  v68 = v67;
  v69 = [v67 uniqueName];

  if (v69)
  {
    v70 = sub_2278C7700();
    v72 = v71;
  }

  else
  {
    v70 = 0;
    v72 = 0;
  }

  *(v0 + 208) = v70;
  *(v0 + 216) = v72;
  v73 = HalfDistanceTriathlonWorkout();
  if (!v73)
  {
    goto LABEL_70;
  }

  v74 = v73;
  v75 = [v73 uniqueName];

  if (v75)
  {
    v76 = sub_2278C7700();
    v78 = v77;
  }

  else
  {
    v76 = 0;
    v78 = 0;
  }

  *(v0 + 224) = v76;
  *(v0 + 232) = v78;
  v79 = FullDistanceTriathlonWorkout();
  if (!v79)
  {
    goto LABEL_71;
  }

  v80 = v79;
  v81 = [v79 uniqueName];

  if (v81)
  {
    v82 = sub_2278C7700();
    v84 = v83;
  }

  else
  {
    v82 = 0;
    v84 = 0;
  }

  *(v0 + 240) = v82;
  *(v0 + 248) = v84;
  qword_27D7D8848 = v0;
}

id sub_227818A74()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D60F8, &qword_2278CA018);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2278C9F40;
  result = OneHundredKilometersCyclingWorkout();
  if (!result)
  {
    __break(1u);
LABEL_191:
    __break(1u);
LABEL_192:
    __break(1u);
LABEL_193:
    __break(1u);
LABEL_194:
    __break(1u);
LABEL_195:
    __break(1u);
LABEL_196:
    __break(1u);
LABEL_197:
    __break(1u);
LABEL_198:
    __break(1u);
LABEL_199:
    __break(1u);
LABEL_200:
    __break(1u);
LABEL_201:
    __break(1u);
LABEL_202:
    __break(1u);
LABEL_203:
    __break(1u);
LABEL_204:
    __break(1u);
LABEL_205:
    __break(1u);
LABEL_206:
    __break(1u);
LABEL_207:
    __break(1u);
LABEL_208:
    __break(1u);
LABEL_209:
    __break(1u);
LABEL_210:
    __break(1u);
LABEL_211:
    __break(1u);
LABEL_212:
    __break(1u);
LABEL_213:
    __break(1u);
LABEL_214:
    __break(1u);
LABEL_215:
    __break(1u);
LABEL_216:
    __break(1u);
LABEL_217:
    __break(1u);
LABEL_218:
    __break(1u);
LABEL_219:
    __break(1u);
LABEL_220:
    __break(1u);
LABEL_221:
    __break(1u);
LABEL_222:
    __break(1u);
LABEL_223:
    __break(1u);
LABEL_224:
    __break(1u);
LABEL_225:
    __break(1u);
LABEL_226:
    __break(1u);
LABEL_227:
    __break(1u);
LABEL_228:
    __break(1u);
LABEL_229:
    __break(1u);
LABEL_230:
    __break(1u);
LABEL_231:
    __break(1u);
LABEL_232:
    __break(1u);
LABEL_233:
    __break(1u);
LABEL_234:
    __break(1u);
LABEL_235:
    __break(1u);
LABEL_236:
    __break(1u);
    return result;
  }

  v2 = result;
  v3 = [result uniqueName];

  if (v3)
  {
    v4 = sub_2278C7700();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  *(inited + 32) = v4;
  *(inited + 40) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6100, &qword_2278CA020);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_2278C9F50;
  result = OneHundredKilometersCyclingWorkout();
  if (!result)
  {
    goto LABEL_191;
  }

  v8 = result;
  v9 = [result uniqueName];

  if (v9)
  {
    v10 = sub_2278C7700();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  *(v7 + 32) = v10;
  *(v7 + 40) = v12;
  result = OneHundredMilesCyclingWorkout();
  if (!result)
  {
    goto LABEL_192;
  }

  v13 = result;
  v14 = [result uniqueName];

  if (v14)
  {
    v15 = sub_2278C7700();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  *(v7 + 48) = v15;
  *(v7 + 56) = v17;
  *(inited + 48) = v7;
  result = OneHundredMilesCyclingWorkout();
  if (!result)
  {
    goto LABEL_193;
  }

  v18 = result;
  v19 = [result uniqueName];

  if (v19)
  {
    v20 = sub_2278C7700();
    v22 = v21;
  }

  else
  {
    v20 = 0;
    v22 = 0;
  }

  *(inited + 56) = v20;
  *(inited + 64) = v22;
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_2278C9140;
  result = OneHundredMilesCyclingWorkout();
  if (!result)
  {
    goto LABEL_194;
  }

  v24 = result;
  v25 = [result uniqueName];

  if (v25)
  {
    v26 = sub_2278C7700();
    v28 = v27;
  }

  else
  {
    v26 = 0;
    v28 = 0;
  }

  *(v23 + 32) = v26;
  *(v23 + 40) = v28;
  *(inited + 72) = v23;
  result = HalfMarathonWorkout();
  if (!result)
  {
    goto LABEL_195;
  }

  v29 = result;
  v30 = [result uniqueName];

  if (v30)
  {
    v31 = sub_2278C7700();
    v33 = v32;
  }

  else
  {
    v31 = 0;
    v33 = 0;
  }

  *(inited + 80) = v31;
  *(inited + 88) = v33;
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_2278C9F60;
  result = HalfMarathonWorkout();
  if (!result)
  {
    goto LABEL_196;
  }

  v35 = result;
  v36 = [result uniqueName];

  if (v36)
  {
    v37 = sub_2278C7700();
    v39 = v38;
  }

  else
  {
    v37 = 0;
    v39 = 0;
  }

  *(v34 + 32) = v37;
  *(v34 + 40) = v39;
  result = FastestHalfMarathonWorkout();
  if (!result)
  {
    goto LABEL_197;
  }

  v40 = result;
  v41 = [result uniqueName];

  if (v41)
  {
    v42 = sub_2278C7700();
    v44 = v43;
  }

  else
  {
    v42 = 0;
    v44 = 0;
  }

  *(v34 + 48) = v42;
  *(v34 + 56) = v44;
  result = MarathonWorkout();
  if (!result)
  {
    goto LABEL_198;
  }

  v45 = result;
  v46 = [result uniqueName];

  if (v46)
  {
    v47 = sub_2278C7700();
    v49 = v48;
  }

  else
  {
    v47 = 0;
    v49 = 0;
  }

  *(v34 + 64) = v47;
  *(v34 + 72) = v49;
  result = FastestMarathonWorkout();
  if (!result)
  {
    goto LABEL_199;
  }

  v50 = result;
  v51 = [result uniqueName];

  if (v51)
  {
    v52 = sub_2278C7700();
    v54 = v53;
  }

  else
  {
    v52 = 0;
    v54 = 0;
  }

  *(v34 + 80) = v52;
  *(v34 + 88) = v54;
  *(inited + 96) = v34;
  result = FastestHalfMarathonWorkout();
  if (!result)
  {
    goto LABEL_200;
  }

  v55 = result;
  v56 = [result uniqueName];

  if (v56)
  {
    v57 = sub_2278C7700();
    v59 = v58;
  }

  else
  {
    v57 = 0;
    v59 = 0;
  }

  *(inited + 104) = v57;
  *(inited + 112) = v59;
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_2278C9F70;
  result = FastestHalfMarathonWorkout();
  if (!result)
  {
    goto LABEL_201;
  }

  v61 = result;
  v62 = [result uniqueName];

  if (v62)
  {
    v63 = sub_2278C7700();
    v65 = v64;
  }

  else
  {
    v63 = 0;
    v65 = 0;
  }

  *(v60 + 32) = v63;
  *(v60 + 40) = v65;
  result = MarathonWorkout();
  if (!result)
  {
    goto LABEL_202;
  }

  v66 = result;
  v67 = [result uniqueName];

  if (v67)
  {
    v68 = sub_2278C7700();
    v70 = v69;
  }

  else
  {
    v68 = 0;
    v70 = 0;
  }

  *(v60 + 48) = v68;
  *(v60 + 56) = v70;
  result = FastestMarathonWorkout();
  if (!result)
  {
    goto LABEL_203;
  }

  v71 = result;
  v72 = [result uniqueName];

  if (v72)
  {
    v73 = sub_2278C7700();
    v75 = v74;
  }

  else
  {
    v73 = 0;
    v75 = 0;
  }

  *(v60 + 64) = v73;
  *(v60 + 72) = v75;
  *(inited + 120) = v60;
  result = MarathonWorkout();
  if (!result)
  {
    goto LABEL_204;
  }

  v76 = result;
  v77 = [result uniqueName];

  if (v77)
  {
    v78 = sub_2278C7700();
    v80 = v79;
  }

  else
  {
    v78 = 0;
    v80 = 0;
  }

  *(inited + 128) = v78;
  *(inited + 136) = v80;
  v81 = swift_allocObject();
  *(v81 + 16) = xmmword_2278C9F50;
  result = MarathonWorkout();
  if (!result)
  {
    goto LABEL_205;
  }

  v82 = result;
  v83 = [result uniqueName];

  if (v83)
  {
    v84 = sub_2278C7700();
    v86 = v85;
  }

  else
  {
    v84 = 0;
    v86 = 0;
  }

  *(v81 + 32) = v84;
  *(v81 + 40) = v86;
  result = FastestMarathonWorkout();
  if (!result)
  {
    goto LABEL_206;
  }

  v87 = result;
  v88 = [result uniqueName];

  if (v88)
  {
    v89 = sub_2278C7700();
    v91 = v90;
  }

  else
  {
    v89 = 0;
    v91 = 0;
  }

  *(v81 + 48) = v89;
  *(v81 + 56) = v91;
  *(inited + 144) = v81;
  result = FastestMarathonWorkout();
  if (!result)
  {
    goto LABEL_207;
  }

  v92 = result;
  v93 = [result uniqueName];

  if (v93)
  {
    v94 = sub_2278C7700();
    v96 = v95;
  }

  else
  {
    v94 = 0;
    v96 = 0;
  }

  *(inited + 152) = v94;
  *(inited + 160) = v96;
  v97 = swift_allocObject();
  *(v97 + 16) = xmmword_2278C9140;
  result = FastestMarathonWorkout();
  if (!result)
  {
    goto LABEL_208;
  }

  v98 = result;
  v99 = [result uniqueName];

  if (v99)
  {
    v100 = sub_2278C7700();
    v102 = v101;
  }

  else
  {
    v100 = 0;
    v102 = 0;
  }

  *(v97 + 32) = v100;
  *(v97 + 40) = v102;
  *(inited + 168) = v97;
  result = WheelchairHalfMarathonWorkout();
  if (!result)
  {
    goto LABEL_209;
  }

  v103 = result;
  v104 = [result uniqueName];

  if (v104)
  {
    v105 = sub_2278C7700();
    v107 = v106;
  }

  else
  {
    v105 = 0;
    v107 = 0;
  }

  *(inited + 176) = v105;
  *(inited + 184) = v107;
  v108 = swift_allocObject();
  *(v108 + 16) = xmmword_2278C9F60;
  result = WheelchairHalfMarathonWorkout();
  if (!result)
  {
    goto LABEL_210;
  }

  v109 = result;
  v110 = [result uniqueName];

  if (v110)
  {
    v111 = sub_2278C7700();
    v113 = v112;
  }

  else
  {
    v111 = 0;
    v113 = 0;
  }

  *(v108 + 32) = v111;
  *(v108 + 40) = v113;
  result = FastestWheelchairHalfMarathonWorkout();
  if (!result)
  {
    goto LABEL_211;
  }

  v114 = result;
  v115 = [result uniqueName];

  if (v115)
  {
    v116 = sub_2278C7700();
    v118 = v117;
  }

  else
  {
    v116 = 0;
    v118 = 0;
  }

  *(v108 + 48) = v116;
  *(v108 + 56) = v118;
  result = WheelchairMarathonWorkout();
  if (!result)
  {
    goto LABEL_212;
  }

  v119 = result;
  v120 = [result uniqueName];

  if (v120)
  {
    v121 = sub_2278C7700();
    v123 = v122;
  }

  else
  {
    v121 = 0;
    v123 = 0;
  }

  *(v108 + 64) = v121;
  *(v108 + 72) = v123;
  result = FastestWheelchairMarathonWorkout();
  if (!result)
  {
    goto LABEL_213;
  }

  v124 = result;
  v125 = [result uniqueName];

  if (v125)
  {
    v126 = sub_2278C7700();
    v128 = v127;
  }

  else
  {
    v126 = 0;
    v128 = 0;
  }

  *(v108 + 80) = v126;
  *(v108 + 88) = v128;
  *(inited + 192) = v108;
  result = FastestWheelchairHalfMarathonWorkout();
  if (!result)
  {
    goto LABEL_214;
  }

  v129 = result;
  v130 = [result uniqueName];

  if (v130)
  {
    v131 = sub_2278C7700();
    v133 = v132;
  }

  else
  {
    v131 = 0;
    v133 = 0;
  }

  *(inited + 200) = v131;
  *(inited + 208) = v133;
  v134 = swift_allocObject();
  *(v134 + 16) = xmmword_2278C9F70;
  result = FastestWheelchairHalfMarathonWorkout();
  if (!result)
  {
    goto LABEL_215;
  }

  v135 = result;
  v136 = [result uniqueName];

  if (v136)
  {
    v137 = sub_2278C7700();
    v139 = v138;
  }

  else
  {
    v137 = 0;
    v139 = 0;
  }

  *(v134 + 32) = v137;
  *(v134 + 40) = v139;
  result = WheelchairMarathonWorkout();
  if (!result)
  {
    goto LABEL_216;
  }

  v140 = result;
  v141 = [result uniqueName];

  if (v141)
  {
    v142 = sub_2278C7700();
    v144 = v143;
  }

  else
  {
    v142 = 0;
    v144 = 0;
  }

  *(v134 + 48) = v142;
  *(v134 + 56) = v144;
  result = FastestWheelchairMarathonWorkout();
  if (!result)
  {
    goto LABEL_217;
  }

  v145 = result;
  v146 = [result uniqueName];

  if (v146)
  {
    v147 = sub_2278C7700();
    v149 = v148;
  }

  else
  {
    v147 = 0;
    v149 = 0;
  }

  *(v134 + 64) = v147;
  *(v134 + 72) = v149;
  *(inited + 216) = v134;
  result = WheelchairMarathonWorkout();
  if (!result)
  {
    goto LABEL_218;
  }

  v150 = result;
  v151 = [result uniqueName];

  if (v151)
  {
    v152 = sub_2278C7700();
    v154 = v153;
  }

  else
  {
    v152 = 0;
    v154 = 0;
  }

  *(inited + 224) = v152;
  *(inited + 232) = v154;
  v155 = swift_allocObject();
  *(v155 + 16) = xmmword_2278C9F50;
  result = WheelchairMarathonWorkout();
  if (!result)
  {
    goto LABEL_219;
  }

  v156 = result;
  v157 = [result uniqueName];

  if (v157)
  {
    v158 = sub_2278C7700();
    v160 = v159;
  }

  else
  {
    v158 = 0;
    v160 = 0;
  }

  *(v155 + 32) = v158;
  *(v155 + 40) = v160;
  result = FastestWheelchairMarathonWorkout();
  if (!result)
  {
    goto LABEL_220;
  }

  v161 = result;
  v162 = [result uniqueName];

  if (v162)
  {
    v163 = sub_2278C7700();
    v165 = v164;
  }

  else
  {
    v163 = 0;
    v165 = 0;
  }

  *(v155 + 48) = v163;
  *(v155 + 56) = v165;
  *(inited + 240) = v155;
  result = FastestWheelchairMarathonWorkout();
  if (!result)
  {
    goto LABEL_221;
  }

  v166 = result;
  v167 = [result uniqueName];

  if (v167)
  {
    v168 = sub_2278C7700();
    v170 = v169;
  }

  else
  {
    v168 = 0;
    v170 = 0;
  }

  *(inited + 248) = v168;
  *(inited + 256) = v170;
  v171 = swift_allocObject();
  *(v171 + 16) = xmmword_2278C9140;
  result = FastestWheelchairMarathonWorkout();
  if (!result)
  {
    goto LABEL_222;
  }

  v172 = result;
  v173 = [result uniqueName];

  if (v173)
  {
    v174 = sub_2278C7700();
    v176 = v175;
  }

  else
  {
    v174 = 0;
    v176 = 0;
  }

  *(v171 + 32) = v174;
  *(v171 + 40) = v176;
  *(inited + 264) = v171;
  result = SprintTriathlonWorkout();
  if (!result)
  {
    goto LABEL_223;
  }

  v177 = result;
  v178 = [result uniqueName];

  if (v178)
  {
    v179 = sub_2278C7700();
    v181 = v180;
  }

  else
  {
    v179 = 0;
    v181 = 0;
  }

  *(inited + 272) = v179;
  *(inited + 280) = v181;
  v182 = swift_allocObject();
  *(v182 + 16) = xmmword_2278C9F60;
  result = SprintTriathlonWorkout();
  if (!result)
  {
    goto LABEL_224;
  }

  v183 = result;
  v184 = [result uniqueName];

  if (v184)
  {
    v185 = sub_2278C7700();
    v187 = v186;
  }

  else
  {
    v185 = 0;
    v187 = 0;
  }

  *(v182 + 32) = v185;
  *(v182 + 40) = v187;
  result = FiftyKilometerTriathlonWorkout();
  if (!result)
  {
    goto LABEL_225;
  }

  v188 = result;
  v189 = [result uniqueName];

  if (v189)
  {
    v190 = sub_2278C7700();
    v192 = v191;
  }

  else
  {
    v190 = 0;
    v192 = 0;
  }

  *(v182 + 48) = v190;
  *(v182 + 56) = v192;
  result = HalfDistanceTriathlonWorkout();
  if (!result)
  {
    goto LABEL_226;
  }

  v193 = result;
  v194 = [result uniqueName];

  if (v194)
  {
    v195 = sub_2278C7700();
    v197 = v196;
  }

  else
  {
    v195 = 0;
    v197 = 0;
  }

  *(v182 + 64) = v195;
  *(v182 + 72) = v197;
  result = FullDistanceTriathlonWorkout();
  if (!result)
  {
    goto LABEL_227;
  }

  v198 = result;
  v199 = [result uniqueName];

  if (v199)
  {
    v200 = sub_2278C7700();
    v202 = v201;
  }

  else
  {
    v200 = 0;
    v202 = 0;
  }

  *(v182 + 80) = v200;
  *(v182 + 88) = v202;
  *(inited + 288) = v182;
  result = FiftyKilometerTriathlonWorkout();
  if (!result)
  {
    goto LABEL_228;
  }

  v203 = result;
  v204 = [result uniqueName];

  if (v204)
  {
    v205 = sub_2278C7700();
    v207 = v206;
  }

  else
  {
    v205 = 0;
    v207 = 0;
  }

  *(inited + 296) = v205;
  *(inited + 304) = v207;
  v208 = swift_allocObject();
  *(v208 + 16) = xmmword_2278C9F70;
  result = FiftyKilometerTriathlonWorkout();
  if (!result)
  {
    goto LABEL_229;
  }

  v209 = result;
  v210 = [result uniqueName];

  if (v210)
  {
    v211 = sub_2278C7700();
    v213 = v212;
  }

  else
  {
    v211 = 0;
    v213 = 0;
  }

  *(v208 + 32) = v211;
  *(v208 + 40) = v213;
  result = HalfDistanceTriathlonWorkout();
  if (!result)
  {
    goto LABEL_230;
  }

  v214 = result;
  v215 = [result uniqueName];

  if (v215)
  {
    v216 = sub_2278C7700();
    v218 = v217;
  }

  else
  {
    v216 = 0;
    v218 = 0;
  }

  *(v208 + 48) = v216;
  *(v208 + 56) = v218;
  result = FullDistanceTriathlonWorkout();
  if (!result)
  {
    goto LABEL_231;
  }

  v219 = result;
  v220 = [result uniqueName];

  if (v220)
  {
    v221 = sub_2278C7700();
    v223 = v222;
  }

  else
  {
    v221 = 0;
    v223 = 0;
  }

  *(v208 + 64) = v221;
  *(v208 + 72) = v223;
  *(inited + 312) = v208;
  result = HalfDistanceTriathlonWorkout();
  if (!result)
  {
    goto LABEL_232;
  }

  v224 = result;
  v225 = [result uniqueName];

  if (v225)
  {
    v226 = sub_2278C7700();
    v228 = v227;
  }

  else
  {
    v226 = 0;
    v228 = 0;
  }

  *(inited + 320) = v226;
  *(inited + 328) = v228;
  v229 = swift_allocObject();
  *(v229 + 16) = xmmword_2278C9F50;
  result = HalfDistanceTriathlonWorkout();
  if (!result)
  {
    goto LABEL_233;
  }

  v230 = result;
  v231 = [result uniqueName];

  if (v231)
  {
    v232 = sub_2278C7700();
    v234 = v233;
  }

  else
  {
    v232 = 0;
    v234 = 0;
  }

  *(v229 + 32) = v232;
  *(v229 + 40) = v234;
  result = FullDistanceTriathlonWorkout();
  if (!result)
  {
    goto LABEL_234;
  }

  v235 = result;
  v236 = [result uniqueName];

  if (v236)
  {
    v237 = sub_2278C7700();
    v239 = v238;
  }

  else
  {
    v237 = 0;
    v239 = 0;
  }

  *(v229 + 48) = v237;
  *(v229 + 56) = v239;
  *(inited + 336) = v229;
  result = FullDistanceTriathlonWorkout();
  if (!result)
  {
    goto LABEL_235;
  }

  v240 = result;
  v241 = [result uniqueName];

  if (v241)
  {
    v242 = sub_2278C7700();
    v244 = v243;
  }

  else
  {
    v242 = 0;
    v244 = 0;
  }

  *(inited + 344) = v242;
  *(inited + 352) = v244;
  v245 = swift_allocObject();
  *(v245 + 16) = xmmword_2278C9140;
  result = FullDistanceTriathlonWorkout();
  if (!result)
  {
    goto LABEL_236;
  }

  v246 = result;
  v247 = [result uniqueName];

  if (v247)
  {
    v248 = sub_2278C7700();
    v250 = v249;
  }

  else
  {
    v248 = 0;
    v250 = 0;
  }

  *(v245 + 32) = v248;
  *(v245 + 40) = v250;
  *(inited + 360) = v245;
  v251 = sub_2278C3DDC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6108, &qword_2278CA028);
  result = swift_arrayDestroy();
  off_27D7D60E8 = v251;
  return result;
}

uint64_t static FirstGlanceAchievementUtilities.achievementShouldSuggestRecovery(achievement:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22781659C;

  return sub_22781A974(a1);
}

uint64_t sub_227819DE4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6110, qword_2278CA030);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    sub_22781BEE8();
    **(*(v4 + 64) + 40) = sub_2278C77A0();

    return MEMORY[0x282200950](v4);
  }
}

uint64_t sub_22781A048(void *a1, void *aBlock)
{
  v2[2] = a1;
  v2[3] = _Block_copy(aBlock);
  v4 = a1;
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_22781A110;

  return sub_22781A974(v4);
}

uint64_t sub_22781A110(char a1)
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

id FirstGlanceAchievementUtilities.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FirstGlanceAchievementUtilities.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FirstGlanceAchievementUtilities();
  return objc_msgSendSuper2(&v2, sel_init);
}

id FirstGlanceAchievementUtilities.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FirstGlanceAchievementUtilities();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

BOOL sub_22781A338(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  result = (v4 | v5) == 0;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (*a1 == *a2 && v4 == v5)
    {
      return 1;
    }

    else
    {
      return sub_2278C7DC0() & 1;
    }
  }

  return result;
}

BOOL sub_22781A3AC()
{
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D60A8, qword_2278C9730);
  v0 = *(*(v60 - 8) + 64);
  v1 = MEMORY[0x28223BE20](v60);
  v50 = v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v4 = v43 - v3;
  v5 = sub_2278C6EC0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DateProvider();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v57 = v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v43 - v14;
  v16 = sub_2278C6820();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v56 = v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v46 = v43 - v21;
  v22 = *(v6 + 104);
  v49 = *MEMORY[0x277D09990];
  v22(v9);
  v47 = *(v17 + 56);
  v48 = v17 + 56;
  v47(v4, 1, 1, v16);
  v23 = sub_2278043F4(&qword_2813BC148, &qword_27D7D60A8, qword_2278C9730);
  v58 = v4;
  v45 = v23;
  sub_2278C6E20();
  v55 = v10;
  v24 = *(v10 + 20);
  v44 = *MEMORY[0x277D099C0];
  v59 = v5;
  v53 = v6 + 104;
  v54 = v22;
  v22(v9);
  v61 = 0;
  v62 = 0;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D60C0, &qword_2278C98B0);
  v26 = sub_2278043F4(&qword_2813B9BC0, &qword_27D7D60C0, &qword_2278C98B0);
  v27 = v50;
  v52 = "irectory suffix for ";
  v43[1] = v25;
  v43[0] = v26;
  sub_2278C6E20();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D60B0, &qword_2278CA000);
  sub_2278C6E00();
  v28 = *(v17 + 48);
  v29 = v28(v27, 1, v16);
  v51 = v17;
  if (v29 == 1)
  {
    v30 = v46;
    sub_2278C6810();
    sub_22781BE74(v15);
    v31 = v28(v27, 1, v16);
    v32 = v30;
    if (v31 != 1)
    {
      sub_227802FC4(v27, &qword_27D7D60A8, qword_2278C9730);
    }
  }

  else
  {
    sub_22781BE74(v15);
    v32 = v46;
    (*(v17 + 32))(v46, v27, v16);
  }

  v33 = v59;
  v34 = v54;
  (v54)(v9, v49, v59);
  v47(v58, 1, 1, v16);
  v35 = v57;
  sub_2278C6E20();
  v36 = *(v55 + 20);
  (v34)(v9, v44, v33);
  v61 = 0;
  v62 = 0;
  sub_2278C6E20();
  v37 = v56;
  sub_227804B20(v56);
  sub_22781BE74(v35);
  sub_2278C67B0();
  v39 = v38;
  if (qword_27D7D5CA0 != -1)
  {
    swift_once();
  }

  v40 = *&qword_27D7D8840;
  v41 = *(v51 + 8);
  v41(v37, v16);
  v41(v32, v16);
  return v40 < v39;
}

uint64_t sub_22781A974(uint64_t a1)
{
  v1[25] = a1;
  v2 = sub_2278C75A0();
  v1[26] = v2;
  v3 = *(v2 - 8);
  v1[27] = v3;
  v4 = *(v3 + 64) + 15;
  v1[28] = swift_task_alloc();
  v5 = sub_2278C6540();
  v1[29] = v5;
  v6 = *(v5 - 8);
  v1[30] = v6;
  v7 = *(v6 + 64) + 15;
  v1[31] = swift_task_alloc();
  v8 = sub_2278C6910();
  v1[32] = v8;
  v9 = *(v8 - 8);
  v1[33] = v9;
  v10 = *(v9 + 64) + 15;
  v1[34] = swift_task_alloc();
  v11 = sub_2278C6820();
  v1[35] = v11;
  v12 = *(v11 - 8);
  v1[36] = v12;
  v13 = *(v12 + 64) + 15;
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v14 = sub_2278C6920();
  v1[41] = v14;
  v15 = *(v14 - 8);
  v1[42] = v15;
  v16 = *(v15 + 64) + 15;
  v1[43] = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D60A8, qword_2278C9730);
  v1[44] = v17;
  v18 = *(*(v17 - 8) + 64) + 15;
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v19 = sub_2278C6EC0();
  v1[48] = v19;
  v20 = *(v19 - 8);
  v1[49] = v20;
  v21 = *(v20 + 64) + 15;
  v1[50] = swift_task_alloc();
  v22 = type metadata accessor for DateProvider();
  v1[51] = v22;
  v23 = *(*(v22 - 8) + 64) + 15;
  v1[52] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22781ACA8, 0, 0);
}

uint64_t sub_22781ACA8()
{
  if (!sub_22781A3AC())
  {
LABEL_13:
    v36 = *(v0 + 416);
    v37 = *(v0 + 400);
    v39 = *(v0 + 368);
    v38 = *(v0 + 376);
    v40 = *(v0 + 360);
    v41 = *(v0 + 344);
    v43 = *(v0 + 312);
    v42 = *(v0 + 320);
    v45 = *(v0 + 296);
    v44 = *(v0 + 304);
    v62 = *(v0 + 272);
    v64 = *(v0 + 248);
    v66 = *(v0 + 224);

    v46 = *(v0 + 8);

    return v46(0);
  }

  if (qword_27D7D5CA8 != -1)
  {
    swift_once();
  }

  v1 = qword_27D7D8848;
  v2 = [*(v0 + 200) template];
  v3 = [v2 uniqueName];

  if (v3)
  {
    v4 = sub_2278C7700();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = *(v0 + 416);
  v8 = *(v0 + 392);
  v9 = *(v0 + 400);
  v10 = *(v0 + 376);
  v58 = *(v0 + 384);
  v59 = *(v0 + 352);
  v60 = *(v0 + 408);
  v61 = *(v0 + 344);
  v63 = *(v0 + 368);
  v11 = *(v0 + 280);
  v12 = *(v0 + 288);
  *(v0 + 144) = v4;
  *(v0 + 152) = v6;
  v13 = swift_task_alloc();
  *(v13 + 16) = v0 + 144;
  *(v0 + 456) = sub_227886A4C(sub_22781BE54, v13, v1) & 1;
  *(v0 + 424) = 0;

  v65 = [objc_allocWithZone(MEMORY[0x277CE8DE0]) init];
  *(v0 + 432) = v65;
  v14 = *(v8 + 104);
  v14(v9, *MEMORY[0x277D09990], v58);
  (*(v12 + 56))(v10, 1, 1, v11);
  sub_2278043F4(&qword_2813BC148, &qword_27D7D60A8, qword_2278C9730);
  sub_2278C6E20();
  v15 = *(v60 + 20);
  v14(v9, *MEMORY[0x277D099C0], v58);
  *(v0 + 160) = 0;
  *(v0 + 168) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D60C0, &qword_2278C98B0);
  sub_2278043F4(&qword_2813B9BC0, &qword_27D7D60C0, &qword_2278C98B0);
  sub_2278C6E20();
  sub_227804920();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D60B0, &qword_2278CA000);
  sub_2278C6E00();
  v16 = *(v12 + 48);
  v17 = v16(v63, 1, v11);
  v18 = *(v0 + 368);
  if (v17 == 1)
  {
    v19 = *(v0 + 280);
    v20 = *(v0 + 320);
    sub_2278C6810();
    if (v16(v18, 1, v19) != 1)
    {
      sub_227802FC4(*(v0 + 368), &qword_27D7D60A8, qword_2278C9730);
    }
  }

  else
  {
    (*(*(v0 + 288) + 32))(*(v0 + 320), *(v0 + 368), *(v0 + 280));
  }

  v21 = *(v0 + 360);
  v22 = *(v0 + 344);
  v23 = *(v0 + 320);
  v25 = *(v0 + 272);
  v24 = *(v0 + 280);
  v26 = *(v0 + 256);
  v27 = *(v0 + 264);
  (*(v27 + 104))(v25, *MEMORY[0x277CC9998], v26);
  sub_2278C68E0();
  (*(v27 + 8))(v25, v26);
  if (v16(v21, 1, v24) == 1)
  {
    v28 = *(v0 + 416);
    v29 = *(v0 + 360);
    v31 = *(v0 + 336);
    v30 = *(v0 + 344);
    v33 = *(v0 + 320);
    v32 = *(v0 + 328);
    v34 = *(v0 + 280);
    v35 = *(v0 + 288);

    (*(v35 + 8))(v33, v34);
    (*(v31 + 8))(v30, v32);
    sub_22781BE74(v28);
    sub_227802FC4(v29, &qword_27D7D60A8, qword_2278C9730);
    goto LABEL_13;
  }

  v49 = *(v0 + 312);
  v48 = *(v0 + 320);
  v51 = *(v0 + 296);
  v50 = *(v0 + 304);
  v53 = *(v0 + 280);
  v52 = *(v0 + 288);
  v54 = *(v0 + 248);
  (*(v52 + 32))(v49, *(v0 + 360), v53);
  v55 = *(v52 + 16);
  v55(v50, v49, v53);
  v55(v51, v48, v53);
  sub_2278C6520();
  v56 = sub_2278C6500();
  *(v0 + 440) = v56;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 192;
  *(v0 + 24) = sub_22781B354;
  v57 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D60F0, &qword_2278CA008);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_227819DE4;
  *(v0 + 104) = &block_descriptor_2;
  *(v0 + 112) = v57;
  [v65 earnedAchievementsForDateInterval:v56 completion:?];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_22781B354()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 448) = v2;
  if (v2)
  {
    v3 = sub_22781B8F0;
  }

  else
  {
    v3 = sub_22781B464;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22781B464()
{
  v1 = *(v0 + 192);

  if (qword_27D7D5CB0 != -1)
  {
    goto LABEL_28;
  }

  while (1)
  {
    v2 = off_27D7D60E8;
    v3 = [*(v0 + 200) template];
    v4 = [v3 uniqueName];

    if (v4)
    {
      v5 = sub_2278C7700();
      v7 = v6;
    }

    else
    {
      v5 = 0;
      v7 = 0;
    }

    v8 = MEMORY[0x277D84F90];
    if (v2[2])
    {
      v9 = sub_2278AE3D8(v5, v7);
      v11 = v10;

      if (v11)
      {
        v59 = *(v2[7] + 8 * v9);

        goto LABEL_10;
      }
    }

    else
    {
    }

    v59 = MEMORY[0x277D84F90];
LABEL_10:
    v62 = v8;
    if (v1 >> 62)
    {
      break;
    }

    v12 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v12)
    {
      goto LABEL_30;
    }

LABEL_12:
    v13 = 0;
    v56 = v1 & 0xC000000000000001;
    v53 = v1 & 0xFFFFFFFFFFFFFF8;
    v14 = *(v0 + 424);
    while (1)
    {
      if (v56)
      {
        v15 = MEMORY[0x22AA9DBF0](v13, v1);
      }

      else
      {
        if (v13 >= *(v53 + 16))
        {
          goto LABEL_27;
        }

        v15 = *(v1 + 8 * v13 + 32);
      }

      v16 = v15;
      v17 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      v18 = v1;
      v19 = [v15 template];
      v20 = [v19 uniqueName];

      if (v20)
      {
        v21 = sub_2278C7700();
        v23 = v22;
      }

      else
      {
        v21 = 0;
        v23 = 0;
      }

      *(v0 + 176) = v21;
      *(v0 + 184) = v23;
      v24 = swift_task_alloc();
      *(v24 + 16) = v0 + 176;
      v25 = sub_227886A4C(sub_22781BF34, v24, v59);

      if (v25)
      {
        sub_2278C7CB0();
        v26 = *(v62 + 16);
        sub_2278C7CE0();
        sub_2278C7CF0();
        sub_2278C7CC0();
      }

      else
      {
      }

      v1 = v18;
      ++v13;
      if (v17 == v12)
      {
        v27 = v62;
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    swift_once();
  }

  v12 = sub_2278C7B80();
  if (v12)
  {
    goto LABEL_12;
  }

LABEL_30:
  v27 = MEMORY[0x277D84F90];
LABEL_31:

  if (v27 < 0 || (v27 & 0x4000000000000000) != 0)
  {
    v60 = sub_2278C7B80();
  }

  else
  {
    v60 = *(v27 + 16);
  }

  v57 = *(v0 + 456);
  v28 = *(v0 + 336);
  v51 = *(v0 + 344);
  v54 = *(v0 + 416);
  v29 = *(v0 + 320);
  v50 = *(v0 + 328);
  v30 = *(v0 + 312);
  v32 = *(v0 + 280);
  v31 = *(v0 + 288);
  v33 = *(v0 + 240);
  v34 = *(v0 + 248);
  v35 = *(v0 + 232);

  (*(v33 + 8))(v34, v35);
  v36 = *(v31 + 8);
  v36(v30, v32);
  v36(v29, v32);
  (*(v28 + 8))(v51, v50);
  sub_22781BE74(v54);
  v37 = *(v0 + 416);
  v38 = v57;
  if (v60 >= 2)
  {
    v38 = 0;
  }

  v61 = v38;
  v39 = *(v0 + 400);
  v41 = *(v0 + 368);
  v40 = *(v0 + 376);
  v42 = *(v0 + 360);
  v43 = *(v0 + 344);
  v45 = *(v0 + 312);
  v44 = *(v0 + 320);
  v46 = *(v0 + 296);
  v47 = *(v0 + 304);
  v52 = *(v0 + 272);
  v55 = *(v0 + 248);
  v58 = *(v0 + 224);

  v48 = *(v0 + 8);

  return v48(v61);
}

uint64_t sub_22781B8F0()
{
  v1 = *(v0 + 440);
  v2 = *(v0 + 448);
  v3 = *(v0 + 224);
  swift_willThrow();

  sub_2278C7340();
  v4 = v2;
  v5 = sub_2278C7590();
  v6 = sub_2278C7950();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 448);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_2277F7000, v5, v6, "Failed to fetch earned achievements: %@", v8, 0xCu);
    sub_227802FC4(v9, &qword_27D7D64B0, &qword_2278CA010);
    MEMORY[0x22AA9E860](v9, -1, -1);
    MEMORY[0x22AA9E860](v8, -1, -1);
  }

  v12 = *(v0 + 448);
  v40 = *(v0 + 344);
  v42 = *(v0 + 416);
  v13 = v5;
  v14 = *(v0 + 336);
  v37 = *(v0 + 320);
  v38 = *(v0 + 328);
  v36 = *(v0 + 312);
  v16 = *(v0 + 280);
  v15 = *(v0 + 288);
  v17 = *(v0 + 240);
  v18 = *(v0 + 224);
  v34 = *(v0 + 232);
  v35 = *(v0 + 248);
  v19 = *(v0 + 208);
  v20 = *(v0 + 216);

  (*(v20 + 8))(v18, v19);
  (*(v17 + 8))(v35, v34);
  v21 = *(v15 + 8);
  v21(v36, v16);
  v21(v37, v16);
  (*(v14 + 8))(v40, v38);
  sub_22781BE74(v42);
  v22 = *(v0 + 416);
  v23 = *(v0 + 400);
  v25 = *(v0 + 368);
  v24 = *(v0 + 376);
  v26 = *(v0 + 360);
  v27 = *(v0 + 344);
  v29 = *(v0 + 312);
  v28 = *(v0 + 320);
  v31 = *(v0 + 296);
  v30 = *(v0 + 304);
  v39 = *(v0 + 272);
  v41 = *(v0 + 248);
  v43 = *(v0 + 224);

  v32 = *(v0 + 8);

  return v32(0);
}

uint64_t sub_22781BBD4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2278003CC;

  return sub_22781A048(v2, v3);
}

uint64_t sub_22781BC88()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_2278004C0;

  return sub_227888188(v2, v3, v5);
}

uint64_t objectdestroy_5Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22781BD88(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2278004C0;

  return sub_227829B14(a1, v4, v5, v7);
}

uint64_t sub_22781BE74(uint64_t a1)
{
  v2 = type metadata accessor for DateProvider();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22781BEE8()
{
  result = qword_2813B9B60;
  if (!qword_2813B9B60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2813B9B60);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DuetError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DuetError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22781C0C0()
{
  result = qword_27D7D6118;
  if (!qword_27D7D6118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7D6118);
  }

  return result;
}

uint64_t sub_22781C128()
{
  v1 = *v0;
  sub_2278C7E60();
  MEMORY[0x22AA9DDE0](v1);
  return sub_2278C7E90();
}

uint64_t sub_22781C19C()
{
  v1 = *v0;
  sub_2278C7E60();
  MEMORY[0x22AA9DDE0](v1);
  return sub_2278C7E90();
}

uint64_t sub_22781C1F0(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2278003CC;

  return v9(a1, a2);
}

uint64_t sub_22781C308(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_2278C75A0();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v6 = sub_2278C6F70();
  v2[13] = v6;
  v7 = *(v6 - 8);
  v2[14] = v7;
  v8 = *(v7 + 64) + 15;
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22781C43C, v1, 0);
}

uint64_t sub_22781C43C()
{
  __swift_project_boxed_opaque_existential_1((v0[8] + 112), *(v0[8] + 136));
  sub_22786F010(v0 + 2);
  v1 = *__swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v2 = swift_task_alloc();
  v0[17] = v2;
  *v2 = v0;
  v2[1] = sub_22781C56C;

  return sub_22782A56C();
}

uint64_t sub_22781C56C()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *v1;
  *(*v1 + 144) = v0;

  v5 = *(v2 + 64);
  if (v0)
  {
    v6 = sub_22781C868;
  }

  else
  {
    v6 = sub_22781C698;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22781C698()
{
  v1 = *__swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v2 = swift_task_alloc();
  v0[19] = v2;
  *v2 = v0;
  v2[1] = sub_22781C73C;
  v3 = v0[16];

  return sub_22782BEE8(v3);
}

uint64_t sub_22781C73C()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *v1;
  *(*v1 + 160) = v0;

  v5 = *(v2 + 64);
  if (v0)
  {
    v6 = sub_22781CB9C;
  }

  else
  {
    v6 = sub_22781C8F8;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22781C868()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[18];
  v3 = v0[15];
  v2 = v0[16];
  v5 = v0[11];
  v4 = v0[12];

  v6 = v0[1];

  return v6();
}

uint64_t sub_22781C8F8()
{
  v32 = v0;
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[13];
  v4 = v0[14];
  v5 = v0[12];
  sub_2278C7340();
  (*(v4 + 16))(v1, v2, v3);
  v6 = sub_2278C7590();
  v7 = sub_2278C7970();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[14];
  v9 = v0[15];
  v11 = v0[12];
  v12 = v0[13];
  v14 = v0[9];
  v13 = v0[10];
  if (v8)
  {
    v28 = v7;
    v15 = swift_slowAlloc();
    v30 = v14;
    v31 = swift_slowAlloc();
    v16 = v31;
    *v15 = 136315138;
    v17 = MEMORY[0x22AA9D410](v12, MEMORY[0x277D09A08]);
    v29 = v11;
    v19 = v18;
    (*(v10 + 8))(v9, v12);
    v20 = sub_2278021B4(v17, v19, &v31);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_2277F7000, v6, v28, "Built first glance content: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x22AA9E860](v16, -1, -1);
    MEMORY[0x22AA9E860](v15, -1, -1);

    v21 = *(v13 + 8);
    v21(v29, v30);
  }

  else
  {

    (*(v10 + 8))(v9, v12);
    v21 = *(v13 + 8);
    v21(v11, v14);
  }

  v22 = v0[15];
  v23 = v0[11];
  v24 = v0[12];
  v25 = v0[9];
  (*(v0[14] + 32))(v0[7], v0[16], v0[13]);
  sub_2278C7340();
  sub_2278C7580();
  v21(v23, v25);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v26 = v0[1];

  return v26();
}

uint64_t sub_22781CB9C()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  sub_2278C7340();
  sub_2278C7580();
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v4 = v0[20];
  v6 = v0[15];
  v5 = v0[16];
  v8 = v0[11];
  v7 = v0[12];

  v9 = v0[1];

  return v9();
}

uint64_t sub_22781CCB0(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](sub_22781CCD0, 0, 0);
}

uint64_t sub_22781CCD0()
{
  v1 = v0[6];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[8] = v3;
    *v3 = v0;
    v3[1] = sub_22781CE38;
    v4 = v0[5];

    return sub_22781C308(v4);
  }

  else
  {
    v6 = sub_2278C6E50();
    sub_22781D014();
    swift_allocError();
    (*(*(v6 - 8) + 104))(v7, *MEMORY[0x277D098A8], v6);
    swift_willThrow();
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_22781CE38()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_22781CFB0;
  }

  else
  {
    v3 = sub_22781CF4C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22781CF4C()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22781CFB0()
{
  v1 = v0[7];

  v2 = v0[9];
  v3 = v0[1];

  return v3();
}

unint64_t sub_22781D014()
{
  result = qword_27D7D6120;
  if (!qword_27D7D6120)
  {
    sub_2278C6E50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7D6120);
  }

  return result;
}

uint64_t sub_22781D06C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_2278003CC;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_22781D19C(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22780523C;

  return v9(a1, a2);
}

uint64_t sub_22781D2B4(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 24);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2278004C0;

  return v9(a1, a2);
}

uint64_t sub_22781D3CC(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 32);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_227806768;

  return v9(a1, a2);
}

uint64_t sub_22781D4F8(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 120) = a3;
  *(v4 + 16) = a1;
  v5 = sub_2278C6920();
  *(v4 + 40) = v5;
  v6 = *(v5 - 8);
  *(v4 + 48) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 56) = swift_task_alloc();
  v8 = sub_2278C6820();
  *(v4 + 64) = v8;
  v9 = *(v8 - 8);
  *(v4 + 72) = v9;
  v10 = *(v9 + 64) + 15;
  *(v4 + 80) = swift_task_alloc();
  v11 = sub_2278C7200();
  *(v4 + 88) = v11;
  v12 = *(v11 - 8);
  *(v4 + 96) = v12;
  v13 = *(v12 + 64) + 15;
  *(v4 + 104) = swift_task_alloc();
  *(v4 + 112) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22781D684, 0, 0);
}

uint64_t sub_22781D684()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  (*(v3 + 16))(v1, *(v0 + 24), v2);
  v4 = (*(v3 + 88))(v1, v2);
  if (v4 != *MEMORY[0x277D09AD8])
  {
    return sub_2278C7D00();
  }

  v5 = v4;
  v6 = *(v0 + 104);
  v38 = *(v0 + 112);
  v8 = *(v0 + 88);
  v7 = *(v0 + 96);
  v28 = *(v0 + 80);
  v35 = *(v0 + 72);
  v36 = *(v0 + 64);
  v30 = *(v0 + 56);
  v31 = *(v0 + 48);
  v32 = *(v0 + 40);
  v9 = *(v0 + 32);
  v37 = *(v0 + 120);
  v10 = *(v0 + 16);
  v11 = v9[16];
  __swift_project_boxed_opaque_existential_1(v9 + 12, v9[15]);
  v12 = sub_2278C7060();
  v33 = v13;
  v34 = v12;
  v14 = v9[16];
  __swift_project_boxed_opaque_existential_1(v9 + 12, v9[15]);
  (*(v7 + 104))(v6, v5, v8);
  v29 = sub_2278C7050();
  v16 = v15;
  (*(v7 + 8))(v6, v8);
  __swift_project_boxed_opaque_existential_1(v9 + 7, v9[10]);
  v17 = off_283AE99E0;
  type metadata accessor for DateProvider();
  v17(v28);
  __swift_project_boxed_opaque_existential_1(v9 + 7, v9[10]);
  sub_227804920();
  v18 = type metadata accessor for NotificationRequest();
  v19 = v10 + v18[8];
  sub_2278C6760();
  (*(v31 + 8))(v30, v32);
  (*(v35 + 8))(v28, v36);
  v20 = *MEMORY[0x277D09C40];
  v21 = sub_2278C7700();
  *v10 = v34;
  *(v10 + 8) = v33;
  *(v10 + 16) = v29;
  *(v10 + 24) = v16;
  *(v10 + 32) = v21;
  *(v10 + 40) = v22;
  *(v10 + 48) = v37;
  v23 = (v10 + v18[9]);
  *v23 = 0xD00000000000002CLL;
  v23[1] = 0x80000002278D07B0;
  *(v10 + v18[10]) = 0;
  v24 = (v10 + v18[11]);
  *v24 = 0;
  v24[1] = 0;
  *(v10 + v18[12]) = xmmword_2278CA1C0;
  v25 = (v10 + v18[13]);
  *v25 = 0;
  v25[1] = 0;
  *(v10 + v18[14]) = 0;

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_22781D9D8()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  __swift_destroy_boxed_opaque_existential_0((v0 + 96));

  __swift_destroy_boxed_opaque_existential_0((v0 + 144));
  __swift_destroy_boxed_opaque_existential_0((v0 + 184));

  return swift_deallocClassInstance();
}

uint64_t sub_22781DA5C()
{
  *(v1 + 184) = v0;
  v2 = swift_task_alloc();
  *(v1 + 192) = v2;
  *v2 = v1;
  v2[1] = sub_22781DAEC;

  return sub_22781E3A4();
}

uint64_t sub_22781DAEC(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 192);
  v6 = *v2;
  *(*v2 + 200) = v1;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 248) = a1 & 1;

    return MEMORY[0x2822009F8](sub_22781DC40, 0, 0);
  }
}

uint64_t sub_22781DC40()
{
  if (*(v0 + 248))
  {
    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v3 = __swift_project_boxed_opaque_existential_1((*(v0 + 184) + 184), *(*(v0 + 184) + 208));
    v4 = *v3;
    *(v0 + 208) = *v3;

    return MEMORY[0x2822009F8](sub_22781DCF0, v4, 0);
  }
}

uint64_t sub_22781DCF0()
{
  *(v0 + 216) = *__swift_project_boxed_opaque_existential_1((*(v0 + 208) + 152), *(*(v0 + 208) + 176));

  return MEMORY[0x2822009F8](sub_22781DD68, 0, 0);
}

uint64_t sub_22781DD68()
{
  v1 = v0[27];
  v0[2] = v0;
  v0[7] = v0 + 22;
  v0[3] = sub_22781DE84;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6128, &qword_2278CA2A0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_22781F5FC;
  v0[13] = &block_descriptor_3;
  v0[14] = v2;
  [v1 getDeliveredNotificationsWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_22781DE84()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22781DF64, 0, 0);
}

uint64_t sub_22781DF88()
{
  v44 = v0;
  v1 = v0[28];
  v42[0] = MEMORY[0x277D84F90];
  if (v1 >> 62)
  {
    goto LABEL_34;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v1; ; i = v0[28])
  {
    v4 = MEMORY[0x277D84F90];
    if (v2)
    {
      v5 = 0;
      v37 = v1 & 0xFFFFFFFFFFFFFF8;
      v39 = v1 & 0xC000000000000001;
      v35 = i + 32;
      while (1)
      {
        if (v39)
        {
          v6 = MEMORY[0x22AA9DBF0](v5, v0[28]);
        }

        else
        {
          if (v5 >= *(v37 + 16))
          {
            goto LABEL_31;
          }

          v6 = *(v35 + 8 * v5);
        }

        v7 = v6;
        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v9 = v2;
        v10 = [v6 request];
        v11 = [v10 identifier];

        v12 = sub_2278C7700();
        v14 = v13;

        v0[18] = v12;
        v0[19] = v14;
        v0[20] = 0xD00000000000002CLL;
        v0[21] = 0x80000002278D07B0;
        sub_22781F6EC();
        v1 = sub_2278C7AC0();

        if (v1)
        {
          sub_2278C7CB0();
          v15 = *(v42[0] + 16);
          sub_2278C7CE0();
          sub_2278C7CF0();
          v1 = v42;
          sub_2278C7CC0();
        }

        else
        {
        }

        v2 = v9;
        ++v5;
        if (v8 == v9)
        {
          v16 = v42[0];
          v17 = v0[28];
          v4 = MEMORY[0x277D84F90];
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v16 = MEMORY[0x277D84F90];
LABEL_16:

    if ((v16 & 0x8000000000000000) == 0 && (v16 & 0x4000000000000000) == 0)
    {
      v18 = *(v16 + 16);
      if (!v18)
      {
        break;
      }

      goto LABEL_19;
    }

    v18 = sub_2278C7B80();
    if (!v18)
    {
      break;
    }

LABEL_19:
    v41 = v4;
    v1 = &v41;
    v19 = sub_2278B4884(0, v18 & ~(v18 >> 63), 0);
    if (v18 < 0)
    {
      __break(1u);
      return MEMORY[0x2822009F8](v19, v20, v21);
    }

    v22 = 0;
    v23 = v41;
    v24 = v16;
    v38 = v16;
    v40 = v16 & 0xC000000000000001;
    v25 = v0[25];
    v36 = v18;
    while (1)
    {
      v26 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v40)
      {
        v27 = MEMORY[0x22AA9DBF0](v22);
      }

      else
      {
        if (v22 >= *(v24 + 16))
        {
          goto LABEL_33;
        }

        v27 = *(v24 + 8 * v22 + 32);
      }

      v1 = v27;
      v43 = v27;
      sub_22781EDDC(&v43, v42);

      v28 = v42[0];
      v29 = v42[1];
      v41 = v23;
      v31 = *(v23 + 16);
      v30 = *(v23 + 24);
      if (v31 >= v30 >> 1)
      {
        v1 = &v41;
        sub_2278B4884((v30 > 1), v31 + 1, 1);
        v23 = v41;
      }

      *(v23 + 16) = v31 + 1;
      v32 = v23 + 16 * v31;
      *(v32 + 32) = v28;
      *(v32 + 40) = v29;
      ++v22;
      v24 = v38;
      if (v26 == v36)
      {

        goto LABEL_37;
      }
    }

LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    v2 = sub_2278C7B80();
  }

  v23 = MEMORY[0x277D84F90];
LABEL_37:
  v0[29] = v23;
  v33 = __swift_project_boxed_opaque_existential_1((v0[23] + 184), *(v0[23] + 208));
  v20 = *v33;
  v0[30] = *v33;
  v19 = sub_22781E304;
  v21 = 0;

  return MEMORY[0x2822009F8](v19, v20, v21);
}

uint64_t sub_22781E304()
{
  v1 = v0[29];
  __swift_project_boxed_opaque_existential_1((v0[30] + 152), *(v0[30] + 176));
  off_283AEB7D0();

  v2 = v0[1];

  return v2();
}

uint64_t sub_22781E3A4()
{
  v1[2] = v0;
  v2 = sub_2278C6920();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = sub_2278C6820();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v8 = sub_2278C75A0();
  v1[10] = v8;
  v9 = *(v8 - 8);
  v1[11] = v9;
  v10 = *(v9 + 64) + 15;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22781E54C, 0, 0);
}

uint64_t sub_22781E54C()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 16) + 144), *(*(v0 + 16) + 168));
  v4 = off_283AECC48 + *off_283AECC48;
  v1 = *(off_283AECC48 + 1);
  v2 = swift_task_alloc();
  *(v0 + 128) = v2;
  *v2 = v0;
  v2[1] = sub_22781E680;

  return (v4)(&type metadata for PauseRingsSampleQuery, &off_283AECC40);
}

uint64_t sub_22781E680(uint64_t a1)
{
  v3 = *(*v2 + 128);
  v4 = *v2;
  v4[17] = a1;

  if (v1)
  {
    v6 = v4[14];
    v5 = v4[15];
    v8 = v4[12];
    v7 = v4[13];
    v10 = v4[8];
    v9 = v4[9];
    v11 = v4[5];

    v12 = v4[1];

    return v12(0);
  }

  else
  {

    return MEMORY[0x2822009F8](sub_22781E820, 0, 0);
  }
}

_BYTE *sub_22781E820()
{
  v1 = v0[17];
  if (!v1)
  {
    v7 = v0[12];
    sub_2278C7330();
    v8 = sub_2278C7590();
    v9 = sub_2278C7970();
    v10 = os_log_type_enabled(v8, v9);
    v12 = v0[11];
    v11 = v0[12];
    v13 = v0[10];
    if (v10)
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_2277F7000, v8, v9, "We are not currently paused, not elgibile for pause rings reminder", v14, 2u);
      MEMORY[0x22AA9E860](v14, -1, -1);
    }

    (*(v12 + 8))(v11, v13);
    goto LABEL_23;
  }

  v2 = v0[15];
  sub_2278C7330();
  v3 = v1;
  v4 = sub_2278C7590();
  v5 = sub_2278C7970();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134218240;
    *(v6 + 4) = [v3 startDateIndex];
    *(v6 + 12) = 2048;
    *(v6 + 14) = [v3 endDateIndex];

    _os_log_impl(&dword_2277F7000, v4, v5, "We are current paused from %lld -> %lld", v6, 0x16u);
    MEMORY[0x22AA9E860](v6, -1, -1);
  }

  else
  {
  }

  v15 = *(v0[11] + 8);
  v15(v0[15], v0[10]);
  v16 = [v3 endDateIndex];
  result = [v3 startDateIndex];
  v18 = __OFSUB__(v16, result);
  v19 = v16 - result;
  if (v18)
  {
    __break(1u);
    goto LABEL_28;
  }

  result = sub_2278C7890();
  if ((*&v20 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v20 <= -9.22337204e18)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v20 >= 9.22337204e18)
  {
LABEL_30:
    __break(1u);
    return result;
  }

  if (v19 <= v20)
  {
    v34 = v0[13];
    sub_2278C7330();
    v35 = sub_2278C7590();
    v36 = sub_2278C7970();
    v37 = os_log_type_enabled(v35, v36);
    v38 = v0[13];
    v39 = v0[10];
    if (v37)
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_2277F7000, v35, v36, "Pause is less than a day, not elgibile for pause rings reminder", v40, 2u);
      MEMORY[0x22AA9E860](v40, -1, -1);
    }

    else
    {
    }

    v15(v38, v39);
    goto LABEL_23;
  }

  v22 = v0[8];
  v21 = v0[9];
  v60 = v3;
  v23 = v0[7];
  v25 = v0[4];
  v24 = v0[5];
  v58 = v0[3];
  v59 = v0[6];
  __swift_project_boxed_opaque_existential_1((v0[2] + 56), *(v0[2] + 80));
  v26 = off_283AE99E0;
  type metadata accessor for DateProvider();
  v26(v22);
  sub_2278C6900();
  sub_2278C6780();
  v27 = *(v25 + 8);
  v27(v24, v58);
  v28 = *(v23 + 8);
  v28(v22, v59);
  v29 = sub_2278C67D0();
  v30 = [objc_opt_self() hk_gregorianCalendar];
  sub_2278C68C0();

  v31 = sub_2278C68B0();
  v27(v24, v58);
  v32 = _HKCacheIndexFromDate();

  if (v32 != [v60 endDateIndex])
  {
    v41 = v0[14];
    sub_2278C7330();
    v42 = v60;
    v43 = sub_2278C7590();
    v44 = sub_2278C7970();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 134218240;
      *(v45 + 4) = [v42 endDateIndex];

      *(v45 + 12) = 2048;
      *(v45 + 14) = v32;
      _os_log_impl(&dword_2277F7000, v43, v44, "Pause ends [%lld] but tomorrow is [%lld], not eligible for pause rings reminder.", v45, 0x16u);
      MEMORY[0x22AA9E860](v45, -1, -1);
    }

    else
    {
    }

    v46 = v0[14];
    v48 = v0[9];
    v47 = v0[10];
    v49 = v0[6];

    v15(v46, v47);
    v28(v48, v49);
LABEL_23:
    v33 = 0;
    goto LABEL_24;
  }

  v28(v0[9], v0[6]);

  v33 = 1;
LABEL_24:
  v51 = v0[14];
  v50 = v0[15];
  v53 = v0[12];
  v52 = v0[13];
  v55 = v0[8];
  v54 = v0[9];
  v56 = v0[5];

  v57 = v0[1];

  return v57(v33);
}

void sub_22781EDDC(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_2278C75A0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  sub_2278C7330();
  v10 = v9;
  v11 = sub_2278C7590();
  v12 = sub_2278C7970();

  v13 = &off_2785DA000;
  if (os_log_type_enabled(v11, v12))
  {
    v14 = swift_slowAlloc();
    v34 = a2;
    v15 = v14;
    v32 = swift_slowAlloc();
    v35 = v32;
    *v15 = 136315138;
    v16 = [v10 request];
    v33 = v10;
    v17 = v16;
    v18 = [v16 identifier];
    v31 = v4;
    v19 = v18;

    v20 = sub_2278C7700();
    v22 = v21;

    v23 = sub_2278021B4(v20, v22, &v35);
    v13 = &off_2785DA000;

    *(v15 + 4) = v23;
    v10 = v33;
    _os_log_impl(&dword_2277F7000, v11, v12, "Suppressing posted notifcation: %s", v15, 0xCu);
    v24 = v32;
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x22AA9E860](v24, -1, -1);
    v25 = v15;
    a2 = v34;
    MEMORY[0x22AA9E860](v25, -1, -1);

    (*(v5 + 8))(v8, v31);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  v26 = [v10 request];
  v27 = [v26 v13[237]];

  v28 = sub_2278C7700();
  v30 = v29;

  *a2 = v28;
  a2[1] = v30;
}

uint64_t sub_22781F068@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v62 = a1;
  v3 = sub_2278C6540();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v61 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_2278C6910();
  v58 = *(v60 - 8);
  v6 = *(v58 + 64);
  MEMORY[0x28223BE20](v60);
  v56 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_2278C6820();
  v49 = *(v51 - 8);
  v8 = v49;
  v9 = *(v49 + 64);
  v10 = MEMORY[0x28223BE20](v51);
  v59 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v57 = &v49 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v49 - v15;
  MEMORY[0x28223BE20](v14);
  v50 = &v49 - v17;
  v18 = sub_2278C6920();
  v54 = v18;
  v63 = *(v18 - 8);
  v19 = *(v63 + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v49 - v23;
  __swift_project_boxed_opaque_existential_1((v1 + 56), *(v1 + 80));
  v52 = v24;
  sub_227804920();
  __swift_project_boxed_opaque_existential_1((v2 + 56), *(v2 + 80));
  sub_227804920();
  __swift_project_boxed_opaque_existential_1((v2 + 56), *(v2 + 80));
  v25 = off_283AE99E0;
  type metadata accessor for DateProvider();
  v25(v16);
  v26 = v50;
  sub_2278C6890();
  v53 = *(v8 + 8);
  v27 = v51;
  v53(v16, v51);
  v28 = *(v63 + 8);
  v63 += 8;
  v55 = v28;
  v28(v22, v18);
  v29 = v58;
  v30 = v56;
  v31 = v60;
  (*(v58 + 104))(v56, *MEMORY[0x277CC9968], v60);
  v32 = v26;
  sub_2278C66E0();
  (*(v29 + 8))(v30, v31);
  sub_2278040AC(v1 + 16, v66);
  v33 = *(v49 + 16);
  v33(v57, v16, v27);
  v34 = v27;
  v33(v59, v32, v27);
  v35 = v61;
  sub_2278C6520();
  sub_2278040AC(v1 + 56, v64);
  v36 = v65;
  v37 = __swift_mutable_project_boxed_opaque_existential_1(v64, v65);
  v38 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v37);
  v40 = &v49 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v41 + 16))(v40);
  sub_227869CE4(v66, v35, v40);
  __swift_destroy_boxed_opaque_existential_0(v64);

  v43 = sub_227869FAC(v42);
  v44 = type metadata accessor for TypicalDayProvider();
  v45 = v62;
  v62[3] = v44;
  v45[4] = &off_283AED4B0;
  v46 = v45;

  *v46 = v43;
  v47 = v53;
  v53(v16, v34);
  v47(v32, v34);
  return v55(v52, v54);
}

uint64_t sub_22781F5FC(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  sub_22781F740();
  **(*(v1 + 64) + 40) = sub_2278C77A0();

  return MEMORY[0x282200948](v1);
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

unint64_t sub_22781F6EC()
{
  result = qword_2813B9BD0;
  if (!qword_2813B9BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813B9BD0);
  }

  return result;
}

unint64_t sub_22781F740()
{
  result = qword_2813B9B58;
  if (!qword_2813B9B58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2813B9B58);
  }

  return result;
}

uint64_t sub_22781F78C(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2278004C0;

  return v9(a1, a2);
}

uint64_t sub_22781F8A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2278003CC;

  return v11(a1, a2, a3);
}

uint64_t sub_22781F9CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 24);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2278004C0;

  return v11(a1, a2, a3);
}

uint64_t sub_22781FAF4(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 32);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22781659C;

  return v9(a1, a2);
}

uint64_t sub_22781FC0C(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 40);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_227818538;

  return v9(a1, a2);
}

uint64_t sub_22781FD24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 48);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2278004C0;

  return v11(a1, a2, a3);
}

uint64_t sub_22781FE4C(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2[21] = a1;
  v2[22] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D60D0, &unk_2278C9AC0) - 8) + 64) + 15;
  v2[23] = swift_task_alloc();
  v4 = sub_2278C75A0();
  v2[24] = v4;
  v5 = *(v4 - 8);
  v2[25] = v5;
  v6 = *(v5 + 64) + 15;
  v2[26] = swift_task_alloc();
  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_22781FF70, v1, 0);
}

uint64_t sub_22781FF70()
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  v3 = *(v0 + 192);
  sub_2278C73A0();
  sub_2278C7580();
  (*(v2 + 8))(v1, v3);
  *(v0 + 248) = 0;
  v4 = SBSGetScreenLockStatus();
  v5 = *(v0 + 176);
  if (v4)
  {
    v6 = *(v0 + 168);
    v7 = __swift_project_boxed_opaque_existential_1(v5 + 19, v5[22]);
    *(v0 + 224) = sub_2278AC8C0();
    *(v0 + 232) = *v7;
    v8 = *MEMORY[0x277D85DE8];
    v9 = sub_227820300;
    v10 = 0;
  }

  else
  {
    v11 = __swift_project_boxed_opaque_existential_1(v5 + 24, v5[27]);
    v10 = *v11;
    *(v0 + 216) = *v11;
    v12 = *MEMORY[0x277D85DE8];
    v9 = sub_2278200E0;
  }

  return MEMORY[0x2822009F8](v9, v10, 0);
}

uint64_t sub_2278200E0()
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = v0[27];
  v2 = v0[22];
  v3 = v0[23];
  v4 = v0[21];
  v5 = type metadata accessor for NotificationRequest();
  v6 = (v4 + *(v5 + 36));
  v7 = *v6;
  v8 = v6[1];
  sub_2278101A4(v4, v3);
  (*(*(v5 - 8) + 56))(v3, 0, 1, v5);
  swift_beginAccess();

  sub_22788B434(v3, v7, v8);
  swift_endAccess();
  sub_2278B4388();
  v9 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_22782022C, v2, 0);
}

uint64_t sub_22782022C()
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = v0[22];
  sub_227821CC4();
  v2 = v0[26];
  v3 = v0[23];

  v4 = v0[1];
  v5 = *MEMORY[0x277D85DE8];

  return v4();
}

uint64_t sub_227820300()
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = v0[28];
  v1 = v0[29];
  v0[2] = v0;
  v0[3] = sub_22782044C;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6130, qword_2278CD4F0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_227822B84;
  v0[13] = &block_descriptor_25;
  v0[14] = v3;
  [v1 addNotificationRequest:v2 withCompletionHandler:v0 + 10];
  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_22782044C()
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 240) = v2;
  if (v2)
  {
    v3 = sub_22782062C;
  }

  else
  {
    v3 = sub_227820588;
  }

  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227820588()
{
  v6 = *MEMORY[0x277D85DE8];

  v1 = *(v0 + 208);
  v2 = *(v0 + 184);

  v3 = *(v0 + 8);
  v4 = *MEMORY[0x277D85DE8];

  return v3();
}

uint64_t sub_22782062C()
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = v0[30];
  v2 = v0[28];
  swift_willThrow();

  v3 = v0[30];
  v4 = v0[26];
  v5 = v0[23];

  v6 = v0[1];
  v7 = *MEMORY[0x277D85DE8];

  return v6();
}

uint64_t sub_2278206E0()
{
  v11 = *MEMORY[0x277D85DE8];
  v1[32] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D60D0, &unk_2278C9AC0) - 8) + 64) + 15;
  v1[33] = swift_task_alloc();
  v3 = type metadata accessor for NotificationRequest();
  v1[34] = v3;
  v4 = *(v3 - 8);
  v1[35] = v4;
  v5 = *(v4 + 64) + 15;
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v6 = sub_2278C75A0();
  v1[40] = v6;
  v7 = *(v6 - 8);
  v1[41] = v7;
  v8 = *(v7 + 64) + 15;
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v9 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_2278208B0, v0, 0);
}

uint64_t sub_2278208B0()
{
  v31 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 360);
  v2 = *(v0 + 320);
  v3 = *(v0 + 328);
  v4 = *(v0 + 256);
  sub_2278C73A0();
  sub_2278C7580();
  v5 = *(v3 + 8);
  *(v0 + 368) = v5;
  *(v0 + 376) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v2);
  v6 = *(v4 + 272);
  *(v0 + 384) = v6;
  v7 = *(v4 + 280);
  *(v0 + 493) = v7;
  if (v7 != 255)
  {
    *(v0 + 492) = 0;
    v8 = v6;
    if (SBSGetScreenLockStatus())
    {
      v9 = __swift_project_boxed_opaque_existential_1((*(v0 + 256) + 192), *(*(v0 + 256) + 216));
      v10 = *v9;
      *(v0 + 392) = *v9;
      v11 = *MEMORY[0x277D85DE8];

      return MEMORY[0x2822009F8](sub_227820B64, v10, 0);
    }

    v12 = *(v0 + 336);
    sub_2278C73A0();
    v13 = sub_2278C7590();
    v14 = sub_2278C7950();
    v15 = os_log_type_enabled(v13, v14);
    v16 = *(v0 + 336);
    v17 = *(v0 + 320);
    if (v15)
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_2277F7000, v13, v14, "Received screen locked event but SpringBoard reports unlocked", v18, 2u);
      MEMORY[0x22AA9E860](v18, -1, -1);
    }

    sub_22780117C(v6, v7);

    v5(v16, v17);
  }

  v20 = *(v0 + 352);
  v19 = *(v0 + 360);
  v22 = *(v0 + 336);
  v21 = *(v0 + 344);
  v24 = *(v0 + 304);
  v23 = *(v0 + 312);
  v26 = *(v0 + 288);
  v25 = *(v0 + 296);
  v27 = *(v0 + 264);

  v28 = *(v0 + 8);
  v29 = *MEMORY[0x277D85DE8];

  return v28();
}

uint64_t sub_227820B64()
{
  v11 = v0;
  v10[5] = *MEMORY[0x277D85DE8];
  v1 = v0[49];
  swift_beginAccess();
  v2 = *(v1 + 112);
  v3 = v2[2];
  if (v3)
  {
    v4 = v0[35];
    v5 = sub_2278A31B4(v2[2], 0);
    v6 = sub_2278A45A4(v10, v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v3, v2);

    sub_227806704();
    if (v6 == v3)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v5 = MEMORY[0x277D84F90];
LABEL_5:
  v0[50] = v5;
  v7 = v0[32];
  v8 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_227820CB0, v7, 0);
}

uint64_t sub_227820CB0()
{
  v34 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 400);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = *(v0 + 312);
    v5 = *(v0 + 280);
    v6 = MEMORY[0x277D84F90];
    v33 = v4;
    do
    {
      if (v3 >= *(v1 + 16))
      {
        __break(1u);
      }

      v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v8 = *(v5 + 72);
      sub_2278101A4(*(v0 + 400) + v7 + v8 * v3, *(v0 + 312));
      v9 = *(v0 + 312);
      if (*(v4 + 48) - 1 > 1)
      {
        sub_227810208(v9);
      }

      else
      {
        sub_227810264(v9, *(v0 + 304));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2278B4840(0, *(v6 + 16) + 1, 1);
        }

        v11 = *(v6 + 16);
        v10 = *(v6 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_2278B4840(v10 > 1, v11 + 1, 1);
        }

        v12 = *(v0 + 304);
        *(v6 + 16) = v11 + 1;
        sub_227810264(v12, v6 + v7 + v11 * v8);
        v4 = v33;
      }

      ++v3;
    }

    while (v2 != v3);
    v13 = *(v0 + 400);
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  *(v0 + 408) = v6;

  v14 = *(v6 + 16);
  *(v0 + 416) = v14;
  if (v14)
  {
    v15 = *(v0 + 280);
    v16 = *(v0 + 256);
    v17 = *(v15 + 80);
    *(v0 + 488) = v17;
    v18 = *(v15 + 72);
    *(v0 + 432) = 0;
    *(v0 + 440) = 0;
    *(v0 + 424) = v18;
    sub_2278101A4(*(v0 + 408) + ((v17 + 32) & ~v17), *(v0 + 296));
    v19 = __swift_project_boxed_opaque_existential_1((v16 + 152), *(v16 + 176));
    *(v0 + 448) = sub_2278AC8C0();
    *(v0 + 456) = *v19;
    v20 = *MEMORY[0x277D85DE8];

    return MEMORY[0x2822009F8](sub_227821120, 0, 0);
  }

  else
  {

    sub_227829CA8(*(v0 + 384), *(v0 + 493) & 1);
    sub_22780117C(*(v0 + 384), *(v0 + 493));
    v22 = *(v0 + 352);
    v21 = *(v0 + 360);
    v24 = *(v0 + 336);
    v23 = *(v0 + 344);
    v26 = *(v0 + 304);
    v25 = *(v0 + 312);
    v28 = *(v0 + 288);
    v27 = *(v0 + 296);
    v29 = *(v0 + 264);

    v30 = *(v0 + 8);
    v31 = *MEMORY[0x277D85DE8];

    return v30();
  }
}

uint64_t sub_227821120()
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = v0[56];
  v1 = v0[57];
  v0[2] = v0;
  v0[3] = sub_227821274;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6130, qword_2278CD4F0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_227822B84;
  v0[13] = &block_descriptor_22;
  v0[14] = v3;
  [v1 addNotificationRequest:v2 withCompletionHandler:v0 + 10];
  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_227821274()
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 464) = v2;
  if (v2)
  {
    v3 = sub_2278214F0;
  }

  else
  {
    v3 = sub_2278213B0;
  }

  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2278213B0()
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 256);

  v2 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_227821448, v1, 0);
}

uint64_t sub_227821448()
{
  v5 = *MEMORY[0x277D85DE8];
  v0[59] = v0[54];
  v1 = __swift_project_boxed_opaque_existential_1((v0[32] + 192), *(v0[32] + 216));
  v2 = *v1;
  v0[60] = *v1;
  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_227821844, v2, 0);
}

uint64_t sub_2278214F0()
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = v0[58];
  v2 = v0[56];
  v3 = v0[32];
  swift_willThrow();

  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_227821598, v3, 0);
}

uint64_t sub_227821598()
{
  v35 = v0;
  v34[1] = *MEMORY[0x277D85DE8];
  v1 = v0[58];
  v2 = v0[44];
  v4 = v0[36];
  v3 = v0[37];
  sub_2278C73A0();
  sub_2278101A4(v3, v4);
  v5 = v1;
  v6 = sub_2278C7590();
  v7 = sub_2278C7950();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[58];
    v32 = v0[46];
    v33 = v0[47];
    v30 = v0[40];
    v31 = v0[44];
    v9 = v0[36];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v34[0] = v11;
    *v10 = 136315394;
    sub_2278ACE90();
    v12 = sub_2278C7670();
    v14 = v13;

    sub_227810208(v9);
    v15 = sub_2278021B4(v12, v14, v34);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2080;
    swift_getErrorValue();
    v16 = v0[27];
    v17 = MEMORY[0x22AA9DD80](v0[28], v0[29]);
    v19 = sub_2278021B4(v17, v18, v34);

    *(v10 + 14) = v19;
    _os_log_impl(&dword_2277F7000, v6, v7, "Error publishing request: %s, error %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA9E860](v11, -1, -1);
    MEMORY[0x22AA9E860](v10, -1, -1);

    v32(v31, v30);
  }

  else
  {
    v20 = v0[58];
    v22 = v0[46];
    v21 = v0[47];
    v23 = v0[44];
    v24 = v0[40];
    v25 = v0[36];

    sub_227810208(v25);
    v22(v23, v24);
  }

  v0[59] = 0;
  v26 = __swift_project_boxed_opaque_existential_1((v0[32] + 192), *(v0[32] + 216));
  v27 = *v26;
  v0[60] = *v26;
  v28 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_227821844, v27, 0);
}

uint64_t sub_227821844()
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = v0[60];
  v2 = v0[32];
  v3 = v0[33];
  v4 = (v0[37] + *(v0[34] + 36));
  v5 = *v4;
  v6 = v4[1];
  (*(v0[35] + 56))(v3, 1, 1);
  swift_beginAccess();

  sub_22788B434(v3, v5, v6);
  swift_endAccess();
  sub_2278B4388();
  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_227821960, v2, 0);
}

uint64_t sub_227821960()
{
  v42 = v0;
  v41[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 416);
  v2 = *(v0 + 440) + 1;
  sub_227810208(*(v0 + 296));
  if (v2 == v1)
  {
    v3 = *(v0 + 408);

    v4 = *(v0 + 472);
    sub_227829CA8(*(v0 + 384), *(v0 + 493) & 1);
    if (v4)
    {
      v5 = *(v0 + 344);
      sub_2278C73A0();
      v6 = v4;
      v7 = sub_2278C7590();
      v8 = sub_2278C7950();

      v9 = os_log_type_enabled(v7, v8);
      v10 = *(v0 + 493);
      v11 = *(v0 + 376);
      v12 = *(v0 + 384);
      v13 = *(v0 + 368);
      v14 = *(v0 + 344);
      v15 = *(v0 + 320);
      if (v9)
      {
        v40 = *(v0 + 320);
        v16 = swift_slowAlloc();
        v39 = v13;
        v17 = swift_slowAlloc();
        v41[0] = v17;
        *v16 = 136315138;
        swift_getErrorValue();
        v18 = *(v0 + 192);
        v19 = MEMORY[0x22AA9DD80](*(v0 + 200), *(v0 + 208));
        v38 = v14;
        v21 = sub_2278021B4(v19, v20, v41);

        *(v16 + 4) = v21;
        _os_log_impl(&dword_2277F7000, v7, v8, "Error unregistering screen lock observation: %s", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v17);
        MEMORY[0x22AA9E860](v17, -1, -1);
        MEMORY[0x22AA9E860](v16, -1, -1);
        sub_22780117C(v12, v10);

        v39(v38, v40);
      }

      else
      {
        sub_22780117C(*(v0 + 384), *(v0 + 493));

        v13(v14, v15);
      }
    }

    else
    {
      sub_22780117C(*(v0 + 384), *(v0 + 493));
    }

    v27 = *(v0 + 352);
    v26 = *(v0 + 360);
    v29 = *(v0 + 336);
    v28 = *(v0 + 344);
    v31 = *(v0 + 304);
    v30 = *(v0 + 312);
    v33 = *(v0 + 288);
    v32 = *(v0 + 296);
    v34 = *(v0 + 264);

    v35 = *(v0 + 8);
    v36 = *MEMORY[0x277D85DE8];

    return v35();
  }

  else
  {
    v22 = *(v0 + 440) + 1;
    *(v0 + 432) = *(v0 + 472);
    *(v0 + 440) = v22;
    v23 = *(v0 + 256);
    sub_2278101A4(*(v0 + 408) + ((*(v0 + 488) + 32) & ~*(v0 + 488)) + *(v0 + 424) * v22, *(v0 + 296));
    v24 = __swift_project_boxed_opaque_existential_1((v23 + 152), *(v23 + 176));
    *(v0 + 448) = sub_2278AC8C0();
    *(v0 + 456) = *v24;
    v25 = *MEMORY[0x277D85DE8];

    return MEMORY[0x2822009F8](sub_227821120, 0, 0);
  }
}

void sub_227821CC4()
{
  v2 = v0;
  v3 = sub_2278C75A0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2278C73A0();
  sub_2278C7580();
  (*(v4 + 8))(v7, v3);
  v8 = swift_allocObject();
  swift_weakInit();

  v9 = sub_227829DD8(0, &unk_2278CA460, v8);
  v11 = v10;

  if (!v1)
  {
    v12 = *(v2 + 272);
    *(v2 + 272) = v9;
    v13 = *(v2 + 280);
    *(v2 + 280) = v11 & 1;
    sub_22780117C(v12, v13);
  }
}

uint64_t sub_227821E74()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v3[1] = sub_227821F5C;

    return sub_2278206E0();
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_227821F5C()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_22782206C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 112));
  __swift_destroy_boxed_opaque_existential_0((v0 + 152));
  __swift_destroy_boxed_opaque_existential_0((v0 + 192));
  __swift_destroy_boxed_opaque_existential_0((v0 + 232));
  sub_22780117C(*(v0 + 272), *(v0 + 280));
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t get_enum_tag_for_layout_string_23FitnessCoachingServices28NotificationRequestSchedulerC5StateO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_227822110()
{
  v1[5] = v0;
  v2 = *(type metadata accessor for NotificationRequest() - 8);
  v1[6] = v2;
  v3 = *(v2 + 64) + 15;
  v1[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2278221CC, v0, 0);
}

uint64_t sub_2278221CC()
{
  v1 = *__swift_project_boxed_opaque_existential_1((*(v0 + 40) + 192), *(*(v0 + 40) + 216));
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_22782226C;

  return sub_2278B451C();
}

uint64_t sub_22782226C()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22782237C, v2, 0);
}

uint64_t sub_22782237C()
{
  v1 = __swift_project_boxed_opaque_existential_1((*(v0 + 40) + 192), *(*(v0 + 40) + 216));
  v2 = *v1;
  *(v0 + 72) = *v1;

  return MEMORY[0x2822009F8](sub_2278223F0, v2, 0);
}

uint64_t sub_2278223F0()
{
  v10 = v0;
  v1 = v0[9];
  swift_beginAccess();
  v2 = *(v1 + 112);
  v3 = v2[2];
  if (v3)
  {
    v4 = v0[6];
    v5 = sub_2278A31B4(v2[2], 0);
    v6 = sub_2278A45A4(&v9, v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v3, v2);

    sub_227806704();
    if (v6 == v3)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v5 = MEMORY[0x277D84F90];
LABEL_5:
  v0[10] = v5;
  v7 = v0[5];

  return MEMORY[0x2822009F8](sub_227822510, v7, 0);
}

uint64_t sub_227822510()
{
  v1 = 0;
  v2 = v0[10];
  v4 = v0[6];
  v3 = v0[7];
  v5 = *(v2 + 16);
  while (1)
  {
    if (v5 == v1)
    {
      v10 = v0[10];
      v11 = v0[5];

      v12 = *(v11 + 272);
      *(v11 + 272) = 0;
      v13 = *(v11 + 280);
      *(v11 + 280) = -1;
      sub_22780117C(v12, v13);
      goto LABEL_10;
    }

    if (v1 >= *(v2 + 16))
    {
      __break(1u);
      return result;
    }

    sub_2278101A4(v0[10] + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v1, v0[7]);
    v6 = *(v3 + 48);
    v7 = v6 + 1;
    if (v6 == 1)
    {
      break;
    }

    ++v1;
    result = sub_227810208(v0[7]);
    if (v7 == 3)
    {
      v9 = v0[10];

      goto LABEL_9;
    }
  }

  v14 = v0[10];
  v15 = v0[7];

  sub_227810208(v15);
LABEL_9:
  v16 = v0[5];
  sub_227821CC4();
LABEL_10:
  v17 = v0[7];

  v18 = v0[1];

  return v18();
}

uint64_t sub_22782266C(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  return MEMORY[0x2822009F8](sub_22782268C, v1, 0);
}

uint64_t sub_22782268C()
{
  if (*(v0[18] + 48))
  {
    v1 = swift_task_alloc();
    v0[23] = v1;
    *v1 = v0;
    v1[1] = sub_227822A90;
    v2 = v0[18];
    v3 = v0[19];

    return sub_22781FE4C(v2);
  }

  else
  {
    v5 = __swift_project_boxed_opaque_existential_1((v0[19] + 152), *(v0[19] + 176));
    v0[20] = sub_2278AC8C0();
    v0[21] = *v5;

    return MEMORY[0x2822009F8](sub_227822788, 0, 0);
  }
}

uint64_t sub_227822788()
{
  v2 = v0[20];
  v1 = v0[21];
  v0[2] = v0;
  v0[3] = sub_2278228A8;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6130, qword_2278CD4F0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_227822B84;
  v0[13] = &block_descriptor_4;
  v0[14] = v3;
  [v1 addNotificationRequest:v2 withCompletionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2278228A8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 176) = v2;
  if (v2)
  {
    v3 = sub_227822A1C;
  }

  else
  {
    v3 = sub_2278229B8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2278229B8()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227822A1C()
{
  v1 = v0[22];
  v2 = v0[20];
  swift_willThrow();

  v3 = v0[22];
  v4 = v0[1];

  return v4();
}

uint64_t sub_227822A90()
{
  v1 = *(*v0 + 184);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_227822B84(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6110, qword_2278CA030);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x282200950](v8);
  }
}

uint64_t sub_227822C5C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2278003CC;

  return sub_227821E54(v0);
}

id sub_227822CFC(uint64_t a1, unsigned __int8 a2)
{
  if (a2 > 1u)
  {
    v6 = [objc_opt_self() predicateForChangeAtKeyPath_];

    return v6;
  }

  else
  {
    sub_2278184E8();
    v3 = sub_2278C7A70();
    v4 = [objc_opt_self() predicateForKeyPath:a1 equalToValue:v3];

    return v4;
  }
}

uint64_t sub_227822DF4()
{
  v0 = sub_2278C6EC0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6138, &unk_2278CC4A0);
  __swift_allocate_value_buffer(v5, qword_2813BA590);
  __swift_project_value_buffer(v5, qword_2813BA590);
  (*(v1 + 104))(v4, *MEMORY[0x277D09998], v0);
  v7 = 0;
  v8 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6140, &qword_2278CC4D0);
  sub_22782326C();
  return sub_2278C6E20();
}

uint64_t sub_227822F54()
{
  v0 = sub_2278C75A0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6138, &unk_2278CC4A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  if (qword_2813BA588 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v5, qword_2813BA590);
  (*(v6 + 16))(v9, v10, v5);
  sub_2278C6E00();
  (*(v6 + 8))(v9, v5);
  if (v17)
  {
    return sub_2278C7880();
  }

  v12 = v16;
  sub_2278C73A0();
  v13 = sub_2278C7590();
  v14 = sub_2278C7970();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 134217984;
    *(v15 + 4) = v12;
    _os_log_impl(&dword_2277F7000, v13, v14, "Using day start offset override %ld", v15, 0xCu);
    MEMORY[0x22AA9E860](v15, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  return sub_2278C7910();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
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

unint64_t sub_22782326C()
{
  result = qword_2813B9BA0;
  if (!qword_2813B9BA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7D6140, &qword_2278CC4D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813B9BA0);
  }

  return result;
}

uint64_t sub_2278232E8()
{
  MEMORY[0x22AA9E860](*(v0 + 16), -1, -1);

  return swift_deallocClassInstance();
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

uint64_t sub_2278233B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
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

uint64_t sub_2278233F8(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_227823470@<X0>(void *a1@<X8>)
{
  v2 = v1;
  sub_2278040AC(v1, v58);
  sub_2278040AC(v1 + 40, v56);
  sub_2278040AC(v1 + 80, v55);
  v4 = sub_2278C6D10();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v7 = sub_2278C6D00();
  v42 = *(v2 + 120);
  sub_2278040AC(v2 + 128, v53);
  v8 = v57;
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v56, v57);
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12);
  v14 = v54;
  v15 = __swift_mutable_project_boxed_opaque_existential_1(v53, v54);
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (&v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18);
  v20 = *v18;
  v21 = type metadata accessor for DateProvider();
  v51 = v21;
  v52 = &off_283AE99D8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v50);
  sub_2278238F8(v12, boxed_opaque_existential_1);
  v48 = v4;
  v49 = MEMORY[0x277D09858];
  *&v47 = v7;
  v23 = type metadata accessor for NotificationRequestScheduler();
  v46[3] = v23;
  v46[4] = &off_283AEA0D0;
  v46[0] = v20;
  v24 = type metadata accessor for FitnessPlusPlanService();
  v25 = swift_allocObject();
  v26 = v51;
  v27 = __swift_mutable_project_boxed_opaque_existential_1(v50, v51);
  v28 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v27);
  v30 = &v42 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v31 + 16))(v30);
  v32 = __swift_mutable_project_boxed_opaque_existential_1(v46, v23);
  v33 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v32);
  v35 = (&v42 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v36 + 16))(v35);
  v37 = *v35;
  v44 = v21;
  v45 = &off_283AE99D8;
  v38 = __swift_allocate_boxed_opaque_existential_1(&v43);
  sub_2278238F8(v30, v38);
  v25[26] = v23;
  v25[27] = &off_283AEA0D0;
  v25[23] = v37;
  sub_2277F9D0C(v58, (v25 + 2));
  sub_2277F9D0C(&v43, (v25 + 7));
  sub_2277F9D0C(v55, (v25 + 12));
  sub_2277F9D0C(&v47, (v25 + 17));
  v39 = v42;
  v25[22] = v42;
  v40 = v39;
  __swift_destroy_boxed_opaque_existential_0(v46);
  __swift_destroy_boxed_opaque_existential_0(v50);
  __swift_destroy_boxed_opaque_existential_0(v53);
  result = __swift_destroy_boxed_opaque_existential_0(v56);
  a1[3] = v24;
  a1[4] = &off_283AEC318;
  *a1 = v25;
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

uint64_t sub_2278238F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DateProvider();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_227823960(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2278003CC;

  return v9(a1, a2);
}

uint64_t sub_227823A78(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_2278C75A0();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227823B38, v1, 0);
}

uint64_t sub_227823B38()
{
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  sub_2278C73B0();
  sub_2278C7580();
  v5 = *(v2 + 8);
  v5(v1, v3);
  v6 = *__swift_project_boxed_opaque_existential_1((v4 + 112), *(v4 + 136));
  sub_2278C73B0();
  sub_2278C7580();
  v5(v1, v3);
  v0[5] = &type metadata for MoveModeService;
  v0[6] = &off_283AEB6D8;
  v7 = swift_allocObject();
  v0[2] = v7;
  v7[5] = &type metadata for NotificationRequestPublisher;
  v7[6] = &off_283AEB7B8;
  v7[2] = v6;
  __swift_project_boxed_opaque_existential_1(v0 + 2, &type metadata for MoveModeService);
  v8 = v6;
  v9 = swift_task_alloc();
  v0[12] = v9;
  *v9 = v0;
  v9[1] = sub_227823CF4;
  v10 = v0[7];

  return sub_227851C34(v10);
}

uint64_t sub_227823CF4()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *v1;
  *(*v1 + 104) = v0;

  v5 = *(v2 + 64);
  if (v0)
  {
    v6 = sub_227823E90;
  }

  else
  {
    v6 = sub_227823E20;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_227823E20()
{
  v1 = v0[11];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v2 = v0[1];

  return v2();
}

uint64_t sub_227823E90()
{
  v1 = v0[11];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v2 = v0[1];
  v3 = v0[13];

  return v2();
}

uint64_t sub_227823F24(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *(v2 + 40) = a2;
  *(v2 + 48) = v3;
  return MEMORY[0x2822009F8](sub_227823F48, 0, 0);
}

uint64_t sub_227823F48()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[8] = v3;
    *v3 = v0;
    v3[1] = sub_227824038;
    v4 = v0[6];

    return sub_227823A78(v4);
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_227824038()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_227824174, 0, 0);
  }

  else
  {
    v4 = v3[7];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_227824174()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_2278241D8()
{
  v2 = *v0;
  *(v1 + 16) = *v0;
  return MEMORY[0x2822009F8](sub_2278241F8, v2, 0);
}

uint64_t sub_2278241F8()
{
  v1 = v0[2];
  v2 = v1[22];
  v3 = v1[23];
  __swift_project_boxed_opaque_existential_1(v1 + 19, v2);
  v4 = swift_allocObject();
  v0[3] = v4;
  swift_weakInit();
  v5 = *(MEMORY[0x277D09A50] + 4);
  v6 = swift_task_alloc();
  v0[4] = v6;
  v7 = sub_2278244C0();
  *v6 = v0;
  v6[1] = sub_227824318;
  v8 = MEMORY[0x277D09B60];

  return MEMORY[0x2821603D0](4, &unk_2278CA678, v4, v2, v7, v3, v8);
}

uint64_t sub_227824318()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_227824428(uint64_t *a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2278003CC;

  return sub_227823F24(a1, v1);
}

unint64_t sub_2278244C0()
{
  result = qword_2813B9B08;
  if (!qword_2813B9B08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2813B9B08);
  }

  return result;
}

uint64_t sub_227824544(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2278003CC;

  return v9(a1, a2);
}

uint64_t sub_2278246B8()
{
  v1 = *(v0[2] + 16);
  v0[3] = v1;
  if (*(v1 + 24))
  {
    v2 = swift_task_alloc();
    v0[5] = v2;
    *v2 = v0;
    v2[1] = sub_227824970;
    v3 = v0[3];

    return sub_227848488();
  }

  else
  {
    v5 = *(v1 + 16);
    v6 = *(MEMORY[0x277CE94A0] + 4);
    v8 = (*MEMORY[0x277CE94A0] + MEMORY[0x277CE94A0]);
    v7 = swift_task_alloc();
    v0[4] = v7;
    *v7 = v0;
    v7[1] = sub_2278247D8;

    return v8();
  }
}

uint64_t sub_2278247D8()
{
  v1 = *(*v0 + 32);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2278248D4, 0, 0);
}

uint64_t sub_2278248D4()
{
  *(*(v0 + 24) + 24) = 1;
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_227824970;
  v2 = *(v0 + 24);

  return sub_227848488();
}

uint64_t sub_227824970(uint64_t a1)
{
  v2 = *(*v1 + 40);
  v4 = *v1;
  *(*v1 + 48) = a1;

  return MEMORY[0x2822009F8](sub_227824A70, 0, 0);
}

uint64_t sub_227824A70()
{
  v1 = v0[2];
  v2 = *(v1 + 32);
  *(v1 + 32) = v0[6];
  sub_227824F38(v2);
  v3 = v0[1];

  return v3();
}

void *sub_227824AE0()
{
  v1 = *(v0 + 32);
  v2 = MEMORY[0x277D84F90];
  if (v1 >= 2)
  {
    v12 = MEMORY[0x277D84F90];
    if (v1 >> 62)
    {
      goto LABEL_21;
    }

    for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2278C7B80())
    {

      if (!i)
      {
        break;
      }

      v4 = 0;
      while (1)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x22AA9DBF0](v4, v1);
        }

        else
        {
          if (v4 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_20;
          }

          v5 = *(v1 + 8 * v4 + 32);
        }

        v6 = v5;
        v7 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        v8 = [v5 currentCompetition];
        if (v8 && (v2 = v8, v9 = [v8 stage], v2, v9 == 1))
        {
          sub_2278C7CB0();
          v10 = v12[2];
          sub_2278C7CE0();
          sub_2278C7CF0();
          v2 = &v12;
          sub_2278C7CC0();
        }

        else
        {
        }

        ++v4;
        if (v7 == i)
        {
          v2 = v12;
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      ;
    }

LABEL_17:
    sub_227824F38(v1);
  }

  return v2;
}

BOOL sub_227824C64(SEL *a1)
{
  v2 = sub_227824AE0();
  v3 = v2;
  v16 = MEMORY[0x277D84F90];
  if (v2 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2278C7B80())
  {
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x22AA9DBF0](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v9 = [v6 currentCompetition];
      if (v9 && (v10 = v9, v11 = [v9 *a1], v10, (v11 & 1) != 0))
      {
        sub_2278C7CB0();
        v12 = *(v16 + 16);
        sub_2278C7CE0();
        sub_2278C7CF0();
        sub_2278C7CC0();
      }

      else
      {
      }

      ++v5;
      if (v8 == i)
      {
        v13 = v16;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  v13 = MEMORY[0x277D84F90];
LABEL_19:

  if (v13 < 0 || (v13 & 0x4000000000000000) != 0)
  {
    v14 = sub_2278C7B80();
  }

  else
  {
    v14 = *(v13 + 16);
  }

  return v14 != 0;
}

uint64_t sub_227824DFC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_227824F38(*(v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t get_enum_tag_for_layout_string_23FitnessCoachingServices34FirstGlanceActivitySharingProviderC5StateO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_227824E78(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_227824ECC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_227824F38(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_227824F80@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v28[1] = *MEMORY[0x277D85DE8];
  v4 = sub_2278C6EF0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2278C75A0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2278C7360();
  sub_2278C7580();
  (*(v10 + 8))(v13, v9);
  v14 = *(v2 + 40);
  sub_2278C6EE0();
  v15 = FIExperienceTypeWithHealthStoreAndDefaultExperienceType();
  v28[0] = 0;
  v16 = [v14 wheelchairUseWithError_];
  if (v16)
  {
    v17 = v16;
    v18 = v28[0];
    v19 = [v17 wheelchairUse];

    a1[3] = &type metadata for GoalCompletionService;
    a1[4] = &off_283AECA80;
    v20 = swift_allocObject();
    *a1 = v20;
    v21 = MEMORY[0x277D099E0];
    *(v20 + 40) = v4;
    *(v20 + 48) = v21;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v20 + 16));
    (*(v5 + 16))(boxed_opaque_existential_1, v8, v4);
    v23 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
    *(v20 + 80) = &type metadata for ContactStore;
    *(v20 + 88) = &off_283AEC2E0;
    *(v20 + 56) = v23;
    sub_2278040AC(v2, v20 + 96);
    sub_2278040AC(v2 + 48, v20 + 160);
    sub_2278040AC(v2 + 88, v20 + 200);
    sub_2278040AC(v2 + 128, v20 + 240);
    v24 = sub_2278C7440();
    result = (*(v5 + 8))(v8, v4);
    *(v20 + 136) = v15;
    *(v20 + 144) = v24;
    *(v20 + 152) = v19;
  }

  else
  {
    v26 = v28[0];
    sub_2278C65F0();

    swift_willThrow();
    result = (*(v5 + 8))(v8, v4);
  }

  v27 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2278252E0(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2278003CC;

  return v9(a1, a2);
}

uint64_t sub_2278253F8(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = *(*(type metadata accessor for NotificationRequest() - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v4 = sub_2278C7200();
  v2[10] = v4;
  v5 = *(v4 - 8);
  v2[11] = v5;
  v6 = *(v5 + 64) + 15;
  v2[12] = swift_task_alloc();
  v7 = sub_2278C75A0();
  v2[13] = v7;
  v8 = *(v7 - 8);
  v2[14] = v8;
  v9 = *(v8 + 64) + 15;
  v2[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227825540, v1, 0);
}

uint64_t sub_227825540()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v4 = v0[8];
  sub_2278C7330();
  sub_2278C7580();
  (*(v2 + 8))(v1, v3);
  __swift_project_boxed_opaque_existential_1((v4 + 192), *(v4 + 216));
  sub_22783935C(v0 + 2);
  v5 = *__swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v6 = swift_task_alloc();
  v0[16] = v6;
  *v6 = v0;
  v6[1] = sub_2278256CC;

  return sub_22781E3A4();
}

uint64_t sub_2278256CC(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 128);
  v6 = *v2;
  *(v4 + 136) = v1;

  v7 = *(v4 + 64);
  if (v1)
  {
    v8 = sub_227825974;
  }

  else
  {
    *(v4 + 192) = a1 & 1;
    v8 = sub_22782580C;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_22782580C()
{
  if ((*(v0 + 192) & 1) != 0 || [*(v0 + 56) force])
  {
    v2 = *(v0 + 88);
    v1 = *(v0 + 96);
    v3 = *(v0 + 80);
    v4 = __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    (*(v2 + 104))(v1, *MEMORY[0x277D09AD8], v3);
    *(v0 + 144) = *v4;
    v5 = swift_task_alloc();
    *(v0 + 152) = v5;
    *v5 = v0;
    v5[1] = sub_227825A00;
    v6 = *(v0 + 96);
    v7 = *(v0 + 72);

    return sub_22781D4F8(v7, v6, 2);
  }

  else
  {
    v9 = *(v0 + 120);
    v10 = *(v0 + 96);
    v11 = *(v0 + 72);
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_227825974()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[17];
  v2 = v0[15];
  v3 = v0[12];
  v4 = v0[9];

  v5 = v0[1];

  return v5();
}

uint64_t sub_227825A00()
{
  v2 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = sub_227825CD0;
  }

  else
  {
    v3 = sub_227825B14;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227825B14()
{
  v1 = *__swift_project_boxed_opaque_existential_1((v0[18] + 184), *(v0[18] + 208));
  v2 = swift_task_alloc();
  v0[21] = v2;
  *v2 = v0;
  v2[1] = sub_227825BBC;
  v3 = v0[9];

  return sub_22782266C(v3);
}

uint64_t sub_227825BBC()
{
  v2 = *(*v1 + 168);
  v5 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = sub_227825E74;
  }

  else
  {
    v3 = sub_227825D54;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227825CD0()
{
  v0[23] = v0[20];
  v1 = v0[8];
  (*(v0[11] + 8))(v0[12], v0[10]);

  return MEMORY[0x2822009F8](sub_227825F00, v1, 0);
}

uint64_t sub_227825D54()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v4 = v0[8];
  sub_227810208(v0[9]);
  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](sub_227825DE4, v4, 0);
}

uint64_t sub_227825DE4()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[9];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_227825E74()
{
  sub_227810208(v0[9]);
  v0[23] = v0[22];
  v1 = v0[8];
  (*(v0[11] + 8))(v0[12], v0[10]);

  return MEMORY[0x2822009F8](sub_227825F00, v1, 0);
}

uint64_t sub_227825F00()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[23];
  v2 = v0[15];
  v3 = v0[12];
  v4 = v0[9];

  v5 = v0[1];

  return v5();
}

uint64_t sub_227825F8C()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 14);
  __swift_destroy_boxed_opaque_existential_0(v0 + 19);
  __swift_destroy_boxed_opaque_existential_0(v0 + 24);
  __swift_destroy_boxed_opaque_existential_0(v0 + 29);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_227826000()
{
  v1[2] = v0;
  v2 = sub_2278C75A0();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2278260C0, v0, 0);
}

uint64_t sub_2278260C0()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  sub_2278C7330();
  sub_2278C7580();
  (*(v2 + 8))(v1, v3);
  v5 = v4[32];
  v6 = v4[33];
  __swift_project_boxed_opaque_existential_1(v4 + 29, v5);
  v7 = swift_allocObject();
  v0[6] = v7;
  swift_weakInit();
  v8 = *(MEMORY[0x277D09A50] + 4);
  v9 = swift_task_alloc();
  v0[7] = v9;
  v10 = sub_227826510();
  *v9 = v0;
  v9[1] = sub_227826238;
  v11 = MEMORY[0x277D09B80];

  return MEMORY[0x2821603D0](10, &unk_2278CA988, v7, v5, v10, v6, v11);
}

uint64_t sub_227826238()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 40);
  v6 = *v0;

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_227826364(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *(v2 + 40) = a2;
  *(v2 + 48) = v3;
  return MEMORY[0x2822009F8](sub_227826388, 0, 0);
}

uint64_t sub_227826388()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[8] = v3;
    *v3 = v0;
    v3[1] = sub_227824038;
    v4 = v0[6];

    return sub_2278253F8(v4);
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_227826478(uint64_t *a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2278003CC;

  return sub_227826364(a1, v1);
}

unint64_t sub_227826510()
{
  result = qword_2813B9AB8;
  if (!qword_2813B9AB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2813B9AB8);
  }

  return result;
}

uint64_t sub_22782655C(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2278003CC;

  return v9(a1, a2);
}

uint64_t sub_227826674(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_2278C75A0();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227826734, v1, 0);
}

uint64_t sub_227826734()
{
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  sub_2278C7380();
  sub_2278C7580();
  (*(v2 + 8))(v1, v3);
  __swift_project_boxed_opaque_existential_1((v4 + 112), *(v4 + 136));
  sub_22781069C(v0 + 2);
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_2278268AC;
  v6 = v0[7];

  return sub_22786DCB8(v6);
}

uint64_t sub_2278268AC()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *v1;
  *(*v1 + 104) = v0;

  v5 = *(v2 + 64);
  if (v0)
  {
    v6 = sub_2278269D8;
  }

  else
  {
    v6 = sub_227823E20;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2278269D8()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[13];
  v2 = v0[11];

  v3 = v0[1];

  return v3();
}

uint64_t sub_227826A68(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](sub_227826A88, 0, 0);
}

uint64_t sub_227826A88()
{
  v1 = v0[6];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[8] = v3;
    *v3 = v0;
    v3[1] = sub_227824038;
    v4 = v0[5];

    return sub_227826674(v4);
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_227826B78()
{
  v2 = *v0;
  *(v1 + 16) = *v0;
  return MEMORY[0x2822009F8](sub_227826B98, v2, 0);
}

uint64_t sub_227826B98()
{
  v1 = v0[2];
  v2 = v1[22];
  v3 = v1[23];
  __swift_project_boxed_opaque_existential_1(v1 + 19, v2);
  v4 = swift_allocObject();
  v0[3] = v4;
  swift_weakInit();
  v5 = *(MEMORY[0x277D09A50] + 4);
  v6 = swift_task_alloc();
  v0[4] = v6;
  v7 = sub_2278C7300();
  *v6 = v0;
  v6[1] = sub_227824318;
  v8 = MEMORY[0x277D09B00];

  return MEMORY[0x2821603D0](6, &unk_2278CAA60, v4, v2, v7, v3, v8);
}

uint64_t sub_227826CB8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2278003CC;

  return sub_227826A68(a1, v1);
}

uint64_t sub_227826D50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2278003CC;

  return v11(a1, a2, a3);
}

id sub_227826E78(void *a1)
{
  v1 = [a1 goalTypesToDisplay];
  sub_2278184E8();
  v2 = sub_2278C77A0();

  if (v2 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2278C7B80())
  {
    v4 = 0;
    v18 = v2 & 0xC000000000000001;
    v5 = v2 & 0xFFFFFFFFFFFFFF8;
    v6 = MEMORY[0x277D84F90];
    v7 = v2;
    while (1)
    {
      if (v18)
      {
        v8 = MEMORY[0x22AA9DBF0](v4, v2);
      }

      else
      {
        if (v4 >= *(v5 + 16))
        {
          goto LABEL_17;
        }

        v8 = *(v2 + 8 * v4 + 32);
      }

      v9 = v8;
      v2 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v10 = [v8 integerValue];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_227801D50(0, *(v6 + 2) + 1, 1, v6);
      }

      v12 = *(v6 + 2);
      v11 = *(v6 + 3);
      if (v12 >= v11 >> 1)
      {
        v6 = sub_227801D50((v11 > 1), v12 + 1, 1, v6);
      }

      *(v6 + 2) = v12 + 1;
      *&v6[8 * v12 + 32] = v10;
      ++v4;
      v13 = v2 == i;
      v2 = v7;
      if (v13)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v6 = MEMORY[0x277D84F90];
LABEL_20:

  if ([a1 goalTypeToHighlight])
  {

    return [a1 goalTypeToHighlight];
  }

  else
  {
    if (*(v6 + 2))
    {
      v15 = *(v6 + 4);
    }

    else
    {

      v15 = sub_2278C6F00();
      sub_227829364(&qword_27D7D6160, MEMORY[0x277D099F0]);
      swift_allocError();
      (*(*(v15 - 8) + 104))(v16, *MEMORY[0x277D099E8], v15);
      swift_willThrow();
    }

    return v15;
  }
}

uint64_t sub_227827128(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_2278C7160();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2278271EC, 0, 0);
}

uint64_t sub_2278271EC()
{
  v1 = v0[8];
  v3 = v0[5];
  v2 = v0[6];
  v5 = v0[3];
  v4 = v0[4];
  v6 = sub_2278C67D0();
  v7 = sub_2278C68B0();
  v8 = _HKCacheIndexFromDate();

  v9 = v3[3];
  v10 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v9);
  v0[2] = MEMORY[0x277D84F90];
  sub_227829364(&qword_2813BC0F8, MEMORY[0x277D09AB8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6158, &qword_2278CBE40);
  sub_227829300();
  sub_2278C7AF0();
  v11 = *(MEMORY[0x277D09A30] + 4);
  v12 = swift_task_alloc();
  v0[9] = v12;
  *v12 = v0;
  v12[1] = sub_227827380;
  v13 = v0[8];

  return MEMORY[0x282160398](v8, v13, v9, v10);
}

uint64_t sub_227827380(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *v2;
  *(*v2 + 80) = v1;

  (*(v4[7] + 8))(v4[8], v4[6]);
  if (v1)
  {

    return MEMORY[0x2822009F8](sub_227827530, 0, 0);
  }

  else
  {

    v7 = *(v6 + 8);

    return v7(a1);
  }
}

uint64_t sub_227827530()
{
  v1 = v0[8];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t sub_227827594(uint64_t a1)
{
  v2[33] = a1;
  v2[34] = v1;
  v3 = sub_2278C6860();
  v2[35] = v3;
  v4 = *(v3 - 8);
  v2[36] = v4;
  v5 = *(v4 + 64) + 15;
  v2[37] = swift_task_alloc();
  v6 = sub_2278C6920();
  v2[38] = v6;
  v7 = *(v6 - 8);
  v2[39] = v7;
  v8 = *(v7 + 64) + 15;
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v9 = sub_2278C6820();
  v2[42] = v9;
  v10 = *(v9 - 8);
  v2[43] = v10;
  v11 = *(v10 + 64) + 15;
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();
  v2[46] = swift_task_alloc();
  v12 = sub_2278C7420();
  v2[47] = v12;
  v13 = *(v12 - 8);
  v2[48] = v13;
  v14 = *(v13 + 64) + 15;
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();
  v15 = sub_2278C75A0();
  v2[51] = v15;
  v16 = *(v15 - 8);
  v2[52] = v16;
  v17 = *(v16 + 64) + 15;
  v2[53] = swift_task_alloc();
  v2[54] = swift_task_alloc();
  v2[55] = swift_task_alloc();
  v2[56] = swift_task_alloc();
  v2[57] = swift_task_alloc();
  v2[58] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227827830, 0, 0);
}

uint64_t sub_227827830()
{
  v1 = v0[58];
  v2 = v0[51];
  v3 = v0[52];
  v5 = v0[49];
  v4 = v0[50];
  v6 = v0[47];
  v7 = v0[48];
  v8 = v0[34];
  sub_2278C7350();
  sub_2278C7580();
  v9 = *(v3 + 8);
  v0[59] = v9;
  v0[60] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v1, v2);
  v10 = *(v8 + 208);
  sub_2278C7430();
  sub_2278C73D0();
  sub_227829364(&qword_2813BC0F0, MEMORY[0x277D09B28]);
  LOBYTE(v1) = sub_2278C7AE0();
  v11 = *(v7 + 8);
  v11(v5, v6);
  v11(v4, v6);
  if (v1)
  {
    if (sub_22785ACAC())
    {
      __swift_project_boxed_opaque_existential_1((v0[34] + 168), *(v0[34] + 192));
      v12 = swift_task_alloc();
      v0[61] = v12;
      *v12 = v0;
      v12[1] = sub_227827BDC;

      return sub_227817030(0xD000000000000015, 0x80000002278CFAA0);
    }

    v22 = v0[54];
    sub_2278C7350();
    v15 = sub_2278C7590();
    v16 = sub_2278C7970();
    v23 = os_log_type_enabled(v15, v16);
    v18 = v0[54];
    v19 = v0[51];
    if (v23)
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      v21 = "Not posting goal progress notification, fitness tracking is disabled";
      goto LABEL_10;
    }
  }

  else
  {
    v14 = v0[53];
    sub_2278C7360();
    v15 = sub_2278C7590();
    v16 = sub_2278C7970();
    v17 = os_log_type_enabled(v15, v16);
    v18 = v0[53];
    v19 = v0[51];
    if (v17)
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      v21 = "Not posting goal progress notification, disabled for platform";
LABEL_10:
      _os_log_impl(&dword_2277F7000, v15, v16, v21, v20, 2u);
      MEMORY[0x22AA9E860](v20, -1, -1);
    }
  }

  v9(v18, v19);
  v25 = v0[57];
  v24 = v0[58];
  v27 = v0[55];
  v26 = v0[56];
  v29 = v0[53];
  v28 = v0[54];
  v31 = v0[49];
  v30 = v0[50];
  v33 = v0[45];
  v32 = v0[46];
  v35 = v0[44];
  v36 = v0[41];
  v37 = v0[40];
  v38 = v0[37];

  v34 = v0[1];

  return v34();
}

uint64_t sub_227827BDC(unsigned __int8 a1)
{
  v3 = a1;
  v4 = *(*v1 + 488);
  v7 = *v1;

  if (v3 == 2 || (a1 & 1) != 0)
  {
    v5 = sub_227827CFC;
  }

  else
  {
    v5 = sub_227829030;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_227827CFC()
{
  v2 = v0[33];
  v1 = v0[34];
  v3 = __swift_project_boxed_opaque_existential_1(v1 + 5, v1[8]);
  v0[62] = sub_227865154(*v3);
  v0[63] = v4;
  v0[64] = v1[38];
  v0[65] = sub_227826E78(v2);
  v5 = v0[46];
  v6 = v0[41];
  v7 = v0[34];
  __swift_project_boxed_opaque_existential_1((v7 + 80), *(v7 + 104));
  v8 = off_283AE99E0;
  v0[66] = off_283AE99E0;
  v0[67] = &off_283AE99E0 & 0xFFFFFFFFFFFFLL | 0xB006000000000000;
  v0[68] = type metadata accessor for DateProvider();
  v8(v5);
  __swift_project_boxed_opaque_existential_1((v7 + 80), *(v7 + 104));
  sub_227804920();
  v9 = swift_task_alloc();
  v0[69] = v9;
  *v9 = v0;
  v9[1] = sub_227827F50;
  v10 = v0[46];
  v11 = v0[41];
  v12 = v0[34];

  return sub_227827128(v10, v11);
}

uint64_t sub_227827F50(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 552);
  v23 = *v2;
  v3[70] = a1;
  v3[71] = v1;

  if (v1)
  {
    v5 = v3[63];
    v6 = v3[46];
    v7 = v3[42];
    v8 = v3[43];
    v9 = v3[41];
    v12 = v3 + 38;
    v10 = v3[38];
    v11 = v12[1];

    (*(v11 + 8))(v9, v10);
    (*(v8 + 8))(v6, v7);
    v13 = sub_2278291D0;
  }

  else
  {
    v14 = v3[46];
    v15 = v3[42];
    v16 = v3[43];
    v17 = v3[41];
    v18 = v3[38];
    v19 = v3[39];
    v20 = *(v19 + 8);
    v3[72] = v20;
    v3[73] = (v19 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v20(v17, v18);
    v21 = *(v16 + 8);
    v3[74] = v21;
    v3[75] = (v16 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v21(v14, v15);
    v13 = sub_227828118;
  }

  return MEMORY[0x2822009F8](v13, 0, 0);
}

uint64_t sub_227828118()
{
  v1 = *(v0 + 560);
  if (!FIActivitySummaryHasNonZeroMoveGoal())
  {
    v13 = *(v0 + 504);
    v14 = *(v0 + 448);

    sub_2278C7350();
    v15 = sub_2278C7590();
    v16 = sub_2278C7970();
    v17 = os_log_type_enabled(v15, v16);
    v18 = *(v0 + 560);
    v20 = *(v0 + 472);
    v19 = *(v0 + 480);
    v21 = *(v0 + 448);
    v22 = *(v0 + 408);
    if (v17)
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_2277F7000, v15, v16, "Not posting notification; activity summary doesn't have move goal", v23, 2u);
      MEMORY[0x22AA9E860](v23, -1, -1);
      v24 = v15;
    }

    else
    {
      v24 = *(v0 + 560);
      v18 = v15;
    }

    v20(v21, v22);
    v49 = *(v0 + 456);
    v48 = *(v0 + 464);
    v51 = *(v0 + 440);
    v50 = *(v0 + 448);
    v53 = *(v0 + 424);
    v52 = *(v0 + 432);
    v55 = *(v0 + 392);
    v54 = *(v0 + 400);
    v57 = *(v0 + 360);
    v56 = *(v0 + 368);
    v129 = *(v0 + 352);
    v133 = *(v0 + 328);
    v138 = *(v0 + 320);
    v141 = *(v0 + 296);

    v47 = *(v0 + 8);
    goto LABEL_11;
  }

  v2 = *(v0 + 560);
  v3 = *(v0 + 520);
  v5 = *(v0 + 264);
  v4 = *(v0 + 272);
  sub_2278C79F0();
  v7 = v6;
  v8 = *(v4 + 256);
  sub_2278C79A0();
  v10 = v9;
  [v5 expectedGoalValue];
  if (v11 <= 0.0)
  {
    v25 = *(v0 + 560);
    v26 = *(v0 + 520);
    sub_2278C79B0();
    v12 = v27;
  }

  else
  {
    v12 = ceil(v11 - v10);
  }

  v28 = *(v0 + 568);
  v29 = *(v0 + 560);
  v30 = *(v0 + 512);
  v31 = *(v0 + 272);
  v32 = sub_2278C7A30();
  *(v0 + 608) = v32;
  v33 = *__swift_project_boxed_opaque_existential_1((v31 + 264), *(v31 + 288));
  sub_227850628(v29, v30);
  if (v28)
  {
    v36 = *(v0 + 560);
    v37 = *(v0 + 504);

    v39 = *(v0 + 456);
    v38 = *(v0 + 464);
    v41 = *(v0 + 440);
    v40 = *(v0 + 448);
    v43 = *(v0 + 424);
    v42 = *(v0 + 432);
    v45 = *(v0 + 392);
    v44 = *(v0 + 400);
    v46 = *(v0 + 368);
    v125 = *(v0 + 360);
    v128 = *(v0 + 352);
    v132 = *(v0 + 328);
    v137 = *(v0 + 320);
    v140 = *(v0 + 296);

    v47 = *(v0 + 8);
LABEL_11:

    return v47();
  }

  if (v35)
  {
    v59 = 0;
  }

  else
  {
    v59 = v34;
  }

  if (v59 > 9)
  {
    v59 = 0;
  }

  v134 = v59;
  v60 = [*(v0 + 264) goalTypesToDisplay];
  if (!v60)
  {
    sub_2278184E8();
    sub_2278C77A0();
    v60 = sub_2278C7790();
  }

  v61 = [*(v0 + 264) eventIdentifier];
  if (!v61)
  {
    sub_2278C7700();
    v61 = sub_2278C76F0();
  }

  v62 = *(v0 + 272);
  v63 = objc_opt_self();
  v126 = *(v62 + 120);
  v130 = v63;
  v64 = [v63 localizedTitleForIncompleteGoalTypes:v60 percentComplete:v61 valueRemaining:v7 progressEventIdentifier:v12 experienceType:? isStandalone:?];

  if (!v64)
  {
    sub_2278C7700();
    v64 = sub_2278C76F0();
  }

  v139 = v64;
  v142 = v32;
  v65 = [*(v0 + 264) goalTypesToDisplay];
  if (!v65)
  {
    sub_2278184E8();
    sub_2278C77A0();
    v66 = sub_2278C7790();

    v65 = v66;
  }

  v123 = v65;
  v67 = *(v0 + 600);
  v68 = *(v0 + 592);
  v69 = *(v0 + 544);
  v70 = *(v0 + 536);
  v71 = *(v0 + 528);
  v72 = *(v0 + 504);
  v73 = *(v0 + 360);
  v74 = *(v0 + 336);
  __swift_project_boxed_opaque_existential_1((*(v0 + 272) + 80), *(*(v0 + 272) + 104));
  v71(v69, &off_283AE99D8);
  v75 = sub_2278C67D0();
  v68(v73, v74);
  if (v72)
  {
    v76 = *(v0 + 496);
    v77 = *(v0 + 504);
    v78 = sub_2278C76F0();
  }

  else
  {
    v78 = 0;
  }

  v79 = [*(v0 + 264) eventIdentifier];
  if (!v79)
  {
    sub_2278C7700();
    v79 = sub_2278C76F0();
  }

  LOBYTE(v118) = 1;
  LOBYTE(v117) = 0;
  v80 = [v130 localizedDescriptionForIncompleteGoalTypes:v123 percentComplete:v75 value:v78 valueRemaining:v142 date:*(v0 + 512) == 2 firstName:v79 moveUnit:v7 isWheelchairUser:v10 progressEventIdentifier:v12 minutesToWalkToCompleteRing:v134 hasCurrentMoveStreak:v117 experienceType:v126 isStandalone:v118];

  if (!v80)
  {
    sub_2278C7700();
    v80 = sub_2278C76F0();
  }

  v81 = [objc_allocWithZone(MEMORY[0x277CE1F60]) init];
  *(v0 + 616) = v81;
  [v81 setCategoryIdentifier_];
  v82 = [v130 localizedAppName];
  if (!v82)
  {
    sub_2278C7700();
    v82 = sub_2278C76F0();
  }

  v127 = *(v0 + 592);
  v131 = *(v0 + 600);
  v122 = *(v0 + 576);
  v124 = *(v0 + 584);
  v135 = *(v0 + 560);
  v83 = *(v0 + 544);
  v119 = *(v0 + 528);
  v120 = *(v0 + 536);
  v143 = *(v0 + 456);
  v85 = *(v0 + 352);
  v84 = *(v0 + 360);
  v86 = *(v0 + 336);
  v87 = *(v0 + 320);
  v121 = *(v0 + 304);
  v88 = *(v0 + 272);
  [v81 setTitle_];

  [v81 setSubtitle_];
  [v81 setBody_];

  __swift_project_boxed_opaque_existential_1((v88 + 80), *(v88 + 104));
  v119(v83, &off_283AE99D8);
  __swift_project_boxed_opaque_existential_1((v88 + 80), *(v88 + 104));
  sub_227804920();
  sub_2278C6760();
  v122(v87, v121);
  v127(v85, v86);
  v89 = sub_2278C67D0();
  v127(v84, v86);
  [v81 setExpirationDate_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6148, &unk_2278CD390);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2278C9140;
  v91 = *MEMORY[0x277D09C38];
  *(v0 + 248) = sub_2278C7700();
  *(v0 + 256) = v92;
  sub_2278C7BF0();
  *(inited + 96) = MEMORY[0x277D83B88];
  *(inited + 72) = 1;
  sub_2278C3BA4(inited);
  swift_setDeallocating();
  sub_227802FC4(inited + 32, &qword_27D7D6150, &unk_2278CAAE0);
  v93 = sub_2278C7640();

  [v81 setUserInfo_];

  sub_2278C7A20();
  v95 = v94;
  sub_2278C7A40();
  sub_2277FF194(v96, v95);
  v97 = sub_2278C76F0();

  v98 = [objc_opt_self() iconAtPath_];
  *(v0 + 624) = v98;

  [v81 setIcon_];
  sub_2278C7350();
  v99 = v81;
  v100 = sub_2278C7590();
  v101 = sub_2278C7970();

  if (os_log_type_enabled(v100, v101))
  {
    v102 = swift_slowAlloc();
    v103 = swift_slowAlloc();
    *v102 = 138412290;
    *(v102 + 4) = v99;
    *v103 = v99;
    v104 = v99;
    _os_log_impl(&dword_2277F7000, v100, v101, "Posting goal progress notification: %@", v102, 0xCu);
    sub_227802FC4(v103, &qword_27D7D64B0, &qword_2278CA010);
    MEMORY[0x22AA9E860](v103, -1, -1);
    MEMORY[0x22AA9E860](v102, -1, -1);
  }

  v105 = *(v0 + 472);
  v106 = *(v0 + 480);
  v107 = *(v0 + 456);
  v108 = *(v0 + 408);
  v110 = *(v0 + 288);
  v109 = *(v0 + 296);
  v111 = *(v0 + 280);
  v136 = *(v0 + 272);

  v105(v107, v108);
  sub_2278C6850();
  sub_2278C6840();
  (*(v110 + 8))(v109, v111);
  v112 = v99;
  v113 = sub_2278C76F0();

  v114 = [objc_opt_self() requestWithIdentifier:v113 content:v112 trigger:0];
  *(v0 + 632) = v114;

  v115 = *__swift_project_boxed_opaque_existential_1((v136 + 128), *(v136 + 152));
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_227828CA0;
  v116 = swift_continuation_init();
  *(v0 + 240) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6130, qword_2278CD4F0);
  *(v0 + 184) = MEMORY[0x277D85DD0];
  *(v0 + 192) = 1107296256;
  *(v0 + 200) = sub_227822B84;
  *(v0 + 208) = &block_descriptor_5;
  *(v0 + 216) = v116;
  [v115 addNotificationRequest:v114 withCompletionHandler:?];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_227828CA0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 640) = v2;
  if (v2)
  {
    v3 = sub_227828EE8;
  }

  else
  {
    v3 = sub_227828DB0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227828DB0()
{
  v1 = *(v0 + 624);
  v2 = *(v0 + 616);
  v3 = *(v0 + 608);
  v4 = *(v0 + 560);

  v6 = *(v0 + 456);
  v5 = *(v0 + 464);
  v8 = *(v0 + 440);
  v7 = *(v0 + 448);
  v10 = *(v0 + 424);
  v9 = *(v0 + 432);
  v12 = *(v0 + 392);
  v11 = *(v0 + 400);
  v14 = *(v0 + 360);
  v13 = *(v0 + 368);
  v17 = *(v0 + 352);
  v18 = *(v0 + 328);
  v19 = *(v0 + 320);
  v20 = *(v0 + 296);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_227828EE8()
{
  v1 = v0[80];
  v2 = v0[79];
  v3 = v0[78];
  v4 = v0[77];
  v5 = v0[76];
  v6 = v0[70];
  swift_willThrow();

  v8 = v0[57];
  v7 = v0[58];
  v10 = v0[55];
  v9 = v0[56];
  v12 = v0[53];
  v11 = v0[54];
  v14 = v0[49];
  v13 = v0[50];
  v15 = v0[45];
  v16 = v0[46];
  v19 = v0[44];
  v20 = v0[41];
  v21 = v0[40];
  v22 = v0[37];
  v23 = v0[80];

  v17 = v0[1];

  return v17();
}

uint64_t sub_227829030()
{
  v1 = v0[55];
  sub_2278C7350();
  v2 = sub_2278C7590();
  v3 = sub_2278C7970();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v0[59];
  v5 = v0[60];
  v7 = v0[55];
  v8 = v0[51];
  if (v4)
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_2277F7000, v2, v3, "Not posting notification, goal progress notifications are disabled in settings", v9, 2u);
    MEMORY[0x22AA9E860](v9, -1, -1);
  }

  v6(v7, v8);
  v11 = v0[57];
  v10 = v0[58];
  v13 = v0[55];
  v12 = v0[56];
  v15 = v0[53];
  v14 = v0[54];
  v17 = v0[49];
  v16 = v0[50];
  v19 = v0[45];
  v18 = v0[46];
  v22 = v0[44];
  v23 = v0[41];
  v24 = v0[40];
  v25 = v0[37];

  v20 = v0[1];

  return v20();
}

uint64_t sub_2278291D0()
{
  v2 = v0[57];
  v1 = v0[58];
  v4 = v0[55];
  v3 = v0[56];
  v6 = v0[53];
  v5 = v0[54];
  v8 = v0[49];
  v7 = v0[50];
  v9 = v0[45];
  v10 = v0[46];
  v13 = v0[44];
  v14 = v0[41];
  v15 = v0[40];
  v16 = v0[37];
  v17 = v0[71];

  v11 = v0[1];

  return v11();
}

unint64_t sub_227829300()
{
  result = qword_2813B9BB8;
  if (!qword_2813B9BB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7D6158, &qword_2278CBE40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813B9BB8);
  }

  return result;
}

uint64_t sub_227829364(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2278293B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 312))
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

uint64_t sub_2278293FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 312) = 1;
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

    *(result + 312) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22782950C(uint64_t a1, unint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v57 = a6;
  v59 = a5;
  LODWORD(v6) = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7D6570, &qword_2278C9AE0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v58 = &v55[-v12];
  v13 = sub_2278C75A0();
  v62 = *(v13 - 8);
  v14 = *(v62 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v60 = &v55[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v55[-v18];
  MEMORY[0x28223BE20](v17);
  v21 = &v55[-v20];
  sub_2278C73A0();

  v22 = sub_2278C7590();
  v23 = sub_2278C7970();

  v24 = os_log_type_enabled(v22, v23);
  v61 = a3;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v56 = v6;
    v6 = v13;
    v26 = v25;
    v27 = swift_slowAlloc();
    v65[0] = v27;
    *v26 = 136315138;
    v28 = a1;
    *(v26 + 4) = sub_2278021B4(a1, a2, v65);
    _os_log_impl(&dword_2277F7000, v22, v23, "Registration callback for %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x22AA9E860](v27, -1, -1);
    v29 = v26;
    v13 = v6;
    v30 = v62;
    LOBYTE(v6) = v56;
    MEMORY[0x22AA9E860](v29, -1, -1);

    v31 = v30;
  }

  else
  {
    v28 = a1;

    v31 = v62;
  }

  v32 = *(v31 + 8);
  v32(v21, v13);
  v33 = 0xD000000000000027;
  if (v6)
  {
    if (v6 == 1)
    {
      v33 = 0xD000000000000029;
    }

    else
    {
      v33 = 0xD00000000000002CLL;
    }

    if (v6 == 1)
    {
      v34 = "8@NSDictionary16";
    }

    else
    {
      v34 = "Notification(content:)";
    }
  }

  else
  {
    v34 = "scoachingd.ScreenUnlocked";
  }

  if (v33 == v28 && (v34 | 0x8000000000000000) == a2)
  {

LABEL_16:
    v36 = *MEMORY[0x277CFE3C0];
    v63 = sub_2278C7700();
    v64 = v37;
    sub_2278C7BF0();
    v38 = v61;
    if (!*(v61 + 16) || (v39 = sub_2278AE394(v65), (v40 & 1) == 0))
    {
      sub_227815D88(v65);
      goto LABEL_26;
    }

    sub_227802850(*(v38 + 56) + 32 * v39, v66);
    sub_227815D88(v65);
    sub_22782A0C0();
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_26;
    }

    v41 = v63;
    v42 = [v63 value];
    if (v6)
    {
      if (v6 != 1)
      {
        swift_unknownObjectRelease();
        goto LABEL_38;
      }

      if (v42)
      {
        objc_opt_self();
        v43 = swift_dynamicCastObjCClass();
        if (v43)
        {
          v44 = [v43 BOOLValue];
          swift_unknownObjectRelease();
          if (v44)
          {
            goto LABEL_36;
          }

LABEL_38:
          v52 = sub_2278C7840();
          v53 = v58;
          (*(*(v52 - 8) + 56))(v58, 1, 1, v52);
          v54 = swift_allocObject();
          v54[2] = 0;
          v54[3] = 0;
          v54[4] = v59;
          v54[5] = v57;

          sub_22788B134(0, 0, v53, &unk_2278CABC8, v54);
        }

LABEL_39:

        swift_unknownObjectRelease();
LABEL_26:
        sub_2278C73A0();
        v45 = sub_2278C7590();
        v46 = sub_2278C7950();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          *v47 = 0;
          v48 = "Registration called with invalid value";
LABEL_30:
          _os_log_impl(&dword_2277F7000, v45, v46, v48, v47, 2u);
          MEMORY[0x22AA9E860](v47, -1, -1);
          goto LABEL_31;
        }

        goto LABEL_31;
      }
    }

    else if (v42)
    {
      objc_opt_self();
      v50 = swift_dynamicCastObjCClass();
      if (!v50)
      {
        goto LABEL_39;
      }

      v51 = [v50 BOOLValue];
      swift_unknownObjectRelease();
      if (v51)
      {
        goto LABEL_38;
      }
    }

LABEL_36:

    goto LABEL_26;
  }

  v35 = sub_2278C7DC0();

  if (v35)
  {
    goto LABEL_16;
  }

  v19 = v60;
  sub_2278C73A0();
  v45 = sub_2278C7590();
  v46 = sub_2278C7950();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    v48 = "Registration called with invalid identifier";
    goto LABEL_30;
  }

LABEL_31:

  return (v32)(v19, v13);
}

uint64_t sub_227829B14(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_2278003CC;

  return v8();
}

uint64_t sub_227829BFC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = sub_2278C7700();
  v5 = v4;
  v6 = sub_2278C7660();

  v2(v3, v5, v6);
}

void sub_227829CA8(uint64_t a1, char a2)
{
  v4 = [objc_opt_self() userContext];
  if (v4)
  {
    v5 = v4;
    if (a2)
    {
      [v4 deregisterCallback_];
    }

    else
    {
      sub_227829D84();
      swift_allocError();
      *v7 = 2;
      swift_willThrow();
    }
  }

  else
  {
    sub_227829D84();
    swift_allocError();
    *v6 = 0;
    swift_willThrow();
  }
}

unint64_t sub_227829D84()
{
  result = qword_27D7D6168;
  if (!qword_27D7D6168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7D6168);
  }

  return result;
}

id sub_227829DD8(unsigned __int8 a1, uint64_t a2, id a3)
{
  v6 = [objc_opt_self() userContext];
  if (v6)
  {
    v7 = v6;
    v8 = objc_opt_self();
    v9 = &selRef_keyPathForDeviceLockStatus;
    if ((a1 & 0xFE) != 0)
    {
      v9 = &selRef_keyPathForSleepStateDictionary;
    }

    v10 = [v8 *v9];
    if (v10)
    {
      v11 = v10;
      v22 = sub_227822CFC(v10, a1);
      v20 = objc_opt_self();
      v14 = sub_2278C76F0();

      v15 = sub_2278C76F0();
      v16 = swift_allocObject();
      *(v16 + 16) = a1;
      *(v16 + 24) = a2;
      *(v16 + 32) = a3;
      aBlock[4] = sub_22782A09C;
      aBlock[5] = v16;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_227829BFC;
      aBlock[3] = &block_descriptor_6;
      v17 = _Block_copy(aBlock);

      v18 = v22;
      a3 = [v20 localWakingRegistrationWithIdentifier:v14 contextualPredicate:v22 clientIdentifier:v15 callback:v17];
      _Block_release(v17);

      [v7 registerCallback_];
    }

    else
    {
      sub_227829D84();
      swift_allocError();
      *v13 = 1;
      swift_willThrow();
    }
  }

  else
  {
    sub_227829D84();
    swift_allocError();
    *v12 = 0;
    swift_willThrow();
  }

  return a3;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_22782A0C0()
{
  result = qword_2813B9B40;
  if (!qword_2813B9B40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2813B9B40);
  }

  return result;
}

uint64_t sub_22782A10C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2278003CC;

  return sub_227829B14(a1, v4, v5, v7);
}

uint64_t sub_22782A1CC(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2278004C0;

  return v9(a1, a2);
}

uint64_t sub_22782A2F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 24);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2278003CC;

  return v11(a1, a2, a3);
}

uint64_t sub_22782A424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 32);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_2278004C0;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_22782A56C()
{
  v1[2] = v0;
  v2 = sub_2278C75A0();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22782A62C, 0, 0);
}

uint64_t sub_22782A62C()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  sub_2278C7340();
  sub_2278C7580();
  (*(v2 + 8))(v1, v3);
  v5 = __swift_project_boxed_opaque_existential_1((v4 + 16), *(v4 + 40));
  v6 = *__swift_project_boxed_opaque_existential_1(v5 + 1, v5[4]);
  v7 = swift_task_alloc();
  v0[6] = v7;
  *v7 = v0;
  v7[1] = sub_22782A738;

  return sub_227886C8C();
}

uint64_t sub_22782A738()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v2 + 40);

    v6 = *(v4 + 8);

    return v6();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_22782A884, 0, 0);
  }
}

uint64_t sub_22782A884()
{
  v1 = *__swift_project_boxed_opaque_existential_1((*(v0 + 16) + 56), *(*(v0 + 16) + 80));
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_22782A924;

  return sub_22784BA04();
}

uint64_t sub_22782A924()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v2 + 40);

    v6 = *(v4 + 8);

    return v6();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_22782AA70, 0, 0);
  }
}

uint64_t sub_22782AA70()
{
  v1 = *__swift_project_boxed_opaque_existential_1((*(v0 + 16) + 96), *(*(v0 + 16) + 120));
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_22782AB10;

  return sub_227824698();
}

uint64_t sub_22782AB10()
{
  v1 = *v0;
  v2 = *(*v0 + 64);
  v6 = *v0;

  v3 = *(v1 + 40);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_22782AC28(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  v4 = sub_2278C6920();
  v3[12] = v4;
  v5 = *(v4 - 8);
  v3[13] = v5;
  v6 = *(v5 + 64) + 15;
  v3[14] = swift_task_alloc();
  v7 = sub_2278C6820();
  v3[15] = v7;
  v8 = *(v7 - 8);
  v3[16] = v8;
  v9 = *(v8 + 64) + 15;
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v10 = sub_2278C6E60();
  v3[19] = v10;
  v11 = *(v10 - 8);
  v3[20] = v11;
  v12 = *(v11 + 64) + 15;
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22782ADBC, 0, 0);
}

uint64_t sub_22782ADBC()
{
  v1 = v0[10];
  v2 = sub_2278C6F60();
  if (*(v2 + 16))
  {
    v3 = v0[21];
    v4 = v0[22];
    v5 = v0[19];
    v6 = v0[20];
    v7 = v0[11];
    (*(v6 + 16))(v3, v2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v5);

    (*(v6 + 32))(v4, v3, v5);
    v8 = __swift_project_boxed_opaque_existential_1(v7 + 7, v7[10]);
    v9 = *(*v8 + 88);
    __swift_project_boxed_opaque_existential_1((*v8 + 56), *(*v8 + 80));
    v0[23] = sub_2278C6FF0();
    v10 = __swift_project_boxed_opaque_existential_1(v7 + 17, v7[20]);
    v0[24] = sub_227865154(*v10);
    v0[25] = v11;
    v12 = *__swift_project_boxed_opaque_existential_1(v7 + 28, v7[31]);

    return MEMORY[0x2822009F8](sub_22782B00C, v12, 0);
  }

  else
  {

    v13 = sub_2278C6EA0();
    sub_227839220(&qword_27D7D61C8, MEMORY[0x277D09980]);
    swift_allocError();
    (*(*(v13 - 8) + 104))(v14, *MEMORY[0x277D09958], v13);
    swift_willThrow();
    v16 = v0[21];
    v15 = v0[22];
    v18 = v0[17];
    v17 = v0[18];
    v19 = v0[14];

    v20 = v0[1];

    return v20();
  }
}

id sub_22782B00C()
{
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v2 = result;
    v3 = [result fitnessMode];

    *(v0 + 360) = sub_22786233C(v3);
    v4 = swift_task_alloc();
    *(v0 + 208) = v4;
    *v4 = v0;
    v4[1] = sub_22782B0EC;
    v5 = *(v0 + 80);
    v6 = *(v0 + 88);

    return sub_2278366EC(v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22782B0EC(char a1)
{
  v2 = *(*v1 + 208);
  v4 = *v1;
  *(*v1 + 361) = a1;

  return MEMORY[0x2822009F8](sub_22782B1EC, 0, 0);
}

uint64_t sub_22782B1EC()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 176);
  v3 = *(v0 + 88);
  v4 = v3[42];
  __swift_project_boxed_opaque_existential_1(v3 + 38, v3[41]);
  *(v0 + 216) = v3[27];
  *(v0 + 56) = sub_2278C70B0();
  *(v0 + 64) = v5;
  *(v0 + 224) = v5;
  *(v0 + 232) = *__swift_project_boxed_opaque_existential_1(v3 + 43, v3[46]);
  v6 = swift_task_alloc();
  *(v0 + 240) = v6;
  *v6 = v0;
  v6[1] = sub_22782B2E8;

  return sub_22784DF30();
}

uint64_t sub_22782B2E8(char a1)
{
  v3 = *v1;
  v4 = *(*v1 + 240);
  v5 = *v1;

  if (a1)
  {
    *(v3 + 362) = 1;

    return MEMORY[0x2822009F8](sub_22782B5D0, 0, 0);
  }

  else
  {
    v6 = swift_task_alloc();
    *(v3 + 248) = v6;
    *v6 = v5;
    v6[1] = sub_22782B45C;
    v7 = *(v3 + 232);

    return sub_22784EAB0();
  }
}

uint64_t sub_22782B45C(char a1)
{
  v3 = *v1;
  v4 = *(*v1 + 248);
  v5 = *v1;

  if (a1)
  {
    *(v3 + 362) = 1;

    return MEMORY[0x2822009F8](sub_22782B5D0, 0, 0);
  }

  else
  {
    v6 = swift_task_alloc();
    *(v3 + 296) = v6;
    *v6 = v5;
    v6[1] = sub_22782BA38;
    v7 = *(v3 + 232);

    return sub_22784FB14();
  }
}

uint64_t sub_22782B5D0()
{
  v1 = *__swift_project_boxed_opaque_existential_1((*(v0 + 88) + 344), *(*(v0 + 88) + 368));
  v2 = swift_task_alloc();
  *(v0 + 256) = v2;
  *v2 = v0;
  v2[1] = sub_22782B670;

  return sub_22784FB14();
}

uint64_t sub_22782B670(uint64_t a1)
{
  v2 = *(*v1 + 256);
  v4 = *v1;
  *(*v1 + 264) = a1;

  return MEMORY[0x2822009F8](sub_22782B770, 0, 0);
}

uint64_t sub_22782B770()
{
  v26 = *(v0 + 216);
  v22 = *(v0 + 361);
  v23 = *(v0 + 362);
  v24 = *(v0 + 264);
  v25 = *(v0 + 200);
  v21 = *(v0 + 192);
  v20 = *(v0 + 184);
  v18 = *(v0 + 176);
  v1 = *(v0 + 144);
  v2 = *(v0 + 88);
  v19 = *(v0 + 360) == 1;
  sub_2278040AC((v2 + 38), v0 + 16);
  v3 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  __swift_project_boxed_opaque_existential_1(v2 + 22, v2[25]);
  v4 = off_283AE99E0;
  *(v0 + 272) = off_283AE99E0;
  *(v0 + 280) = &off_283AE99E0 & 0xFFFFFFFFFFFFLL | 0xB006000000000000;
  *(v0 + 288) = type metadata accessor for DateProvider();
  v4(v1);
  v5 = v2[59];
  v6 = sub_2278C70A0();
  v7 = *(v0 + 200);
  v8 = *(v0 + 56);
  v9 = *(v0 + 144);
  v10 = *(v0 + 120);
  v11 = *(v0 + 128);
  *(v0 + 304) = v12;
  *(v0 + 312) = v6;
  *(v0 + 320) = v8;
  v13 = *(v11 + 8);
  *(v0 + 328) = v13;
  *(v0 + 336) = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v9, v10);

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v14 = swift_task_alloc();
  *(v0 + 344) = v14;
  *v14 = v0;
  v14[1] = sub_22782BB44;
  v15 = *(v0 + 80);
  v16 = *(v0 + 88);

  return sub_22782C884(v15);
}

uint64_t sub_22782BA38(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 296);
  v6 = *v1;

  *(v3 + 362) = a1 != 0;

  return MEMORY[0x2822009F8](sub_22782B5D0, 0, 0);
}

uint64_t sub_22782BB44(uint64_t a1)
{
  v2 = *(*v1 + 344);
  v4 = *v1;
  *(*v1 + 352) = a1;

  return MEMORY[0x2822009F8](sub_22782BC44, 0, 0);
}

uint64_t sub_22782BC44()
{
  v1 = v0[44];
  v32 = v0[41];
  v33 = v0[42];
  v42 = v0[40];
  v39 = v0[38];
  v40 = v0[39];
  v2 = v0[35];
  v3 = v0[36];
  v4 = v0[34];
  v41 = v0[28];
  v38 = v0[22];
  v43 = v0[21];
  v36 = v0[20];
  v37 = v0[19];
  v5 = v0[17];
  v44 = v0[18];
  v6 = v0[14];
  v7 = v0[13];
  v28 = v0[12];
  v29 = v0[15];
  v8 = v0[11];
  v9 = v0[9];
  v10 = sub_2278A7354();
  v30 = v11;
  v31 = v10;
  v12 = *MEMORY[0x277D09C28];
  v13 = sub_2278C7700();
  v34 = v14;
  v35 = v13;
  __swift_project_boxed_opaque_existential_1((v8 + 176), *(v8 + 200));
  v4(v3, &off_283AE99D8);
  __swift_project_boxed_opaque_existential_1((v8 + 176), *(v8 + 200));
  sub_227804920();
  v15 = type metadata accessor for NotificationRequest();
  v16 = v9 + v15[8];
  sub_2278C6760();
  (*(v7 + 8))(v6, v28);
  v32(v5, v29);
  v17 = objc_opt_self();
  sub_227837280(v31, v30);
  v18 = [v17 localizedAppName];
  v19 = sub_2278C7700();
  v21 = v20;

  sub_2278372D4(v31, v30);
  (*(v36 + 8))(v38, v37);
  *v9 = v19;
  *(v9 + 8) = v21;
  *(v9 + 16) = v40;
  *(v9 + 24) = v39;
  *(v9 + 32) = v35;
  *(v9 + 40) = v34;
  *(v9 + 48) = 1;
  v22 = (v9 + v15[9]);
  *v22 = 0xD000000000000025;
  v22[1] = 0x80000002278D0270;
  *(v9 + v15[10]) = 1;
  v23 = (v9 + v15[11]);
  *v23 = v42;
  v23[1] = v41;
  v24 = (v9 + v15[12]);
  *v24 = v31;
  v24[1] = v30;
  v25 = (v9 + v15[13]);
  *v25 = 0;
  v25[1] = 0;
  *(v9 + v15[14]) = 1;

  v26 = v0[1];

  return v26();
}

uint64_t sub_22782BEE8(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = sub_2278C75A0();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22782BFA8, 0, 0);
}

uint64_t sub_22782BFA8()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  sub_2278C7340();
  sub_2278C7580();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_22782C0A0;
  v5 = v0[6];

  return sub_22782D6E4();
}

uint64_t sub_22782C0A0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[2] = v2;
  v4[3] = a1;
  v4[4] = v1;
  v5 = v3[10];
  v6 = *v2;

  if (v1)
  {
    v7 = v4[9];

    v8 = v6[1];

    return v8();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_22782C1F4, 0, 0);
  }
}

void sub_22782C1F4()
{
  v1 = *__swift_project_boxed_opaque_existential_1((v0[6] + 96), *(v0[6] + 120));
  v2 = sub_227824AE0();
  sub_2278A4B6C(v2);
  sub_227839268(0, &qword_2813B9AA0, 0x277CE90F8);
  sub_2278392B0();
  v3 = sub_2278C78C0();
  v4 = ASCodableFriendListFromFriends();

  v5 = [v4 data];
  if (v5)
  {
    v6 = v0[3];
    v7 = v0[6];

    v0[11] = v6;
    v8 = sub_2278C6670();
    v10 = v9;

    v0[12] = v8;
    v0[13] = v10;
    v11 = *__swift_project_boxed_opaque_existential_1((v7 + 344), *(v7 + 368));
    v12 = swift_task_alloc();
    v0[14] = v12;
    *v12 = v0;
    v12[1] = sub_22782C36C;

    sub_22784FB14();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_22782C36C(uint64_t a1)
{
  v2 = *(*v1 + 112);
  v4 = *v1;
  *(*v1 + 120) = a1;

  return MEMORY[0x2822009F8](sub_22782C46C, 0, 0);
}

uint64_t sub_22782C46C()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[11];
  v5 = v0[9];
  v6 = v0[5];
  v7 = *(v0[6] + 216);
  sub_2278C6F50();

  v8 = v0[1];

  return v8();
}

uint64_t sub_22782C4EC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2278C6E60();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v29 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = v29 - v13;
  v15 = (a1 + *(type metadata accessor for NotificationRequest() + 48));
  if (v15[1] >> 60 == 15)
  {
    v16 = sub_2278C3BA4(MEMORY[0x277D84F90]);
  }

  else
  {
    v17 = *v15;
    v16 = sub_2278A6694();
  }

  v18 = v16;
  v19 = *MEMORY[0x277D09C30];
  *&v29[0] = sub_2278C7700();
  *(&v29[0] + 1) = v20;
  sub_2278C7BF0();
  if (*(v18 + 16) && (v21 = sub_2278AE394(v30), (v22 & 1) != 0))
  {
    sub_227802850(*(v18 + 56) + 32 * v21, v29);
    sub_227815D88(v30);

    sub_227802FC4(v29, &qword_27D7D60A0, qword_2278C98D0);
    v23 = sub_2278C6F60();
    if (!*(v23 + 16))
    {
    }

    v24 = *(v5 + 16);
    v24(v12, v23 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v4);

    (*(v5 + 32))(v14, v12, v4);
    v24(v9, v14, v4);
    v25 = (*(v5 + 88))(v9, v4);
    if (v25 == *MEMORY[0x277D098E0])
    {
      (*(v5 + 96))(v9, v4);
      v26 = sub_2278C7180();
LABEL_14:
      (*(*(v26 - 8) + 8))(v9, v26);
      __swift_project_boxed_opaque_existential_1((v2 + 392), *(v2 + 416));
      sub_2278B8568();
      return (*(v5 + 8))(v14, v4);
    }

    if (v25 == *MEMORY[0x277D09910])
    {
      (*(v5 + 96))(v9, v4);
      v26 = sub_2278C6F40();
      goto LABEL_14;
    }

    v28 = *(v5 + 8);
    v28(v14, v4);
    return (v28)(v9, v4);
  }

  else
  {

    sub_227815D88(v30);
    memset(v29, 0, sizeof(v29));
    return sub_227802FC4(v29, &qword_27D7D60A0, qword_2278C98D0);
  }
}

uint64_t sub_22782C884(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v3 = sub_2278C75A0();
  v2[20] = v3;
  v4 = *(v3 - 8);
  v2[21] = v4;
  v5 = *(v4 + 64) + 15;
  v2[22] = swift_task_alloc();
  v6 = sub_2278C6F40();
  v2[23] = v6;
  v7 = *(v6 - 8);
  v2[24] = v7;
  v8 = *(v7 + 64) + 15;
  v2[25] = swift_task_alloc();
  v9 = sub_2278C7180();
  v2[26] = v9;
  v10 = *(v9 - 8);
  v2[27] = v10;
  v11 = *(v10 + 64) + 15;
  v2[28] = swift_task_alloc();
  v12 = sub_2278C71F0();
  v2[29] = v12;
  v13 = *(v12 - 8);
  v2[30] = v13;
  v14 = *(v13 + 64) + 15;
  v2[31] = swift_task_alloc();
  v15 = sub_2278C6E60();
  v2[32] = v15;
  v16 = *(v15 - 8);
  v2[33] = v16;
  v17 = *(v16 + 64) + 15;
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22782CACC, 0, 0);
}

uint64_t sub_22782CACC()
{
  v1 = v0[18];
  v2 = sub_2278C6F60();
  if (!*(v2 + 16))
  {
    v22 = v0[22];

    sub_2278C7340();
    v23 = sub_2278C7590();
    v24 = sub_2278C7950();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_2277F7000, v23, v24, "Missing first glance type for user info", v25, 2u);
      MEMORY[0x22AA9E860](v25, -1, -1);
    }

    v27 = v0[21];
    v26 = v0[22];
    v28 = v0[20];

    (*(v27 + 8))(v26, v28);
    v29 = sub_2278C3BA4(MEMORY[0x277D84F90]);
    goto LABEL_19;
  }

  v3 = v0[35];
  v4 = v0[36];
  v6 = v0[33];
  v5 = v0[34];
  v7 = v0[32];
  v8 = *(v6 + 16);
  v8(v3, v2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v7);

  (*(v6 + 32))(v4, v3, v7);
  v8(v5, v4, v7);
  v9 = (*(v6 + 88))(v5, v7);
  if (v9 == *MEMORY[0x277D098E0])
  {
    v10 = v0[34];
    v12 = v0[27];
    v11 = v0[28];
    v13 = v0[26];
    (*(v0[33] + 96))(v10, v0[32]);
    v14 = *(v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6188, &qword_2278CADF0) + 48));
    (*(v12 + 32))(v11, v10, v13);
    sub_2278C7170();
    v16 = v15;
    v17 = swift_task_alloc();
    v0[37] = v17;
    *v17 = v0;
    v17[1] = sub_22782D2EC;
    v18 = v0[19];
    v19 = v16;
    v20 = v14;
    v21 = 0;
LABEL_9:

    return sub_2278364A4(v20, v21, v19);
  }

  if (v9 == *MEMORY[0x277D09910])
  {
    v30 = v0[34];
    v32 = v0[24];
    v31 = v0[25];
    v33 = v0[23];
    (*(v0[33] + 96))(v30, v0[32]);
    v34 = v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6170, &qword_2278CADE0) + 48);
    v35 = *v34;
    v36 = *(v34 + 8);
    (*(v32 + 32))(v31, v30, v33);
    v0[17] = sub_2278C6F30();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6178, &qword_2278CADE8);
    sub_227836D00();
    sub_2278C7920();
    v38 = v37;

    v39 = swift_task_alloc();
    v0[39] = v39;
    *v39 = v0;
    v39[1] = sub_22782D4E8;
    v40 = v0[19];
    v19 = v38;
    v20 = v35;
    v21 = v36;
    goto LABEL_9;
  }

  if (v9 != *MEMORY[0x277D09908] && v9 != *MEMORY[0x277D09938])
  {
    if (v9 != *MEMORY[0x277D09920] && v9 != *MEMORY[0x277D09928])
    {
      if (v9 == *MEMORY[0x277D09918] || v9 == *MEMORY[0x277D09930])
      {
        v66 = v0[34];
        (*(v0[33] + 96))(v66, v0[32]);
        v67 = sub_2278C7280();
        (*(*(v67 - 8) + 8))(v66, v67);
        goto LABEL_18;
      }

      if (v9 != *MEMORY[0x277D09900] && v9 != *MEMORY[0x277D098F8] && v9 != *MEMORY[0x277D098D8])
      {
        if (v9 == *MEMORY[0x277D09940])
        {
          v68 = v0[36];
          v70 = v0[33];
          v69 = v0[34];
          v71 = v0[32];
          (*(v70 + 96))(v69, v71);
          v29 = sub_2278C3BA4(MEMORY[0x277D84F90]);
          (*(v70 + 8))(v68, v71);
          v72 = sub_2278C7310();
          (*(*(v72 - 8) + 8))(v69, v72);
          goto LABEL_19;
        }

        if (v9 != *MEMORY[0x277D098F0] && v9 != *MEMORY[0x277D098E8] && v9 != *MEMORY[0x277D098C8] && v9 != *MEMORY[0x277D098D0])
        {
          return sub_2278C7D00();
        }

        goto LABEL_18;
      }
    }

    (*(v0[33] + 8))(v0[34], v0[32]);
LABEL_18:
    v52 = v0[36];
    v53 = v0[32];
    v54 = v0[33];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6148, &unk_2278CD390);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2278C9140;
    v56 = *MEMORY[0x277D09C38];
    v0[15] = sub_2278C7700();
    v0[16] = v57;
    sub_2278C7BF0();
    *(inited + 96) = MEMORY[0x277D83B88];
    *(inited + 72) = 1;
    v29 = sub_2278C3BA4(inited);
    swift_setDeallocating();
    sub_227802FC4(inited + 32, &qword_27D7D6150, &unk_2278CAAE0);
    (*(v54 + 8))(v52, v53);
    goto LABEL_19;
  }

  v42 = v0[36];
  v44 = v0[33];
  v43 = v0[34];
  v46 = v0[31];
  v45 = v0[32];
  v47 = v0[29];
  v48 = v0[30];
  (*(v44 + 96))(v43, v45);
  (*(v48 + 32))(v46, v43, v47);
  v49 = sub_2278C71D0();
  v51 = v50;
  v29 = sub_227836E08(v49, v50);
  sub_2278372D4(v49, v51);
  (*(v48 + 8))(v46, v47);
  (*(v44 + 8))(v42, v45);
LABEL_19:
  v59 = v0[35];
  v58 = v0[36];
  v60 = v0[34];
  v61 = v0[31];
  v62 = v0[28];
  v63 = v0[25];
  v64 = v0[22];

  v65 = v0[1];

  return v65(v29);
}

uint64_t sub_22782D2EC(uint64_t a1)
{
  v2 = *(*v1 + 296);
  v4 = *v1;
  *(*v1 + 304) = a1;

  return MEMORY[0x2822009F8](sub_22782D3EC, 0, 0);
}

uint64_t sub_22782D3EC()
{
  v1 = v0[36];
  v2 = v0[32];
  v3 = v0[33];
  (*(v0[27] + 8))(v0[28], v0[26]);
  (*(v3 + 8))(v1, v2);
  v4 = v0[38];
  v6 = v0[35];
  v5 = v0[36];
  v7 = v0[34];
  v8 = v0[31];
  v9 = v0[28];
  v10 = v0[25];
  v11 = v0[22];

  v12 = v0[1];

  return v12(v4);
}

uint64_t sub_22782D4E8(uint64_t a1)
{
  v2 = *(*v1 + 312);
  v4 = *v1;
  *(*v1 + 320) = a1;

  return MEMORY[0x2822009F8](sub_22782D5E8, 0, 0);
}

uint64_t sub_22782D5E8()
{
  v1 = v0[36];
  v2 = v0[32];
  v3 = v0[33];
  (*(v0[24] + 8))(v0[25], v0[23]);
  (*(v3 + 8))(v1, v2);
  v4 = v0[40];
  v6 = v0[35];
  v5 = v0[36];
  v7 = v0[34];
  v8 = v0[31];
  v9 = v0[28];
  v10 = v0[25];
  v11 = v0[22];

  v12 = v0[1];

  return v12(v4);
}

uint64_t sub_22782D6E4()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_22782D770;

  return sub_22782DE6C();
}

uint64_t sub_22782D770(uint64_t a1)
{
  v3 = *(*v2 + 24);
  v4 = *v2;
  *(v4 + 32) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_22782D8A4, 0, 0);
  }
}

void *sub_22782D8A4()
{
  result = v0[4];
  v2 = result[2];
  v0[5] = v2;
  v0[6] = 0;
  if (v2)
  {
    if (result[2])
    {
      v0[7] = result[5];
      v3 = result[4];

      v9 = (v3 + *v3);
      v4 = v3[1];
      v5 = swift_task_alloc();
      v0[8] = v5;
      *v5 = v0;
      v5[1] = sub_22782DAA0;

      return v9(v0 + 2);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    v6 = sub_2278C6EA0();
    sub_227839220(&qword_27D7D61C8, MEMORY[0x277D09980]);
    swift_allocError();
    (*(*(v6 - 8) + 104))(v7, *MEMORY[0x277D09968], v6);
    swift_willThrow();
    v8 = v0[1];

    return v8();
  }

  return result;
}

uint64_t sub_22782DAA0()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 64);
  v5 = *v1;

  v6 = v2[7];
  if (v0)
  {
    v7 = v3[4];

    v8 = *(v5 + 8);

    return v8();
  }

  else
  {

    v3[9] = v3[2];

    return MEMORY[0x2822009F8](sub_22782DC14, 0, 0);
  }
}

uint64_t sub_22782DC14()
{
  v1 = v0[9];
  if (v1)
  {
    v2 = v0[4];

    v3 = v0[1];

    return v3(v1);
  }

  else
  {
    v5 = v0[5];
    v6 = v0[6] + 1;
    v0[6] = v6;
    result = v0[4];
    if (v6 == v5)
    {

      v7 = sub_2278C6EA0();
      sub_227839220(&qword_27D7D61C8, MEMORY[0x277D09980]);
      swift_allocError();
      (*(*(v7 - 8) + 104))(v8, *MEMORY[0x277D09968], v7);
      swift_willThrow();
      v9 = v0[1];

      return v9();
    }

    else if (v6 >= *(result + 16))
    {
      __break(1u);
    }

    else
    {
      v10 = result + 16 * v6;
      v0[7] = *(v10 + 40);
      v11 = *(v10 + 32);

      v14 = (v11 + *v11);
      v12 = v11[1];
      v13 = swift_task_alloc();
      v0[8] = v13;
      *v13 = v0;
      v13[1] = sub_22782DAA0;

      return v14(v0 + 2);
    }
  }

  return result;
}