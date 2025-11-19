uint64_t sub_2461587EC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_24619F8BC();
  *a1 = result;
  a1[1] = v5;
  return result;
}

void *sub_246158818@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_246158834()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24615886C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F878, &qword_2461A0DA0);
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

uint64_t sub_246158944(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_24615895C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_2461589AC()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  __swift_destroy_boxed_opaque_existential_1(v0 + 6);
  v3 = v0[11];

  v4 = v0[13];

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_246158A10()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_246158A58()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_246158AA0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_24619F3FC();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_246158B58(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = sub_24619F3FC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_246158BFC()
{
  v1 = sub_24619F3FC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_246158CC0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_246158CF8()
{
  v1 = sub_24619F0FC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_24619F3FC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  v12 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_246158E48()
{
  v1 = sub_24619F4DC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_246158F18()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_246158F68()
{
  v1 = sub_24619F22C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5);

  v9 = *(v0 + v6);

  return MEMORY[0x2821FE8E8](v0, v6 + 8, v3 | 7);
}

uint64_t sub_24615905C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_246159094()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2461590CC()
{
  v1 = sub_24619EF5C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_24619F4DC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v13 = *(v0 + v5);

  (*(v7 + 8))(v0 + v9, v6);
  v14 = *(v0 + v11 + 8);

  return MEMORY[0x2821FE8E8](v0, v11 + 16, v10 | 7);
}

uint64_t sub_246159278(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24619F46C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_24619F22C();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_246159368(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_24619F46C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_24619F22C();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_246159464()
{
  v1 = sub_24619F46C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 80) & ~v3;
  v5 = *(v2 + 64);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v6 = v0[7];

  v7 = v0[8];

  v8 = v0[9];

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24615954C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F958, &qword_2461A1228);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 6)
  {
    return v5 - 5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2461595C4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 5);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F958, &qword_2461A1228);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_fault_impl(a1, log, OS_LOG_TYPE_FAULT, a4, va, 0x20u);
}

uint64_t sub_24615AC28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = a5;
  v10 = sub_24619FB4C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  sub_24619F1CC();
  *(v5 + OBJC_IVAR____TtC7CoreODI17ODIBindingsFiller_expectedBindingsActions) = MEMORY[0x277D84F98];
  v15 = OBJC_IVAR____TtC7CoreODI17ODIBindingsFiller_geoCoder;
  sub_24619F6BC();
  *(v5 + v15) = sub_24619F6AC();
  *(v5 + OBJC_IVAR____TtC7CoreODI17ODIBindingsFiller__locationHelper) = 0;
  *(v5 + OBJC_IVAR____TtC7CoreODI17ODIBindingsFiller_locationCollectionTask) = 0;
  *(v5 + OBJC_IVAR____TtC7CoreODI17ODIBindingsFiller_locationHelperContinuations) = 0;
  v16 = (v5 + OBJC_IVAR____TtC7CoreODI17ODIBindingsFiller_odiSessionIdentifier);
  *v16 = a1;
  v16[1] = a2;
  v22 = sub_24619EEFC();
  v23 = MEMORY[0x277D004B0];
  __swift_allocate_boxed_opaque_existential_1(&v21);

  sub_24619EECC();
  sub_246158944(&v21, v5 + OBJC_IVAR____TtC7CoreODI17ODIBindingsFiller_logger);
  *(v5 + OBJC_IVAR____TtC7CoreODI17ODIBindingsFiller_locationBundle) = a3;
  v17 = (v5 + OBJC_IVAR____TtC7CoreODI17ODIBindingsFiller_locationBundleIdentifier);
  v18 = v20;
  *v17 = a4;
  v17[1] = v18;
  sub_24619FB3C();
  (*(v11 + 32))(v5 + OBJC_IVAR____TtC7CoreODI17ODIBindingsFiller_coalescingReferenceDate, v14, v10);
  return v5;
}

uint64_t sub_24615AE7C(uint64_t a1, uint64_t a2)
{
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F870, &qword_2461A0FE0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v6 = &v28[-1] - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F878, &qword_2461A0DA0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = (MEMORY[0x28223BE20])();
  v11 = &v28[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v28[-1] - v12;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (*(a2 + OBJC_IVAR____TtC7CoreODI17ODIBindingsFiller__locationHelper))
  {
    v28[0] = *(a2 + OBJC_IVAR____TtC7CoreODI17ODIBindingsFiller__locationHelper);

    return sub_24619F9AC();
  }

  else
  {
    v15 = OBJC_IVAR____TtC7CoreODI17ODIBindingsFiller_locationHelperContinuations;
    swift_beginAccess();
    if (*(a2 + v15))
    {
      v17 = sub_24615AE1C();
      if (*v16)
      {
        v18 = v16;
        (*(v8 + 16))(v13, a1, v7);
        v19 = *v18;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v18 = v19;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v19 = sub_246165338(0, v19[2] + 1, 1, v19);
          *v18 = v19;
        }

        v22 = v19[2];
        v21 = v19[3];
        if (v22 >= v21 >> 1)
        {
          v19 = sub_246165338(v21 > 1, v22 + 1, 1, v19);
          *v18 = v19;
        }

        v19[2] = v22 + 1;
        (*(v8 + 32))(v19 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v22, v13, v7);
        return (v17)(v28, 0);
      }

      else
      {
        return (v17)(v28, 0);
      }
    }

    else
    {
      *(a2 + v15) = MEMORY[0x277D84F90];
      v23 = sub_24619F9CC();
      (*(*(v23 - 8) + 56))(v6, 1, 1, v23);
      (*(v8 + 16))(v11, a1, v7);
      v24 = sub_246164E30(&qword_281391CA0, type metadata accessor for ODIBindingsFiller);
      v25 = (*(v8 + 80) + 40) & ~*(v8 + 80);
      v26 = swift_allocObject();
      *(v26 + 2) = a2;
      *(v26 + 3) = v24;
      *(v26 + 4) = a2;
      (*(v8 + 32))(&v26[v25], v11, v7);
      swift_retain_n();
      sub_2461703A8(0, 0, v6, &unk_2461A0DB0, v26);
    }
  }
}

uint64_t sub_24615B26C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F878, &qword_2461A0DA0);
  v5[14] = v7;
  v8 = *(v7 - 8);
  v5[15] = v8;
  v9 = *(v8 + 64) + 15;
  v5[16] = swift_task_alloc();
  v10 = sub_24619F7FC();
  v5[17] = v10;
  v11 = *(v10 - 8);
  v5[18] = v11;
  v12 = *(v11 + 64) + 15;
  v5[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24615B398, a4, 0);
}

uint64_t sub_24615B398()
{
  v1 = v0[12];
  v2 = *(v1 + OBJC_IVAR____TtC7CoreODI17ODIBindingsFiller_locationBundle);
  v3 = *(v1 + OBJC_IVAR____TtC7CoreODI17ODIBindingsFiller_locationBundleIdentifier);
  v4 = *(v1 + OBJC_IVAR____TtC7CoreODI17ODIBindingsFiller_locationBundleIdentifier + 8);
  sub_24619F48C();
  v5 = v1 + OBJC_IVAR____TtC7CoreODI17ODIBindingsFiller_odiSessionIdentifier;
  v6 = *(v1 + OBJC_IVAR____TtC7CoreODI17ODIBindingsFiller_odiSessionIdentifier);
  v7 = *(v5 + 8);
  v8 = sub_24619EEFC();
  v9 = MEMORY[0x277D004B0];
  v0[5] = v8;
  v0[6] = v9;
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  v10 = v2;

  sub_24619EECC();
  v11 = sub_24619F66C();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v14 = sub_24619F65C();
  v15 = sub_24619F5AC();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v18 = sub_24619F59C();
  v19 = *(MEMORY[0x277D006D8] + 4);
  v20 = swift_task_alloc();
  v0[20] = v20;
  *v20 = v0;
  v20[1] = sub_24615B51C;

  return MEMORY[0x282152E38](v2, v3, v4, v14, v18);
}

uint64_t sub_24615B51C(uint64_t a1)
{
  v2 = *(*v1 + 160);
  v3 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 168) = a1;

  return MEMORY[0x2822009F8](sub_24615B634, v3, 0);
}

uint64_t sub_24615B634()
{
  v1 = v0[21];
  v2 = v0[13];
  v3 = v0[14];
  v4 = v0[12];
  v5 = *(v4 + OBJC_IVAR____TtC7CoreODI17ODIBindingsFiller__locationHelper);
  *(v4 + OBJC_IVAR____TtC7CoreODI17ODIBindingsFiller__locationHelper) = v1;

  v0[10] = v1;

  sub_24619F9AC();
  v6 = OBJC_IVAR____TtC7CoreODI17ODIBindingsFiller_locationHelperContinuations;
  swift_beginAccess();
  v7 = *(v4 + v6);
  if (v7)
  {
    v8 = *(v7 + 16);
    if (v8)
    {
      v31 = v4;
      v9 = v0[15];
      v11 = *(v9 + 16);
      v10 = v9 + 16;
      v32 = v11;
      v12 = v7 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
      v13 = *(v10 + 56);
      v30 = *(v4 + v6);

      do
      {
        v14 = v0[21];
        v15 = v0[16];
        v16 = v0[14];
        v32(v15, v12, v16);
        v0[11] = v14;

        sub_24619F9AC();
        (*(v10 - 8))(v15, v16);
        v12 += v13;
        --v8;
      }

      while (v8);
      v17 = v0[21];

      v4 = v31;
    }

    else
    {
      v24 = v0[21];
    }

    v25 = *(v4 + v6);
    *(v4 + v6) = 0;
  }

  else
  {
    v18 = v0[21];
    v20 = v0[18];
    v19 = v0[19];
    v21 = v0[17];
    v22 = (v0[12] + OBJC_IVAR____TtC7CoreODI17ODIBindingsFiller_logger);
    v23 = v22[4];
    __swift_project_boxed_opaque_existential_1(v22, v22[3]);
    (*(v20 + 104))(v19, *MEMORY[0x277D007A8], v21);
    sub_24619F6FC();

    (*(v20 + 8))(v19, v21);
  }

  v26 = v0[19];
  v27 = v0[16];

  v28 = v0[1];

  return v28();
}

uint64_t sub_24615B89C(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F870, &qword_2461A0FE0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v64 = v58 - v10;
  v63 = sub_24619F7FC();
  v69 = *(v63 - 8);
  v11 = *(v69 + 64);
  MEMORY[0x28223BE20](v63);
  v62 = v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24619FB4C();
  v61 = *(v13 - 8);
  v14 = *(v61 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_24619F1EC();
  v65 = *(v66 - 1);
  v17 = *(v65 + 64);
  v18 = MEMORY[0x28223BE20](v66);
  v20 = v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = v58 - v21;
  v23 = sub_24619F8BC();
  v67 = v24;
  v68 = v23;
  sub_24615C140(a1, a2, v73);
  v25 = 0x27EE3F000;
  if ((sub_24615C3D4(a2, a3) & 1) == 0)
  {
    goto LABEL_4;
  }

  v26 = v20;
  v27 = OBJC_IVAR____TtC7CoreODI17ODIBindingsFiller_currentBindings;
  swift_beginAccess();
  v28 = v65;
  v29 = v66;
  v60 = *(v65 + 16);
  v60(v22, v4 + v27, v66);
  sub_24619F1FC();
  v30 = *(v28 + 8);
  v30(v22, v29);
  if (!v71)
  {
    sub_24616CFC4(&v70, &qword_27EE3F8D0, &qword_2461A0E70);
    v20 = v26;
    v25 = 0x27EE3F000uLL;
    goto LABEL_6;
  }

  sub_246158944(&v70, v72);
  sub_24619F01C();
  v31 = MEMORY[0x24C199F20](v73, v72);
  __swift_destroy_boxed_opaque_existential_1(v72);
  v20 = v26;
  v25 = 0x27EE3F000uLL;
  if ((v31 & 1) == 0)
  {
LABEL_6:
    sub_24619FB3C();
    v40 = OBJC_IVAR____TtC7CoreODI17ODIBindingsFiller_coalescingReferenceDate;
    swift_beginAccess();
    (*(v61 + 40))(v4 + v40, v16, v13);
    swift_endAccess();
    v41 = *(v4 + OBJC_IVAR____TtC7CoreODI17ODIBindingsFiller_logger + 24);
    v58[1] = *(v4 + OBJC_IVAR____TtC7CoreODI17ODIBindingsFiller_logger + 32);
    v58[0] = __swift_project_boxed_opaque_existential_1((v4 + OBJC_IVAR____TtC7CoreODI17ODIBindingsFiller_logger), v41);
    *&v72[0] = 0;
    *(&v72[0] + 1) = 0xE000000000000000;
    sub_24619FAEC();

    *&v72[0] = 0xD000000000000012;
    *(&v72[0] + 1) = 0x80000002461A27C0;
    MEMORY[0x24C19A830](1702195828, 0xE400000000000000);

    MEMORY[0x24C19A830](0xD000000000000019, 0x80000002461A27E0);
    v39 = v66;
    v60(v20, v4 + v27, v66);
    sub_24619F1DC();
    v30(v20, v39);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F8D8, &qword_2461A0E78);
    v42 = sub_24619F84C();
    MEMORY[0x24C19A830](v42);

    v43 = *MEMORY[0x277D00770];
    v35 = v69;
    v44 = *(v69 + 104);
    v59 = (v69 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v37 = v62;
    LODWORD(v61) = v43;
    v38 = v63;
    v60 = v44;
    v44(v62);
    sub_24619F6DC();

    goto LABEL_7;
  }

LABEL_4:
  v32 = (v4 + *(v25 + 1984));
  v33 = v32[4];
  __swift_project_boxed_opaque_existential_1(v32, v32[3]);
  v34 = *MEMORY[0x277D00770];
  v35 = v69;
  v36 = *(v69 + 104);
  v59 = (v69 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v37 = v62;
  LODWORD(v61) = v34;
  v38 = v63;
  v60 = v36;
  v36(v62);
  sub_24619F6DC();
  v39 = v66;
LABEL_7:
  v45 = v25;
  v46 = *(v35 + 8);
  v69 = v35 + 8;
  v66 = v46;
  (v46)(v37, v38);
  sub_24616CB20(v73, v72);
  v47 = OBJC_IVAR____TtC7CoreODI17ODIBindingsFiller_currentBindings;
  swift_beginAccess();
  v48 = v67;

  sub_24619F20C();
  swift_endAccess();
  v49 = (v4 + *(v45 + 1984));
  v50 = v49[3];
  v63 = v49[4];
  __swift_project_boxed_opaque_existential_1(v49, v50);
  *&v72[0] = 0;
  *(&v72[0] + 1) = 0xE000000000000000;
  sub_24619FAEC();
  MEMORY[0x24C19A830](0xD000000000000010, 0x80000002461A27A0);
  v51 = v65;
  (*(v65 + 16))(v20, v4 + v47, v39);
  sub_24619FB6C();
  (*(v51 + 8))(v20, v39);
  v60(v37, v61, v38);
  sub_24619F72C();

  (v66)(v37, v38);
  v52 = sub_24619F9CC();
  v53 = v64;
  (*(*(v52 - 8) + 56))(v64, 1, 1, v52);
  sub_24616CB20(v73, v72);
  v54 = sub_246164E30(&qword_281391CA0, type metadata accessor for ODIBindingsFiller);
  v55 = swift_allocObject();
  v55[2] = v4;
  v55[3] = v54;
  v56 = v68;
  v55[4] = v4;
  v55[5] = v56;
  v55[6] = v48;
  sub_246158944(v72, (v55 + 7));
  swift_retain_n();
  sub_2461703A8(0, 0, v53, &unk_2461A0E68, v55);

  return __swift_destroy_boxed_opaque_existential_1(v73);
}

void sub_24615C140(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v28 = a2;
  sub_24616CB20(a1, v29);
  v6 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F8D8, &qword_2461A0E78);
  if (!swift_dynamicCast())
  {
    goto LABEL_20;
  }

  v7 = sub_24619F8BC();
  v9 = v8;
  if (v7 == sub_24619F8BC() && v9 == v10)
  {
    goto LABEL_15;
  }

  v12 = sub_24619FBFC();

  if (v12)
  {
LABEL_16:
    __swift_destroy_boxed_opaque_existential_1(v29);

    v23 = MEMORY[0x24C19A060]();

    v24 = MEMORY[0x277D83B98];
    a3[3] = MEMORY[0x277D83B88];
    a3[4] = v24;
    *a3 = v23;
    return;
  }

  v13 = sub_24619F8BC();
  v15 = v14;
  if (v13 == sub_24619F8BC() && v15 == v16)
  {
LABEL_15:

    goto LABEL_16;
  }

  v18 = sub_24619FBFC();

  if (v18)
  {
    goto LABEL_16;
  }

  v19 = sub_24619F8BC();
  v21 = v20;
  if (v19 == sub_24619F8BC() && v21 == v22)
  {

LABEL_18:
    v26 = MEMORY[0x24C19A070]();

    v27 = MEMORY[0x277D83B98];
    a3[3] = MEMORY[0x277D83B88];
    a3[4] = v27;
    *a3 = v26;
    __swift_destroy_boxed_opaque_existential_1(v29);

    return;
  }

  v25 = sub_24619FBFC();

  if (v25)
  {
    goto LABEL_18;
  }

LABEL_20:
  sub_24616CB20(a1, a3);
  sub_24616CFC4(&v28, &qword_27EE3F8E0, &qword_2461A0EC0);
}

uint64_t sub_24615C3D4(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    goto LABEL_11;
  }

  v3 = *(a2 + 40);
  sub_24619F8BC();
  sub_24619FC8C();
  sub_24619F8FC();
  v4 = sub_24619FCAC();

  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    while (1)
    {
      v8 = *(*(a2 + 48) + 8 * v6);
      v9 = sub_24619F8BC();
      v11 = v10;
      if (v9 == sub_24619F8BC() && v11 == v12)
      {
        break;
      }

      v14 = sub_24619FBFC();

      if ((v14 & 1) == 0)
      {
        v6 = (v6 + 1) & v7;
        if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
        {
          continue;
        }
      }

      return v14 & 1;
    }

    v14 = 1;
  }

  else
  {
LABEL_11:
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_24615C528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  return MEMORY[0x2822009F8](sub_24615C550, a4, 0);
}

