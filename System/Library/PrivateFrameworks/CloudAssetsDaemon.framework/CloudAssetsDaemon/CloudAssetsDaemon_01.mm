void sub_24380F868()
{
  OUTLINED_FUNCTION_36_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v50 = v6(0);
  v7 = OUTLINED_FUNCTION_9(v50);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v49 = &v45 - v12;
  v13 = *v1;
  if (*(*v1 + 24) > v5)
  {
    v14 = *(*v1 + 24);
  }

  v15 = OUTLINED_FUNCTION_29();
  __swift_instantiateConcreteTypeFromMangledNameV2(v15, v16);
  OUTLINED_FUNCTION_6_0();
  v48 = v3;
  v17 = sub_24381CF04();
  v18 = v17;
  if (!*(v13 + 16))
  {
LABEL_34:

LABEL_35:
    *v1 = v18;
    OUTLINED_FUNCTION_33_0();
    return;
  }

  v45 = v1;
  v19 = 0;
  v20 = (v13 + 64);
  v21 = 1 << *(v13 + 32);
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  else
  {
    v22 = -1;
  }

  v23 = v22 & *(v13 + 64);
  v24 = (v21 + 63) >> 6;
  v46 = (v9 + 16);
  v47 = v9;
  v25 = (v9 + 32);
  v26 = v17 + 64;
  if (!v23)
  {
LABEL_9:
    v28 = v19;
    while (1)
    {
      v19 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v19 >= v24)
      {
        break;
      }

      v29 = v20[v19];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v23 = (v29 - 1) & v29;
        goto LABEL_14;
      }
    }

    if ((v48 & 1) == 0)
    {

      v1 = v45;
      goto LABEL_35;
    }

    v44 = 1 << *(v13 + 32);
    v1 = v45;
    if (v44 >= 64)
    {
      sub_243809FA8(0, (v44 + 63) >> 6, v13 + 64);
    }

    else
    {
      *v20 = -1 << v44;
    }

    *(v13 + 16) = 0;
    goto LABEL_34;
  }

  while (1)
  {
    v27 = __clz(__rbit64(v23));
    v23 &= v23 - 1;
LABEL_14:
    v30 = v27 | (v19 << 6);
    v31 = *(*(v13 + 48) + 8 * v30);
    v32 = *(v9 + 72);
    v33 = *(v13 + 56) + v32 * v30;
    if (v48)
    {
      (*v25)(v49, v33, v50);
    }

    else
    {
      (*v46)(v49, v33, v50);
    }

    v34 = *(v18 + 40);
    v35 = sub_24381CFB4();
    v36 = -1 << *(v18 + 32);
    v37 = v35 & ~v36;
    v38 = v37 >> 6;
    if (((-1 << v37) & ~*(v26 + 8 * (v37 >> 6))) == 0)
    {
      break;
    }

    v39 = __clz(__rbit64((-1 << v37) & ~*(v26 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v26 + ((v39 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v39;
    *(*(v18 + 48) + 8 * v39) = v31;
    (*v25)((*(v18 + 56) + v32 * v39), v49, v50);
    ++*(v18 + 16);
    v9 = v47;
    if (!v23)
    {
      goto LABEL_9;
    }
  }

  v40 = 0;
  v41 = (63 - v36) >> 6;
  while (++v38 != v41 || (v40 & 1) == 0)
  {
    v42 = v38 == v41;
    if (v38 == v41)
    {
      v38 = 0;
    }

    v40 |= v42;
    v43 = *(v26 + 8 * v38);
    if (v43 != -1)
    {
      v39 = __clz(__rbit64(~v43)) + (v38 << 6);
      goto LABEL_26;
    }
  }

LABEL_37:
  __break(1u);
}

void *sub_24380FB88(void *a1, int64_t a2, char a3)
{
  result = sub_24380FEC0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_24380FBA8()
{
  v1 = *v0;
  sub_24380FFF8();
  *v0 = v2;
}

void sub_24380FBE8()
{
  v1 = *v0;
  sub_24380FFF8();
  *v0 = v2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_24380FCD8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for Registerer.Context()
{
  result = qword_27ED93280;
  if (!qword_27ED93280)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24380FD98()
{
  sub_24380FE38();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_24380FE38()
{
  if (!qword_27ED92FA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED92FB0, &qword_24381DB28);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED92DE0, &unk_24381D950);
    v0 = sub_24381CCA4();
    if (!v1)
    {
      atomic_store(v0, &qword_27ED92FA8);
    }
  }
}

void *sub_24380FEC0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92FE8, &qword_24381DB68);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[3 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92FF0, &unk_24381DB70);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_24380FFF8()
{
  OUTLINED_FUNCTION_36_0();
  v5 = v4;
  v7 = v6;
  v8 = v1;
  v10 = v9;
  if (v11)
  {
    v12 = *(v1 + 24);
    v13 = v12 >> 1;
    if ((v12 >> 1) < v0)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_25:
        __break(1u);
        return;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= v0)
      {
        v13 = v0;
      }
    }
  }

  else
  {
    v13 = v0;
  }

  v14 = *(v1 + 16);
  if (v13 <= v14)
  {
    v15 = *(v1 + 16);
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v21 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v5);
  OUTLINED_FUNCTION_1(v16);
  v18 = *(v17 + 72);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v21 = swift_allocObject();
  v22 = _swift_stdlib_malloc_size(v21);
  if (!v18)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v22 - v20 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_24;
  }

  v21[2] = v14;
  v21[3] = 2 * ((v22 - v20) / v18);
LABEL_19:
  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v7, v5) - 8);
  if (v10)
  {
    v25 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    sub_24380E800(v8 + v25, v14, v21 + v25);
    *(v8 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_33_0();
}

uint64_t sub_2438101AC()
{
  OUTLINED_FUNCTION_14_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_0_1(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_17_0();
  v7(v6);
  return v0;
}

uint64_t sub_24381020C()
{
  OUTLINED_FUNCTION_14_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_0_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_17_0();
  v7(v6);
  return v0;
}

unint64_t sub_243810264()
{
  result = qword_27ED93028;
  if (!qword_27ED93028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED93028);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_3()
{

  return swift_once();
}

uint64_t sub_243810378()
{
  sub_24381CFC4();
  MEMORY[0x245D41050](0);
  return sub_24381CFE4();
}

uint64_t sub_2438103CC()
{
  sub_24381CFC4();
  MEMORY[0x245D41050](0);
  return sub_24381CFE4();
}

unint64_t sub_243810410()
{
  result = qword_27ED93030;
  if (!qword_27ED93030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED93030);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ProcessorError(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for ProcessorError(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x243810564);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

void sub_2438105A8()
{
  OUTLINED_FUNCTION_36_0();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92EC0, &qword_24381D9E0);
  v1 = OUTLINED_FUNCTION_0_1(v36);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_76();
  v35 = v4;
  OUTLINED_FUNCTION_68_0();
  MEMORY[0x28223BE20](v5);
  v34 = &v31 - v6;
  v37 = v0;
  v7 = *(v0 + 16);
  v8 = *(v7 + 16);
  if (v8)
  {
    v42 = MEMORY[0x277D84F90];
    sub_24380A00C(0, v8, 0);
    v9 = v42;
    v11 = sub_24380AF24(v7);
    v12 = v7 + 64;
    v13 = v8 - 1;
    v32 = v7 + 64;
    v33 = v7;
    if ((v11 & 0x8000000000000000) == 0)
    {
      while (v11 < 1 << *(v7 + 32))
      {
        if ((*(v12 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
        {
          goto LABEL_16;
        }

        if (v10 != *(v7 + 36))
        {
          goto LABEL_17;
        }

        v39 = v10;
        v40 = v11 >> 6;
        v38 = v13;
        v41 = v9;
        v14 = v36;
        v15 = *(v36 + 48);
        v16 = *(v7 + 56);
        v17 = *(*(v7 + 48) + 8 * v11);
        v18 = sub_24381CA14();
        OUTLINED_FUNCTION_9(v18);
        v20 = v19;
        v22 = v34;
        (*(v19 + 16))(&v34[v15], v16 + *(v21 + 72) * v11, v18);
        v23 = v35;
        *v35 = v17;
        v24 = *(v14 + 48);
        v9 = v41;
        (*(v20 + 32))(v23 + v24, &v22[v15], v18);
        sub_24381086C();
        v26 = v25;
        sub_24380B1F4(v23, &qword_27ED92EC0, &qword_24381D9E0);
        v42 = v9;
        v28 = *(v9 + 16);
        v27 = *(v9 + 24);
        if (v28 >= v27 >> 1)
        {
          v30 = OUTLINED_FUNCTION_28_0(v27);
          sub_24380A00C(v30, v28 + 1, 1);
          v9 = v42;
        }

        *(v9 + 16) = v28 + 1;
        *(v9 + 8 * v28 + 32) = v26;
        v7 = v33;
        if (v11 >= -(-1 << *(v33 + 32)))
        {
          goto LABEL_18;
        }

        v12 = v32;
        if ((*(v32 + 8 * v40) & (1 << v11)) == 0)
        {
          goto LABEL_19;
        }

        if (v39 != *(v33 + 36))
        {
          goto LABEL_20;
        }

        v29 = sub_24381CE14();
        if (!v38)
        {
          goto LABEL_14;
        }

        v11 = v29;
        v10 = *(v7 + 36);
        v13 = v38 - 1;
        if (v29 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_14:
    OUTLINED_FUNCTION_33_0();
  }
}

void sub_24381086C()
{
  OUTLINED_FUNCTION_36_0();
  v1 = v0;
  v3 = v2;
  v4 = sub_24381C9A4();
  v5 = OUTLINED_FUNCTION_9(v4);
  v61 = v6;
  v62 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_0();
  v60 = v9;
  OUTLINED_FUNCTION_60();
  v10 = sub_24381C9F4();
  v11 = OUTLINED_FUNCTION_9(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v11);
  v18 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v59 - v19;
  sub_24381CA04();
  v66 = sub_24381C9E4();
  v67 = v21;
  v22 = *(v13 + 8);
  v63 = v10;
  v64 = v22;
  v22(v20, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92EB0, &unk_24381D9D0);
  inited = swift_initStackObject();
  v65 = xmmword_24381D830;
  *(inited + 16) = xmmword_24381D830;
  if (!*MEMORY[0x277D254B0])
  {
    goto LABEL_15;
  }

  *(inited + 32) = sub_24381CB84();
  *(inited + 40) = v24;
  *(inited + 72) = MEMORY[0x277D83B88];
  *(inited + 48) = v3;
  sub_24381CB24();
  swift_beginAccess();
  v25 = sub_243810D1C(v3, *(v1 + 24));
  v27 = v26;
  v29 = v28;
  swift_endAccess();
  if (v29)
  {
    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED930F8, &unk_24381DE80);
  v30 = swift_initStackObject();
  *(v30 + 16) = xmmword_24381D840;
  if (!*MEMORY[0x277D25630])
  {
    goto LABEL_16;
  }

  *(v30 + 32) = sub_24381CB84();
  *(v30 + 40) = v31;
  *(v30 + 48) = v25;
  if (!*MEMORY[0x277D25638])
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  *(v30 + 56) = sub_24381CB84();
  *(v30 + 64) = v32;
  if (__OFSUB__(v27, v25))
  {
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  *(v30 + 72) = v27 - v25;
  v33 = sub_24381CB24();
  sub_243810D80(v33);

  swift_isUniquelyReferenced_nonNull_native();
  v34 = OUTLINED_FUNCTION_8_2();
  sub_24381867C(v34, v35, v36, v37, v38);
LABEL_7:
  v40 = v66;
  v39 = v67;
  if (sub_2438013D8(v66, v67))
  {
    sub_2437FF838(v40, v39);
LABEL_13:
    OUTLINED_FUNCTION_33_0();
    return;
  }

  v59 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92ED8, &qword_24381D9F8);
  v41 = swift_initStackObject();
  *(v41 + 16) = v65;
  if (!*MEMORY[0x277D25660])
  {
    goto LABEL_18;
  }

  *(v41 + 32) = sub_24381CB84();
  *(v41 + 40) = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92EE0, &unk_24381DA00);
  v43 = swift_initStackObject();
  *(v43 + 16) = xmmword_24381D840;
  if (!*MEMORY[0x277D254F0])
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  *(v43 + 32) = sub_24381CB84();
  *(v43 + 40) = v44;
  sub_24381CA04();
  v45 = sub_24381C9E4();
  v47 = v46;
  v64(v18, v63);
  *(v43 + 48) = v45;
  *(v43 + 56) = v47;
  if (*MEMORY[0x277D254F8])
  {
    *(v43 + 64) = sub_24381CB84();
    *(v43 + 72) = v48;
    v49 = v60;
    sub_24381C9C4();
    v50 = sub_24381C984();
    v52 = v51;
    (*(v61 + 8))(v49, v62);
    *(v43 + 80) = v50;
    *(v43 + 88) = v52;
    *(v41 + 48) = sub_24381CB24();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92EE8, &unk_24381DB90);
    v53 = sub_24381CB24();
    sub_24380143C(v53);

    swift_isUniquelyReferenced_nonNull_native();
    v54 = OUTLINED_FUNCTION_8_2();
    sub_24381867C(v54, v55, v56, v57, v58);
    sub_2437FF838(v66, v67);
    goto LABEL_13;
  }

LABEL_20:
  __break(1u);
}

uint64_t sub_243810D1C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_243800504(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = (*(a2 + 56) + 16 * v3);
  result = *v5;
  v7 = v5[1];
  return result;
}

unint64_t sub_243810D80(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92EF8, &qword_24381DBA0);
    v2 = sub_24381CF14();
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
  while (v5)
  {
    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = v10 | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    v24 = *(*(a1 + 56) + 8 * v11);

    swift_dynamicCast();
    sub_24380B0CC(&v25, v27);
    sub_24380B0CC(v27, v28);
    sub_24380B0CC(v28, &v26);
    result = sub_24380939C(v14, v13);
    v15 = result;
    if (v16)
    {
      v17 = (v2[6] + 16 * result);
      v18 = v17[1];
      *v17 = v14;
      v17[1] = v13;

      v19 = (v2[7] + 32 * v15);
      __swift_destroy_boxed_opaque_existential_1(v19);
      result = sub_24380B0CC(&v26, v19);
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v20 = (v2[6] + 16 * result);
      *v20 = v14;
      v20[1] = v13;
      result = sub_24380B0CC(&v26, (v2[7] + 32 * result));
      v21 = v2[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_20;
      }

      v2[2] = v23;
      v8 = v9;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_243810FBC()
{
  v1 = v0[2];

  v2 = v0[3];

  sub_24381933C(v0[4], v0[5]);
  sub_24381933C(v0[6], v0[7]);
  v3 = v0[10];

  return MEMORY[0x2821FE8D8](v0, 88, 7);
}

uint64_t type metadata accessor for Downloader.AssetDownloadResult()
{
  result = qword_27ED93430;
  if (!qword_27ED93430)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_243811060()
{
  v0 = sub_24381CA64();
  __swift_allocate_value_buffer(v0, qword_27ED93448);
  __swift_project_value_buffer(v0, qword_27ED93448);
  sub_24381C794();
  OUTLINED_FUNCTION_60_0();
  type metadata accessor for Downloader();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED930B0, &unk_24381DE08);
  sub_24381CBB4();
  OUTLINED_FUNCTION_23_1();
  return sub_24381CA54();
}

uint64_t sub_2438110FC(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

void sub_24381115C()
{
  OUTLINED_FUNCTION_36_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v214 = type metadata accessor for Downloader.AssetDownloadResult();
  v10 = OUTLINED_FUNCTION_0_1(v214);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_4_0();
  v216 = v13;
  v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED93138, &qword_24381DEC8);
  OUTLINED_FUNCTION_9(v217);
  v215 = v14;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_31_0();
  MEMORY[0x28223BE20](v17);
  v19 = &v210 - v18;
  v20 = sub_24381C694();
  v21 = OUTLINED_FUNCTION_9(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_42();
  v28 = v27 - v26;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED93140, &unk_24381DED0);
  OUTLINED_FUNCTION_38(v29);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_31_0();
  MEMORY[0x28223BE20](v32);
  v33 = sub_24381C6E4();
  v34 = OUTLINED_FUNCTION_9(v33);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_42();
  v41 = v40 - v39;
  if (v9)
  {
    v42 = *v9;
    if (v3)
    {
      type metadata accessor for CFError(0);
      OUTLINED_FUNCTION_15_2();
      sub_243819364(v43, v44);
      OUTLINED_FUNCTION_45_0();
      v45 = OUTLINED_FUNCTION_49_0();
      *v46 = v3;
      v47 = v3;

      v48 = sub_24381C674();

      v49 = [v48 code];
      if (v49 == *sub_24381A64C())
      {
        if (_MergedGlobals_2 != -1)
        {
          OUTLINED_FUNCTION_0_4();
          swift_once();
        }

        v50 = sub_24381CA64();
        OUTLINED_FUNCTION_47_0(v50, qword_27ED93448);
        v51 = v48;
        v52 = sub_24381CA44();
        v53 = sub_24381CD84();

        if (os_log_type_enabled(v52, v53))
        {
          v54 = OUTLINED_FUNCTION_42_0();
          v55 = v42;
          v56 = OUTLINED_FUNCTION_54_0();
          *v54 = 138412290;
          *(v54 + 4) = v51;
          *v56 = v51;
          v57 = v51;
          OUTLINED_FUNCTION_9_2();
          _os_log_impl(v58, v59, v60, v61, v62, 0xCu);
          sub_24380B1F4(v56, &qword_27ED92E38, &unk_24381DBD0);
          v42 = v55;
          OUTLINED_FUNCTION_35_0();
          OUTLINED_FUNCTION_22_1();
        }

        v63 = [v51 localizedDescription];
        sub_24381CB84();
        OUTLINED_FUNCTION_60_0();

        OUTLINED_FUNCTION_49_1();
        MEMORY[0x28223BE20](v64);
        OUTLINED_FUNCTION_51_1();
        v67 = OUTLINED_FUNCTION_46_1(v65, v66);
        v68 = *(v67 + 16);
        if (v68)
        {
          v217 = v47;
          v213 = v42;
          *&v221 = MEMORY[0x277D84F90];
          v69 = OUTLINED_FUNCTION_8_1();
          sub_24380A0AC(v69, v70, v71);
          v72 = v221;
          v73 = (v67 + 56);
          do
          {
            v74 = *(v73 - 3);
            v75 = *(v73 - 2);
            v76 = *(v73 - 1);
            v77 = *v73;

            v78 = MEMORY[0x245D40C50](v74, v75, v76, v77);
            v80 = v79;

            *&v221 = v72;
            v82 = *(v72 + 16);
            v81 = *(v72 + 24);
            if (v82 >= v81 >> 1)
            {
              v84 = OUTLINED_FUNCTION_28_0(v81);
              sub_24380A0AC(v84, v82 + 1, 1);
              v72 = v221;
            }

            *(v72 + 16) = v82 + 1;
            v83 = v72 + 16 * v82;
            *(v83 + 32) = v78;
            *(v83 + 40) = v80;
            v73 += 4;
            --v68;
          }

          while (v68);

          v47 = v217;
        }

        else
        {

          v72 = MEMORY[0x277D84F90];
        }

        v171 = sub_24381C954();
        OUTLINED_FUNCTION_18_1();
        sub_243819364(v172, v173);
        v174 = OUTLINED_FUNCTION_49_0();
        *v175 = v72;
        (*(*(v171 - 8) + 104))(v175, *MEMORY[0x277CFA920], v171);
        *&v221 = v174;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92DD0, &unk_24381D800);
        OUTLINED_FUNCTION_46_0();
        sub_24381CD14();
      }

      else
      {
        if (_MergedGlobals_2 != -1)
        {
          OUTLINED_FUNCTION_0_4();
          swift_once();
        }

        v146 = sub_24381CA64();
        OUTLINED_FUNCTION_47_0(v146, qword_27ED93448);
        v147 = v48;
        v148 = sub_24381CA44();
        v149 = sub_24381CD84();

        if (OUTLINED_FUNCTION_72_0())
        {
          v150 = OUTLINED_FUNCTION_42_0();
          v151 = OUTLINED_FUNCTION_54_0();
          *v150 = 138412290;
          *(v150 + 4) = v147;
          *v151 = v147;
          v152 = v147;
          OUTLINED_FUNCTION_35_1(&dword_2437FA000, v153, v149, "mmcs engine returns error %@");
          sub_24380B1F4(v151, &qword_27ED92E38, &unk_24381DBD0);
          OUTLINED_FUNCTION_35_0();
          OUTLINED_FUNCTION_27_0();
        }

        sub_24380043C();
        *&v221 = OUTLINED_FUNCTION_49_0();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92DD0, &unk_24381D800);
        OUTLINED_FUNCTION_46_0();
        sub_24381CD14();
      }

      goto LABEL_89;
    }

    v210 = v7;
    if (!v5)
    {
      sub_24380043C();
      *&v221 = OUTLINED_FUNCTION_49_0();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92DD0, &unk_24381D800);
      OUTLINED_FUNCTION_46_0();
      sub_24381CD14();
      if (_MergedGlobals_2 != -1)
      {
        OUTLINED_FUNCTION_0_4();
        swift_once();
      }

      v162 = sub_24381CA64();
      OUTLINED_FUNCTION_47_0(v162, qword_27ED93448);
      v163 = sub_24381CA44();
      v164 = sub_24381CD84();
      if (OUTLINED_FUNCTION_55_0(v164))
      {
        v165 = OUTLINED_FUNCTION_42_0();
        *v165 = 134349056;
        *(v165 + 4) = v210;
        OUTLINED_FUNCTION_9_2();
        _os_log_impl(v166, v167, v168, v169, v170, 0xCu);
        OUTLINED_FUNCTION_22_1();
      }

      goto LABEL_89;
    }

    v211 = v38;
    v212 = v41;
    v91 = v37;
    v92 = objc_opt_self();
    v213 = v42;

    v93 = [v92 defaultManager];
    v94 = [v93 stringWithFileSystemRepresentation:v5 length:strlen(v5)];

    sub_24381CB84();
    OUTLINED_FUNCTION_47_1();
    v95 = v91;
    v96 = v91;
    v97 = v212;
    __swift_storeEnumTagSinglePayload(v98, v99, v100, v96);
    (*(v23 + 104))(v28, *MEMORY[0x277CC91D8], v20);
    sub_24381C6D4();
    if (!v1 || (objc_opt_self(), !swift_dynamicCastObjCClass()) || (*&v221 = 0, sub_24381CB04(), (v101 = v221) == 0))
    {
      sub_24380043C();
      *&v221 = OUTLINED_FUNCTION_49_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92DD0, &unk_24381D800);
      OUTLINED_FUNCTION_46_0();
      sub_24381CD14();
      if (_MergedGlobals_2 != -1)
      {
        OUTLINED_FUNCTION_0_4();
        swift_once();
      }

      v154 = sub_24381CA64();
      OUTLINED_FUNCTION_47_0(v154, qword_27ED93448);
      v155 = sub_24381CA44();
      v156 = sub_24381CD84();
      if (OUTLINED_FUNCTION_55_0(v156))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_9_2();
        _os_log_impl(v157, v158, v159, v160, v161, 2u);
        OUTLINED_FUNCTION_22_1();

LABEL_88:
        (*(v211 + 8))(v212, v95);
        goto LABEL_89;
      }

LABEL_87:

      goto LABEL_88;
    }

    if (!*MEMORY[0x277D25640])
    {
      goto LABEL_93;
    }

    v102 = *MEMORY[0x277D25640];
    v103 = sub_24381CB84();
    sub_2438033D0(v103, v104, v101, &v221);

    v105 = v222;
    sub_24380B1F4(&v221, &qword_27ED92F70, &qword_24381DA88);
    if (v105)
    {
      v106 = sub_24381CB84();
      sub_2438033D0(v106, v107, v101, &v219);

      if (v220)
      {

        sub_24380B0CC(&v219, &v221);
        sub_24380B24C();
        swift_dynamicCast();
        v108 = v218;
        v109 = [v218 code];
        v110 = sub_24381A64C();
        v111 = _MergedGlobals_2;
        if (v109 == *v110)
        {
          if (_MergedGlobals_2 != -1)
          {
            OUTLINED_FUNCTION_0_4();
            swift_once();
          }

          v112 = sub_24381CA64();
          OUTLINED_FUNCTION_47_0(v112, qword_27ED93448);
          v113 = v108;
          v114 = sub_24381CA44();
          v115 = sub_24381CD84();

          if (os_log_type_enabled(v114, v115))
          {
            v116 = OUTLINED_FUNCTION_42_0();
            v117 = OUTLINED_FUNCTION_54_0();
            *v116 = 138412290;
            *(v116 + 4) = v113;
            *v117 = v113;
            v118 = v113;
            OUTLINED_FUNCTION_9_2();
            _os_log_impl(v119, v120, v121, v122, v123, 0xCu);
            sub_24380B1F4(v117, &qword_27ED92E38, &unk_24381DBD0);
            OUTLINED_FUNCTION_20_1();
            OUTLINED_FUNCTION_22_1();
          }

          v124 = [v113 description];
          sub_24381CB84();
          OUTLINED_FUNCTION_60_0();

          OUTLINED_FUNCTION_49_1();
          MEMORY[0x28223BE20](v125);
          OUTLINED_FUNCTION_51_1();
          v128 = OUTLINED_FUNCTION_46_1(v126, v127);
          v129 = *(v128 + 16);
          if (v129)
          {
            v217 = v113;
            *&v221 = MEMORY[0x277D84F90];
            v130 = OUTLINED_FUNCTION_8_1();
            sub_24380A0AC(v130, v131, v132);
            v133 = v221;
            v134 = (v128 + 56);
            do
            {
              v135 = *(v134 - 3);
              v136 = *(v134 - 2);
              v137 = *(v134 - 1);
              v138 = *v134;

              v139 = MEMORY[0x245D40C50](v135, v136, v137, v138);
              v141 = v140;

              *&v221 = v133;
              v143 = *(v133 + 16);
              v142 = *(v133 + 24);
              if (v143 >= v142 >> 1)
              {
                v145 = OUTLINED_FUNCTION_28_0(v142);
                sub_24380A0AC(v145, v143 + 1, 1);
                v133 = v221;
              }

              *(v133 + 16) = v143 + 1;
              v144 = v133 + 16 * v143;
              *(v144 + 32) = v139;
              *(v144 + 40) = v141;
              v134 += 4;
              --v129;
            }

            while (v129);

            v113 = v217;
          }

          else
          {

            v133 = MEMORY[0x277D84F90];
          }

          v205 = sub_24381C954();
          OUTLINED_FUNCTION_18_1();
          sub_243819364(v206, v207);
          v208 = OUTLINED_FUNCTION_49_0();
          *v209 = v133;
          (*(*(v205 - 8) + 104))(v209, *MEMORY[0x277CFA920], v205);
          *&v221 = v208;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92DD0, &unk_24381D800);
          OUTLINED_FUNCTION_46_0();
          sub_24381CD14();

          goto LABEL_87;
        }

LABEL_66:
        if (v111 != -1)
        {
          OUTLINED_FUNCTION_0_4();
          swift_once();
        }

        v182 = sub_24381CA64();
        OUTLINED_FUNCTION_47_0(v182, qword_27ED93448);
        v183 = v108;
        v184 = sub_24381CA44();
        sub_24381CD84();

        if (OUTLINED_FUNCTION_72_0())
        {
          v185 = OUTLINED_FUNCTION_42_0();
          v186 = OUTLINED_FUNCTION_54_0();
          *v185 = 138412290;
          *(v185 + 4) = v183;
          *v186 = v183;
          v187 = v183;
          OUTLINED_FUNCTION_70(&dword_2437FA000, v188, v189, "mmcs engine returns error %@");
          sub_24380B1F4(v186, &qword_27ED92E38, &unk_24381DBD0);
          OUTLINED_FUNCTION_27_0();
          OUTLINED_FUNCTION_20_1();
        }

        sub_24380043C();
        *&v221 = OUTLINED_FUNCTION_49_0();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92DD0, &unk_24381D800);
        OUTLINED_FUNCTION_46_0();
        sub_24381CD14();

        goto LABEL_87;
      }

      goto LABEL_94;
    }

    if (!*MEMORY[0x277D25648])
    {
LABEL_95:
      __break(1u);
      goto LABEL_96;
    }

    v176 = sub_24381CB84();
    OUTLINED_FUNCTION_56_1(v176, v177);

    if (!v222)
    {
      goto LABEL_71;
    }

    if ((OUTLINED_FUNCTION_33_1() & 1) == 0)
    {
      goto LABEL_72;
    }

    if (!*MEMORY[0x277D25650])
    {
LABEL_97:
      __break(1u);
      return;
    }

    v178 = v219;
    v179 = sub_24381CB84();
    OUTLINED_FUNCTION_56_1(v179, v180);

    if (v222)
    {
      if (OUTLINED_FUNCTION_33_1())
      {

        v111 = v219;
        v108 = (v178 + v219);
        if (__OFADD__(v178, v219))
        {
LABEL_92:
          __break(1u);
LABEL_93:
          __break(1u);
LABEL_94:
          __break(1u);
          goto LABEL_95;
        }

        v181 = v211;
        if (v108 < v178)
        {
          __break(1u);
          goto LABEL_66;
        }

        goto LABEL_77;
      }
    }

    else
    {
LABEL_71:
      sub_24380B1F4(&v221, &qword_27ED92F70, &qword_24381DA88);
    }

LABEL_72:
    if (!*MEMORY[0x277D25480])
    {
LABEL_96:
      __break(1u);
      goto LABEL_97;
    }

    v190 = sub_24381CB84();
    OUTLINED_FUNCTION_56_1(v190, v191);

    if (v222)
    {
      if (OUTLINED_FUNCTION_33_1())
      {
        v108 = v219;
        v181 = v211;
        if ((v219 & 0x8000000000000000) != 0)
        {
LABEL_91:
          __break(1u);
          goto LABEL_92;
        }

        v178 = 0;
LABEL_77:
        v192 = v210;
        if ((v210 & 0x8000000000000000) == 0)
        {
          v193 = v214;
          v194 = v216;
          v195 = v181;
          (*(v181 + 16))(v216 + *(v214 + 20), v97, v95);
          *v194 = v192;
          v196 = (v194 + *(v193 + 24));
          *v196 = v178;
          v196[1] = v108;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92DD0, &unk_24381D800);
          sub_24381CD04();

          (*(v215 + 8))(v19, v217);
          (*(v195 + 8))(v97, v95);
LABEL_89:
          OUTLINED_FUNCTION_33_0();
          return;
        }

        __break(1u);
        goto LABEL_91;
      }
    }

    else
    {
      sub_24380B1F4(&v221, &qword_27ED92F70, &qword_24381DA88);
    }

    if (_MergedGlobals_2 != -1)
    {
      OUTLINED_FUNCTION_0_4();
      swift_once();
    }

    v197 = sub_24381CA64();
    OUTLINED_FUNCTION_47_0(v197, qword_27ED93448);
    v198 = sub_24381CA44();
    v199 = sub_24381CD84();
    if (OUTLINED_FUNCTION_55_0(v199))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_9_2();
      _os_log_impl(v200, v201, v202, v203, v204, 2u);
      OUTLINED_FUNCTION_22_1();
    }

    sub_24380043C();
    *&v221 = OUTLINED_FUNCTION_49_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92DD0, &unk_24381D800);
    OUTLINED_FUNCTION_46_0();
    sub_24381CD14();
    goto LABEL_87;
  }

  v85 = v7;
  if (_MergedGlobals_2 != -1)
  {
    OUTLINED_FUNCTION_0_4();
    swift_once();
  }

  v86 = sub_24381CA64();
  OUTLINED_FUNCTION_47_0(v86, qword_27ED93448);
  v217 = sub_24381CA44();
  v87 = sub_24381CD84();
  if (os_log_type_enabled(v217, v87))
  {
    v88 = OUTLINED_FUNCTION_42_0();
    *v88 = 134349056;
    *(v88 + 4) = v85;
    _os_log_impl(&dword_2437FA000, v217, v87, "context for downloading asset with tracking number %{public}llu can not be loaded", v88, 0xCu);
    OUTLINED_FUNCTION_35_0();
  }

  OUTLINED_FUNCTION_33_0();
}

void sub_243812308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v7 = a5;
  v8 = a6;
  sub_24381115C();
}

