id MatterCommandActionMap.__allocating_init(commandTemplates:enforceExecutionOrder:)(uint64_t a1, char a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR___HREMatterCommandActionMap_commandTemplates] = a1;
  v5[OBJC_IVAR___HREMatterCommandActionMap_enforceExecutionOrder] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_initWithCondition_childMaps_, 0, 0);
}

id MatterCommandActionMap.init(commandTemplates:enforceExecutionOrder:)(uint64_t a1, char a2)
{
  *&v2[OBJC_IVAR___HREMatterCommandActionMap_commandTemplates] = a1;
  v2[OBJC_IVAR___HREMatterCommandActionMap_enforceExecutionOrder] = a2;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for MatterCommandActionMap();
  return objc_msgSendSuper2(&v4, sel_initWithCondition_childMaps_, 0, 0);
}

id MatterCommandActionMap.init(rawCommands:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_254406CB0())
  {
    v3 = 0;
    v4 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x259C0B190](v3, a1);
      }

      else
      {
        if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v5 = *(a1 + 8 * v3 + 32);
      }

      v6 = v5;
      v7 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      sub_2543E3C48(v5 + OBJC_IVAR___HREMatterCommandMap_template, v15);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_2543E4D88(0, v4[2] + 1, 1, v4);
      }

      v9 = v4[2];
      v8 = v4[3];
      if (v9 >= v8 >> 1)
      {
        v4 = sub_2543E4D88((v8 > 1), v9 + 1, 1, v4);
      }

      v4[2] = v9 + 1;
      sub_2543E4ED0(v15, &v4[5 * v9 + 4]);
      ++v3;
      if (v7 == i)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  v4 = MEMORY[0x277D84F90];
LABEL_19:

  v10 = type metadata accessor for MatterCommandActionMap();
  v11 = objc_allocWithZone(v10);
  *&v11[OBJC_IVAR___HREMatterCommandActionMap_commandTemplates] = v4;
  v11[OBJC_IVAR___HREMatterCommandActionMap_enforceExecutionOrder] = 1;
  v14.receiver = v11;
  v14.super_class = v10;
  v12 = objc_msgSendSuper2(&v14, sel_initWithCondition_childMaps_, 0, 0);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v12;
}

uint64_t sub_2543E3C48(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_2543E3CAC(void *result, uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x277D84F90];
  v14 = MEMORY[0x277D84F90];
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = a3 + 32;
    v12 = a3 + 32;
    do
    {
      v9 = v8 + 40 * v7;
      for (i = v7; ; ++i)
      {
        if (i >= v5)
        {
          __break(1u);
LABEL_17:
          __break(1u);
          return result;
        }

        v7 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_17;
        }

        result = v6(&v13, v9);
        if (v3)
        {

          return v4;
        }

        if (v13)
        {
          break;
        }

        v9 += 40;
        if (v7 == v5)
        {
          return v4;
        }
      }

      MEMORY[0x259C0AFA0](result);
      if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v11 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_254406B90();
      }

      result = sub_254406BA0();
      v4 = v14;
      v8 = v12;
    }

    while (v7 != v5);
  }

  return v4;
}

void *sub_2543E3EA4(uint64_t a1)
{
  v2 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5F8D80, &qword_254409E48) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v4 = v26 - v3;
  v5 = sub_254406AC0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  (MEMORY[0x28223BE20])();
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5F8B20, &qword_254409E50) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v12 = v26 - v11;
  v13 = sub_254406B00();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  (MEMORY[0x28223BE20])();
  v17 = v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_254406C10();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    v18 = &qword_27F5F8B20;
    v19 = &qword_254409E50;
    v20 = v12;
LABEL_5:
    sub_2543E50A0(v20, v18, v19);
    return 0;
  }

  (*(v14 + 32))(v17, v12, v13);
  sub_254406AF0();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    (*(v14 + 8))(v17, v13);
    v18 = &unk_27F5F8D80;
    v19 = &qword_254409E48;
    v20 = v4;
    goto LABEL_5;
  }

  v22 = (*(v6 + 32))(v9, v4, v5);
  v23 = *(v26[0] + OBJC_IVAR___HREMatterCommandActionMap_commandTemplates);
  MEMORY[0x28223BE20](v22);
  v26[-2] = a1;
  v26[-1] = v9;
  v25 = sub_2543E3CAC(sub_2543E5100, &v26[-4], v24);
  (*(v14 + 8))(v17, v13);
  (*(v6 + 8))(v9, v5);
  return v25;
}

uint64_t sub_2543E4204@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_254406B10();
  *a2 = result;
  return result;
}

id MatterCommandActionMap.__allocating_init(condition:childMaps:)(void *a1, uint64_t a2)
{
  if (a2)
  {
    sub_2543E51AC(0, &qword_27F5F8B08, off_2797759E8);
    v4 = sub_254406B70();
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_allocWithZone(v2) initWithCondition:a1 childMaps:v4];

  return v5;
}

id sub_2543E461C(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t (*a4)(void), unsigned int *a5)
{
  v8 = sub_254406B20();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a3;
  v14 = a4(0);
  (*(*(v14 - 8) + 104))(v12, v13, v14);
  (*(v9 + 104))(v12, *a5, v8);
  v22[3] = v8;
  v22[4] = sub_2543E4EE8();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v22);
  (*(v9 + 16))(boxed_opaque_existential_1, v12, v8);
  v16 = type metadata accessor for MatterCommandMap();
  v17 = objc_allocWithZone(v16);
  sub_2543E3C48(v22, v17 + OBJC_IVAR___HREMatterCommandMap_template);
  v21.receiver = v17;
  v21.super_class = v16;
  v18 = objc_msgSendSuper2(&v21, sel_init);
  (*(v9 + 8))(v12, v8);
  __swift_destroy_boxed_opaque_existential_1(v22);

  return v18;
}