uint64_t sub_24615C550()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = sub_246164E30(&qword_281391CA0, type metadata accessor for ODIBindingsFiller);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  v5 = *(v0 + 40);
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  *(v4 + 32) = v5;
  v6 = *(MEMORY[0x277D859E8] + 4);
  v7 = swift_task_alloc();
  *(v0 + 64) = v7;
  *v7 = v0;
  v7[1] = sub_24615C678;
  v8 = *(v0 + 16);
  v9 = MEMORY[0x277D84F78] + 8;
  v10 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007C0](v8, v9, v1, v3, &unk_2461A0E88, v4, v10);
}

uint64_t sub_24615C678()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_24615C788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[20] = a5;
  v6[21] = a6;
  v6[18] = a3;
  v6[19] = a4;
  v6[17] = a2;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F870, &qword_2461A0FE0) - 8) + 64) + 15;
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24615C83C, a3, 0);
}

uint64_t sub_24615C83C()
{
  v1 = *(v0 + 144);
  v2 = OBJC_IVAR____TtC7CoreODI17ODIBindingsFiller_expectedBindingsActions;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = *(v3 + 16);

  if (v4 && (v5 = sub_24616595C(*(v0 + 152), *(v0 + 160)), (v6 & 1) != 0))
  {
    v7 = *(*(v3 + 56) + 8 * v5);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = *(v7 + 16);
  if (v8)
  {
    v32 = **(v0 + 136);
    v9 = (v7 + 32);
    do
    {
      v35 = v8;
      v12 = *(v0 + 176);
      v13 = *(v0 + 184);
      v14 = *(v0 + 160);
      v15 = *(v0 + 168);
      v16 = *(v0 + 144);
      v33 = *(v0 + 152);
      v17 = swift_allocObject();
      v34 = v9;
      *(v17 + 16) = *v9;
      v18 = sub_24619F9CC();
      v19 = *(v18 - 8);
      (*(v19 + 56))(v13, 1, 1, v18);
      sub_24616CB20(v15, v0 + 16);
      v20 = swift_allocObject();
      v20[2] = 0;
      v21 = v20 + 2;
      v20[3] = 0;
      v20[4] = &unk_2461A0EA8;
      v20[5] = v17;
      sub_246158944((v0 + 16), (v20 + 6));
      v20[11] = v16;
      v20[12] = v33;
      v20[13] = v14;
      sub_24616CEA8(v13, v12);
      LODWORD(v12) = (*(v19 + 48))(v12, 1, v18);

      v22 = *(v0 + 176);
      if (v12 == 1)
      {
        sub_24616CFC4(*(v0 + 176), &qword_27EE3F870, &qword_2461A0FE0);
        if (*v21)
        {
          goto LABEL_13;
        }
      }

      else
      {
        sub_24619F9BC();
        (*(v19 + 8))(v22, v18);
        if (*v21)
        {
LABEL_13:
          v25 = v20[3];
          swift_getObjectType();
          swift_unknownObjectRetain();
          v23 = sub_24619F99C();
          v24 = v26;
          swift_unknownObjectRelease();
          goto LABEL_14;
        }
      }

      v23 = 0;
      v24 = 0;
LABEL_14:
      v27 = swift_allocObject();
      *(v27 + 16) = &unk_2461A0EB0;
      *(v27 + 24) = v20;

      if (v24 | v23)
      {
        v10 = v0 + 56;
        *(v0 + 56) = 0;
        *(v0 + 64) = 0;
        *(v0 + 72) = v23;
        *(v0 + 80) = v24;
      }

      else
      {
        v10 = 0;
      }

      v11 = *(v0 + 184);
      *(v0 + 112) = 1;
      *(v0 + 120) = v10;
      *(v0 + 128) = v32;
      swift_task_create();

      sub_24616CFC4(v11, &qword_27EE3F870, &qword_2461A0FE0);
      v9 = v34 + 1;
      v8 = v35 - 1;
    }

    while (v35 != 1);
  }

  v28 = *(v0 + 176);
  v29 = *(v0 + 184);

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_24615CC18(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24616D024;

  return v6();
}

uint64_t sub_24615CD0C(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a7;
  v8[8] = a8;
  v8[6] = a6;
  v11 = sub_24619F7FC();
  v8[9] = v11;
  v12 = *(v11 - 8);
  v8[10] = v12;
  v13 = *(v12 + 64) + 15;
  v8[11] = swift_task_alloc();
  v17 = (a3 + *a3);
  v14 = a3[1];
  v15 = swift_task_alloc();
  v8[12] = v15;
  *v15 = v8;
  v15[1] = sub_24615CE6C;

  return v17(a5);
}

uint64_t sub_24615CE6C()
{
  v2 = *(*v1 + 96);
  v3 = *v1;
  v3[13] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24615CFA8, 0, 0);
  }

  else
  {
    v4 = v3[11];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_24615CFA8()
{
  v1 = v0[13];
  v3 = v0[10];
  v2 = v0[11];
  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[7];
  v7 = (v0[6] + OBJC_IVAR____TtC7CoreODI17ODIBindingsFiller_logger);
  v13 = v7[4];
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  sub_24619FAEC();
  MEMORY[0x24C19A830](0xD00000000000003CLL, 0x80000002461A2800);
  MEMORY[0x24C19A830](v6, v5);
  MEMORY[0x24C19A830](8250, 0xE200000000000000);
  swift_getErrorValue();
  v8 = v0[2];
  v9 = v0[3];
  sub_24619FBEC();
  (*(v3 + 104))(v2, *MEMORY[0x277D00770], v4);
  sub_24619F6EC();

  (*(v3 + 8))(v2, v4);
  v10 = v0[11];

  v11 = v0[1];

  return v11();
}

uint64_t sub_24615D140(uint64_t a1)
{
  result = MEMORY[0x24C19A980](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_2461661E8(&v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_24615D25C(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for ODIAttributeKey(0);
  v4 = v3;
  v5 = sub_246164E30(&qword_281391860, type metadata accessor for ODIAttributeKey);
  v6 = 0;
  v13[1] = MEMORY[0x24C19A980](v2, v4, v5);
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = v6;
LABEL_9:
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    sub_246166338(v13, *(*(a1 + 48) + ((v11 << 9) | (8 * v12))));
  }

  while (1)
  {
    v11 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v11 >= v10)
    {

      return;
    }

    v9 = *(a1 + 64 + 8 * v11);
    ++v6;
    if (v9)
    {
      v6 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_24615D3A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v28 = MEMORY[0x277D84F90];
  sub_246167460(0, v1, 0);
  v2 = v28;
  v4 = -1 << *(a1 + 32);
  v27 = a1 + 56;
  result = sub_24619FA8C();
  v6 = result;
  v7 = 0;
  v26 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v10 = v6 >> 6;
    if ((*(v27 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_21;
    }

    v11 = *(a1 + 36);
    v12 = *(*(a1 + 48) + 8 * v6);
    result = sub_24619F8BC();
    v15 = *(v28 + 16);
    v14 = *(v28 + 24);
    if (v15 >= v14 >> 1)
    {
      v24 = v13;
      v25 = result;
      sub_246167460((v14 > 1), v15 + 1, 1);
      v13 = v24;
      result = v25;
    }

    *(v28 + 16) = v15 + 1;
    v16 = v28 + 16 * v15;
    *(v16 + 32) = result;
    *(v16 + 40) = v13;
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_22;
    }

    v17 = *(v27 + 8 * v10);
    if ((v17 & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    if (v11 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v18 = v17 & (-2 << (v6 & 0x3F));
    if (v18)
    {
      v8 = __clz(__rbit64(v18)) | v6 & 0x7FFFFFFFFFFFFFC0;
      v9 = v26;
    }

    else
    {
      v19 = v10 << 6;
      v20 = v10 + 1;
      v9 = v26;
      v21 = (a1 + 64 + 8 * v10);
      while (v20 < (v8 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          result = sub_24616CAE4(v6, v11, 0);
          v8 = __clz(__rbit64(v22)) + v19;
          goto LABEL_4;
        }
      }

      result = sub_24616CAE4(v6, v11, 0);
    }

LABEL_4:
    ++v7;
    v6 = v8;
    if (v7 == v9)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_24615D5C4()
{
  v1 = OBJC_IVAR____TtC7CoreODI17ODIBindingsFiller_currentBindings;
  v2 = sub_24619F1EC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC7CoreODI17ODIBindingsFiller_expectedBindingsActions);

  v4 = *(v0 + OBJC_IVAR____TtC7CoreODI17ODIBindingsFiller_odiSessionIdentifier + 8);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC7CoreODI17ODIBindingsFiller_logger));
  v5 = OBJC_IVAR____TtC7CoreODI17ODIBindingsFiller_coalescingReferenceDate;
  v6 = sub_24619FB4C();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  v7 = *(v0 + OBJC_IVAR____TtC7CoreODI17ODIBindingsFiller_locationBundleIdentifier + 8);

  v8 = *(v0 + OBJC_IVAR____TtC7CoreODI17ODIBindingsFiller_geoCoder);

  v9 = *(v0 + OBJC_IVAR____TtC7CoreODI17ODIBindingsFiller__locationHelper);

  v10 = *(v0 + OBJC_IVAR____TtC7CoreODI17ODIBindingsFiller_locationCollectionTask);

  v11 = *(v0 + OBJC_IVAR____TtC7CoreODI17ODIBindingsFiller_locationHelperContinuations);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_24615D704()
{
  sub_24615D5C4();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_24615D758()
{
  result = sub_24619F1EC();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_24619FB4C();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_24615D874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = OBJC_IVAR____TtC7CoreODI17ODIBindingsFiller_expectedBindingsActions;
  swift_beginAccess();
  if (!*(*(v4 + v9) + 16) || (, sub_24616595C(a1, a2), v11 = v10, , (v11 & 1) == 0))
  {
    swift_beginAccess();

    v12 = *(v4 + v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25[0] = *(v4 + v9);
    *(v4 + v9) = 0x8000000000000000;
    sub_24616A690(MEMORY[0x277D84F90], a1, a2, isUniquelyReferenced_nonNull_native);

    *(v4 + v9) = v25[0];
    swift_endAccess();
  }

  v14 = sub_24615ABC4();
  v16 = sub_24615DABC(v25, a1, a2);
  if (*v15)
  {
    v17 = v15;
    v18 = swift_allocObject();
    *(v18 + 16) = a3;
    *(v18 + 24) = a4;
    v19 = *v17;

    v20 = swift_isUniquelyReferenced_nonNull_native();
    *v17 = v19;
    if ((v20 & 1) == 0)
    {
      v19 = sub_246165528(0, v19[2] + 1, 1, v19);
      *v17 = v19;
    }

    v22 = v19[2];
    v21 = v19[3];
    if (v22 >= v21 >> 1)
    {
      v19 = sub_246165528((v21 > 1), v22 + 1, 1, v19);
      *v17 = v19;
    }

    v19[2] = v22 + 1;
    v23 = &v19[2 * v22];
    v23[4] = &unk_2461A0D60;
    v23[5] = v18;
    (v16)(v25, 0);
    return (v14)(v26, 0);
  }

  else
  {
    (v16)(v25, 0);
    return (v14)(v26, 0);
  }
}

void (*sub_24615DABC(uint64_t **a1, uint64_t a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_2461678CC(v6, a2, a3);
  return sub_24615DB44;
}

void sub_24615DB44(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_24615DB90(uint64_t a1, uint64_t a2, int *a3)
{
  v8 = (a3 + *a3);
  v5 = a3[1];
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_24616D024;

  return v8(a2);
}

uint64_t sub_24615DC84(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 40) = a1;
  *(v2 + 48) = v3;
  return MEMORY[0x2822009F8](sub_24615DCA4, v3, 0);
}

uint64_t sub_24615DCA4()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = OBJC_IVAR____TtC7CoreODI17ODIBindingsFiller_currentBindings;
  swift_beginAccess();
  v4 = sub_24619F1EC();
  (*(*(v4 - 8) + 16))(v2, v1 + v3, v4);
  v5 = v0[1];

  return v5();
}

uint64_t sub_24615DD60()
{
  v2 = *(*v0 + OBJC_IVAR____TtC7CoreODI17ODIBindingsFiller_geoCoder);
  v5 = *(v1 + 8);

  return v5(v3);
}

uint64_t sub_24615DDD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a2;
  v4[7] = a3;
  v4[5] = a1;
  v5 = sub_24619F1EC();
  v4[8] = v5;
  v6 = *(v5 - 8);
  v4[9] = v6;
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  v9 = *v3;
  v4[10] = v8;
  v4[11] = v9;

  return MEMORY[0x2822009F8](sub_24615DE98, v9, 0);
}

uint64_t sub_24615DE98()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v6 = v0[6];
  v5 = v0[7];
  v7 = v0[5];
  v8 = OBJC_IVAR____TtC7CoreODI17ODIBindingsFiller_currentBindings;
  swift_beginAccess();
  (*(v4 + 16))(v1, v2 + v8, v3);
  sub_24619F1FC();
  (*(v4 + 8))(v1, v3);

  v9 = v0[1];

  return v9();
}

uint64_t sub_24615DF84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = a3;
  v5[5] = a4;
  v5[2] = a1;
  v5[3] = a2;
  v6 = *v4;
  v5[6] = *v4;
  return MEMORY[0x2822009F8](sub_24615DFAC, v6, 0);
}

uint64_t sub_24615DFAC()
{
  v1 = v0[6];
  sub_24615D874(v0[2], v0[3], v0[4], v0[5]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_24615E014()
{
  v1 = sub_24619F7FC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  sub_24619F1CC();
  v10 = sub_24619EEFC();
  v11 = MEMORY[0x277D004B0];
  __swift_allocate_boxed_opaque_existential_1(&v9);
  sub_24619EECC();
  sub_246158944(&v9, v0 + OBJC_IVAR____TtCC7CoreODI18ODIBindingsManager14CallbackQueuer_logger);
  v6 = *(v0 + OBJC_IVAR____TtCC7CoreODI18ODIBindingsManager14CallbackQueuer_logger + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtCC7CoreODI18ODIBindingsManager14CallbackQueuer_logger), *(v0 + OBJC_IVAR____TtCC7CoreODI18ODIBindingsManager14CallbackQueuer_logger + 24));
  (*(v2 + 104))(v5, *MEMORY[0x277D00770], v1);
  sub_24619F6DC();
  (*(v2 + 8))(v5, v1);
  return v0;
}

uint64_t sub_24615E1BC(void (*a1)(void, void))
{
  v63 = a1;
  v2 = sub_24619EFDC();
  v57 = *(v2 - 8);
  v58 = v2;
  v3 = *(v57 + 64);
  MEMORY[0x28223BE20](v2);
  v56 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_24619F7FC();
  v54 = *(v59 - 8);
  v5 = *(v54 + 64);
  MEMORY[0x28223BE20](v59);
  v55 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24619F1EC();
  v8 = *(v7 - 8);
  v9 = v8[8];
  MEMORY[0x28223BE20](v7);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCC7CoreODI18ODIBindingsManager14CallbackQueuer_bindingsForLastCall;
  swift_beginAccess();
  v13 = v8[2];
  v60 = v1;
  v53 = v13;
  v13(v11, v1 + v12, v7);
  v14 = sub_24619F1DC();
  v16 = v8 + 8;
  v15 = v8[1];
  v15(v11, v7);
  v17 = sub_24615D140(v14);
  v18 = sub_24619F1DC();
  v19 = sub_24616B3CC(v18, v17);

  v20 = *(v19 + 16);

  if (v20)
  {
    v22 = v56;
    v21 = v57;
    v23 = v58;
    (*(v57 + 104))(v56, *MEMORY[0x277D00538], v58);
    sub_24619F7AC();
    (*(v21 + 8))(v22, v23);
    swift_willThrow();
  }

  else
  {
    v57 = v12;
    v58 = v8;
    v24 = v60;
    v53(v11, v60 + v12, v7);
    v25 = v63;
    v26 = sub_24619F1BC();
    v15(v11, v7);
    v27 = v59;
    v28 = v54;
    if ((v26 & 1) == 0)
    {
      v29 = (v24 + OBJC_IVAR____TtCC7CoreODI18ODIBindingsManager14CallbackQueuer_logger);
      v30 = *(v24 + OBJC_IVAR____TtCC7CoreODI18ODIBindingsManager14CallbackQueuer_logger + 24);
      v31 = *(v24 + OBJC_IVAR____TtCC7CoreODI18ODIBindingsManager14CallbackQueuer_logger + 32);
      __swift_project_boxed_opaque_existential_1(v29, v30);
      v32 = v55;
      (*(v28 + 104))(v55, *MEMORY[0x277D00798], v27);
      v24 = v60;
      sub_24619F6DC();
      (*(v28 + 8))(v32, v27);
      *(v24 + 113) = 1;
    }

    if ((*(v24 + 112) & 1) != 0 || *(v24 + 113) != 1)
    {
      v41 = v28;
      v42 = *(v24 + OBJC_IVAR____TtCC7CoreODI18ODIBindingsManager14CallbackQueuer_logger + 24);
      v63 = *(v24 + OBJC_IVAR____TtCC7CoreODI18ODIBindingsManager14CallbackQueuer_logger + 32);
      v58 = __swift_project_boxed_opaque_existential_1((v24 + OBJC_IVAR____TtCC7CoreODI18ODIBindingsManager14CallbackQueuer_logger), v42);
      v61 = 0;
      v62 = 0xE000000000000000;
      sub_24619FAEC();
      MEMORY[0x24C19A830](0xD000000000000025, 0x80000002461A2690);
      if (*(v24 + 112))
      {
        v43 = 1702195828;
      }

      else
      {
        v43 = 0x65736C6166;
      }

      if (*(v24 + 112))
      {
        v44 = 0xE400000000000000;
      }

      else
      {
        v44 = 0xE500000000000000;
      }

      MEMORY[0x24C19A830](v43, v44);

      MEMORY[0x24C19A830](0xD000000000000013, 0x80000002461A26C0);
      if (*(v24 + 113))
      {
        v45 = 1702195828;
      }

      else
      {
        v45 = 0x65736C6166;
      }

      if (*(v24 + 113))
      {
        v46 = 0xE400000000000000;
      }

      else
      {
        v46 = 0xE500000000000000;
      }

      MEMORY[0x24C19A830](v45, v46);

      v47 = v55;
      v48 = v59;
      (*(v41 + 104))(v55, *MEMORY[0x277D00770], v59);
      sub_24619F6DC();

      (*(v41 + 8))(v47, v48);
      v16 = 0;
    }

    else
    {
      v16 = 1;
      *(v24 + 112) = 1;
      v33 = (v24 + OBJC_IVAR____TtCC7CoreODI18ODIBindingsManager14CallbackQueuer_logger);
      v51 = v7;
      v34 = *(v24 + OBJC_IVAR____TtCC7CoreODI18ODIBindingsManager14CallbackQueuer_logger + 24);
      v63 = v33[4];
      v50 = __swift_project_boxed_opaque_existential_1(v33, v34);
      LODWORD(v53) = *MEMORY[0x277D00798];
      v52 = *(v28 + 104);
      v56 = (v28 + 104);
      v35 = v25;
      v36 = v55;
      v52(v55);
      sub_24619F6DC();
      v63 = *(v28 + 8);
      v63(v36, v27);
      v37 = v60;
      *(v60 + 113) = 0;
      v38 = v57;
      v39 = v37;
      swift_beginAccess();
      (v58[3])(v39 + v38, v35, v51);
      swift_endAccess();
      v40 = v33[3];
      v60 = v33[4];
      __swift_project_boxed_opaque_existential_1(v33, v40);
      v61 = 0;
      v62 = 0xE000000000000000;
      sub_24619FAEC();
      MEMORY[0x24C19A830](0xD000000000000047, 0x80000002461A2720);
      sub_24619FB6C();
      (v52)(v36, v53, v27);
      sub_24619F72C();

      v63(v36, v27);
    }
  }

  return v16 & 1;
}

uint64_t sub_24615E934()
{
  v1 = sub_24619F7FC();
  v2 = *(v1 - 8);
  v3 = v2[8];
  MEMORY[0x28223BE20](v1);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v0 + OBJC_IVAR____TtCC7CoreODI18ODIBindingsManager14CallbackQueuer_logger);
  v7 = *(v0 + OBJC_IVAR____TtCC7CoreODI18ODIBindingsManager14CallbackQueuer_logger + 32);
  v21 = *(v0 + OBJC_IVAR____TtCC7CoreODI18ODIBindingsManager14CallbackQueuer_logger + 24);
  v22 = v7;
  v20 = __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtCC7CoreODI18ODIBindingsManager14CallbackQueuer_logger), v21);
  v23 = 0;
  v24 = 0xE000000000000000;
  sub_24619FAEC();
  MEMORY[0x24C19A830](0xD00000000000002DLL, 0x80000002461A2560);
  if (*(v0 + 112))
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (*(v0 + 112))
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  MEMORY[0x24C19A830](v8, v9);

  MEMORY[0x24C19A830](0xD000000000000014, 0x80000002461A2590);
  if (*(v0 + 113))
  {
    v10 = 1702195828;
  }

  else
  {
    v10 = 0x65736C6166;
  }

  if (*(v0 + 113))
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  MEMORY[0x24C19A830](v10, v11);

  MEMORY[0x24C19A830](32, 0xE100000000000000);
  v12 = *MEMORY[0x277D00798];
  v13 = v2[13];
  v13(v5, v12, v1);
  sub_24619F6DC();

  v14 = v2[1];
  v21 = v2 + 1;
  v22 = v1;
  v14(v5, v1);
  *(v0 + 112) = 0;
  v15 = *(v0 + 113);
  if (v15 == 1)
  {
    *(v0 + 113) = 0;
    v16 = v6[3];
    v20 = v6[4];
    __swift_project_boxed_opaque_existential_1(v6, v16);
    v17 = v22;
    v13(v5, v12, v22);
    sub_24619F6DC();
    v14(v5, v17);
  }

  return v15;
}

uint64_t sub_24615EBD8()
{
  v1 = OBJC_IVAR____TtCC7CoreODI18ODIBindingsManager14CallbackQueuer_bindingsForLastCall;
  v2 = sub_24619F1EC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtCC7CoreODI18ODIBindingsManager14CallbackQueuer_logger));
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_24615EC60()
{
  v1[2] = v0;
  v2 = sub_24619F1AC();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = sub_24619F46C();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();
  v8 = sub_24619F22C();
  v1[9] = v8;
  v9 = *(v8 - 8);
  v1[10] = v9;
  v10 = *(v9 + 64) + 15;
  v1[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24615EDD8, 0, 0);
}

uint64_t sub_24615EDD8()
{
  v1 = *(v0[2] + 88);
  (*(v0[7] + 104))(v0[8], *MEMORY[0x277D006B8], v0[6]);
  v2 = swift_task_alloc();
  v0[12] = v2;
  *v2 = v0;
  v2[1] = sub_24615EE9C;
  v3 = v0[11];
  v4 = v0[8];

  return sub_2461970D8(v3, v4);
}

uint64_t sub_24615EE9C(uint64_t a1)
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 104) = a1;

  (*(v4 + 8))(v3, v5);

  return MEMORY[0x2822009F8](sub_24615EFFC, 0, 0);
}

uint64_t sub_24615EFFC()
{
  v1 = v0[13];
  (*(v0[10] + 8))(v0[11], v0[9]);
  v2 = *(v1 + 16);
  v3 = v0[13];
  if (v2)
  {
    v4 = v0[4];
    v24 = MEMORY[0x277D84F90];
    sub_246167480(0, v2, 0);
    v5 = v24;
    v6 = *(v4 + 16);
    v4 += 16;
    v7 = v3 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
    v22 = *(v4 + 56);
    v23 = v6;
    v8 = (v4 - 8);
    do
    {
      v9 = v0[5];
      v10 = v0[3];
      v23(v9, v7, v10);
      sub_24619F17C();
      v11 = sub_24619F88C();

      (*v8)(v9, v10);
      v13 = *(v24 + 16);
      v12 = *(v24 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_246167480((v12 > 1), v13 + 1, 1);
      }

      *(v24 + 16) = v13 + 1;
      *(v24 + 8 * v13 + 32) = v11;
      v7 += v22;
      --v2;
    }

    while (v2);
    v14 = v0[13];
  }

  else
  {
    v15 = v0[13];

    v5 = MEMORY[0x277D84F90];
  }

  v16 = v0[11];
  v17 = v0[8];
  v18 = v0[5];
  v19 = sub_24616C8E8(v5);

  v20 = v0[1];

  return v20(v19);
}

uint64_t sub_24615F1E8(char a1)
{
  *(v2 + 48) = v1;
  *(v2 + 136) = a1;
  v3 = sub_24619F7FC();
  *(v2 + 56) = v3;
  v4 = *(v3 - 8);
  *(v2 + 64) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 72) = swift_task_alloc();
  v6 = sub_24619F46C();
  *(v2 + 80) = v6;
  v7 = *(v6 - 8);
  *(v2 + 88) = v7;
  v8 = *(v7 + 64) + 15;
  *(v2 + 96) = swift_task_alloc();
  v9 = sub_24619F22C();
  *(v2 + 104) = v9;
  v10 = *(v9 - 8);
  *(v2 + 112) = v10;
  v11 = *(v10 + 64) + 15;
  *(v2 + 120) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24615F364, 0, 0);
}