uint64_t sub_243812390()
{
  OUTLINED_FUNCTION_13();
  v1[12] = v2;
  v1[13] = v0;
  v1[10] = v3;
  v1[11] = v4;
  v1[8] = v5;
  v1[9] = v6;
  v1[7] = v7;
  v1[14] = *v0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED93058, &qword_24381DD88);
  v1[15] = v8;
  OUTLINED_FUNCTION_1(v8);
  v1[16] = v9;
  v11 = *(v10 + 64);
  v1[17] = OUTLINED_FUNCTION_32();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED93060, &unk_24381DD90);
  v1[18] = v12;
  OUTLINED_FUNCTION_1(v12);
  v1[19] = v13;
  v15 = *(v14 + 64);
  v1[20] = OUTLINED_FUNCTION_32();
  v16 = sub_24381C894();
  v1[21] = v16;
  OUTLINED_FUNCTION_1(v16);
  v1[22] = v17;
  v19 = *(v18 + 64);
  v1[23] = OUTLINED_FUNCTION_32();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92FC0, &qword_24381DB38);
  v1[24] = v20;
  OUTLINED_FUNCTION_1(v20);
  v1[25] = v21;
  v23 = *(v22 + 64);
  v1[26] = OUTLINED_FUNCTION_32();
  v24 = sub_24381CCD4();
  v1[27] = v24;
  OUTLINED_FUNCTION_1(v24);
  v1[28] = v25;
  v27 = *(v26 + 64);
  v1[29] = OUTLINED_FUNCTION_32();
  v28 = OUTLINED_FUNCTION_7_0();

  return MEMORY[0x2822009F8](v28);
}