id sub_2543E4800(unsigned int *a1, uint64_t (*a2)(void), unsigned int *a3)
{
  v6 = sub_254406B20();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = a2(0);
  (*(*(v12 - 8) + 104))(v10, v11, v12);
  (*(v7 + 104))(v10, *a3, v6);
  v20[3] = v6;
  v20[4] = sub_2543E4EE8();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v20);
  (*(v7 + 16))(boxed_opaque_existential_1, v10, v6);
  v14 = type metadata accessor for MatterCommandMap();
  v15 = objc_allocWithZone(v14);
  sub_2543E3C48(v20, v15 + OBJC_IVAR___HREMatterCommandMap_template);
  v19.receiver = v15;
  v19.super_class = v14;
  v16 = objc_msgSendSuper2(&v19, sel_init);
  (*(v7 + 8))(v10, v6);
  __swift_destroy_boxed_opaque_existential_1(v20);
  return v16;
}

id sub_2543E49B8(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v4 = sub_254406B20();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v8, *a3, v4);
  v16[3] = v4;
  v16[4] = sub_2543E4EE8();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v16);
  (*(v5 + 16))(boxed_opaque_existential_1, v8, v4);
  v10 = type metadata accessor for MatterCommandMap();
  v11 = objc_allocWithZone(v10);
  sub_2543E3C48(v16, v11 + OBJC_IVAR___HREMatterCommandMap_template);
  v15.receiver = v11;
  v15.super_class = v10;
  v12 = objc_msgSendSuper2(&v15, sel_init);
  (*(v5 + 8))(v8, v4);
  __swift_destroy_boxed_opaque_existential_1(v16);

  return v12;
}

id sub_2543E4B34(unsigned int *a1)
{
  v2 = sub_254406B20();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, *a1, v2);
  v14[3] = v2;
  v14[4] = sub_2543E4EE8();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14);
  (*(v3 + 16))(boxed_opaque_existential_1, v6, v2);
  v8 = type metadata accessor for MatterCommandMap();
  v9 = objc_allocWithZone(v8);
  sub_2543E3C48(v14, v9 + OBJC_IVAR___HREMatterCommandMap_template);
  v13.receiver = v9;
  v13.super_class = v8;
  v10 = objc_msgSendSuper2(&v13, sel_init);
  (*(v3 + 8))(v6, v2);
  __swift_destroy_boxed_opaque_existential_1(v14);
  return v10;
}

