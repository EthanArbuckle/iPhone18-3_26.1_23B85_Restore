uint64_t sub_2224A6A70(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2224A6AA8()
{
  result = type metadata accessor for Connection.State(319);
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

uint64_t sub_2224A6BD8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2224A6C2C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_2224A6C74(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for Connection.PaginationOptions.PageSize(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Connection.PaginationOptions(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
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

  *(result + 9) = v3;
  return result;
}

uint64_t storeEnumTagSinglePayload for Connection.PaginationOptions.PageSize(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_2224A6D6C(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2224A6D8C(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_2224A6E18()
{
  v0 = sub_2224B4398();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

unint64_t sub_2224A6EB8(uint64_t a1)
{
  result = sub_2224A6EE0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2224A6EE0()
{
  result = qword_27D00E420;
  if (!qword_27D00E420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D00E420);
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

uint64_t sub_2224A703C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2224A70C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2224A7124(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2224A71BC(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, unint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = *(v4 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a4(a1, v4 + v7, v8);
}

uint64_t sub_2224A7358(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_2224B4398() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 47) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = (v1 + v8);
  v13 = *v12;
  v14 = v12[1];
  v15 = *(v1 + v9);
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_222495F0C;

  return sub_222488880(a1, v10, v11, v1 + v6, v1 + v7, v13, v14);
}

uint64_t sub_2224A74B0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2224A797C;

  return sub_2224A58F8(a1, v5);
}

uint64_t sub_2224A7568(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_222495F0C;

  return sub_2224A58F8(a1, v5);
}

uint64_t sub_2224A7660(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_2224A76C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroyTm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v7 + 8, v5 | 7);
}

uint64_t sub_2224A77C8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_2224A7810(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2224A7878(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
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

uint64_t sub_2224A7984()
{
  v0 = sub_2224B4628();
  __swift_allocate_value_buffer(v0, qword_28130A580);
  v1 = __swift_project_value_buffer(v0, qword_28130A580);
  if (qword_28130A458 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_28130A730);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_2224A7A4C()
{
  v0 = sub_2224B4608();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2224B46D8();
  __swift_allocate_value_buffer(v5, qword_28130A5A0);
  __swift_project_value_buffer(v5, qword_28130A5A0);
  if (qword_28130A450 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_28130A718);
  (*(v1 + 16))(v4, v6, v0);
  sub_2224B45F8();
  (*(v1 + 8))(v4, v0);
  return sub_2224B46C8();
}

uint64_t sub_2224A7BCC()
{
  v0 = type metadata accessor for DaemonSessionImplementation();
  swift_allocObject();
  result = sub_2224A8114();
  qword_28130A760 = v0;
  unk_28130A768 = &off_2835ABEC8;
  qword_28130A748 = result;
  return result;
}

uint64_t sub_2224A7C1C()
{
  v2 = v0;
  v3 = sub_2224B4758();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = sub_2224B4128();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  if (*(v0 + 112))
  {
    v7 = *(v0 + 112);
LABEL_3:

    return v7;
  }

  if (qword_28130A578 != -1)
  {
    swift_once();
  }

  v8 = sub_2224B4628();
  __swift_project_value_buffer(v8, qword_28130A580);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E330, &qword_2224B5088);
  v9 = *(sub_2224B4148() - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  *(swift_allocObject() + 16) = xmmword_2224B5060;
  sub_2224B4118();
  sub_2224B4108();
  v12 = sub_2224B4518();
  v18[3] = MEMORY[0x277D837D0];
  v18[0] = v12;
  v18[1] = v13;
  sub_2224B40F8();
  sub_2224A866C(v18);
  sub_2224B4108();
  sub_2224B4138();
  sub_2224B4568();

  v7 = sub_2224B4778();
  sub_2224B4518();
  v14 = *(v2 + 120);

  sub_2224B4748();
  v15 = sub_2224B4738();
  if (!v1)
  {
    v7 = v15;
    v17 = *(v2 + 112);
    *(v2 + 112) = v15;

    goto LABEL_3;
  }

  return v7;
}

uint64_t sub_2224A7EEC(uint64_t a1)
{
  v3 = sub_2224B4128();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  if (qword_28130A578 != -1)
  {
    swift_once();
  }

  v5 = sub_2224B4628();
  __swift_project_value_buffer(v5, qword_28130A580);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E330, &qword_2224B5088);
  v6 = *(sub_2224B4148() - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  *(swift_allocObject() + 16) = xmmword_2224B5060;
  sub_2224B4118();
  sub_2224B4108();
  v9 = sub_2224B4788();
  v13[3] = v9;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v13);
  (*(*(v9 - 8) + 16))(boxed_opaque_existential_1Tm, a1, v9);
  sub_2224B40F8();
  sub_2224A866C(v13);
  sub_2224B4108();
  sub_2224B4138();
  sub_2224B4588();

  v11 = *(v1 + 112);
  *(v1 + 112) = 0;
}

uint64_t sub_2224A8114()
{
  v1 = sub_2224B48F8();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v3 = sub_2224B47A8();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = sub_2224B4908();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  sub_2224A86D8();
  (*(v6 + 104))(v9, *MEMORY[0x277D85268], v5);
  sub_2224B4798();
  v11[1] = MEMORY[0x277D84F90];
  sub_2224A8724();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E580, &qword_2224B56B8);
  sub_2224A877C();
  sub_2224B4968();
  *(v0 + 120) = sub_2224B4918();
  return v0;
}

uint64_t sub_2224A832C()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t sub_2224A8390(const char *a1, uint64_t a2, int a3)
{
  v21 = a3;
  v4 = sub_2224B46E8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2224B46A8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28130A598 != -1)
  {
    swift_once();
  }

  v14 = sub_2224B46D8();
  __swift_project_value_buffer(v14, qword_28130A5A0);
  v15 = sub_2224B46B8();
  sub_2224B46F8();
  v20 = sub_2224B4928();
  result = sub_2224B4948();
  if ((result & 1) == 0)
  {
    goto LABEL_15;
  }

  if ((v21 & 1) == 0)
  {
    if (a1)
    {
LABEL_11:

      sub_2224B4728();

      if ((*(v5 + 88))(v8, v4) == *MEMORY[0x277D85B00])
      {
        v17 = "[Error] Interval already ended";
      }

      else
      {
        (*(v5 + 8))(v8, v4);
        v17 = "";
      }

      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = sub_2224B4688();
      _os_signpost_emit_with_name_impl(&dword_222484000, v15, v20, v19, a1, v17, v18, 2u);
      MEMORY[0x223DB7C20](v18, -1, -1);
LABEL_15:

      return (*(v10 + 8))(v13, v9);
    }

    __break(1u);
  }

  if (a1 >> 32)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 <= 0x10)
    {
      a1 = &v22;
      goto LABEL_11;
    }

    goto LABEL_17;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_2224A866C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E338, &qword_2224B5090);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2224A86D8()
{
  result = qword_28130A418;
  if (!qword_28130A418)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28130A418);
  }

  return result;
}

unint64_t sub_2224A8724()
{
  result = qword_28130A420;
  if (!qword_28130A420)
  {
    sub_2224B48F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28130A420);
  }

  return result;
}

unint64_t sub_2224A877C()
{
  result = qword_28130A428;
  if (!qword_28130A428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D00E580, &qword_2224B56B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28130A428);
  }

  return result;
}

uint64_t static OnDeviceStorageError.clientError(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2224B41F8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2224B4198();
  sub_2224A89AC(&qword_27D00E328, MEMORY[0x277D37778]);
  v10 = swift_allocError();
  (*(*(v9 - 8) + 16))(v11, a1, v9);
  MEMORY[0x223DB7AE0](v10);
  sub_2224B4208();
  *a2 = sub_2224B41E8();
  *(a2 + 32) = v4;
  *(a2 + 40) = sub_2224A89AC(qword_28130A348, MEMORY[0x277D37790]);
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((a2 + 8));
  (*(v5 + 32))(boxed_opaque_existential_1Tm, v8, v4);
  result = MEMORY[0x223DB7AD0](v10);
  *(a2 + 48) = 7;
  return result;
}

uint64_t sub_2224A89AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s15OnDeviceStorage04withabC5ErroryxxyKXEAA0abcE0OYKlF(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_2224B41F8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = a1(v10);
  if (v4)
  {
    MEMORY[0x223DB7AE0](v4);
    sub_2224B4208();
    *a4 = sub_2224B41E8();
    *(a4 + 32) = v7;
    *(a4 + 40) = sub_2224A89AC(qword_28130A348, MEMORY[0x277D37790]);
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((a4 + 8));
    (*(v8 + 32))(boxed_opaque_existential_1Tm, v12, v7);
    *(a4 + 48) = 7;
    sub_222485F68();
    swift_willThrowTypedImpl();
    return MEMORY[0x223DB7AD0](v4);
  }

  return result;
}

uint64_t _s15OnDeviceStorage04withabC5ErroryxxyYaYbKXEYaAA0abcE0OYKlF(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a5;
  v8 = sub_2224B41F8();
  v5[3] = v8;
  v9 = *(v8 - 8);
  v5[4] = v9;
  v10 = *(v9 + 64) + 15;
  v5[5] = swift_task_alloc();
  v14 = (a2 + *a2);
  v11 = a2[1];
  v12 = swift_task_alloc();
  v5[6] = v12;
  *v12 = v5;
  v12[1] = sub_2224A8CD8;

  return v14(a1);
}

uint64_t sub_2224A8CD8()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2224A8E14, 0, 0);
  }

  else
  {
    v4 = v3[5];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_2224A8E14()
{
  v1 = v0[7];
  v3 = v0[4];
  v2 = v0[5];
  v5 = v0[2];
  v4 = v0[3];
  MEMORY[0x223DB7AE0](v1);
  sub_2224B4208();
  *v5 = sub_2224B41E8();
  *(v5 + 32) = v4;
  *(v5 + 40) = sub_2224A89AC(qword_28130A348, MEMORY[0x277D37790]);
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v5 + 8));
  (*(v3 + 32))(boxed_opaque_existential_1Tm, v2, v4);
  *(v5 + 48) = 7;
  sub_222485F68();
  swift_willThrowTypedImpl();
  MEMORY[0x223DB7AD0](v1);

  v7 = v0[1];

  return v7();
}

uint64_t OnDeviceStorageError.errorCode.getter()
{
  v1 = v0;
  v2 = sub_2224B4648();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2224A6F34(v1, &v10);
  if (v12 == 7)
  {
    v7 = v10;
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
  }

  else
  {
    (*(v3 + 104))(v6, *MEMORY[0x277D37910], v2);
    v7 = sub_2224B4638();
    (*(v3 + 8))(v6, v2);
    sub_2224A6F90(&v10);
  }

  return v7;
}

unint64_t OnDeviceStorageError.errorUserInfo.getter()
{
  v1 = v0;
  v2 = sub_2224A9E04(MEMORY[0x277D84F90]);
  sub_2224A6F34(v0, &v40);
  v3 = MEMORY[0x277D837D0];
  if (v42 != 7)
  {
    v6 = 0x80000002224B60B0;
    sub_2224A6F90(&v40);
    v4 = 0xD00000000000007ALL;
    goto LABEL_5;
  }

  sub_222485948((&v40 + 8), v37);
  __swift_project_boxed_opaque_existential_1(v37, v38);
  v4 = sub_2224B4088();
  v6 = v5;
  __swift_destroy_boxed_opaque_existential_1Tm(v37);
  if (v6)
  {
LABEL_5:
    v7 = *MEMORY[0x277CCA450];
    v8 = sub_2224B47C8();
    v10 = v9;
    v41 = v3;
    *&v40 = v4;
    *(&v40 + 1) = v6;
    sub_2224A9F14(&v40, v37);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v39 = v2;
    sub_2224A9C48(v37, v8, v10, isUniquelyReferenced_nonNull_native);

    v2 = v39;
  }

  sub_2224A6F34(v1, &v40);
  if (v42 == 7)
  {
    sub_222485948((&v40 + 8), v37);
    __swift_project_boxed_opaque_existential_1(v37, v38);
    v12 = sub_2224B4078();
    v14 = v13;
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    if (v14)
    {
      v15 = *MEMORY[0x277CCA470];
      v16 = sub_2224B47C8();
      v18 = v17;
      v41 = v3;
      *&v40 = v12;
      *(&v40 + 1) = v14;
      sub_2224A9F14(&v40, v37);
      v19 = swift_isUniquelyReferenced_nonNull_native();
      v39 = v2;
      sub_2224A9C48(v37, v16, v18, v19);

      v2 = v39;
    }
  }

  else
  {
    sub_2224A6F90(&v40);
  }

  sub_2224A6F34(v1, &v40);
  if (v42 == 7)
  {
    sub_222485948((&v40 + 8), v37);
    __swift_project_boxed_opaque_existential_1(v37, v38);
    v20 = sub_2224B4098();
    v22 = v21;
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    if (v22)
    {
      v23 = *MEMORY[0x277CCA498];
      v24 = sub_2224B47C8();
      v26 = v25;
      v41 = v3;
      *&v40 = v20;
      *(&v40 + 1) = v22;
      sub_2224A9F14(&v40, v37);
      v27 = swift_isUniquelyReferenced_nonNull_native();
      v39 = v2;
      sub_2224A9C48(v37, v24, v26, v27);

      v2 = v39;
    }
  }

  else
  {
    sub_2224A6F90(&v40);
  }

  sub_2224A6F34(v1, &v40);
  if (v42 == 7)
  {
    sub_222485948((&v40 + 8), v37);
    __swift_project_boxed_opaque_existential_1(v37, v38);
    v28 = sub_2224B4068();
    v30 = v29;
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    if (v30)
    {
      v31 = *MEMORY[0x277CCA278];
      v32 = sub_2224B47C8();
      v34 = v33;
      v41 = v3;
      *&v40 = v28;
      *(&v40 + 1) = v30;
      sub_2224A9F14(&v40, v37);
      v35 = swift_isUniquelyReferenced_nonNull_native();
      v39 = v2;
      sub_2224A9C48(v37, v32, v34, v35);

      return v39;
    }
  }

  else
  {
    sub_2224A6F90(&v40);
  }

  return v2;
}

unint64_t OnDeviceStorageError.errorDescription.getter()
{
  sub_2224A6F34(v0, v4);
  if (v6 == 7)
  {
    sub_222485948(&v5, v3);
    __swift_project_boxed_opaque_existential_1(v3, v3[3]);
    v1 = sub_2224B4088();
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
    return v1;
  }

  else
  {
    sub_2224A6F90(v4);
    return 0xD00000000000007ALL;
  }
}

uint64_t sub_2224A94E4(uint64_t (*a1)(uint64_t, uint64_t))
{
  sub_2224A6F34(v1, v10);
  if (v12 == 7)
  {
    sub_222485948(&v11, v7);
    v3 = v8;
    v4 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    v5 = a1(v3, v4);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    return v5;
  }

  else
  {
    sub_2224A6F90(v10);
    return 0;
  }
}

uint64_t OnDeviceStorageError.description.getter()
{
  sub_2224A6F34(v0, v10);
  if (v12 == 7)
  {
    sub_222485948(&v11, v8);
    v1 = v9;
    v2 = __swift_project_boxed_opaque_existential_1(v8, v9);
    v3 = *(*(v1 - 8) + 64);
    MEMORY[0x28223BE20](v2);
    (*(v5 + 16))(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    v6 = sub_2224B4808();
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
  }

  else
  {
    sub_2224A6F34(v0, v8);
    v6 = sub_2224A96E4(v8);
    sub_2224A6F90(v10);
  }

  return v6;
}

uint64_t sub_2224A96E4(uint64_t a1)
{
  sub_2224A6F34(a1, v11);
  if (v13 == 7)
  {
    sub_222485948(&v12, v9);
    v2 = v10;
    v3 = __swift_project_boxed_opaque_existential_1(v9, v10);
    v4 = *(*(v2 - 8) + 64);
    MEMORY[0x28223BE20](v3);
    (*(v6 + 16))(v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    v7 = sub_2224B4808();
    sub_2224A6F90(a1);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  else
  {
    sub_2224A6F34(a1, v9);
    v7 = sub_2224A96E4(v9);
    sub_2224A6F90(a1);
    sub_2224A6F90(v11);
  }

  return v7;
}

uint64_t OnDeviceStorageError.debugDescription.getter()
{
  sub_2224A6F34(v0, v10);
  if (v12 == 7)
  {
    sub_222485948(&v11, v8);
    v1 = v9;
    v2 = __swift_project_boxed_opaque_existential_1(v8, v9);
    v3 = *(*(v1 - 8) + 64);
    MEMORY[0x28223BE20](v2);
    (*(v5 + 16))(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    v6 = sub_2224B4818();
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
  }

  else
  {
    sub_2224A6F34(v0, v8);
    v6 = sub_2224B4818();
    sub_2224A6F90(v10);
  }

  return v6;
}

uint64_t sub_2224A99B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  sub_2224A6F34(v3, v12);
  if (v14 == 7)
  {
    sub_222485948(&v13, v9);
    v5 = v10;
    v6 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    v7 = a3(v5, v6);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    return v7;
  }

  else
  {
    sub_2224A6F90(v12);
    return 0;
  }
}

uint64_t sub_2224A9A8C()
{
  v1 = v0;
  v2 = sub_2224B4648();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2224A6F34(v1, &v10);
  if (v12 == 7)
  {
    v7 = v10;
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
  }

  else
  {
    (*(v3 + 104))(v6, *MEMORY[0x277D37910], v2);
    v7 = sub_2224B4638();
    (*(v3 + 8))(v6, v2);
    sub_2224A6F90(&v10);
  }

  return v7;
}

uint64_t sub_2224A9BC8(uint64_t a1)
{
  v2 = sub_2224AA010();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_2224A9C04(uint64_t a1)
{
  v2 = sub_2224AA010();

  return MEMORY[0x28211F4A8](a1, v2);
}

_OWORD *sub_2224A9C48(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2224AFB88(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_2224B0238();
      v11 = v19;
      goto LABEL_8;
    }

    sub_2224AFC00(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_2224AFB88(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_2224B4AB8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);

    return sub_2224A9F14(a1, v23);
  }

  else
  {
    sub_2224A9D98(v11, a2, a3, a1, v22);
  }
}

_OWORD *sub_2224A9D98(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_2224A9F14(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_2224A9E04(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E588, &qword_2224B5918);
    v3 = sub_2224B4A48();
    v4 = a1 + 32;

    while (1)
    {
      sub_2224AA064(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_2224AFB88(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_2224A9F14(&v15, (v3[7] + 32 * result));
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

_OWORD *sub_2224A9F14(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_2224A9F4C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 49))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 48);
  if (v3 >= 8)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2224A9F88(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 249;
    if (a3 >= 0xF9)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_2224A9FD8(uint64_t result, unsigned int a2)
{
  if (a2 > 7)
  {
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 8;
    LOBYTE(a2) = 8;
  }

  *(result + 48) = a2;
  return result;
}

unint64_t sub_2224AA010()
{
  result = qword_28130A410;
  if (!qword_28130A410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28130A410);
  }

  return result;
}

uint64_t sub_2224AA064(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E590, &qword_2224B5920);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2224AA0D8()
{
  v0 = sub_2224B4608();
  __swift_allocate_value_buffer(v0, qword_28130A718);
  __swift_project_value_buffer(v0, qword_28130A718);
  return sub_2224B45E8();
}

uint64_t sub_2224AA13C()
{
  v0 = sub_2224B4608();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20]();
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2224B4628();
  __swift_allocate_value_buffer(v5, qword_28130A730);
  __swift_project_value_buffer(v5, qword_28130A730);
  if (qword_28130A450 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_28130A718);
  (*(v1 + 16))(v4, v6, v0);
  return sub_2224B4618();
}

uint64_t sub_2224AA290()
{
  v0 = sub_2224B4608();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28130A450 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_28130A718);
  (*(v1 + 16))(v4, v5, v0);
  v11[3] = sub_2224B4628();
  v11[4] = MEMORY[0x277D37908];
  __swift_allocate_boxed_opaque_existential_1Tm(v11);
  sub_2224B4618();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E598, &qword_2224B5928);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  result = sub_2224B4B28();
  qword_27D00EB70 = result;
  return result;
}

uint64_t sub_2224AA3F8()
{
  v0 = sub_2224B4608();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28130A450 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_28130A718);
  (*(v1 + 16))(v4, v5, v0);
  v6 = sub_2224B45F8();
  v8 = v7;
  result = (*(v1 + 8))(v4, v0);
  qword_28130A438 = v6;
  unk_28130A440 = v8;
  return result;
}

uint64_t sub_2224AA530()
{
  v0 = sub_2224B46D8();
  __swift_allocate_value_buffer(v0, qword_28130A700);
  __swift_project_value_buffer(v0, qword_28130A700);
  if (qword_28130A430 != -1)
  {
    swift_once();
  }

  return sub_2224B46C8();
}

uint64_t DictionaryUpsert.init(_:_:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_222485948(a1, a3);
  *(a3 + 40) = a2;
  return result;
}

id DictionaryUpsert.description.getter()
{
  v29[3] = *MEMORY[0x277D85DE8];
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E5A0, &unk_2224B5930);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v29 - v4;
  v6 = sub_2224B47F8();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = objc_opt_self();
  v9 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E380, &qword_2224B5148);
  v10 = sub_2224B4868();
  v29[0] = 0;
  v11 = [v8 dataWithJSONObject:v10 options:0 error:v29];

  v12 = v29[0];
  if (!v11)
  {
    v18 = 0x64696C61766E693CLL;
    v20 = v12;
    v21 = sub_2224B40A8();

    swift_willThrow();
    MEMORY[0x223DB7AD0](v21);
LABEL_6:
    v19 = 0xEE003E6174616420;
    goto LABEL_7;
  }

  v13 = sub_2224B40B8();
  v15 = v14;

  sub_2224B47E8();
  v16 = sub_2224B47D8();
  if (!v17)
  {
    v18 = 0x64696C61766E693CLL;
    sub_2224AF5BC(v13, v15);
    goto LABEL_6;
  }

  v18 = v16;
  v19 = v17;
  sub_2224AF5BC(v13, v15);
LABEL_7:
  v22 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  v23 = *(v22 + 8);
  sub_2224B41A8();
  sub_2224A77C8(&qword_27D00E5A8, &qword_27D00E5A0, &unk_2224B5930);
  v24 = sub_2224B4328();
  v26 = v25;
  (*(v2 + 8))(v5, v1);
  v29[0] = v24;
  v29[1] = v26;
  MEMORY[0x223DB7580](171719690, 0xE400000000000000);
  MEMORY[0x223DB7580](v18, v19);

  result = v29[0];
  v28 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2224AA918@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v205 = a3;
  v204 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E5B0, &qword_2224B59B8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v218 = &v201 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E5B8, &unk_2224B59C0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v219 = &v201 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v222 = &v201 - v13;
  v224 = sub_2224B40C8();
  v214 = *(v224 - 8);
  v14 = *(v214 + 64);
  MEMORY[0x28223BE20](v224);
  v221 = &v201 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2224B4128();
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v211 = &v201 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v212 = &v201 - v20;
  v238 = sub_2224B4418();
  v236 = *(v238 - 8);
  v21 = *(v236 + 64);
  v22 = MEMORY[0x28223BE20](v238);
  v223 = &v201 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v234 = &v201 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v233 = &v201 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v237 = &v201 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v228 = &v201 - v31;
  MEMORY[0x28223BE20](v30);
  v229 = (&v201 - v32);
  v217 = sub_2224B4358();
  v216 = *(v217 - 8);
  v33 = *(v216 + 64);
  v34 = MEMORY[0x28223BE20](v217);
  v207 = &v201 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v232 = (&v201 - v36);
  v210 = sub_2224B4438();
  v215 = *(v210 - 8);
  v37 = *(v215 + 64);
  v38 = MEMORY[0x28223BE20](v210);
  v206 = &v201 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v41 = &v201 - v40;
  v42 = sub_2224B4448();
  v43 = *(v42 - 8);
  v44 = *(v43 + 64);
  v45 = MEMORY[0x28223BE20](v42);
  v209 = &v201 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v48 = &v201 - v47;
  v208 = a2;
  sub_2224B4348();
  v49 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2224B4678();
  if (!v50)
  {
    v57 = sub_2224B4198();
    sub_2224B4020(&qword_27D00E328, MEMORY[0x277D37778]);
    swift_allocError();
    v59 = v58;
    v60 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    *v59 = sub_2224B4668();
    v59[1] = v61;
    (*(*(v57 - 8) + 104))(v59, *MEMORY[0x277D37768], v57);
    swift_willThrow();
    return (*(v43 + 8))(v48, v42);
  }

  v220 = v43;
  v213 = v42;
  v51 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2224B4668();
  v52 = v235;
  v53 = v232;
  sub_2224B43C8();
  if (v52)
  {

    sub_2224B4020(&qword_27D00E5C0, MEMORY[0x277D37848]);
    v54 = v217;
    swift_allocError();
    (*(v216 + 32))(v55, v53, v54);
    return (*(v220 + 8))(v48, v213);
  }

  v235 = 0;
  v201 = v48;

  v62 = sub_2224B4428();
  v63 = *(v62 + 16);
  v202 = a1;
  v203 = v41;
  if (v63)
  {
    v245 = MEMORY[0x277D84F90];
    sub_2224B05D0(0, v63, 0);
    v64 = v245;
    v231 = *(v236 + 16);
    v65 = (*(v236 + 80) + 32) & ~*(v236 + 80);
    v227 = v62;
    v66 = v62 + v65;
    v230 = *(v236 + 72);
    v232 = (v236 + 16);
    v43 = v236 + 8;
    do
    {
      v68 = v237;
      v67 = v238;
      (v231)(v237, v66, v238);
      v69 = sub_2224B43F8();
      v53 = v70;
      (*v43)(v68, v67);
      v245 = v64;
      v72 = *(v64 + 16);
      v71 = *(v64 + 24);
      if (v72 >= v71 >> 1)
      {
        sub_2224B05D0((v71 > 1), v72 + 1, 1);
        v64 = v245;
      }

      *(v64 + 16) = v72 + 1;
      v73 = v64 + 16 * v72;
      *(v73 + 32) = v69;
      *(v73 + 40) = v53;
      v66 += v230;
      --v63;
    }

    while (v63);
    v232 = v64;
  }

  else
  {

    v232 = MEMORY[0x277D84F90];
  }

  v74 = sub_2224B4428();
  v75 = v74;
  v76 = *(v74 + 16);
  v77 = MEMORY[0x277D84F90];
  v78 = v238;
  v79 = v229;
  if (v76)
  {
    v80 = 0;
    v63 = v236 + 16;
    v231 = v236 + 32;
    v225 = (v236 + 8);
    v230 = v74;
    v227 = v76;
    v226 = v236 + 16;
    while (v80 < *(v75 + 16))
    {
      v43 = (*(v236 + 80) + 32) & ~*(v236 + 80);
      v53 = *(v236 + 72);
      (*(v236 + 16))(v79, v75 + v43 + v53 * v80, v78);
      if (sub_2224B43D8())
      {
        (*v225)(v79, v78);
      }

      else
      {
        v81 = *v231;
        (*v231)(v234, v79, v78);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v245 = v77;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2224B05B0(0, *(v77 + 16) + 1, 1);
          v77 = v245;
        }

        v84 = *(v77 + 16);
        v83 = *(v77 + 24);
        if (v84 >= v83 >> 1)
        {
          sub_2224B05B0(v83 > 1, v84 + 1, 1);
          v77 = v245;
        }

        *(v77 + 16) = v84 + 1;
        v81(v77 + v43 + v84 * v53, v234, v78);
        v79 = v229;
        v75 = v230;
        v76 = v227;
        v63 = v226;
      }

      if (v76 == ++v80)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
    goto LABEL_101;
  }

LABEL_23:

  v85 = *(v77 + 16);
  if (v85)
  {
    v245 = MEMORY[0x277D84F90];
    sub_2224B05D0(0, v85, 0);
    v86 = v245;
    v231 = *(v236 + 16);
    v87 = (*(v236 + 80) + 32) & ~*(v236 + 80);
    v229 = v77;
    v63 = v77 + v87;
    v230 = *(v236 + 72);
    v234 = (v236 + 16);
    v43 = v236 + 8;
    do
    {
      v88 = v237;
      (v231)(v237, v63, v78);
      v89 = sub_2224B43F8();
      v91 = v90;
      (*v43)(v88, v78);
      v245 = v86;
      v93 = *(v86 + 16);
      v92 = *(v86 + 24);
      if (v93 >= v92 >> 1)
      {
        sub_2224B05D0((v92 > 1), v93 + 1, 1);
        v86 = v245;
      }

      *(v86 + 16) = v93 + 1;
      v94 = v86 + 16 * v93;
      *(v94 + 32) = v89;
      *(v94 + 40) = v91;
      v63 += v230;
      --v85;
      v78 = v238;
    }

    while (v85);
  }

  else
  {

    v86 = MEMORY[0x277D84F90];
  }

  v227 = sub_2224B33E0(v86);

  v95 = sub_2224B4428();
  v75 = *(v95 + 16);
  v96 = MEMORY[0x277D84F90];
  v79 = v228;
  if (v75)
  {
    v53 = 0;
    v80 = v236 + 16;
    v229 = (v236 + 8);
    v234 = (v236 + 32);
    v231 = v75;
    v230 = v236 + 16;
    while (v53 < *(v95 + 16))
    {
      v43 = (*(v236 + 80) + 32) & ~*(v236 + 80);
      v63 = *(v236 + 72);
      (*(v236 + 16))(v79, v95 + v43 + v63 * v53, v78);
      if (sub_2224B43D8())
      {
        v97 = *v234;
        (*v234)(v233, v79, v78);
        v98 = swift_isUniquelyReferenced_nonNull_native();
        v245 = v96;
        if ((v98 & 1) == 0)
        {
          sub_2224B05B0(0, *(v96 + 16) + 1, 1);
          v96 = v245;
        }

        v100 = *(v96 + 16);
        v99 = *(v96 + 24);
        if (v100 >= v99 >> 1)
        {
          sub_2224B05B0(v99 > 1, v100 + 1, 1);
          v96 = v245;
        }

        *(v96 + 16) = v100 + 1;
        v101 = v96 + v43 + v100 * v63;
        v78 = v238;
        v97(v101, v233, v238);
        v79 = v228;
        v75 = v231;
        v80 = v230;
      }

      else
      {
        (*v229)(v79, v78);
      }

      if (v75 == ++v53)
      {
        goto LABEL_41;
      }
    }

LABEL_101:
    __break(1u);
LABEL_102:
    swift_once();
    goto LABEL_57;
  }

LABEL_41:

  v102 = *(v96 + 16);
  if (v102)
  {
    v245 = MEMORY[0x277D84F90];
    sub_2224B05D0(0, v102, 0);
    v103 = v245;
    v233 = *(v236 + 16);
    v104 = (*(v236 + 80) + 32) & ~*(v236 + 80);
    v230 = v96;
    v105 = v96 + v104;
    v231 = *(v236 + 72);
    v234 = (v236 + 16);
    v106 = (v236 + 8);
    do
    {
      v108 = v237;
      v107 = v238;
      (v233)(v237, v105, v238);
      v109 = sub_2224B43F8();
      v111 = v110;
      (*v106)(v108, v107);
      v245 = v103;
      v113 = *(v103 + 16);
      v112 = *(v103 + 24);
      if (v113 >= v112 >> 1)
      {
        sub_2224B05D0((v112 > 1), v113 + 1, 1);
        v103 = v245;
      }

      *(v103 + 16) = v113 + 1;
      v114 = v103 + 16 * v113;
      *(v114 + 32) = v109;
      *(v114 + 40) = v111;
      v105 += v231;
      --v102;
    }

    while (v102);
  }

  else
  {

    v103 = MEMORY[0x277D84F90];
  }

  v115 = v202;
  v63 = sub_2224B33E0(v103);

  v248 = MEMORY[0x277D84FA0];
  v116 = v115[5];
  v117 = *(v116 + 16);
  if (v117)
  {
    v245 = MEMORY[0x277D84F90];
    v118 = v232;

    sub_2224B0590(0, v117, 0);
    v78 = v245;
    v119 = (v116 + 32);
    do
    {
      v120 = *v119;

      v122 = v235;
      v123 = sub_2224B3760(v121, v118, &v248);
      v235 = v122;

      v245 = v78;
      v125 = *(v78 + 16);
      v124 = *(v78 + 24);
      if (v125 >= v124 >> 1)
      {
        sub_2224B0590((v124 > 1), v125 + 1, 1);
        v78 = v245;
      }

      *(v78 + 16) = v125 + 1;
      *(v78 + 8 * v125 + 32) = v123;
      ++v119;
      --v117;
      v118 = v232;
    }

    while (v117);
    swift_bridgeObjectRelease_n();
  }

  else
  {

    v78 = MEMORY[0x277D84F90];
  }

  v43 = 0xD00000000000002BLL;
  v75 = v248;
  v126 = *(v248 + 2);
  v79 = 0x27D00E000uLL;
  v80 = &loc_2224B5000;
  v53 = MEMORY[0x277D837D0];
  v234 = v248;
  if (!v126)
  {
    v133 = MEMORY[0x277D84FA0];
    goto LABEL_64;
  }

  if (qword_27D00E320 != -1)
  {
    goto LABEL_102;
  }

LABEL_57:
  v127 = *(v79 + 2928);
  sub_2224B4B38();
  v233 = v247;
  v237 = v246;
  v232 = __swift_project_boxed_opaque_existential_1(&v245, v246);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E330, &qword_2224B5088);
  v128 = *(sub_2224B4148() - 8);
  v129 = *(v128 + 72);
  v231 = (*(v128 + 80) + 32) & ~*(v128 + 80);
  *(swift_allocObject() + 16) = *(v80 + 96);
  sub_2224B4118();
  sub_2224B4108();
  v130 = *(v75 + 16);
  if (v130)
  {
    v230 = v63;
    v131 = sub_2224AF6C8(v130, 0);
    v132 = sub_2224B3288(&v242, v131 + 4, v130, v75);

    sub_2224859CC();
    if (v132 != v130)
    {
      __break(1u);
LABEL_104:
      __break(1u);
      goto LABEL_105;
    }

    v43 = 0xD00000000000002BLL;
    v53 = MEMORY[0x277D837D0];
    v63 = v230;
  }

  else
  {
    v131 = MEMORY[0x277D84F90];
  }

  v242 = v131;
  v134 = v235;
  sub_2224B0EE4(&v242);
  v235 = v134;
  if (v134)
  {
LABEL_105:
    v200 = v235;
LABEL_107:
    MEMORY[0x223DB7AD0](v200);

    __break(1u);
    return result;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E5C8, &unk_2224B59D0);
  sub_2224A77C8(&qword_27D00E5D0, &qword_27D00E5C8, &unk_2224B59D0);
  v135 = sub_2224B47B8();
  v137 = v136;

  v244 = v53;
  v242 = v135;
  v243 = v137;
  sub_2224B40F8();
  sub_2224A7878(&v242, &qword_27D00E338, &qword_2224B5090);
  sub_2224B4108();
  sub_2224B4138();
  sub_2224B4598();

  __swift_destroy_boxed_opaque_existential_1Tm(&v245);
  v133 = MEMORY[0x277D84FA0];
LABEL_64:
  v240 = v133;
  v241 = v133;
  v239 = 0;
  v138 = v227;

  v139 = v235;
  v140 = sub_2224B392C(v78, v138, &v241, &v239, v63, &v240);
  v141 = v139;

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  v142 = v239;
  v230 = v140;
  if (v239 < 1)
  {
    v237 = v139;
    v143 = v213;
    v144 = v203;
    goto LABEL_74;
  }

  v143 = v213;
  v144 = v203;
  if (qword_27D00E320 != -1)
  {
    swift_once();
  }

  sub_2224B4B38();
  v233 = v247;
  v235 = v246;
  v232 = __swift_project_boxed_opaque_existential_1(&v245, v246);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E330, &qword_2224B5088);
  v145 = *(sub_2224B4148() - 8);
  v146 = *(v145 + 72);
  v231 = (*(v145 + 80) + 32) & ~*(v145 + 80);
  *(swift_allocObject() + 16) = xmmword_2224B5060;
  sub_2224B4118();
  sub_2224B4108();
  v244 = MEMORY[0x277D83B88];
  v242 = v142;
  sub_2224B40F8();
  sub_2224A7878(&v242, &qword_27D00E338, &qword_2224B5090);
  sub_2224B4108();
  v147 = v241;
  v148 = *(v241 + 16);
  if (v148)
  {
    v237 = v139;
    v149 = sub_2224AF6C8(v148, 0);
    v150 = sub_2224B3288(&v242, v149 + 4, v148, v147);

    sub_2224859CC();
    if (v150 == v148)
    {
      v143 = v213;
      v144 = v203;
      v140 = v230;
      v43 = 0xD00000000000002BLL;
      v141 = v237;
      goto LABEL_72;
    }

    goto LABEL_104;
  }

  v149 = MEMORY[0x277D84F90];
  v43 = 0xD00000000000002BLL;
LABEL_72:
  v242 = v149;
  sub_2224B0EE4(&v242);
  v237 = v141;
  if (v141)
  {
    v200 = v237;
    goto LABEL_107;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E5C8, &unk_2224B59D0);
  sub_2224A77C8(&qword_27D00E5D0, &qword_27D00E5C8, &unk_2224B59D0);
  v151 = sub_2224B47B8();
  v153 = v152;

  v244 = MEMORY[0x277D837D0];
  v242 = v151;
  v243 = v153;
  sub_2224B40F8();
  sub_2224A7878(&v242, &qword_27D00E338, &qword_2224B5090);
  sub_2224B4108();
  sub_2224B4138();
  sub_2224B4588();

  __swift_destroy_boxed_opaque_existential_1Tm(&v245);
LABEL_74:
  v154 = v220;
  v155 = v201;
  if (*(v140 + 16))
  {
    v156 = *(v215 + 8);
    v215 += 8;
    v156(v144, v210);
    v157 = *(v154 + 8);
    v157(v155, v143);

    v158 = v209;
    sub_2224B4348();
    v159 = v202;
    v160 = v202[4];
    __swift_project_boxed_opaque_existential_1(v202, v202[3]);
    sub_2224B4678();
    v220 = v154 + 8;
    if (v161)
    {
      v229 = v157;
      v162 = v159[4];
      __swift_project_boxed_opaque_existential_1(v159, v159[3]);
      sub_2224B4668();
      v163 = v206;
      v164 = v237;
      v165 = v207;
      sub_2224B43C8();
      if (v164)
      {

        sub_2224B4020(&qword_27D00E5C0, MEMORY[0x277D37848]);
        v166 = v217;
        swift_allocError();
        (*(v216 + 32))(v167, v165, v166);
        return v229(v158, v143);
      }

      else
      {
        v228 = 0;

        v175 = sub_2224B4428();
        v156(v163, v210);
        v176 = v175;
        v177 = *(v175 + 16);
        if (v177)
        {
          v235 = *(v236 + 16);
          v178 = (*(v236 + 80) + 32) & ~*(v236 + 80);
          v227 = v176;
          v179 = v176 + v178;
          v234 = (v236 + 8);
          v180 = *(v236 + 72);
          v232 = (v214 + 56);
          v233 = v180;
          v231 = v214 + 48;
          v236 += 16;
          v237 = (v214 + 32);
          v181 = MEMORY[0x277D84F90];
          v182 = v219;
          v183 = v224;
          v184 = v223;
          (v235)(v223, v176 + v178, v238);
          while (1)
          {
            if (sub_2224B43E8() & 1) != 0 || (sub_2224B4408())
            {
              v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E5D8, &qword_2224B59E0);
              sub_2224B43F8();
              v246 = v185;
              v247 = sub_2224A77C8(&qword_27D00E5E0, &qword_27D00E5D8, &qword_2224B59E0);
              __swift_allocate_boxed_opaque_existential_1Tm(&v245);
              sub_2224A77C8(&qword_27D00E5E8, &qword_27D00E5D8, &qword_2224B59E0);
              v184 = v223;
              v182 = v219;
              v183 = v224;
              sub_2224B4338();
              v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E5F0, &qword_2224B59E8);
              (*(*(v186 - 8) + 56))(v218, 1, 1, v186);
              sub_2224B40D8();
              (*v234)(v184, v238);
              v187 = 0;
            }

            else
            {
              (*v234)(v184, v238);
              v187 = 1;
            }

            (*v232)(v182, v187, 1, v183);
            v188 = v222;
            sub_2224B3EB4(v182, v222);
            if ((*v231)(v188, 1, v183) == 1)
            {
              sub_2224A7878(v188, &qword_27D00E5B8, &unk_2224B59C0);
            }

            else
            {
              v189 = *v237;
              (*v237)(v221, v188, v183);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v181 = sub_2224AF9AC(0, *(v181 + 2) + 1, 1, v181, &qword_27D00E5F8, &qword_2224B59F0, MEMORY[0x277D37730]);
              }

              v191 = *(v181 + 2);
              v190 = *(v181 + 3);
              if (v191 >= v190 >> 1)
              {
                v181 = sub_2224AF9AC(v190 > 1, v191 + 1, 1, v181, &qword_27D00E5F8, &qword_2224B59F0, MEMORY[0x277D37730]);
              }

              *(v181 + 2) = v191 + 1;
              v192 = &v181[((*(v214 + 80) + 32) & ~*(v214 + 80)) + *(v214 + 72) * v191];
              v183 = v224;
              v189(v192, v221, v224);
              v184 = v223;
            }

            v179 += v233;
            if (!--v177)
            {
              break;
            }

            (v235)(v184, v179, v238);
          }

          v193 = v213;
          v158 = v209;
        }

        else
        {

          v181 = MEMORY[0x277D84F90];
          v193 = v143;
        }

        v229(v158, v193);
        v194 = swift_allocObject();
        v195 = v205;
        *(v194 + 16) = v230;
        *(v194 + 24) = v195;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E648, &unk_2224B5A50);
        v196 = swift_allocObject();
        *(v196 + 16) = sub_2224B3FF8;
        *(v196 + 24) = v194;
        MEMORY[0x28223BE20](v196);
        *(&v201 - 2) = v202;
        *(&v201 - 1) = v181;
        v197 = v228;
        v198 = sub_2224ACA94(sub_2224B4000, (&v201 - 4));
        if (v197)
        {
        }

        else
        {
          v199 = v198;

          *v204 = v199;
        }
      }
    }

    else
    {

      v170 = sub_2224B4198();
      sub_2224B4020(&qword_27D00E328, MEMORY[0x277D37778]);
      swift_allocError();
      v172 = v171;
      v173 = v159[4];
      __swift_project_boxed_opaque_existential_1(v159, v159[3]);
      *v172 = sub_2224B4668();
      v172[1] = v174;
      (*(*(v170 - 8) + 104))(v172, *MEMORY[0x277D37768], v170);
      swift_willThrow();
      return (v157)(v158, v143);
    }
  }

  else
  {

    v168 = sub_2224B4198();
    sub_2224B4020(&qword_27D00E328, MEMORY[0x277D37778]);
    swift_allocError();
    *v169 = v43;
    v169[1] = 0x80000002224B6190;
    (*(*(v168 - 8) + 104))(v169, *MEMORY[0x277D37748], v168);
    swift_willThrow();
    (*(v215 + 8))(v144, v210);
    (*(v154 + 8))(v155, v143);
  }

  return result;
}