uint64_t sub_2438125BC()
{
  v59 = v0;
  if (_MergedGlobals_2 != -1)
  {
    OUTLINED_FUNCTION_0_4();
    swift_once();
  }

  v1 = v0[8];
  v2 = sub_24381CA64();
  OUTLINED_FUNCTION_47_0(v2, qword_27ED93448);

  v3 = sub_24381CA44();
  v4 = sub_24381CD94();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[28];
    v5 = v0[29];
    v7 = v0[27];
    v8 = v0[21];
    v9 = v0[8];
    v10 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    *v10 = 136315394;
    v11 = MEMORY[0x245D40CE0](v9, v8);
    v13 = sub_243808908(v11, v12, &v58);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2080;
    sub_24381CCE4();
    sub_243819364(&qword_27ED92DF0, MEMORY[0x277D85720]);
    v14 = sub_24381CF24();
    v16 = v15;
    (*(v6 + 8))(v5, v7);
    v17 = sub_243808908(v14, v16, &v58);

    *(v10 + 14) = v17;
    _os_log_impl(&dword_2437FA000, v3, v4, "processing %s with priority %s", v10, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_35_0();
    OUTLINED_FUNCTION_14_0();
  }

  v18 = v0[8];
  v0[30] = *(*(*(v0[13] + 16) + 24) + OBJC_IVAR____TtC17CloudAssetsDaemon13TenantContext_requestTracker);
  v19 = *(v18 + 16);
  if (v19)
  {
    v56 = v0[24];
    v57 = v0[25];
    v20 = v0[22];
    v58 = MEMORY[0x277D84F90];

    OUTLINED_FUNCTION_44_1();
    sub_24380FBA8();
    v21 = v58;
    v23 = *(v20 + 16);
    v20 += 16;
    v22 = v23;
    v24 = *(v20 + 64);
    OUTLINED_FUNCTION_37_1();
    v26 = v18 + v25;
    v55 = *(v20 + 56);
    v27 = (v20 - 8);
    do
    {
      v28 = v0[26];
      v29 = v0[23];
      v30 = v0[21];
      v22(v29, v26, v30);
      v0[5] = v30;
      v0[6] = sub_243819364(&qword_27ED93068, MEMORY[0x277CFA830]);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
      v22(boxed_opaque_existential_1, v29, v30);
      v32 = sub_243800058((v0 + 2));
      __swift_destroy_boxed_opaque_existential_1(v0 + 2);
      v33 = *(v56 + 48);
      *v28 = v32;
      sub_24381C874();
      (*v27)(v29, v30);
      v58 = v21;
      v35 = *(v21 + 16);
      v34 = *(v21 + 24);
      if (v35 >= v34 >> 1)
      {
        OUTLINED_FUNCTION_28_0(v34);
        sub_24380FBA8();
        v21 = v58;
      }

      v36 = v0[26];
      *(v21 + 16) = v35 + 1;
      v37 = *(v57 + 80);
      OUTLINED_FUNCTION_37_1();
      sub_2438198C8(v40, v21 + v38 + *(v39 + 72) * v35, &qword_27ED92FC0, &qword_24381DB38);
      v26 += v55;
      --v19;
    }

    while (v19);
  }

  else
  {

    v21 = MEMORY[0x277D84F90];
  }

  v0[31] = sub_243812E60(v21, &qword_27ED92FB8, &qword_24381DB30, sub_24380ECB4);

  v41 = sub_24381CA44();
  v42 = sub_24381CD94();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = OUTLINED_FUNCTION_42_0();
    v44 = OUTLINED_FUNCTION_63();
    v58 = v44;
    *v43 = 136315138;
    sub_24381CA14();

    sub_24381CB34();

    v45 = OUTLINED_FUNCTION_57_0();
    v48 = sub_243808908(v45, v46, v47);

    *(v43 + 4) = v48;
    OUTLINED_FUNCTION_35_1(&dword_2437FA000, v49, v42, "start downloading assets with tracking numbers %s");
    __swift_destroy_boxed_opaque_existential_1(v44);
    OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_27_0();
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_20();
  v0[32] = v50;
  *v50 = v51;
  v50[1] = sub_243812AF0;
  v52 = v0[20];
  v53 = v0[13];

  return sub_243812F04();
}

uint64_t sub_243812AF0()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  v5 = *(v4 + 256);
  v6 = *(v4 + 248);
  v7 = *v1;
  OUTLINED_FUNCTION_4();
  *v8 = v7;
  *(v9 + 264) = v0;

  OUTLINED_FUNCTION_14();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_243812C04()
{
  v10 = v0[30];
  v17 = v0[29];
  v18 = v0[26];
  v19 = v0[23];
  v1 = v0[20];
  v15 = v0[19];
  v16 = v0[18];
  v2 = v0[16];
  v13 = v0[17];
  v14 = v0[15];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[11];
  v6 = v0[12];
  v11 = v0[14];
  v12 = v0[7];
  v7 = swift_task_alloc();
  v7[2] = v1;
  v7[3] = v10;
  v7[4] = v4;
  v7[5] = v3;
  v7[6] = v5;
  v7[7] = v6;
  v7[8] = v11;
  sub_24381C8E4();
  (*(v2 + 104))(v13, *MEMORY[0x277D858A0], v14);
  sub_24381CD54();

  (*(v15 + 8))(v1, v16);

  OUTLINED_FUNCTION_12();

  return v8();
}

uint64_t sub_243812DB8()
{
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[26];
  v4 = v0[23];
  v5 = v0[20];
  v6 = v0[17];

  OUTLINED_FUNCTION_12();
  v8 = v0[33];

  return v7();
}

uint64_t sub_243812E60(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t, uint64_t, uint64_t *))
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    OUTLINED_FUNCTION_45_0();
    v5 = sub_24381CF14();
  }

  else
  {
    v5 = MEMORY[0x277D84F98];
  }

  v8 = v5;

  a4(v6, 1, &v8);

  return v8;
}

uint64_t sub_243812F04()
{
  OUTLINED_FUNCTION_13();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v1[5] = *v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED93038, &qword_24381DCD8);
  v1[6] = v4;
  OUTLINED_FUNCTION_38(v4);
  v6 = *(v5 + 64) + 15;
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED93040, &qword_24381DCE0);
  v1[9] = v7;
  OUTLINED_FUNCTION_1(v7);
  v1[10] = v8;
  v10 = *(v9 + 64);
  v1[11] = OUTLINED_FUNCTION_32();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED93048, &unk_24381DCE8);
  v1[12] = v11;
  OUTLINED_FUNCTION_1(v11);
  v1[13] = v12;
  v14 = *(v13 + 64);
  v1[14] = OUTLINED_FUNCTION_32();
  v15 = OUTLINED_FUNCTION_7_0();

  return MEMORY[0x2822009F8](v15);
}

void sub_24381307C()
{
  v72 = v0;
  v1 = v0[3];
  v53 = *(*(*(v0[4] + 16) + 24) + OBJC_IVAR____TtC17CloudAssetsDaemon13TenantContext_requestTracker);

  v3 = sub_2438156D0(v2);
  v4 = *(v3 + 16);
  if (v4)
  {
    v57 = v0[9];
    v58 = v0[10];
    v60 = v0[6];
    v70 = MEMORY[0x277D84F90];
    sub_243818C80();
    v68 = v70;
    v7 = sub_24380AF24(v3);
    v8 = 0;
    v9 = v3 + 64;
    v55 = v5;
    v56 = v4;
    v54 = v3 + 72;
    v61 = v3;
    v62 = v0;
    v59 = v3 + 64;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v3 + 32))
    {
      if ((*(v9 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_29;
      }

      if (*(v3 + 36) != v5)
      {
        goto LABEL_30;
      }

      v64 = v8;
      v65 = v5;
      v63 = v6;
      v10 = v0[11];
      v12 = v0[7];
      v11 = v0[8];
      v13 = *(v3 + 48);
      v14 = sub_24381C6E4();
      OUTLINED_FUNCTION_9(v14);
      v16 = v15;
      v18 = v13 + *(v17 + 72) * v7;
      v19 = *(v15 + 16);
      v19(v11, v18, v14);
      v20 = *(*(v3 + 56) + 8 * v7);
      (*(v16 + 32))(v12, v11, v14);
      *(v12 + *(v60 + 48)) = v20;
      v19(v10, v12, v14);

      if (*(sub_243815D64(v21) + 16))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92FB8, &qword_24381DB30);
        OUTLINED_FUNCTION_45_0();
        v22 = sub_24381CF14();
      }

      else
      {
        v22 = MEMORY[0x277D84F98];
      }

      v71 = v22;

      sub_24380ECB4(v23, 1, &v71);
      v3 = v61;
      v0 = v62;
      v9 = v59;
      v24 = v62[11];
      v25 = v62[7];

      *(v24 + *(v57 + 48)) = v71;
      sub_24380B1F4(v25, &qword_27ED93038, &qword_24381DCD8);
      v26 = v68;
      v28 = *(v68 + 16);
      v27 = *(v68 + 24);
      if (v28 >= v27 >> 1)
      {
        OUTLINED_FUNCTION_28_0(v27);
        sub_243818C80();
        v26 = v68;
      }

      v29 = v62[11];
      *(v26 + 16) = v28 + 1;
      v30 = *(v58 + 80);
      OUTLINED_FUNCTION_37_1();
      v68 = v31;
      sub_2438198C8(v34, v31 + v32 + *(v33 + 72) * v28, &qword_27ED93040, &qword_24381DCE0);
      v35 = 1 << *(v61 + 32);
      if (v7 >= v35)
      {
        goto LABEL_31;
      }

      if ((*(v59 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_32;
      }

      if (*(v61 + 36) != v65)
      {
        goto LABEL_33;
      }

      OUTLINED_FUNCTION_58_1();
      if (v38)
      {
        v39 = v37 << 6;
        v40 = (v54 + 8 * v37);
        v41 = v37 + 1;
        while (v41 < (v35 + 63) >> 6)
        {
          v43 = *v40++;
          v42 = v43;
          v39 += 64;
          ++v41;
          if (v43)
          {
            sub_24380AF64(v7, v36, v63 & 1);
            v35 = __clz(__rbit64(v42)) + v39;
            goto LABEL_22;
          }
        }

        sub_24380AF64(v7, v36, v63 & 1);
      }

      else
      {
        OUTLINED_FUNCTION_57_1();
      }

LABEL_22:
      v6 = 0;
      v8 = v64 + 1;
      v7 = v35;
      v5 = v55;
      if (v64 + 1 == v56)
      {

        v44 = v68;
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {

    v44 = MEMORY[0x277D84F90];
LABEL_25:
    v45 = v0[13];
    v46 = v0[14];
    v47 = v0[12];
    v66 = v0[11];
    v67 = v0[8];
    v69 = v0[7];
    v49 = v0[4];
    v48 = v0[5];
    v50 = v0[2];
    v51 = swift_task_alloc();
    v51[2] = v44;
    v51[3] = v53;
    v51[4] = v49;
    v51[5] = v48;
    type metadata accessor for Downloader.AssetDownloadResult();
    (*(v45 + 104))(v46, *MEMORY[0x277D858A0], v47);
    sub_24381CD54();

    OUTLINED_FUNCTION_12();

    v52();
  }
}

void sub_2438135A4()
{
  OUTLINED_FUNCTION_36_0();
  v44 = v1;
  v45 = v0;
  v43 = v2;
  v46 = HIDWORD(v1);
  v47 = v3;
  v48 = HIDWORD(v3);
  v49 = v4;
  v50 = HIDWORD(v4);
  v51 = v5;
  v52 = HIDWORD(v5);
  v53 = v6;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED93070, &unk_24381DDA8);
  v7 = *(v40 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v40);
  v41 = &v40 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED93060, &unk_24381DD90);
  v11 = OUTLINED_FUNCTION_9(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  v17 = &v40 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92D20, &qword_24381D6D0);
  OUTLINED_FUNCTION_38(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_31_0();
  MEMORY[0x28223BE20](v21);
  v42 = &v40 - v22;
  sub_24381CCD4();
  OUTLINED_FUNCTION_47_1();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
  (*(v13 + 16))(v17, v43, v10);
  v27 = *(v7 + 16);
  v28 = OUTLINED_FUNCTION_65_0();
  v29(v28);
  v30 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v31 = (v15 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = (v31 + 11) & 0xFFFFFFFFFFFFFFF8;
  v33 = (*(v7 + 80) + v32 + 32) & ~*(v7 + 80);
  v34 = (v8 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  *(v35 + 24) = 0;
  (*(v13 + 32))(v35 + v30, v17, v10);
  v36 = v44;
  *(v35 + v31) = v45;
  v37 = (v35 + v32);
  v39 = v46;
  v38 = v47;
  *v37 = v36;
  v37[1] = v39;
  v37[2] = v38;
  v37[3] = v48;
  v37[4] = v49;
  v37[5] = v50;
  v37[6] = v51;
  v37[7] = v52;
  (*(v7 + 32))(v35 + v33, v41, v40);
  *(v35 + v34) = v53;

  sub_2437FCB64(0, 0, v42, &unk_24381DDC0, v35);

  OUTLINED_FUNCTION_33_0();
}

uint64_t sub_2438138B0()
{
  OUTLINED_FUNCTION_13();
  v0[15] = v46;
  v0[16] = v47;
  v0[13] = v1;
  v0[14] = v2;
  v0[11] = v3;
  v0[12] = v4;
  v0[10] = v5;
  v6 = sub_24381C954();
  v0[17] = v6;
  OUTLINED_FUNCTION_1(v6);
  v0[18] = v7;
  v9 = *(v8 + 64);
  v0[19] = OUTLINED_FUNCTION_32();
  v10 = sub_24381C6E4();
  v0[20] = v10;
  OUTLINED_FUNCTION_1(v10);
  v0[21] = v11;
  v13 = *(v12 + 64);
  v0[22] = OUTLINED_FUNCTION_32();
  v14 = sub_24381CA14();
  OUTLINED_FUNCTION_38(v14);
  v16 = *(v15 + 64);
  v0[23] = OUTLINED_FUNCTION_32();
  v17 = sub_24381C724();
  v0[24] = v17;
  OUTLINED_FUNCTION_1(v17);
  v0[25] = v18;
  v20 = *(v19 + 64);
  v0[26] = OUTLINED_FUNCTION_32();
  v21 = sub_24381C8E4();
  v0[27] = v21;
  OUTLINED_FUNCTION_1(v21);
  v0[28] = v22;
  v24 = *(v23 + 64);
  v0[29] = OUTLINED_FUNCTION_32();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED93078, &qword_24381DDD0);
  v0[30] = v25;
  OUTLINED_FUNCTION_1(v25);
  v0[31] = v26;
  v28 = *(v27 + 64);
  v0[32] = OUTLINED_FUNCTION_32();
  v29 = sub_24381C894();
  v0[33] = v29;
  OUTLINED_FUNCTION_1(v29);
  v0[34] = v30;
  v32 = *(v31 + 64) + 15;
  v0[35] = swift_task_alloc();
  v0[36] = swift_task_alloc();
  v0[37] = swift_task_alloc();
  v33 = type metadata accessor for Downloader.AssetDownloadResult();
  v0[38] = v33;
  OUTLINED_FUNCTION_38(v33);
  v35 = *(v34 + 64) + 15;
  v0[39] = swift_task_alloc();
  v0[40] = swift_task_alloc();
  v0[41] = swift_task_alloc();
  v0[42] = swift_task_alloc();
  v0[43] = swift_task_alloc();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED93080, &qword_24381DDD8);
  OUTLINED_FUNCTION_38(v36);
  v38 = *(v37 + 64);
  v0[44] = OUTLINED_FUNCTION_32();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED93088, &unk_24381DDE0);
  v0[45] = v39;
  OUTLINED_FUNCTION_1(v39);
  v0[46] = v40;
  v42 = *(v41 + 64);
  v0[47] = OUTLINED_FUNCTION_32();
  v43 = OUTLINED_FUNCTION_7_0();

  return MEMORY[0x2822009F8](v43);
}

uint64_t sub_243813C10()
{
  OUTLINED_FUNCTION_13();
  v1 = *(v0 + 376);
  v2 = *(v0 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED93060, &unk_24381DD90);
  sub_24381CD34();
  *(v0 + 384) = *MEMORY[0x277D861C0];
  v3 = MEMORY[0x277CFA8C8];
  *(v0 + 440) = *MEMORY[0x277CFA970];
  *(v0 + 444) = *v3;
  v4 = *(MEMORY[0x277D858B8] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_20();
  *(v0 + 392) = v5;
  *v5 = v6;
  OUTLINED_FUNCTION_14_2(v5);
  v7 = *(v0 + 376);
  v8 = *(v0 + 352);
  v9 = *(v0 + 360);
  OUTLINED_FUNCTION_14();

  return MEMORY[0x2822005A8](v10);
}

uint64_t sub_243813CE8()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  v5 = *(v4 + 392);
  v6 = *v1;
  OUTLINED_FUNCTION_4();
  *v7 = v6;
  *(v8 + 400) = v0;

  OUTLINED_FUNCTION_14();

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_243813DE0()
{
  v244 = v0;
  v1 = v0;
  v2 = v0[44];
  if (__swift_getEnumTagSinglePayload(v2, 1, v0[38]) == 1)
  {
    (*(v0[46] + 8))(v0[47], v0[45]);
LABEL_33:
    v179 = v1[47];
    v181 = v1[43];
    v180 = v1[44];
    v183 = v1[41];
    v182 = v1[42];
    v185 = v1[39];
    v184 = v1[40];
    v208 = v1[37];
    v211 = v1[36];
    v214 = v1[35];
    v218 = v1[32];
    v222 = v1[29];
    v226 = v1[26];
    logc = v1[23];
    v235 = v1[22];
    v242 = v1[19];
    v186 = v1[16];
    v1[9] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED93070, &unk_24381DDA8);
    sub_24381CD14();

    v187 = v1[1];

    return v187();
  }

  v3 = v0[50];
  v4 = v0[43];
  v5 = v0[11];
  sub_243819694(v2, v4);
  sub_24380029C(*v4, (v0 + 2));
  if (v3)
  {
    v6 = v3;
    v8 = v0[46];
    v7 = v0[47];
    v9 = v0[45];
    sub_2438196F8(v1[43]);
    (*(v8 + 8))(v7, v9);
    goto LABEL_5;
  }

  v36 = v0[48];
  v37 = v0[43];
  v38 = v0[37];
  v39 = v0[38];
  v40 = v1[33];
  v42 = v1[14];
  v41 = v1[15];
  v43 = v1[12];
  v44 = v1[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92DB0, &unk_24381D7A0);
  swift_dynamicCast();
  v45 = *(v39 + 20);
  v219 = v37;
  sub_24381C6C4();
  sub_24381CBC4();

  v1[51] = v43;
  v1[52] = v44;
  v1[53] = v42;
  v1[54] = v41;
  v46 = sandbox_extension_issue_file_to_process();

  if (!v46)
  {
    if (_MergedGlobals_2 != -1)
    {
      OUTLINED_FUNCTION_0_4();
      swift_once();
    }

    v133 = v1[42];
    v134 = v1[43];
    v136 = v1[36];
    v135 = v1[37];
    v138 = v1[33];
    v137 = v1[34];
    v139 = sub_24381CA64();
    __swift_project_value_buffer(v139, qword_27ED93448);
    (*(v137 + 16))(v136, v135, v138);
    v140 = OUTLINED_FUNCTION_18();
    sub_243819754(v140, v141);
    v142 = sub_24381CA44();
    v143 = sub_24381CD84();
    v144 = os_log_type_enabled(v142, v143);
    v145 = v1[42];
    if (v144)
    {
      v146 = v1[36];
      v147 = v1[34];
      v234 = v142;
      v240 = v1[33];
      v148 = v1[25];
      v149 = v1[26];
      v150 = v1[24];
      v217 = v1[38];
      v221 = v1[20];
      v151 = swift_slowAlloc();
      v243[0] = swift_slowAlloc();
      *v151 = 136315394;
      v225 = v143;
      sub_24381C864();
      OUTLINED_FUNCTION_17_1();
      sub_243819364(v152, v153);
      v154 = sub_24381CF24();
      v156 = v155;
      v157 = *(v148 + 8);
      v158 = OUTLINED_FUNCTION_66_0();
      v159(v158);
      v160 = v240;
      v241 = *(v147 + 8);
      v241(v146, v160);
      v161 = sub_243808908(v154, v156, v243);

      *(v151 + 4) = v161;
      *(v151 + 12) = 2080;
      v162 = *(v217 + 20);
      OUTLINED_FUNCTION_16_1();
      sub_243819364(v163, v164);
      v165 = sub_24381CF24();
      v167 = v166;
      sub_2438196F8(v145);
      v168 = sub_243808908(v165, v167, v243);

      *(v151 + 14) = v168;
      _os_log_impl(&dword_2437FA000, v234, v225, "[request id = %s] failed to issue sandbox extension token for file at %s", v151, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_20_1();
      OUTLINED_FUNCTION_27_0();
    }

    else
    {
      v188 = v1[36];
      v190 = v1[33];
      v189 = v1[34];

      sub_2438196F8(v145);
      v191 = *(v189 + 8);
      v192 = OUTLINED_FUNCTION_23_1();
      v241 = v193;
      (v193)(v192);
    }

    v195 = v1[46];
    v194 = v1[47];
    v196 = v1[45];
    v197 = v1[43];
    v198 = v1[37];
    v199 = v1[33];
    v200 = v1[34] + 8;
    sub_24380043C();
    v6 = OUTLINED_FUNCTION_49_0();
    swift_willThrow();
    sub_2438196F8(v197);
    (*(v195 + 8))(v194, v196);
    v201 = OUTLINED_FUNCTION_57_0();
    (v241)(v201);
LABEL_5:
    v10 = v1[19];
    v11 = v1[17];
    v1[8] = v6;
    v12 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92DE0, &unk_24381D950);
    if (swift_dynamicCast())
    {
      v13 = (*(v1[18] + 88))(v1[19], v1[17]);
      if (v13 == *MEMORY[0x277CFA920])
      {
        v14 = v13;
        v15 = v1[31];
        v16 = v1[29];
        v231 = v1[32];
        v236 = v1[30];
        v17 = v1[27];
        v18 = v1[28];
        v19 = v1[18];
        v20 = v1[19];
        v21 = v1[17];
        log = v1[16];

        v22 = *(v19 + 96);
        v23 = OUTLINED_FUNCTION_57_0();
        v24(v23);
        v25 = *v20;
        *v16 = *v20;
        (*(v19 + 104))(v16, v14, v21);
        (*(v18 + 104))(v16, *MEMORY[0x277CFA8C0], v17);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED93070, &unk_24381DDA8);
        sub_24381CD04();
        (*(v15 + 8))(v231, v236);
        if (_MergedGlobals_2 != -1)
        {
          OUTLINED_FUNCTION_0_4();
          swift_once();
        }

        v26 = sub_24381CA64();
        OUTLINED_FUNCTION_47_0(v26, qword_27ED93448);

        v27 = sub_24381CA44();
        v28 = sub_24381CD84();

        if (OUTLINED_FUNCTION_72_0())
        {
          v29 = OUTLINED_FUNCTION_42_0();
          v30 = OUTLINED_FUNCTION_63();
          v243[0] = v30;
          *v29 = 136315138;
          v31 = MEMORY[0x245D40CE0](v25, MEMORY[0x277D837D0]);
          v33 = v32;

          v34 = sub_243808908(v31, v33, v243);

          *(v29 + 4) = v34;
          OUTLINED_FUNCTION_35_1(&dword_2437FA000, v35, v28, "failed to download due to server blocking %s");
          __swift_destroy_boxed_opaque_existential_1(v30);
          OUTLINED_FUNCTION_20_1();
          OUTLINED_FUNCTION_27_0();
        }

        else
        {
        }

        v132 = v1[8];
        goto LABEL_32;
      }

      (*(v1[18] + 8))(v1[19], v1[17]);
    }

    v113 = *(v1 + 111);
    v115 = v1[31];
    v114 = v1[32];
    v116 = v1[29];
    v118 = v1[27];
    v117 = v1[28];
    v233 = v1[16];
    v239 = v1[30];

    v119 = (v116 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED93090, &qword_24381DDF0) + 48));
    v120 = *MEMORY[0x277CFA968];
    v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED93098, &qword_24381DDF8);
    OUTLINED_FUNCTION_0_1(v121);
    (*(v122 + 104))(v116, v120);
    *v119 = 0;
    v119[1] = 0xE000000000000000;
    (*(v117 + 104))(v116, v113, v118);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED93070, &unk_24381DDA8);
    sub_24381CD04();
    (*(v115 + 8))(v114, v239);
    if (_MergedGlobals_2 != -1)
    {
      OUTLINED_FUNCTION_0_4();
      swift_once();
    }

    v123 = sub_24381CA64();
    OUTLINED_FUNCTION_47_0(v123, qword_27ED93448);
    v124 = v6;
    v125 = sub_24381CA44();
    sub_24381CD84();

    if (OUTLINED_FUNCTION_72_0())
    {
      v126 = OUTLINED_FUNCTION_42_0();
      v127 = OUTLINED_FUNCTION_54_0();
      *v126 = 138412290;
      v128 = v6;
      v129 = _swift_stdlib_bridgeErrorToNSError();
      *(v126 + 4) = v129;
      *v127 = v129;
      OUTLINED_FUNCTION_70(&dword_2437FA000, v130, v131, "failed to download assets with %@");
      sub_24380B1F4(v127, &qword_27ED92E38, &unk_24381DBD0);
      OUTLINED_FUNCTION_27_0();
      OUTLINED_FUNCTION_20_1();

      goto LABEL_33;
    }

    v132 = v6;