id MatterCommandMap.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_2543E4D40(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void *sub_2543E4D88(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5F8B30, &qword_254409E58);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5F8B38, &qword_254409E60);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_2543E4ED0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_2543E4EE8()
{
  result = qword_27F5F8B10;
  if (!qword_27F5F8B10)
  {
    sub_254406B20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5F8B10);
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

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
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

uint64_t sub_2543E50A0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2543E5100@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_254406B10();
  *a2 = result;
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

uint64_t sub_2543E51AC(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

unint64_t HRETemplateRecommendationGeneratorProcess.matterCommandActions(for:with:)(unint64_t result, uint64_t a2)
{
  v3 = result;
  v11 = MEMORY[0x277D84FA0];
  if (!(result >> 62))
  {
    v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_13:
    v8 = MEMORY[0x277D84FA0];
LABEL_14:
    sub_2543E5D50(v8);
    v10 = v9;

    return v10;
  }

  result = sub_254406CB0();
  v4 = result;
  if (!result)
  {
    goto LABEL_13;
  }

LABEL_3:
  if (v4 >= 1)
  {
    for (i = 0; i != v4; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x259C0B190](i, v3);
      }

      else
      {
        v6 = *(v3 + 8 * i + 32);
        swift_unknownObjectRetain();
      }

      sub_2543E5318(v6, a2);
      if (v7)
      {
        sub_2543E5B58(v7);
      }

      swift_unknownObjectRelease();
    }

    v8 = v11;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_2543E5318(uint64_t a1, uint64_t a2)
{
  v99 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5F8B20, &qword_254409E50);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v76 - v5;
  v7 = sub_254406B00();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v98 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5F8D80, &qword_254409E48);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v97 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v76 - v15;
  v17 = sub_254406AC0();
  v18 = *(v17 - 8);
  v19 = v18[8];
  v20 = MEMORY[0x28223BE20](v17);
  v96 = &v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v76 - v22;
  swift_getObjectType();
  if ((sub_254406C00() & 1) == 0)
  {
    return;
  }

  v94 = v6;
  v95 = v7;
  v24 = sub_254406BF0();
  v25 = (v24 & 0xC000000000000001) != 0 ? sub_254406CB0() : *(v24 + 16);

  if (v25 != 1)
  {
    return;
  }

  v26 = sub_254406BF0();
  v27 = sub_2543E6380(v26);

  if (!v27)
  {
    return;
  }

  sub_2543E649C(v16);
  v28 = v18[6];
  if (v28(v16, 1, v17) == 1)
  {

    sub_2543E50A0(v16, &unk_27F5F8D80, &qword_254409E48);
    return;
  }

  v85 = v28;
  v86 = v18 + 6;
  v92 = v27;
  v90 = v2;
  v30 = v18[4];
  v29 = v18 + 4;
  v82 = v30;
  v30(v23, v16, v17);
  v31 = sub_254406AB0();
  v32 = sub_2543E7154(v31);
  v88 = 0;

  v33 = sub_2543E9620(v32);
  v93 = v33;

  v34 = 0;
  v36 = v33 + 56;
  v35 = *(v33 + 56);
  v37 = 1 << *(v33 + 32);
  v100[1] = MEMORY[0x277D84FA0];
  if (v37 < 64)
  {
    v38 = ~(-1 << v37);
  }

  else
  {
    v38 = -1;
  }

  v39 = v38 & v35;
  v40 = (v37 + 63) >> 6;
  v89 = (v8 + 48);
  v83 = v29;
  v84 = (v8 + 32);
  v87 = (v8 + 8);
  v91 = (v29 - 3);
  v41 = v99;
  while (v39)
  {
    v42 = v39;
LABEL_20:
    v39 = (v42 - 1) & v42;
    if (*(v41 + 16))
    {
      v44 = (*(v93 + 48) + ((v34 << 10) | (16 * __clz(__rbit64(v42)))));
      v45 = *v44;
      v46 = v44[1];
      v47 = v39;

      v48 = sub_2543E97D0(v45, v46);
      v50 = v49;

      v39 = v47;
      if (v50)
      {
        v51 = *(*(v41 + 56) + 8 * v48);
        type metadata accessor for MatterCommandActionMap();
        v52 = swift_dynamicCastClass();
        v39 = v47;
        if (v52)
        {
          v53 = v52;
          v54 = v51;
          v55 = [v90 snapshotContainer];
          if (v55)
          {
            v80 = v53;
            v81 = v54;
            v56 = v94;
            v57 = v55;
            sub_254406C10();
            v58 = v95;
            if ((*v89)(v56, 1, v95) == 1)
            {

              v59 = v56;
              v60 = &qword_27F5F8B20;
              v61 = &qword_254409E50;
              goto LABEL_29;
            }

            v79 = v57;
            v62 = v58;
            v63 = v98;
            (*v84)(v98, v56, v62);
            v64 = v97;
            sub_254406AF0();
            if (v85(v64, 1, v17) == 1)
            {

              (*v87)(v63, v95);
              v59 = v64;
              v60 = &unk_27F5F8D80;
              v61 = &qword_254409E48;
LABEL_29:
              sub_2543E50A0(v59, v60, v61);
              v39 = v47;
            }

            else
            {
              v65 = v96;
              v66 = v82(v96, v64, v17);
              v78 = &v76;
              v67 = *(v80 + OBJC_IVAR___HREMatterCommandActionMap_commandTemplates);
              MEMORY[0x28223BE20](v66);
              *(&v76 - 2) = v92;
              *(&v76 - 1) = v65;
              v68 = v88;
              v70 = sub_2543E3CAC(sub_2543E971C, (&v76 - 4), v69);
              (*v87)(v63, v95);
              (*v91)(v65, v17);
              v88 = v68;
              if (v70 >> 62)
              {
                if (sub_254406CB0())
                {
LABEL_32:
                  v78 = [v90 home];
                  LODWORD(v80) = *(v80 + OBJC_IVAR___HREMatterCommandActionMap_enforceExecutionOrder);
                  v77 = objc_allocWithZone(MEMORY[0x277D147C8]);
                  sub_2543E51AC(0, &qword_27F5F8B28, 0x277CD1B68);
                  v71 = v92;
                  v72 = sub_254406B70();

                  v73 = v78;
                  v74 = [v77 initWithHome:v78 commands:v72 accessory:v71 enforceExecutionOrder:v80];

                  sub_2543E7620(v100, v74);
                  v75 = v100[0];
                  goto LABEL_35;
                }
              }

              else if (*((v70 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_32;
              }

              v75 = v81;
LABEL_35:

              v41 = v99;
              v39 = v47;
            }
          }

          else
          {

            v39 = v47;
          }
        }
      }
    }
  }

  while (1)
  {
    v43 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      break;
    }

    if (v43 >= v40)
    {

      (*v91)(v23, v17);
      return;
    }

    v42 = *(v36 + 8 * v43);
    ++v34;
    if (v42)
    {
      v34 = v43;
      goto LABEL_20;
    }
  }

  __break(1u);
}

void sub_2543E5B58(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_254406C70();
    sub_2543E51AC(0, &qword_27F5F8E88, 0x277D147C8);
    sub_2543E96C4(&qword_27F5F8E90, &qword_27F5F8E88, 0x277D147C8);
    sub_254406BE0();
    v1 = v14[1];
    v2 = v14[2];
    v3 = v14[3];
    v4 = v14[4];
    v5 = v14[5];
  }

  else
  {
    v4 = 0;
    v6 = -1 << *(a1 + 32);
    v2 = (a1 + 56);
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = (v8 & *(a1 + 56));
  }

  if ((v1 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v9 = v4;
    v10 = v5;
    v11 = v4;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v12 = (v10 - 1) & v10;
    v13 = *(*(v1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v13)
    {
LABEL_18:
      sub_2543E9714();
      return;
    }

    while (1)
    {
      sub_2543E7620(v14, v13);

      v4 = v11;
      v5 = v12;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_254406CE0())
      {
        sub_2543E51AC(0, &qword_27F5F8E88, 0x277D147C8);
        swift_dynamicCast();
        v13 = v14[0];
        v11 = v4;
        v12 = v5;
        if (v14[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v11 = (v9 + 1);
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= ((v3 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v10 = v2[v11];
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_2543E5D50(uint64_t a1)
{
  v1 = a1;
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) == 0)
  {
    if (*(a1 + 16))
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = MEMORY[0x277D84FA0];
    goto LABEL_6;
  }

  if (!sub_254406CB0())
  {
    goto LABEL_5;
  }

LABEL_3:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5F8EA0, &qword_254409EA8);
  v3 = sub_254406D30();
LABEL_6:
  if (sub_2543E51AC(0, &qword_27F5F8E60, 0x277D14380) == MEMORY[0x277D837D0])
  {
    if (v2)
    {

      sub_254406C70();
      sub_2543E51AC(0, &qword_27F5F8E88, 0x277D147C8);
      sub_2543E96C4(&qword_27F5F8E90, &qword_27F5F8E88, 0x277D147C8);
      sub_254406BE0();
      v1 = v39;
      v8 = v40;
      v9 = v41;
      v10 = v42;
      v11 = v43;
    }

    else
    {
      v31 = -1 << *(v1 + 32);
      v8 = v1 + 56;
      v9 = ~v31;
      v32 = -v31;
      if (v32 < 64)
      {
        v33 = ~(-1 << v32);
      }

      else
      {
        v33 = -1;
      }

      v11 = v33 & *(v1 + 56);

      v10 = 0;
    }

    while (1)
    {
      if (v1 < 0)
      {
        if (!sub_254406CE0())
        {
LABEL_55:
          sub_2543E9714();

          return;
        }

        sub_2543E51AC(0, &qword_27F5F8E88, 0x277D147C8);
        swift_dynamicCast();
        v36 = v38;
      }

      else
      {
        if (v11)
        {
          v34 = v10;
        }

        else
        {
          v37 = v10;
          do
          {
            v34 = v37 + 1;
            if (__OFADD__(v37, 1))
            {
              goto LABEL_58;
            }

            if (v34 >= ((v9 + 64) >> 6))
            {
              goto LABEL_55;
            }

            v11 = *(v8 + 8 * v34);
            ++v37;
          }

          while (!v11);
          v10 = v34;
        }

        v35 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v36 = *(*(v1 + 48) + ((v34 << 9) | (8 * v35)));
      }

      sub_2543E78DC(v36);
    }
  }

  if (v2)
  {

    sub_254406C70();
    sub_2543E51AC(0, &qword_27F5F8E88, 0x277D147C8);
    sub_2543E96C4(&qword_27F5F8E90, &qword_27F5F8E88, 0x277D147C8);
    sub_254406BE0();
    v1 = v39;
    v4 = v40;
    v5 = v41;
    v6 = v42;
    v7 = v43;
  }

  else
  {
    v12 = -1 << *(v1 + 32);
    v4 = v1 + 56;
    v5 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v7 = v14 & *(v1 + 56);

    v6 = 0;
  }

  v15 = (v5 + 64) >> 6;
  v16 = v3 + 56;
  while (v1 < 0)
  {
    if (!sub_254406CE0())
    {
      goto LABEL_55;
    }

    sub_2543E51AC(0, &qword_27F5F8E88, 0x277D147C8);
    swift_dynamicCast();
    v19 = v38;
LABEL_29:
    v22 = *(v3 + 40);
    v23 = sub_254406C20();
    v24 = -1 << *(v3 + 32);
    v25 = v23 & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v16 + 8 * (v25 >> 6))) != 0)
    {
      v17 = __clz(__rbit64((-1 << v25) & ~*(v16 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v27 = 0;
      v28 = (63 - v24) >> 6;
      do
      {
        if (++v26 == v28 && (v27 & 1) != 0)
        {
          __break(1u);
          goto LABEL_57;
        }

        v29 = v26 == v28;
        if (v26 == v28)
        {
          v26 = 0;
        }

        v27 |= v29;
        v30 = *(v16 + 8 * v26);
      }

      while (v30 == -1);
      v17 = __clz(__rbit64(~v30)) + (v26 << 6);
    }

    *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
    *(*(v3 + 48) + 8 * v17) = v19;
    ++*(v3 + 16);
  }

  if (v7)
  {
    v18 = v6;
LABEL_28:
    v21 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v38 = *(*(v1 + 48) + ((v18 << 9) | (8 * v21)));
    v19 = v38;
    goto LABEL_29;
  }

  v20 = v6;
  while (1)
  {
    v18 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v18 >= v15)
    {
      goto LABEL_55;
    }

    v7 = *(v4 + 8 * v18);
    ++v20;
    if (v7)
    {
      v6 = v18;
      goto LABEL_28;
    }
  }

LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
}

uint64_t sub_2543E6380(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_254406C60();
    v5 = v4;
    v6 = sub_254406CF0();
    v8 = v7;
    v9 = MEMORY[0x259C0B0C0](v3, v5, v6, v7);
    sub_2543E96B8(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_2543E96B8(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    v3 = sub_254406C40();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_2543E93FC(v3, v5, v2 != 0, a1);
  v13 = v12;
  sub_2543E96B8(v3, v5, v2 != 0);
  return v13;
}

uint64_t sub_2543E649C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5F8D80, &qword_254409E48);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v31 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5F8B20, &qword_254409E50);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v31 - v9;
  v11 = sub_254406B00();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  if (sub_254406C00())
  {
    v16 = sub_254406BF0();
    if ((v16 & 0xC000000000000001) != 0)
    {
      v32 = v15;
      v17 = sub_254406CB0();
      v15 = v32;
    }

    else
    {
      v17 = *(v16 + 16);
    }

    if (v17 == 1)
    {
      v18 = sub_254406BF0();
      v19 = sub_2543E6380(v18);

      if (v19)
      {
        v20 = [v1 snapshotContainer];
        if (v20)
        {
          v21 = v20;
          sub_254406C10();

          if ((*(v12 + 48))(v10, 1, v11) != 1)
          {
            (*(v12 + 32))(v15, v10, v11);
            sub_254406AF0();

            (*(v12 + 8))(v15, v11);
            v29 = sub_254406AC0();
            v30 = *(v29 - 8);
            if ((*(v30 + 48))(v6, 1, v29) != 1)
            {
              (*(v30 + 32))(a1, v6, v29);
              return (*(v30 + 56))(a1, 0, 1, v29);
            }

            v25 = &unk_27F5F8D80;
            v26 = &qword_254409E48;
            v27 = v6;
            goto LABEL_15;
          }
        }

        else
        {

          (*(v12 + 56))(v10, 1, 1, v11);
        }

        v25 = &qword_27F5F8B20;
        v26 = &qword_254409E50;
        v27 = v10;
LABEL_15:
        sub_2543E50A0(v27, v25, v26);
        v28 = sub_254406AC0();
        return (*(*(v28 - 8) + 56))(a1, 1, 1, v28);
      }
    }
  }

  v22 = sub_254406AC0();
  v23 = *(*(v22 - 8) + 56);

  return v23(a1, 1, 1, v22);
}

uint64_t StaticEndpoint.recommendationDeviceTypes.getter()
{
  v0 = sub_254406AB0();
  v1 = sub_2543E7154(v0);

  v2 = sub_2543E9620(v1);

  return v2;
}

uint64_t HRETemplateRecommendationGeneratorProcess.additionalIncludedObjects(in:with:)(unint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5F8D80, &qword_254409E48);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v62 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5F8B20, &qword_254409E50);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v62 - v10;
  ObjectType = sub_254406B00();
  v13 = *(ObjectType - 1);
  v14 = v13[8];
  MEMORY[0x28223BE20](ObjectType);
  v74 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_254406AC0();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v71 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v70 = &v62 - v22;
  v83 = MEMORY[0x277D84F90];
  v77 = a1;
  if (a1 >> 62)
  {
LABEL_41:
    v61 = v21;
    v23 = sub_254406CB0();
    v21 = v61;
    if (v23)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v23 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v23)
    {
LABEL_3:
      v64 = a2;
      a2 = 0;
      v24 = v77 & 0xC000000000000001;
      v25 = v77 & 0xFFFFFFFFFFFFFF8;
      v72 = (v13 + 6);
      v67 = (v13 + 4);
      v68 = 0;
      v65 = (v17 + 48);
      v66 = (v13 + 1);
      v63 = (v17 + 32);
      v62 = (v17 + 8);
      v69 = (v13 + 7);
      v75 = ObjectType;
      v76 = v11;
      v11 = (v77 + 32);
      v73 = v21;
      v80 = (v77 + 32);
      v81 = v77 & 0xC000000000000001;
      v82 = v77 & 0xFFFFFFFFFFFFFF8;
      v79 = v23;
      while (1)
      {
        if (v24)
        {
          v17 = MEMORY[0x259C0B190](a2, v77);
          v26 = __OFADD__(a2++, 1);
          if (v26)
          {
LABEL_38:
            __break(1u);
            return v83;
          }
        }

        else
        {
          if (a2 >= *(v25 + 16))
          {
            __break(1u);
            goto LABEL_41;
          }

          v17 = *&v11[8 * a2];
          swift_unknownObjectRetain();
          v26 = __OFADD__(a2++, 1);
          if (v26)
          {
            goto LABEL_38;
          }
        }

        ObjectType = swift_getObjectType();
        v13 = v17;
        if (sub_254406C00() & 1) != 0 && (v13 = v17, (sub_254406C00()) && ((v27 = sub_254406BF0(), (v27 & 0xC000000000000001) == 0) ? (v13 = *(v27 + 16)) : (v13 = sub_254406CB0()), , v13 == 1))
        {
          v28 = sub_254406BF0();
          v13 = v28;
          v29 = v28 & 0xC000000000000001;
          if ((v28 & 0xC000000000000001) != 0)
          {
            v30 = v28 & 0xC000000000000001;
            v31 = sub_254406C60();
            v33 = v32;
            ObjectType = sub_254406CF0();
            v34 = v7;
            v36 = v35;
            v37 = MEMORY[0x259C0B0C0](v31, v33, ObjectType, v35);
            v38 = v36;
            v7 = v34;
            sub_2543E96B8(ObjectType, v38, 1);
            v29 = v30;
            v23 = v79;
            if (v37)
            {
              goto LABEL_23;
            }
          }

          else
          {
            v39 = 0;
            v40 = (v28 + 56);
            v31 = 1 << *(v28 + 32);
            v41 = (v31 + 63) >> 6;
            while (1)
            {
              v43 = *v40++;
              v42 = v43;
              if (v43)
              {
                break;
              }

              v39 -= 64;
              if (!--v41)
              {
                v33 = *(v28 + 36);
                goto LABEL_23;
              }
            }

            v44 = __clz(__rbit64(v42));
            v33 = *(v28 + 36);
            if (v44 - v31 == v39)
            {
LABEL_23:
              sub_2543E96B8(v31, v33, v29 != 0);
              swift_unknownObjectRelease();

              v24 = v81;
              v25 = v82;
              v11 = v80;
              goto LABEL_5;
            }

            v31 = v44 - v39;
          }

          v45 = v29 != 0;
          sub_2543E93FC(v31, v33, v29 != 0, v13);
          ObjectType = v46;
          sub_2543E96B8(v31, v33, v45);

          v47 = [v78 snapshotContainer];
          if (v47)
          {
            v13 = v47;
            v48 = v76;
            sub_254406C10();

            v49 = v75;
            v50 = (*v72)(v48, 1, v75);
            v51 = v73;
            v25 = v82;
            if (v50 != 1)
            {
              v13 = v74;
              (*v67)(v74, v48, v49);
              sub_254406AF0();

              (*v66)(v13, v49);
              if ((*v65)(v7, 1, v51) == 1)
              {
                swift_unknownObjectRelease();
                v21 = sub_2543E50A0(v7, &unk_27F5F8D80, &qword_254409E48);
              }

              else
              {
                v52 = *v63;
                v53 = v71;
                (*v63)(v71, v7, v51);
                ObjectType = v70;
                v52(v70, v53, v51);
                v54 = sub_254406AB0();
                v55 = v68;
                v56 = sub_2543E7154(v54);
                v68 = v55;

                v57 = sub_2543E9620(v56);

                v13 = sub_2543E8BA8(v64, v57);
                (*v62)(ObjectType, v51);
                v58 = v13[2];

                if (v58)
                {
                  v13 = &v83;
                  sub_254406D60();
                  v59 = *(v83 + 16);
                  sub_254406D80();
                  sub_254406D90();
                  v21 = sub_254406D70();
                }

                else
                {
                  v21 = swift_unknownObjectRelease();
                }
              }

              v11 = v80;
              v24 = v81;
              goto LABEL_5;
            }

            swift_unknownObjectRelease();
          }

          else
          {

            swift_unknownObjectRelease();
            v48 = v76;
            (*v69)(v76, 1, 1, v75);
            v25 = v82;
          }

          v11 = v80;
          v21 = sub_2543E50A0(v48, &qword_27F5F8B20, &qword_254409E50);
          v24 = v81;
        }

        else
        {
          v21 = swift_unknownObjectRelease();
        }

LABEL_5:
        if (a2 == v23)
        {
          return v83;
        }
      }
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_2543E7154(uint64_t a1)
{
  v44 = sub_254406AE0();
  v3 = *(v44 - 8);
  v4 = v3[8];
  MEMORY[0x28223BE20](v44);
  v43 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (!v6)
  {
    return v7;
  }

  v35 = v1;
  v51 = MEMORY[0x277D84F90];
  sub_2543E8A7C(0, v6, 0);
  v7 = v51;
  v8 = a1 + 56;
  v9 = -1 << *(a1 + 32);
  result = sub_254406C40();
  v11 = result;
  v12 = 0;
  v41 = v3 + 2;
  v42 = 0x800000025440A1C0;
  v39 = a1 + 56;
  v40 = v3 + 1;
  v36 = a1 + 64;
  v37 = v6;
  v38 = v3;
  while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(a1 + 32))
  {
    v14 = v11 >> 6;
    if ((*(v8 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
    {
      goto LABEL_21;
    }

    v15 = *(a1 + 36);
    v45 = v12;
    v46 = v15;
    v16 = *(a1 + 48) + v3[9] * v11;
    v17 = v3[2];
    v47 = v7;
    v19 = v43;
    v18 = v44;
    v17(v43, v16, v44);
    v49 = 0;
    v50 = 0xE000000000000000;
    sub_254406D40();

    v49 = 0xD000000000000014;
    v50 = v42;
    v48 = sub_254406AD0();
    v20 = sub_254406DB0();
    MEMORY[0x259C0AF90](v20);

    v21 = v3;
    v22 = v49;
    v23 = v50;
    v24 = v19;
    v7 = v47;
    result = (v21[1])(v24, v18);
    v51 = v7;
    v26 = *(v7 + 16);
    v25 = *(v7 + 24);
    if (v26 >= v25 >> 1)
    {
      result = sub_2543E8A7C((v25 > 1), v26 + 1, 1);
      v7 = v51;
    }

    *(v7 + 16) = v26 + 1;
    v27 = v7 + 16 * v26;
    *(v27 + 32) = v22;
    *(v27 + 40) = v23;
    v13 = 1 << *(a1 + 32);
    if (v11 >= v13)
    {
      goto LABEL_22;
    }

    v8 = v39;
    v28 = *(v39 + 8 * v14);
    if ((v28 & (1 << v11)) == 0)
    {
      goto LABEL_23;
    }

    if (v46 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v29 = v28 & (-2 << (v11 & 0x3F));
    if (v29)
    {
      v13 = __clz(__rbit64(v29)) | v11 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v30 = v14 << 6;
      v31 = v14 + 1;
      v32 = (v36 + 8 * v14);
      while (v31 < (v13 + 63) >> 6)
      {
        v34 = *v32++;
        v33 = v34;
        v30 += 64;
        ++v31;
        if (v34)
        {
          result = sub_2543E96B8(v11, v46, 0);
          v13 = __clz(__rbit64(v33)) + v30;
          goto LABEL_4;
        }
      }

      result = sub_2543E96B8(v11, v46, 0);
    }

LABEL_4:
    v12 = v45 + 1;
    v11 = v13;
    v3 = v38;
    if (v45 + 1 == v37)
    {
      return v7;
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

uint64_t sub_2543E74D0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_254406DE0();
  sub_254406B40();
  v9 = sub_254406DF0();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_254406DC0() & 1) != 0)
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

    sub_2543E8094(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_2543E7620(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_254406CC0();

    if (v9)
    {

      sub_2543E51AC(0, &qword_27F5F8E88, 0x277D147C8);
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_254406CB0();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_2543E7A1C(v7, result + 1);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_2543E7E6C(v22 + 1);
    }

    v20 = v8;
    sub_2543E7858(v20, v21);

    *v3 = v21;
    goto LABEL_16;
  }

  sub_2543E51AC(0, &qword_27F5F8E88, 0x277D147C8);
  v11 = *(v6 + 40);
  v12 = sub_254406C20();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_2543E8214(v20, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_254406C30();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v23 = *(*(v6 + 48) + 8 * v14);
  *a1 = v23;
  v24 = v23;
  return 0;
}

unint64_t sub_2543E7858(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_254406C20();
  v5 = -1 << *(a2 + 32);
  result = sub_254406C50();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_2543E78DC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  v5 = sub_254406C20();
  v6 = v3 + 56;
  v7 = -1 << *(v3 + 32);
  v8 = v5 & ~v7;
  v9 = v8 >> 6;
  v10 = *(v3 + 56 + 8 * (v8 >> 6));
  v11 = 1 << v8;
  if (((1 << v8) & v10) != 0)
  {
    v12 = ~v7;
    sub_2543E51AC(0, &qword_27F5F8E60, 0x277D14380);
    while (1)
    {
      v13 = *(*(v3 + 48) + 8 * v8);
      v14 = sub_254406C30();

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

uint64_t sub_2543E7A1C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5F8E98, &qword_254409EA0);
    v2 = sub_254406D20();
    v16 = v2;
    sub_254406C70();
    if (sub_254406CE0())
    {
      sub_2543E51AC(0, &qword_27F5F8E88, 0x277D147C8);
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_2543E7E6C(v10 + 1);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        result = sub_254406C20();
        v5 = v16 + 56;
        v6 = -1 << *(v16 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v16 + 48) + 8 * v9) = v15;
        ++*(v16 + 16);
      }

      while (sub_254406CE0());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_2543E7C0C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5F8E70, &qword_254409E90);
  result = sub_254406D10();
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
      sub_254406DE0();
      sub_254406B40();
      result = sub_254406DF0();
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

uint64_t sub_2543E7E6C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5F8E98, &qword_254409EA0);
  result = sub_254406D10();
  v6 = result;
  if (*(v3 + 16))
  {
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
      result = sub_254406C20();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
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

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_2543E8094(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_2543E7C0C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_2543E8384();
      goto LABEL_16;
    }

    sub_2543E8630(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_254406DE0();
  sub_254406B40();
  result = sub_254406DF0();
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

      result = sub_254406DC0();
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
  result = sub_254406DD0();
  __break(1u);
  return result;
}

void sub_2543E8214(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2543E7E6C(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_2543E84E0();
      goto LABEL_12;
    }

    sub_2543E8868(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  v10 = sub_254406C20();
  v11 = -1 << *(v8 + 32);
  a2 = v10 & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    sub_2543E51AC(0, &qword_27F5F8E88, 0x277D147C8);
    do
    {
      v13 = *(*(v8 + 48) + 8 * a2);
      v14 = sub_254406C30();

      if (v14)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v15 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + 8 * a2) = a1;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v15 + 16) = v18;
    return;
  }

  __break(1u);
LABEL_15:
  sub_254406DD0();
  __break(1u);
}

void *sub_2543E8384()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5F8E70, &qword_254409E90);
  v2 = *v0;
  v3 = sub_254406D00();
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

id sub_2543E84E0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5F8E98, &qword_254409EA0);
  v2 = *v0;
  v3 = sub_254406D00();
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

uint64_t sub_2543E8630(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5F8E70, &qword_254409E90);
  result = sub_254406D10();
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
      sub_254406DE0();

      sub_254406B40();
      result = sub_254406DF0();
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

uint64_t sub_2543E8868(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5F8E98, &qword_254409EA0);
  result = sub_254406D10();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(v6 + 40);
      v18 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      result = sub_254406C20();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v18;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
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

char *sub_2543E8A7C(char *a1, int64_t a2, char a3)
{
  result = sub_2543E8A9C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2543E8A9C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5F8E80, &qword_254409E98);
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

uint64_t sub_2543E8BA8(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    bzero(v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v9 = sub_2543E8DFC(v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v6, a2, a1);
  }

  else
  {
    v12 = swift_slowAlloc();

    v9 = sub_2543E8D6C(v12, v6, a2, a1);

    MEMORY[0x259C0B7F0](v12, -1, -1);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

void *sub_2543E8D6C(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_2543E8DFC(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_2543E8DFC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v52 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v55 = 0;
    v13 = 0;
    v14 = a3 + 56;
    v15 = 1 << *(a3 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(a3 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = a4 + 56;
    while (v17)
    {
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_18:
      v53 = v20 | (v13 << 6);
      v23 = (*(a3 + 48) + 16 * v53);
      v25 = *v23;
      v24 = v23[1];
      v26 = *(v4 + 40);
      sub_254406DE0();

      sub_254406B40();
      v27 = sub_254406DF0();
      v28 = -1 << *(v4 + 32);
      v29 = v27 & ~v28;
      if ((*(v19 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29))
      {
        v30 = ~v28;
        while (1)
        {
          v31 = (*(a4 + 48) + 16 * v29);
          v32 = *v31 == v25 && v31[1] == v24;
          if (v32 || (sub_254406DC0() & 1) != 0)
          {
            break;
          }

          v29 = (v29 + 1) & v30;
          if (((*(v19 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        *(v52 + ((v53 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v53;
        v33 = __OFADD__(v55++, 1);
        v4 = a4;
        if (v33)
        {
          __break(1u);
LABEL_30:
          v5 = a3;
LABEL_31:

          return sub_2543E91D8(v52, a2, v55, v5);
        }
      }

      else
      {
LABEL_10:

        v4 = a4;
      }
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_30;
      }

      v22 = *(v14 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

LABEL_54:
    __break(1u);
  }

  else
  {
    v55 = 0;
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = a3 + 56;
    v51 = v11;
    while (v10)
    {
      v34 = __clz(__rbit64(v10));
      v54 = (v10 - 1) & v10;
LABEL_41:
      v37 = (*(v4 + 48) + 16 * (v34 | (v6 << 6)));
      v39 = *v37;
      v38 = v37[1];
      v40 = *(v5 + 40);
      sub_254406DE0();

      sub_254406B40();
      v41 = sub_254406DF0();
      v42 = -1 << *(v5 + 32);
      v43 = v41 & ~v42;
      v44 = v43 >> 6;
      v45 = 1 << v43;
      if (((1 << v43) & *(v12 + 8 * (v43 >> 6))) != 0)
      {
        v46 = (*(v5 + 48) + 16 * v43);
        if (*v46 != v39 || v46[1] != v38)
        {
          v48 = ~v42;
          while ((sub_254406DC0() & 1) == 0)
          {
            v43 = (v43 + 1) & v48;
            v44 = v43 >> 6;
            v45 = 1 << v43;
            if (((1 << v43) & *(v12 + 8 * (v43 >> 6))) == 0)
            {
              v5 = a3;
              goto LABEL_33;
            }

            v49 = (*(a3 + 48) + 16 * v43);
            if (*v49 == v39 && v49[1] == v38)
            {
              break;
            }
          }
        }

        v11 = v51;
        v52[v44] |= v45;
        v5 = a3;
        v33 = __OFADD__(v55++, 1);
        v4 = a4;
        v10 = v54;
        if (v33)
        {
          __break(1u);
          goto LABEL_54;
        }
      }

      else
      {
LABEL_33:

        v4 = a4;
        v11 = v51;
        v10 = v54;
      }
    }

    v35 = v6;
    while (1)
    {
      v6 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_31;
      }

      v36 = *(v7 + 8 * v6);
      ++v35;
      if (v36)
      {
        v34 = __clz(__rbit64(v36));
        v54 = (v36 - 1) & v36;
        goto LABEL_41;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2543E91D8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5F8E70, &qword_254409E90);
  result = sub_254406D30();
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
    sub_254406DE0();

    sub_254406B40();
    result = sub_254406DF0();
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

void sub_2543E93FC(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x259C0B110](a1, a2, v7);
      sub_2543E51AC(0, &qword_27F5F8E78, 0x277CD1650);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_2543E51AC(0, &qword_27F5F8E78, 0x277CD1650);
    if (sub_254406C90() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_254406CA0();
    swift_dynamicCast();
    v4 = v16;
    v8 = *(a4 + 40);
    v9 = sub_254406C20();
    v10 = -1 << *(a4 + 32);
    v6 = v9 & ~v10;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v11 = ~v10;
      do
      {
        v12 = *(*(a4 + 48) + 8 * v6);
        v13 = sub_254406C30();

        if (v13)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v11;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v14 = *(*(a4 + 48) + 8 * v6);

  v15 = v14;
}

uint64_t sub_2543E9620(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x259C0B010](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_2543E74D0(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_2543E96B8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_2543E96C4(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_2543E51AC(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2543E971C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_2543E4204(a1, a2);
}

unint64_t sub_2543E97D0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_254406DE0();
  sub_254406B40();
  v6 = sub_254406DF0();

  return sub_2543E9848(a1, a2, v6);
}

unint64_t sub_2543E9848(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_254406DC0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t _sSo31HRERecommendableObjectUtilitiesC24HomeRecommendationEngineE013recommendableB0_10involvedIn17snapshotContainerSbSo24HFAccessoryRepresentable_So0aB8Protocolp_SDySSSo12HREActionMapCGSo016HFMatterSnapshotK0CSgtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5F8D80, &qword_254409E48);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v49 - v7;
  v9 = sub_254406AC0();
  v52 = *(v9 - 8);
  v10 = *(v52 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5F8B20, &qword_254409E50);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v49 - v15;
  v17 = sub_254406B00();
  v53 = *(v17 - 8);
  v18 = *(v53 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  if ((sub_254406C00() & 1) == 0)
  {
    return 0;
  }

  v50 = v9;
  v51 = a2;
  v21 = sub_254406BF0();
  v22 = (v21 & 0xC000000000000001) != 0 ? sub_254406CB0() : *(v21 + 16);

  if (v22 != 1)
  {
    return 0;
  }

  v23 = sub_254406BF0();
  v24 = sub_2543E6380(v23);

  if (!v24)
  {
    return 0;
  }

  if (!a3)
  {

    (*(v53 + 56))(v16, 1, 1, v17);
    goto LABEL_11;
  }

  sub_254406C10();
  v25 = v53;
  if ((*(v53 + 48))(v16, 1, v17) == 1)
  {

LABEL_11:
    v26 = &qword_27F5F8B20;
    v27 = &qword_254409E50;
    v28 = v16;
LABEL_12:
    sub_2543E50A0(v28, v26, v27);
    return 0;
  }

  (*(v25 + 32))(v20, v16, v17);
  sub_254406AF0();
  v30 = v52;
  v31 = v50;
  if ((*(v52 + 48))(v8, 1, v50) == 1)
  {
    (*(v25 + 8))(v20, v17);

    v26 = &unk_27F5F8D80;
    v27 = &qword_254409E48;
    v28 = v8;
    goto LABEL_12;
  }

  (*(v30 + 32))(v12, v8, v31);
  v32 = sub_254406AB0();
  v33 = sub_2543E7154(v32);

  v34 = sub_2543E9620(v33);

  v35 = v34 + 56;
  v36 = 1 << *(v34 + 32);
  v37 = -1;
  if (v36 < 64)
  {
    v37 = ~(-1 << v36);
  }

  v38 = v37 & *(v34 + 56);
  v39 = (v36 + 63) >> 6;

  v40 = 0;
  v49 = v24;
  while (v38)
  {
    v41 = v38;
LABEL_26:
    v38 = (v41 - 1) & v41;
    if (*(v51 + 16))
    {
      v43 = (*(v34 + 48) + ((v40 << 10) | (16 * __clz(__rbit64(v41)))));
      v44 = v34;
      v46 = *v43;
      v45 = v43[1];

      sub_2543E97D0(v46, v45);
      LOBYTE(v46) = v47;
      v34 = v44;
      v24 = v49;

      if (v46)
      {

        v48 = 1;
LABEL_30:

        (*(v52 + 8))(v12, v50);
        (*(v53 + 8))(v20, v17);

        return v48;
      }
    }
  }

  while (1)
  {
    v42 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      break;
    }

    if (v42 >= v39)
    {

      v48 = 0;
      goto LABEL_30;
    }

    v41 = *(v35 + 8 * v42);
    ++v40;
    if (v41)
    {
      v40 = v42;
      goto LABEL_26;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_2543E9E04()
{
  result = qword_27F5F8B08;
  if (!qword_27F5F8B08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F5F8B08);
  }

  return result;
}

void sub_2543F8D68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t HRETelevisionProfileType()
{
  v0 = objc_opt_class();

  return [v0 description];
}

uint64_t HRECameraProfileType()
{
  v0 = objc_opt_class();

  return [v0 description];
}

uint64_t HRELightProfileType()
{
  v0 = objc_opt_class();

  return [v0 description];
}

void *_HRELocalizedStringWithDefaultValue(void *a1, void *a2, int a3)
{
  v5 = a1;
  v6 = a2;
  v7 = HREHomeRecommendationBundle();
  v8 = [v7 localizedStringForKey:v5 value:@"_" table:@"HRELocalizable"];

  v9 = [@"_" isEqualToString:v8];
  if (v9)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v9 && a3)
  {
    NSLog(&cfstr_MissingLocaliz.isa, v5, @"HRELocalizable");
    v10 = v6;
  }

  v11 = v10;

  return v10;
}

id HREHomeRecommendationBundle()
{
  if (qword_27F5F9810 != -1)
  {
    dispatch_once(&qword_27F5F9810, &__block_literal_global_10);
  }

  v1 = _MergedGlobals_25;

  return v1;
}

uint64_t __HREHomeRecommendationBundle_block_invoke()
{
  _MergedGlobals_25 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];

  return MEMORY[0x2821F96F8]();
}

void sub_2543FF1EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2543FFB14(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_254401D64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}