uint64_t sub_2224AC8A8(uint64_t a1, uint64_t a2)
{

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E380, &qword_2224B5148);

  return MEMORY[0x282197DA8](a1, a2, v4);
}

uint64_t sub_2224AC910(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v8 = sub_2224B4558();
  v5 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v6 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E658, &qword_2224B5A68);
  sub_2224B4478();
  sub_2224B4658();

  if (v10)
  {
    *a4 = v10;
  }

  else
  {
    sub_2224B4458();
    sub_2224B4468();
    sub_2224B4020(&qword_28130A328, MEMORY[0x277D378E8]);
    return sub_2224B4168();
  }

  return result;
}

uint64_t sub_2224ACA94(void (*a1)(char *, uint64_t *), uint64_t a2)
{
  v3 = v2;
  v42 = a1;
  v43 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E370, &qword_2224B5128);
  v44 = *(v41 - 8);
  v4 = *(v44 + 64);
  v5 = MEMORY[0x28223BE20](v41);
  v46 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v36 = &v34 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E650, &qword_2224B5A60);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v34 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E658, &qword_2224B5A68);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v35 = &v34 - v18;
  v19 = sub_2224B49F8();
  v48 = MEMORY[0x277D84F90];
  sub_2224B05F0(0, v19 & ~(v19 >> 63), 0);
  v20 = v48;
  result = sub_2224B49E8();
  v45 = result;
  if (v19 < 0)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    return result;
  }

  v37 = v16;
  v38 = v14;
  if (v19)
  {
    v39 = v44 + 32;
    v40 = (v16 + 8);
    do
    {
      sub_2224B4A58();
      result = (*(v16 + 48))(v12, 1, v15);
      if (result == 1)
      {
        goto LABEL_22;
      }

      v42(v12, &v47);
      if (v3)
      {

        (*v40)(v12, v15);
        return v20;
      }

      v3 = 0;
      v22 = v15;
      (*v40)(v12, v15);
      v48 = v20;
      v24 = *(v20 + 16);
      v23 = *(v20 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_2224B05F0(v23 > 1, v24 + 1, 1);
        v20 = v48;
      }

      *(v20 + 16) = v24 + 1;
      (*(v44 + 32))(v20 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v24, v46, v41);
      --v19;
      v15 = v22;
    }

    while (v19);
  }

  v25 = v38;
  sub_2224B4A58();
  v26 = v37;
  v27 = *(v37 + 48);
  if (v27(v25, 1, v15) == 1)
  {
    v28 = v38;
LABEL_11:

    sub_2224A7878(v28, &qword_27D00E650, &qword_2224B5A60);
  }

  else
  {
    v46 = *(v26 + 32);
    v37 = v26 + 32;
    v29 = (v26 + 8);
    v40 = (v44 + 32);
    v30 = v15;
    v28 = v38;
    while (1)
    {
      v31 = v35;
      (v46)(v35, v28, v30);
      v42(v31, &v47);
      if (v3)
      {
        break;
      }

      v3 = 0;
      (*v29)(v31, v30);
      v48 = v20;
      v33 = *(v20 + 16);
      v32 = *(v20 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_2224B05F0(v32 > 1, v33 + 1, 1);
        v20 = v48;
      }

      *(v20 + 16) = v33 + 1;
      (*(v44 + 32))(v20 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v33, v36, v41);
      v28 = v38;
      sub_2224B4A58();
      if (v27(v28, 1, v30) == 1)
      {
        goto LABEL_11;
      }
    }

    (*v29)(v31, v30);
  }

  return v20;
}