LABEL_32:

    goto LABEL_33;
  }

  v223 = *(v1 + 111);
  v206 = *(v1 + 110);
  v47 = v1[37];
  v203 = v1[38];
  v204 = v1[43];
  loga = v1[32];
  v232 = v1[31];
  v48 = v1[29];
  v237 = v1[30];
  v209 = v1[28];
  v212 = v1[27];
  v49 = v1[26];
  v51 = v1[22];
  v50 = v1[23];
  v52 = v45;
  v54 = v1[20];
  v53 = v1[21];
  v215 = v1[16];
  v205 = (v48 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED93090, &qword_24381DDF0) + 48));
  sub_24381C864();
  sub_24381C874();
  (*(v53 + 16))(v51, v219 + v52, v54);
  v55 = (v204 + *(v203 + 24));
  v56 = *v55;
  v57 = v55[1];
  sub_24381C8B4();
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED93098, &qword_24381DDF8);
  OUTLINED_FUNCTION_0_1(v58);
  (*(v59 + 104))(v48, v206);
  *v205 = sub_24381CC14();
  v205[1] = v60;
  (*(v209 + 104))(v48, v223, v212);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED93070, &unk_24381DDA8);
  sub_24381CD04();
  (v232[1].isa)(loga, v237);
  if (_MergedGlobals_2 != -1)
  {
    OUTLINED_FUNCTION_0_4();
    swift_once();
  }

  v61 = v1[43];
  v63 = v1[40];
  v62 = v1[41];
  v64 = v1[39];
  v65 = v1[37];
  v66 = v1[34];
  v67 = v1[35];
  v68 = v1[33];
  v69 = sub_24381CA64();
  __swift_project_value_buffer(v69, qword_27ED93448);
  (*(v66 + 16))(v67, v65, v68);
  v70 = OUTLINED_FUNCTION_18();
  sub_243819754(v70, v71);
  v72 = OUTLINED_FUNCTION_23_1();
  sub_243819754(v72, v73);
  sub_243819754(v61, v64);
  v74 = sub_24381CA44();
  v75 = sub_24381CD94();
  v76 = os_log_type_enabled(v74, v75);
  v77 = v1[43];
  v79 = v1[40];
  v78 = v1[41];
  v80 = v1[39];
  if (v76)
  {
    v207 = v1[35];
    v238 = v1[43];
    v81 = v1[34];
    v210 = v1[33];
    v213 = v1[38];
    v220 = v1[39];
    v83 = v1[25];
    v82 = v1[26];
    v84 = v1[24];
    v216 = v1[20];
    logb = v74;
    v85 = swift_slowAlloc();
    v243[0] = swift_slowAlloc();
    *v85 = 136315906;
    v224 = v75;
    sub_24381C864();
    OUTLINED_FUNCTION_17_1();
    sub_243819364(v86, v87);
    v88 = sub_24381CF24();
    v89 = v79;
    v91 = v90;
    v92 = *(v83 + 8);
    v93 = OUTLINED_FUNCTION_63_0();
    v94(v93);
    v95 = *(v81 + 8);
    v95(v207, v210);
    v96 = sub_243808908(v88, v91, v243);

    *(v85 + 4) = v96;
    *(v85 + 12) = 2050;
    v97 = *v78;
    sub_2438196F8(v78);
    *(v85 + 14) = v97;
    *(v85 + 22) = 2080;
    v98 = *(v213 + 20);
    OUTLINED_FUNCTION_16_1();
    sub_243819364(v99, v100);
    sub_24381CF24();
    sub_2438196F8(v89);
    v101 = OUTLINED_FUNCTION_18();
    v104 = sub_243808908(v101, v102, v103);

    *(v85 + 24) = v104;
    *(v85 + 32) = 2080;
    v105 = (v220 + *(v213 + 24));
    v106 = *v105;
    v107 = v105[1];
    sub_2438197B8();
    sub_2438196F8(v220);
    v108 = OUTLINED_FUNCTION_18();
    v111 = sub_243808908(v108, v109, v110);

    *(v85 + 34) = v111;
    _os_log_impl(&dword_2437FA000, logb, v224, "[request id = %s] downloaded asset with tracking number %{public}ld at %s for range %s", v85, 0x2Au);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_20_1();
    OUTLINED_FUNCTION_14_0();

    v112 = v238;
  }

  else
  {
    v170 = v1[34];
    v169 = v1[35];
    v171 = v1[33];
    sub_2438196F8(v1[41]);

    sub_2438196F8(v80);
    sub_2438196F8(v79);
    v95 = *(v170 + 8);
    v95(v169, v171);
    v112 = v77;
  }

  sub_2438196F8(v112);
  v172 = v1[34] + 8;
  v95(v1[37], v1[33]);
  v173 = *(MEMORY[0x277D858B8] + 4);
  v174 = swift_task_alloc();
  v1[49] = v174;
  *v174 = v1;
  OUTLINED_FUNCTION_14_2();
  v175 = v1[47];
  v176 = v1[44];
  v177 = v1[45];
  OUTLINED_FUNCTION_14();

  return MEMORY[0x2822005A8](v178);
}

uint64_t sub_243814CD4()
{
  v71 = v0;
  v1 = v0;
  (*(v0[46] + 8))(v0[47], v0[45]);
  v2 = v0[7];
  v0[8] = v2;
  v3 = (v0 + 8);
  v4 = v3[11];
  v5 = v3[9];
  v6 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92DE0, &unk_24381D950);
  if (swift_dynamicCast())
  {
    v7 = (*(v1[18] + 88))(v1[19], v1[17]);
    if (v7 == *MEMORY[0x277CFA920])
    {
      v8 = v7;
      v9 = v1[31];
      v10 = v1[29];
      v64 = v1[32];
      v67 = v1[30];
      v11 = v1[28];
      v12 = v1[18];
      v13 = v1[19];
      v14 = v1[17];
      v60 = v1[27];
      v62 = v1[16];

      (*(v12 + 96))(v13, v14);
      v15 = *v13;
      *v10 = *v13;
      (*(v12 + 104))(v10, v8, v14);
      (*(v11 + 104))(v10, *MEMORY[0x277CFA8C0], v60);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED93070, &unk_24381DDA8);
      sub_24381CD04();
      (*(v9 + 8))(v64, v67);
      if (_MergedGlobals_2 != -1)
      {
        OUTLINED_FUNCTION_0_4();
        swift_once();
      }

      v16 = sub_24381CA64();
      OUTLINED_FUNCTION_47_0(v16, qword_27ED93448);

      v17 = sub_24381CA44();
      v18 = sub_24381CD84();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = OUTLINED_FUNCTION_42_0();
        v20 = OUTLINED_FUNCTION_63();
        v70 = v20;
        *v19 = 136315138;
        v21 = MEMORY[0x245D40CE0](v15, MEMORY[0x277D837D0]);
        v23 = v22;

        v24 = sub_243808908(v21, v23, &v70);

        *(v19 + 4) = v24;
        _os_log_impl(&dword_2437FA000, v17, v18, "failed to download due to server blocking %s", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v20);
        OUTLINED_FUNCTION_35_0();
        OUTLINED_FUNCTION_14_0();
      }

      else
      {
      }

      v44 = *v3;
      goto LABEL_15;
    }

    (*(v1[18] + 8))(v1[19], v1[17]);
  }

  v25 = *(v1 + 111);
  v27 = v1[31];
  v26 = v1[32];
  v28 = v1[29];
  v30 = v1[27];
  v29 = v1[28];
  v65 = v1[16];
  v68 = v1[30];

  v31 = (v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED93090, &qword_24381DDF0) + 48));
  v32 = *MEMORY[0x277CFA968];
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED93098, &qword_24381DDF8);
  OUTLINED_FUNCTION_0_1(v33);
  (*(v34 + 104))(v28, v32);
  *v31 = 0;
  v31[1] = 0xE000000000000000;
  (*(v29 + 104))(v28, v25, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED93070, &unk_24381DDA8);
  sub_24381CD04();
  (*(v27 + 8))(v26, v68);
  if (_MergedGlobals_2 != -1)
  {
    OUTLINED_FUNCTION_0_4();
    swift_once();
  }

  v35 = sub_24381CA64();
  OUTLINED_FUNCTION_47_0(v35, qword_27ED93448);
  v36 = v2;
  v37 = sub_24381CA44();
  v38 = sub_24381CD84();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = OUTLINED_FUNCTION_42_0();
    v40 = OUTLINED_FUNCTION_54_0();
    *v39 = 138412290;
    v41 = v2;
    v42 = _swift_stdlib_bridgeErrorToNSError();
    *(v39 + 4) = v42;
    *v40 = v42;
    OUTLINED_FUNCTION_35_1(&dword_2437FA000, v43, v38, "failed to download assets with %@");
    sub_24380B1F4(v40, &qword_27ED92E38, &unk_24381DBD0);
    OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_27_0();

    goto LABEL_16;
  }

  v44 = v2;
LABEL_15:

LABEL_16:
  v45 = v1[47];
  v46 = v1[43];
  v47 = v1[44];
  v49 = v1[41];
  v48 = v1[42];
  v51 = v1[39];
  v50 = v1[40];
  v55 = v1[37];
  v56 = v1[36];
  v57 = v1[35];
  v58 = v1[32];
  v59 = v1[29];
  v61 = v1[26];
  v63 = v1[23];
  v66 = v1[22];
  v69 = v1[19];
  v52 = v1[16];
  v1[9] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED93070, &unk_24381DDA8);
  sub_24381CD14();

  v53 = v1[1];

  return v53();
}

uint64_t sub_2438152B0()
{
  OUTLINED_FUNCTION_13();
  v1[7] = v2;
  v1[8] = v0;
  v1[5] = v3;
  v1[6] = v4;
  v1[3] = v5;
  v1[4] = v6;
  v1[2] = v7;
  v8 = sub_24381C8D4();
  v1[9] = v8;
  OUTLINED_FUNCTION_1(v8);
  v1[10] = v9;
  v11 = *(v10 + 64);
  v1[11] = OUTLINED_FUNCTION_32();
  v12 = OUTLINED_FUNCTION_7_0();

  return MEMORY[0x2822009F8](v12);
}

uint64_t sub_243815360()
{
  v1 = v0[10];
  (*(v1 + 16))(v0[11], v0[3], v0[9]);
  v2 = *(v1 + 88);
  v3 = OUTLINED_FUNCTION_18();
  v5 = v4(v3);
  if (v5 == *MEMORY[0x277CFA898] || v5 == *MEMORY[0x277CFA8A0])
  {
    v7 = v0[11];
    (*(v0[10] + 96))(v7, v0[9]);
    v0[12] = *v7;
    swift_task_alloc();
    OUTLINED_FUNCTION_20();
    v0[13] = v8;
    *v8 = v9;
    v8[1] = sub_243815510;
    v10 = v0[7];
    v11 = v0[8];
    v12 = v0[5];
    v13 = v0[6];
    v14 = v0[4];
    v15 = v0[2];

    return sub_243812390();
  }

  else
  {
    v18 = v0[10];
    v17 = v0[11];
    v19 = v0[9];
    sub_24380043C();
    OUTLINED_FUNCTION_49_0();
    swift_willThrow();
    v20 = *(v18 + 8);
    v21 = OUTLINED_FUNCTION_18();
    v22(v21);
    v23 = v0[11];

    OUTLINED_FUNCTION_12();

    return v24();
  }
}

uint64_t sub_243815510()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  v5 = *(v4 + 104);
  v6 = *v1;
  OUTLINED_FUNCTION_4();
  *v7 = v6;
  *(v8 + 112) = v0;

  OUTLINED_FUNCTION_14();

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_243815608()
{
  OUTLINED_FUNCTION_13();
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);

  OUTLINED_FUNCTION_12();

  return v3();
}

uint64_t sub_24381566C()
{
  OUTLINED_FUNCTION_13();
  v1 = v0[12];

  v2 = v0[14];
  v3 = v0[11];

  OUTLINED_FUNCTION_12();

  return v4();
}