uint64_t sub_24615F364()
{
  v1 = *(v0[6] + 88);
  (*(v0[11] + 104))(v0[12], *MEMORY[0x277D006B8], v0[10]);
  v2 = swift_task_alloc();
  v0[16] = v2;
  *v2 = v0;
  v2[1] = sub_24615F428;
  v3 = v0[15];
  v4 = v0[12];

  return sub_2461970D8(v3, v4);
}

uint64_t sub_24615F428(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v3[4] = v1;
  v3[5] = a1;
  v4 = v2[16];
  v5 = v2[12];
  v6 = v2[11];
  v7 = v2[10];
  v9 = *v1;

  (*(v6 + 8))(v5, v7);

  return MEMORY[0x2822009F8](sub_24615F584, 0, 0);
}

uint64_t sub_24615F584()
{
  if (*(v0 + 136) == 1)
  {
    v1 = *(v0 + 112);
    v16 = *(v0 + 120);
    v2 = *(v0 + 104);
    v3 = *(v0 + 64);
    v4 = *(v0 + 72);
    v5 = *(v0 + 48);
    v6 = *(v0 + 56);
    v17 = v5[7];
    __swift_project_boxed_opaque_existential_1(v5 + 3, v5[6]);
    sub_24619FAEC();
    *(v0 + 16) = 0;
    *(v0 + 24) = 0xE000000000000000;
    MEMORY[0x24C19A830](0xD000000000000019, 0x80000002461A23F0);
    v7 = v2;
    sub_24619FB6C();
    v9 = *(v0 + 16);
    v8 = *(v0 + 24);
    (*(v3 + 104))(v4, *MEMORY[0x277D00760], v6);
    sub_24619F6CC();

    (*(v3 + 8))(v4, v6);
    (*(v1 + 8))(v16, v7);
  }

  else
  {
    (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));
  }

  v10 = *(v0 + 40);
  v11 = *(v0 + 120);
  v12 = *(v0 + 96);
  v13 = *(v0 + 72);

  v14 = *(v0 + 8);

  return v14(v10);
}

uint64_t sub_24615F754()
{
  v1[6] = v0;
  v2 = sub_24619F28C();
  v1[7] = v2;
  v3 = *(v2 - 8);
  v1[8] = v3;
  v4 = *(v3 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v5 = sub_24619F1AC();
  v1[11] = v5;
  v6 = *(v5 - 8);
  v1[12] = v6;
  v7 = *(v6 + 64) + 15;
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v8 = sub_24619F46C();
  v1[16] = v8;
  v9 = *(v8 - 8);
  v1[17] = v9;
  v10 = *(v9 + 64) + 15;
  v1[18] = swift_task_alloc();
  v11 = sub_24619F22C();
  v1[19] = v11;
  v12 = *(v11 - 8);
  v1[20] = v12;
  v13 = *(v12 + 64) + 15;
  v1[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24615F94C, 0, 0);
}

uint64_t sub_24615F94C()
{
  v1 = *(v0[6] + 88);
  (*(v0[17] + 104))(v0[18], *MEMORY[0x277D006B8], v0[16]);
  v2 = swift_task_alloc();
  v0[22] = v2;
  *v2 = v0;
  v2[1] = sub_24615FA10;
  v3 = v0[21];
  v4 = v0[18];

  return sub_2461970D8(v3, v4);
}

uint64_t sub_24615FA10(uint64_t a1)
{
  v2 = *(*v1 + 176);
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 136);
  v5 = *(*v1 + 128);
  v7 = *v1;
  *(*v1 + 184) = a1;

  (*(v4 + 8))(v3, v5);

  return MEMORY[0x2822009F8](sub_24615FB70, 0, 0);
}

uint64_t sub_24615FB70()
{
  v1 = v0[23];
  result = (*(v0[20] + 8))(v0[21], v0[19]);
  v3 = MEMORY[0x277D84F90];
  v52 = *(v1 + 16);
  if (v52)
  {
    v4 = 0;
    v5 = v0[12];
    v6 = v0[8];
    v48 = *MEMORY[0x277D00648];
    v46 = (v6 + 8);
    v47 = (v6 + 104);
    v50 = (v5 + 8);
    v51 = (v5 + 32);
    v49 = v1;
    v45 = v5;
    do
    {
      if (v4 >= *(v1 + 16))
      {
        __break(1u);
        return result;
      }

      v56 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v54 = *(v5 + 72);
      (*(v5 + 16))(v0[15], v0[23] + v56 + v54 * v4, v0[11]);
      if (sub_24619F19C() == 1)
      {
        v53 = v3;
        v7 = v0[15];
        v9 = v0[9];
        v8 = v0[10];
        v10 = v0[7];
        sub_24619F18C();
        (*v47)(v9, v48, v10);
        sub_246164E30(&qword_281391F80, MEMORY[0x277D00680]);
        sub_24619F97C();
        sub_24619F97C();
        v12 = v0[9];
        v11 = v0[10];
        v13 = v0[7];
        if (v0[2] == v0[4] && v0[3] == v0[5])
        {
          v14 = *v46;
          (*v46)(v0[9], v0[7]);
          v14(v11, v13);

          v3 = v53;
          v1 = v49;
          v5 = v45;
LABEL_11:
          v19 = *v51;
          (*v51)(v0[14], v0[15], v0[11]);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_2461674A0(0, *(v3 + 16) + 1, 1);
          }

          v21 = *(v3 + 16);
          v20 = *(v3 + 24);
          if (v21 >= v20 >> 1)
          {
            sub_2461674A0(v20 > 1, v21 + 1, 1);
          }

          v22 = v0[14];
          v23 = v0[11];
          *(v3 + 16) = v21 + 1;
          result = v19(v3 + v56 + v21 * v54, v22, v23);
          goto LABEL_4;
        }

        v15 = v0[3];
        v16 = v0[5];
        v17 = sub_24619FBFC();
        v18 = *v46;
        (*v46)(v12, v13);
        v18(v11, v13);

        v3 = v53;
        v1 = v49;
        v5 = v45;
        if (v17)
        {
          goto LABEL_11;
        }
      }

      result = (*v50)(v0[15], v0[11]);
LABEL_4:
      ++v4;
    }

    while (v52 != v4);
  }

  v24 = v0[23];

  v25 = *(v3 + 16);
  if (v25)
  {
    v26 = v0[12];
    v58 = MEMORY[0x277D84F90];
    sub_246167480(0, v25, 0);
    v27 = v58;
    v28 = *(v26 + 16);
    v26 += 16;
    v29 = v3 + ((*(v26 + 64) + 32) & ~*(v26 + 64));
    v55 = *(v26 + 56);
    v57 = v28;
    v30 = (v26 - 8);
    do
    {
      v31 = v0[13];
      v32 = v0[11];
      v57(v31, v29, v32);
      sub_24619F17C();
      v33 = sub_24619F88C();

      (*v30)(v31, v32);
      v35 = *(v58 + 16);
      v34 = *(v58 + 24);
      if (v35 >= v34 >> 1)
      {
        sub_246167480((v34 > 1), v35 + 1, 1);
      }

      *(v58 + 16) = v35 + 1;
      *(v58 + 8 * v35 + 32) = v33;
      v29 += v55;
      --v25;
    }

    while (v25);
  }

  else
  {

    v27 = MEMORY[0x277D84F90];
  }

  v36 = v0[21];
  v37 = v0[18];
  v39 = v0[14];
  v38 = v0[15];
  v40 = v0[13];
  v42 = v0[9];
  v41 = v0[10];
  v43 = sub_24616C8E8(v27);

  v44 = v0[1];

  return v44(v43);
}

uint64_t sub_246160084()
{
  v1[7] = v0;
  v2 = sub_24619F46C();
  v1[8] = v2;
  v3 = *(v2 - 8);
  v1[9] = v3;
  v4 = *(v3 + 64) + 15;
  v1[10] = swift_task_alloc();
  v5 = sub_24619F7FC();
  v1[11] = v5;
  v6 = *(v5 - 8);
  v1[12] = v6;
  v7 = *(v6 + 64) + 15;
  v1[13] = swift_task_alloc();
  v8 = *(*(sub_24619EF4C() - 8) + 64) + 15;
  v1[14] = swift_task_alloc();
  v9 = sub_24619EF5C();
  v1[15] = v9;
  v10 = *(v9 - 8);
  v1[16] = v10;
  v11 = *(v10 + 64) + 15;
  v1[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_246160228, 0, 0);
}