double _s15OnDeviceStorage16DictionaryUpsertV05buildE4Many8matching0abC4Core6InsertVAF16AccessCredentialV_tAA0abC5ErrorOYKF@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = v3;
  v9 = sub_2224B41F8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2224AD180(v6, a1, a3);
  if (v4)
  {
    MEMORY[0x223DB7AE0](v4);
    sub_2224B4208();
    *&v18[0] = sub_2224B41E8();
    *&v19 = v9;
    *(&v19 + 1) = sub_2224B4020(qword_28130A348, MEMORY[0x277D37790]);
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v18 + 1);
    (*(v10 + 32))(boxed_opaque_existential_1Tm, v13, v9);
    v20 = 7;
    sub_222485F68();
    swift_willThrowTypedImpl();
    MEMORY[0x223DB7AD0](v4);
    v16 = v18[1];
    *a2 = v18[0];
    *(a2 + 16) = v16;
    result = *&v19;
    *(a2 + 32) = v19;
    *(a2 + 48) = v20;
  }

  return result;
}

uint64_t sub_2224AD180@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v204 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E5B0, &qword_2224B59B8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v217 = &v197 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E5B8, &unk_2224B59C0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v220 = &v197 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v219 = &v197 - v12;
  v221 = sub_2224B40C8();
  v212 = *(v221 - 8);
  v13 = *(v212 + 64);
  MEMORY[0x28223BE20](v221);
  v218 = &v197 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2224B4128();
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v210 = &v197 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v211 = &v197 - v19;
  v20 = sub_2224B4418();
  v233 = *(v20 - 8);
  v21 = *(v233 + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v222 = &v197 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v232 = &v197 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v231 = &v197 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v234 = &v197 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v226 = (&v197 - v31);
  MEMORY[0x28223BE20](v30);
  v227 = &v197 - v32;
  v216 = sub_2224B4358();
  v215 = *(v216 - 8);
  v33 = *(v215 + 64);
  v34 = MEMORY[0x28223BE20](v216);
  v206 = &v197 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v230 = (&v197 - v36);
  v209 = sub_2224B4438();
  v214 = *(v209 - 8);
  v37 = *(v214 + 64);
  v38 = MEMORY[0x28223BE20](v209);
  v205 = &v197 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v41 = &v197 - v40;
  v42 = sub_2224B4448();
  v223 = *(v42 - 8);
  v43 = *(v223 + 64);
  v44 = MEMORY[0x28223BE20](v42);
  v208 = &v197 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v47 = &v197 - v46;
  sub_2224A7124(a1, &v246);
  v202 = v248;
  v203 = v247;
  v201 = __swift_project_boxed_opaque_existential_1(&v246, v247);
  v207 = a2;
  sub_2224B4348();
  v48 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v49 = sub_2224B4678();
  if (!v50)
  {
    v57 = sub_2224B4198();
    sub_2224B4020(&qword_27D00E328, MEMORY[0x277D37778]);
    swift_allocError();
    v59 = v58;
    v60 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    *v59 = sub_2224B4668();
    v59[1] = v61;
    (*(*(v57 - 8) + 104))(v59, *MEMORY[0x277D37768], v57);
    swift_willThrow();
    (*(v223 + 8))(v47, v42);
    return __swift_destroy_boxed_opaque_existential_1Tm(&v246);
  }

  v51 = v49;
  v213 = v42;
  v52 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2224B4668();
  v53 = v235;
  v54 = v230;
  sub_2224B43C8();
  if (v53)
  {

    sub_2224B4020(&qword_27D00E5C0, MEMORY[0x277D37848]);
    v55 = v216;
    swift_allocError();
    (*(v215 + 32))(v56, v54, v55);
    (*(v223 + 8))(v47, v213);
    return __swift_destroy_boxed_opaque_existential_1Tm(&v246);
  }

  v198 = 0;
  v197 = v47;
  v200 = a1;

  v63 = sub_2224B4428();
  v64 = *(v63 + 16);
  v235 = v20;
  v199 = v41;
  if (v64)
  {
    v243 = MEMORY[0x277D84F90];
    sub_2224B05D0(0, v64, 0);
    v65 = v243;
    v229 = *(v233 + 16);
    v66 = (*(v233 + 80) + 32) & ~*(v233 + 80);
    v225 = v63;
    v67 = v63 + v66;
    v228 = *(v233 + 72);
    v230 = (v233 + 16);
    v54 = v233 + 8;
    do
    {
      v69 = v234;
      v68 = v235;
      (v229)(v234, v67, v235);
      v70 = sub_2224B43F8();
      v51 = v71;
      (*v54)(v69, v68);
      v243 = v65;
      v47 = *(v65 + 16);
      v72 = *(v65 + 24);
      if (v47 >= v72 >> 1)
      {
        sub_2224B05D0((v72 > 1), v47 + 1, 1);
        v65 = v243;
      }

      *(v65 + 16) = v47 + 1;
      v73 = v65 + 16 * v47;
      *(v73 + 32) = v70;
      *(v73 + 40) = v51;
      v67 += v228;
      --v64;
    }

    while (v64);
    v230 = v65;

    v20 = v235;
  }

  else
  {

    v230 = MEMORY[0x277D84F90];
  }

  v74 = sub_2224B4428();
  v75 = *(v74 + 16);
  v76 = MEMORY[0x277D84F90];
  v77 = v227;
  if (v75)
  {
    v78 = 0;
    v47 = v233 + 16;
    v229 = v233 + 32;
    v224 = (v233 + 8);
    v228 = v75;
    v225 = (v233 + 16);
    while (v78 < *(v74 + 16))
    {
      v54 = (*(v233 + 80) + 32) & ~*(v233 + 80);
      v51 = *(v233 + 72);
      (*(v233 + 16))(v77, v74 + v54 + v51 * v78, v20);
      if (sub_2224B43D8())
      {
        (*v224)(v77, v20);
      }

      else
      {
        v79 = *v229;
        (*v229)(v232, v77, v20);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v243 = v76;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2224B05B0(0, *(v76 + 16) + 1, 1);
          v76 = v243;
        }

        v82 = *(v76 + 16);
        v81 = *(v76 + 24);
        if (v82 >= v81 >> 1)
        {
          sub_2224B05B0(v81 > 1, v82 + 1, 1);
          v76 = v243;
        }

        *(v76 + 16) = v82 + 1;
        v83 = v76 + v54 + v82 * v51;
        v20 = v235;
        v79(v83, v232, v235);
        v77 = v227;
        v75 = v228;
        v47 = v225;
      }

      if (v75 == ++v78)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
    goto LABEL_98;
  }

LABEL_24:

  v84 = *(v76 + 16);
  if (v84)
  {
    v243 = MEMORY[0x277D84F90];
    sub_2224B05D0(0, v84, 0);
    v85 = v243;
    v229 = *(v233 + 16);
    v86 = (*(v233 + 80) + 32) & ~*(v233 + 80);
    v227 = v76;
    v47 = v76 + v86;
    v228 = *(v233 + 72);
    v232 = (v233 + 16);
    v54 = v233 + 8;
    do
    {
      v88 = v234;
      v87 = v235;
      (v229)(v234, v47, v235);
      v89 = sub_2224B43F8();
      v91 = v90;
      (*v54)(v88, v87);
      v243 = v85;
      v93 = *(v85 + 16);
      v92 = *(v85 + 24);
      if (v93 >= v92 >> 1)
      {
        sub_2224B05D0((v92 > 1), v93 + 1, 1);
        v85 = v243;
      }

      *(v85 + 16) = v93 + 1;
      v94 = v85 + 16 * v93;
      *(v94 + 32) = v89;
      *(v94 + 40) = v91;
      v47 += v228;
      --v84;
    }

    while (v84);
  }

  else
  {

    v85 = MEMORY[0x277D84F90];
  }

  v224 = sub_2224B33E0(v85);

  v95 = sub_2224B4428();
  v78 = v95;
  v75 = *(v95 + 16);
  v76 = MEMORY[0x277D84F90];
  v96 = v235;
  v97 = v226;
  if (v75)
  {
    v98 = 0;
    v51 = v233 + 16;
    v225 = (v233 + 8);
    v232 = (v233 + 32);
    v228 = v75;
    v227 = (v233 + 16);
    v229 = v95;
    while (v98 < *(v78 + 16))
    {
      v54 = (*(v233 + 80) + 32) & ~*(v233 + 80);
      v47 = *(v233 + 72);
      (*(v233 + 16))(v97, v78 + v54 + v47 * v98, v96);
      if (sub_2224B43D8())
      {
        v99 = *v232;
        (*v232)(v231, v97, v96);
        v100 = swift_isUniquelyReferenced_nonNull_native();
        v243 = v76;
        if ((v100 & 1) == 0)
        {
          sub_2224B05B0(0, *(v76 + 16) + 1, 1);
          v76 = v243;
        }

        v102 = *(v76 + 16);
        v101 = *(v76 + 24);
        if (v102 >= v101 >> 1)
        {
          sub_2224B05B0(v101 > 1, v102 + 1, 1);
          v76 = v243;
        }

        *(v76 + 16) = v102 + 1;
        v99(v76 + v54 + v102 * v47, v231, v96);
        v97 = v226;
        v78 = v229;
        v75 = v228;
        v51 = v227;
      }

      else
      {
        (*v225)(v97, v96);
      }

      if (v75 == ++v98)
      {
        goto LABEL_42;
      }
    }

LABEL_98:
    __break(1u);
LABEL_99:
    swift_once();
    goto LABEL_58;
  }

LABEL_42:

  v103 = *(v76 + 16);
  if (v103)
  {
    v243 = MEMORY[0x277D84F90];
    sub_2224B05D0(0, v103, 0);
    v104 = v243;
    v231 = *(v233 + 16);
    v105 = (*(v233 + 80) + 32) & ~*(v233 + 80);
    v228 = v76;
    v106 = v76 + v105;
    v229 = *(v233 + 72);
    v232 = (v233 + 16);
    v107 = (v233 + 8);
    do
    {
      v108 = v234;
      (v231)(v234, v106, v96);
      v109 = sub_2224B43F8();
      v111 = v110;
      (*v107)(v108, v96);
      v243 = v104;
      v113 = *(v104 + 16);
      v112 = *(v104 + 24);
      if (v113 >= v112 >> 1)
      {
        sub_2224B05D0((v112 > 1), v113 + 1, 1);
        v104 = v243;
      }

      *(v104 + 16) = v113 + 1;
      v114 = v104 + 16 * v113;
      *(v114 + 32) = v109;
      *(v114 + 40) = v111;
      v106 += v229;
      --v103;
      v96 = v235;
    }

    while (v103);
  }

  else
  {

    v104 = MEMORY[0x277D84F90];
  }

  v115 = sub_2224B33E0(v104);

  v249 = MEMORY[0x277D84FA0];
  v116 = v200;
  v117 = v200[5];
  v118 = *(v117 + 16);
  v234 = v115;
  if (v118)
  {
    v243 = MEMORY[0x277D84F90];
    v119 = v230;

    sub_2224B0590(0, v118, 0);
    v54 = v243;
    v120 = (v117 + 32);
    v121 = v198;
    do
    {
      v122 = *v120;

      v124 = sub_2224B3760(v123, v119, &v249);

      v243 = v54;
      v126 = *(v54 + 16);
      v125 = *(v54 + 24);
      if (v126 >= v125 >> 1)
      {
        sub_2224B0590((v125 > 1), v126 + 1, 1);
        v54 = v243;
      }

      *(v54 + 16) = v126 + 1;
      *(v54 + 8 * v126 + 32) = v124;
      ++v120;
      --v118;
      v119 = v230;
    }

    while (v118);
    swift_bridgeObjectRelease_n();
    v116 = v200;
  }

  else
  {

    v54 = MEMORY[0x277D84F90];
    v121 = v198;
  }

  v51 = 0xD00000000000002BLL;
  v76 = v249;
  v127 = *(v249 + 2);
  v75 = 0x27D00E000uLL;
  v78 = &loc_2224B5000;
  v47 = MEMORY[0x277D837D0];
  v232 = v249;
  if (!v127)
  {
    goto LABEL_64;
  }

  v198 = v121;
  if (qword_27D00E320 != -1)
  {
    goto LABEL_99;
  }

LABEL_58:
  v128 = *(v75 + 2928);
  sub_2224B4B38();
  v230 = v245;
  v231 = v244;
  v229 = __swift_project_boxed_opaque_existential_1(&v243, v244);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E330, &qword_2224B5088);
  v129 = *(sub_2224B4148() - 8);
  v130 = *(v129 + 72);
  v228 = (*(v129 + 80) + 32) & ~*(v129 + 80);
  *(swift_allocObject() + 16) = *(v78 + 96);
  sub_2224B4118();
  sub_2224B4108();
  v131 = *(v76 + 16);
  if (v131)
  {
    v132 = sub_2224AF6C8(*(v76 + 16), 0);
    v133 = sub_2224B3288(&v239, v132 + 4, v131, v76);

    sub_2224859CC();
    if (v133 != v131)
    {
      __break(1u);
LABEL_101:
      __break(1u);
      goto LABEL_102;
    }

    v51 = 0xD00000000000002BLL;
    v47 = MEMORY[0x277D837D0];
  }

  else
  {
    v132 = MEMORY[0x277D84F90];
  }

  v239 = v132;
  v134 = v198;
  sub_2224B0EE4(&v239);
  v131 = v134;
  if (v134)
  {
LABEL_102:
    v196 = v131;
    goto LABEL_104;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E5C8, &unk_2224B59D0);
  sub_2224A77C8(&qword_27D00E5D0, &qword_27D00E5C8, &unk_2224B59D0);
  v135 = sub_2224B47B8();
  v137 = v136;

  v242 = v47;
  v239 = v135;
  v240 = v137;
  sub_2224B40F8();
  sub_2224A7878(&v239, &qword_27D00E338, &qword_2224B5090);
  sub_2224B4108();
  sub_2224B4138();
  sub_2224B4598();

  __swift_destroy_boxed_opaque_existential_1Tm(&v243);
  v116 = v200;
  v121 = 0;