uint64_t sub_2438156D0(uint64_t a1)
{
  v83 = sub_24381C9A4();
  v2 = *(v83 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v83);
  v82 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_24381C6E4();
  v5 = *(v75 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v75);
  v8 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92EC0, &qword_24381D9E0);
  v74 = *(v80 - 8);
  v9 = *(v74 + 64);
  v10 = MEMORY[0x28223BE20](v80);
  v73 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v79 = (&v65 - v13);
  v14 = MEMORY[0x28223BE20](v12);
  v78 = &v65 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v65 - v17;
  MEMORY[0x28223BE20](v16);
  v77 = &v65 - v19;
  v20 = 0;
  v84 = a1;
  v85 = MEMORY[0x277D84F98];
  v86 = MEMORY[0x277D84F98];
  v23 = *(a1 + 64);
  v22 = a1 + 64;
  v21 = v23;
  v24 = 1 << *(v22 - 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & v21;
  v27 = (v24 + 63) >> 6;
  v76 = (v2 + 8);
  v69 = v5 + 32;
  v70 = v5;
  v68 = (v5 + 8);
  v67 = xmmword_24381D830;
  v71 = v27;
  v72 = v22;
  v81 = v8;
  if ((v25 & v21) != 0)
  {
LABEL_8:
    while (1)
    {
      v29 = __clz(__rbit64(v26)) | (v20 << 6);
      v30 = *(v84 + 56);
      v31 = *(*(v84 + 48) + 8 * v29);
      v32 = sub_24381CA14();
      v33 = *(v32 - 8);
      v34 = v30 + *(v33 + 72) * v29;
      v35 = v80;
      v36 = v77;
      (*(v33 + 16))(&v77[*(v80 + 48)], v34, v32);
      *v36 = v31;
      sub_2438198C8(v36, v18, &qword_27ED92EC0, &qword_24381D9E0);
      v37 = v18;
      v38 = v18;
      v39 = v78;
      sub_243819878(v38, v78, &qword_27ED92EC0, &qword_24381D9E0);
      v40 = *(v35 + 48);
      v41 = v79;
      *v79 = *v39;
      (*(v33 + 32))(v41 + v40, &v39[v40], v32);
      v42 = v82;
      sub_24381C9C4();
      v43 = v81;
      sub_24381C964();
      (*v76)(v42, v83);
      sub_24380B1F4(v41, &qword_27ED92EC0, &qword_24381D9E0);
      v44 = v85;
      v46 = sub_243818428(v43);
      v47 = v44[2];
      v48 = (v45 & 1) == 0;
      v49 = v47 + v48;
      if (__OFADD__(v47, v48))
      {
        break;
      }

      v50 = v45;
      if (v44[3] < v49)
      {
        sub_2438188A8(v49, 1);
        v44 = v86;
        v51 = sub_243818428(v43);
        if ((v50 & 1) != (v52 & 1))
        {
          goto LABEL_26;
        }

        v46 = v51;
      }

      v18 = v37;
      v26 &= v26 - 1;
      v85 = v44;
      if (v50)
      {
        (*v68)(v43, v75);
        v53 = v44[7];
        sub_2438198C8(v18, v73, &qword_27ED92EC0, &qword_24381D9E0);
        v54 = *(v53 + 8 * v46);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v53 + 8 * v46) = v54;
        v66 = v53;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v54 = sub_243818134(0, *(v54 + 16) + 1, 1, v54);
          *(v53 + 8 * v46) = v54;
        }

        v57 = *(v54 + 16);
        v56 = *(v54 + 24);
        if (v57 >= v56 >> 1)
        {
          v54 = sub_243818134(v56 > 1, v57 + 1, 1, v54);
          *(v66 + 8 * v46) = v54;
        }

        *(v54 + 16) = v57 + 1;
        sub_2438198C8(v73, v54 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v57, &qword_27ED92EC0, &qword_24381D9E0);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED93118, &qword_24381DEB8);
        v58 = *(v74 + 72);
        v59 = (*(v74 + 80) + 32) & ~*(v74 + 80);
        v60 = swift_allocObject();
        *(v60 + 16) = v67;
        sub_2438198C8(v18, v60 + v59, &qword_27ED92EC0, &qword_24381D9E0);
        v44[(v46 >> 6) + 8] |= 1 << v46;
        (*(v70 + 32))(v44[6] + *(v70 + 72) * v46, v43, v75);
        *(v44[7] + 8 * v46) = v60;
        v61 = v44[2];
        v62 = __OFADD__(v61, 1);
        v63 = v61 + 1;
        if (v62)
        {
          goto LABEL_25;
        }

        v44[2] = v63;
      }

      v27 = v71;
      v22 = v72;
      if (!v26)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    while (1)
    {
      v28 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v28 >= v27)
      {

        return v85;
      }

      v26 = *(v22 + 8 * v28);
      ++v20;
      if (v26)
      {
        v20 = v28;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_24381CF54();
  __break(1u);
  return result;
}

uint64_t sub_243815D64(uint64_t a1)
{
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92EC0, &qword_24381D9E0);
  v2 = *(v17 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v17);
  v5 = &v17 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92FC0, &qword_24381DB38);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v17 - v9;
  v11 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v18 = MEMORY[0x277D84F90];
    sub_24380FBA8();
    v12 = v18;
    v13 = a1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v14 = *(v2 + 72);
    do
    {
      sub_243819878(v13, v5, &qword_27ED92EC0, &qword_24381D9E0);
      swift_dynamicCast();
      v18 = v12;
      v15 = *(v12 + 16);
      if (v15 >= *(v12 + 24) >> 1)
      {
        sub_24380FBA8();
        v12 = v18;
      }

      *(v12 + 16) = v15 + 1;
      sub_2438198C8(v10, v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v15, &qword_27ED92FC0, &qword_24381DB38);
      v13 += v14;
      --v11;
    }

    while (v11);
  }

  return v12;
}

void sub_243815F9C()
{
  OUTLINED_FUNCTION_36_0();
  v407 = v0;
  v426 = v1;
  v3 = v2;
  v418 = v4;
  v481 = *MEMORY[0x277D85DE8];
  v432 = sub_24381CBA4();
  v5 = OUTLINED_FUNCTION_9(v432);
  *&v469 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_0();
  v440 = v9;
  OUTLINED_FUNCTION_60();
  v437 = sub_24381C714();
  v10 = OUTLINED_FUNCTION_9(v437);
  v468 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_4_0();
  v436 = v14;
  OUTLINED_FUNCTION_60();
  v447 = sub_24381C9A4();
  v15 = OUTLINED_FUNCTION_9(v447);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_4_0();
  v446 = v20;
  OUTLINED_FUNCTION_60();
  v453 = sub_24381CA14();
  v21 = OUTLINED_FUNCTION_9(v453);
  v449 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_76();
  v445 = v25;
  OUTLINED_FUNCTION_68_0();
  MEMORY[0x28223BE20](v26);
  v28 = &v393 - v27;
  v417 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92DD0, &unk_24381D800);
  OUTLINED_FUNCTION_9(v417);
  v30 = v29;
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_31_0();
  MEMORY[0x28223BE20](v33);
  v409 = &v393 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED930B8, &qword_24381DE18);
  v36 = OUTLINED_FUNCTION_38(v35);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_76();
  v450 = v39;
  OUTLINED_FUNCTION_68_0();
  MEMORY[0x28223BE20](v40);
  v414 = &v393 - v41;
  OUTLINED_FUNCTION_60();
  v458 = sub_24381C894();
  v42 = OUTLINED_FUNCTION_9(v458);
  v44 = v43;
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_4_0();
  v423 = v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92E68, &unk_24381DE20);
  OUTLINED_FUNCTION_38(v48);
  v50 = *(v49 + 64);
  OUTLINED_FUNCTION_31_0();
  MEMORY[0x28223BE20](v51);
  v415 = &v393 - v52;
  OUTLINED_FUNCTION_60();
  v454 = sub_24381C754();
  v53 = OUTLINED_FUNCTION_9(v454);
  v55 = v54;
  v57 = *(v56 + 64);
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_76();
  v441 = v58;
  OUTLINED_FUNCTION_68_0();
  MEMORY[0x28223BE20](v59);
  v425 = &v393 - v60;
  OUTLINED_FUNCTION_60();
  v61 = sub_24381C6E4();
  v62 = OUTLINED_FUNCTION_9(v61);
  v64 = v63;
  v66 = *(v65 + 64);
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_42();
  v69 = v68 - v67;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED93040, &qword_24381DCE0);
  v71 = *(*(v70 - 8) + 64);
  v72 = MEMORY[0x28223BE20](v70);
  v416 = &v393 - v74;
  v406 = *(v3 + 16);
  if (!v406)
  {
    goto LABEL_183;
  }

  v75 = 0;
  v462 = 0;
  v76 = *(v72 + 48);
  v412 = v3 + ((*(v73 + 80) + 32) & ~*(v73 + 80));
  v413 = v76;
  v77 = *(v73 + 72);
  v410 = (v64 + 32);
  v411 = v77;
  v405 = (v55 + 32);
  v402 = (v30 + 16);
  v461 = v449 + 16;
  v442 = v449 + 32;
  v443 = v449 + 8;
  v444 = (v17 + 8);
  v434 = (v468 + 1);
  v435 = (v44 + 8);
  v448 = (v55 + 8);
  v439 = (v469 + 8);
  v401 = *MEMORY[0x277D25598];
  v394 = *MEMORY[0x277D255B8];
  v399 = *MEMORY[0x277D25560];
  v78 = *MEMORY[0x277D25610];
  v396 = *MEMORY[0x277D25588];
  v397 = v78;
  v395 = 0x800000024381E610;
  v403 = (v64 + 8);
  v427 = xmmword_24381DCB0;
  *(&v79 + 1) = 4;
  v400 = xmmword_24381D840;
  *&v79 = 138412290;
  v393 = v79;
  *(&v79 + 1) = 2;
  v408 = xmmword_24381D830;
  *&v79 = 136315138;
  v428 = v79;
  v398 = v28;
  v80 = MEMORY[0x277D84F90];
  v404 = v61;
  v424 = v69;
  do
  {
    v429 = v75;
    v81 = v416;
    sub_243819878(v412 + v75 * v411, v416, &qword_27ED93040, &qword_24381DCE0);
    v82 = *(v81 + v413);
    (*v410)(v69, v81, v61);

    v456 = v82;
    v84 = sub_24380239C(v83);
    v85 = v84[2];
    if (v85)
    {
      *&v478 = v80;
      sub_24380A174(0, v85, 0);
      v86 = v478;
      v87 = 4;
      do
      {
        v88 = v84[v87];
        if (v88 < 0)
        {
          goto LABEL_185;
        }

        *&v478 = v86;
        v90 = v86[2];
        v89 = v86[3];
        if (v90 >= v89 >> 1)
        {
          v91 = OUTLINED_FUNCTION_28_0(v89);
          sub_24380A174(v91, v90 + 1, 1);
          v86 = v478;
        }

        v86[2] = v90 + 1;
        v86[v90 + 4] = v88;
        ++v87;
        --v85;
      }

      while (v85);
      v92 = v86;

      v93 = v92;
    }

    else
    {

      v93 = v80;
    }

    v468 = v93;
    v94 = v93[2];
    if (v94)
    {
      *&v473 = v80;
      sub_24380A154(0, v94, 0);
      v95 = 0;
      v96 = v473;
      v97 = v462;
      while (1)
      {
        if (v95 >= v468[2])
        {
          goto LABEL_186;
        }

        v98 = v468[v95 + 4];
        if (v98 < 0)
        {
          break;
        }

        *&v478 = v468[v95 + 4];
        sub_24380029C(v98, &v478 + 8);
        if (v97)
        {
          goto LABEL_216;
        }

        *&v473 = v96;
        v100 = *(v96 + 16);
        v99 = *(v96 + 24);
        if (v100 >= v99 >> 1)
        {
          v104 = OUTLINED_FUNCTION_28_0(v99);
          sub_24380A154(v104, v100 + 1, 1);
          v96 = v473;
        }

        ++v95;
        *(v96 + 16) = v100 + 1;
        v101 = (v96 + 48 * v100);
        v102 = v478;
        v103 = v480;
        v101[3] = v479;
        v101[4] = v103;
        v101[2] = v102;
        if (v94 == v95)
        {
          v462 = 0;
          goto LABEL_21;
        }
      }

LABEL_187:
      __break(1u);
LABEL_188:
      __break(1u);
LABEL_189:
      __break(1u);
LABEL_190:
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
      goto LABEL_212;
    }

    v96 = v80;
LABEL_21:
    v105 = sub_243812E60(v96, &qword_27ED92F38, &qword_24381DA48, sub_2438096C0);
    sub_243803EA0(v105, &v478);
    v107 = v414;
    v106 = v415;
    if (!v480)
    {
      v385 = OUTLINED_FUNCTION_62_0();
      v386(v385);

      sub_24380B1F4(&v478, &qword_27ED92E70, &qword_24381D990);
      OUTLINED_FUNCTION_47_1();
      __swift_storeEnumTagSinglePayload(v387, v388, v389, v454);
LABEL_182:
      sub_24380B1F4(v106, &qword_27ED92E68, &unk_24381DE20);
      break;
    }

    v455 = v94;
    v467 = v105;
    __swift_project_boxed_opaque_existential_1(&v478 + 1, v480);
    sub_24381C764();
    v108 = v454;
    __swift_storeEnumTagSinglePayload(v106, 0, 1, v454);
    __swift_destroy_boxed_opaque_existential_1(&v478 + 1);
    if (__swift_getEnumTagSinglePayload(v106, 1, v108) == 1)
    {
      v390 = OUTLINED_FUNCTION_62_0();
      v391(v390);

      goto LABEL_182;
    }

    (*v405)(v425, v106, v108);
    v109 = v467;
    if (!v468[2])
    {
      goto LABEL_205;
    }

    v110 = v468[4];
    v430 = v468 + 4;
    if (v110 < 0)
    {
      goto LABEL_206;
    }

    sub_243800368(v110, v467, &v473);
    if (!v474)
    {
      goto LABEL_209;
    }

    sub_243800490(&v473, &v478);
    v457 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92DB0, &unk_24381D7A0);
    v111 = v458;
    swift_dynamicCast();
    v112 = sub_24381C834();
    v114 = v113;
    v115 = *v435;
    v116 = OUTLINED_FUNCTION_23_1();
    v433 = v117;
    v117(v116);
    if (*v430 < 0)
    {
      goto LABEL_207;
    }

    sub_243800368(*v430, v109, &v473);
    if (!v474)
    {
      goto LABEL_210;
    }

    sub_243800490(&v473, &v478);
    swift_dynamicCast();
    v118 = sub_24381C854();
    v120 = v119;
    v121 = OUTLINED_FUNCTION_23_1();
    v433(v121);
    type metadata accessor for Downloader.OptionsBuilder();
    inited = swift_initStackObject();
    v123 = v427;
    *(inited + 32) = v427;
    *(inited + 48) = v123;
    *(inited + 72) = 0;
    *(inited + 80) = 0;
    *(inited + 16) = v456;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED93108, &unk_24381DEA0);
    *(inited + 24) = sub_24381CB24();
    v438 = inited + 24;
    v124 = *(inited + 32);
    v125 = *(inited + 40);
    *(inited + 32) = v427;
    sub_24381933C(v124, v125);
    v126 = *(inited + 48);
    v127 = *(inited + 56);
    *(inited + 48) = v427;
    sub_24381933C(v126, v127);
    *(inited + 64) = 0;
    v128 = sub_2438013D8(v112, v114);
    v459 = inited;
    if (!v128)
    {
      v129 = *(inited + 32);
      v130 = *(inited + 40);
      *(inited + 32) = v112;
      *(inited + 40) = v114;
      sub_24381933C(v129, v130);
      v131 = *(v459 + 48);
      v132 = *(v459 + 56);
      sub_24380AF70(v112, v114);
      *(v459 + 48) = v118;
      *(v459 + 56) = v120;
      v133 = OUTLINED_FUNCTION_23_1();
      v111 = v458;
      sub_24381933C(v133, v134);
      v135 = OUTLINED_FUNCTION_57_0();
      sub_24380AF70(v135, v136);
      *(v459 + 64) = 1;
    }

    if (*v430 < 0)
    {
      goto LABEL_208;
    }

    sub_243800368(*v430, v467, &v478);
    if (*(&v479 + 1))
    {
      v137 = swift_dynamicCast();
      __swift_storeEnumTagSinglePayload(v107, v137 ^ 1u, 1, v111);
      if (__swift_getEnumTagSinglePayload(v107, 1, v111) != 1)
      {
        sub_24381C824();
        OUTLINED_FUNCTION_60_0();
        (v433)(v107, v458);
        if (v111)
        {
          v138 = v459;
          v139 = *(v459 + 80);
          *(v459 + 72) = v107;
          *(v138 + 80) = v111;
        }

        goto LABEL_37;
      }
    }

    else
    {
      sub_24380B1F4(&v478, &qword_27ED92DB8, &qword_24381DE30);
      OUTLINED_FUNCTION_47_1();
      __swift_storeEnumTagSinglePayload(v140, v141, v142, v111);
    }

    sub_24380B1F4(v107, &qword_27ED930B8, &qword_24381DE18);