uint64_t sub_246160228()
{
  v1 = v0[17];
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[11];
  v5 = v0[12];
  v6 = v0[9];
  v7 = v0[7];
  v13 = v0[8];
  v14 = v0[10];
  sub_24619F55C();
  sub_24619EF6C();
  v8 = v7[7];
  __swift_project_boxed_opaque_existential_1(v7 + 3, v7[6]);
  sub_2461707A0(v3);
  sub_24619F74C();
  (*(v5 + 8))(v3, v4);
  v9 = v7[11];
  (*(v6 + 104))(v14, *MEMORY[0x277D006B8], v13);
  v10 = swift_task_alloc();
  v0[18] = v10;
  *v10 = v0;
  v10[1] = sub_246160394;
  v11 = v0[10];

  return sub_246197B48(v11);
}

uint64_t sub_246160394()
{
  v1 = *v0;
  v2 = *(*v0 + 144);
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 72);
  v5 = *(*v0 + 64);
  v6 = *v0;

  (*(v4 + 8))(v3, v5);
  v7 = swift_task_alloc();
  *(v1 + 152) = v7;
  *v7 = v6;
  v7[1] = sub_246160534;
  v8 = *(v1 + 56);

  return sub_24615F1E8(1);
}

uint64_t sub_246160534(uint64_t a1)
{
  v2 = *(*v1 + 152);
  v4 = *v1;
  *(*v1 + 160) = a1;

  return MEMORY[0x2822009F8](sub_246160634, 0, 0);
}

uint64_t sub_246160634()
{
  v1 = v0[7];
  v2 = *(v1 + 72);
  v3 = *(v1 + 80);
  v0[5] = type metadata accessor for ODIBindingsFiller(0);
  v4 = sub_246164E30(&qword_281391CA8, type metadata accessor for ODIBindingsFiller);
  v0[2] = v2;
  v0[6] = v4;
  v5 = *(MEMORY[0x277D00628] + 4);
  v10 = (*MEMORY[0x277D00628] + MEMORY[0x277D00628]);

  v6 = swift_task_alloc();
  v0[21] = v6;
  *v6 = v0;
  v6[1] = sub_246160764;
  v7 = v0[20];
  v8 = v0[7];

  return v10(v7, &unk_2461A0E08, v8, v0 + 2);
}

uint64_t sub_246160764()
{
  v1 = *v0;
  v2 = *(*v0 + 168);
  v3 = *(*v0 + 160);
  v5 = *v0;

  __swift_destroy_boxed_opaque_existential_1((v1 + 16));

  return MEMORY[0x2822009F8](sub_246160884, 0, 0);
}

uint64_t sub_246160884()
{
  v2 = v0[16];
  v1 = v0[17];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[13];
  v6 = v0[10];
  sub_24619EF3C();
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_246160944(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return MEMORY[0x2822009F8](sub_246160964, 0, 0);
}

uint64_t sub_246160964()
{
  v1 = *(*(v0 + 32) + 72);
  *(v0 + 40) = v1;
  return MEMORY[0x2822009F8](sub_246160988, v1, 0);
}

uint64_t sub_246160988()
{
  v1 = v0[5];
  v2 = *(v1 + OBJC_IVAR____TtC7CoreODI17ODIBindingsFiller__locationHelper);
  if (v2)
  {
    v0[7] = v2;

    return MEMORY[0x2822009F8](sub_246160C34, 0, 0);
  }

  else
  {
    v3 = sub_246164E30(&qword_281391CA0, type metadata accessor for ODIBindingsFiller);
    v4 = *(MEMORY[0x277D859E0] + 4);
    v5 = swift_task_alloc();
    v0[6] = v5;
    v6 = sub_24619F48C();
    *v5 = v0;
    v5[1] = sub_246160B00;
    v7 = v0[5];

    return MEMORY[0x2822007B8](v0 + 2, v1, v3, 0xD000000000000010, 0x80000002461A23D0, sub_24616B3C4, v7, v6);
  }
}

uint64_t sub_246160B00()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_246160C10, v2, 0);
}

uint64_t sub_246160C34()
{
  v1 = v0[7];
  v2 = v0[3];
  v3 = sub_24619F48C();
  v4 = MEMORY[0x277D006E0];
  v2[3] = v3;
  v2[4] = v4;
  *v2 = v1;
  v5 = v0[1];

  return v5();
}

uint64_t sub_246160CAC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(sub_24619F1EC() - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = sub_24619F7FC();
  v2[5] = v4;
  v5 = *(v4 - 8);
  v2[6] = v5;
  v6 = *(v5 + 64) + 15;
  v2[7] = swift_task_alloc();
  v7 = sub_24619F2CC();
  v2[8] = v7;
  v8 = *(v7 - 8);
  v2[9] = v8;
  v9 = *(v8 + 64) + 15;
  v2[10] = swift_task_alloc();
  v10 = sub_24619F46C();
  v2[11] = v10;
  v11 = *(v10 - 8);
  v2[12] = v11;
  v12 = *(v11 + 64) + 15;
  v2[13] = swift_task_alloc();
  v13 = sub_24619F22C();
  v2[14] = v13;
  v14 = *(v13 - 8);
  v2[15] = v14;
  v15 = *(v14 + 64) + 15;
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_246160EB8, 0, 0);
}

uint64_t sub_246160EB8()
{
  v1 = *(v0[3] + 88);
  (*(v0[12] + 104))(v0[13], *MEMORY[0x277D006B8], v0[11]);
  v2 = swift_task_alloc();
  v0[18] = v2;
  *v2 = v0;
  v2[1] = sub_246160F7C;
  v3 = v0[17];
  v4 = v0[13];

  return sub_2461970D8(v3, v4);
}

uint64_t sub_246160F7C(uint64_t a1)
{
  v2 = *(*v1 + 144);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v7 = *v1;
  *(*v1 + 152) = a1;

  (*(v4 + 8))(v3, v5);

  return MEMORY[0x2822009F8](sub_2461610DC, 0, 0);
}

uint64_t sub_2461610DC()
{
  *(v0 + 160) = *(*(v0 + 24) + 80);
  sub_24619F27C();
  sub_246164E30(&qword_281391F88, MEMORY[0x277D00630]);
  v2 = sub_24619F99C();

  return MEMORY[0x2822009F8](sub_24616119C, v2, v1);
}

uint64_t sub_24616119C()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 80);
  sub_24619F23C();

  return MEMORY[0x2822009F8](sub_246161208, 0, 0);
}

uint64_t sub_246161208()
{
  v1 = v0[19];
  v17 = v0[16];
  v18 = v0[17];
  v2 = v0[15];
  v19 = v0[13];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[7];
  v11 = v0[8];
  v6 = v0[6];
  v7 = v0[3];
  v13 = v0[5];
  v14 = v0[4];
  v15 = v0[2];
  v16 = v0[14];
  sub_24619F2AC();
  v12 = v7[7];
  __swift_project_boxed_opaque_existential_1(v7 + 3, v7[6]);
  sub_24619FAEC();

  sub_246164E30(&qword_281391F78, MEMORY[0x277D00690]);
  v8 = sub_24619FBBC();
  MEMORY[0x24C19A830](v8);

  (*(v6 + 104))(v5, *MEMORY[0x277D00760], v13);
  sub_24619F6DC();

  (*(v6 + 8))(v5, v13);
  sub_24619F2BC();
  sub_24619F29C();
  (*(v2 + 16))(v17, v18, v16);
  sub_24619F40C();
  (*(v4 + 8))(v3, v11);
  (*(v2 + 8))(v18, v16);

  v9 = v0[1];

  return v9();
}

uint64_t sub_246161488()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_246161518;

  return sub_24616160C();
}

uint64_t sub_246161518()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_24616160C()
{
  v1[2] = v0;
  v2 = sub_24619F7FC();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2461616CC, 0, 0);
}

uint64_t sub_2461616CC()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = v3[7];
  __swift_project_boxed_opaque_existential_1(v3 + 3, v3[6]);
  *(v0 + 96) = *MEMORY[0x277D00770];
  v6 = *(v2 + 104);
  *(v0 + 48) = v6;
  *(v0 + 56) = (v2 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v6(v1);
  sub_24619F6DC();
  v7 = *(v2 + 8);
  *(v0 + 64) = v7;
  *(v0 + 72) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v1, v4);
  v8 = swift_task_alloc();
  *(v0 + 80) = v8;
  *v8 = v0;
  v8[1] = sub_246161814;
  v9 = *(v0 + 16);

  return sub_246160084();
}

uint64_t sub_246161814()
{
  v1 = *(*v0 + 80);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_246161910, 0, 0);
}

uint64_t sub_246161910()
{
  v11 = *(v0 + 64);
  v12 = *(v0 + 72);
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 96);
  v4 = *(v0 + 40);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = v5[7];
  __swift_project_boxed_opaque_existential_1(v5 + 3, v5[6]);
  v1(v4, v3, v6);
  sub_24619F6DC();
  v11(v4, v6);
  v8 = swift_task_alloc();
  *(v0 + 88) = v8;
  *v8 = v0;
  v8[1] = sub_246161A38;
  v9 = *(v0 + 16);

  return sub_246162834();
}

uint64_t sub_246161A38()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 40);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_246161B48()
{
  v1[7] = v0;
  v2 = sub_24619F28C();
  v1[8] = v2;
  v3 = *(v2 - 8);
  v1[9] = v3;
  v4 = *(v3 + 64) + 15;
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v5 = sub_24619F1AC();
  v1[12] = v5;
  v6 = *(v5 - 8);
  v1[13] = v6;
  v7 = *(v6 + 64) + 15;
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v8 = sub_24619F46C();
  v1[17] = v8;
  v9 = *(v8 - 8);
  v1[18] = v9;
  v10 = *(v9 + 64) + 15;
  v1[19] = swift_task_alloc();
  v11 = sub_24619F22C();
  v1[20] = v11;
  v12 = *(v11 - 8);
  v1[21] = v12;
  v13 = *(v12 + 64) + 15;
  v1[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_246161D40, 0, 0);
}

uint64_t sub_246161D40()
{
  v1 = *(v0[7] + 88);
  (*(v0[18] + 104))(v0[19], *MEMORY[0x277D006B8], v0[17]);
  v2 = swift_task_alloc();
  v0[23] = v2;
  *v2 = v0;
  v2[1] = sub_246161E04;
  v3 = v0[22];
  v4 = v0[19];

  return sub_2461970D8(v3, v4);
}

uint64_t sub_246161E04(uint64_t a1)
{
  v2 = *(*v1 + 184);
  v3 = *(*v1 + 152);
  v4 = *(*v1 + 144);
  v5 = *(*v1 + 136);
  v7 = *v1;
  *(*v1 + 192) = a1;

  (*(v4 + 8))(v3, v5);

  return MEMORY[0x2822009F8](sub_246161F64, 0, 0);
}

uint64_t sub_246161F64()
{
  v1 = v0[24];
  v2 = (*(v0[21] + 8))(v0[22], v0[20]);
  v5 = MEMORY[0x277D84F90];
  v53 = *(v1 + 16);
  if (v53)
  {
    v6 = 0;
    v7 = v0[13];
    v8 = v0[9];
    v51 = *MEMORY[0x277D00650];
    v49 = (v8 + 8);
    v50 = (v8 + 104);
    v48 = (v7 + 8);
    v52 = v7;
    v54 = (v7 + 32);
    while (1)
    {
      if (v6 >= *(v1 + 16))
      {
        __break(1u);
        return MEMORY[0x2822009F8](v2, v3, v4);
      }

      v9 = v0[11];
      v10 = v0[10];
      v11 = v0[8];
      v57 = (*(v52 + 80) + 32) & ~*(v52 + 80);
      v55 = *(v52 + 72);
      (*(v52 + 16))(v0[16], v0[24] + v57 + v55 * v6, v0[12]);
      sub_24619F18C();
      (*v50)(v10, v51, v11);
      sub_246164E30(&qword_281391F80, MEMORY[0x277D00680]);
      sub_24619F97C();
      sub_24619F97C();
      v13 = v0[10];
      v12 = v0[11];
      v14 = v0[8];
      if (v0[2] == v0[4] && v0[3] == v0[5])
      {
        break;
      }

      v16 = v0[3];
      v17 = v0[5];
      v18 = sub_24619FBFC();
      v19 = *v49;
      (*v49)(v13, v14);
      v19(v12, v14);

      if (v18)
      {
        goto LABEL_10;
      }

      v2 = (*v48)(v0[16], v0[12]);
LABEL_4:
      if (v53 == ++v6)
      {
        goto LABEL_15;
      }
    }

    v15 = *v49;
    (*v49)(v0[10], v0[8]);
    v15(v12, v14);

LABEL_10:
    v20 = *v54;
    (*v54)(v0[15], v0[16], v0[12]);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2461674A0(0, *(v5 + 16) + 1, 1);
    }

    v22 = *(v5 + 16);
    v21 = *(v5 + 24);
    if (v22 >= v21 >> 1)
    {
      sub_2461674A0(v21 > 1, v22 + 1, 1);
    }

    v23 = v0[15];
    v24 = v0[12];
    *(v5 + 16) = v22 + 1;
    v2 = v20(v5 + v57 + v22 * v55, v23, v24);
    goto LABEL_4;
  }

LABEL_15:
  v25 = v0[24];

  v26 = *(v5 + 16);
  if (v26)
  {
    v27 = v0[13];
    v59 = MEMORY[0x277D84F90];
    sub_246167480(0, v26, 0);
    v28 = v59;
    v29 = *(v27 + 16);
    v27 += 16;
    v30 = v5 + ((*(v27 + 64) + 32) & ~*(v27 + 64));
    v56 = *(v27 + 56);
    v58 = v29;
    v31 = (v27 - 8);
    do
    {
      v32 = v0[14];
      v33 = v0[12];
      v58(v32, v30, v33);
      sub_24619F17C();
      v34 = sub_24619F88C();

      (*v31)(v32, v33);
      v36 = *(v59 + 16);
      v35 = *(v59 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_246167480((v35 > 1), v36 + 1, 1);
      }

      *(v59 + 16) = v36 + 1;
      *(v59 + 8 * v36 + 32) = v34;
      v30 += v56;
      --v26;
    }

    while (v26);
  }

  else
  {

    v28 = MEMORY[0x277D84F90];
  }

  v37 = sub_24616C8E8(v28);

  v38 = *(v37 + 16);

  if (v38)
  {
    v3 = *(v0[7] + 72);
    v0[25] = v3;
    v2 = sub_2461624B4;
    v4 = 0;

    return MEMORY[0x2822009F8](v2, v3, v4);
  }

  else
  {
    v39 = v0[22];
    v40 = v0[19];
    v42 = v0[15];
    v41 = v0[16];
    v43 = v0[14];
    v45 = v0[10];
    v44 = v0[11];

    v46 = v0[1];

    return v46();
  }
}

uint64_t sub_2461624B4()
{
  v1 = v0[25];
  if (*(v1 + OBJC_IVAR____TtC7CoreODI17ODIBindingsFiller__locationHelper))
  {
    v2 = v0[22];
    v3 = v0[19];
    v5 = v0[15];
    v4 = v0[16];
    v6 = v0[14];
    v8 = v0[10];
    v7 = v0[11];

    v9 = v0[1];

    return v9();
  }

  else
  {
    v11 = sub_246164E30(&qword_281391CA0, type metadata accessor for ODIBindingsFiller);
    v12 = *(MEMORY[0x277D859E0] + 4);
    v13 = swift_task_alloc();
    v0[26] = v13;
    v14 = sub_24619F48C();
    *v13 = v0;
    v13[1] = sub_24616266C;
    v15 = v0[25];

    return MEMORY[0x2822007B8](v0 + 6, v1, v11, 0xD000000000000010, 0x80000002461A23D0, sub_24616D060, v15, v14);
  }
}

uint64_t sub_24616266C()
{
  v1 = *(*v0 + 208);
  v2 = *(*v0 + 200);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24616277C, v2, 0);
}

uint64_t sub_24616277C()
{
  v1 = v0[6];

  v2 = v0[22];
  v3 = v0[19];
  v5 = v0[15];
  v4 = v0[16];
  v6 = v0[14];
  v8 = v0[10];
  v7 = v0[11];

  v9 = v0[1];

  return v9();
}

uint64_t sub_246162834()
{
  v1[5] = v0;
  v2 = sub_24619F7FC();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();
  v5 = sub_24619F1EC();
  v1[9] = v5;
  v6 = *(v5 - 8);
  v1[10] = v6;
  v7 = *(v6 + 64) + 15;
  v1[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_246162950, 0, 0);
}

uint64_t sub_246162950()
{
  v0[12] = *(v0[5] + 72);
  v1 = swift_task_alloc();
  v0[13] = v1;
  *v1 = v0;
  v1[1] = sub_2461629EC;
  v2 = v0[5];

  return sub_24615F754();
}

uint64_t sub_2461629EC(uint64_t a1)
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 112) = a1;

  return MEMORY[0x2822009F8](sub_246162B04, v3, 0);
}