LABEL_64:
  v237 = MEMORY[0x277D84FA0];
  v238 = MEMORY[0x277D84FA0];
  v236 = 0;
  v138 = v224;

  v139 = v234;

  v140 = sub_2224B392C(v54, v138, &v238, &v236, v139, &v237);
  v141 = v121;

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  v142 = v236;
  v225 = v140;
  if (v236 < 1)
  {
    v234 = v121;
    v150 = v223;
    goto LABEL_74;
  }

  if (qword_27D00E320 != -1)
  {
    swift_once();
  }

  sub_2224B4B38();
  v230 = v245;
  v231 = v244;
  v229 = __swift_project_boxed_opaque_existential_1(&v243, v244);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E330, &qword_2224B5088);
  v143 = *(sub_2224B4148() - 8);
  v144 = *(v143 + 72);
  v228 = (*(v143 + 80) + 32) & ~*(v143 + 80);
  *(swift_allocObject() + 16) = xmmword_2224B5060;
  sub_2224B4118();
  sub_2224B4108();
  v242 = MEMORY[0x277D83B88];
  v239 = v142;
  sub_2224B40F8();
  sub_2224A7878(&v239, &qword_27D00E338, &qword_2224B5090);
  sub_2224B4108();
  v145 = v238;
  v146 = *(v238 + 16);
  if (!v146)
  {
    v147 = MEMORY[0x277D84F90];
    v51 = 0xD00000000000002BLL;
    v149 = MEMORY[0x277D837D0];
    goto LABEL_72;
  }

  v234 = v121;
  v147 = sub_2224AF6C8(v146, 0);
  v148 = sub_2224B3288(&v239, v147 + 4, v146, v145);
  v131 = v241;

  sub_2224859CC();
  if (v148 != v146)
  {
    goto LABEL_101;
  }

  v51 = 0xD00000000000002BLL;
  v149 = MEMORY[0x277D837D0];
  v141 = v234;