LABEL_37:
    v419 = v120;
    v420 = v118;
    v421 = v114;
    v422 = v112;
    v143 = v467;
    v144 = *(v467 + 16);
    if (v144)
    {
      *&v476 = v80;
      sub_243818CC0(0, v144, 0);
      *&v469 = v476;
      v147 = sub_24380AF24(v143);
      v148 = 0;
      v466 = v143 + 64;
      v452 = v145;
      v431 = v143 + 72;
      v149 = v458;
      v451 = v144;
      do
      {
        v150 = v450;
        if (v147 < 0 || v147 >= 1 << *(v143 + 32))
        {
          goto LABEL_188;
        }

        v151 = v147 >> 6;
        if ((*(v466 + 8 * (v147 >> 6)) & (1 << v147)) == 0)
        {
          goto LABEL_189;
        }

        if (*(v143 + 36) != v145)
        {
          goto LABEL_190;
        }

        v463 = v145;
        v460 = v146;
        v152 = *(*(v143 + 48) + 8 * v147);
        sub_2438000FC(*(v143 + 56) + 40 * v147, &v478 + 8);
        v465 = v152;
        *&v473 = v152;
        sub_243800490((&v478 + 8), &v473 + 8);
        sub_2438000FC(&v473 + 8, v475);
        if (swift_dynamicCast())
        {
          __swift_storeEnumTagSinglePayload(v150, 0, 1, v149);
          v153 = sub_24381C884();
          v155 = v154;
          LODWORD(v464) = v156;
          v157 = OUTLINED_FUNCTION_23_1();
          v433(v157);
        }

        else
        {
          LODWORD(v464) = 1;
          OUTLINED_FUNCTION_47_1();
          __swift_storeEnumTagSinglePayload(v158, v159, v160, v149);
          sub_24380B1F4(v150, &qword_27ED930B8, &qword_24381DE18);
          v153 = 0;
          v155 = 0;
        }

        sub_24380B1F4(&v473, &qword_27ED930C0, &qword_24381DE38);
        v161 = v469;
        *&v476 = v469;
        v163 = *(v469 + 16);
        v162 = *(v469 + 24);
        if (v163 >= v162 >> 1)
        {
          v174 = OUTLINED_FUNCTION_28_0(v162);
          sub_243818CC0(v174, v163 + 1, 1);
          v161 = v476;
        }

        *(v161 + 16) = v163 + 1;
        v164 = v161 + 32 * v163;
        *(v164 + 32) = v465;
        *(v164 + 40) = v153;
        *(v164 + 48) = v155;
        *(v164 + 56) = v464 & 1;
        v143 = v467;
        v165 = 1 << *(v467 + 32);
        if (v147 >= v165)
        {
          goto LABEL_191;
        }

        if ((*(v466 + 8 * v151) & (1 << v147)) == 0)
        {
          goto LABEL_192;
        }

        if (*(v467 + 36) != v463)
        {
          goto LABEL_193;
        }

        *&v469 = v161;
        OUTLINED_FUNCTION_58_1();
        if (v167)
        {
          v169 = v151 << 6;
          v170 = v151 + 1;
          v171 = (v431 + 8 * v151);
          v168 = v451;
          while (v170 < (v165 + 63) >> 6)
          {
            v173 = *v171++;
            v172 = v173;
            v169 += 64;
            ++v170;
            if (v173)
            {
              sub_24380AF64(v147, v166, v460 & 1);
              v165 = __clz(__rbit64(v172)) + v169;
              goto LABEL_58;
            }
          }

          sub_24380AF64(v147, v166, v460 & 1);
        }

        else
        {
          OUTLINED_FUNCTION_57_1();
          v168 = v451;
        }

LABEL_58:
        v146 = 0;
        ++v148;
        v147 = v165;
        v145 = v452;
        v149 = v458;
      }

      while (v148 != v168);
      v175 = v469;
    }

    else
    {
      v175 = v80;
    }

    v176 = 0;
    ++v429;
    v177 = v175[2];
    v178 = v175 + 7;
    v179 = v459;
    v466 = v177;
    while (v177 != v176)
    {
      if (v176 >= v175[2])
      {
        __break(1u);
LABEL_185:
        __break(1u);
LABEL_186:
        __break(1u);
        goto LABEL_187;
      }

      if ((*v178 & 1) == 0)
      {
        v180 = *(v178 - 3);
        v469 = *(v178 - 1);
        swift_beginAccess();

        v181 = *(v179 + 24);
        swift_isUniquelyReferenced_nonNull_native();
        v182 = v179;
        v183 = *(v179 + 24);
        *&v473 = v183;
        *(v182 + 24) = 0x8000000000000000;
        v184 = sub_243800504(v180);
        if (__OFADD__(*(v183 + 16), (v185 & 1) == 0))
        {
          goto LABEL_200;
        }

        v186 = v184;
        v187 = v185;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED930C8, &unk_24381DE40);
        v188 = sub_24381CEC4();
        v189 = v473;
        if (v188)
        {
          v190 = sub_243800504(v180);
          if ((v187 & 1) != (v191 & 1))
          {
            goto LABEL_217;
          }

          v186 = v190;
          if ((v187 & 1) == 0)
          {
LABEL_69:
            v189[(v186 >> 6) + 8] |= 1 << v186;
            *(v189[6] + 8 * v186) = v180;
            *(v189[7] + 16 * v186) = v469;
            v192 = v189[2];
            v193 = __OFADD__(v192, 1);
            v194 = v192 + 1;
            if (v193)
            {
              goto LABEL_202;
            }

            v189[2] = v194;
            goto LABEL_73;
          }
        }

        else if ((v187 & 1) == 0)
        {
          goto LABEL_69;
        }

        *(v189[7] + 16 * v186) = v469;
LABEL_73:
        v195 = v459;
        *(v459 + 24) = v189;
        v179 = v195;
        swift_endAccess();

        v177 = v466;
      }

      v178 += 32;
      ++v176;
    }

    type metadata accessor for DownloadRequestContext();
    (*v402)(v409, v418, v417);

    v464 = sub_2438007D8(v196);
    v197 = v455;
    if (v455)
    {
      *&v478 = MEMORY[0x277D84F90];
      OUTLINED_FUNCTION_44_1();
      sub_24380A10C();
      v198 = v478;
      v199 = v430;
      v200 = v453;
      v201 = v398;
      do
      {
        v203 = *v199++;
        v202 = v203;
        if (v203 < 0)
        {
          goto LABEL_194;
        }

        v204 = v456;
        if (!*(v456 + 16))
        {
          goto LABEL_195;
        }

        v205 = sub_243800504(v202);
        if ((v206 & 1) == 0)
        {
          goto LABEL_196;
        }

        v207 = *(v204 + 56);
        v208 = v449;
        v209 = *(v449 + 72);
        (*(v449 + 16))(v201, v207 + v209 * v205, v200);
        v210 = v198;
        *&v478 = v198;
        v212 = *(v198 + 16);
        v211 = *(v198 + 24);
        if (v212 >= v211 >> 1)
        {
          OUTLINED_FUNCTION_28_0(v211);
          sub_24380A10C();
          v208 = v449;
          v210 = v478;
        }

        *(v210 + 16) = v212 + 1;
        v213 = *(v208 + 80);
        OUTLINED_FUNCTION_37_1();
        v198 = v214;
        (*(v208 + 32))(v214 + v215 + v212 * v209, v201, v200);
        --v197;
      }

      while (v197);
      v80 = MEMORY[0x277D84F90];
      v216 = v198;
    }

    else
    {
      v80 = MEMORY[0x277D84F90];
      v216 = MEMORY[0x277D84F90];
      v208 = v449;
    }

    v217 = *(v216 + 16);
    v463 = v216;
    if (v217)
    {
      *&v478 = v80;
      v218 = OUTLINED_FUNCTION_8_1();
      v220 = v219;
      sub_24380A05C(v218, v221, v222);
      v223 = v478;
      v224 = *(v208 + 80);
      OUTLINED_FUNCTION_37_1();
      v226 = v220 + v225;
      *&v469 = *(v208 + 72);
      v466 = *(v208 + 16);
      do
      {
        v227 = OUTLINED_FUNCTION_65_0();
        v228 = v453;
        (v466)(v227);
        v229 = v446;
        sub_24381C9C4();
        v230 = sub_24381C994();
        v232 = v231;
        (*v444)(v229, v447);
        v233 = OUTLINED_FUNCTION_62_0();
        v234(v233, v228);
        *&v478 = v223;
        v236 = v223[2];
        v235 = v223[3];
        v237 = v236 + 1;
        if (v236 >= v235 >> 1)
        {
          v239 = OUTLINED_FUNCTION_28_0(v235);
          sub_24380A05C(v239, v236 + 1, 1);
          v223 = v478;
        }

        v223[2] = v237;
        v238 = &v223[2 * v236];
        v238[4] = v230;
        v238[5] = v232;
        v226 += v469;
        --v217;
      }

      while (v217);
      v80 = MEMORY[0x277D84F90];
      goto LABEL_93;
    }

    v237 = v80[2];
    if (v237)
    {
      v223 = v80;
LABEL_93:
      *&v478 = v80;
      v240 = OUTLINED_FUNCTION_44_1();
      sub_24380A02C(v240, v241, v242);
      *&v469 = v478;
      v243 = v223 + 5;
      while (2)
      {
        v244 = *(v243 - 1);
        v245 = *v243;
        v246 = *v243 >> 62;
        v243 += 2;
        v247 = v80;
        switch(v246)
        {
          case 1uLL:
            if (__OFSUB__(HIDWORD(v244), v244))
            {
              goto LABEL_203;
            }

            v248 = HIDWORD(v244) - v244;
LABEL_100:
            v251 = OUTLINED_FUNCTION_23_1();
            sub_24380AF70(v251, v252);
            if (v248)
            {
LABEL_101:
              if (v248 < 1)
              {
                v247 = v80;
              }

              else
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92DF8, &qword_24381DDA0);
                v247 = swift_allocObject();
                v253 = _swift_stdlib_malloc_size(v247);
                v247[2] = v248;
                v247[3] = 2 * v253 - 64;
              }

              v254 = v436;
              v255 = sub_24381C6F4();
              (*v434)(v254, v437);
              v80 = MEMORY[0x277D84F90];
              if (v255 != v248)
              {
                goto LABEL_201;
              }
            }

            else
            {
LABEL_96:
              v247 = v80;
            }

LABEL_105:
            v256 = v247[2];
            v257 = swift_slowAlloc();
            memcpy(v257, v247 + 4, v256);
            v258 = OUTLINED_FUNCTION_23_1();
            sub_2437FF838(v258, v259);

            v260 = v469;
            *&v478 = v469;
            v262 = *(v469 + 16);
            v261 = *(v469 + 24);
            if (v262 >= v261 >> 1)
            {
              v263 = OUTLINED_FUNCTION_28_0(v261);
              sub_24380A02C(v263, v262 + 1, 1);
              v260 = v478;
            }

            *(v260 + 16) = v262 + 1;
            *&v469 = v260;
            *(v260 + 8 * v262 + 32) = v257;
            if (--v237)
            {
              continue;
            }

            break;
          case 2uLL:
            v250 = *(v244 + 16);
            v249 = *(v244 + 24);
            v248 = v249 - v250;
            if (!__OFSUB__(v249, v250))
            {
              goto LABEL_100;
            }

            goto LABEL_204;
          case 3uLL:
            goto LABEL_105;
          default:
            v248 = BYTE6(v245);
            if (!BYTE6(v245))
            {
              goto LABEL_96;
            }

            goto LABEL_101;
        }

        break;
      }
    }

    else
    {

      *&v469 = v80;
    }

    if (v455)
    {
      *&v473 = v80;
      sub_24380A0EC(0, v455, 0);
      v264 = 0;
      v265 = v473;
      while (1)
      {
        v266 = v462;
        if (v264 >= v468[2])
        {
          goto LABEL_197;
        }

        v267 = v468[v264 + 4];
        if (v267 < 0)
        {
          goto LABEL_198;
        }

        sub_24380029C(v267, &v478);
        v462 = v266;
        if (v266)
        {
          goto LABEL_216;
        }

        *&v473 = v265;
        v269 = v265[2];
        v268 = v265[3];
        if (v269 >= v268 >> 1)
        {
          v270 = OUTLINED_FUNCTION_28_0(v268);
          sub_24380A0EC(v270, v269 + 1, 1);
          v265 = v473;
        }

        ++v264;
        v265[2] = v269 + 1;
        sub_243800490(&v478, &v265[5 * v269 + 4]);
        if (v455 == v264)
        {
          goto LABEL_119;
        }
      }
    }

    v265 = v80;
LABEL_119:
    v271 = v265[2];
    if (v271)
    {
      *&v473 = v80;
      v272 = OUTLINED_FUNCTION_8_1();
      sub_24380A0AC(v272, v273, v274);
      v275 = v473;
      v276 = (v265 + 4);
      do
      {
        sub_2438000FC(v276, &v478);
        __swift_project_boxed_opaque_existential_1(&v478, *(&v479 + 1));
        sub_24381C764();
        v277 = sub_24381C734();
        v279 = v278;
        v280 = OUTLINED_FUNCTION_62_0();
        v281(v280, v454);
        __swift_destroy_boxed_opaque_existential_1(&v478);
        *&v473 = v275;
        v283 = v275[2];
        v282 = v275[3];
        if (v283 >= v282 >> 1)
        {
          v285 = OUTLINED_FUNCTION_28_0(v282);
          sub_24380A0AC(v285, v283 + 1, 1);
          v275 = v473;
        }

        v275[2] = v283 + 1;
        v284 = &v275[2 * v283];
        v284[4] = v277;
        v284[5] = v279;
        v276 += 40;
        --v271;
      }

      while (v271);

      v80 = MEMORY[0x277D84F90];
    }

    else
    {

      v275 = v80;
    }

    v286 = v275[2];
    v287 = v432;
    if (v286)
    {
      *&v473 = v80;
      v288 = OUTLINED_FUNCTION_8_1();
      sub_24380A07C(v288, v289, v290);
      v291 = 0;
      v292 = v473;
      v293 = v275 + 5;
      v465 = v286;
      do
      {
        if (v291 >= v275[2])
        {
          goto LABEL_199;
        }

        v466 = v292;
        v294 = *(v293 - 1);
        v295 = *v293;
        *&v478 = v294;
        *(&v478 + 1) = v295;

        v296 = v440;
        sub_24381CB94();
        sub_24380B0DC();
        v297 = sub_24381CDE4();
        (*v439)(v296, v287);
        if (v297)
        {
          v298 = *(v297 + 16);
          v299 = swift_slowAlloc();
          memcpy(v299, (v297 + 32), v298);
        }

        else
        {
          if (_MergedGlobals_2 != -1)
          {
            OUTLINED_FUNCTION_0_4();
            swift_once();
          }

          v300 = sub_24381CA64();
          OUTLINED_FUNCTION_47_0(v300, qword_27ED93448);

          v301 = sub_24381CA44();
          v302 = sub_24381CD84();

          if (os_log_type_enabled(v301, v302))
          {
            v303 = OUTLINED_FUNCTION_42_0();
            v304 = OUTLINED_FUNCTION_63();
            *&v478 = v304;
            *v303 = v428;
            *(v303 + 4) = sub_243808908(v294, v295, &v478);
            _os_log_impl(&dword_2437FA000, v301, v302, "unable to convert token %s to C string.", v303, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v304);
            v80 = MEMORY[0x277D84F90];
            OUTLINED_FUNCTION_35_0();
            OUTLINED_FUNCTION_14_0();
          }

          v299 = 0;
          v287 = v432;
        }

        v292 = v466;
        *&v473 = v466;
        v306 = *(v466 + 16);
        v305 = *(v466 + 24);
        if (v306 >= v305 >> 1)
        {
          v307 = OUTLINED_FUNCTION_28_0(v305);
          sub_24380A07C(v307, v306 + 1, 1);
          v292 = v473;
        }

        ++v291;
        *(v292 + 16) = v306 + 1;
        *(v292 + 8 * v306 + 32) = v299;
        v293 += 2;
      }

      while (v465 != v291);
      v466 = v292;
    }

    else
    {

      v466 = v80;
    }

    v471 = 0;
    v308 = *(*(v407 + 16) + 32);
    v69 = v424;
    v309 = sub_24381C6A4();
    sub_24381C744();
    v467 = sub_24381CB74();

    v465 = *(v464 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92EB0, &unk_24381D9D0);
    v310 = swift_initStackObject();
    *(v310 + 16) = v400;
    if (!v401)
    {
      goto LABEL_211;
    }

    *(v310 + 32) = sub_24381CB84();
    *(v310 + 40) = v311;
    v312 = v459;
    sub_2438105A8();
    v314 = v313;
    *(v310 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92EB8, &qword_24381DB50);
    *(v310 + 48) = v314;
    v315 = sub_24381A61C();
    v317 = *v315;
    v316 = v315[1];
    *(v310 + 80) = v317;
    *(v310 + 88) = v316;
    LOBYTE(v317) = *(v312 + 64);
    *(v310 + 120) = MEMORY[0x277D839B0];
    *(v310 + 96) = v317;

    v318 = MEMORY[0x277D837D0];
    sub_24381CB24();
    if (*(v312 + 40) >> 60 == 15 || (v319 = *(v312 + 56), v319 >> 60 == 15))
    {
      v320 = v399;
      goto LABEL_147;
    }

    v463 = v308;
    if (!v394)
    {
      __break(1u);
LABEL_216:

      swift_unexpectedError();
      __break(1u);
LABEL_217:
      sub_24381CF54();
      __break(1u);
      JUMPOUT(0x2438180C4);
    }

    v321 = v309;
    v322 = *(v459 + 32);
    v323 = *(v459 + 48);
    v324 = sub_24381CB84();
    v326 = v325;
    v474 = MEMORY[0x277CC9318];
    OUTLINED_FUNCTION_69();
    v327 = OUTLINED_FUNCTION_66_0();
    sub_243819864(v327, v328);
    v329 = OUTLINED_FUNCTION_66_0();
    sub_243819864(v329, v330);
    v331 = OUTLINED_FUNCTION_63_0();
    sub_243819864(v331, v332);
    swift_isUniquelyReferenced_nonNull_native();
    v333 = OUTLINED_FUNCTION_59_0();
    sub_243818F74(v333, v324, v326);

    v334 = v476;
    v335 = sub_24381A640();
    v336 = *v335;
    v337 = v335[1];
    v474 = MEMORY[0x277CC9318];
    *&v473 = v323;
    *(&v473 + 1) = v319;
    sub_24380B0CC(&v473, v475);
    v338 = OUTLINED_FUNCTION_63_0();
    sub_243819864(v338, v339);

    swift_isUniquelyReferenced_nonNull_native();
    *&v476 = v334;
    sub_243818F74(v475, v336, v337);

    v340 = OUTLINED_FUNCTION_66_0();
    sub_24381933C(v340, v341);
    v342 = OUTLINED_FUNCTION_63_0();
    sub_24381933C(v342, v343);
    v320 = v399;
    v80 = MEMORY[0x277D84F90];
    v318 = MEMORY[0x277D837D0];
    v309 = v321;
    v69 = v424;
    v308 = v463;