uint64_t sub_246162B04()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[9];
  v5 = v0[10];
  v6 = OBJC_IVAR____TtC7CoreODI17ODIBindingsFiller_currentBindings;
  swift_beginAccess();
  (*(v5 + 16))(v2, v3 + v6, v4);
  v7 = sub_24619F1DC();
  (*(v5 + 8))(v2, v4);
  v8 = sub_24615D140(v7);
  v9 = sub_24615D3A0(v1);

  LOBYTE(v1) = sub_24616C9A4(v9, v8);

  if (v1)
  {
    v10 = sub_246162C3C;
  }

  else
  {
    v10 = sub_2461630DC;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_246162C3C()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v3[7];
  __swift_project_boxed_opaque_existential_1(v3 + 3, v3[6]);
  v6 = *MEMORY[0x277D00770];
  v7 = *(v2 + 104);
  v0[15] = v7;
  v0[16] = (v2 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v7(v1, v6, v4);
  sub_24619F6DC();
  v8 = *(v2 + 8);
  v0[17] = v8;
  v0[18] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v4);
  v9 = swift_task_alloc();
  v0[19] = v9;
  *v9 = v0;
  v9[1] = sub_246162D80;
  v10 = v0[5];

  return sub_246160084();
}

uint64_t sub_246162D80()
{
  v1 = *(*v0 + 152);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_246162E7C, 0, 0);
}

uint64_t sub_246162E7C()
{
  v1 = v0[17];
  v11 = v0[18];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[8];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v5[7];
  __swift_project_boxed_opaque_existential_1(v5 + 3, v5[6]);
  v3(v4, *MEMORY[0x277D00798], v6);
  sub_24619F6CC();
  v1(v4, v6);
  v8 = swift_task_alloc();
  v0[20] = v8;
  *v8 = v0;
  v8[1] = sub_246162FA8;
  v9 = v0[5];

  return sub_2461639F0(0);
}

uint64_t sub_246162FA8()
{
  v1 = *v0;
  v2 = *(*v0 + 160);
  v7 = *v0;

  v3 = *(v1 + 88);
  v4 = *(v1 + 64);

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_2461630DC()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v3[7];
  __swift_project_boxed_opaque_existential_1(v3 + 3, v3[6]);
  (*(v2 + 104))(v1, *MEMORY[0x277D00770], v4);
  sub_24619F6DC();
  (*(v2 + 8))(v1, v4);
  v6 = swift_task_alloc();
  v0[21] = v6;
  *v6 = v0;
  v6[1] = sub_246163208;
  v7 = v0[5];

  return sub_246160084();
}

uint64_t sub_246163208()
{
  v1 = *v0;
  v2 = *(*v0 + 168);
  v7 = *v0;

  v3 = *(v1 + 88);
  v4 = *(v1 + 64);

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_246163338(uint64_t a1)
{
  v2[24] = a1;
  v2[25] = v1;
  v3 = swift_task_alloc();
  v2[26] = v3;
  *v3 = v2;
  v3[1] = sub_2461633C8;

  return sub_24615EC60();
}

uint64_t sub_2461633C8(uint64_t a1)
{
  v2 = *(*v1 + 208);
  v4 = *v1;
  *(*v1 + 216) = a1;

  return MEMORY[0x2822009F8](sub_2461634C8, 0, 0);
}

uint64_t sub_2461634C8()
{
  v1 = *(v0 + 192);
  v2 = *(v1 + 32);
  *(v0 + 264) = v2;
  v3 = -1;
  v4 = -1 << v2;
  if (-(-1 << v2) < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & *(v1 + 64);

  if (v5)
  {
    v7 = 0;
LABEL_8:
    v10 = __clz(__rbit64(v5));
    v11 = (v5 - 1) & v5;
    v12 = v10 | (v7 << 6);
    v13 = *(*(v6 + 48) + 8 * v12);
    sub_24616CB20(*(v6 + 56) + 40 * v12, v0 + 112);
    *(v0 + 64) = v13;
    sub_246158944((v0 + 112), v0 + 72);
    v14 = v13;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = ((63 - v4) >> 6) - 1;
    while (v9 != v8)
    {
      v7 = v8 + 1;
      v5 = *(v6 + 72 + 8 * v8++);
      if (v5)
      {
        goto LABEL_8;
      }
    }

    v11 = 0;
    *(v0 + 80) = 0u;
    *(v0 + 96) = 0u;
    *(v0 + 64) = 0u;
  }

  *(v0 + 224) = v11;
  *(v0 + 232) = v9;
  v15 = *(v0 + 80);
  *(v0 + 16) = *(v0 + 64);
  *(v0 + 32) = v15;
  *(v0 + 48) = *(v0 + 96);
  v16 = *(v0 + 16);
  *(v0 + 240) = v16;
  if (v16)
  {
    v17 = *(v0 + 200);
    sub_246158944((v0 + 24), v0 + 152);
    v18 = *(v17 + 72);
    *(v0 + 248) = v18;

    return MEMORY[0x2822009F8](sub_2461636A8, v18, 0);
  }

  else
  {
    v19 = *(v0 + 216);
    v20 = *(v0 + 192);

    v21 = swift_task_alloc();
    *(v0 + 256) = v21;
    *v21 = v0;
    v21[1] = sub_2461638FC;
    v22 = *(v0 + 200);

    return sub_246162834();
  }
}

uint64_t sub_2461636A8()
{
  v1 = *(v0 + 248);
  sub_24615B89C(v0 + 152, *(v0 + 240), *(v0 + 216));

  return MEMORY[0x2822009F8](sub_246163718, 0, 0);
}

uint64_t sub_246163718()
{
  v1 = __swift_destroy_boxed_opaque_existential_1((v0 + 152));
  v4 = *(v0 + 224);
  v5 = *(v0 + 232);
  if (!v4)
  {
    v7 = ((1 << *(v0 + 264)) + 63) >> 6;
    if (v7 <= (v5 + 1))
    {
      v8 = v5 + 1;
    }

    else
    {
      v8 = ((1 << *(v0 + 264)) + 63) >> 6;
    }

    v9 = v8 - 1;
    while (1)
    {
      v10 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v10 >= v7)
      {
        v11 = 0;
        *(v0 + 80) = 0u;
        *(v0 + 96) = 0u;
        *(v0 + 64) = 0u;
        goto LABEL_12;
      }

      v6 = *(v0 + 192);
      v4 = *(v6 + 8 * v10 + 64);
      ++v5;
      if (v4)
      {
        v5 = v10;
        goto LABEL_11;
      }
    }

    __break(1u);
    return MEMORY[0x2822009F8](v1, v2, v3);
  }

  v6 = *(v0 + 192);
LABEL_11:
  v11 = (v4 - 1) & v4;
  v12 = __clz(__rbit64(v4)) | (v5 << 6);
  v13 = *(*(v6 + 48) + 8 * v12);
  sub_24616CB20(*(v6 + 56) + 40 * v12, v0 + 112);
  *(v0 + 64) = v13;
  sub_246158944((v0 + 112), v0 + 72);
  v14 = v13;
  v9 = v5;
LABEL_12:
  *(v0 + 224) = v11;
  *(v0 + 232) = v9;
  v15 = *(v0 + 80);
  *(v0 + 16) = *(v0 + 64);
  *(v0 + 32) = v15;
  *(v0 + 48) = *(v0 + 96);
  v16 = *(v0 + 16);
  *(v0 + 240) = v16;
  if (v16)
  {
    v17 = *(v0 + 200);
    sub_246158944((v0 + 24), v0 + 152);
    v2 = *(v17 + 72);
    *(v0 + 248) = v2;
    v1 = sub_2461636A8;
    v3 = 0;

    return MEMORY[0x2822009F8](v1, v2, v3);
  }

  v18 = *(v0 + 216);
  v19 = *(v0 + 192);

  v20 = swift_task_alloc();
  *(v0 + 256) = v20;
  *v20 = v0;
  v20[1] = sub_2461638FC;
  v21 = *(v0 + 200);

  return sub_246162834();
}

uint64_t sub_2461638FC()
{
  v1 = *(*v0 + 256);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2461639F0(char a1)
{
  *(v2 + 88) = v1;
  *(v2 + 81) = a1;
  v3 = sub_24619F1EC();
  *(v2 + 96) = v3;
  v4 = *(v3 - 8);
  *(v2 + 104) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 112) = swift_task_alloc();
  v6 = sub_24619FB5C();
  *(v2 + 120) = v6;
  v7 = *(v6 - 8);
  *(v2 + 128) = v7;
  v8 = *(v7 + 64) + 15;
  *(v2 + 136) = swift_task_alloc();
  v9 = sub_24619FB4C();
  *(v2 + 144) = v9;
  v10 = *(v9 - 8);
  *(v2 + 152) = v10;
  v11 = *(v10 + 64) + 15;
  *(v2 + 160) = swift_task_alloc();
  *(v2 + 168) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_246163B78, 0, 0);
}

uint64_t sub_246163B78()
{
  if (*(v0 + 81))
  {
    *(v0 + 216) = 0;
    *(v0 + 224) = *(*(v0 + 88) + 80);
    sub_24619F27C();
    sub_246164E30(&qword_281391F88, MEMORY[0x277D00630]);
    v1 = sub_24619F99C();
    v3 = v2;
    v4 = sub_2461640A8;
    v5 = v1;
    v6 = v3;
  }

  else
  {
    v5 = *(*(v0 + 88) + 72);
    *(v0 + 176) = v5;
    v4 = sub_246163C68;
    v6 = 0;
  }

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_246163C68()
{
  v1 = v0[22];
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[18];
  v5 = OBJC_IVAR____TtC7CoreODI17ODIBindingsFiller_coalescingReferenceDate;
  swift_beginAccess();
  (*(v3 + 16))(v2, v1 + v5, v4);

  return MEMORY[0x2822009F8](sub_246163D1C, 0, 0);
}

uint64_t sub_246163D1C()
{
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v3 = *(v0 + 144);
  v4 = *(v0 + 152);
  v5 = *(v0 + 136);
  sub_24619FB2C();
  v6 = *(v4 + 8);
  *(v0 + 184) = v6;
  *(v0 + 192) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v2, v3);
  *(v0 + 72) = 0;
  *(v0 + 64) = 0;
  *(v0 + 80) = 1;
  sub_24619FC2C();
  v7 = *(MEMORY[0x277D857F0] + 4);
  v8 = swift_task_alloc();
  *(v0 + 200) = v8;
  v9 = sub_246164E30(&qword_281391828, MEMORY[0x277D85960]);
  *v8 = v0;
  v8[1] = sub_246163E64;
  v10 = *(v0 + 168);
  v11 = *(v0 + 136);
  v12 = *(v0 + 120);

  return MEMORY[0x282200488](v10, v0 + 64, v11, v12, v9);
}