LABEL_72:
  v239 = v147;
  sub_2224B0EE4(&v239);
  if (!v141)
  {
    v234 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E5C8, &unk_2224B59D0);
    sub_2224A77C8(&qword_27D00E5D0, &qword_27D00E5C8, &unk_2224B59D0);
    v151 = sub_2224B47B8();
    v153 = v152;

    v242 = v149;
    v239 = v151;
    v240 = v153;
    sub_2224B40F8();
    sub_2224A7878(&v239, &qword_27D00E338, &qword_2224B5090);
    sub_2224B4108();
    sub_2224B4138();
    sub_2224B4588();

    __swift_destroy_boxed_opaque_existential_1Tm(&v243);
    v150 = v223;
    v116 = v200;
    v140 = v225;
LABEL_74:
    v154 = v213;
    v155 = v197;
    if (*(v140 + 16))
    {
      v156 = *(v214 + 8);
      v214 += 8;
      v156(v199, v209);
      v159 = *(v150 + 8);
      v157 = v150 + 8;
      v158 = v159;
      (v159)(v155, v154);

      v160 = v208;
      sub_2224B4348();
      v161 = v116[4];
      __swift_project_boxed_opaque_existential_1(v116, v116[3]);
      sub_2224B4678();
      if (v162)
      {
        v232 = v158;
        v163 = v116[4];
        __swift_project_boxed_opaque_existential_1(v116, v116[3]);
        sub_2224B4668();
        v164 = v205;
        v165 = v234;
        v166 = v206;
        sub_2224B43C8();
        if (v165)
        {

          sub_2224B4020(&qword_27D00E5C0, MEMORY[0x277D37848]);
          v167 = v216;
          swift_allocError();
          (*(v215 + 32))(v168, v166, v167);
          (v232)(v160, v213);
        }

        else
        {
          v224 = 0;

          v176 = sub_2224B4428();
          v156(v164, v209);
          v177 = v176;
          v178 = *(v176 + 16);
          if (v178)
          {
            v223 = v157;
            v230 = *(v233 + 16);
            v179 = (*(v233 + 80) + 32) & ~*(v233 + 80);
            v216 = v177;
            v180 = (v177 + v179);
            v229 = v233 + 8;
            v228 = v212 + 56;
            v233 += 16;
            v227 = *(v233 + 56);
            v226 = (v212 + 48);
            v231 = (v212 + 32);
            v181 = MEMORY[0x277D84F90];
            v182 = v220;
            v183 = v235;
            v184 = v222;
            do
            {
              v234 = v180;
              v230(v184, v180, v183);
              if (sub_2224B43E8() & 1) != 0 || (sub_2224B4408())
              {
                v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E5D8, &qword_2224B59E0);
                sub_2224B43F8();
                v244 = v187;
                v245 = sub_2224A77C8(&qword_27D00E5E0, &qword_27D00E5D8, &qword_2224B59E0);
                __swift_allocate_boxed_opaque_existential_1Tm(&v243);
                sub_2224A77C8(&qword_27D00E5E8, &qword_27D00E5D8, &qword_2224B59E0);
                v182 = v220;
                v184 = v222;
                sub_2224B4338();
                v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E5F0, &qword_2224B59E8);
                (*(*(v188 - 8) + 56))(v217, 1, 1, v188);
                sub_2224B40D8();
                (*v229)(v184, v183);
                v189 = 0;
              }

              else
              {
                (*v229)(v184, v183);
                v189 = 1;
              }

              v190 = v221;
              (*v228)(v182, v189, 1, v221);
              v191 = v219;
              sub_2224B3EB4(v182, v219);
              if ((*v226)(v191, 1, v190) == 1)
              {
                sub_2224A7878(v191, &qword_27D00E5B8, &unk_2224B59C0);
                v185 = v234;
              }

              else
              {
                v192 = *v231;
                (*v231)(v218, v191, v190);
                v193 = swift_isUniquelyReferenced_nonNull_native();
                v185 = v234;
                if ((v193 & 1) == 0)
                {
                  v181 = sub_2224AF9AC(0, *(v181 + 2) + 1, 1, v181, &qword_27D00E5F8, &qword_2224B59F0, MEMORY[0x277D37730]);
                }

                v195 = *(v181 + 2);
                v194 = *(v181 + 3);
                if (v195 >= v194 >> 1)
                {
                  v181 = sub_2224AF9AC(v194 > 1, v195 + 1, 1, v181, &qword_27D00E5F8, &qword_2224B59F0, MEMORY[0x277D37730]);
                }

                *(v181 + 2) = v195 + 1;
                v192(&v181[((*(v212 + 80) + 32) & ~*(v212 + 80)) + *(v212 + 72) * v195], v218);
                v182 = v220;
              }

              v180 = &v227[v185];
              --v178;
              v183 = v235;
              v186 = v232;
            }

            while (v178);

            v160 = v208;
          }

          else
          {

            v186 = v232;
          }

          (v186)(v160, v213);
          sub_2224B4658();
        }
      }

      else
      {

        v171 = sub_2224B4198();
        sub_2224B4020(&qword_27D00E328, MEMORY[0x277D37778]);
        swift_allocError();
        v173 = v172;
        v174 = v116[4];
        __swift_project_boxed_opaque_existential_1(v116, v116[3]);
        *v173 = sub_2224B4668();
        v173[1] = v175;
        (*(*(v171 - 8) + 104))(v173, *MEMORY[0x277D37768], v171);
        swift_willThrow();
        (v158)(v160, v213);
      }
    }

    else
    {

      v169 = sub_2224B4198();
      sub_2224B4020(&qword_27D00E328, MEMORY[0x277D37778]);
      swift_allocError();
      *v170 = v51;
      v170[1] = 0x80000002224B6190;
      (*(*(v169 - 8) + 104))(v170, *MEMORY[0x277D37748], v169);
      swift_willThrow();
      (*(v214 + 8))(v199, v209);
      (*(v150 + 8))(v155, v154);
    }

    return __swift_destroy_boxed_opaque_existential_1Tm(&v246);
  }

  v196 = v141;