LABEL_147:
    v344 = *(v459 + 80);
    if (v344)
    {
      v463 = v308;
      if (v320)
      {
        v345 = v309;
        v346 = *(v459 + 72);
        v347 = sub_24381CB84();
        v349 = v348;
        v474 = v318;
        OUTLINED_FUNCTION_69();
        swift_bridgeObjectRetain_n();
        swift_isUniquelyReferenced_nonNull_native();
        v350 = OUTLINED_FUNCTION_59_0();
        sub_243818F74(v350, v347, v349);

        if (v397)
        {
          v351 = v476;
          v352 = sub_24381CB84();
          v354 = v353;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED930D8, &qword_24381DE58);
          v355 = swift_initStackObject();
          *(v355 + 16) = v408;
          if (v396)
          {
            *(v355 + 32) = sub_24381CB84();
            *(v355 + 40) = v356;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED930E0, &qword_24381DE60);
            v357 = swift_initStackObject();
            *(v357 + 16) = v408;
            *(v357 + 32) = 0xD000000000000014;
            *(v357 + 40) = v395;
            *(v357 + 48) = v346;
            *(v357 + 56) = v344;
            *(v355 + 48) = sub_24381CB24();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED930E8, &qword_24381DE68);
            v358 = sub_24381CB24();
            v477 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED930F0, &unk_24381DE70);
            *&v476 = v358;
            sub_24380B0CC(&v476, v472);
            swift_isUniquelyReferenced_nonNull_native();
            v470 = v351;
            sub_243818F74(v472, v352, v354);

            v309 = v345;
            v69 = v424;
            goto LABEL_152;
          }

LABEL_212:
          __break(1u);
        }

        __break(1u);
      }

      __break(1u);
    }

LABEL_152:
    OUTLINED_FUNCTION_48_1();
    v359 = sub_24381CAF4();

    v360 = *(v456 + 16);

    v361 = v469;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2438086A4(0, *(v361 + 16), 0, v361, &qword_27ED92EA8, &qword_24381DE50);
      v361 = v362;
    }

    v363 = v466;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2438086A4(0, *(v363 + 16), 0, v363, &qword_27ED92EA0, &unk_24381D9C0);
      v363 = v364;
    }

    swift_beginAccess();

    v365 = v467;
    v366 = MMCSGetItems();
    swift_endAccess();
    v367 = v363;

    if (!v366)
    {
      sub_24380043C();
      *&v478 = OUTLINED_FUNCTION_49_0();
      sub_24381CD14();
      if (_MergedGlobals_2 != -1)
      {
        OUTLINED_FUNCTION_0_4();
        swift_once();
      }

      v368 = sub_24381CA64();
      OUTLINED_FUNCTION_47_0(v368, qword_27ED93448);
      v369 = sub_24381CA44();
      v370 = sub_24381CD84();
      if (os_log_type_enabled(v369, v370))
      {
        v371 = OUTLINED_FUNCTION_42_0();
        v372 = OUTLINED_FUNCTION_54_0();
        *v371 = v393;
        v373 = v471;
        if (v471)
        {
          type metadata accessor for CFError(0);
          *&v469 = v374;
          OUTLINED_FUNCTION_15_2();
          sub_243819364(&qword_27ED930D0, v375);
          OUTLINED_FUNCTION_49_0();
          *v376 = v373;
          v377 = _swift_stdlib_bridgeErrorToNSError();
          v378 = v377;
        }

        else
        {
          v377 = 0;
          v378 = 0;
        }

        *(v371 + 4) = v377;
        *v372 = v378;
        _os_log_impl(&dword_2437FA000, v369, v370, "failed to create download request due to error %@", v371, 0xCu);
        sub_24380B1F4(v372, &qword_27ED92E38, &unk_24381DBD0);
        OUTLINED_FUNCTION_27_0();
        OUTLINED_FUNCTION_22_1();
      }
    }

    v379 = *(v361 + 16);
    v380 = v404;
    if (v379)
    {

      v381 = 32;
      do
      {
        if (*(v361 + v381))
        {
          OUTLINED_FUNCTION_35_0();
        }

        v381 += 8;
        --v379;
      }

      while (v379);
    }

    v382 = *(v367 + 16);
    if (v382)
    {

      v383 = v367;
      v384 = 32;
      do
      {
        if (*(v383 + v384))
        {
          OUTLINED_FUNCTION_35_0();
          v383 = v367;
        }

        v384 += 8;
        --v382;
      }

      while (v382);
    }

    sub_2437FF838(v420, v419);
    sub_2437FF838(v422, v421);

    (*v448)(v425, v454);
    (*v403)(v69, v380);

    v75 = v429;
    v61 = v380;
  }

  while (v429 != v406);
LABEL_183:
  v392 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_33_0();
}

uint64_t sub_2438180D4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_24381810C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2438110FC(a1);
  *a2 = result;
  return result;
}

size_t sub_243818134(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  v9 = sub_24381823C(v8, v7);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92EC0, &qword_24381D9E0) - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_243818344(a4 + v11, v8, v9 + v11, &qword_27ED92EC0, &qword_24381D9E0);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

size_t sub_24381823C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED93118, &qword_24381DEB8);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92EC0, &qword_24381D9E0) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_243818344(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a3 < a1 || (v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5), result = OUTLINED_FUNCTION_0_1(v10), a1 + *(v12 + 72) * a2 <= a3))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v14 = OUTLINED_FUNCTION_48_1();

    return MEMORY[0x2821FE828](v14);
  }

  else if (a3 != a1)
  {
    v13 = OUTLINED_FUNCTION_48_1();

    return MEMORY[0x2821FE820](v13);
  }

  return result;
}

unint64_t sub_243818428(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_24381C6E4();
  sub_243819364(&qword_27ED93128, MEMORY[0x277CC9260]);
  v5 = sub_24381CB44();

  return sub_2438184C0(a1, v5);
}