uint64_t sub_246163E64()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v12 = *v1;
  *(*v1 + 208) = v0;

  v5 = v2[23];
  v4 = v2[24];
  if (v0)
  {
    v6 = v2[21];
    v7 = v2[18];
    (*(v2[16] + 8))(v2[17], v2[15]);
    v5(v6, v7);
    v8 = sub_24616455C;
  }

  else
  {
    v9 = v2[21];
    v10 = v2[18];
    (*(v2[16] + 8))(v2[17], v2[15]);
    v5(v9, v10);
    v8 = sub_246163FE0;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_246163FE0()
{
  v0[27] = v0[26];
  v0[28] = *(v0[11] + 80);
  sub_24619F27C();
  sub_246164E30(&qword_281391F88, MEMORY[0x277D00630]);
  v2 = sub_24619F99C();

  return MEMORY[0x2822009F8](sub_2461640A8, v2, v1);
}

uint64_t sub_2461640A8()
{
  v1 = *(v0 + 224);
  *(v0 + 82) = sub_24619F26C() & 1;

  return MEMORY[0x2822009F8](sub_246164118, 0, 0);
}

uint64_t sub_246164118()
{
  if (*(v0 + 82) == 1)
  {
    v1 = *(v0 + 88);
    *(v0 + 232) = *(v1 + 64);
    v2 = *(v1 + 72);
    *(v0 + 240) = v2;

    return MEMORY[0x2822009F8](sub_2461641FC, v2, 0);
  }

  else
  {
    v4 = *(v0 + 160);
    v3 = *(v0 + 168);
    v5 = *(v0 + 136);
    v6 = *(v0 + 112);

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_2461641FC()
{
  v1 = v0[29];
  v2 = v0[30];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[12];
  v6 = OBJC_IVAR____TtC7CoreODI17ODIBindingsFiller_currentBindings;
  swift_beginAccess();
  (*(v4 + 16))(v3, v2 + v6, v5);

  return MEMORY[0x2822009F8](sub_2461642B0, v1, 0);
}

uint64_t sub_2461642B0()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 216);
  *(v0 + 83) = sub_24615E1BC(*(v0 + 112)) & 1;
  *(v0 + 248) = v2;
  if (v2)
  {
    v3 = sub_2461645E8;
  }

  else
  {
    v3 = sub_246164348;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_246164348()
{
  if (*(v0 + 83) == 1 && (v1 = *(v0 + 88), Strong = swift_unknownObjectWeakLoadStrong(), (*(v0 + 256) = Strong) != 0))
  {

    return MEMORY[0x2822009F8](sub_246164448, Strong, 0);
  }

  else
  {
    (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));
    v4 = *(v0 + 160);
    v3 = *(v0 + 168);
    v5 = *(v0 + 136);
    v6 = *(v0 + 112);

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_246164448()
{
  v1 = *(v0 + 256);
  sub_246183BD4();
  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_2461644B8, 0, 0);
}

uint64_t sub_2461644B8()
{
  (*(v0[13] + 8))(v0[14], v0[12]);
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[17];
  v4 = v0[14];

  v5 = v0[1];

  return v5();
}

uint64_t sub_24616455C()
{
  v1 = v0[26];
  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[17];
  v5 = v0[14];

  v6 = v0[1];

  return v6();
}

uint64_t sub_2461645E8()
{
  (*(v0[13] + 8))(v0[14], v0[12]);
  v1 = v0[31];
  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[17];
  v5 = v0[14];

  v6 = v0[1];

  return v6();
}

uint64_t sub_2461646AC()
{
  v1 = *(*(v0 + 16) + 64);
  *(v0 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2461646D0, v1, 0);
}

uint64_t sub_2461646D0()
{
  v1 = *(v0 + 24);
  *(v0 + 40) = sub_24615E934() & 1;

  return MEMORY[0x2822009F8](sub_246164740, 0, 0);
}

uint64_t sub_246164740()
{
  if (*(v0 + 40) == 1 && (v1 = *(v0 + 16), Strong = swift_unknownObjectWeakLoadStrong(), (*(v0 + 32) = Strong) != 0))
  {

    return MEMORY[0x2822009F8](sub_2461647F0, Strong, 0);
  }

  else
  {
    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_2461647F0()
{
  v1 = *(v0 + 32);
  sub_246183BD4();
  swift_unknownObjectRelease();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_246164858()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  v1 = *(v0 + 64);

  v2 = *(v0 + 72);

  v3 = *(v0 + 80);

  v4 = *(v0 + 88);

  sub_24616CAF8(v0 + 96);

  v5 = *(v0 + 120);

  v6 = *(v0 + 128);

  return v0;
}

uint64_t sub_2461648C0()
{
  sub_246164858();

  return swift_deallocClassInstance();
}

uint64_t sub_246164940(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_246164978()
{
  result = sub_24619F1EC();
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

void sub_246164A78(uint64_t a1, unint64_t *a2)
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

uint64_t sub_246164AC4(uint64_t a1, id *a2)
{
  result = sub_24619F89C();
  *a2 = 0;
  return result;
}

uint64_t sub_246164B3C(uint64_t a1, id *a2)
{
  v3 = sub_24619F8AC();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_246164BBC@<X0>(uint64_t *a1@<X8>)
{
  sub_24619F8BC();
  v2 = sub_24619F88C();

  *a1 = v2;
  return result;
}

uint64_t sub_246164C00(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_24619F8BC();
  v6 = v5;
  if (v4 == sub_24619F8BC() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_24619FBFC();
  }

  return v9 & 1;
}

uint64_t sub_246164C9C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_24619F88C();

  *a2 = v5;
  return result;
}

uint64_t sub_246164CE4(uint64_t a1)
{
  v2 = sub_246164E30(&qword_27EE3F838, type metadata accessor for ODIServiceProviderId);
  v3 = sub_246164E30(&qword_27EE3F840, type metadata accessor for ODIServiceProviderId);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_246164E30(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_246164EC0(uint64_t a1)
{
  v2 = sub_246164E30(&qword_281391860, type metadata accessor for ODIAttributeKey);
  v3 = sub_246164E30(&qword_27EE3F830, type metadata accessor for ODIAttributeKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_246164F7C()
{
  v1 = *v0;
  v2 = sub_24619F8BC();
  v3 = MEMORY[0x24C19A890](v2);

  return v3;
}

uint64_t sub_246164FB8()
{
  v1 = *v0;
  sub_24619F8BC();
  sub_24619F8FC();
}

uint64_t sub_24616500C()
{
  v1 = *v0;
  sub_24619F8BC();
  sub_24619FC8C();
  sub_24619F8FC();
  v2 = sub_24619FCAC();

  return v2;
}

uint64_t sub_246165158(int *a1)
{
  v5 = (a1 + *a1);
  v2 = a1[1];
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_246165240;

  return v5();
}

uint64_t sub_246165240()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

size_t sub_246165338(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F880, &qword_2461A0DB8);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F878, &qword_2461A0DA0) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F878, &qword_2461A0DA0) - 8);
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

void *sub_246165528(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F818, &qword_2461A0D68);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F820, &qword_2461A0D70);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_24616565C(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F888, &unk_2461A0DD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for ODIServiceProviderId(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_246165784(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F850, &unk_2461A18B0);
  v10 = *(sub_24619F06C() - 8);
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
  v15 = *(sub_24619F06C() - 8);
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

unint64_t sub_24616595C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_24619FC8C();
  sub_24619F8FC();
  v6 = sub_24619FCAC();

  return sub_246165D24(a1, a2, v6);
}

unint64_t sub_2461659D4(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_24619FC8C();
  sub_24619F46C();
  sub_246164E30(&qword_27EE3F860, MEMORY[0x277D006C0]);
  sub_24619F86C();
  v4 = *(type metadata accessor for ODIFieldsKey() + 20);
  sub_24619F22C();
  sub_246164E30(&qword_281391F90, MEMORY[0x277D00618]);
  sub_24619F86C();
  v5 = sub_24619FCAC();

  return sub_246165DDC(a1, v5);
}

unint64_t sub_246165AE8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_24619F46C();
  v5 = MEMORY[0x277D006C0];
  sub_246164E30(&qword_27EE3F860, MEMORY[0x277D006C0]);
  v6 = sub_24619F85C();
  return sub_246165F44(a1, v6, MEMORY[0x277D006C0], &qword_27EE3F868, v5, MEMORY[0x277D006D0]);
}

unint64_t sub_246165BBC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_24619F1AC();
  v5 = MEMORY[0x277D005E0];
  sub_246164E30(&qword_281391FA8, MEMORY[0x277D005E0]);
  v6 = sub_24619F85C();
  return sub_246165F44(a1, v6, MEMORY[0x277D005E0], &qword_281391FA0, v5, MEMORY[0x277D005F0]);
}

unint64_t sub_246165C90(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_24619F8BC();
  sub_24619FC8C();
  sub_24619F8FC();
  v4 = sub_24619FCAC();

  return sub_2461660E4(a1, v4);
}

unint64_t sub_246165D24(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_24619FBFC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_246165DDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ODIFieldsKey();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *(v6 + 72);
    do
    {
      sub_24616AE74(*(v2 + 48) + v12 * v10, v8);
      if (sub_24619F45C())
      {
        v13 = *(v4 + 20);
        v14 = sub_24619F21C();
        sub_24616AF3C(v8);
        if (v14)
        {
          return v10;
        }
      }

      else
      {
        sub_24616AF3C(v8);
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_246165F44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
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
      sub_246164E30(v24, v25);
      v20 = sub_24619F87C();
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

unint64_t sub_2461660E4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_24619F8BC();
      v9 = v8;
      if (v7 == sub_24619F8BC() && v9 == v10)
      {
        break;
      }

      v12 = sub_24619FBFC();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
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

uint64_t sub_2461661E8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_24619FC8C();
  sub_24619F8FC();
  v9 = sub_24619FCAC();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_24619FBFC() & 1) != 0)
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

    sub_2461669C0(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_246166338(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(*v2 + 40);
  sub_24619F8BC();
  sub_24619FC8C();
  sub_24619F8FC();
  v8 = sub_24619FCAC();

  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = *(*(v6 + 48) + 8 * v10);
      v13 = sub_24619F8BC();
      v15 = v14;
      if (v13 == sub_24619F8BC() && v15 == v16)
      {

        goto LABEL_12;
      }

      v18 = sub_24619FBFC();

      if (v18)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v23 = *(*(v6 + 48) + 8 * v10);
    *a1 = v23;
    v24 = v23;
    return 0;
  }

  else
  {
LABEL_9:
    v19 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;
    v21 = a2;
    sub_246166B40(v21, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v25;
    *a1 = v21;
    return 1;
  }
}

uint64_t sub_2461664E4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F8B0, &qword_2461A0E40);
  result = sub_24619FACC();
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
      sub_24619FC8C();
      sub_24619F8FC();
      result = sub_24619FCAC();
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

uint64_t sub_246166744(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F8B8, &qword_2461A0E48);
  result = sub_24619FACC();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v30 = v3;
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
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_24619F8BC();
      sub_24619FC8C();
      sub_24619F8FC();
      v20 = sub_24619FCAC();

      v21 = -1 << *(v6 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v13 + 8 * v23);
          if (v27 != -1)
          {
            v14 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
      v3 = v30;
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
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero(v8, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v28;
    }

    v2 = v29;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_2461669C0(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_2461664E4(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_246166D28();
      goto LABEL_16;
    }

    sub_246166FD4(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_24619FC8C();
  sub_24619F8FC();
  result = sub_24619FCAC();
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

      result = sub_24619FBFC();
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
  result = sub_24619FC0C();
  __break(1u);
  return result;
}

uint64_t sub_246166B40(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_246166744(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_246166E84();
      goto LABEL_16;
    }

    sub_24616720C(v7 + 1);
  }

  v9 = *v3;
  v10 = *(*v3 + 40);
  sub_24619F8BC();
  sub_24619FC8C();
  sub_24619F8FC();
  v11 = sub_24619FCAC();

  v12 = -1 << *(v9 + 32);
  a2 = v11 & ~v12;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    type metadata accessor for ODIAttributeKey(0);
    do
    {
      v14 = *(*(v9 + 48) + 8 * a2);
      v15 = sub_24619F8BC();
      v17 = v16;
      if (v15 == sub_24619F8BC() && v17 == v18)
      {
        goto LABEL_19;
      }

      v20 = sub_24619FBFC();

      if (v20)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v13;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v21 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v21 + 48) + 8 * a2) = v6;
  v22 = *(v21 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (!v23)
  {
    *(v21 + 16) = v24;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = sub_24619FC0C();
  __break(1u);
  return result;
}

void *sub_246166D28()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F8B0, &qword_2461A0E40);
  v2 = *v0;
  v3 = sub_24619FABC();
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

id sub_246166E84()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F8B8, &qword_2461A0E48);
  v2 = *v0;
  v3 = sub_24619FABC();
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

uint64_t sub_246166FD4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F8B0, &qword_2461A0E40);
  result = sub_24619FACC();
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
      sub_24619FC8C();

      sub_24619F8FC();
      result = sub_24619FCAC();
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

uint64_t sub_24616720C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F8B8, &qword_2461A0E48);
  result = sub_24619FACC();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v30 = v3;
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
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_24619F8BC();
      sub_24619FC8C();
      v20 = v18;
      sub_24619F8FC();
      v21 = sub_24619FCAC();

      v22 = -1 << *(v6 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v13 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v13 + 8 * v24);
          if (v28 != -1)
          {
            v14 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v23) & ~*(v13 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v20;
      ++*(v6 + 16);
      v3 = v30;
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

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v8 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
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

char *sub_246167460(char *a1, int64_t a2, char a3)
{
  result = sub_2461674C0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_246167480(void *a1, int64_t a2, char a3)
{
  result = sub_2461675CC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2461674A0(size_t a1, int64_t a2, char a3)
{
  result = sub_2461676F4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2461674C0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F8A8, &unk_2461A1260);
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

void *sub_2461675CC(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F8C0, &qword_2461A0E50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for ODIAttributeKey(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_2461676F4(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F8C8, &qword_2461A0E58);
  v10 = *(sub_24619F1AC() - 8);
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
  v15 = *(sub_24619F1AC() - 8);
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

void (*sub_2461678CC(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x50uLL);
  }

  v8 = v7;
  *a1 = v7;
  v9 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8[8] = sub_246167C74(v8);
  v8[9] = sub_2461679D8(v8 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_246167978;
}

void sub_246167978(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_2461679D8(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1, char a2)
{
  v5 = v4;
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_24616595C(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_246169AFC();
      v13 = v21;
      goto LABEL_11;
    }

    sub_246167CA8(v18, a4 & 1);
    v22 = *v5;
    v13 = sub_24616595C(a2, a3);
    if ((v19 & 1) == (v23 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_24619FC1C();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v24 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v24 = 0;
  }

  *v11 = v24;
  return sub_246167B30;
}

void sub_246167B30(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  LOBYTE(v4) = *(*a1 + 40);
  if (a2)
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    v5 = v2[4];
    v6 = *v2[3];
    if ((*a1)[5])
    {
      goto LABEL_9;
    }

    v8 = v2[1];
    v7 = v2[2];
    v6[(v5 >> 6) + 8] |= 1 << v5;
    v9 = (v6[6] + 16 * v5);
    *v9 = v8;
    v9[1] = v7;
    *(v6[7] + 8 * v5) = v3;
    v10 = v6[2];
    v11 = __OFADD__(v10, 1);
    v4 = v10 + 1;
    if (!v11)
    {
LABEL_13:
      v18 = v2[2];
      v6[2] = v4;

      goto LABEL_14;
    }

    __break(1u);
  }

  if (!v3)
  {
LABEL_10:
    if (v4)
    {
      v12 = v2[4];
      v13 = *v2[3];
      sub_24616A920(*(v13 + 48) + 16 * v12);
      sub_24616941C(v12, v13);
    }

    goto LABEL_14;
  }

  v5 = v2[4];
  v6 = *v2[3];
  if ((v4 & 1) == 0)
  {
    v15 = v2[1];
    v14 = v2[2];
    v6[(v5 >> 6) + 8] |= 1 << v5;
    v16 = (v6[6] + 16 * v5);
    *v16 = v15;
    v16[1] = v14;
    *(v6[7] + 8 * v5) = v3;
    v17 = v6[2];
    v11 = __OFADD__(v17, 1);
    v4 = v17 + 1;
    if (v11)
    {
      __break(1u);
      return;
    }

    goto LABEL_13;
  }

LABEL_9:
  *(v6[7] + 8 * v5) = v3;
LABEL_14:
  v19 = *v2;

  free(v2);
}

uint64_t (*sub_246167C74(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_246167C9C;
}

uint64_t sub_246167CA8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F828, &qword_2461A0D78);
  v38 = a2;
  result = sub_24619FB8C();
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
      sub_24619FC8C();
      sub_24619F8FC();
      result = sub_24619FCAC();
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

uint64_t sub_246167F50(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for ODIFieldsKey();
  v42 = *(v6 - 8);
  v43 = v6;
  v7 = *(v42 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v11 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F890, &qword_2461A1380);
  v44 = a2;
  result = sub_24619FB8C();
  v13 = v10;
  v14 = result;
  if (*(v10 + 16))
  {
    v40 = v3;
    v41 = v10;
    v15 = 0;
    v16 = (v10 + 64);
    v17 = 1 << *(v10 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v10 + 64);
    v20 = (v17 + 63) >> 6;
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v42 + 72);
      v28 = *(v13 + 48) + v27 * v26;
      if (v44)
      {
        sub_24616AED8(v28, v9);
        v45 = *(*(v13 + 56) + 8 * v26);
      }

      else
      {
        sub_24616AE74(v28, v9);
        v45 = *(*(v13 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_24619FC8C();
      sub_24619F46C();
      sub_246164E30(&qword_27EE3F860, MEMORY[0x277D006C0]);
      sub_24619F86C();
      v30 = *(v43 + 20);
      sub_24619F22C();
      sub_246164E30(&qword_281391F90, MEMORY[0x277D00618]);
      sub_24619F86C();
      result = sub_24619FCAC();
      v31 = -1 << *(v14 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v21 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        v13 = v41;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v21 + 8 * v33);
          if (v37 != -1)
          {
            v22 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v32) & ~*(v21 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
      v13 = v41;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = sub_24616AED8(v9, *(v14 + 48) + v27 * v22);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v38 = 1 << *(v13 + 32);
    v3 = v40;
    if (v38 >= 64)
    {
      bzero(v16, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v38;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_246168340(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_24619F46C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F858, &unk_2461A0D90);
  v44 = a2;
  result = sub_24619FB8C();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v40 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v41 = (v7 + 16);
    v42 = v7;
    v45 = (v7 + 32);
    v21 = result + 64;
    v43 = v11;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v24 = (v19 - 1) & v19;
LABEL_17:
      v27 = v23 | (v15 << 6);
      v46 = v24;
      v28 = *(v7 + 72);
      v29 = *(v11 + 48) + v28 * v27;
      if (v44)
      {
        (*v45)(v47, v29, v6);
      }

      else
      {
        (*v41)(v47, v29, v6);
      }

      v30 = *(*(v11 + 56) + v27);
      v31 = *(v14 + 40);
      sub_246164E30(&qword_27EE3F860, MEMORY[0x277D006C0]);
      result = sub_24619F85C();
      v32 = -1 << *(v14 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v21 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v21 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v21 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v45)(*(v14 + 48) + v28 * v22, v47, v6);
      *(*(v14 + 56) + v22) = v30;
      ++*(v14 + 16);
      v7 = v42;
      v11 = v43;
      v19 = v46;
    }

    v25 = v15;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v26 = v16[v15];
      ++v25;
      if (v26)
      {
        v23 = __clz(__rbit64(v26));
        v24 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v39 = 1 << *(v11 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v16, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v39;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_246168700(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_24619F46C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F898, &qword_2461A0DE0);
  v43 = a2;
  result = sub_24619FB8C();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_246164E30(&qword_27EE3F860, MEMORY[0x277D006C0]);
      result = sub_24619F85C();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_246168ADC(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_24619F1AC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F848, &unk_2461A0D80);
  v44 = a2;
  result = sub_24619FB8C();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v40 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v41 = (v7 + 16);
    v42 = v7;
    v45 = (v7 + 32);
    v21 = result + 64;
    v43 = v11;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v24 = (v19 - 1) & v19;
LABEL_17:
      v27 = v23 | (v15 << 6);
      v46 = v24;
      v28 = *(v7 + 72);
      v29 = *(v11 + 48) + v28 * v27;
      if (v44)
      {
        (*v45)(v47, v29, v6);
      }

      else
      {
        (*v41)(v47, v29, v6);
      }

      v30 = *(*(v11 + 56) + v27);
      v31 = *(v14 + 40);
      sub_246164E30(&qword_281391FA8, MEMORY[0x277D005E0]);
      result = sub_24619F85C();
      v32 = -1 << *(v14 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v21 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v21 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v21 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v45)(*(v14 + 48) + v28 * v22, v47, v6);
      *(*(v14 + 56) + v22) = v30;
      ++*(v14 + 16);
      v7 = v42;
      v11 = v43;
      v19 = v46;
    }

    v25 = v15;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v26 = v16[v15];
      ++v25;
      if (v26)
      {
        v23 = __clz(__rbit64(v26));
        v24 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v39 = 1 << *(v11 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v16, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v39;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_246168E9C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F8E8, &qword_2461A0ED8);
  v37 = a2;
  result = sub_24619FB8C();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v36 = v5;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = (v21 + 40 * v20);
      if (v37)
      {
        sub_246158944(v23, v38);
      }

      else
      {
        sub_24616CB20(v23, v38);
        v24 = v22;
      }

      v25 = *(v8 + 40);
      sub_24619F8BC();
      sub_24619FC8C();
      sub_24619F8FC();
      v26 = sub_24619FCAC();

      v27 = -1 << *(v8 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      result = sub_246158944(v38, *(v8 + 56) + 40 * v16);
      ++*(v8 + 16);
      v5 = v36;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_246169178(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F8A0, &qword_2461A0DE8);
  v39 = a2;
  result = sub_24619FB8C();
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
      sub_24619FC8C();
      sub_24619F8FC();
      result = sub_24619FCAC();
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

uint64_t sub_24616941C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_24619FA9C() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_24619FC8C();

      sub_24619F8FC();
      v13 = sub_24619FCAC();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_2461695CC(int64_t a1, uint64_t a2)
{
  v43 = sub_24619F46C();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v43);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v44 = v7;
    v13 = sub_24619FA9C();
    v14 = v43;
    v7 = v44;
    v15 = v12;
    v41 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v39 = a2 + 64;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v42;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v40(v42, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_246164E30(&qword_27EE3F860, MEMORY[0x277D006C0]);
      v26 = sub_24619F85C();
      result = (*v38)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v41)
      {
        if (v27 >= v41 && a1 >= v27)
        {
LABEL_15:
          v7 = v44;
          v30 = *(v44 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v44;
            v18 = v19;
            v15 = v22;
            v9 = v39;
          }

          else
          {
            v9 = v39;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v44;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = (v31 + 8 * a1);
          v33 = (v31 + 8 * v11);
          if (a1 != v11 || v32 >= v33 + 1)
          {
            *v32 = *v33;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v41 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v39;
      v18 = v19;
      v7 = v44;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(v7 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v36;
    ++*(v7 + 36);
  }

  return result;
}

uint64_t sub_2461698EC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for ODIFieldsKey();
  result = sub_24616AED8(a2, v8 + *(*(v9 - 8) + 72) * a1);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_24616998C(unint64_t a1, uint64_t a2, char a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_24619F46C();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_246169A44(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_24619F46C();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

void *sub_246169AFC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F828, &qword_2461A0D78);
  v2 = *v0;
  v3 = sub_24619FB7C();
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

void *sub_246169C6C()
{
  v1 = v0;
  v2 = type metadata accessor for ODIFieldsKey();
  v25 = *(v2 - 8);
  v3 = *(v25 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F890, &qword_2461A1380);
  v6 = *v0;
  v7 = sub_24619FB7C();
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
        v22 = *(v25 + 72) * v21;
        sub_24616AE74(*(v6 + 48) + v22, v5);
        v23 = *(*(v6 + 56) + 8 * v21);
        sub_24616AED8(v5, *(v8 + 48) + v22);
        *(*(v8 + 56) + 8 * v21) = v23;
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

char *sub_246169E84()
{
  v1 = v0;
  v34 = sub_24619F46C();
  v36 = *(v34 - 8);
  v2 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F898, &qword_2461A0DE0);
  v4 = *v0;
  v5 = sub_24619FB7C();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v35 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v37 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v36;
        v21 = *(v36 + 72) * v19;
        v23 = v33;
        v22 = v34;
        (*(v36 + 16))(v33, *(v4 + 48) + v21, v34);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v4;
        v26 = v35;
        (*(v20 + 32))(*(v35 + 48) + v21, v23, v22);
        v27 = *(v26 + 56);
        v4 = v25;
        *(v27 + 8 * v19) = v24;

        v14 = v37;
      }

      while (v37);
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

        v1 = v29;
        v6 = v35;
        goto LABEL_18;
      }

      v18 = *(v30 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_24616A12C(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v37 = a1(0);
  v39 = *(v37 - 8);
  v7 = *(v39 + 64);
  MEMORY[0x28223BE20](v37);
  v36 = &v31 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v9 = *v3;
  v10 = sub_24619FB7C();
  v11 = v10;
  if (*(v9 + 16))
  {
    result = (v10 + 64);
    v13 = ((1 << *(v11 + 32)) + 63) >> 6;
    v32 = v6;
    v33 = (v9 + 64);
    if (v11 != v9 || result >= v9 + 64 + 8 * v13)
    {
      result = memmove(result, v33, 8 * v13);
    }

    v15 = 0;
    v16 = *(v9 + 16);
    v38 = v11;
    *(v11 + 16) = v16;
    v17 = 1 << *(v9 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v9 + 64);
    v20 = (v17 + 63) >> 6;
    v34 = v39 + 32;
    v35 = v39 + 16;
    v21 = v11;
    if (v19)
    {
      do
      {
        v22 = __clz(__rbit64(v19));
        v40 = (v19 - 1) & v19;
LABEL_17:
        v25 = v22 | (v15 << 6);
        v26 = v39;
        v27 = *(v39 + 72) * v25;
        v29 = v36;
        v28 = v37;
        (*(v39 + 16))(v36, *(v9 + 48) + v27, v37);
        v30 = *(*(v9 + 56) + v25);
        result = (*(v26 + 32))(*(v21 + 48) + v27, v29, v28);
        *(*(v21 + 56) + v25) = v30;
        v19 = v40;
      }

      while (v40);
    }

    v23 = v15;
    while (1)
    {
      v15 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v15 >= v20)
      {

        v6 = v32;
        v11 = v38;
        goto LABEL_21;
      }

      v24 = *(v33 + v15);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v40 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v11;
  }

  return result;
}

id sub_24616A3A0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F8E8, &qword_2461A0ED8);
  v2 = *v0;
  v3 = sub_24619FB7C();
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
        sub_24616CB20(*(v2 + 56) + 40 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_246158944(v19, *(v4 + 56) + 40 * v17);
        result = v18;
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

id sub_24616A524()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F8A0, &qword_2461A0DE8);
  v2 = *v0;
  v3 = sub_24619FB7C();
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

        result = v20;
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

uint64_t sub_24616A690(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_24616595C(a2, a3);
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
      sub_246167CA8(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_24616595C(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_24619FC1C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_246169AFC();
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

uint64_t sub_24616A80C(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_24616D024;

  return sub_24615DB90(a1, a2, v7);
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

uint64_t sub_24616A974(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for ODIFieldsKey();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_2461659D4(a2);
  v15 = *(v12 + 16);
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = *(v12 + 24);
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_246169C6C();
      goto LABEL_7;
    }

    sub_246167F50(v17, a3 & 1);
    v24 = *v4;
    v25 = sub_2461659D4(a2);
    if ((v18 & 1) == (v26 & 1))
    {
      v14 = v25;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_24616AE74(a2, v11);
      return sub_2461698EC(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_24619FC1C();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = *(v21 + 8 * v14);
  *(v21 + 8 * v14) = a1;
}

uint64_t sub_24616AB04(char a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_24619F46C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_246165AE8(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  result = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= result && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *v4;
    if (v19)
    {
LABEL_8:
      *(v21[7] + v15) = a1 & 1;
      return result;
    }

    goto LABEL_11;
  }

  if (v20 >= result && (a3 & 1) == 0)
  {
    result = sub_24616A12C(MEMORY[0x277D006C0], &qword_27EE3F858, &unk_2461A0D90);
    goto LABEL_7;
  }

  sub_246168340(result, a3 & 1);
  v22 = *v4;
  result = sub_246165AE8(a2);
  if ((v19 & 1) != (v23 & 1))
  {
LABEL_14:
    result = sub_24619FC1C();
    __break(1u);
    return result;
  }

  v15 = result;
  v21 = *v4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v12, a2, v8);
  return sub_24616998C(v15, v12, a1 & 1, v21);
}

uint64_t sub_24616ACC8(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F878, &qword_2461A0DA0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24616D024;

  return sub_24615B26C(a1, v6, v7, v8, v1 + v5);
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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_24616AE74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ODIFieldsKey();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24616AED8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ODIFieldsKey();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24616AF3C(uint64_t a1)
{
  v2 = type metadata accessor for ODIFieldsKey();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24616AF98(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_24619F46C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_246165AE8(a2);
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
      sub_246169E84();
      goto LABEL_7;
    }

    sub_246168700(v18, a3 & 1);
    v25 = *v4;
    v26 = sub_246165AE8(a2);
    if ((v19 & 1) == (v27 & 1))
    {
      v15 = v26;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_246169A44(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_24619FC1C();
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
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

uint64_t sub_24616B164(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_24616595C(a2, a3);
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
      sub_246169178(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_24616595C(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        sub_24619FC1C();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v19 = v11;
      sub_24616A524();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return MEMORY[0x2821F96F8]();
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

uint64_t sub_24616B2DC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24616D024;

  return sub_246160944(a1, v1);
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_24616B3CC(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v69 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    v5 = MEMORY[0x277D84FA0];
LABEL_53:
    v50 = *MEMORY[0x277D85DE8];
    return v5;
  }

  v56 = 0;
  v7 = a1 + 64;
  v6 = *(a1 + 64);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v60 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v64 = (a2 + 56);

  v15 = 0;
  v62 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_55;
      }

      if (v17 >= v12)
      {
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v63 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    v23 = *(v5 + 40);
    sub_24619FC8C();

    sub_24619F8FC();
    v24 = sub_24619FCAC();
    v25 = -1 << *(v5 + 32);
    v2 = v24 & ~v25;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v64[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v62;
    v15 = v63;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v25;
  while (1)
  {
    v26 = (*(v5 + 48) + 16 * v2);
    v27 = *v26 == v22 && v26[1] == v21;
    if (v27 || (sub_24619FBFC() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v64[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v62;
  v28 = v63;
  v66 = v60;
  v67 = v63;
  v68 = v11;
  v65[0] = v62;
  v65[1] = v7;

  v30 = *(v5 + 32);
  v57 = ((1 << v30) + 63) >> 6;
  v14 = 8 * v57;
  if ((v30 & 0x3Fu) > 0xD)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v58 = &v56;
    MEMORY[0x28223BE20](v29);
    v2 = &v56 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v64, v31);
    v32 = *(v2 + 8 * v8) & ~v4;
    v33 = *(v5 + 16);
    v61 = v2;
    *(v2 + 8 * v8) = v32;
    v34 = v33 - 1;
LABEL_23:
    v59 = v34;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v36 = v28;
    while (1)
    {
      v37 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v37 >= v12)
      {
        v5 = sub_24616C480(v61, v57, v59, v5);
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v37);
      ++v36;
      if (v11)
      {
        v28 = v37;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v38 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v39 = *(v3 + 48);
            v63 = v28;
            v40 = (v39 + ((v28 << 10) | (16 * v38)));
            v41 = *v40;
            v4 = v40[1];
            v42 = *(v5 + 40);
            sub_24619FC8C();

            sub_24619F8FC();
            v43 = sub_24619FCAC();
            v44 = -1 << *(v5 + 32);
            v8 = v43 & ~v44;
            v2 = v8 >> 6;
            v45 = 1 << v8;
            if (((1 << v8) & v64[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v28 = v63;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v46 = (*(v5 + 48) + 16 * v8);
          if (*v46 != v41 || v46[1] != v4)
          {
            v48 = ~v44;
            while ((sub_24619FBFC() & 1) == 0)
            {
              v8 = (v8 + 1) & v48;
              v2 = v8 >> 6;
              v45 = 1 << v8;
              if (((1 << v8) & v64[v8 >> 6]) == 0)
              {
                v3 = v62;
                goto LABEL_45;
              }

              v49 = (*(v5 + 48) + 16 * v8);
              if (*v49 == v41 && v49[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v62;
          v35 = v61[v2];
          v61[v2] = v35 & ~v45;
          v27 = (v35 & v45) == 0;
          v28 = v63;
          if (!v27)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v34 = v59 - 1;
        if (__OFSUB__(v59, 1))
        {
          __break(1u);
        }

        if (v59 == 1)
        {

          v5 = MEMORY[0x277D84FA0];
          goto LABEL_52;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    v52 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v28 = v63;
  }

  v53 = swift_slowAlloc();
  memcpy(v53, v64, v52);
  v54 = v56;
  v55 = sub_24616BFBC(v53, v57, v5, v2, v65);

  if (!v54)
  {

    MEMORY[0x24C19B270](v53, -1, -1);
    v60 = v66;
    v5 = v55;
LABEL_52:
    sub_24616CAF0();
    goto LABEL_53;
  }

  result = MEMORY[0x24C19B270](v53, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_24616B93C(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v82 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    v3 = MEMORY[0x277D84FA0];
LABEL_55:
    v57 = *MEMORY[0x277D85DE8];
    return v3;
  }

  v65 = 0;
  v5 = a1 + 64;
  v4 = *(a1 + 64);
  v6 = -1;
  v7 = -1 << *(a1 + 32);
  v74 = ~v7;
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & v4;
  v10 = (63 - v7) >> 6;
  v76 = (a2 + 56);

  v13 = 0;
  v70 = v10;
  v72 = v11;
  v71 = v5;
  if (v9)
  {
LABEL_11:
    while (1)
    {
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v17 = *(*(v11 + 48) + ((v13 << 9) | (8 * v16)));
      v77 = v11;
      v78 = v5;
      v79 = v74;
      v80 = v13;
      v75 = v13;
      v81 = v9;
      v18 = *(v3 + 40);
      sub_24619F8BC();
      sub_24619FC8C();
      v73 = v17;
      sub_24619F8FC();
      v19 = sub_24619FCAC();

      v20 = -1 << *(v3 + 32);
      v5 = v19 & ~v20;
      v2 = v5 >> 6;
      v6 = 1 << v5;
      if (((1 << v5) & v76[v5 >> 6]) != 0)
      {
        break;
      }

LABEL_19:

      v11 = v72;
      v5 = v71;
      v10 = v70;
      v13 = v75;
      v6 = -1;
      if (!v9)
      {
        goto LABEL_6;
      }
    }

    v21 = ~v20;
    while (1)
    {
      v22 = *(*(v3 + 48) + 8 * v5);
      v23 = sub_24619F8BC();
      v25 = v24;
      if (v23 == sub_24619F8BC() && v25 == v26)
      {

        goto LABEL_25;
      }

      v28 = sub_24619FBFC();

      if (v28)
      {
        break;
      }

      v5 = (v5 + 1) & v21;
      v2 = v5 >> 6;
      v6 = 1 << v5;
      if (((1 << v5) & v76[v5 >> 6]) == 0)
      {
        goto LABEL_19;
      }
    }

LABEL_25:
    v30 = *(v3 + 32);
    v66 = ((1 << v30) + 63) >> 6;
    v12 = 8 * v66;
    if ((v30 & 0x3Fu) <= 0xD)
    {
      goto LABEL_26;
    }
  }

  else
  {
LABEL_6:
    v14 = v13;
    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v10)
      {
        goto LABEL_54;
      }

      v9 = *(v5 + 8 * v15);
      ++v14;
      if (v9)
      {
        v13 = v15;
        goto LABEL_11;
      }
    }

LABEL_57:
    __break(1u);
  }

  v59 = v12;

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_26:
    v67 = &v64;
    MEMORY[0x28223BE20](v29);
    v5 = &v64 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v5, v76, v31);
    v32 = *(v5 + 8 * v2) & ~v6;
    v33 = *(v3 + 16);
    v69 = v5;
    *(v5 + 8 * v2) = v32;
    v34 = v33 - 1;
    v35 = v72;
    v36 = v71;
    v37 = v70;
    v38 = v75;
LABEL_27:
    v68 = v34;
    while (v9)
    {
LABEL_35:
      v41 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v42 = *(*(v35 + 48) + ((v38 << 9) | (8 * v41)));
      v77 = v35;
      v78 = v36;
      v79 = v74;
      v80 = v38;
      v75 = v38;
      v81 = v9;
      v43 = *(v3 + 40);
      sub_24619F8BC();
      sub_24619FC8C();
      v73 = v42;
      sub_24619F8FC();
      v5 = sub_24619FCAC();

      v44 = -1 << *(v3 + 32);
      v45 = v5 & ~v44;
      v6 = v45 >> 6;
      v2 = 1 << v45;
      if (((1 << v45) & v76[v45 >> 6]) != 0)
      {
        v46 = ~v44;
        while (1)
        {
          v47 = *(*(v3 + 48) + 8 * v45);
          v48 = sub_24619F8BC();
          v50 = v49;
          v51 = sub_24619F8BC();
          v5 = v52;
          if (v48 == v51 && v50 == v52)
          {

            goto LABEL_46;
          }

          v54 = sub_24619FBFC();

          if (v54)
          {
            break;
          }

          v45 = (v45 + 1) & v46;
          v6 = v45 >> 6;
          v2 = 1 << v45;
          if (((1 << v45) & v76[v45 >> 6]) == 0)
          {
            goto LABEL_28;
          }
        }

LABEL_46:
        v55 = v69[v6];
        v69[v6] = v55 & ~v2;
        v35 = v72;
        v36 = v71;
        v37 = v70;
        v38 = v75;
        if ((v55 & v2) != 0)
        {
          v34 = v68 - 1;
          if (__OFSUB__(v68, 1))
          {
            __break(1u);
          }

          if (v68 == 1)
          {

            v3 = MEMORY[0x277D84FA0];
            goto LABEL_54;
          }

          goto LABEL_27;
        }
      }

      else
      {
LABEL_28:

        v35 = v72;
        v36 = v71;
        v37 = v70;
        v38 = v75;
      }
    }

    v39 = v38;
    while (1)
    {
      v40 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        __break(1u);
        goto LABEL_57;
      }

      if (v40 >= v37)
      {
        break;
      }

      v9 = *(v36 + 8 * v40);
      ++v39;
      if (v9)
      {
        v38 = v40;
        goto LABEL_35;
      }
    }

    if (v37 <= v38 + 1)
    {
      v56 = v38 + 1;
    }

    else
    {
      v56 = v37;
    }

    v77 = v35;
    v78 = v36;
    v79 = v74;
    v80 = v56 - 1;
    v81 = 0;
    v3 = sub_24616C6A4(v69, v66, v68, v3);
    goto LABEL_54;
  }

  v60 = swift_slowAlloc();
  memcpy(v60, v76, v59);
  v61 = v65;
  sub_24616C1F4(v60, v66, v3, v5, &v77);
  v63 = v62;

  if (!v61)
  {

    MEMORY[0x24C19B270](v60, -1, -1);
    v3 = v63;
LABEL_54:
    sub_24616CAF0();
    goto LABEL_55;
  }

  result = MEMORY[0x24C19B270](v60, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_24616BFBC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v32 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v31 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v29 = v11 + 1;
          }

          else
          {
            v29 = (a5[2] + 64) >> 6;
          }

          a5[3] = v29 - 1;
          a5[4] = 0;

          return sub_24616C480(v32, a2, v31, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        v19 = *(a3 + 40);
        sub_24619FC8C();

        sub_24619F8FC();
        v20 = sub_24619FCAC();
        v21 = -1 << *(a3 + 32);
        v22 = v20 & ~v21;
        v23 = v22 >> 6;
        v24 = 1 << v22;
        if (((1 << v22) & *(v9 + 8 * (v22 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v25 = (*(a3 + 48) + 16 * v22);
      if (*v25 != v18 || v25[1] != v17)
      {
        v27 = ~v21;
        while ((sub_24619FBFC() & 1) == 0)
        {
          v22 = (v22 + 1) & v27;
          v23 = v22 >> 6;
          v24 = 1 << v22;
          if (((1 << v22) & *(v9 + 8 * (v22 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v28 = (*(a3 + 48) + 16 * v22);
          if (*v28 == v18 && v28[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v32[v23];
      v32[v23] = v10 & ~v24;
    }

    while ((v10 & v24) == 0);
    v8 = v31 - 1;
    if (__OFSUB__(v31, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v31 != 1)
      {
        continue;
      }

      return MEMORY[0x277D84FA0];
    }

    return result;
  }
}

void sub_24616C1F4(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v6 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v7 = v6 - 1;
  v35 = a3 + 56;
  v33 = a5;
  while (2)
  {
    v31 = v7;
    do
    {
      while (1)
      {
        v8 = a5[3];
        v9 = a5[4];
        if (!v9)
        {
          v11 = (a5[2] + 64) >> 6;
          v12 = a5[3];
          while (1)
          {
            v10 = v12 + 1;
            if (__OFADD__(v12, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v10 >= v11)
            {
              break;
            }

            v9 = *(a5[1] + 8 * v10);
            ++v12;
            if (v9)
            {
              goto LABEL_10;
            }
          }

          if (v11 <= v8 + 1)
          {
            v29 = v8 + 1;
          }

          else
          {
            v29 = (a5[2] + 64) >> 6;
          }

          a5[3] = v29 - 1;
          a5[4] = 0;

          sub_24616C6A4(a1, a2, v31, a3);
          return;
        }

        v10 = a5[3];
LABEL_10:
        v13 = *(*(*a5 + 48) + ((v10 << 9) | (8 * __clz(__rbit64(v9)))));
        a5[3] = v10;
        a5[4] = (v9 - 1) & v9;
        v14 = *(a3 + 40);
        sub_24619F8BC();
        sub_24619FC8C();
        v34 = v13;
        sub_24619F8FC();
        v15 = sub_24619FCAC();

        v16 = -1 << *(a3 + 32);
        v17 = v15 & ~v16;
        v18 = v17 >> 6;
        v19 = 1 << v17;
        if (((1 << v17) & *(v35 + 8 * (v17 >> 6))) != 0)
        {
          break;
        }

LABEL_3:

        a5 = v33;
      }

      v20 = ~v16;
      while (1)
      {
        v21 = *(*(a3 + 48) + 8 * v17);
        v22 = sub_24619F8BC();
        v24 = v23;
        if (v22 == sub_24619F8BC() && v24 == v25)
        {

          goto LABEL_21;
        }

        v27 = sub_24619FBFC();

        if (v27)
        {
          break;
        }

        v17 = (v17 + 1) & v20;
        v18 = v17 >> 6;
        v19 = 1 << v17;
        if (((1 << v17) & *(v35 + 8 * (v17 >> 6))) == 0)
        {
          goto LABEL_3;
        }
      }

LABEL_21:
      a5 = v33;
      v28 = a1[v18];
      a1[v18] = v28 & ~v19;
    }

    while ((v28 & v19) == 0);
    v7 = v31 - 1;
    if (__OFSUB__(v31, 1))
    {
LABEL_30:
      __break(1u);
    }

    else if (v31 != 1)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_24616C480(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F8B0, &qword_2461A0E40);
  result = sub_24619FADC();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = *(v9 + 40);
    sub_24619FC8C();

    sub_24619F8FC();
    result = sub_24619FCAC();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v9 + 48) + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_24616C6A4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F8B8, &qword_2461A0E48);
  result = sub_24619FADC();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v30 = (v10 - 1) & v10;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    v17 = *(v9 + 40);
    sub_24619F8BC();
    sub_24619FC8C();
    v18 = v16;
    sub_24619F8FC();
    v19 = sub_24619FCAC();

    v20 = -1 << *(v9 + 32);
    v21 = v19 & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    *(*(v9 + 48) + 8 * v23) = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    v10 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v30 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_24616C8E8(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for ODIAttributeKey(0);
  v4 = v3;
  v5 = sub_246164E30(&qword_281391860, type metadata accessor for ODIAttributeKey);
  result = MEMORY[0x24C19A980](v2, v4, v5);
  v10 = result;
  if (v2)
  {
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;
      sub_246166338(&v9, v8);

      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t sub_24616C9A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a1 + 32;
  v6 = a2 + 56;
  do
  {
    v7 = *(a2 + 16);
    v8 = v7 != 0;
    if (!v7)
    {
      break;
    }

    v9 = (v5 + 16 * v4);
    v11 = *v9;
    v10 = v9[1];
    v12 = *(a2 + 40);
    sub_24619FC8C();

    sub_24619F8FC();
    v13 = sub_24619FCAC();
    v14 = -1 << *(a2 + 32);
    v15 = v13 & ~v14;
    if (((*(v6 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
LABEL_13:

      return 0;
    }

    ++v4;
    v16 = ~v14;
    while (1)
    {
      v17 = (*(a2 + 48) + 16 * v15);
      v18 = *v17 == v11 && v17[1] == v10;
      if (v18 || (sub_24619FBFC() & 1) != 0)
      {
        break;
      }

      v15 = (v15 + 1) & v16;
      if (((*(v6 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        goto LABEL_13;
      }
    }
  }

  while (v4 != v2);
  return v8;
}

uint64_t sub_24616CAE4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_24616CB20(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_24616CB84(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_246161518;

  return sub_24615C528(a1, v4, v5, v6, v7, v8, (v1 + 7));
}

uint64_t sub_24616CC58(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_24616D024;

  return sub_24615C788(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_24616CD20(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24616D024;

  return sub_24615CC18(a1, v5);
}

uint64_t sub_24616CDD4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[11];
  v7 = v0[12];
  v8 = v0[13];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_24616D024;

  return sub_24615CD0C(v2, v3, v4, v5, (v0 + 6), v6, v7, v8);
}

uint64_t sub_24616CEA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F870, &qword_2461A0FE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24616CF18()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_246161518;

  return sub_246165158(v2);
}

uint64_t sub_24616CFC4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

Swift::String __swiftcall ODIServiceProviderId.toWorkflowID()()
{
  v4 = sub_24619F8BC();
  v5 = v0;
  MEMORY[0x24C19A830](0x5F762E6C6C75662ELL, 0xED0000312E302E30);
  v1 = v4;
  v2 = v5;
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t sub_24616D0C0(uint64_t a1)
{
  v2 = sub_24619F7FC();
  v33 = *(v2 - 8);
  v34 = v2;
  v3 = *(v33 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24619EEFC();
  v31 = *(v6 - 8);
  v32 = v6;
  v7 = *(v31 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24619EFDC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EE3F7A8 != -1)
  {
    swift_once();
  }

  v15 = qword_27EE3FA68;
  v16 = sub_24616E624(a1);
  if (*(v15 + 16))
  {
    v18 = sub_24616595C(v16, v17);
    v20 = v19;

    if (v20)
    {
      v21 = *(*(v15 + 56) + 8 * v18);
    }
  }

  else
  {
  }

  v35 = 0;
  v36 = 0xE000000000000000;
  sub_24619FAEC();
  v23 = sub_24619F8BC();
  v25 = v24;

  v35 = v23;
  v36 = v25;
  MEMORY[0x24C19A830](0xD000000000000020, 0x80000002461A28B0);
  (*(v11 + 104))(v14, *MEMORY[0x277D00530], v10);
  v26 = sub_24619F7AC();

  (*(v11 + 8))(v14, v10);
  swift_willThrow();
  sub_24619EEEC();
  v35 = 0;
  v36 = 0xE000000000000000;
  sub_24619FAEC();

  v35 = 0xD000000000000023;
  v36 = 0x80000002461A2930;
  swift_getErrorValue();
  v27 = sub_24619FC3C();
  MEMORY[0x24C19A830](v27);

  v29 = v33;
  v28 = v34;
  (*(v33 + 104))(v5, *MEMORY[0x277D007A0], v34);
  sub_24619EEDC();

  (*(v29 + 8))(v5, v28);

  (*(v31 + 8))(v9, v32);
  return MEMORY[0x277D84F90];
}

uint64_t sub_24616D4E0@<X0>(uint64_t *a1@<X8>)
{
  result = _sSo20ODIServiceProviderIda7CoreODIE8allCasesSayABGvgZ_0();
  *a1 = result;
  return result;
}

uint64_t sub_24616D564(uint64_t a1)
{
  v2 = sub_24619F7FC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v129 = &v123 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24619EEFC();
  v128 = *(v6 - 8);
  v7 = *(v128 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  if (qword_281391BE0 != -1)
  {
    v8 = swift_once();
  }

  v130 = a1;
  MEMORY[0x28223BE20](v8);
  *(&v123 - 2) = &v130;
  if (sub_246189598(sub_24617038C, (&v123 - 4), v9))
  {
    v10 = 0xD000000000000775;
    v11 = "  priority: 2\n  }\n]";
    goto LABEL_16;
  }

  v126 = v2;
  v127 = v6;
  v125 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F888, &unk_2461A0DD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2461A0EF0;
  *(inited + 32) = @"com.apple.bko.application_create";
  *(inited + 40) = @"com.apple.bko.application_submit";
  *(inited + 48) = @"com.apple.bko.id_update";
  v130 = a1;
  MEMORY[0x28223BE20](inited);
  *(&v123 - 2) = &v130;
  v14 = v13;
  v15 = @"com.apple.bko.application_submit";
  v16 = @"com.apple.bko.id_update";
  v17 = sub_246189598(sub_24617038C, (&v123 - 4), inited);
  swift_setDeallocating();
  type metadata accessor for ODIServiceProviderId(0);
  v18 = swift_arrayDestroy();
  if (v17)
  {
    v11 = "Zone,\n    priority: 2\n  }\n]";
    v10 = 0xD000000000000915;
    goto LABEL_16;
  }

  if (qword_281391898 != -1)
  {
    v18 = swift_once();
  }

  v130 = a1;
  MEMORY[0x28223BE20](v18);
  *(&v123 - 2) = &v130;
  v20 = sub_246189598(sub_24617038C, (&v123 - 4), v19);
  if (v20)
  {
    v11 = "1,\n    privileged: true\n  }\n]";
    v10 = 0xD00000000000080ELL;
LABEL_16:
    v23 = sub_24619EDCC();
    v24 = *(v23 + 48);
    v25 = *(v23 + 52);
    swift_allocObject();
    sub_24619EDBC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F900, &qword_2461A0F58);
    v26 = sub_24616EDF4(v10, v11 | 0x8000000000000000);
    v28 = v27;
    sub_246170104();
    sub_24619EDAC();
    sub_2461701E0(v26, v28);

    return v130;
  }

  if (qword_2813918B8 != -1)
  {
    v20 = swift_once();
  }

  v130 = a1;
  MEMORY[0x28223BE20](v20);
  *(&v123 - 2) = &v130;
  v22 = sub_246189598(sub_24617038C, (&v123 - 4), v21);
  v11 = "privileged: null\n  }\n]";
  v10 = 0xD0000000000005AFLL;
  if (v22)
  {
    goto LABEL_16;
  }

  if (qword_27EE3F798 != -1)
  {
    v22 = swift_once();
  }

  v130 = a1;
  MEMORY[0x28223BE20](v22);
  *(&v123 - 2) = &v130;
  v31 = sub_246189598(sub_24617038C, (&v123 - 4), v30);
  if (v31)
  {
    goto LABEL_16;
  }

  if (qword_2813918B0 != -1)
  {
    v31 = swift_once();
  }

  v130 = a1;
  MEMORY[0x28223BE20](v31);
  *(&v123 - 2) = &v130;
  if (sub_246189598(sub_24617038C, (&v123 - 4), v32))
  {
    v11 = "s,\n    priority: 2\n  }\n]";
    v10 = 0xD000000000000628;
    goto LABEL_16;
  }

  v33 = sub_24619F8BC();
  v35 = v34;
  v37 = sub_24619F8BC();
  v38 = v33;
  v11 = "eZone,\n    priority: 2\n  }\n]";
  v10 = 0xD0000000000004EBLL;
  if (v38 == v37 && v35 == v36)
  {
    goto LABEL_31;
  }

  LODWORD(v124) = sub_24619FBFC();

  if (v124)
  {
    goto LABEL_16;
  }

  v39 = sub_24619F8BC();
  v41 = v40;
  v43 = sub_24619F8BC();
  v44 = v39;
  v45 = v41;
  v11 = "e,\n    priority: 2\n  }\n]";
  v10 = 0xD00000000000045FLL;
  if (v44 == v43 && v45 == v42)
  {
    goto LABEL_31;
  }

  LODWORD(v124) = sub_24619FBFC();

  if (v124)
  {
    goto LABEL_16;
  }

  v46 = sub_24619F8BC();
  v48 = v47;
  if (v46 == sub_24619F8BC() && v48 == v49)
  {
    goto LABEL_31;
  }

  LODWORD(v124) = sub_24619FBFC();

  if (v124)
  {
    goto LABEL_16;
  }

  v50 = sub_24619F8BC();
  v52 = v51;
  if (v50 == sub_24619F8BC() && v52 == v53)
  {
    goto LABEL_31;
  }

  LODWORD(v124) = sub_24619FBFC();

  if (v124)
  {
    goto LABEL_16;
  }

  v54 = sub_24619F8BC();
  v56 = v55;
  if (v54 == sub_24619F8BC() && v56 == v57)
  {
    goto LABEL_31;
  }

  v58 = sub_24619FBFC();

  if (v58)
  {
    goto LABEL_16;
  }

  v59 = sub_24619F8BC();
  v124 = v60;
  if (v59 == sub_24619F8BC() && v124 == v61)
  {
    goto LABEL_31;
  }

  v62 = sub_24619FBFC();

  if (v62)
  {
    goto LABEL_16;
  }

  v63 = sub_24619F8BC();
  v124 = v64;
  if (v63 == sub_24619F8BC() && v124 == v65)
  {
    goto LABEL_31;
  }

  v66 = sub_24619FBFC();

  if (v66)
  {
    goto LABEL_16;
  }

  v67 = sub_24619F8BC();
  v124 = v68;
  if (v67 == sub_24619F8BC() && v124 == v69)
  {
    goto LABEL_31;
  }

  v70 = sub_24619FBFC();

  if (v70)
  {
    goto LABEL_16;
  }

  v71 = sub_24619F8BC();
  v124 = v72;
  v11 = "   privileged: true\n  }\n]";
  v10 = 0xD00000000000072BLL;
  if (v71 == sub_24619F8BC() && v124 == v73)
  {
    goto LABEL_31;
  }

  v74 = sub_24619FBFC();

  if (v74)
  {
    goto LABEL_16;
  }

  v75 = sub_24619F8BC();
  v124 = v76;
  v11 = "ileged: true\n    }\n]";
  v10 = 0xD0000000000002DBLL;
  if (v75 == sub_24619F8BC() && v124 == v77)
  {
LABEL_31:

    goto LABEL_16;
  }

  v78 = sub_24619FBFC();

  if (v78)
  {
    goto LABEL_16;
  }

  v79 = sub_24619F8BC();
  v124 = v80;
  v11 = ",\n        priority: 2\n    }\n]";
  if (v79 == sub_24619F8BC() && v124 == v81)
  {
LABEL_60:
    v10 = 0xD000000000000635;
    goto LABEL_31;
  }

  v82 = sub_24619FBFC();

  if (v82)
  {
    goto LABEL_89;
  }

  v83 = sub_24619F8BC();
  v124 = v84;
  if (v83 == sub_24619F8BC() && v124 == v85)
  {
    goto LABEL_60;
  }

  v86 = sub_24619FBFC();

  if (v86)
  {
    goto LABEL_89;
  }

  v87 = sub_24619F8BC();
  v124 = v88;
  if (v87 == sub_24619F8BC() && v124 == v89)
  {
    goto LABEL_60;
  }

  v90 = sub_24619FBFC();

  if (v90)
  {
    goto LABEL_89;
  }

  v91 = sub_24619F8BC();
  v124 = v92;
  if (v91 == sub_24619F8BC() && v124 == v93)
  {
    goto LABEL_60;
  }

  v94 = sub_24619FBFC();

  if (v94)
  {
    goto LABEL_89;
  }

  v95 = sub_24619F8BC();
  v124 = v96;
  if (v95 == sub_24619F8BC() && v124 == v97)
  {
    goto LABEL_60;
  }

  v98 = sub_24619FBFC();

  if (v98)
  {
    goto LABEL_89;
  }

  v99 = sub_24619F8BC();
  v124 = v100;
  if (v99 == sub_24619F8BC() && v124 == v101)
  {
    goto LABEL_60;
  }

  v102 = sub_24619FBFC();

  if (v102)
  {
    goto LABEL_89;
  }

  v103 = sub_24619F8BC();
  v124 = v104;
  if (v103 == sub_24619F8BC() && v124 == v105)
  {
    goto LABEL_60;
  }

  v106 = sub_24619FBFC();

  if (v106)
  {
    goto LABEL_89;
  }

  v107 = sub_24619F8BC();
  v124 = v108;
  if (v107 == sub_24619F8BC() && v124 == v109)
  {
    goto LABEL_60;
  }

  v110 = sub_24619FBFC();

  if (v110)
  {
    goto LABEL_89;
  }

  v111 = sub_24619F8BC();
  v124 = v112;
  if (v111 == sub_24619F8BC() && v124 == v113)
  {
    goto LABEL_60;
  }

  v114 = sub_24619FBFC();

  if (v114)
  {
    goto LABEL_89;
  }

  v115 = sub_24619F8BC();
  v124 = v116;
  if (v115 == sub_24619F8BC() && v124 == v117)
  {
    goto LABEL_60;
  }

  v118 = sub_24619FBFC();

  if (v118)
  {
LABEL_89:
    v10 = 0xD000000000000635;
    goto LABEL_16;
  }

  v119 = sub_24619F8BC();
  v124 = v120;
  v11 = "com.apple.bko.all";
  v10 = 0xD00000000000084FLL;
  if (v119 == sub_24619F8BC() && v124 == v121)
  {
    goto LABEL_31;
  }

  v122 = sub_24619FBFC();

  if (v122)
  {
    goto LABEL_16;
  }

  return MEMORY[0x277D84F90];
}