LABEL_104:
  MEMORY[0x223DB7AD0](v196);

  __break(1u);
  return result;
}

uint64_t sub_2224AF1FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v26 = MEMORY[0x277D84F90];
  sub_2224B0610(0, v1, 0);
  v2 = v26;
  v4 = a1 + 56;
  v5 = -1 << *(a1 + 32);
  result = sub_2224B4978();
  v7 = result;
  v8 = 0;
  v23 = v1;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
  {
    v10 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_21;
    }

    v24 = *(a1 + 36);
    v11 = (*(a1 + 48) + 16 * v7);
    v12 = v11[1];
    v25 = *v11;
    v13 = *(v26 + 16);
    v14 = *(v26 + 24);

    if (v13 >= v14 >> 1)
    {
      result = sub_2224B0610((v14 > 1), v13 + 1, 1);
    }

    *(v26 + 16) = v13 + 1;
    v15 = v26 + 48 * v13;
    *(v15 + 32) = v25;
    *(v15 + 40) = v12;
    *(v15 + 48) = 0u;
    *(v15 + 64) = 0u;
    v9 = 1 << *(a1 + 32);
    if (v7 >= v9)
    {
      goto LABEL_22;
    }

    v4 = a1 + 56;
    v16 = *(a1 + 56 + 8 * v10);
    if ((v16 & (1 << v7)) == 0)
    {
      goto LABEL_23;
    }

    if (v24 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v17 = v16 & (-2 << (v7 & 0x3F));
    if (v17)
    {
      v9 = __clz(__rbit64(v17)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v18 = v10 << 6;
      v19 = v10 + 1;
      v20 = (a1 + 64 + 8 * v10);
      while (v19 < (v9 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          result = sub_2224B3F94(v7, v24, 0);
          v9 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      result = sub_2224B3F94(v7, v24, 0);
    }

LABEL_4:
    ++v8;
    v7 = v9;
    if (v8 == v23)
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

uint64_t sub_2224AF430(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_2224B0D94(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t QueryType.upsertMany(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a4);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1Tm, v4, a2);
  a4[5] = a1;
}

uint64_t sub_2224AF5BC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_2224AF624(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_2224AF66C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_2224AF6C8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E638, &qword_2224B5A38);
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

void *sub_2224AF774(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E610, &qword_2224B5A08);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E380, &qword_2224B5148);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2224AF8A8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E630, &qword_2224B5A30);
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

size_t sub_2224AF9AC(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

unint64_t sub_2224AFB88(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_2224B4B08();
  sub_2224B4838();
  v6 = sub_2224B4B18();

  return sub_2224B0180(a1, a2, v6);
}

uint64_t sub_2224AFC00(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E588, &qword_2224B5918);
  v36 = a2;
  result = sub_2224B4A38();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
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
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_2224A9F14(v25, v37);
      }

      else
      {
        sub_2224A703C(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_2224B4B08();
      sub_2224B4838();
      result = sub_2224B4B18();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
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
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_2224A9F14(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
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

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

uint64_t sub_2224AFEB8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E600, &qword_2224B59F8);
  v39 = a2;
  result = sub_2224B4A38();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = v20 | (v9 << 6);
      v24 = (*(v5 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + 32 * v23);
      if (v39)
      {
        v28 = v27[1];
        v40 = *v27;
        v41 = v28;
      }

      else
      {
        sub_2224A7810(v27, &v40, &qword_27D00E338, &qword_2224B5090);
      }

      v29 = *(v8 + 40);
      sub_2224B4B08();
      sub_2224B4838();
      result = sub_2224B4B18();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v25;
      v17[1] = v26;
      v18 = (*(v8 + 56) + 32 * v16);
      v19 = v41;
      *v18 = v40;
      v18[1] = v19;
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_36;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero((v5 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

unint64_t sub_2224B0180(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_2224B4A88())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void *sub_2224B0238()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E588, &qword_2224B5918);
  v2 = *v0;
  v3 = sub_2224B4A28();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_2224A703C(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_2224A9F14(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_2224B03DC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E600, &qword_2224B59F8);
  v2 = *v0;
  v3 = sub_2224B4A28();
  v4 = v3;
  if (*(v2 + 16))
  {
    v26 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    v11 = *(v2 + 64);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v12 = v10 & v11;
    v13 = (v9 + 63) >> 6;
    if ((v10 & v11) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v20 = *v19;
        v21 = v19[1];
        v22 = 32 * v17;
        sub_2224A7810(*(v2 + 56) + 32 * v17, v27, &qword_27D00E338, &qword_2224B5090);
        v23 = (*(v4 + 48) + v18);
        *v23 = v20;
        v23[1] = v21;
        v24 = (*(v4 + 56) + v22);
        v25 = v27[1];
        *v24 = v27[0];
        v24[1] = v25;
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

        v1 = v26;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_2224B0590(void *a1, int64_t a2, char a3)
{
  result = sub_2224B0750(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2224B05B0(size_t a1, int64_t a2, char a3)
{
  result = sub_2224B0884(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2224B05D0(char *a1, int64_t a2, char a3)
{
  result = sub_2224B0644(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2224B05F0(size_t a1, int64_t a2, char a3)
{
  result = sub_2224B0A5C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2224B0610(void *a1, int64_t a2, char a3)
{
  result = sub_2224B0C4C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2224B0644(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E638, &qword_2224B5A38);
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

void *sub_2224B0750(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E610, &qword_2224B5A08);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E380, &qword_2224B5148);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_2224B0884(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E640, &unk_2224B5A40);
  v10 = *(sub_2224B4418() - 8);
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
  v15 = *(sub_2224B4418() - 8);
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

size_t sub_2224B0A5C(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E660, &qword_2224B5A70);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E370, &qword_2224B5128) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E370, &qword_2224B5128) - 8);
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

void *sub_2224B0C4C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E620, &qword_2224B5A20);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E618, &unk_2224B5A10);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_2224B0D94(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_2224B4B08();
  sub_2224B4838();
  v9 = sub_2224B4B18();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_2224B4A88() & 1) != 0)
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

    sub_2224B1C1C(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_2224B0EE4(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2224B0630(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_2224B0F50(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_2224B0F50(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_2224B4A68();
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
        v5 = sub_2224B4878();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_2224B1118(v7, v8, a1, v4);
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
    return sub_2224B1048(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2224B1048(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
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
      if (v13 || (result = sub_2224B4A88(), (result & 1) == 0))
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

uint64_t sub_2224B1118(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
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
      result = sub_2224B19A8(v8);
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
        sub_2224B16F4((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
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
        result = sub_2224B4A88();
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
            result = sub_2224B4A88();
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
      result = sub_2224AF8A8(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_2224AF8A8((v39 > 1), v40 + 1, 1, v8);
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
        sub_2224B16F4((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_2224B19A8(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_2224B191C(v44);
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
    if (v37 || (result = sub_2224B4A88(), (result & 1) == 0))
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

uint64_t sub_2224B16F4(char *__dst, char *__src, char *a3, char *a4)
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
      if (!v16 && (sub_2224B4A88() & 1) != 0)
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
      if (!v21 && (sub_2224B4A88() & 1) != 0)
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

uint64_t sub_2224B191C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2224B19A8(v3);
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

uint64_t sub_2224B19BC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E628, &qword_2224B5A28);
  result = sub_2224B4998();
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
      sub_2224B4B08();
      sub_2224B4838();
      result = sub_2224B4B18();
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

uint64_t sub_2224B1C1C(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_2224B19BC(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_2224B1D9C();
      goto LABEL_16;
    }

    sub_2224B1EF8(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_2224B4B08();
  sub_2224B4838();
  result = sub_2224B4B18();
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

      result = sub_2224B4A88();
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
  result = sub_2224B4AA8();
  __break(1u);
  return result;
}

void *sub_2224B1D9C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E628, &qword_2224B5A28);
  v2 = *v0;
  v3 = sub_2224B4988();
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

uint64_t sub_2224B1EF8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E628, &qword_2224B5A28);
  result = sub_2224B4998();
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
      sub_2224B4B08();

      sub_2224B4838();
      result = sub_2224B4B18();
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

unint64_t *sub_2224B2130(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v10 = sub_2224B3478(v9, a2, a3, a4, a5);
    swift_bridgeObjectRelease_n();

    return v10;
  }

  return result;
}

uint64_t sub_2224B21D4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E600, &qword_2224B59F8);
  result = sub_2224B4A48();
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
  v12 = result + 64;
  v33 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    sub_2224A7810(v17 + 32 * v16, v36, &qword_27D00E338, &qword_2224B5090);
    v34 = v36[0];
    v35 = v36[1];
    v21 = *(v9 + 40);
    sub_2224B4B08();

    sub_2224B4838();
    result = sub_2224B4B18();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    v31 = (*(v9 + 56) + 32 * v25);
    *v31 = v34;
    v31[1] = v35;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v33;
    if (!v5)
    {
      return v9;
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
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_2224B2430(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

uint64_t sub_2224B24DC(uint64_t a1, uint64_t a2)
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
    sub_2224B4B08();

    sub_2224B4838();
    v24 = sub_2224B4B18();
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
    if (v27 || (sub_2224B4A88() & 1) != 0)
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
        v5 = sub_2224B3064(v61, v57, v59, v5);
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
            sub_2224B4B08();

            sub_2224B4838();
            v43 = sub_2224B4B18();
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
            while ((sub_2224B4A88() & 1) == 0)
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
  v55 = sub_2224B2E2C(v53, v57, v5, v2, v65);

  if (!v54)
  {

    MEMORY[0x223DB7C20](v53, -1, -1);
    v60 = v66;
    v5 = v55;
LABEL_52:
    sub_2224859CC();
    goto LABEL_53;
  }

  MEMORY[0x223DB7AD0](v54);
  result = MEMORY[0x223DB7C20](v53, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_2224B2A4C(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
  }

  sub_2224A7810(a1 + 32, &v51, &qword_27D00E618, &unk_2224B5A10);
  v8 = v51;
  v7 = v52;
  v49 = v51;
  v50 = v52;
  v47 = v53;
  v48 = v54;
  v9 = *a3;
  v10 = sub_2224AFB88(v51, v52);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_2224AFEB8(v15, a2 & 1);
    v17 = *a3;
    v10 = sub_2224AFB88(v8, v7);
    if ((v16 & 1) != (v18 & 1))
    {
LABEL_5:
      sub_2224B4AB8();
      __break(1u);
    }

LABEL_8:
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v21 = v10;
  sub_2224B03DC();
  v10 = v21;
  if (v16)
  {
LABEL_9:
    v19 = swift_allocError();
    swift_willThrow();

    v55 = v19;
    MEMORY[0x223DB7AE0](v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E428, &qword_2224B5510);
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_2224A7878(&v47, &qword_27D00E338, &qword_2224B5090);

      return MEMORY[0x223DB7AD0](v55);
    }

    goto LABEL_26;
  }

LABEL_12:
  v22 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v23 = (v22[6] + 16 * v10);
  *v23 = v8;
  v23[1] = v7;
  v24 = (v22[7] + 32 * v10);
  v25 = v48;
  *v24 = v47;
  v24[1] = v25;
  v26 = v22[2];
  v14 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (!v14)
  {
    v22[2] = v27;
    if (v4 == 1)
    {
    }

    v28 = a1 + 80;
    v29 = 1;
    while (v29 < *(a1 + 16))
    {
      sub_2224A7810(v28, &v51, &qword_27D00E618, &unk_2224B5A10);
      v31 = v51;
      v30 = v52;
      v49 = v51;
      v50 = v52;
      v47 = v53;
      v48 = v54;
      v32 = *a3;
      v33 = sub_2224AFB88(v51, v52);
      v35 = v32[2];
      v36 = (v34 & 1) == 0;
      v14 = __OFADD__(v35, v36);
      v37 = v35 + v36;
      if (v14)
      {
        goto LABEL_23;
      }

      v38 = v34;
      if (v32[3] < v37)
      {
        sub_2224AFEB8(v37, 1);
        v39 = *a3;
        v33 = sub_2224AFB88(v31, v30);
        if ((v38 & 1) != (v40 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v38)
      {
        goto LABEL_9;
      }

      v41 = *a3;
      *(*a3 + 8 * (v33 >> 6) + 64) |= 1 << v33;
      v42 = (v41[6] + 16 * v33);
      *v42 = v31;
      v42[1] = v30;
      v43 = (v41[7] + 32 * v33);
      v44 = v48;
      *v43 = v47;
      v43[1] = v44;
      v45 = v41[2];
      v14 = __OFADD__(v45, 1);
      v46 = v45 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v29;
      v41[2] = v46;
      v28 += 48;
      if (v4 == v29)
      {
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  sub_2224B49C8();
  MEMORY[0x223DB7580](0xD00000000000001BLL, 0x80000002224B6270);
  sub_2224B4A08();
  MEMORY[0x223DB7580](39, 0xE100000000000000);
  result = sub_2224B4A18();
  __break(1u);
  return result;
}

uint64_t sub_2224B2E2C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
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

          return sub_2224B3064(v32, a2, v31, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        v19 = *(a3 + 40);
        sub_2224B4B08();

        sub_2224B4838();
        v20 = sub_2224B4B18();
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
        while ((sub_2224B4A88() & 1) == 0)
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

uint64_t sub_2224B3064(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E628, &qword_2224B5A28);
  result = sub_2224B49A8();
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
    sub_2224B4B08();

    sub_2224B4838();
    result = sub_2224B4B18();
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

void *sub_2224B3288(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
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

uint64_t sub_2224B33E0(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x223DB7620](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_2224B0D94(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t *sub_2224B3478(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a5;
  v28 = a4;
  v23 = a2;
  v24 = result;
  v25 = 0;
  v5 = 0;
  v29 = a3;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  v27 = v10;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v30 = (v9 - 1) & v9;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = (*(v29 + 48) + 16 * v14);
    v17 = *v15;
    v16 = v15[1];
    sub_2224A7810(*(v29 + 56) + 32 * v14, v37, &qword_27D00E338, &qword_2224B5090);
    v35[0] = v17;
    v35[1] = v16;
    v18 = sub_2224A7810(v37, &v36, &qword_27D00E338, &qword_2224B5090);
    v31 = v17;
    v32 = v16;
    MEMORY[0x28223BE20](v18);
    v22[2] = &v31;
    swift_bridgeObjectRetain_n();
    v19 = v38;
    v20 = sub_2224B2430(sub_2224B3FA0, v22, v28);
    v38 = v19;
    if (v20)
    {
      sub_2224A7878(v35, &qword_27D00E608, &qword_2224B5A00);
      sub_2224A7878(v37, &qword_27D00E338, &qword_2224B5090);

      *(v24 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v21 = __OFADD__(v25++, 1);
      v10 = v27;
      v9 = v30;
      if (v21)
      {
        __break(1u);
        return sub_2224B21D4(v24, v23, v25, v29);
      }
    }

    else
    {
      sub_2224A7810(v35, &v31, &qword_27D00E608, &qword_2224B5A00);
      sub_2224B0D94(&v34, v31, v32);

      sub_2224A7878(&v33, &qword_27D00E338, &qword_2224B5090);
      sub_2224A7878(v35, &qword_27D00E608, &qword_2224B5A00);
      sub_2224A7878(v37, &qword_27D00E338, &qword_2224B5090);

      v10 = v27;
      v9 = v30;
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      return sub_2224B21D4(v24, v23, v25, v29);
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v30 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_2224B3760(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 32);
  v8 = v7 & 0x3F;
  v9 = ((1 << v7) + 63) >> 6;
  v10 = 8 * v9;
  v11 = swift_bridgeObjectRetain_n();
  if (v8 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v15 = swift_slowAlloc();

      v12 = sub_2224B2130(v15, v9, a1, a2, a3);
      MEMORY[0x223DB7C20](v15, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x28223BE20](v11);
  bzero(v16 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0), v10);

  v12 = sub_2224B3478((v16 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0)), v9, a1, a2, a3);

  if (v3)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
LABEL_6:
  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t sub_2224B392C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a1 + 16);
  if (!v6)
  {
    return MEMORY[0x277D84F90];
  }

  v12 = 0;
  v73 = a1 + 32;
  result = MEMORY[0x277D84F90];
  v66 = v6;
  do
  {
    v67 = result;
    while (1)
    {
      if (v12 >= v6)
      {
        goto LABEL_57;
      }

      if (__OFADD__(v12, 1))
      {
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        sub_2224B4AB8();
        __break(1u);
LABEL_63:
        result = swift_unexpectedError();
        __break(1u);
        return result;
      }

      v74 = v12 + 1;
      v14 = *(v73 + 8 * v12);

      v15 = sub_2224B24DC(v14, a2);
      if (!*(v15 + 16))
      {
        break;
      }

      sub_2224AF430(v15);
      if (__OFADD__(*a4, 1))
      {
        goto LABEL_59;
      }

      ++*a4;

      ++v12;
      if (v74 == v6)
      {
        return v67;
      }
    }

    v16 = sub_2224B24DC(v14, a5);
    if (*(v16 + 16))
    {
      v61 = a2;
      v64 = a5;
      v17 = v16;

      v65 = a6;
      sub_2224AF430(v18);
      v19 = sub_2224AF1FC(v17);

      if (*(v19 + 16))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E600, &qword_2224B59F8);
        v20 = sub_2224B4A48();
      }

      else
      {
        v20 = MEMORY[0x277D84F98];
      }

      v62 = a3;
      v63 = a4;
      *&v80 = v20;
      sub_2224B2A4C(v19, 1, &v80);
      if (!v69)
      {
        v22 = v80;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v83 = v14;
        v24 = v22 + 64;
        v25 = 1 << *(v22 + 32);
        if (v25 < 64)
        {
          v26 = ~(-1 << v25);
        }

        else
        {
          v26 = -1;
        }

        v27 = v26 & *(v22 + 64);
        v68 = (v25 + 63) >> 6;
        v70 = v22;

        v28 = 0;
        v21 = v14;
        v71 = v22 + 64;
        while (2)
        {
          v72 = isUniquelyReferenced_nonNull_native;
          if (!v27)
          {
            if (v68 <= v28 + 1)
            {
              v30 = v28 + 1;
            }

            else
            {
              v30 = v68;
            }

            v31 = v30 - 1;
            while (1)
            {
              v29 = v28 + 1;
              if (__OFADD__(v28, 1))
              {
                break;
              }

              if (v29 >= v68)
              {
                v39 = 0;
                v40 = 0;
                v38 = 0;
                v37 = 0;
                v35 = 0;
                v36 = 0;
                v27 = 0;
                v28 = v31;
                goto LABEL_33;
              }

              v27 = *(v24 + 8 * v29);
              ++v28;
              if (v27)
              {
                v28 = v29;
                goto LABEL_32;
              }
            }

            __break(1u);
LABEL_57:
            __break(1u);
            goto LABEL_58;
          }

          v29 = v28;
LABEL_32:
          v32 = __clz(__rbit64(v27));
          v27 &= v27 - 1;
          v33 = v32 | (v29 << 6);
          v34 = (*(v70 + 48) + 16 * v33);
          v36 = *v34;
          v35 = v34[1];
          sub_2224A7810(*(v70 + 56) + 32 * v33, &v76, &qword_27D00E338, &qword_2224B5090);
          v38 = *(&v76 + 1);
          v37 = v76;
          v39 = *(&v77 + 1);
          v40 = v77;

LABEL_33:
          *&v76 = v36;
          *(&v76 + 1) = v35;
          *&v77 = v37;
          *(&v77 + 1) = v38;
          v78 = v40;
          v79 = v39;
          if (!v35)
          {
            v81 = 0u;
            v82 = 0u;
            v80 = 0u;
LABEL_48:

            a5 = v64;
            a6 = v65;
            a3 = v62;
            a4 = v63;
            a2 = v61;
            v6 = v66;
            goto LABEL_49;
          }

          sub_2224A7810(&v77, &v81, &qword_27D00E338, &qword_2224B5090);
          *&v80 = v36;
          *(&v80 + 1) = v35;

          sub_2224A7878(&v76, &qword_27D00E608, &qword_2224B5A00);
          v41 = *(&v80 + 1);
          if (!*(&v80 + 1))
          {
            goto LABEL_48;
          }

          v42 = v80;
          v76 = v81;
          v77 = v82;
          v44 = sub_2224AFB88(v80, *(&v80 + 1));
          v45 = v21[2];
          v46 = (v43 & 1) == 0;
          v47 = v45 + v46;
          if (__OFADD__(v45, v46))
          {
            goto LABEL_60;
          }

          v48 = v43;
          if (v21[3] >= v47)
          {
            if (v72)
            {
              if ((v43 & 1) == 0)
              {
                goto LABEL_42;
              }
            }

            else
            {
              sub_2224B03DC();
              if ((v48 & 1) == 0)
              {
                goto LABEL_42;
              }
            }
          }

          else
          {
            sub_2224AFEB8(v47, v72 & 1);
            v49 = sub_2224AFB88(v42, v41);
            if ((v48 & 1) != (v50 & 1))
            {
              goto LABEL_62;
            }

            v44 = v49;
            if ((v48 & 1) == 0)
            {
LABEL_42:
              v21 = v83;
              v83[(v44 >> 6) + 8] |= 1 << v44;
              v51 = (v21[6] + 16 * v44);
              *v51 = v42;
              v51[1] = v41;
              v52 = (v21[7] + 32 * v44);
              v53 = v77;
              *v52 = v76;
              v52[1] = v53;
              v54 = v21[2];
              v55 = __OFADD__(v54, 1);
              v56 = v54 + 1;
              if (v55)
              {
                goto LABEL_61;
              }

              v21[2] = v56;
              goto LABEL_21;
            }
          }

          v21 = v83;
          sub_2224A7810(v83[7] + 32 * v44, v75, &qword_27D00E338, &qword_2224B5090);
          sub_2224A7878(&v76, &qword_27D00E338, &qword_2224B5090);

          sub_2224B3F24(v75, v21[7] + 32 * v44);
LABEL_21:
          isUniquelyReferenced_nonNull_native = 1;
          v24 = v71;
          continue;
        }
      }

      goto LABEL_63;
    }

    v21 = v14;
LABEL_49:
    v57 = v67;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v57 = sub_2224AF774(0, v67[2] + 1, 1, v67);
    }

    v59 = v57[2];
    v58 = v57[3];
    v60 = v57;
    if (v59 >= v58 >> 1)
    {
      v60 = sub_2224AF774((v58 > 1), v59 + 1, 1, v57);
    }

    result = v60;
    v60[2] = v59 + 1;
    v60[v59 + 4] = v21;
    v12 = v74;
  }

  while (v74 != v6);
  return result;
}

uint64_t sub_2224B3EB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E5B8, &unk_2224B59C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2224B3F24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E338, &qword_2224B5090);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2224B3F94(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_2224B3FA0(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_2224B4A88() & 1;
  }
}

uint64_t sub_2224B4020(unint64_t *a1, void (*a2)(uint64_t))
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