unint64_t sub_2438184C0(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  v4 = sub_24381C6E4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v2 + 64;
  v13 = ~(-1 << *(v2 + 32));
  for (i = a2 & v13; ((1 << i) & *(v15 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v13)
  {
    (*(v5 + 16))(v8, *(v2 + 48) + *(v5 + 72) * i, v4);
    sub_243819364(&qword_27ED93130, MEMORY[0x277CC9260]);
    v10 = sub_24381CB64();
    (*(v5 + 8))(v8, v4);
    if (v10)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_24381867C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  sub_24380AC84(a1, a2, a3, v36);
  v34[2] = v36[0];
  v34[3] = v36[1];
  v34[4] = v36[2];
  v35 = v37;

  while (1)
  {
    sub_24380ADA8(&v33);
    v7 = *(&v33 + 1);
    if (!*(&v33 + 1))
    {
      sub_24380B0C4();
    }

    v8 = v33;
    sub_24380B0CC(v34, v32);
    v9 = *a5;
    v10 = OUTLINED_FUNCTION_65_0();
    v13 = sub_24380939C(v10, v11);
    v14 = *(v9 + 16);
    v15 = (v12 & 1) == 0;
    v16 = v14 + v15;
    if (__OFADD__(v14, v15))
    {
      break;
    }

    v17 = v12;
    if (*(v9 + 24) >= v16)
    {
      if (a4)
      {
        if (v12)
        {
          goto LABEL_10;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92EF0, &unk_24381DA10);
        sub_24381CED4();
        if (v17)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      sub_2438099C4(v16, a4 & 1);
      v18 = *a5;
      v19 = OUTLINED_FUNCTION_65_0();
      v21 = sub_24380939C(v19, v20);
      if ((v17 & 1) != (v22 & 1))
      {
        goto LABEL_18;
      }

      v13 = v21;
      if (v17)
      {
LABEL_10:
        v23 = *a5;
        sub_243808E78(*(*a5 + 56) + 32 * v13, v31);
        __swift_destroy_boxed_opaque_existential_1(v32);

        v24 = (*(v23 + 56) + 32 * v13);
        __swift_destroy_boxed_opaque_existential_1(v24);
        sub_24380B0CC(v31, v24);
        goto LABEL_14;
      }
    }

    v25 = *a5;
    *(*a5 + 8 * (v13 >> 6) + 64) |= 1 << v13;
    v26 = (v25[6] + 16 * v13);
    *v26 = v8;
    v26[1] = v7;
    sub_24380B0CC(v32, (v25[7] + 32 * v13));
    v27 = v25[2];
    v28 = __OFADD__(v27, 1);
    v29 = v27 + 1;
    if (v28)
    {
      goto LABEL_17;
    }

    v25[2] = v29;
LABEL_14:
    a4 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_24381CF54();
  __break(1u);
  return result;
}

uint64_t sub_2438188A8(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_24381C6E4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED93120, &qword_24381DEC0);
  v43 = a2;
  result = sub_24381CF04();
  v14 = result;
  if (!*(v11 + 16))
  {
LABEL_34:

LABEL_35:
    *v3 = v14;
    return result;
  }

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
  if (!v19)
  {
LABEL_9:
    v23 = v15;
    while (1)
    {
      v15 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v15 >= v20)
      {
        break;
      }

      v24 = v16[v15];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v19 = (v24 - 1) & v24;
        goto LABEL_14;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_35;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      sub_243809FA8(0, (v37 + 63) >> 6, v16);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
    goto LABEL_34;
  }

  while (1)
  {
    v22 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
LABEL_14:
    v25 = v22 | (v15 << 6);
    v26 = *(v11 + 48);
    v46 = *(v42 + 72);
    v27 = v26 + v46 * v25;
    if (v43)
    {
      (*v44)(v47, v27, v6);
      v45 = *(*(v11 + 56) + 8 * v25);
    }

    else
    {
      (*v40)(v47, v27, v6);
      v45 = *(*(v11 + 56) + 8 * v25);
    }

    v28 = *(v14 + 40);
    sub_243819364(&qword_27ED93128, MEMORY[0x277CC9260]);
    result = sub_24381CB44();
    v29 = -1 << *(v14 + 32);
    v30 = result & ~v29;
    v31 = v30 >> 6;
    if (((-1 << v30) & ~*(v21 + 8 * (v30 >> 6))) == 0)
    {
      break;
    }

    v32 = __clz(__rbit64((-1 << v30) & ~*(v21 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v21 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
    result = (*v44)(*(v14 + 48) + v46 * v32, v47, v6);
    *(*(v14 + 56) + 8 * v32) = v45;
    ++*(v14 + 16);
    v11 = v41;
    if (!v19)
    {
      goto LABEL_9;
    }
  }

  v33 = 0;
  v34 = (63 - v29) >> 6;
  while (++v31 != v34 || (v33 & 1) == 0)
  {
    v35 = v31 == v34;
    if (v31 == v34)
    {
      v31 = 0;
    }

    v33 |= v35;
    v36 = *(v21 + 8 * v31);
    if (v36 != -1)
    {
      v32 = __clz(__rbit64(~v36)) + (v31 << 6);
      goto LABEL_26;
    }
  }

LABEL_37:
  __break(1u);
  return result;
}

void sub_243818C80()
{
  v1 = *v0;
  sub_243818CE0();
  *v0 = v2;
}

char *sub_243818CC0(char *a1, int64_t a2, char a3)
{
  result = sub_243818E78(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_243818CE0()
{
  OUTLINED_FUNCTION_36_0();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if (v11)
  {
    OUTLINED_FUNCTION_53_0();
    if (v13 != v14)
    {
      if (v12 + 0x4000000000000000 < 0)
      {
LABEL_24:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_51_0();
    }
  }

  else
  {
    v12 = v0;
  }

  v15 = *(v8 + 16);
  if (v12 <= v15)
  {
    v16 = *(v8 + 16);
  }

  else
  {
    v16 = v12;
  }

  if (!v16)
  {
    v24 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  v17 = OUTLINED_FUNCTION_48_1();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(v17, v18);
  OUTLINED_FUNCTION_1(v19);
  v21 = *(v20 + 72);
  v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v24 = swift_allocObject();
  v25 = _swift_stdlib_malloc_size(v24);
  if (!v21)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v25 - v23 == 0x8000000000000000 && v21 == -1)
  {
    goto LABEL_23;
  }

  v24[2] = v15;
  v24[3] = 2 * ((v25 - v23) / v21);
LABEL_18:
  v27 = OUTLINED_FUNCTION_48_1();
  v29 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(v27, v28) - 8) + 80);
  OUTLINED_FUNCTION_37_1();
  if (v10)
  {
    sub_243818344(v8 + v30, v15, v24 + v30, v6, v4);
    *(v8 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_33_0();
}

char *sub_243818E78(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED93100, &qword_24381DE98);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 32 * v8;
  if (v5)
  {
    if (v10 != a4 || &v13[v14] <= v12)
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

_OWORD *sub_243818F74(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_24380939C(a2, a3);
  if (__OFADD__(*(v8 + 16), (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v9;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92EF0, &unk_24381DA10);
  if ((sub_24381CEC4() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = *v4;
  v14 = sub_24380939C(a2, a3);
  if ((v12 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_24381CF54();
    __break(1u);
    return result;
  }

  v11 = v14;
LABEL_5:
  v16 = *v4;
  if (v12)
  {
    v17 = (v16[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1(v17);

    return sub_24380B0CC(a1, v17);
  }

  else
  {
    sub_2438190BC(v11, a2, a3, a1, v16);
  }
}

_OWORD *sub_2438190BC(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_24380B0CC(a4, (a5[7] + 32 * a1));
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

void sub_243819128()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  sub_243815F9C();
}

uint64_t sub_243819190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_24381C6E4();

  return __swift_getEnumTagSinglePayload(a1 + v5, a2, v6);
}

uint64_t sub_2438191F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_24381C6E4();

  return __swift_storeEnumTagSinglePayload(a1 + v6, a2, a2, v7);
}

void sub_243819250()
{
  sub_24381C6E4();
  if (v0 <= 0x3F)
  {
    sub_2438192E4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2438192E4()
{
  if (!qword_27ED93050)
  {
    v0 = sub_24381CD64();
    if (!v1)
    {
      atomic_store(v0, &qword_27ED93050);
    }
  }
}

uint64_t sub_24381933C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2437FF838(a1, a2);
  }

  return a1;
}

void sub_243819350()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
  sub_2438135A4();
}

uint64_t sub_243819364(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_45_0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2438193A8()
{
  OUTLINED_FUNCTION_36_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED93060, &unk_24381DD90);
  OUTLINED_FUNCTION_9(v1);
  v3 = v2;
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v6 = (*(v5 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED93070, &unk_24381DDA8);
  OUTLINED_FUNCTION_9(v7);
  v9 = v8;
  v10 = (((v6 + 11) & 0xFFFFFFFFFFFFFFF8) + *(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = (*(v11 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v4, v1);
  v14 = *(v0 + v6);

  (*(v9 + 8))(v0 + v10, v7);
  OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2821FE8E8](v15, v16, v17);
}

uint64_t sub_243819510()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED93060, &unk_24381DD90);
  OUTLINED_FUNCTION_1(v2);
  v5 = (*(v4 + 64) + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 11) & 0xFFFFFFFFFFFFFFF8;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED93070, &unk_24381DDA8);
  OUTLINED_FUNCTION_38(v7);
  v9 = (v6 + *(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = *(v0 + v5);
  v11 = (v0 + v6);
  v12 = *(v0 + v6);
  v13 = v11[1];
  v14 = v11[2];
  v15 = v11[3];
  v16 = swift_task_alloc();
  *(v1 + 16) = v16;
  *v16 = v1;
  v16[1] = sub_2437FB6F4;

  return sub_2438138B0();
}

uint64_t sub_243819694(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Downloader.AssetDownloadResult();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2438196F8(uint64_t a1)
{
  v2 = type metadata accessor for Downloader.AssetDownloadResult();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_243819754(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Downloader.AssetDownloadResult();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2438197B8()
{
  sub_24381CE54();
  MEMORY[0x245D40C80](3943982, 0xE300000000000000);
  sub_24381CE54();
  return 0;
}

uint64_t sub_243819864(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_24380AF70(a1, a2);
  }

  return a1;
}

uint64_t sub_243819878(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_71_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_0_1(v6);
  (*(v7 + 16))(v4, v5);
  return v4;
}

uint64_t sub_2438198C8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_71_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_0_1(v6);
  (*(v7 + 32))(v4, v5);
  return v4;
}

void sub_243819918(uint64_t a1, unint64_t *a2)
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

void OUTLINED_FUNCTION_20_1()
{

  JUMPOUT(0x245D41570);
}

void OUTLINED_FUNCTION_22_1()
{

  JUMPOUT(0x245D41570);
}

uint64_t OUTLINED_FUNCTION_33_1()
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_35_1(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_46_1@<X0>(uint64_t a1@<X3>, unint64_t a2@<X8>)
{

  return sub_243808200(0x7FFFFFFFFFFFFFFFLL, 1, v2, a1, v3, v4, a2);
}

uint64_t OUTLINED_FUNCTION_54_0()
{

  return swift_slowAlloc();
}

BOOL OUTLINED_FUNCTION_55_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

double OUTLINED_FUNCTION_56_1(uint64_t a1, uint64_t a2)
{

  return sub_2438033D0(a1, a2, v2, (v3 - 112));
}

_OWORD *OUTLINED_FUNCTION_69()
{
  *(v0 + 824) = v2;
  *(v0 + 832) = v1;

  return sub_24380B0CC((v0 + 824), (v0 + 888));
}

void OUTLINED_FUNCTION_70(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_71_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

BOOL OUTLINED_FUNCTION_72_0()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_243819CB4(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_243819CF4(a1);
  return v2;
}

uint64_t sub_243819CF4(uint64_t a1)
{
  v3 = swift_slowAlloc();
  *(v1 + 16) = v3;
  *(v1 + 24) = a1;
  v4 = *v3;
  *v3 = v1;

  return v1;
}

uint64_t sub_243819D40()
{
  result = *(v0 + 16);
  if (result)
  {
    MEMORY[0x245D41570](result, -1, -1);
    v2 = *(v0 + 24);

    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_243819D78()
{
  sub_243819D40();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_243819DC0(uint64_t result)
{
  if (result)
  {
    v1 = *(**result + 104);

    v1(v2);
  }

  return result;
}

void sub_243819E30(uint64_t a1, void *a2)
{
  v3 = a2;
  sub_243819DC0(a1);
}

uint64_t sub_243819EA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92E90, &unk_24381D9B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_243819F10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  swift_allocObject();
  return sub_243819F64(a1, a2, a3);
}

uint64_t sub_243819F64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = OBJC_IVAR____TtC17CloudAssetsDaemon20UploadRequestContext_storageReferenceContinuation;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92E98, &unk_24381DF30);
  __swift_storeEnumTagSinglePayload(v3 + v7, 1, 1, v8);
  OUTLINED_FUNCTION_2_3();
  sub_24381A094(a2, v3 + v7);
  swift_endAccess();
  v9 = OBJC_IVAR____TtC17CloudAssetsDaemon20UploadRequestContext_trackingNumberContinutation;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92E88, &unk_24381DF40);
  v11 = *(v10 - 8);
  (*(v11 + 16))(v3 + v9, a3, v10);
  v12 = sub_243819CF4(a1);
  (*(v11 + 8))(a3, v10);
  sub_24381A104(a2);
  return v12;
}

uint64_t sub_24381A094(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92E90, &unk_24381D9B0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_24381A104(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92E90, &unk_24381D9B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24381A16C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92E90, &unk_24381D9B0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v11 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92E98, &unk_24381DF30);
  v5 = OUTLINED_FUNCTION_1_1();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  v9 = OBJC_IVAR____TtC17CloudAssetsDaemon20UploadRequestContext_storageReferenceContinuation;
  OUTLINED_FUNCTION_2_3();
  sub_243819EA0(v4, v0 + v9);
  return swift_endAccess();
}

uint64_t sub_24381A2AC()
{
  sub_24381A104(v0 + OBJC_IVAR____TtC17CloudAssetsDaemon20UploadRequestContext_storageReferenceContinuation);
  v1 = OBJC_IVAR____TtC17CloudAssetsDaemon20UploadRequestContext_trackingNumberContinutation;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92E88, &unk_24381DF40);
  OUTLINED_FUNCTION_0_5(v2);
  v4 = *(v3 + 8);

  return v4(v0 + v1);
}

uint64_t sub_24381A324()
{
  v0 = sub_243819D40();
  v1 = OBJC_IVAR____TtC17CloudAssetsDaemon20UploadRequestContext_storageReferenceContinuation;

  sub_24381A104(v2 + v1);
  v3 = OBJC_IVAR____TtC17CloudAssetsDaemon20UploadRequestContext_trackingNumberContinutation;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92E88, &unk_24381DF40);
  OUTLINED_FUNCTION_0_5(v4);
  (*(v5 + 8))(v0 + v3);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v6, v7);
}

uint64_t type metadata accessor for UploadRequestContext()
{
  result = qword_27ED93460;
  if (!qword_27ED93460)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24381A438()
{
  sub_24381A504();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_24381A568();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_24381A504()
{
  if (!qword_27ED93150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED92E98, &unk_24381DF30);
    v0 = sub_24381CDD4();
    if (!v1)
    {
      atomic_store(v0, &qword_27ED93150);
    }
  }
}

void sub_24381A568()
{
  if (!qword_27ED93158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED92DE0, &unk_24381D950);
    v0 = sub_24381CD24();
    if (!v1)
    {
      atomic_store(v0, &qword_27ED93158);
    }
  }
}

uint64_t OUTLINED_FUNCTION_2_3()
{

  return swift_beginAccess();
}

unint64_t sub_24381A658()
{
  sub_24381CE34();

  MEMORY[0x245D40C80](*(v0 + 16), *(v0 + 24));
  return 0xD000000000000014;
}

uint64_t sub_24381A6C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  sub_24381A730(a1, a2, a3, a4);
  return v11;
}

uint64_t sub_24381A730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v7 = OBJC_IVAR____TtC17CloudAssetsDaemon13TenantContext_workingDirectory;
  v8 = sub_24381C6E4();
  OUTLINED_FUNCTION_0_1(v8);
  (*(v9 + 32))(v4 + v7, a3);
  *(v4 + OBJC_IVAR____TtC17CloudAssetsDaemon13TenantContext_requestTracker) = a4;
  return v4;
}

void *sub_24381A7AC()
{
  v1 = swift_slowAlloc();
  v2 = swift_slowAlloc();
  *v2 = v0;
  type metadata accessor for Registerer();

  v3 = sub_24380C834();
  type metadata accessor for Downloader();
  v4 = sub_243811130();
  v5 = sub_243811148();
  type metadata accessor for Uploader();
  v6 = sub_243802840();
  v7 = sub_243803490();
  type metadata accessor for RequestContext();
  v8 = sub_243819DAC();
  *v1 = 9;
  v1[1] = v2;
  v1[2] = v3;
  v1[3] = v4;
  v1[4] = v5;
  v1[5] = v6;
  v1[6] = v7;
  v1[7] = v8;
  v1[9] = 0;
  v1[10] = 0;
  v1[8] = 0;
  return v1;
}

uint64_t sub_24381A88C()
{
  v1 = *(v0 + 24);

  v2 = OBJC_IVAR____TtC17CloudAssetsDaemon13TenantContext_workingDirectory;
  v3 = sub_24381C6E4();
  OUTLINED_FUNCTION_0_1(v3);
  (*(v4 + 8))(v0 + v2);
  v5 = *(v0 + OBJC_IVAR____TtC17CloudAssetsDaemon13TenantContext_requestTracker);

  return v0;
}

uint64_t sub_24381A8FC()
{
  sub_24381A88C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for TenantContext()
{
  result = qword_27ED93470;
  if (!qword_27ED93470)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24381A9A8()
{
  result = sub_24381C6E4();
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

uint64_t type metadata accessor for ProcessorFactory.TenantDomain()
{
  result = qword_27ED93600;
  if (!qword_27ED93600)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24381AA9C(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_24381CF34() & 1) == 0)
  {
    return 0;
  }

  v3 = *(type metadata accessor for ProcessorFactory.TenantDomain() + 20);

  return sub_24381C6B4();
}

uint64_t sub_24381AB18()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24381CBE4();
  v3 = *(type metadata accessor for ProcessorFactory.TenantDomain() + 20);
  sub_24381C6E4();
  OUTLINED_FUNCTION_0_6();
  sub_24381B694(v4, v5);
  return sub_24381CB54();
}

uint64_t sub_24381AB98()
{
  sub_24381CFC4();
  v1 = *v0;
  v2 = v0[1];
  sub_24381CBE4();
  v3 = *(type metadata accessor for ProcessorFactory.TenantDomain() + 20);
  sub_24381C6E4();
  OUTLINED_FUNCTION_0_6();
  sub_24381B694(v4, v5);
  OUTLINED_FUNCTION_2_4();
  return sub_24381CFE4();
}

uint64_t sub_24381AC2C(uint64_t a1, uint64_t a2)
{
  sub_24381CFC4();
  v4 = *v2;
  v5 = v2[1];
  sub_24381CBE4();
  v6 = *(a2 + 20);
  sub_24381C6E4();
  OUTLINED_FUNCTION_0_6();
  sub_24381B694(v7, v8);
  OUTLINED_FUNCTION_2_4();
  return sub_24381CFE4();
}

uint64_t sub_24381ACB4()
{
  swift_beginAccess();
  v1 = *(v0 + 120);
}

uint64_t sub_24381ACEC(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 120);
  *(v1 + 120) = a1;
}

uint64_t sub_24381AD88()
{
  v0 = swift_allocObject();
  sub_24381ADC0();
  return v0;
}

uint64_t sub_24381ADC0()
{
  swift_defaultActor_initialize();
  type metadata accessor for RequestTracker();
  *(v0 + 112) = sub_2437FFFB4();
  type metadata accessor for ProcessorFactory.TenantDomain();
  type metadata accessor for Engine();
  OUTLINED_FUNCTION_1_2();
  sub_24381B694(v1, v2);
  *(v0 + 120) = sub_24381CB24();
  return v0;
}

uint64_t sub_24381AE60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v44 = a1;
  v40 = a5;
  v39[0] = a6;
  v39[1] = a4;
  v42 = a3;
  v43 = a2;
  v8 = type metadata accessor for ProcessorFactory.TenantDomain();
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v12 = (v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_24381C6E4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TenantContext();
  v18 = *(v14 + 16);
  v18(v17, a3, v13);
  v19 = *(v6 + 112);
  v20 = v43;

  v21 = v44;
  sub_24381A6C8(v44, v20, v17, v19);
  v22 = *(v9 + 28);
  v23 = v41;
  v18(v12 + v22, v42, v13);
  *v12 = v21;
  v12[1] = v20;
  v24 = *(*v23 + 104);

  v26 = v24(v25);
  v27 = sub_24381B164(v12, v26);

  if (v27)
  {
    v28 = v27;
LABEL_3:
    v29 = *(v40 + 8);

    v29(v28);

    return sub_24381B1B4(v12);
  }

  type metadata accessor for Engine();

  v32 = v45;
  v33 = sub_24381BB08(v31);
  if (!v32)
  {
    v28 = v33;
    v34 = *(*v23 + 120);
    swift_retain_n();
    v35 = v34(v46);
    v37 = v36;
    v38 = *v36;
    swift_isUniquelyReferenced_nonNull_native();
    v47 = *v37;
    sub_24381B4D8(v28, v12);
    *v37 = v47;
    v35(v46, 0);
    goto LABEL_3;
  }

  sub_24381B1B4(v12);
}

uint64_t sub_24381B164(uint64_t *a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_24381B294(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
}

uint64_t sub_24381B1B4(uint64_t a1)
{
  v2 = type metadata accessor for ProcessorFactory.TenantDomain();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24381B210()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 120);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_24381B240()
{
  sub_24381B210();

  return MEMORY[0x282200960](v0);
}

unint64_t sub_24381B294(uint64_t *a1)
{
  v3 = *(v1 + 40);
  sub_24381CFC4();
  v4 = *a1;
  v5 = a1[1];
  sub_24381CBE4();
  v6 = *(type metadata accessor for ProcessorFactory.TenantDomain() + 20);
  sub_24381C6E4();
  sub_24381B694(&qword_27ED93128, MEMORY[0x277CC9260]);
  sub_24381CB54();
  v7 = sub_24381CFE4();

  return sub_24381B360(a1, v7);
}

unint64_t sub_24381B360(uint64_t *a1, uint64_t a2)
{
  v5 = type metadata accessor for ProcessorFactory.TenantDomain();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v9 = (&v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = -1 << *(v2 + 32);
  v11 = a2 & ~v10;
  if ((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = *a1;
    v14 = a1[1];
    v15 = *(v7 + 72);
    while (1)
    {
      sub_24381B8AC(*(v2 + 48) + v15 * v11, v9);
      v16 = *v9 == v13 && v9[1] == v14;
      if (v16 || (sub_24381CF34() & 1) != 0)
      {
        v17 = *(v5 + 20);
        if (sub_24381C6B4())
        {
          break;
        }
      }

      sub_24381B1B4(v9);
      v11 = (v11 + 1) & v12;
      if (((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        return v11;
      }
    }

    sub_24381B1B4(v9);
  }

  return v11;
}

uint64_t sub_24381B4D8(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v6 = type metadata accessor for ProcessorFactory.TenantDomain();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  v11 = sub_24381B294(a2);
  if (__OFADD__(*(v10 + 16), (v12 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v13 = v11;
  v14 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED93170, &unk_24381E070);
  if ((sub_24381CEC4() & 1) == 0)
  {
    goto LABEL_5;
  }

  v15 = *v3;
  v16 = sub_24381B294(a2);
  if ((v14 & 1) != (v17 & 1))
  {
LABEL_11:
    result = sub_24381CF54();
    __break(1u);
    return result;
  }

  v13 = v16;
LABEL_5:
  v18 = *v3;
  if (v14)
  {
    v19 = v18[7];
    v20 = *(v19 + 8 * v13);
    *(v19 + 8 * v13) = a1;
  }

  else
  {
    sub_24381B8AC(a2, v9);
    return sub_24381B910(v13, v9, a1, v18);
  }
}

uint64_t sub_24381B694(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24381B714(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_24381C6E4();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_24381B7B0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_24381C6E4();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24381B830()
{
  result = sub_24381C6E4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24381B8AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProcessorFactory.TenantDomain();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24381B910(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for ProcessorFactory.TenantDomain();
  result = sub_24381B9B0(a2, v8 + *(*(v9 - 8) + 72) * a1);
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

uint64_t sub_24381B9B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProcessorFactory.TenantDomain();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_2_4()
{

  return sub_24381CB54();
}

uint64_t sub_24381BA64()
{
  v0 = sub_24381CA64();
  __swift_allocate_value_buffer(v0, qword_27ED93618);
  __swift_project_value_buffer(v0, qword_27ED93618);
  sub_24381C794();
  type metadata accessor for Engine();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED931A0, &unk_24381E0F0);
  sub_24381CBB4();
  return sub_24381CA54();
}

uint64_t sub_24381BB08(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_24381BB58(a1);
  return v2;
}

void sub_24381BB58(uint64_t a1)
{
  v3 = v1;
  v57 = *v1;
  v56 = sub_24381CDB4();
  v55 = *(v56 - 8);
  v5 = *(v55 + 64);
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_42();
  v54 = v7 - v6;
  v53 = sub_24381CDA4();
  v8 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_42();
  v9 = sub_24381CAE4();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  OUTLINED_FUNCTION_42();
  if (_MergedGlobals_3 != -1)
  {
    swift_once();
  }

  v11 = sub_24381CA64();
  __swift_project_value_buffer(v11, qword_27ED93618);

  v12 = sub_24381CA44();
  v13 = sub_24381CD74();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v59[0] = v15;
    *v14 = 136315138;
    v60 = a1;
    type metadata accessor for TenantContext();

    v16 = sub_24381CBB4();
    v18 = sub_243808908(v16, v17, v59);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_2437FA000, v12, v13, "creating mmcs engine for %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    OUTLINED_FUNCTION_1_3();
    MEMORY[0x245D41570]();
    OUTLINED_FUNCTION_1_3();
    MEMORY[0x245D41570]();
  }

  v3[2] = sub_24381A7AC();
  v3[3] = a1;

  v19 = objc_opt_self();
  v20 = [v19 defaultManager];
  sub_24381C6C4();
  v21 = sub_24381CB74();

  v22 = [v20 fileExistsAtPath_];

  if (v22)
  {
    v23 = [v19 defaultManager];
    v24 = sub_24381C6A4();
    v59[0] = 0;
    v25 = [v23 removeItemAtURL:v24 error:v59];

    v26 = v59[0];
    if (!v25)
    {
      goto LABEL_17;
    }

    v27 = v59[0];
  }

  v28 = [v19 defaultManager];
  v29 = sub_24381C6A4();
  v59[0] = 0;
  v30 = [v28 createDirectoryAtURL:v29 withIntermediateDirectories:1 attributes:0 error:v59];

  v26 = v59[0];
  if (v30)
  {
    v31 = v59[0];
    if (!v2)
    {
      goto LABEL_10;
    }

LABEL_18:

    v52 = v3[3];

    swift_deallocPartialClassInstance();
    return;
  }

LABEL_17:
  v50 = v26;
  v51 = sub_24381C684();

  swift_willThrow();
  if (v51)
  {
    goto LABEL_18;
  }

LABEL_10:
  sub_24381C360();
  sub_24381CAD4();
  v59[0] = MEMORY[0x277D84F90];
  sub_24381C3A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED93188, &qword_24381E080);
  sub_24381C3FC();
  sub_24381CDF4();
  (*(v55 + 104))(v54, *MEMORY[0x277D85260], v56);
  v32 = sub_24381CDC4();
  v33 = sub_24381C6A4();
  v58 = sub_24381CB74();
  sub_24381A658();
  v34 = sub_24381CB74();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92EB0, &unk_24381D9D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24381DAA0;
  if (!*MEMORY[0x277D25448])
  {
    __break(1u);
    goto LABEL_20;
  }

  *(inited + 32) = sub_24381CB84();
  *(inited + 40) = v36;
  v37 = MEMORY[0x277D839B0];
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 48) = 1;
  if (!*MEMORY[0x277D25450])
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  *(inited + 80) = sub_24381CB84();
  *(inited + 88) = v38;
  *(inited + 120) = v37;
  *(inited + 96) = 0;
  if (!*MEMORY[0x277D25440])
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  *(inited + 128) = sub_24381CB84();
  *(inited + 136) = v39;
  *(inited + 168) = v37;
  *(inited + 144) = 1;
  sub_24381CB24();
  v40 = sub_24381CAF4();

  v41 = v3[2];
  v42 = MMCSEngineCreateWithTargetDispatchQueue();

  if (!v42)
  {
LABEL_22:
    __break(1u);
    return;
  }

  v3[4] = v42;

  v43 = sub_24381CA44();
  v44 = sub_24381CD74();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v59[0] = v46;
    *v45 = 136315138;
    v60 = a1;
    type metadata accessor for TenantContext();

    v47 = sub_24381CBB4();
    v49 = sub_243808908(v47, v48, v59);

    *(v45 + 4) = v49;
    _os_log_impl(&dword_2437FA000, v43, v44, "created mmcs engine for %s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v46);
    OUTLINED_FUNCTION_1_3();
    MEMORY[0x245D41570]();
    OUTLINED_FUNCTION_1_3();
    MEMORY[0x245D41570]();
  }
}

unint64_t sub_24381C360()
{
  result = qword_27ED93178;
  if (!qword_27ED93178)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27ED93178);
  }

  return result;
}

unint64_t sub_24381C3A4()
{
  result = qword_27ED93180;
  if (!qword_27ED93180)
  {
    sub_24381CDA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED93180);
  }

  return result;
}

unint64_t sub_24381C3FC()
{
  result = qword_27ED93190;
  if (!qword_27ED93190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED93188, &qword_24381E080);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED93190);
  }

  return result;
}

uint64_t sub_24381C460()
{
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_1_3();
  MEMORY[0x245D41570]();
  v2 = *(v0 + 24);

  return v0;
}

uint64_t sub_24381C48C()
{
  sub_24381C460();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_24381C4F8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 64))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24381C54C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}