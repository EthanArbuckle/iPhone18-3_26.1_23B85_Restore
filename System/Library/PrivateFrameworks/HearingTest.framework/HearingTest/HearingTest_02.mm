unint64_t sub_2520A5514(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2520A5620(a5, a6);
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
    result = sub_25214225C();
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

uint64_t sub_2520A5620(uint64_t a1, unint64_t a2)
{
  v4 = sub_2520A566C(a1, a2);
  sub_2520A579C(&unk_28644C018);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_2520A566C(uint64_t a1, unint64_t a2)
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

  v6 = sub_2520E7B68(v5, 0);
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

  result = sub_25214225C();
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
        v10 = sub_252141C1C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2520E7B68(v10, 0);
        result = sub_25214220C();
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

uint64_t sub_2520A579C(uint64_t result)
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

  result = sub_2520A5888(result, v12, 1, v3);
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

char *sub_2520A5888(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4CDCA0, &unk_2521440E0);
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

_BYTE **sub_2520A597C(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_2520A59F0(uint64_t result, float a2, float a3)
{
  if (a2 == a3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = a3 - a2;
  if (COERCE_INT(fabs(a3 - a2)) > 2139095039)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = result;
  v7 = 0;
  result = MEMORY[0x253099FE0](&v7, 8);
  if (((v5 * vcvts_n_f32_u64(v7 & 0xFFFFFF, 0x18uLL)) + a2) == a3)
  {
    return sub_2520A59F0(v6, a2, a3);
  }

  return result;
}

uint64_t sub_2520A5A94(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_2520A5ADC()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2520A5B4C()
{
  result = qword_27F4CDC80;
  if (!qword_27F4CDC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4CDC80);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NoiseMode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NoiseMode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NoiseSynthTimerState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for NoiseSynthTimerState(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2520A5F70()
{
  result = qword_27F4CDC98;
  if (!qword_27F4CDC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4CDC98);
  }

  return result;
}

uint64_t sub_2520A5FC4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2520A6020(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t HTHearingTestMetrics.duPayload()()
{
  v1 = v0;
  v2 = *v0;
  v4 = v1[1];
  v3 = v1[2];
  v6 = v1[3];
  v5 = v1[4];
  v43 = v1[9];
  v44 = v1[10];
  v7 = v1[12];
  v45 = v1[11];
  v8 = v1[13];
  v41 = v1[15];
  v42 = v1[14];
  v40 = v1[26];
  v9 = sub_25209CBF8(MEMORY[0x277D84F90]);
  v10 = sub_252141EBC();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2520A8854(v10, 0x73656E6F54676C61, 0xED0000746E756F43, isUniquelyReferenced_nonNull_native);
  v12 = sub_252141EBC();
  v13 = swift_isUniquelyReferenced_nonNull_native();
  sub_2520A8854(v12, 0x615473694D676C61, 0xEF746E756F437370, v13);
  v14 = sub_252141EBC();
  v15 = swift_isUniquelyReferenced_nonNull_native();
  sub_2520A8854(v14, 0xD000000000000010, 0x80000002521487D0, v15);
  v16 = sub_252141EBC();
  v17 = swift_isUniquelyReferenced_nonNull_native();
  sub_2520A8854(v16, 0xD000000000000012, 0x80000002521487F0, v17);
  v18 = sub_252141EBC();
  v19 = swift_isUniquelyReferenced_nonNull_native();
  sub_2520A8854(v18, 0xD000000000000015, 0x8000000252148810, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDB20, &qword_252143CD0);
  v20 = swift_allocObject();
  v21 = *(v1 + 7);
  v20[2] = *(v1 + 5);
  v20[3] = v21;
  v20[1] = xmmword_252143E80;
  v22 = sub_252141CCC();

  v23 = swift_isUniquelyReferenced_nonNull_native();
  sub_2520A8854(v22, 0x754178614D676C61, 0xEE00726F6F6C4664, v23);
  v24 = sub_252141EBC();
  v25 = swift_isUniquelyReferenced_nonNull_native();
  sub_2520A8854(v24, 0x5472657355676C61, 0xEB00000000737061, v25);
  v26 = sub_252141EBC();
  v27 = swift_isUniquelyReferenced_nonNull_native();
  sub_2520A8854(v26, 0x656B73614D676C61, 0xEE00746E756F4364, v27);
  v28 = sub_252141EBC();
  v29 = swift_isUniquelyReferenced_nonNull_native();
  sub_2520A8854(v28, 0xD000000000000012, 0x8000000252148840, v29);
  v30 = v9;
  result = swift_allocObject();
  *(result + 16) = xmmword_252143AD0;
  *(result + 32) = v7;
  *(result + 40) = v8;
  if (__OFADD__(v7, v8))
  {
    __break(1u);
  }

  else
  {
    *(result + 48) = v7 + v8;
    v32 = sub_252141CCC();

    v33 = swift_isUniquelyReferenced_nonNull_native();
    sub_2520A8854(v32, 0xD000000000000013, 0x8000000252148860, v33);
    result = swift_allocObject();
    *(result + 16) = xmmword_252143AD0;
    *(result + 32) = v42;
    *(result + 40) = v41;
    if (!__OFADD__(v42, v41))
    {
      *(result + 48) = v42 + v41;
      v34 = sub_252141CCC();

      v35 = swift_isUniquelyReferenced_nonNull_native();
      sub_2520A8854(v34, 0xD000000000000011, 0x8000000252148880, v35);
      v48 = *(v1 + 10);
      v49 = *(v1 + 11);
      v50 = *(v1 + 12);
      v46 = *(v1 + 8);
      v47 = *(v1 + 9);
      sub_2520F22E0();
      v36 = sub_252141CCC();

      v37 = swift_isUniquelyReferenced_nonNull_native();
      sub_2520A8854(v36, 0xD00000000000001ALL, 0x80000002521488A0, v37);
      v38 = sub_252141EBC();
      v39 = swift_isUniquelyReferenced_nonNull_native();
      sub_2520A8854(v38, 0xD000000000000016, 0x80000002521488C0, v39);
      return v30;
    }
  }

  __break(1u);
  return result;
}

uint64_t HTHearingTestMetricsV2.duPayload()()
{
  v1 = v0;
  v2 = *v0;
  v4 = v1[1];
  v3 = v1[2];
  v6 = v1[3];
  v5 = v1[4];
  v55 = v1[9];
  v56 = v1[10];
  v7 = v1[12];
  v57 = v1[11];
  v8 = v1[13];
  v53 = v1[15];
  v54 = v1[14];
  v10 = v1[27];
  v9 = v1[28];
  v50 = v1[26];
  v51 = v1[29];
  v52 = v1[30];
  v11 = sub_25209CBF8(MEMORY[0x277D84F90]);
  v12 = sub_252141EBC();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2520A8854(v12, 0x73656E6F54676C61, 0xED0000746E756F43, isUniquelyReferenced_nonNull_native);
  v14 = sub_252141EBC();
  v15 = swift_isUniquelyReferenced_nonNull_native();
  sub_2520A8854(v14, 0x615473694D676C61, 0xEF746E756F437370, v15);
  v16 = sub_252141EBC();
  v17 = swift_isUniquelyReferenced_nonNull_native();
  sub_2520A8854(v16, 0xD000000000000010, 0x80000002521487D0, v17);
  v18 = sub_252141EBC();
  v19 = swift_isUniquelyReferenced_nonNull_native();
  sub_2520A8854(v18, 0xD000000000000012, 0x80000002521487F0, v19);
  v20 = sub_252141EBC();
  v21 = swift_isUniquelyReferenced_nonNull_native();
  sub_2520A8854(v20, 0xD000000000000015, 0x8000000252148810, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDB20, &qword_252143CD0);
  v22 = swift_allocObject();
  v23 = *(v1 + 7);
  v22[2] = *(v1 + 5);
  v22[3] = v23;
  v22[1] = xmmword_252143E80;
  v24 = sub_252141CCC();

  v25 = swift_isUniquelyReferenced_nonNull_native();
  sub_2520A8854(v24, 0x754178614D676C61, 0xEE00726F6F6C4664, v25);
  v26 = sub_252141EBC();
  v27 = swift_isUniquelyReferenced_nonNull_native();
  sub_2520A8854(v26, 0x5472657355676C61, 0xEB00000000737061, v27);
  v28 = sub_252141EBC();
  v29 = swift_isUniquelyReferenced_nonNull_native();
  sub_2520A8854(v28, 0x656B73614D676C61, 0xEE00746E756F4364, v29);
  v30 = sub_252141EBC();
  v31 = swift_isUniquelyReferenced_nonNull_native();
  sub_2520A8854(v30, 0xD000000000000012, 0x8000000252148840, v31);
  v32 = v11;
  result = swift_allocObject();
  *(result + 16) = xmmword_252143AD0;
  *(result + 32) = v7;
  *(result + 40) = v8;
  if (__OFADD__(v7, v8))
  {
    __break(1u);
  }

  else
  {
    *(result + 48) = v7 + v8;
    v34 = sub_252141CCC();

    v35 = swift_isUniquelyReferenced_nonNull_native();
    sub_2520A8854(v34, 0xD000000000000013, 0x8000000252148860, v35);
    result = swift_allocObject();
    *(result + 16) = xmmword_252143AD0;
    *(result + 32) = v54;
    *(result + 40) = v53;
    if (!__OFADD__(v54, v53))
    {
      *(result + 48) = v54 + v53;
      v36 = sub_252141CCC();

      v37 = swift_isUniquelyReferenced_nonNull_native();
      sub_2520A8854(v36, 0xD000000000000011, 0x8000000252148880, v37);
      v60 = *(v1 + 10);
      v61 = *(v1 + 11);
      v62 = *(v1 + 12);
      v58 = *(v1 + 8);
      v59 = *(v1 + 9);
      sub_2520F22E0();
      v38 = sub_252141CCC();

      v39 = swift_isUniquelyReferenced_nonNull_native();
      sub_2520A8854(v38, 0xD00000000000001ALL, 0x80000002521488A0, v39);
      v40 = sub_252141EBC();
      v41 = swift_isUniquelyReferenced_nonNull_native();
      sub_2520A8854(v40, 0xD000000000000016, 0x80000002521488C0, v41);
      v42 = sub_252141E7C();
      v43 = swift_isUniquelyReferenced_nonNull_native();
      sub_2520A8854(v42, 0x73696F4E74617453, 0xE900000000000065, v43);
      v44 = sub_252141E7C();
      v45 = swift_isUniquelyReferenced_nonNull_native();
      sub_2520A8854(v44, 0x73696F4E74736E49, 0xE900000000000065, v45);
      v46 = sub_252141CCC();
      v47 = swift_isUniquelyReferenced_nonNull_native();
      sub_2520A8854(v46, 0x7461745374736948, 0xE800000000000000, v47);
      v48 = sub_252141CCC();
      v49 = swift_isUniquelyReferenced_nonNull_native();
      sub_2520A8854(v48, 0x74736E4974736948, 0xE800000000000000, v49);
      return v32;
    }
  }

  __break(1u);
  return result;
}

void *sub_2520A6BC8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDBA0, &qword_252143D58);
  v2 = *v0;
  v3 = sub_25214233C();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_2520A6D14()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDAB8, &qword_252147FA0);
  v2 = *v0;
  v3 = sub_25214233C();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_2520A6E60()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDC10, &qword_252143DB0);
  v2 = *v0;
  v3 = sub_25214233C();
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

id sub_2520A6FC8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDB70, &qword_252143D20);
  v2 = *v0;
  v3 = sub_25214233C();
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

void *sub_2520A7134()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDCB8, &unk_252144500);
  v2 = *v0;
  v3 = sub_25214233C();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; result = sub_2520A8DDC(&v47, v46))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = 16 * v16;
      v18 = (*(v2 + 48) + 16 * v16);
      v20 = *v18;
      v19 = v18[1];
      v16 *= 232;
      v21 = *(v2 + 56) + v16;
      v22 = *(v21 + 96);
      v24 = *(v21 + 48);
      v23 = *(v21 + 64);
      v52 = *(v21 + 80);
      v53 = v22;
      v50 = v24;
      v51 = v23;
      v25 = *(v21 + 160);
      v27 = *(v21 + 112);
      v26 = *(v21 + 128);
      v56 = *(v21 + 144);
      v57 = v25;
      v54 = v27;
      v55 = v26;
      v29 = *(v21 + 192);
      v28 = *(v21 + 208);
      v30 = *(v21 + 176);
      v61 = *(v21 + 224);
      v59 = v29;
      v60 = v28;
      v58 = v30;
      v32 = *(v21 + 16);
      v31 = *(v21 + 32);
      v47 = *v21;
      v48 = v32;
      v49 = v31;
      v33 = (*(v4 + 48) + v17);
      *v33 = v20;
      v33[1] = v19;
      v34 = *(v4 + 56) + v16;
      v35 = v47;
      v36 = v49;
      *(v34 + 16) = v48;
      *(v34 + 32) = v36;
      *v34 = v35;
      v37 = v50;
      v38 = v51;
      v39 = v53;
      *(v34 + 80) = v52;
      *(v34 + 96) = v39;
      *(v34 + 48) = v37;
      *(v34 + 64) = v38;
      v40 = v54;
      v41 = v55;
      v42 = v57;
      *(v34 + 144) = v56;
      *(v34 + 160) = v42;
      *(v34 + 112) = v40;
      *(v34 + 128) = v41;
      v43 = v58;
      v44 = v59;
      v45 = v60;
      *(v34 + 224) = v61;
      *(v34 + 192) = v44;
      *(v34 + 208) = v45;
      *(v34 + 176) = v43;
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
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

void *sub_2520A7354()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDAE0, &qword_252143C88);
  v2 = *v0;
  v3 = sub_25214233C();
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
        sub_2520A5FC4(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_2520A1F80(v25, (*(v4 + 56) + v22));
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

uint64_t sub_2520A74F8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDBA0, &qword_252143D58);
  result = sub_25214234C();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
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
      v21 = *(v5 + 48);
      v22 = *(v21 + 8 * v20);
      v23 = *(*(v5 + 56) + v20);
      v24 = *(v8 + 40);
      if (v22 != 0.0)
      {
        v25 = *(v21 + 8 * v20);
      }

      result = sub_25214254C();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      *(*(v8 + 56) + v16) = v23;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if (a2)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_2520A7768(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDAB8, &qword_252147FA0);
  result = sub_25214234C();
  v8 = result;
  if (*(v5 + 16))
  {
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
      v21 = *(v5 + 48);
      v22 = *(v21 + 8 * v20);
      v23 = *(*(v5 + 56) + 8 * v20);
      v24 = *(v8 + 40);
      if (v22 != 0.0)
      {
        v25 = *(v21 + 8 * v20);
      }

      result = sub_25214254C();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      *(*(v8 + 56) + 8 * v16) = v23;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if (a2)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }
  }

  *v3 = v8;
  return result;
}

uint64_t sub_2520A79C4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDC10, &qword_252143DB0);
  v37 = a2;
  result = sub_25214234C();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
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
      if ((v37 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_25214255C();
      sub_252141BEC();
      result = sub_25214258C();
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

    if ((v37 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

uint64_t sub_2520A7C68(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDB70, &qword_252143D20);
  v39 = a2;
  result = sub_25214234C();
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
      sub_25214255C();
      sub_252141BEC();
      result = sub_25214258C();
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

uint64_t sub_2520A7F0C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDCB8, &unk_252144500);
  v48 = a2;
  result = sub_25214234C();
  v8 = result;
  if (*(v5 + 16))
  {
    v47 = v3;
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
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(v5 + 56) + 232 * v22;
      if (v48)
      {
        v75 = *(v26 + 176);
        v76 = *(v26 + 192);
        v77 = *(v26 + 208);
        v78 = *(v26 + 224);
        v71 = *(v26 + 112);
        v72 = *(v26 + 128);
        v73 = *(v26 + 144);
        v74 = *(v26 + 160);
        v67 = *(v26 + 48);
        v68 = *(v26 + 64);
        v69 = *(v26 + 80);
        v70 = *(v26 + 96);
        v64 = *v26;
        v65 = *(v26 + 16);
        v66 = *(v26 + 32);
      }

      else
      {
        v28 = *(v26 + 16);
        v27 = *(v26 + 32);
        v49 = *v26;
        v50 = v28;
        v51 = v27;
        v29 = *(v26 + 96);
        v31 = *(v26 + 48);
        v30 = *(v26 + 64);
        v54 = *(v26 + 80);
        v55 = v29;
        v52 = v31;
        v53 = v30;
        v32 = *(v26 + 160);
        v34 = *(v26 + 112);
        v33 = *(v26 + 128);
        v58 = *(v26 + 144);
        v59 = v32;
        v56 = v34;
        v57 = v33;
        v36 = *(v26 + 192);
        v35 = *(v26 + 208);
        v37 = *(v26 + 176);
        v63 = *(v26 + 224);
        v61 = v36;
        v62 = v35;
        v60 = v37;

        sub_2520A8DDC(&v49, &v64);
        v76 = v61;
        v77 = v62;
        v78 = v63;
        v72 = v57;
        v73 = v58;
        v74 = v59;
        v75 = v60;
        v68 = v53;
        v69 = v54;
        v70 = v55;
        v71 = v56;
        v64 = v49;
        v65 = v50;
        v66 = v51;
        v67 = v52;
      }

      v38 = *(v8 + 40);
      sub_25214255C();
      sub_252141BEC();
      result = sub_25214258C();
      v39 = -1 << *(v8 + 32);
      v40 = result & ~v39;
      v41 = v40 >> 6;
      if (((-1 << v40) & ~*(v15 + 8 * (v40 >> 6))) == 0)
      {
        v42 = 0;
        v43 = (63 - v39) >> 6;
        while (++v41 != v43 || (v42 & 1) == 0)
        {
          v44 = v41 == v43;
          if (v41 == v43)
          {
            v41 = 0;
          }

          v42 |= v44;
          v45 = *(v15 + 8 * v41);
          if (v45 != -1)
          {
            v16 = __clz(__rbit64(~v45)) + (v41 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v40) & ~*(v15 + 8 * (v40 >> 6)))) | v40 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = *(v8 + 56) + 232 * v16;
      *(v18 + 176) = v75;
      *(v18 + 192) = v76;
      *(v18 + 208) = v77;
      *(v18 + 224) = v78;
      *(v18 + 112) = v71;
      *(v18 + 128) = v72;
      *(v18 + 144) = v73;
      *(v18 + 160) = v74;
      *(v18 + 48) = v67;
      *(v18 + 64) = v68;
      *(v18 + 80) = v69;
      *(v18 + 96) = v70;
      *v18 = v64;
      *(v18 + 16) = v65;
      *(v18 + 32) = v66;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v47;
      goto LABEL_36;
    }

    v46 = 1 << *(v5 + 32);
    v3 = v47;
    if (v46 >= 64)
    {
      bzero((v5 + 64), ((v46 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v46;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_2520A8348(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDAE0, &qword_252143C88);
  v36 = a2;
  result = sub_25214234C();
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
        sub_2520A1F80(v25, v37);
      }

      else
      {
        sub_2520A5FC4(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_25214255C();
      sub_252141BEC();
      result = sub_25214258C();
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
      result = sub_2520A1F80(v37, (*(v8 + 56) + 32 * v16));
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

unint64_t sub_2520A8600(char a1, char a2, double a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_25213E6C0(a3);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a2 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a2 & 1) == 0)
  {
    v17 = result;
    sub_2520A6BC8();
    result = v17;
    goto LABEL_8;
  }

  sub_2520A74F8(v14, a2 & 1);
  v18 = *v4;
  result = sub_25213E6C0(a3);
  if ((v15 & 1) == (v19 & 1))
  {
LABEL_8:
    v20 = *v4;
    if (v15)
    {
      *(v20[7] + result) = a1 & 1;
      return result;
    }

    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + 8 * result) = a3;
    *(v20[7] + result) = a1 & 1;
    v21 = v20[2];
    v13 = __OFADD__(v21, 1);
    v22 = v21 + 1;
    if (!v13)
    {
      v20[2] = v22;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_2521424CC();
  __break(1u);
  return result;
}

unint64_t sub_2520A8730(char a1, double a2, double a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_25213E6C0(a3);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a1 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a1 & 1) == 0)
  {
    v17 = result;
    sub_2520A6D14();
    result = v17;
    goto LABEL_8;
  }

  sub_2520A7768(v14, a1 & 1);
  v18 = *v4;
  result = sub_25213E6C0(a3);
  if ((v15 & 1) == (v19 & 1))
  {
LABEL_8:
    v20 = *v4;
    if (v15)
    {
      *(v20[7] + 8 * result) = a2;
      return result;
    }

    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + 8 * result) = a3;
    *(v20[7] + 8 * result) = a2;
    v21 = v20[2];
    v13 = __OFADD__(v21, 1);
    v22 = v21 + 1;
    if (!v13)
    {
      v20[2] = v22;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_2521424CC();
  __break(1u);
  return result;
}

uint64_t sub_2520A8854(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_25213E648(a2, a3);
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
      sub_2520A7C68(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_25213E648(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        sub_2521424CC();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v19 = v11;
      sub_2520A6FC8();
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

uint64_t sub_2520A89CC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_25213E648(a2, a3);
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
      sub_2520A7F0C(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_25213E648(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_2521424CC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_2520A7134();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7] + 232 * v11;

    return sub_2520A8E38(a1, v23);
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  v26 = v22[7] + 232 * v11;
  v27 = *a1;
  v28 = *(a1 + 32);
  *(v26 + 16) = *(a1 + 16);
  *(v26 + 32) = v28;
  *v26 = v27;
  v29 = *(a1 + 48);
  v30 = *(a1 + 64);
  v31 = *(a1 + 96);
  *(v26 + 80) = *(a1 + 80);
  *(v26 + 96) = v31;
  *(v26 + 48) = v29;
  *(v26 + 64) = v30;
  v32 = *(a1 + 112);
  v33 = *(a1 + 128);
  v34 = *(a1 + 160);
  *(v26 + 144) = *(a1 + 144);
  *(v26 + 160) = v34;
  *(v26 + 112) = v32;
  *(v26 + 128) = v33;
  v35 = *(a1 + 176);
  v36 = *(a1 + 192);
  v37 = *(a1 + 208);
  *(v26 + 224) = *(a1 + 224);
  *(v26 + 192) = v36;
  *(v26 + 208) = v37;
  *(v26 + 176) = v35;
  v38 = v22[2];
  v15 = __OFADD__(v38, 1);
  v39 = v38 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v39;
}

_OWORD *sub_2520A8B94(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_25213E648(a2, a3);
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
      sub_2520A7354();
      v11 = v19;
      goto LABEL_8;
    }

    sub_2520A8348(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_25213E648(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_2521424CC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v23);

    return sub_2520A1F80(a1, v23);
  }

  else
  {
    sub_2520A8D70(v11, a2, a3, a1, v22);
  }
}

unint64_t sub_2520A8CE4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = a5[7] + 232 * result;
  v7 = *(a4 + 208);
  *(v6 + 192) = *(a4 + 192);
  *(v6 + 208) = v7;
  *(v6 + 224) = *(a4 + 224);
  v8 = *(a4 + 144);
  *(v6 + 128) = *(a4 + 128);
  *(v6 + 144) = v8;
  v9 = *(a4 + 176);
  *(v6 + 160) = *(a4 + 160);
  *(v6 + 176) = v9;
  v10 = *(a4 + 80);
  *(v6 + 64) = *(a4 + 64);
  *(v6 + 80) = v10;
  v11 = *(a4 + 112);
  *(v6 + 96) = *(a4 + 96);
  *(v6 + 112) = v11;
  v12 = *(a4 + 16);
  *v6 = *a4;
  *(v6 + 16) = v12;
  v13 = *(a4 + 48);
  *(v6 + 32) = *(a4 + 32);
  *(v6 + 48) = v13;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

_OWORD *sub_2520A8D70(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_2520A1F80(a4, (a5[7] + 32 * a1));
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

id sub_2520A8E94()
{
  result = [objc_allocWithZone(type metadata accessor for HTNSNotificationManager()) init];
  qword_27F4D3420 = result;
  return result;
}

id sub_2520A8EC4()
{
  v1 = &v0[OBJC_IVAR____TtC11HearingTest23HTNSNotificationManager_onNotificationDidEnterBackgroundForRequirements];
  *v1 = 0;
  *(v1 + 1) = 0;
  v2 = &v0[OBJC_IVAR____TtC11HearingTest23HTNSNotificationManager_onNotificationDidEnterBackgroundForAHPS];
  *v2 = 0;
  *(v2 + 1) = 0;
  v3 = &v0[OBJC_IVAR____TtC11HearingTest23HTNSNotificationManager_onNotificationDidActivateForRequirements];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = &v0[OBJC_IVAR____TtC11HearingTest23HTNSNotificationManager_onNotificationDidActivateForAHPS];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = &v0[OBJC_IVAR____TtC11HearingTest23HTNSNotificationManager_onNotificationWillDeactivate];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = &v0[OBJC_IVAR____TtC11HearingTest23HTNSNotificationManager_onNotificationWillTerminateForNoise];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = &v0[OBJC_IVAR____TtC11HearingTest23HTNSNotificationManager_onNotificationWillTerminateForTones];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = &v0[OBJC_IVAR____TtC11HearingTest23HTNSNotificationManager_onNotificationSetSmartRountingArbitrationBlockingMode];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = &v0[OBJC_IVAR____TtC11HearingTest23HTNSNotificationManager_onNotificationWillDeactivateForRequirements];
  v10 = type metadata accessor for HTNSNotificationManager();
  *v9 = 0;
  *(v9 + 1) = 0;
  v30.receiver = v0;
  v30.super_class = v10;
  v11 = objc_msgSendSuper2(&v30, sel_init);
  v12 = objc_opt_self();
  v13 = v11;
  v14 = [v12 defaultCenter];
  v15 = *MEMORY[0x277D76E58];
  [v14 addObserver:v13 selector:sel_deactivateArbitrationBlocking name:*MEMORY[0x277D76E58] object:0];

  v16 = [v12 defaultCenter];
  v17 = *MEMORY[0x277D76E78];
  [v16 addObserver:v13 selector:sel_deactivateArbitrationBlocking name:*MEMORY[0x277D76E78] object:0];

  v18 = [v12 defaultCenter];
  v19 = *MEMORY[0x277D76E80];
  [v18 addObserver:v13 selector:sel_activateArbitrationBlocking name:*MEMORY[0x277D76E80] object:0];

  v20 = [v12 defaultCenter];
  v21 = *MEMORY[0x277D76E48];
  [v20 addObserver:v13 selector:sel_activateArbitrationBlocking name:*MEMORY[0x277D76E48] object:0];

  v22 = [v12 defaultCenter];
  [v22 addObserver:v13 selector:sel_notifyTestResumed name:v21 object:0];

  v23 = [v12 defaultCenter];
  [v23 addObserver:v13 selector:sel_notifyTestResumed name:v19 object:0];

  v24 = [v12 defaultCenter];
  [v24 addObserver:v13 selector:sel_updateTimestamp name:v17 object:0];

  v25 = [v12 defaultCenter];
  [v25 addObserver:v13 selector:sel_handleDidEnterBackground name:v15 object:0];

  v26 = [v12 defaultCenter];
  [v26 addObserver:v13 selector:sel_handleDidActivate name:v21 object:0];

  v27 = [v12 defaultCenter];
  [v27 addObserver:v13 selector:sel_handleWillTerminate name:*MEMORY[0x277D76770] object:0];

  v28 = [v12 defaultCenter];
  [v28 addObserver:v13 selector:sel_handleWillDeactivate name:v17 object:0];

  return v13;
}

id sub_2520A92A0()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for HTNSNotificationManager();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_2520A94E0()
{
  v1 = v0;
  if (qword_27F4CD740 != -1)
  {
    swift_once();
  }

  v2 = sub_25214198C();
  __swift_project_value_buffer(v2, qword_27F4CDF10);
  v3 = sub_25214196C();
  v4 = sub_252141FBC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17 = v6;
    *v5 = 136315138;
    v7 = [objc_opt_self() processInfo];
    v8 = [v7 processName];

    v9 = sub_252141B9C();
    v11 = v10;

    v12 = sub_2520A5448(v9, v11, &v17);

    *(v5 + 4) = v12;
    _os_log_impl(&dword_25207E000, v3, v4, "%s handleWillDeactivate", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x253099FD0](v6, -1, -1);
    MEMORY[0x253099FD0](v5, -1, -1);
  }

  v13 = v1 + OBJC_IVAR____TtC11HearingTest23HTNSNotificationManager_onNotificationWillDeactivateForRequirements;
  v14 = *(v1 + OBJC_IVAR____TtC11HearingTest23HTNSNotificationManager_onNotificationWillDeactivateForRequirements);
  if (v14)
  {
    v15 = *(v13 + 8);

    v14(v16);

    sub_2520A1FE4(v14);
  }
}

void sub_2520A97A0(const char *a1, void *a2, void *a3)
{
  v7 = v3;
  if (qword_27F4CD740 != -1)
  {
    swift_once();
  }

  v8 = sub_25214198C();
  __swift_project_value_buffer(v8, qword_27F4CDF10);
  v9 = sub_25214196C();
  v10 = sub_252141FBC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v31 = v30;
    *v11 = 136315138;
    v12 = [objc_opt_self() processInfo];
    v13 = [v12 processName];

    v14 = sub_252141B9C();
    v15 = a2;
    v16 = a1;
    v17 = a3;
    v19 = v18;

    v20 = sub_2520A5448(v14, v19, &v31);
    a3 = v17;

    *(v11 + 4) = v20;
    v21 = v16;
    a2 = v15;
    _os_log_impl(&dword_25207E000, v9, v10, v21, v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x253099FD0](v30, -1, -1);
    MEMORY[0x253099FD0](v11, -1, -1);
  }

  v22 = v7 + *a2;
  v23 = *v22;
  if (*v22)
  {
    v24 = *(v22 + 8);

    v23(v25);
    sub_2520A1FE4(v23);
  }

  v26 = v7 + *a3;
  v27 = *v26;
  if (*v26)
  {
    v28 = *(v26 + 8);

    v27(v29);

    sub_2520A1FE4(v27);
  }
}

char *sub_2520A9A44(char *result, uint64_t a2, char a3)
{
  v3 = *&result[OBJC_IVAR____TtC11HearingTest23HTNSNotificationManager_onNotificationSetSmartRountingArbitrationBlockingMode];
  if (v3)
  {
    v5 = *&result[OBJC_IVAR____TtC11HearingTest23HTNSNotificationManager_onNotificationSetSmartRountingArbitrationBlockingMode + 8];
    v6 = result;
    sub_2520A283C(v3);
    v3(a3 & 1);

    return sub_2520A1FE4(v3);
  }

  return result;
}

void sub_2520A9AD4()
{
  swift_getObjectType();
  v0 = CFNotificationCenterGetDarwinNotifyCenter();
  v1 = sub_252141B6C();
  CFNotificationCenterPostNotification(v0, v1, 0, 0, 1u);

  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v2 = sub_25214198C();
  __swift_project_value_buffer(v2, qword_27F4CDE68);
  oslog = sub_25214196C();
  v3 = sub_252141FBC();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136446466;
    v6 = sub_2521425DC();
    v8 = sub_2520A5448(v6, v7, &v10);

    *(v4 + 4) = v8;
    *(v4 + 12) = 2080;
    *(v4 + 14) = sub_2520A5448(0xD000000000000022, 0x8000000252149200, &v10);
    _os_log_impl(&dword_25207E000, oslog, v3, "[%{public}s] posted notification %s on app activation", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253099FD0](v5, -1, -1);
    MEMORY[0x253099FD0](v4, -1, -1);
  }
}

uint64_t sub_2520AA46C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDD08, &unk_252144B00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2520AA4DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDD08, &unk_252144B00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2520AA548(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D85DE8];

  return sub_2520AA5B4(a1, a2, sub_2520AAE88);
}

uint64_t sub_2520AA5B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t *))
{
  __C[3] = *MEMORY[0x277D85DE8];
  *&__C[1] = a2;
  *&__C[2] = a1;
  v4 = *(a2 + 16);
  __C[0] = NAN;
  vDSP_maxvD((a2 + 32), 1, __C, v4);
  if ((*&__C[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (__C[0] <= -9.22337204e18)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (__C[0] >= 9.22337204e18)
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
  }

  if (__OFADD__(__C[0], 1))
  {
    goto LABEL_9;
  }

  MEMORY[0x28223BE20](__C[0] + 1);
  result = sub_2520AABEC(v5, a3);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t Array.partitioningIndex(where:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[0] = a1;
  v6 = *(a4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[1] = v10;
  result = sub_252141D5C();
  v12 = result;
  v18 = 0;
  v13 = (v6 + 8);
  while (1)
  {
    if (v12 < 1)
    {
      return v18;
    }

    v14 = v12;
    v12 = v12 >> 1;
    v15 = v18 + v12;
    if (__OFADD__(v18, v12))
    {
      break;
    }

    sub_252141DCC();
    v16 = (v17[0])(v9);
    result = (*v13)(v9, a4);
    if (v4)
    {
      return v18;
    }

    if ((v16 & 1) == 0)
    {
      v18 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        goto LABEL_10;
      }

      v12 = v14 + ~v12;
    }
  }

  __break(1u);
LABEL_10:
  __break(1u);
  return result;
}

uint64_t static Interpolators.interp(indices:xValues:yValues:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 16);
  if (v3 < 2)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*(a2 + 16) != *(a3 + 16))
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v6 = result;
  v12 = MEMORY[0x277D84F90];
  sub_2520A3448(0, v3, 0);
  v7 = (v6 + 32);
  do
  {
    _s11HearingTest13InterpolatorsC8interp1d7xValues01yE06xPointSdSaySdG_AHSdtFZ_0(a2, a3, *v7);
    v10 = *(v12 + 16);
    v9 = *(v12 + 24);
    if (v10 >= v9 >> 1)
    {
      v11 = v8;
      sub_2520A3448(v9 > 1, v10 + 1, 1);
      v8 = v11;
    }

    *(v12 + 16) = v10 + 1;
    *(v12 + 8 * v10 + 32) = v8;
    ++v7;
    --v3;
  }

  while (v3);
  return v12;
}

void static Interpolators.log2Interpolate(values:atIndices:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v5 = a2;
    v19 = MEMORY[0x277D84F90];
    sub_2520A3448(0, v2, 0);
    v6 = v19;
    v7 = (a1 + 32);
    do
    {
      v8 = log2(*v7);
      v10 = *(v19 + 16);
      v9 = *(v19 + 24);
      if (v10 >= v9 >> 1)
      {
        v11 = v8;
        sub_2520A3448(v9 > 1, v10 + 1, 1);
        v8 = v11;
      }

      *(v19 + 16) = v10 + 1;
      *(v19 + 8 * v10 + 32) = v8;
      ++v7;
      --v2;
    }

    while (v2);
    a2 = v5;
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  v12 = sub_2520AA5B4(v6, a2, sub_2520AAEA8);

  v13 = *(v12 + 16);
  if (v13)
  {
    sub_2520A3448(0, v13, 0);
    v14 = 0;
    while (v14 < *(v12 + 16))
    {
      v15 = exp2(*(v12 + 8 * v14 + 32));
      v17 = *(v3 + 16);
      v16 = *(v3 + 24);
      if (v17 >= v16 >> 1)
      {
        v18 = v15;
        sub_2520A3448(v16 > 1, v17 + 1, 1);
        v15 = v18;
      }

      ++v14;
      *(v3 + 16) = v17 + 1;
      *(v3 + 8 * v17 + 32) = v15;
      if (v13 == v14)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:
  }
}

id Interpolators.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id Interpolators.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Interpolators();
  return objc_msgSendSuper2(&v2, sel_init);
}

id Interpolators.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Interpolators();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2520AABEC(uint64_t result, uint64_t (*a2)(void *, uint64_t *))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v4 = result;
  if (result)
  {
    v5 = sub_252141D3C();
    *(v5 + 16) = v4;
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v6 = v5 + 32;
  v8 = 0;
  v7[0] = v5 + 32;
  v7[1] = v4;
  result = a2(v7, &v8);
  if (v2)
  {
    if (v8 <= v4)
    {
      if (!v7[0])
      {
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      if (v6 == v7[0])
      {
        *(v5 + 16) = v8;

        return v5;
      }

      goto LABEL_17;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v8 > v4)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v7[0])
  {
    if (v6 == v7[0])
    {
      *(v5 + 16) = v8;
      return v5;
    }

    goto LABEL_19;
  }

LABEL_21:
  __break(1u);
  return result;
}

void sub_2520AAD04(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(*a4 + 16);
  if (v5 != *(*a3 + 16))
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = *(a1 + 8);
  if ((v6 & 0x8000000000000000) != 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (*a1)
  {
    vDSP_vgenpD((*a3 + 32), 1, (*a4 + 32), 1, *a1, 1, v6, v5);
    *a2 = a5;
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t _s11HearingTest13InterpolatorsC8interp1d7xValues01yE06xPointSdSaySdG_AHSdtFZ_0(uint64_t result, uint64_t a2, double a3)
{
  v3 = *(result + 16);
  if (v3 < 2)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v3 != *(a2 + 16))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v4 = 0;
  v5 = result + 32;
  v6 = *(result + 16);
  while (1)
  {
    v7 = v6 >> 1;
    v8 = v4 + (v6 >> 1);
    if (__OFADD__(v4, v6 >> 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    if (v8 >= v3)
    {
      goto LABEL_19;
    }

    if (*(v5 + 8 * v8) < a3)
    {
      break;
    }

LABEL_4:
    v6 = v7;
    if (v7 <= 0)
    {
      goto LABEL_11;
    }
  }

  v4 = v8 + 1;
  if (!__OFADD__(v8, 1))
  {
    v7 = v6 + ~v7;
    goto LABEL_4;
  }

  __break(1u);
LABEL_11:
  v9 = v3 - 1;
  if (v9 >= v4)
  {
    v9 = v4;
  }

  if (v9 < 0)
  {
LABEL_22:
    __break(1u);
    return result;
  }

  if (!v9 || (v10 = *(v5 + 8 * v9), v10 == a3))
  {
    v13 = *(a2 + 8 * v9 + 32);
  }

  else
  {
    v11 = 8 * v9;
    v12 = *(a2 + 32 + v11 - 8) + (a3 - *(v5 + v11 - 8)) * ((*(a2 + 32 + v11) - *(a2 + 32 + v11 - 8)) / (v10 - *(v5 + v11 - 8)));
  }

  return result;
}

uint64_t sub_2520AAEC0()
{
  type metadata accessor for HTNoiseMetadata();
  v0 = swift_allocObject();
  result = sub_2520AD088();
  qword_27F4D3428 = v0;
  return result;
}

double sub_2520AAEFC@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 24);
  *a2 = result;
  return result;
}

uint64_t sub_2520AAF08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  *a2 = *(a1 + 32);
  *(a2 + 16) = v2;
  *(a2 + 24) = v3;
}

uint64_t sub_2520AAF44(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  *(a1 + 32) = a4;
  *(a1 + 40) = a5;
  *(a1 + 48) = a2;
  *(a1 + 56) = a3;
}

uint64_t sub_2520AAFA4()
{
  isEscapingClosureAtFileLocation = v0;
  v2 = *v0;
  if (qword_27F4CD7B0 != -1)
  {
    swift_once();
  }

  if (byte_27F4D3492 != 1)
  {
    goto LABEL_8;
  }

  if (qword_27F4CD738 != -1)
  {
    goto LABEL_13;
  }

  while (1)
  {
    v3 = sub_25214198C();
    __swift_project_value_buffer(v3, qword_27F4CDEF8);

    v4 = sub_25214196C();
    v5 = sub_252141FBC();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      aBlock = v7;
      *v6 = 136446722;
      v8 = sub_2521425DC();
      v10 = sub_2520A5448(v8, v9, &aBlock);

      *(v6 + 4) = v10;
      *(v6 + 12) = 2048;
      v11 = *(isEscapingClosureAtFileLocation + 80);
      sub_25214200C();
      *(v6 + 14) = v20;
      *(v6 + 22) = 2048;
      sub_25214200C();
      *(v6 + 24) = v20;
      _os_log_impl(&dword_25207E000, v4, v5, "[%{public}s] before reset count %f, mean %f", v6, 0x20u);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x253099FD0](v7, -1, -1);
      MEMORY[0x253099FD0](v6, -1, -1);
    }

LABEL_8:
    v12 = *(isEscapingClosureAtFileLocation + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = isEscapingClosureAtFileLocation;
    *(v13 + 24) = 0;
    v14 = swift_allocObject();
    *(v14 + 16) = sub_2520AD4D0;
    *(v14 + 24) = v13;
    v25 = sub_2520ADA58;
    v26 = v14;
    aBlock = MEMORY[0x277D85DD0];
    v22 = 1107296256;
    v23 = sub_252083924;
    v24 = &block_descriptor_72;
    v15 = _Block_copy(&aBlock);

    dispatch_sync(v12, v15);
    _Block_release(v15);
    LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

    if (v15)
    {
      __break(1u);
      goto LABEL_12;
    }

    v16 = swift_allocObject();
    *(v16 + 16) = isEscapingClosureAtFileLocation;
    *(v16 + 24) = 0;
    v17 = swift_allocObject();
    *(v17 + 16) = sub_2520AD4E0;
    *(v17 + 24) = v16;
    v25 = sub_2520ADA58;
    v26 = v17;
    aBlock = MEMORY[0x277D85DD0];
    v22 = 1107296256;
    v23 = sub_252083924;
    v24 = &block_descriptor_82;
    v18 = _Block_copy(&aBlock);

    dispatch_sync(v12, v18);
    _Block_release(v18);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

LABEL_12:
    __break(1u);
LABEL_13:
    swift_once();
  }
}

uint64_t sub_2520AB414()
{
  isEscapingClosureAtFileLocation = v0;
  v2 = *v0;
  if (qword_27F4CD7B0 != -1)
  {
    swift_once();
  }

  if (byte_27F4D3492 != 1)
  {
    goto LABEL_9;
  }

  if (qword_27F4CD738 != -1)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v3 = sub_25214198C();
    __swift_project_value_buffer(v3, qword_27F4CDEF8);

    v4 = sub_25214196C();
    v5 = sub_252141FBC();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v50 = v7;
      *v6 = 136446978;
      v8 = sub_2521425DC();
      v10 = sub_2520A5448(v8, v9, &v50);

      *(v6 + 4) = v10;
      *(v6 + 12) = 2048;
      v11 = *(isEscapingClosureAtFileLocation + 80);
      sub_25214200C();
      *(v6 + 14) = aBlock;
      *(v6 + 22) = 2048;
      sub_25214200C();
      v12 = v45;

      *(v6 + 24) = v12;
      *(v6 + 32) = 2048;
      sub_25214200C();
      v13 = aBlock;

      *(v6 + 34) = v13;
      _os_log_impl(&dword_25207E000, v4, v5, "[%{public}s] before reset count %f, mean inst %f, stat %f", v6, 0x2Au);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x253099FD0](v7, -1, -1);
      MEMORY[0x253099FD0](v6, -1, -1);
    }

LABEL_9:
    v14 = *(isEscapingClosureAtFileLocation + 80);
    sub_25214200C();
    v51 = 0;
    v15 = v50;
    v16 = swift_allocObject();
    *(v16 + 16) = isEscapingClosureAtFileLocation;
    *(v16 + 24) = v15;
    *(v16 + 32) = 0;
    *(v16 + 40) = v52;
    v17 = swift_allocObject();
    *(v17 + 16) = sub_2520AD480;
    *(v17 + 24) = v16;
    v48 = sub_2520AD484;
    v49 = v17;
    aBlock = MEMORY[0x277D85DD0];
    v45 = 1107296256;
    v46 = sub_252083924;
    v47 = &block_descriptor_1;
    v18 = _Block_copy(&aBlock);

    dispatch_sync(v14, v18);
    _Block_release(v18);
    LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

    if (v18)
    {
      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    sub_25214200C();
    v50 = 0;
    v19 = v51;
    v20 = swift_allocObject();
    *(v20 + 16) = isEscapingClosureAtFileLocation;
    *(v20 + 24) = 0;
    *(v20 + 32) = v19;
    *(v20 + 40) = v52;
    v21 = swift_allocObject();
    *(v21 + 16) = sub_2520ADA00;
    *(v21 + 24) = v20;
    v48 = sub_2520ADA58;
    v49 = v21;
    aBlock = MEMORY[0x277D85DD0];
    v45 = 1107296256;
    v46 = sub_252083924;
    v47 = &block_descriptor_16_0;
    v22 = _Block_copy(&aBlock);

    dispatch_sync(v14, v22);
    _Block_release(v22);
    LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

    if (v22)
    {
      goto LABEL_17;
    }

    v23 = sub_252141D3C();
    *(v23 + 16) = 8;
    *(v23 + 32) = 0u;
    *(v23 + 48) = 0u;
    *(v23 + 64) = 0u;
    *(v23 + 80) = 0u;
    sub_25214200C();

    *(&v52 + 1) = v23;
    v24 = v50;
    v25 = v51;
    v26 = v52;
    v27 = swift_allocObject();
    v27[2] = isEscapingClosureAtFileLocation;
    v27[3] = v24;
    v27[4] = v25;
    v27[5] = v26;
    v27[6] = v23;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_2520ADA00;
    *(v28 + 24) = v27;
    v48 = sub_2520ADA58;
    v49 = v28;
    aBlock = MEMORY[0x277D85DD0];
    v45 = 1107296256;
    v46 = sub_252083924;
    v47 = &block_descriptor_28;
    v29 = _Block_copy(&aBlock);

    dispatch_sync(v14, v29);
    _Block_release(v29);
    LOBYTE(v29) = swift_isEscapingClosureAtFileLocation();

    if (v29)
    {
      goto LABEL_18;
    }

    v30 = sub_252141D3C();
    *(v30 + 16) = 8;
    *(v30 + 32) = 0u;
    *(v30 + 48) = 0u;
    *(v30 + 64) = 0u;
    *(v30 + 80) = 0u;
    sub_25214200C();

    *&v52 = v30;
    v31 = v50;
    v32 = v51;
    v33 = *(&v52 + 1);
    v34 = swift_allocObject();
    v34[2] = isEscapingClosureAtFileLocation;
    v34[3] = v31;
    v34[4] = v32;
    v34[5] = v30;
    v34[6] = v33;
    v35 = swift_allocObject();
    *(v35 + 16) = sub_2520ADA00;
    *(v35 + 24) = v34;
    v48 = sub_2520ADA58;
    v49 = v35;
    aBlock = MEMORY[0x277D85DD0];
    v45 = 1107296256;
    v46 = sub_252083924;
    v47 = &block_descriptor_40;
    v36 = _Block_copy(&aBlock);

    dispatch_sync(v14, v36);
    _Block_release(v36);
    LOBYTE(v36) = swift_isEscapingClosureAtFileLocation();

    if (v36)
    {
      goto LABEL_19;
    }

    v37 = swift_allocObject();
    *(v37 + 16) = isEscapingClosureAtFileLocation;
    *(v37 + 24) = 0;
    v38 = swift_allocObject();
    *(v38 + 16) = sub_2520AD4A4;
    *(v38 + 24) = v37;
    v48 = sub_2520ADA58;
    v49 = v38;
    aBlock = MEMORY[0x277D85DD0];
    v45 = 1107296256;
    v46 = sub_252083924;
    v47 = &block_descriptor_50;
    v39 = _Block_copy(&aBlock);

    dispatch_sync(v14, v39);
    _Block_release(v39);
    LOBYTE(v39) = swift_isEscapingClosureAtFileLocation();

    if (v39)
    {
      goto LABEL_20;
    }

    v40 = swift_allocObject();
    *(v40 + 16) = isEscapingClosureAtFileLocation;
    *(v40 + 24) = 0;
    v41 = swift_allocObject();
    *(v41 + 16) = sub_2520AD4B4;
    *(v41 + 24) = v40;
    v48 = sub_2520ADA58;
    v49 = v41;
    aBlock = MEMORY[0x277D85DD0];
    v45 = 1107296256;
    v46 = sub_252083924;
    v47 = &block_descriptor_60_0;
    v42 = _Block_copy(&aBlock);

    dispatch_sync(v14, v42);
    _Block_release(v42);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

LABEL_21:
    __break(1u);
LABEL_22:
    swift_once();
  }
}

void sub_2520ABE70(double a1, double a2)
{
  v5 = *v2;
  sub_2520AC25C(a1, a2);
  sub_2520AC804(a1, a2);
  if (qword_27F4CD7B0 != -1)
  {
    swift_once();
  }

  if (byte_27F4D3492 == 1)
  {
    if (qword_27F4CD738 != -1)
    {
      swift_once();
    }

    v6 = sub_25214198C();
    __swift_project_value_buffer(v6, qword_27F4CDEF8);

    oslog = sub_25214196C();
    v7 = sub_252141FBC();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v28 = v22;
      *v8 = 136447490;
      v9 = sub_2521425DC();
      v11 = sub_2520A5448(v9, v10, &v28);

      *(v8 + 4) = v11;
      *(v8 + 12) = 2048;
      v12 = v2[10];
      v13 = MEMORY[0x277D839F8];
      sub_25214200C();
      *(v8 + 14) = v24;
      *(v8 + 22) = 2048;
      sub_25214200C();

      *(v8 + 24) = v25;
      *(v8 + 32) = 2048;
      sub_25214200C();

      *(v8 + 34) = v24;
      *(v8 + 42) = 2080;
      sub_25214200C();

      v14 = MEMORY[0x253098E80](v27, v13);
      v16 = v15;

      v17 = sub_2520A5448(v14, v16, &v28);

      *(v8 + 44) = v17;
      *(v8 + 52) = 2080;
      sub_25214200C();

      v18 = MEMORY[0x253098E80](v26, MEMORY[0x277D839F8]);
      v20 = v19;

      v21 = sub_2520A5448(v18, v20, &v28);

      *(v8 + 54) = v21;
      _os_log_impl(&dword_25207E000, oslog, v7, "[%{public}s] metadata count %f, mean inst %f, stat %f, hist inst %s, stat %s", v8, 0x3Eu);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v22, -1, -1);
      MEMORY[0x253099FD0](v8, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_2520AC25C(double a1, double a2)
{
  v3 = v2;
  v6 = *(v2 + 80);
  sub_25214200C();
  sub_25214200C();
  v7 = aBlock + 1.0;
  v34 = v34 + (a1 - v34) / (aBlock + 1.0);
  v8 = swift_allocObject();
  *(v8 + 16) = v3;
  *(v8 + 24) = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_2520AD9D0;
  *(v9 + 24) = v8;
  v31 = sub_2520ADA58;
  v32 = v9;
  aBlock = MEMORY[0x277D85DD0];
  v28 = 1107296256;
  v29 = sub_252083924;
  v30 = &block_descriptor_124;
  v10 = _Block_copy(&aBlock);

  dispatch_sync(v6, v10);
  _Block_release(v10);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
    goto LABEL_7;
  }

  v12 = v33;
  v13 = v34;
  v14 = swift_allocObject();
  *(v14 + 16) = v3;
  *(v14 + 24) = v12;
  *(v14 + 32) = v13;
  *(v14 + 40) = v35;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_2520ADA00;
  *(v15 + 24) = v14;
  v31 = sub_2520ADA58;
  v32 = v15;
  aBlock = MEMORY[0x277D85DD0];
  v28 = 1107296256;
  v29 = sub_252083924;
  v30 = &block_descriptor_135;
  v16 = _Block_copy(&aBlock);

  dispatch_sync(v6, v16);
  _Block_release(v16);
  LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

  if (v16)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  sub_25214200C();
  sub_25214200C();
  v17 = aBlock + 1.0;
  v33 = v33 + (a2 - v33) / (aBlock + 1.0);
  v18 = swift_allocObject();
  *(v18 + 16) = v3;
  *(v18 + 24) = v17;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_2520AD9D4;
  *(v19 + 24) = v18;
  v31 = sub_2520ADA58;
  v32 = v19;
  aBlock = MEMORY[0x277D85DD0];
  v28 = 1107296256;
  v29 = sub_252083924;
  v30 = &block_descriptor_147;
  v20 = _Block_copy(&aBlock);

  dispatch_sync(v6, v20);
  _Block_release(v20);
  LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

  if (v20)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v21 = v33;
  v22 = v34;
  v23 = swift_allocObject();
  *(v23 + 16) = v3;
  *(v23 + 24) = v21;
  *(v23 + 32) = v22;
  *(v23 + 40) = v35;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_2520ADA00;
  *(v24 + 24) = v23;
  v31 = sub_2520ADA58;
  v32 = v24;
  aBlock = MEMORY[0x277D85DD0];
  v28 = 1107296256;
  v29 = sub_252083924;
  v30 = &block_descriptor_158;
  v25 = _Block_copy(&aBlock);

  dispatch_sync(v6, v25);
  _Block_release(v25);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

uint64_t sub_2520AC804(double a1, double a2)
{
  v3 = v2;
  v6 = *(v2 + 80);
  sub_25214200C();
  sub_2520AD5C4(&v27 + 1, a1);
  v7 = v25;
  v8 = v26;
  v9 = swift_allocObject();
  *(v9 + 16) = v3;
  *(v9 + 24) = v7;
  *(v9 + 32) = v8;
  *(v9 + 40) = v27;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_2520ADA00;
  *(v10 + 24) = v9;
  v23 = sub_2520ADA58;
  v24 = v10;
  aBlock = MEMORY[0x277D85DD0];
  v20 = 1107296256;
  v21 = sub_252083924;
  v22 = &block_descriptor_99;
  v11 = _Block_copy(&aBlock);

  dispatch_sync(v6, v11);
  _Block_release(v11);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
    __break(1u);
    goto LABEL_5;
  }

  sub_25214200C();
  sub_2520AD5C4(&v27, a2);
  v13 = v25;
  v14 = v26;
  v15 = swift_allocObject();
  *(v15 + 16) = v3;
  *(v15 + 24) = v13;
  *(v15 + 32) = v14;
  *(v15 + 40) = v27;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_2520ADA00;
  *(v16 + 24) = v15;
  v23 = sub_2520ADA58;
  v24 = v16;
  aBlock = MEMORY[0x277D85DD0];
  v20 = 1107296256;
  v21 = sub_252083924;
  v22 = &block_descriptor_111;
  v17 = _Block_copy(&aBlock);

  dispatch_sync(v6, v17);
  _Block_release(v17);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

void sub_2520ACB18(double a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = v1[10];
  sub_25214200C();
  v6 = aBlock;
  sub_25214200C();
  v7 = aBlock + 1.0;
  v8 = swift_allocObject();
  *(v8 + 16) = v2;
  *(v8 + 24) = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_2520AD9D8;
  *(v9 + 24) = v8;
  v27 = sub_2520ADA58;
  v28 = v9;
  aBlock = MEMORY[0x277D85DD0];
  v24 = 1107296256;
  v25 = sub_252083924;
  v26 = &block_descriptor_171;
  v10 = _Block_copy(&aBlock);

  dispatch_sync(v5, v10);
  _Block_release(v10);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
  }

  else
  {
    v11 = swift_allocObject();
    *(v11 + 16) = v2;
    *(v11 + 24) = v6 + (a1 - v6) / v7;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_2520AD9DC;
    *(v12 + 24) = v11;
    v27 = sub_2520ADA58;
    v28 = v12;
    aBlock = MEMORY[0x277D85DD0];
    v24 = 1107296256;
    v25 = sub_252083924;
    v26 = &block_descriptor_182;
    v13 = _Block_copy(&aBlock);

    dispatch_sync(v5, v13);
    _Block_release(v13);
    LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

    if ((v13 & 1) == 0)
    {
      if (qword_27F4CD7B0 == -1)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_13:
  swift_once();
LABEL_4:
  if (byte_27F4D3492 == 1)
  {
    if (qword_27F4CD738 != -1)
    {
      swift_once();
    }

    v14 = sub_25214198C();
    __swift_project_value_buffer(v14, qword_27F4CDEF8);

    v15 = sub_25214196C();
    v16 = sub_252141FBC();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      aBlock = *&v18;
      *v17 = 136446978;
      v19 = sub_2521425DC();
      v21 = sub_2520A5448(v19, v20, &aBlock);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2048;
      *(v17 + 14) = a1;
      *(v17 + 22) = 2048;
      sub_25214200C();
      *(v17 + 24) = v22;
      *(v17 + 32) = 2048;
      sub_25214200C();
      *(v17 + 34) = v22;
      _os_log_impl(&dword_25207E000, v15, v16, "[%{public}s] val %f mean %f, count %f", v17, 0x2Au);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x253099FD0](v18, -1, -1);
      MEMORY[0x253099FD0](v17, -1, -1);
    }
  }
}

uint64_t sub_2520AD014()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t sub_2520AD088()
{
  v12[0] = sub_252141FEC();
  v1 = *(v12[0] - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v12[0]);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_252141FCC();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v7 = sub_252141A8C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  v9 = sub_252141D3C();
  *(v9 + 16) = 8;
  *(v9 + 32) = 0u;
  *(v9 + 48) = 0u;
  *(v9 + 64) = 0u;
  *(v9 + 80) = 0u;
  *(v0 + 48) = v9;
  v10 = sub_252141D3C();
  *(v10 + 16) = 8;
  *(v10 + 32) = 0u;
  *(v10 + 48) = 0u;
  *(v10 + 64) = 0u;
  *(v10 + 80) = 0u;
  *(v0 + 56) = v10;
  sub_25209D56C();
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  sub_252141A6C();
  v12[1] = MEMORY[0x277D84F90];
  sub_2520AD508();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CD970, &qword_252143B50);
  sub_2520AD560();
  sub_25214218C();
  (*(v1 + 104))(v4, *MEMORY[0x277D85260], v12[0]);
  *(v0 + 80) = sub_25214202C();
  return v0;
}

uint64_t sub_2520AD2F8(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2520AD354(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_2520AD3B0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24))
  {
    return 0;
  }

  if (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40))
  {
    return 0;
  }

  v5 = *(a2 + 56);
  v7 = *(a1 + 56);
  return (sub_2520AD2F8(*(a1 + 48), *(a2 + 48)) & 1) != 0 && (sub_2520AD2F8(v7, v5) & 1) != 0 && *(a1 + 64) == *(a2 + 64) && *(a1 + 72) == *(a2 + 72);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double sub_2520AD4A4()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 64) = result;
  return result;
}

double sub_2520AD4B4()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 72) = result;
  return result;
}

double sub_2520AD4C4@<D0>(double *a1@<X8>)
{
  result = *(v1 + 64);
  *a1 = result;
  return result;
}

double sub_2520AD4D0()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 16) = result;
  return result;
}

double sub_2520AD4E0()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 24) = result;
  return result;
}

double sub_2520AD4F0@<D0>(double *a1@<X8>)
{
  result = *(v1 + 16);
  *a1 = result;
  return result;
}

double sub_2520AD4FC@<D0>(double *a1@<X8>)
{
  result = *(v1 + 24);
  *a1 = result;
  return result;
}

unint64_t sub_2520AD508()
{
  result = qword_27F4CE0E0;
  if (!qword_27F4CE0E0)
  {
    sub_252141FCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4CE0E0);
  }

  return result;
}

unint64_t sub_2520AD560()
{
  result = qword_27F4CE0F0;
  if (!qword_27F4CE0F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4CD970, &qword_252143B50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4CE0F0);
  }

  return result;
}

uint64_t sub_2520AD5C4(uint64_t *a1, double a2)
{
  if (a2 < 20.0)
  {
    v3 = *a1;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      if (*(v3 + 16))
      {
LABEL_4:
        v5 = (v3 + 32);
LABEL_17:
        *v5 = *v5 + 1.0;
        *a1 = v3;
        return result;
      }
    }

    else
    {
      result = sub_2520A598C(v3);
      v3 = result;
      if (*(result + 16))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
    goto LABEL_36;
  }

  if (a2 < 25.0)
  {
    v3 = *a1;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_12:
      if (*(v3 + 16) >= 2uLL)
      {
        v5 = (v3 + 40);
        goto LABEL_17;
      }

      __break(1u);
      goto LABEL_38;
    }

LABEL_36:
    result = sub_2520A598C(v3);
    v3 = result;
    goto LABEL_12;
  }

  if (a2 < 30.0)
  {
    v3 = *a1;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_15:
      if (*(v3 + 16) >= 3uLL)
      {
        v5 = (v3 + 48);
        goto LABEL_17;
      }

      __break(1u);
      goto LABEL_40;
    }

LABEL_38:
    result = sub_2520A598C(v3);
    v3 = result;
    goto LABEL_15;
  }

  if (a2 < 33.0)
  {
    v3 = *a1;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_9:
      if (*(v3 + 16) >= 4uLL)
      {
        v5 = (v3 + 56);
        goto LABEL_17;
      }

      __break(1u);
      goto LABEL_42;
    }

LABEL_40:
    result = sub_2520A598C(v3);
    v3 = result;
    goto LABEL_9;
  }

  if (a2 < 35.0)
  {
    v3 = *a1;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_20:
      if (*(v3 + 16) >= 5uLL)
      {
        v5 = (v3 + 64);
        goto LABEL_17;
      }

      __break(1u);
      goto LABEL_44;
    }

LABEL_42:
    result = sub_2520A598C(v3);
    v3 = result;
    goto LABEL_20;
  }

  if (a2 < 40.0)
  {
    v3 = *a1;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_24:
      if (*(v3 + 16) >= 6uLL)
      {
        v5 = (v3 + 72);
        goto LABEL_17;
      }

      __break(1u);
LABEL_46:
      result = sub_2520A598C(v3);
      v3 = result;
      goto LABEL_32;
    }

LABEL_44:
    result = sub_2520A598C(v3);
    v3 = result;
    goto LABEL_24;
  }

  v3 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (a2 >= 40.0 && a2 < 45.0)
  {
    if (result)
    {
      goto LABEL_29;
    }

    goto LABEL_48;
  }

  if ((result & 1) == 0)
  {
    goto LABEL_46;
  }

LABEL_32:
  if (*(v3 + 16) >= 8uLL)
  {
    v5 = (v3 + 88);
    goto LABEL_17;
  }

  __break(1u);
LABEL_48:
  result = sub_2520A598C(v3);
  v3 = result;
LABEL_29:
  if (*(v3 + 16) >= 7uLL)
  {
    v5 = (v3 + 80);
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_2520AD878()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2520AD8B0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  *a1 = *(v1 + 32);
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
}

double sub_2520AD8E8@<D0>(double *a1@<X8>)
{
  result = *(v1 + 72);
  *a1 = result;
  return result;
}

uint64_t objectdestroyTm()
{
  v1 = v0[2];

  v2 = v0[5];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2520ADAD8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v28 = MEMORY[0x277D84F90];
  sub_25209B354(0, v1, 0);
  v2 = v28;
  v4 = a1 + 56;
  v5 = -1 << *(a1 + 32);
  result = sub_25214219C();
  v7 = result;
  v8 = 0;
  v22 = v1;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
  {
    v10 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_21;
    }

    v23 = *(a1 + 36);
    sub_2520CB768(*(a1 + 48) + 40 * v7, v25);
    v11 = v27;
    v24 = v26;

    result = sub_2520CB7D8(v25);
    v28 = v2;
    v13 = *(v2 + 16);
    v12 = *(v2 + 24);
    if (v13 >= v12 >> 1)
    {
      result = sub_25209B354((v12 > 1), v13 + 1, 1);
      v2 = v28;
    }

    *(v2 + 16) = v13 + 1;
    v14 = v2 + 16 * v13;
    *(v14 + 32) = v24;
    *(v14 + 40) = v11;
    v9 = 1 << *(a1 + 32);
    if (v7 >= v9)
    {
      goto LABEL_22;
    }

    v4 = a1 + 56;
    v15 = *(a1 + 56 + 8 * v10);
    if ((v15 & (1 << v7)) == 0)
    {
      goto LABEL_23;
    }

    if (v23 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (v7 & 0x3F));
    if (v16)
    {
      v9 = __clz(__rbit64(v16)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v10 << 6;
      v18 = v10 + 1;
      v19 = (a1 + 64 + 8 * v10);
      while (v18 < (v9 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          result = sub_2520A1FF4(v7, v23, 0);
          v9 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      result = sub_2520A1FF4(v7, v23, 0);
    }

LABEL_4:
    ++v8;
    v7 = v9;
    if (v8 == v22)
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

uint64_t sub_2520ADD14(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v27 = MEMORY[0x277D84F90];
  sub_2520A3448(0, v6, 0);
  result = v27;
  v26 = v4;
  v24 = a1;
  v25 = a2;
  if (v6)
  {
    v8 = (a1 + 32);
    v9 = (a2 + 32);
    v10 = v6;
    v11 = v5;
    v12 = v5;
    while (v4)
    {
      if (!v11)
      {
        goto LABEL_23;
      }

      v13 = *v8;
      v14 = *v9;
      v28 = result;
      v16 = *(result + 16);
      v15 = *(result + 24);
      if (v16 >= v15 >> 1)
      {
        v23 = v12;
        sub_2520A3448(v15 > 1, v16 + 1, 1);
        v12 = v23;
        result = v28;
      }

      --v11;
      *(result + 16) = v16 + 1;
      *(result + 8 * v16 + 32) = v13 + v14;
      --v4;
      ++v9;
      ++v8;
      if (!--v10)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v12 = v5;
LABEL_13:
  if (v26 > v12)
  {
    while (v6 < v26)
    {
      v17 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_25;
      }

      if (v12 != v6)
      {
        if (v6 >= v12)
        {
          goto LABEL_26;
        }

        v18 = *(v24 + 32 + 8 * v6);
        v19 = *(v25 + 32 + 8 * v6);
        v29 = result;
        v21 = *(result + 16);
        v20 = *(result + 24);
        if (v21 >= v20 >> 1)
        {
          v22 = v12;
          sub_2520A3448(v20 > 1, v21 + 1, 1);
          v12 = v22;
          result = v29;
        }

        *(result + 16) = v21 + 1;
        *(result + 8 * v21 + 32) = v18 + v19;
        ++v6;
        if (v17 != v26)
        {
          continue;
        }
      }

      return result;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  return result;
}

void sub_2520ADEF0(uint64_t a1, void (*a2)(uint64_t, void))
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    a2(Strong, *(a1 + 8));

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v5 = sub_25214198C();
    __swift_project_value_buffer(v5, qword_27F4CDE68);
    oslog = sub_25214196C();
    v6 = sub_252141FAC();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v10 = v8;
      *v7 = 136446210;
      *(v7 + 4) = sub_2520A5448(0xD000000000000021, 0x8000000252144390, &v10);
      _os_log_impl(&dword_25207E000, oslog, v6, "[%{public}s] missing observer!", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x253099FD0](v8, -1, -1);
      MEMORY[0x253099FD0](v7, -1, -1);
    }
  }
}

uint64_t sub_2520AE084()
{
  sub_25214255C();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_252141BEC();
  return sub_25214258C();
}

uint64_t sub_2520AE0C8()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return sub_252141BEC();
}

uint64_t sub_2520AE0D0()
{
  sub_25214255C();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_252141BEC();
  return sub_25214258C();
}

uint64_t sub_2520AE110(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32))
  {
    return 1;
  }

  else
  {
    return sub_25214247C();
  }
}

uint64_t sub_2520AE140(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v4++;
    v6 = v5;
    v7 = *v3++;
    result = v7 == v6;
    if (v7 != v6 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2520AE19C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 16);
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_2520CC00C;
  *(v6 + 24) = v5;
  v9[4] = sub_2520ADA58;
  v9[5] = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_252083924;
  v9[3] = &block_descriptor_237;
  v7 = _Block_copy(v9);

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2520AE2F4(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (*(a2 + 16) <= 0x14uLL)
  {
  }

  else
  {
    sub_252098E44(a2, a2 + 32, 0, 0x29uLL);
    v2 = v4;
  }

  v5 = *(a1 + 24);
  *(a1 + 24) = v2;
}

uint64_t sub_2520AE360(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 16);
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_2520CBFA0;
  *(v6 + 24) = v5;
  v9[4] = sub_2520ADA58;
  v9[5] = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_252083924;
  v9[3] = &block_descriptor_197;
  v7 = _Block_copy(v9);

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2520AE4B8(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (*(a2 + 16) <= 0x32uLL)
  {
  }

  else
  {
    sub_2520990C4(a2, a2 + 32, 0, 0x65uLL);
    v2 = v4;
  }

  v5 = *(a1 + 32);
  *(a1 + 32) = v2;
}

uint64_t sub_2520AE524(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 16);
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_2520CBF94;
  *(v6 + 24) = v5;
  v9[4] = sub_2520ADA58;
  v9[5] = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_252083924;
  v9[3] = &block_descriptor_187;
  v7 = _Block_copy(v9);

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2520AE67C(double a1)
{
  v3 = *(v1 + 16);
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_2520CBFA8;
  *(v5 + 24) = v4;
  v8[4] = sub_2520ADA58;
  v8[5] = v5;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_252083924;
  v8[3] = &block_descriptor_207;
  v6 = _Block_copy(v8);

  dispatch_sync(v3, v6);
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2520AE7E0(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 16);
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_2520CBF68;
  *(v6 + 24) = v5;
  v9[4] = sub_2520ADA58;
  v9[5] = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_252083924;
  v9[3] = &block_descriptor_137_0;
  v7 = _Block_copy(v9);

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2520AE938(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (*(a2 + 16) <= 0x32uLL)
  {
  }

  else
  {
    sub_2520990C4(a2, a2 + 32, 0, 0x65uLL);
    v2 = v4;
  }

  v5 = *(a1 + 56);
  *(a1 + 56) = v2;
}

uint64_t sub_2520AE9A4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 16);
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_2520CBF58;
  *(v6 + 24) = v5;
  v9[4] = sub_2520ADA58;
  v9[5] = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_252083924;
  v9[3] = &block_descriptor_127;
  v7 = _Block_copy(v9);

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2520AEAFC(double a1)
{
  v3 = *(v1 + 16);
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_2520AD4B4;
  *(v5 + 24) = v4;
  v8[4] = sub_2520ADA58;
  v8[5] = v5;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_252083924;
  v8[3] = &block_descriptor_147_0;
  v6 = _Block_copy(v8);

  dispatch_sync(v3, v6);
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2520AEC60(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 16);
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_2520CBF7C;
  *(v6 + 24) = v5;
  v9[4] = sub_2520ADA58;
  v9[5] = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_252083924;
  v9[3] = &block_descriptor_167;
  v7 = _Block_copy(v9);

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2520AEDB8(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (*(a2 + 16) <= 0x32uLL)
  {
  }

  else
  {
    sub_2520990C4(a2, a2 + 32, 0, 0x65uLL);
    v2 = v4;
  }

  v5 = *(a1 + 80);
  *(a1 + 80) = v2;
}

uint64_t sub_2520AEE24(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 16);
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_2520CBF70;
  *(v6 + 24) = v5;
  v9[4] = sub_2520ADA58;
  v9[5] = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_252083924;
  v9[3] = &block_descriptor_157;
  v7 = _Block_copy(v9);

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2520AEF7C(double a1)
{
  v3 = *(v1 + 16);
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_2520CBF84;
  *(v5 + 24) = v4;
  v8[4] = sub_2520ADA58;
  v8[5] = v5;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_252083924;
  v8[3] = &block_descriptor_177;
  v6 = _Block_copy(v8);

  dispatch_sync(v3, v6);
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2520AF0E0(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 16);
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_2520CBEF8;
  *(v6 + 24) = v5;
  v9[4] = sub_2520ADA58;
  v9[5] = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_252083924;
  v9[3] = &block_descriptor_107;
  v7 = _Block_copy(v9);

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2520AF238(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (*(a2 + 16) <= 0x32uLL)
  {
  }

  else
  {
    sub_2520990C4(a2, a2 + 32, 0, 0x65uLL);
    v2 = v4;
  }

  v5 = *(a1 + 104);
  *(a1 + 104) = v2;
}

uint64_t sub_2520AF2A4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 16);
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_2520CBEEC;
  *(v6 + 24) = v5;
  v9[4] = sub_2520ADA58;
  v9[5] = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_252083924;
  v9[3] = &block_descriptor_97;
  v7 = _Block_copy(v9);

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2520AF3FC(double a1)
{
  v3 = *(v1 + 16);
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_2520CBF48;
  *(v5 + 24) = v4;
  v8[4] = sub_2520ADA58;
  v8[5] = v5;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_252083924;
  v8[3] = &block_descriptor_117;
  v6 = _Block_copy(v8);

  dispatch_sync(v3, v6);
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2520AF560(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 16);
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_2520CBEE0;
  *(v6 + 24) = v5;
  v9[4] = sub_2520ADA58;
  v9[5] = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_252083924;
  v9[3] = &block_descriptor_87;
  v7 = _Block_copy(v9);

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2520AF6B8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 16);
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_2520CC004;
  *(v6 + 24) = v5;
  v9[4] = sub_2520ADA58;
  v9[5] = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_252083924;
  v9[3] = &block_descriptor_227;
  v7 = _Block_copy(v9);

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2520AF810(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (*(a2 + 16) <= 0x14uLL)
  {
  }

  else
  {
    sub_252098E44(a2, a2 + 32, 0, 0x29uLL);
    v2 = v4;
  }

  v5 = *(a1 + 136);
  *(a1 + 136) = v2;
}

uint64_t sub_2520AF87C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 56);

  v4 = *(v0 + 80);

  v5 = *(v0 + 104);

  v6 = *(v0 + 136);

  return v0;
}

uint64_t sub_2520AF8CC()
{
  sub_2520AF87C();

  return swift_deallocClassInstance();
}

uint64_t sub_2520AF944(uint64_t a1)
{
  v3 = *&v1[OBJC_IVAR____TtC11HearingTest13HTNoiseOutput_queue];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_2520CBEB4;
  *(v5 + 24) = v4;
  v10[4] = sub_2520AD484;
  v10[5] = v5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_252083924;
  v10[3] = &block_descriptor_2;
  v6 = _Block_copy(v10);
  v7 = v1;

  dispatch_sync(v3, v6);
  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2520AFAC4(uint64_t a1)
{
  v3 = *&v1[OBJC_IVAR____TtC11HearingTest13HTNoiseOutput_queue];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_2520CC030;
  *(v5 + 24) = v4;
  v10[4] = sub_2520ADA58;
  v10[5] = v5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_252083924;
  v10[3] = &block_descriptor_247_0;
  v6 = _Block_copy(v10);
  v7 = v1;

  dispatch_sync(v3, v6);
  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2520AFC1C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (*(a2 + 16) <= 0x10uLL)
  {
  }

  else
  {
    sub_252098E44(a2, a2 + 32, 0, 0x21uLL);
    v2 = v4;
  }

  v5 = *(a1 + OBJC_IVAR____TtC11HearingTest13HTNoiseOutput__drumOctBandSm);
  *(a1 + OBJC_IVAR____TtC11HearingTest13HTNoiseOutput__drumOctBandSm) = v2;
}

uint64_t sub_2520AFCA4(uint64_t a1)
{
  v3 = *&v1[OBJC_IVAR____TtC11HearingTest13HTNoiseOutput_queue];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_2520CBFF0;
  *(v5 + 24) = v4;
  v10[4] = sub_2520ADA58;
  v10[5] = v5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_252083924;
  v10[3] = &block_descriptor_217;
  v6 = _Block_copy(v10);
  v7 = v1;

  dispatch_sync(v3, v6);
  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2520AFDFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = a3;
  v38 = a2;
  v44 = a1;
  ObjectType = swift_getObjectType();
  v42 = sub_252141FEC();
  v4 = *(v42 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v42);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_252141FCC();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = sub_252141A8C();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v41 = OBJC_IVAR____TtC11HearingTest13HTNoiseOutput_queue;
  v12 = sub_25209D56C();
  v39 = "MaxInputReportSize";
  v40 = v12;
  sub_252141A6C();
  aBlock = MEMORY[0x277D84F90];
  sub_2520A2ED4(&qword_27F4CE0E0, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CD970, &qword_252143B50);
  sub_2520A2F1C(&qword_27F4CE0F0, &qword_27F4CD970, &qword_252143B50);
  sub_25214218C();
  (*(v4 + 104))(v7, *MEMORY[0x277D85260], v42);
  *&v3[v41] = sub_25214202C();
  *&v3[OBJC_IVAR____TtC11HearingTest13HTNoiseOutput__noiseResult] = 0;
  v13 = OBJC_IVAR____TtC11HearingTest13HTNoiseOutput__drumOctBandSm;
  v14 = sub_252141D3C();
  *(v14 + 16) = 16;
  *(v14 + 32) = 0u;
  *(v14 + 48) = 0u;
  *(v14 + 64) = 0u;
  *(v14 + 80) = 0u;
  *(v14 + 96) = 0u;
  *(v14 + 112) = 0u;
  *(v14 + 128) = 0u;
  *(v14 + 144) = 0u;
  *&v3[v13] = v14;
  *&v3[OBJC_IVAR____TtC11HearingTest13HTNoiseOutput__toneInterferenceFlag] = 0;
  v51.receiver = v3;
  v51.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v51, sel_init);
  v16 = OBJC_IVAR____TtC11HearingTest13HTNoiseOutput_queue;
  v17 = *&v15[OBJC_IVAR____TtC11HearingTest13HTNoiseOutput_queue];
  v18 = swift_allocObject();
  v19 = v44;
  *(v18 + 16) = v15;
  *(v18 + 24) = v19;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_2520CC594;
  *(v20 + 24) = v18;
  v49 = sub_2520ADA58;
  v50 = v20;
  aBlock = MEMORY[0x277D85DD0];
  v46 = 1107296256;
  v47 = sub_252083924;
  v48 = &block_descriptor_467;
  v21 = _Block_copy(&aBlock);
  v22 = v15;

  dispatch_sync(v17, v21);
  _Block_release(v21);
  LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

  if (v17)
  {
    __break(1u);
    goto LABEL_6;
  }

  v24 = *&v15[v16];
  v25 = swift_allocObject();
  v26 = v38;
  *(v25 + 16) = v22;
  *(v25 + 24) = v26;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_2520CC680;
  *(v27 + 24) = v25;
  v49 = sub_2520ADA58;
  v50 = v27;
  aBlock = MEMORY[0x277D85DD0];
  v46 = 1107296256;
  v47 = sub_252083924;
  v48 = &block_descriptor_478_0;
  v28 = _Block_copy(&aBlock);
  v29 = v22;

  dispatch_sync(v24, v28);
  _Block_release(v28);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v31 = *&v15[v16];
  v32 = swift_allocObject();
  v33 = v37;
  *(v32 + 16) = v29;
  *(v32 + 24) = v33;
  v34 = swift_allocObject();
  *(v34 + 16) = sub_2520CC598;
  *(v34 + 24) = v32;
  v49 = sub_2520ADA58;
  v50 = v34;
  aBlock = MEMORY[0x277D85DD0];
  v46 = 1107296256;
  v47 = sub_252083924;
  v48 = &block_descriptor_489;
  v35 = _Block_copy(&aBlock);
  v36 = v29;

  dispatch_sync(v31, v35);
  _Block_release(v35);
  LOBYTE(v31) = swift_isEscapingClosureAtFileLocation();

  if ((v31 & 1) == 0)
  {
    return v36;
  }

LABEL_7:
  __break(1u);
  return result;
}

id sub_2520B0484()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2520B052C()
{
  v39[0] = 0;
  v39[1] = 0xE000000000000000;
  sub_25214222C();
  MEMORY[0x253098DA0](0x53646E614274636FLL, 0xED0000203A63546DLL);
  v1 = *v0;
  sub_252141E8C();
  MEMORY[0x253098DA0](8236, 0xE200000000000000);
  strcpy(v39, "HTNoiseTuning<");
  MEMORY[0x253098DA0](0, 0xE000000000000000);

  v2 = v39[0];
  v39[0] = 0;
  v39[1] = 0xE000000000000000;
  sub_25214222C();
  MEMORY[0x253098DA0](0xD000000000000012, 0x80000002521497A0);
  v3 = v0[1];
  sub_252141E8C();
  MEMORY[0x253098DA0](44, 0xE100000000000000);

  MEMORY[0x253098DA0](0, 0xE000000000000000);

  sub_25214222C();

  v39[0] = 0xD00000000000001BLL;
  v39[1] = 0x80000002521497C0;
  v31 = v0[3];
  v4 = sub_25214244C();
  MEMORY[0x253098DA0](v4);

  MEMORY[0x253098DA0](8236, 0xE200000000000000);

  MEMORY[0x253098DA0](0xD00000000000001BLL, 0x80000002521497C0);

  sub_25214222C();

  v39[0] = 0xD000000000000024;
  v39[1] = 0x80000002521497E0;
  v32 = v0[4];
  v5 = sub_25214244C();
  MEMORY[0x253098DA0](v5);

  MEMORY[0x253098DA0](8236, 0xE200000000000000);

  MEMORY[0x253098DA0](0xD000000000000024, 0x80000002521497E0);

  v39[0] = 0;
  v39[1] = 0xE000000000000000;
  sub_25214222C();
  MEMORY[0x253098DA0](0xD000000000000023, 0x8000000252149810);
  v6 = v0[5];
  sub_252141E8C();
  MEMORY[0x253098DA0](8236, 0xE200000000000000);

  MEMORY[0x253098DA0](0, 0xE000000000000000);

  v39[0] = 0;
  v39[1] = 0xE000000000000000;
  sub_25214222C();
  MEMORY[0x253098DA0](0xD000000000000025, 0x8000000252149840);
  v7 = v0[6];
  sub_252141E8C();
  MEMORY[0x253098DA0](8236, 0xE200000000000000);

  MEMORY[0x253098DA0](0, 0xE000000000000000);

  v39[0] = 0;
  v39[1] = 0xE000000000000000;
  sub_25214222C();
  MEMORY[0x253098DA0](0xD00000000000001DLL, 0x8000000252149870);
  v8 = v0[7];
  sub_252141E8C();
  MEMORY[0x253098DA0](8236, 0xE200000000000000);

  MEMORY[0x253098DA0](0, 0xE000000000000000);

  v39[0] = 0;
  v39[1] = 0xE000000000000000;
  sub_25214222C();
  MEMORY[0x253098DA0]();
  v9 = v0[8];
  sub_252141E8C();
  MEMORY[0x253098DA0](8236, 0xE200000000000000);

  MEMORY[0x253098DA0](0, 0xE000000000000000);

  v39[0] = 0;
  v39[1] = 0xE000000000000000;
  sub_25214222C();
  MEMORY[0x253098DA0](0xD000000000000019, 0x80000002521498B0);
  v10 = v0[9];
  sub_252141E8C();
  MEMORY[0x253098DA0](8236, 0xE200000000000000);

  MEMORY[0x253098DA0](0, 0xE000000000000000);

  sub_25214222C();

  v39[0] = 0xD000000000000019;
  v39[1] = 0x80000002521498D0;
  v33 = v0[10];
  v11 = sub_25214244C();
  MEMORY[0x253098DA0](v11);

  MEMORY[0x253098DA0](8236, 0xE200000000000000);

  MEMORY[0x253098DA0](0xD000000000000019, 0x80000002521498D0);

  v39[0] = 0;
  v39[1] = 0xE000000000000000;
  sub_25214222C();
  MEMORY[0x253098DA0](0xD000000000000025, 0x80000002521498F0);
  v12 = v0[11];
  sub_252141E8C();
  MEMORY[0x253098DA0](8236, 0xE200000000000000);

  MEMORY[0x253098DA0](0, 0xE000000000000000);

  v39[0] = 0;
  v39[1] = 0xE000000000000000;
  sub_25214222C();
  MEMORY[0x253098DA0](0xD000000000000025, 0x8000000252149920);
  v13 = v0[12];
  sub_252141E8C();
  MEMORY[0x253098DA0](8236, 0xE200000000000000);

  MEMORY[0x253098DA0](0, 0xE000000000000000);

  sub_25214222C();

  v39[0] = 0xD000000000000016;
  v39[1] = 0x8000000252149950;
  v34 = v0[13];
  v14 = sub_25214244C();
  MEMORY[0x253098DA0](v14);

  MEMORY[0x253098DA0](8236, 0xE200000000000000);

  MEMORY[0x253098DA0](0xD000000000000016, 0x8000000252149950);

  v39[0] = 0;
  v39[1] = 0xE000000000000000;
  sub_25214222C();
  MEMORY[0x253098DA0]();
  v15 = v0[14];
  sub_252141E8C();
  MEMORY[0x253098DA0](8236, 0xE200000000000000);

  MEMORY[0x253098DA0](0, 0xE000000000000000);

  v39[0] = 0;
  v39[1] = 0xE000000000000000;
  sub_25214222C();
  MEMORY[0x253098DA0](0xD000000000000016, 0x8000000252149990);
  v16 = v0[15];
  sub_252141E8C();
  MEMORY[0x253098DA0](8236, 0xE200000000000000);

  MEMORY[0x253098DA0](0, 0xE000000000000000);

  v39[0] = 0;
  v39[1] = 0xE000000000000000;
  sub_25214222C();
  MEMORY[0x253098DA0](0xD000000000000022, 0x80000002521499B0);
  v17 = v0[16];
  sub_252141E8C();
  MEMORY[0x253098DA0](8236, 0xE200000000000000);

  MEMORY[0x253098DA0](0, 0xE000000000000000);

  v39[0] = 0;
  v39[1] = 0xE000000000000000;
  sub_25214222C();
  MEMORY[0x253098DA0](0xD000000000000022, 0x80000002521499E0);
  v18 = v0[17];
  sub_252141E8C();
  MEMORY[0x253098DA0](8236, 0xE200000000000000);

  MEMORY[0x253098DA0](0, 0xE000000000000000);

  v39[0] = 0;
  v39[1] = 0xE000000000000000;
  sub_25214222C();
  MEMORY[0x253098DA0](0x53646E614274636FLL, 0xEC000000203A576DLL);
  v19 = v0[18];
  sub_252141E8C();
  MEMORY[0x253098DA0](8236, 0xE200000000000000);

  MEMORY[0x253098DA0](0, 0xE000000000000000);

  sub_25214222C();

  v39[0] = 0xD000000000000018;
  v39[1] = 0x8000000252149A10;
  v35 = v0[19];
  v20 = sub_25214244C();
  MEMORY[0x253098DA0](v20);

  MEMORY[0x253098DA0](8236, 0xE200000000000000);

  MEMORY[0x253098DA0](0xD000000000000018, 0x8000000252149A10);

  v39[0] = 0;
  v39[1] = 0xE000000000000000;
  sub_25214222C();
  MEMORY[0x253098DA0](0xD00000000000001FLL, 0x8000000252149A30);
  v21 = v0[20];
  sub_252141E8C();
  MEMORY[0x253098DA0](8236, 0xE200000000000000);

  MEMORY[0x253098DA0](0, 0xE000000000000000);

  sub_25214222C();

  v39[0] = 0xD000000000000019;
  v39[1] = 0x8000000252149A50;
  v36 = v0[21];
  v22 = sub_25214244C();
  MEMORY[0x253098DA0](v22);

  MEMORY[0x253098DA0](8236, 0xE200000000000000);

  MEMORY[0x253098DA0](0xD000000000000019, 0x8000000252149A50);

  sub_25214222C();

  v39[0] = 0xD000000000000022;
  v39[1] = 0x8000000252149A70;
  v37 = v0[22];
  v23 = sub_25214244C();
  MEMORY[0x253098DA0](v23);

  MEMORY[0x253098DA0](8236, 0xE200000000000000);

  MEMORY[0x253098DA0](0xD000000000000022, 0x8000000252149A70);

  v39[0] = 0;
  v39[1] = 0xE000000000000000;
  sub_25214222C();
  MEMORY[0x253098DA0](0xD000000000000021, 0x8000000252149AA0);
  v24 = v0[23];
  sub_252141E8C();
  MEMORY[0x253098DA0](8236, 0xE200000000000000);

  MEMORY[0x253098DA0](0, 0xE000000000000000);

  v39[0] = 0;
  v39[1] = 0xE000000000000000;
  sub_25214222C();
  MEMORY[0x253098DA0](0xD000000000000023, 0x8000000252149AD0);
  v25 = v0[24];
  sub_252141E8C();
  MEMORY[0x253098DA0](8236, 0xE200000000000000);

  MEMORY[0x253098DA0](0, 0xE000000000000000);

  v39[0] = 0;
  v39[1] = 0xE000000000000000;
  sub_25214222C();
  MEMORY[0x253098DA0](0xD00000000000001BLL, 0x8000000252149B00);
  v26 = v0[25];
  sub_252141E8C();
  MEMORY[0x253098DA0](8236, 0xE200000000000000);

  MEMORY[0x253098DA0](0, 0xE000000000000000);

  sub_25214222C();

  v39[0] = 0xD000000000000014;
  v39[1] = 0x8000000252149B20;
  v38 = v0[26];
  v27 = sub_25214244C();
  MEMORY[0x253098DA0](v27);

  MEMORY[0x253098DA0](8236, 0xE200000000000000);

  MEMORY[0x253098DA0](0xD000000000000014, 0x8000000252149B20);

  v39[0] = 0;
  v39[1] = 0xE000000000000000;
  sub_25214222C();
  MEMORY[0x253098DA0](0xD000000000000019, 0x8000000252149B40);
  v28 = v0[27];
  sub_252141E8C();
  MEMORY[0x253098DA0](8236, 0xE200000000000000);

  MEMORY[0x253098DA0](0, 0xE000000000000000);

  v39[0] = 0;
  v39[1] = 0xE000000000000000;
  sub_25214222C();
  MEMORY[0x253098DA0](0xD000000000000015, 0x8000000252149B60);
  v29 = v0[28];
  sub_252141E8C();
  MEMORY[0x253098DA0](62, 0xE100000000000000);

  MEMORY[0x253098DA0](0, 0xE000000000000000);

  return v2;
}

uint64_t sub_2520B16A4(__int128 *a1)
{
  v570 = a1;
  ObjectType = swift_getObjectType();
  v2 = sub_252141FEC();
  v575 = *(v2 - 8);
  v576 = v2;
  v3 = *(v575 + 64);
  MEMORY[0x28223BE20](v2);
  v574 = &v566 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v572 = sub_252141FCC();
  v5 = *(*(v572 - 8) + 64);
  MEMORY[0x28223BE20](v572);
  v573 = &v566 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_252141A8C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v571 = &v566 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2520F25A8(&v1[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_metrics]);
  v1[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_hidActivated] = 0;
  v1[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_currentCheck1A] = 0;
  v1[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_currentCheck1B] = 0;
  v1[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_currentCheck2A] = 0;
  v577 = v1;
  v1[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_currentCheck2B] = 0;
  v682 = MEMORY[0x277D84F90];
  v10 = 4;
  sub_25209B334(0, 4, 0);
  v11 = &unk_28644C818;
  v12 = v682;
  v587 = xmmword_252144200;
  v586 = xmmword_252144210;
  v585 = xmmword_252144220;
  v583 = xmmword_252144230;
  v584 = xmmword_252144240;
  v581 = xmmword_252144250;
  v582 = xmmword_252144260;
  v580 = xmmword_252144270;
  do
  {
    v14 = *(v11 - 1);
    v13 = *v11;
    v682 = v12;
    v16 = *(v12 + 16);
    v15 = *(v12 + 24);

    if (v16 >= v15 >> 1)
    {
      sub_25209B334((v15 > 1), v16 + 1, 1);
      v12 = v682;
    }

    *(v12 + 16) = v16 + 1;
    v17 = v12 + 248 * v16;
    *(v17 + 32) = v14;
    *(v17 + 40) = v13;
    v18 = v586;
    *(v17 + 48) = v587;
    *(v17 + 64) = &unk_28644C548;
    *(v17 + 72) = v18;
    *(v17 + 88) = v585;
    v19 = v584;
    *(v17 + 104) = v583;
    *(v17 + 120) = 0x4037000000000000;
    *(v17 + 128) = 50;
    *(v17 + 136) = v19;
    *(v17 + 152) = 50;
    *(v17 + 160) = v581;
    *(v17 + 176) = v19;
    *(v17 + 192) = 0x3FA999999999999ALL;
    *(v17 + 200) = 30;
    *(v17 + 208) = 0x400C000000000000;
    *(v17 + 216) = v582;
    *(v17 + 232) = v580;
    *(v17 + 248) = 0x3FE0000000000000;
    *(v17 + 256) = 2;
    v11 += 2;
    *(v17 + 264) = 0;
    *(v17 + 272) = 0;
    --v10;
  }

  while (v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDCB8, &unk_252144500);
  *&v605 = sub_25214235C();

  v21 = 0;
  sub_2520CAB3C(v20, 1, &v605);

  v22 = OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_tuningDict;
  v23 = v577;
  *&v577[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_tuningDict] = v605;
  v24 = &v23[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_currentTuningProductID];
  *v24 = 0x6E776F6E6B6E75;
  *(v24 + 1) = 0xE700000000000000;
  *&v23[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_kHIDPrimaryUsagePage] = 65280;
  *&v23[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_kHIDPrimaryUsage] = 96;
  *&v23[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_hidManager] = 0;
  *&v23[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_hidEnvNoiseData] = xmmword_252144280;
  v23[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_hidListening] = 0;
  v25 = OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_hidLock;
  *&v23[v25] = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v569 = OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_queue;
  *&v23[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_queue] = 0;
  v26 = OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_accessoryManager;
  *&v23[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_accessoryManager] = 0;
  v27 = &v23[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_response];
  *v27 = 0;
  *(v27 + 1) = 0;
  *(v27 + 1) = xmmword_252143B10;
  *(v27 + 32) = 0;
  v28 = OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_responseLock;
  *&v23[v28] = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v29 = OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_noiseMetaData;
  *&v23[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_noiseMetaData] = 0;
  v23[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_timerStarted] = 0;
  v23[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_timerDone] = 0;
  v30 = &v23[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_lastNoiseCheckStatusDescription];
  *v30 = 0;
  *(v30 + 1) = 0xE000000000000000;
  v31 = OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_requestLock;
  *&v23[v31] = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v23[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_processTerminating] = 0;
  v32 = OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_notificationManager;
  if (qword_27F4CD6F0 != -1)
  {
LABEL_214:
    swift_once();
  }

  v33 = qword_27F4D3420;
  *&v23[v32] = qword_27F4D3420;
  v34 = qword_27F4CD708;
  v35 = v33;
  if (v34 != -1)
  {
    swift_once();
  }

  v36 = sub_25214198C();
  v579 = __swift_project_value_buffer(v36, qword_27F4CDE68);
  v37 = sub_25214196C();
  v38 = sub_252141FBC();
  v39 = os_log_type_enabled(v37, v38);
  v568 = v21;
  if (v39)
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v567 = v26;
    v42 = v41;
    *&v605 = v41;
    *v40 = 136446210;
    v43 = sub_2521425DC();
    v45 = sub_2520A5448(v43, v44, &v605);

    *(v40 + 4) = v45;
    _os_log_impl(&dword_25207E000, v37, v38, "[%{public}s] Init noise analyzer", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v42);
    v46 = v42;
    v26 = v567;
    MEMORY[0x253099FD0](v46, -1, -1);
    MEMORY[0x253099FD0](v40, -1, -1);
  }

  v47 = v570;
  if (v570)
  {
    v48 = v570;
  }

  else
  {
    v567 = sub_25209D56C();
    v570 = v29;
    sub_252141A6C();
    *&v605 = MEMORY[0x277D84F90];
    sub_2520A2ED4(&qword_27F4CE0E0, MEMORY[0x277D85230]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CD970, &qword_252143B50);
    sub_2520A2F1C(&qword_27F4CE0F0, &qword_27F4CD970, &qword_252143B50);
    sub_25214218C();
    (*(v575 + 104))(v574, *MEMORY[0x277D85260], v576);
    v29 = v570;
    v48 = sub_25214202C();
  }

  v49 = *&v569[v23];
  *&v569[v23] = v48;
  v570 = v48;
  v569 = v47;

  if (qword_27F4CD7C0 != -1)
  {
    swift_once();
  }

  v50 = qword_27F4D3498;
  v51 = *&v23[v26];
  *&v23[v26] = qword_27F4D3498;
  v52 = v50;

  if (qword_27F4CD6F8 != -1)
  {
    swift_once();
  }

  v53 = *(v29 + v23);
  *(v29 + v23) = qword_27F4D3428;

  *&v23[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_requests] = MEMORY[0x277D84FA0];
  v54 = sub_252141D3C();
  *(v54 + 16) = 16;
  v55 = type metadata accessor for HTNoiseOutput();
  *(v54 + 32) = 0u;
  *(v54 + 48) = 0u;
  *(v54 + 64) = 0u;
  *(v54 + 80) = 0u;
  *(v54 + 96) = 0u;
  *(v54 + 112) = 0u;
  *(v54 + 128) = 0u;
  *(v54 + 144) = 0u;
  v56 = objc_allocWithZone(v55);
  *&v23[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_output] = sub_2520AFDFC(3, v54, 1);
  v57 = &v23[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_cachedTuning];
  v58 = v587;
  *v57 = v587;
  v59 = v58;
  *(v57 + 2) = &unk_28644C548;
  v60 = v586;
  *(v57 + 24) = v586;
  v61 = v60;
  v62 = v585;
  *(v57 + 40) = v585;
  v63 = v62;
  v64 = v583;
  *(v57 + 56) = v583;
  v65 = v64;
  *(v57 + 9) = 0x4037000000000000;
  *(v57 + 10) = 50;
  v66 = v584;
  *(v57 + 88) = v584;
  *(v57 + 13) = 50;
  v67 = v581;
  *(v57 + 7) = v581;
  *(v57 + 8) = v66;
  v68 = v66;
  *(v57 + 18) = 0x3FA999999999999ALL;
  *(v57 + 19) = 30;
  *(v57 + 20) = 0x400C000000000000;
  v69 = v582;
  *(v57 + 168) = v582;
  v70 = v69;
  v71 = v580;
  *(v57 + 184) = v580;
  *(v57 + 25) = 0x3FE0000000000000;
  *(v57 + 26) = 2;
  *(v57 + 27) = 0;
  *(v57 + 28) = 0;
  v740 = v59;
  v742 = v61;
  v743 = v63;
  v744 = v65;
  v741 = &unk_28644CC00;
  v745 = 0x4037000000000000;
  v747 = v68;
  v746 = 50;
  v748 = 50;
  v749 = v67;
  v750 = v68;
  v751 = 0x3FA999999999999ALL;
  v752 = 30;
  v754 = v70;
  v755 = v71;
  v753 = 0x400C000000000000;
  v756 = 0x3FE0000000000000;
  v759 = 0;
  v757 = 2;
  v758 = 0;
  v622 = v59;
  v624 = v61;
  v625 = v63;
  v626 = v65;
  v623 = &unk_28644CC00;
  v627 = 0x4037000000000000;
  v629 = v68;
  v628 = 50;
  v630 = 50;
  v631 = v67;
  v632 = v68;
  v633 = 0x3FA999999999999ALL;
  v634 = 30;
  v636 = v70;
  v637 = v71;
  v635 = 0x400C000000000000;
  v638 = 0x3FE0000000000000;
  v641 = 0;
  v639 = 2;
  v640 = 0;
  sub_2520A8DDC(&v740, &v605);
  sub_2520CB568(&v622);
  swift_beginAccess();
  v72 = *&v23[v22];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v605 = *&v23[v22];
  *&v23[v22] = 0x8000000000000000;
  sub_2520A89CC(&v740, 943273570, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
  *&v23[v22] = v605;
  v720 = v587;
  v722 = v586;
  v723 = v585;
  v724 = v583;
  v721 = &unk_28644CEA8;
  v725 = 0x4037000000000000;
  v727 = v584;
  v726 = 50;
  v728 = 50;
  v729 = v581;
  v730 = v584;
  v731 = 0x3FA999999999999ALL;
  v732 = 30;
  v734 = v582;
  v735 = v580;
  v733 = 0x400C000000000000;
  v736 = 0x3FE0000000000000;
  v739 = 0;
  v737 = 2;
  v738 = 0;
  v642 = v587;
  v644 = v586;
  v645 = v585;
  v646 = v583;
  v643 = &unk_28644CEA8;
  v647 = 0x4037000000000000;
  v649 = v584;
  v648 = 50;
  v650 = 50;
  v651 = v581;
  v652 = v584;
  v653 = 0x3FA999999999999ALL;
  v654 = 30;
  v656 = v582;
  v657 = v580;
  v655 = 0x400C000000000000;
  v658 = 0x3FE0000000000000;
  v661 = 0;
  v659 = 2;
  v660 = 0;
  sub_2520A8DDC(&v720, &v605);
  sub_2520CB568(&v642);
  v74 = *&v23[v22];
  v75 = swift_isUniquelyReferenced_nonNull_native();
  *&v605 = *&v23[v22];
  *&v23[v22] = 0x8000000000000000;
  sub_2520A89CC(&v720, 0x6338393662, 0xE500000000000000, v75);
  *&v23[v22] = v605;
  v700 = v587;
  v702 = v586;
  v703 = v585;
  v704 = v583;
  v701 = &unk_28644D150;
  v705 = 0x4037000000000000;
  v707 = v584;
  v706 = 50;
  v708 = 50;
  v709 = v581;
  v710 = v584;
  v711 = 0x3FA999999999999ALL;
  v712 = 30;
  v714 = v582;
  v715 = v580;
  v713 = 0x400C000000000000;
  v716 = 0x3FE0000000000000;
  v719 = 0;
  v717 = 2;
  v718 = 0;
  v662 = v587;
  v664 = v586;
  v665 = v585;
  v666 = v583;
  v663 = &unk_28644D150;
  v667 = 0x4037000000000000;
  v669 = v584;
  v668 = 50;
  v670 = 50;
  v671 = v581;
  v672 = v584;
  v673 = 0x3FA999999999999ALL;
  v674 = 30;
  v676 = v582;
  v677 = v580;
  v675 = 0x400C000000000000;
  v678 = 0x3FE0000000000000;
  v681 = 0;
  v679 = 2;
  v680 = 0;
  sub_2520A8DDC(&v700, &v605);
  sub_2520CB568(&v662);
  v76 = *&v23[v22];
  v77 = swift_isUniquelyReferenced_nonNull_native();
  *&v605 = *&v23[v22];
  *&v23[v22] = 0x8000000000000000;
  sub_2520A89CC(&v700, 943208290, 0xE400000000000000, v77);
  *&v23[v22] = v605;
  swift_endAccess();
  *&v587 = sub_2520F1EEC(*(v57 + 3), 0.0);
  *&v586 = sub_2520F1F9C(1, *(v57 + 10));
  *&v585 = sub_2520F1F9C(1, *(v57 + 10));
  *&v584 = sub_2520F1F9C(1, *(v57 + 13));
  *&v583 = sub_2520F1F9C(1, *(v57 + 13));
  v78 = sub_252141D3C();
  *(v78 + 16) = 20;
  type metadata accessor for HTNoiseBuffer();
  *(v78 + 32) = 0u;
  *(v78 + 48) = 0u;
  *(v78 + 64) = 0u;
  *(v78 + 80) = 0u;
  *(v78 + 96) = 0u;
  *(v78 + 112) = 0u;
  *(v78 + 128) = 0u;
  *(v78 + 144) = 0u;
  *(v78 + 160) = 0u;
  *(v78 + 176) = 0u;
  *&v582 = v78;
  v79 = swift_allocObject();
  sub_25209D56C();
  sub_252141A6C();
  *&v605 = MEMORY[0x277D84F90];
  sub_2520A2ED4(&qword_27F4CE0E0, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CD970, &qword_252143B50);
  sub_2520A2F1C(&qword_27F4CE0F0, &qword_27F4CD970, &qword_252143B50);
  sub_25214218C();
  (*(v575 + 104))(v574, *MEMORY[0x277D85260], v576);
  v79[2] = sub_25214202C();
  v80 = sub_252141D3C();
  *(v80 + 16) = 20;
  *(v80 + 32) = 0u;
  *(v80 + 48) = 0u;
  *(v80 + 64) = 0u;
  *(v80 + 80) = 0u;
  *(v80 + 96) = 0u;
  *(v80 + 112) = 0u;
  *(v80 + 128) = 0u;
  *(v80 + 144) = 0u;
  *(v80 + 160) = 0u;
  *(v80 + 176) = 0u;
  v79[3] = v80;
  v81 = sub_252141D3C();
  *(v81 + 16) = 50;
  *(v81 + 32) = 0u;
  *(v81 + 48) = 0u;
  *(v81 + 64) = 0u;
  *(v81 + 80) = 0u;
  *(v81 + 96) = 0u;
  *(v81 + 112) = 0u;
  *(v81 + 128) = 0u;
  *(v81 + 144) = 0u;
  *(v81 + 160) = 0u;
  *(v81 + 176) = 0u;
  *(v81 + 192) = 0u;
  *(v81 + 208) = 0u;
  *(v81 + 224) = 0u;
  *(v81 + 240) = 0u;
  *(v81 + 256) = 0u;
  *(v81 + 272) = 0u;
  *(v81 + 288) = 0u;
  *(v81 + 304) = 0u;
  *(v81 + 320) = 0u;
  *(v81 + 336) = 0u;
  *(v81 + 352) = 0u;
  *(v81 + 368) = 0u;
  *(v81 + 384) = 0u;
  *(v81 + 400) = 0u;
  *(v81 + 416) = 0u;
  v79[4] = v81;
  v79[5] = 0;
  v79[6] = 0x3FD999999999999ALL;
  v82 = sub_252141D3C();
  *(v82 + 16) = 50;
  *(v82 + 32) = 0u;
  *(v82 + 48) = 0u;
  *(v82 + 64) = 0u;
  *(v82 + 80) = 0u;
  *(v82 + 96) = 0u;
  *(v82 + 112) = 0u;
  *(v82 + 128) = 0u;
  *(v82 + 144) = 0u;
  *(v82 + 160) = 0u;
  *(v82 + 176) = 0u;
  *(v82 + 192) = 0u;
  *(v82 + 208) = 0u;
  *(v82 + 224) = 0u;
  *(v82 + 240) = 0u;
  *(v82 + 256) = 0u;
  *(v82 + 272) = 0u;
  *(v82 + 288) = 0u;
  *(v82 + 304) = 0u;
  *(v82 + 320) = 0u;
  *(v82 + 336) = 0u;
  *(v82 + 352) = 0u;
  *(v82 + 368) = 0u;
  *(v82 + 384) = 0u;
  *(v82 + 400) = 0u;
  *(v82 + 416) = 0u;
  v79[7] = v82;
  v79[8] = 0;
  v79[9] = 0x3FD999999999999ALL;
  v83 = sub_252141D3C();
  *(v83 + 16) = 50;
  *(v83 + 32) = 0u;
  *(v83 + 48) = 0u;
  *(v83 + 64) = 0u;
  *(v83 + 80) = 0u;
  *(v83 + 96) = 0u;
  *(v83 + 112) = 0u;
  *(v83 + 128) = 0u;
  *(v83 + 144) = 0u;
  *(v83 + 160) = 0u;
  *(v83 + 176) = 0u;
  *(v83 + 192) = 0u;
  *(v83 + 208) = 0u;
  *(v83 + 224) = 0u;
  *(v83 + 240) = 0u;
  *(v83 + 256) = 0u;
  *(v83 + 272) = 0u;
  *(v83 + 288) = 0u;
  *(v83 + 304) = 0u;
  *(v83 + 320) = 0u;
  *(v83 + 336) = 0u;
  *(v83 + 352) = 0u;
  *(v83 + 368) = 0u;
  *(v83 + 384) = 0u;
  *(v83 + 400) = 0u;
  *(v83 + 416) = 0u;
  v79[10] = v83;
  v79[11] = 0;
  v79[12] = 0x3FD3333333333333;
  v84 = sub_252141D3C();
  *(v84 + 16) = 50;
  *(v84 + 32) = 0u;
  *(v84 + 48) = 0u;
  *(v84 + 64) = 0u;
  *(v84 + 80) = 0u;
  *(v84 + 96) = 0u;
  *(v84 + 112) = 0u;
  *(v84 + 128) = 0u;
  *(v84 + 144) = 0u;
  *(v84 + 160) = 0u;
  *(v84 + 176) = 0u;
  *(v84 + 192) = 0u;
  *(v84 + 208) = 0u;
  *(v84 + 224) = 0u;
  *(v84 + 240) = 0u;
  *(v84 + 256) = 0u;
  *(v84 + 272) = 0u;
  *(v84 + 288) = 0u;
  *(v84 + 304) = 0u;
  *(v84 + 320) = 0u;
  *(v84 + 336) = 0u;
  *(v84 + 352) = 0u;
  *(v84 + 368) = 0u;
  *(v84 + 384) = 0u;
  *(v84 + 400) = 0u;
  *(v84 + 416) = 0u;
  v79[13] = v84;
  v79[14] = 0;
  v79[15] = 0x3FD3333333333333;
  v79[16] = 0;
  v85 = sub_252141D3C();
  *(v85 + 16) = 20;
  *(v85 + 32) = 0u;
  *(v85 + 48) = 0u;
  *(v85 + 64) = 0u;
  *(v85 + 80) = 0u;
  *(v85 + 96) = 0u;
  *(v85 + 112) = 0u;
  *(v85 + 128) = 0u;
  *(v85 + 144) = 0u;
  *(v85 + 160) = 0u;
  *(v85 + 176) = 0u;
  v79[17] = v85;
  v86 = v79[2];
  v87 = swift_allocObject();
  v88 = v587;
  *(v87 + 16) = v79;
  *(v87 + 24) = v88;
  v89 = swift_allocObject();
  *(v89 + 16) = sub_2520CC668;
  *(v89 + 24) = v87;
  *&v607 = sub_2520ADA58;
  *(&v607 + 1) = v89;
  *&v605 = MEMORY[0x277D85DD0];
  *(&v605 + 1) = 1107296256;
  *&v606 = sub_252083924;
  *(&v606 + 1) = &block_descriptor_263;
  v90 = _Block_copy(&v605);

  dispatch_sync(v86, v90);
  _Block_release(v90);
  LOBYTE(v90) = swift_isEscapingClosureAtFileLocation();

  if (v90)
  {
    __break(1u);
    goto LABEL_216;
  }

  v91 = v79[2];
  v92 = swift_allocObject();
  v93 = v586;
  *(v92 + 16) = v79;
  *(v92 + 24) = v93;
  v94 = swift_allocObject();
  *(v94 + 16) = sub_2520CC66C;
  *(v94 + 24) = v92;
  *&v607 = sub_2520ADA58;
  *(&v607 + 1) = v94;
  *&v605 = MEMORY[0x277D85DD0];
  *(&v605 + 1) = 1107296256;
  *&v606 = sub_252083924;
  *(&v606 + 1) = &block_descriptor_274;
  v95 = _Block_copy(&v605);

  dispatch_sync(v91, v95);
  _Block_release(v95);
  LOBYTE(v91) = swift_isEscapingClosureAtFileLocation();

  if (v91)
  {
LABEL_216:
    __break(1u);
    goto LABEL_217;
  }

  v96 = v79[2];
  v97 = swift_allocObject();
  *(v97 + 16) = v79;
  *(v97 + 24) = 0;
  v98 = swift_allocObject();
  *(v98 + 16) = sub_2520CC510;
  *(v98 + 24) = v97;
  *&v607 = sub_2520ADA58;
  *(&v607 + 1) = v98;
  *&v605 = MEMORY[0x277D85DD0];
  *(&v605 + 1) = 1107296256;
  *&v606 = sub_252083924;
  *(&v606 + 1) = &block_descriptor_285;
  v99 = _Block_copy(&v605);

  dispatch_sync(v96, v99);
  _Block_release(v99);
  LOBYTE(v96) = swift_isEscapingClosureAtFileLocation();

  if (v96)
  {
LABEL_217:
    __break(1u);
    goto LABEL_218;
  }

  v100 = v79[2];
  v101 = swift_allocObject();
  *(v101 + 16) = v79;
  *(v101 + 24) = 0x3FF0000000000000;
  v102 = swift_allocObject();
  *(v102 + 16) = sub_2520CC514;
  *(v102 + 24) = v101;
  *&v607 = sub_2520ADA58;
  *(&v607 + 1) = v102;
  *&v605 = MEMORY[0x277D85DD0];
  *(&v605 + 1) = 1107296256;
  *&v606 = sub_252083924;
  *(&v606 + 1) = &block_descriptor_296;
  v103 = _Block_copy(&v605);

  dispatch_sync(v100, v103);
  _Block_release(v103);
  LOBYTE(v100) = swift_isEscapingClosureAtFileLocation();

  if (v100)
  {
LABEL_218:
    __break(1u);
    goto LABEL_219;
  }

  v104 = v79[2];
  v105 = swift_allocObject();
  v106 = v585;
  *(v105 + 16) = v79;
  *(v105 + 24) = v106;
  v107 = swift_allocObject();
  *(v107 + 16) = sub_2520CC670;
  *(v107 + 24) = v105;
  *&v607 = sub_2520ADA58;
  *(&v607 + 1) = v107;
  *&v605 = MEMORY[0x277D85DD0];
  *(&v605 + 1) = 1107296256;
  *&v606 = sub_252083924;
  *(&v606 + 1) = &block_descriptor_307;
  v108 = _Block_copy(&v605);

  dispatch_sync(v104, v108);
  _Block_release(v108);
  LOBYTE(v104) = swift_isEscapingClosureAtFileLocation();

  if (v104)
  {
LABEL_219:
    __break(1u);
    goto LABEL_220;
  }

  v109 = v79[2];
  v110 = swift_allocObject();
  *(v110 + 16) = v79;
  *(v110 + 24) = 0;
  v111 = swift_allocObject();
  *(v111 + 16) = sub_2520CC518;
  *(v111 + 24) = v110;
  *&v607 = sub_2520ADA58;
  *(&v607 + 1) = v111;
  *&v605 = MEMORY[0x277D85DD0];
  *(&v605 + 1) = 1107296256;
  *&v606 = sub_252083924;
  *(&v606 + 1) = &block_descriptor_318;
  v112 = _Block_copy(&v605);

  dispatch_sync(v109, v112);
  _Block_release(v112);
  LOBYTE(v109) = swift_isEscapingClosureAtFileLocation();

  if (v109)
  {
LABEL_220:
    __break(1u);
    goto LABEL_221;
  }

  v113 = v79[2];
  v114 = swift_allocObject();
  *(v114 + 16) = v79;
  *(v114 + 24) = 0x3FF0000000000000;
  v115 = swift_allocObject();
  *(v115 + 16) = sub_2520AD9D4;
  *(v115 + 24) = v114;
  *&v607 = sub_2520ADA58;
  *(&v607 + 1) = v115;
  *&v605 = MEMORY[0x277D85DD0];
  *(&v605 + 1) = 1107296256;
  *&v606 = sub_252083924;
  *(&v606 + 1) = &block_descriptor_329;
  v116 = _Block_copy(&v605);

  dispatch_sync(v113, v116);
  _Block_release(v116);
  LOBYTE(v113) = swift_isEscapingClosureAtFileLocation();

  if (v113)
  {
LABEL_221:
    __break(1u);
    goto LABEL_222;
  }

  v117 = v79[2];
  v118 = swift_allocObject();
  v119 = v584;
  *(v118 + 16) = v79;
  *(v118 + 24) = v119;
  v120 = swift_allocObject();
  *(v120 + 16) = sub_2520CC674;
  *(v120 + 24) = v118;
  *&v607 = sub_2520ADA58;
  *(&v607 + 1) = v120;
  *&v605 = MEMORY[0x277D85DD0];
  *(&v605 + 1) = 1107296256;
  *&v606 = sub_252083924;
  *(&v606 + 1) = &block_descriptor_340;
  v121 = _Block_copy(&v605);

  dispatch_sync(v117, v121);
  _Block_release(v121);
  LOBYTE(v117) = swift_isEscapingClosureAtFileLocation();

  if (v117)
  {
LABEL_222:
    __break(1u);
    goto LABEL_223;
  }

  v122 = v79[2];
  v123 = swift_allocObject();
  *(v123 + 16) = v79;
  *(v123 + 24) = 0;
  v124 = swift_allocObject();
  *(v124 + 16) = sub_2520CC51C;
  *(v124 + 24) = v123;
  *&v607 = sub_2520ADA58;
  *(&v607 + 1) = v124;
  *&v605 = MEMORY[0x277D85DD0];
  *(&v605 + 1) = 1107296256;
  *&v606 = sub_252083924;
  *(&v606 + 1) = &block_descriptor_351;
  v125 = _Block_copy(&v605);

  dispatch_sync(v122, v125);
  _Block_release(v125);
  LOBYTE(v122) = swift_isEscapingClosureAtFileLocation();

  if (v122)
  {
LABEL_223:
    __break(1u);
    goto LABEL_224;
  }

  v126 = v79[2];
  v127 = swift_allocObject();
  *(v127 + 16) = v79;
  *(v127 + 24) = 0x3FF0000000000000;
  v128 = swift_allocObject();
  *(v128 + 16) = sub_2520CC520;
  *(v128 + 24) = v127;
  *&v607 = sub_2520ADA58;
  *(&v607 + 1) = v128;
  *&v605 = MEMORY[0x277D85DD0];
  *(&v605 + 1) = 1107296256;
  *&v606 = sub_252083924;
  *(&v606 + 1) = &block_descriptor_362;
  v129 = _Block_copy(&v605);

  dispatch_sync(v126, v129);
  _Block_release(v129);
  LOBYTE(v126) = swift_isEscapingClosureAtFileLocation();

  if (v126)
  {
LABEL_224:
    __break(1u);
    goto LABEL_225;
  }

  v130 = v79[2];
  v131 = swift_allocObject();
  v132 = v583;
  *(v131 + 16) = v79;
  *(v131 + 24) = v132;
  v133 = swift_allocObject();
  *(v133 + 16) = sub_2520CC678;
  *(v133 + 24) = v131;
  *&v607 = sub_2520ADA58;
  *(&v607 + 1) = v133;
  *&v605 = MEMORY[0x277D85DD0];
  *(&v605 + 1) = 1107296256;
  *&v606 = sub_252083924;
  *(&v606 + 1) = &block_descriptor_373;
  v134 = _Block_copy(&v605);

  dispatch_sync(v130, v134);
  _Block_release(v134);
  LOBYTE(v130) = swift_isEscapingClosureAtFileLocation();

  if (v130)
  {
LABEL_225:
    __break(1u);
    goto LABEL_226;
  }

  v135 = v79[2];
  v136 = swift_allocObject();
  *(v136 + 16) = v79;
  *(v136 + 24) = 0;
  v137 = swift_allocObject();
  *(v137 + 16) = sub_2520CC524;
  *(v137 + 24) = v136;
  *&v607 = sub_2520ADA58;
  *(&v607 + 1) = v137;
  *&v605 = MEMORY[0x277D85DD0];
  *(&v605 + 1) = 1107296256;
  *&v606 = sub_252083924;
  *(&v606 + 1) = &block_descriptor_384_0;
  v138 = _Block_copy(&v605);

  dispatch_sync(v135, v138);
  _Block_release(v138);
  LOBYTE(v135) = swift_isEscapingClosureAtFileLocation();

  if (v135)
  {
LABEL_226:
    __break(1u);
    goto LABEL_227;
  }

  v139 = v79[2];
  v140 = swift_allocObject();
  *(v140 + 16) = v79;
  *(v140 + 24) = 0x3FF0000000000000;
  v141 = swift_allocObject();
  *(v141 + 16) = sub_2520CC528;
  *(v141 + 24) = v140;
  *&v607 = sub_2520ADA58;
  *(&v607 + 1) = v141;
  *&v605 = MEMORY[0x277D85DD0];
  *(&v605 + 1) = 1107296256;
  *&v606 = sub_252083924;
  *(&v606 + 1) = &block_descriptor_395;
  v142 = _Block_copy(&v605);

  dispatch_sync(v139, v142);
  _Block_release(v142);
  LOBYTE(v139) = swift_isEscapingClosureAtFileLocation();

  if (v139)
  {
LABEL_227:
    __break(1u);
    goto LABEL_228;
  }

  v143 = v79[2];
  v144 = swift_allocObject();
  *(v144 + 16) = v79;
  *(v144 + 24) = 1;
  v145 = swift_allocObject();
  *(v145 + 16) = sub_2520CC52C;
  *(v145 + 24) = v144;
  *&v607 = sub_2520ADA58;
  *(&v607 + 1) = v145;
  *&v605 = MEMORY[0x277D85DD0];
  *(&v605 + 1) = 1107296256;
  *&v606 = sub_252083924;
  *(&v606 + 1) = &block_descriptor_406;
  v146 = _Block_copy(&v605);

  dispatch_sync(v143, v146);
  _Block_release(v146);
  LOBYTE(v143) = swift_isEscapingClosureAtFileLocation();

  if (v143)
  {
LABEL_228:
    __break(1u);
    goto LABEL_229;
  }

  v147 = v79[2];
  v148 = swift_allocObject();
  v149 = v582;
  *(v148 + 16) = v79;
  *(v148 + 24) = v149;
  v150 = swift_allocObject();
  *(v150 + 16) = sub_2520CC67C;
  *(v150 + 24) = v148;
  *&v607 = sub_2520ADA58;
  *(&v607 + 1) = v150;
  *&v605 = MEMORY[0x277D85DD0];
  *(&v605 + 1) = 1107296256;
  *&v606 = sub_252083924;
  *(&v606 + 1) = &block_descriptor_417;
  v151 = _Block_copy(&v605);

  dispatch_sync(v147, v151);
  _Block_release(v151);
  LOBYTE(v147) = swift_isEscapingClosureAtFileLocation();

  if (v147)
  {
LABEL_229:
    __break(1u);
    goto LABEL_230;
  }

  v152 = v577;
  *&v577[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_buffer] = v79;
  v621.receiver = v152;
  v621.super_class = ObjectType;
  v153 = objc_msgSendSuper2(&v621, sel_init);
  v154 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v155 = v153;
  *&v587 = "tat";
  v156 = sub_252141B6C();
  v157 = [v154 initWithSuiteName_];

  if (!v157)
  {
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
LABEL_237:
    __break(1u);
LABEL_238:
    __break(1u);
LABEL_239:
    __break(1u);
LABEL_240:
    __break(1u);
LABEL_241:
    __break(1u);
LABEL_242:
    __break(1u);
LABEL_243:
    __break(1u);
LABEL_244:
    __break(1u);
LABEL_245:
    __break(1u);
LABEL_246:
    __break(1u);
LABEL_247:
    __break(1u);
LABEL_248:
    __break(1u);
LABEL_249:
    __break(1u);
LABEL_250:
    __break(1u);
LABEL_251:
    __break(1u);
LABEL_252:
    __break(1u);
LABEL_253:
    __break(1u);
LABEL_254:
    __break(1u);
LABEL_255:
    __break(1u);
LABEL_256:
    __break(1u);
LABEL_257:
    __break(1u);
LABEL_258:
    __break(1u);
LABEL_259:
    __break(1u);
    goto LABEL_260;
  }

  v158 = sub_252141B6C();
  v159 = [v157 objectForKey_];

  if (v159)
  {
    sub_25214215C();
    swift_unknownObjectRelease();
    sub_2520A2584(&v605, &unk_27F4CE0B0, &unk_252144AF0);
    v160 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v161 = sub_252141B6C();
    v162 = [v160 initWithSuiteName_];

    if (!v162)
    {
LABEL_260:
      __break(1u);
      goto LABEL_261;
    }

    v163 = sub_252141B6C();
    [v162 doubleForKey_];
    v165 = v164;

    *&v155[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_cachedTuning] = v165;
  }

  else
  {
    v605 = 0u;
    v606 = 0u;
    sub_2520A2584(&v605, &unk_27F4CE0B0, &unk_252144AF0);
  }

  v166 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v167 = sub_252141B6C();
  v168 = [v166 initWithSuiteName_];

  if (!v168)
  {
    goto LABEL_231;
  }

  v169 = sub_252141B6C();
  v170 = [v168 objectForKey_];

  if (v170)
  {
    sub_25214215C();
    swift_unknownObjectRelease();
    sub_2520A2584(&v605, &unk_27F4CE0B0, &unk_252144AF0);
    v171 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v172 = sub_252141B6C();
    v173 = [v171 initWithSuiteName_];

    if (!v173)
    {
LABEL_261:
      __break(1u);
      goto LABEL_262;
    }

    v174 = sub_252141B6C();
    [v173 doubleForKey_];
    v176 = v175;

    *&v155[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_cachedTuning + 8] = v176;
  }

  else
  {
    v605 = 0u;
    v606 = 0u;
    sub_2520A2584(&v605, &unk_27F4CE0B0, &unk_252144AF0);
  }

  v177 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v178 = sub_252141B6C();
  v179 = [v177 initWithSuiteName_];

  if (!v179)
  {
    goto LABEL_232;
  }

  v180 = sub_252141B6C();
  v181 = [v179 objectForKey_];

  if (v181)
  {
    sub_25214215C();
    swift_unknownObjectRelease();
    sub_2520A2584(&v605, &unk_27F4CE0B0, &unk_252144AF0);
    v182 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v183 = sub_252141B6C();
    v184 = [v182 initWithSuiteName_];

    if (!v184)
    {
LABEL_262:
      __break(1u);
      goto LABEL_263;
    }

    v185 = sub_252141B6C();
    v186 = [v184 integerForKey_];

    *&v155[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_cachedTuning + 24] = v186;
  }

  else
  {
    v605 = 0u;
    v606 = 0u;
    sub_2520A2584(&v605, &unk_27F4CE0B0, &unk_252144AF0);
  }

  v187 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v188 = sub_252141B6C();
  v189 = [v187 initWithSuiteName_];

  if (!v189)
  {
    goto LABEL_233;
  }

  v190 = sub_252141B6C();
  v191 = [v189 objectForKey_];

  if (v191)
  {
    sub_25214215C();
    swift_unknownObjectRelease();
    sub_2520A2584(&v605, &unk_27F4CE0B0, &unk_252144AF0);
    v192 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v193 = sub_252141B6C();
    v194 = [v192 initWithSuiteName_];

    if (!v194)
    {
LABEL_263:
      __break(1u);
      goto LABEL_264;
    }

    v195 = sub_252141B6C();
    v196 = [v194 integerForKey_];

    *&v155[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_cachedTuning + 32] = v196;
  }

  else
  {
    v605 = 0u;
    v606 = 0u;
    sub_2520A2584(&v605, &unk_27F4CE0B0, &unk_252144AF0);
  }

  v197 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v198 = sub_252141B6C();
  v199 = [v197 initWithSuiteName_];

  if (!v199)
  {
    goto LABEL_234;
  }

  v200 = sub_252141B6C();
  v201 = [v199 objectForKey_];

  if (v201)
  {
    sub_25214215C();
    swift_unknownObjectRelease();
    sub_2520A2584(&v605, &unk_27F4CE0B0, &unk_252144AF0);
    v202 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v203 = sub_252141B6C();
    v204 = [v202 initWithSuiteName_];

    if (!v204)
    {
LABEL_264:
      __break(1u);
      goto LABEL_265;
    }

    v205 = sub_252141B6C();
    [v204 doubleForKey_];
    v207 = v206;

    *&v155[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_cachedTuning + 40] = v207;
  }

  else
  {
    v605 = 0u;
    v606 = 0u;
    sub_2520A2584(&v605, &unk_27F4CE0B0, &unk_252144AF0);
  }

  v208 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v209 = sub_252141B6C();
  v210 = [v208 initWithSuiteName_];

  if (!v210)
  {
    goto LABEL_235;
  }

  v211 = sub_252141B6C();
  v212 = [v210 objectForKey_];

  if (v212)
  {
    sub_25214215C();
    swift_unknownObjectRelease();
    sub_2520A2584(&v605, &unk_27F4CE0B0, &unk_252144AF0);
    v213 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v214 = sub_252141B6C();
    v215 = [v213 initWithSuiteName_];

    if (!v215)
    {
LABEL_265:
      __break(1u);
      goto LABEL_266;
    }

    v216 = sub_252141B6C();
    [v215 doubleForKey_];
    v218 = v217;

    *&v155[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_cachedTuning + 48] = v218;
  }

  else
  {
    v605 = 0u;
    v606 = 0u;
    sub_2520A2584(&v605, &unk_27F4CE0B0, &unk_252144AF0);
  }

  v219 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v220 = sub_252141B6C();
  v221 = [v219 initWithSuiteName_];

  if (!v221)
  {
    goto LABEL_236;
  }

  v222 = sub_252141B6C();
  v223 = [v221 objectForKey_];

  if (v223)
  {
    sub_25214215C();
    swift_unknownObjectRelease();
    sub_2520A2584(&v605, &unk_27F4CE0B0, &unk_252144AF0);
    v224 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v225 = sub_252141B6C();
    v226 = [v224 initWithSuiteName_];

    if (!v226)
    {
LABEL_266:
      __break(1u);
      goto LABEL_267;
    }

    v227 = sub_252141B6C();
    [v226 doubleForKey_];
    v229 = v228;

    *&v155[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_cachedTuning + 56] = v229;
  }

  else
  {
    v605 = 0u;
    v606 = 0u;
    sub_2520A2584(&v605, &unk_27F4CE0B0, &unk_252144AF0);
  }

  v230 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v231 = sub_252141B6C();
  v232 = [v230 initWithSuiteName_];

  if (!v232)
  {
    goto LABEL_237;
  }

  v233 = sub_252141B6C();
  v234 = [v232 objectForKey_];

  if (v234)
  {
    sub_25214215C();
    swift_unknownObjectRelease();
    sub_2520A2584(&v605, &unk_27F4CE0B0, &unk_252144AF0);
    v235 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v236 = sub_252141B6C();
    v237 = [v235 initWithSuiteName_];

    if (!v237)
    {
LABEL_267:
      __break(1u);
      goto LABEL_268;
    }

    v238 = sub_252141B6C();
    [v237 doubleForKey_];
    v240 = v239;

    *&v155[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_cachedTuning + 64] = v240;
  }

  else
  {
    v605 = 0u;
    v606 = 0u;
    sub_2520A2584(&v605, &unk_27F4CE0B0, &unk_252144AF0);
  }

  v241 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v242 = sub_252141B6C();
  v243 = [v241 initWithSuiteName_];

  if (!v243)
  {
    goto LABEL_238;
  }

  v244 = sub_252141B6C();
  v245 = [v243 objectForKey_];

  if (v245)
  {
    sub_25214215C();
    swift_unknownObjectRelease();
    sub_2520A2584(&v605, &unk_27F4CE0B0, &unk_252144AF0);
    v246 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v247 = sub_252141B6C();
    v248 = [v246 initWithSuiteName_];

    if (!v248)
    {
LABEL_268:
      __break(1u);
      goto LABEL_269;
    }

    v249 = sub_252141B6C();
    [v248 doubleForKey_];
    v251 = v250;

    *&v155[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_cachedTuning + 72] = v251;
  }

  else
  {
    v605 = 0u;
    v606 = 0u;
    sub_2520A2584(&v605, &unk_27F4CE0B0, &unk_252144AF0);
  }

  v252 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v253 = sub_252141B6C();
  v254 = [v252 initWithSuiteName_];

  if (!v254)
  {
    goto LABEL_239;
  }

  v255 = sub_252141B6C();
  v256 = [v254 objectForKey_];

  if (v256)
  {
    sub_25214215C();
    swift_unknownObjectRelease();
    sub_2520A2584(&v605, &unk_27F4CE0B0, &unk_252144AF0);
    v257 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v258 = sub_252141B6C();
    v259 = [v257 initWithSuiteName_];

    if (!v259)
    {
LABEL_269:
      __break(1u);
      goto LABEL_270;
    }

    v260 = sub_252141B6C();
    v261 = [v259 integerForKey_];

    *&v155[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_cachedTuning + 80] = v261;
  }

  else
  {
    v605 = 0u;
    v606 = 0u;
    sub_2520A2584(&v605, &unk_27F4CE0B0, &unk_252144AF0);
  }

  v262 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v263 = sub_252141B6C();
  v264 = [v262 initWithSuiteName_];

  if (!v264)
  {
    goto LABEL_240;
  }

  v265 = sub_252141B6C();
  v266 = [v264 objectForKey_];

  if (v266)
  {
    sub_25214215C();
    swift_unknownObjectRelease();
    sub_2520A2584(&v605, &unk_27F4CE0B0, &unk_252144AF0);
    v267 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v268 = sub_252141B6C();
    v269 = [v267 initWithSuiteName_];

    if (!v269)
    {
LABEL_270:
      __break(1u);
      goto LABEL_271;
    }

    v270 = sub_252141B6C();
    [v269 doubleForKey_];
    v272 = v271;

    *&v155[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_cachedTuning + 88] = v272;
  }

  else
  {
    v605 = 0u;
    v606 = 0u;
    sub_2520A2584(&v605, &unk_27F4CE0B0, &unk_252144AF0);
  }

  v273 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v274 = sub_252141B6C();
  v275 = [v273 initWithSuiteName_];

  if (!v275)
  {
    goto LABEL_241;
  }

  v276 = sub_252141B6C();
  v277 = [v275 objectForKey_];

  if (v277)
  {
    sub_25214215C();
    swift_unknownObjectRelease();
    sub_2520A2584(&v605, &unk_27F4CE0B0, &unk_252144AF0);
    v278 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v279 = sub_252141B6C();
    v280 = [v278 initWithSuiteName_];

    if (!v280)
    {
LABEL_271:
      __break(1u);
      goto LABEL_272;
    }

    v281 = sub_252141B6C();
    [v280 doubleForKey_];
    v283 = v282;

    *&v155[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_cachedTuning + 96] = v283;
  }

  else
  {
    v605 = 0u;
    v606 = 0u;
    sub_2520A2584(&v605, &unk_27F4CE0B0, &unk_252144AF0);
  }

  v284 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v285 = sub_252141B6C();
  v286 = [v284 initWithSuiteName_];

  if (!v286)
  {
    goto LABEL_242;
  }

  v287 = sub_252141B6C();
  v288 = [v286 objectForKey_];

  if (v288)
  {
    sub_25214215C();
    swift_unknownObjectRelease();
    sub_2520A2584(&v605, &unk_27F4CE0B0, &unk_252144AF0);
    v289 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v290 = sub_252141B6C();
    v291 = [v289 initWithSuiteName_];

    if (!v291)
    {
LABEL_272:
      __break(1u);
      goto LABEL_273;
    }

    v292 = sub_252141B6C();
    v293 = [v291 integerForKey_];

    *&v155[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_cachedTuning + 104] = v293;
  }

  else
  {
    v605 = 0u;
    v606 = 0u;
    sub_2520A2584(&v605, &unk_27F4CE0B0, &unk_252144AF0);
  }

  v294 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v295 = sub_252141B6C();
  v296 = [v294 initWithSuiteName_];

  if (!v296)
  {
    goto LABEL_243;
  }

  v297 = sub_252141B6C();
  v298 = [v296 objectForKey_];

  if (v298)
  {
    sub_25214215C();
    swift_unknownObjectRelease();
    sub_2520A2584(&v605, &unk_27F4CE0B0, &unk_252144AF0);
    v299 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v300 = sub_252141B6C();
    v301 = [v299 initWithSuiteName_];

    if (!v301)
    {
LABEL_273:
      __break(1u);
      goto LABEL_274;
    }

    v302 = sub_252141B6C();
    [v301 doubleForKey_];
    v304 = v303;

    *&v155[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_cachedTuning + 112] = v304;
  }

  else
  {
    v605 = 0u;
    v606 = 0u;
    sub_2520A2584(&v605, &unk_27F4CE0B0, &unk_252144AF0);
  }

  v305 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v306 = sub_252141B6C();
  v307 = [v305 initWithSuiteName_];

  if (!v307)
  {
    goto LABEL_244;
  }

  v308 = sub_252141B6C();
  v309 = [v307 objectForKey_];

  if (v309)
  {
    sub_25214215C();
    swift_unknownObjectRelease();
    sub_2520A2584(&v605, &unk_27F4CE0B0, &unk_252144AF0);
    v310 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v311 = sub_252141B6C();
    v312 = [v310 initWithSuiteName_];

    if (!v312)
    {
LABEL_274:
      __break(1u);
      goto LABEL_275;
    }

    v313 = sub_252141B6C();
    [v312 doubleForKey_];
    v315 = v314;

    *&v155[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_cachedTuning + 120] = v315;
  }

  else
  {
    v605 = 0u;
    v606 = 0u;
    sub_2520A2584(&v605, &unk_27F4CE0B0, &unk_252144AF0);
  }

  v316 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v317 = sub_252141B6C();
  v318 = [v316 initWithSuiteName_];

  if (!v318)
  {
    goto LABEL_245;
  }

  v319 = sub_252141B6C();
  v320 = [v318 objectForKey_];

  if (v320)
  {
    sub_25214215C();
    swift_unknownObjectRelease();
    sub_2520A2584(&v605, &unk_27F4CE0B0, &unk_252144AF0);
    v321 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v322 = sub_252141B6C();
    v323 = [v321 initWithSuiteName_];

    if (!v323)
    {
LABEL_275:
      __break(1u);
      goto LABEL_276;
    }

    v324 = sub_252141B6C();
    [v323 doubleForKey_];
    v326 = v325;

    *&v155[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_cachedTuning + 128] = v326;
  }

  else
  {
    v605 = 0u;
    v606 = 0u;
    sub_2520A2584(&v605, &unk_27F4CE0B0, &unk_252144AF0);
  }

  v327 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v328 = sub_252141B6C();
  v329 = [v327 initWithSuiteName_];

  if (!v329)
  {
    goto LABEL_246;
  }

  v330 = sub_252141B6C();
  v331 = [v329 objectForKey_];

  if (v331)
  {
    sub_25214215C();
    swift_unknownObjectRelease();
    sub_2520A2584(&v605, &unk_27F4CE0B0, &unk_252144AF0);
    v332 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v333 = sub_252141B6C();
    v334 = [v332 initWithSuiteName_];

    if (!v334)
    {
LABEL_276:
      __break(1u);
      goto LABEL_277;
    }

    v335 = sub_252141B6C();
    [v334 doubleForKey_];
    v337 = v336;

    *&v155[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_cachedTuning + 136] = v337;
  }

  else
  {
    v605 = 0u;
    v606 = 0u;
    sub_2520A2584(&v605, &unk_27F4CE0B0, &unk_252144AF0);
  }

  v338 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v339 = sub_252141B6C();
  v340 = [v338 initWithSuiteName_];

  if (!v340)
  {
    goto LABEL_247;
  }

  v341 = sub_252141B6C();
  v342 = [v340 objectForKey_];

  if (v342)
  {
    sub_25214215C();
    swift_unknownObjectRelease();
    sub_2520A2584(&v605, &unk_27F4CE0B0, &unk_252144AF0);
    v343 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v344 = sub_252141B6C();
    v345 = [v343 initWithSuiteName_];

    if (!v345)
    {
LABEL_277:
      __break(1u);
      goto LABEL_278;
    }

    v346 = sub_252141B6C();
    [v345 doubleForKey_];
    v348 = v347;

    *&v155[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_cachedTuning + 144] = v348;
  }

  else
  {
    v605 = 0u;
    v606 = 0u;
    sub_2520A2584(&v605, &unk_27F4CE0B0, &unk_252144AF0);
  }

  v349 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v350 = sub_252141B6C();
  v351 = [v349 initWithSuiteName_];

  if (!v351)
  {
    goto LABEL_248;
  }

  v352 = sub_252141B6C();
  v353 = [v351 objectForKey_];

  if (v353)
  {
    sub_25214215C();
    swift_unknownObjectRelease();
    sub_2520A2584(&v605, &unk_27F4CE0B0, &unk_252144AF0);
    v354 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v355 = sub_252141B6C();
    v356 = [v354 initWithSuiteName_];

    if (!v356)
    {
LABEL_278:
      __break(1u);
      goto LABEL_279;
    }

    v357 = sub_252141B6C();
    v358 = [v356 integerForKey_];

    *&v155[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_cachedTuning + 152] = v358;
  }

  else
  {
    v605 = 0u;
    v606 = 0u;
    sub_2520A2584(&v605, &unk_27F4CE0B0, &unk_252144AF0);
  }

  v359 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v360 = sub_252141B6C();
  v361 = [v359 initWithSuiteName_];

  if (!v361)
  {
    goto LABEL_249;
  }

  v362 = sub_252141B6C();
  v363 = [v361 objectForKey_];

  if (v363)
  {
    sub_25214215C();
    swift_unknownObjectRelease();
    sub_2520A2584(&v605, &unk_27F4CE0B0, &unk_252144AF0);
    v364 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v365 = sub_252141B6C();
    v366 = [v364 initWithSuiteName_];

    if (!v366)
    {
LABEL_279:
      __break(1u);
      goto LABEL_280;
    }

    v367 = sub_252141B6C();
    [v366 doubleForKey_];
    v369 = v368;

    *&v155[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_cachedTuning + 160] = v369;
  }

  else
  {
    v605 = 0u;
    v606 = 0u;
    sub_2520A2584(&v605, &unk_27F4CE0B0, &unk_252144AF0);
  }

  v370 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v371 = sub_252141B6C();
  v372 = [v370 initWithSuiteName_];

  if (!v372)
  {
    goto LABEL_250;
  }

  v373 = sub_252141B6C();
  v374 = [v372 objectForKey_];

  if (v374)
  {
    sub_25214215C();
    swift_unknownObjectRelease();
    sub_2520A2584(&v605, &unk_27F4CE0B0, &unk_252144AF0);
    v375 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v376 = sub_252141B6C();
    v377 = [v375 initWithSuiteName_];

    if (!v377)
    {
LABEL_280:
      __break(1u);
      goto LABEL_281;
    }

    v378 = sub_252141B6C();
    v379 = [v377 integerForKey_];

    *&v155[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_cachedTuning + 168] = v379;
  }

  else
  {
    v605 = 0u;
    v606 = 0u;
    sub_2520A2584(&v605, &unk_27F4CE0B0, &unk_252144AF0);
  }

  v380 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v381 = sub_252141B6C();
  v382 = [v380 initWithSuiteName_];

  if (!v382)
  {
    goto LABEL_251;
  }

  v383 = sub_252141B6C();
  v384 = [v382 objectForKey_];

  if (v384)
  {
    sub_25214215C();
    swift_unknownObjectRelease();
    sub_2520A2584(&v605, &unk_27F4CE0B0, &unk_252144AF0);
    v385 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v386 = sub_252141B6C();
    v387 = [v385 initWithSuiteName_];

    if (!v387)
    {
LABEL_281:
      __break(1u);
      goto LABEL_282;
    }

    v388 = sub_252141B6C();
    v389 = [v387 integerForKey_];

    *&v155[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_cachedTuning + 176] = v389;
  }

  else
  {
    v605 = 0u;
    v606 = 0u;
    sub_2520A2584(&v605, &unk_27F4CE0B0, &unk_252144AF0);
  }

  v390 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v391 = sub_252141B6C();
  v392 = [v390 initWithSuiteName_];

  if (!v392)
  {
    goto LABEL_252;
  }

  v393 = sub_252141B6C();
  v394 = [v392 objectForKey_];

  if (v394)
  {
    sub_25214215C();
    swift_unknownObjectRelease();
    sub_2520A2584(&v605, &unk_27F4CE0B0, &unk_252144AF0);
    v395 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v396 = sub_252141B6C();
    v397 = [v395 initWithSuiteName_];

    if (!v397)
    {
LABEL_282:
      __break(1u);
      goto LABEL_283;
    }

    v398 = sub_252141B6C();
    [v397 doubleForKey_];
    v400 = v399;

    *&v155[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_cachedTuning + 184] = v400;
  }

  else
  {
    v605 = 0u;
    v606 = 0u;
    sub_2520A2584(&v605, &unk_27F4CE0B0, &unk_252144AF0);
  }

  v401 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v402 = sub_252141B6C();
  v403 = [v401 initWithSuiteName_];

  if (!v403)
  {
    goto LABEL_253;
  }

  v404 = sub_252141B6C();
  v405 = [v403 objectForKey_];

  if (v405)
  {
    sub_25214215C();
    swift_unknownObjectRelease();
    sub_2520A2584(&v605, &unk_27F4CE0B0, &unk_252144AF0);
    v406 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v407 = sub_252141B6C();
    v408 = [v406 initWithSuiteName_];

    if (!v408)
    {
LABEL_283:
      __break(1u);
      goto LABEL_284;
    }

    v409 = sub_252141B6C();
    [v408 doubleForKey_];
    v411 = v410;

    *&v155[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_cachedTuning + 192] = v411;
  }

  else
  {
    v605 = 0u;
    v606 = 0u;
    sub_2520A2584(&v605, &unk_27F4CE0B0, &unk_252144AF0);
  }

  v412 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v413 = sub_252141B6C();
  v414 = [v412 initWithSuiteName_];

  if (!v414)
  {
    goto LABEL_254;
  }

  v415 = sub_252141B6C();
  v416 = [v414 objectForKey_];

  if (v416)
  {
    sub_25214215C();
    swift_unknownObjectRelease();
    sub_2520A2584(&v605, &unk_27F4CE0B0, &unk_252144AF0);
    v417 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v418 = sub_252141B6C();
    v419 = [v417 initWithSuiteName_];

    if (!v419)
    {
LABEL_284:
      __break(1u);
      goto LABEL_285;
    }

    v420 = sub_252141B6C();
    [v419 doubleForKey_];
    v422 = v421;

    *&v155[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_cachedTuning + 200] = v422;
  }

  else
  {
    v605 = 0u;
    v606 = 0u;
    sub_2520A2584(&v605, &unk_27F4CE0B0, &unk_252144AF0);
  }

  v423 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v424 = sub_252141B6C();
  v425 = [v423 initWithSuiteName_];

  if (!v425)
  {
    goto LABEL_255;
  }

  v426 = sub_252141B6C();
  v427 = [v425 objectForKey_];

  if (v427)
  {
    sub_25214215C();
    swift_unknownObjectRelease();
    sub_2520A2584(&v605, &unk_27F4CE0B0, &unk_252144AF0);
    v428 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v429 = sub_252141B6C();
    v430 = [v428 initWithSuiteName_];

    if (!v430)
    {
LABEL_285:
      __break(1u);
      goto LABEL_286;
    }

    v431 = sub_252141B6C();
    v432 = [v430 integerForKey_];

    *&v155[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_cachedTuning + 208] = v432;
  }

  else
  {
    v605 = 0u;
    v606 = 0u;
    sub_2520A2584(&v605, &unk_27F4CE0B0, &unk_252144AF0);
  }

  v433 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v434 = sub_252141B6C();
  v435 = [v433 initWithSuiteName_];

  if (!v435)
  {
    goto LABEL_256;
  }

  v23 = "NTdBAInstSnrThPct";
  v436 = sub_252141B6C();
  v437 = [v435 objectForKey_];

  if (v437)
  {
    sub_25214215C();
    swift_unknownObjectRelease();
    sub_2520A2584(&v605, &unk_27F4CE0B0, &unk_252144AF0);
    v438 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v439 = sub_252141B6C();
    v440 = [v438 initWithSuiteName_];

    if (!v440)
    {
LABEL_286:
      __break(1u);
      goto LABEL_287;
    }

    v441 = sub_252141B6C();
    [v440 doubleForKey_];
    v443 = v442;

    *&v155[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_cachedTuning + 216] = v443;
  }

  else
  {
    v605 = 0u;
    v606 = 0u;
    sub_2520A2584(&v605, &unk_27F4CE0B0, &unk_252144AF0);
  }

  v444 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v445 = sub_252141B6C();
  v446 = [v444 initWithSuiteName_];

  if (!v446)
  {
    goto LABEL_257;
  }

  v447 = sub_252141B6C();
  v448 = [v446 objectForKey_];

  if (v448)
  {
    sub_25214215C();
    swift_unknownObjectRelease();
    sub_2520A2584(&v605, &unk_27F4CE0B0, &unk_252144AF0);
    v449 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v450 = sub_252141B6C();
    v451 = [v449 initWithSuiteName_];

    if (!v451)
    {
LABEL_287:
      __break(1u);
      result = swift_unexpectedError();
      __break(1u);
      return result;
    }

    v452 = sub_252141B6C();
    [v451 doubleForKey_];
    v454 = v453;

    *&v155[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_cachedTuning + 224] = v454;
  }

  else
  {
    v605 = 0u;
    v606 = 0u;
    sub_2520A2584(&v605, &unk_27F4CE0B0, &unk_252144AF0);
  }

  v455 = v155;
  v456 = sub_25214196C();
  v26 = sub_252141FBC();

  if (os_log_type_enabled(v456, v26))
  {
    v457 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *&v683 = v23;
    *v457 = 136446466;
    v458 = sub_2521425DC();
    v460 = sub_2520A5448(v458, v459, &v683);

    *(v457 + 4) = v460;
    *(v457 + 12) = 2080;
    v462 = *&v455[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_cachedTuning + 16];
    v461 = *&v455[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_cachedTuning + 32];
    v698[0] = *&v455[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_cachedTuning];
    v698[1] = v462;
    v698[2] = v461;
    v463 = *&v455[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_cachedTuning + 80];
    v465 = *&v455[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_cachedTuning + 48];
    v464 = *&v455[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_cachedTuning + 64];
    v698[6] = *&v455[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_cachedTuning + 96];
    v698[5] = v463;
    v698[3] = v465;
    v698[4] = v464;
    v466 = *&v455[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_cachedTuning + 144];
    v468 = *&v455[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_cachedTuning + 112];
    v467 = *&v455[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_cachedTuning + 128];
    v698[10] = *&v455[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_cachedTuning + 160];
    v698[9] = v466;
    v698[7] = v468;
    v698[8] = v467;
    v470 = *&v455[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_cachedTuning + 192];
    v469 = *&v455[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_cachedTuning + 208];
    v471 = *&v455[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_cachedTuning + 176];
    v699 = *&v455[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_cachedTuning + 224];
    v698[13] = v469;
    v698[11] = v471;
    v698[12] = v470;
    sub_2520A8DDC(v698, &v605);
    v472 = sub_2520B052C();
    v474 = v473;
    sub_2520CB568(v698);
    v475 = sub_2520A5448(v472, v474, &v683);

    *(v457 + 14) = v475;
    _os_log_impl(&dword_25207E000, v456, v26, "[%{public}s] [Noise Tuning] Cached Tuning %s", v457, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253099FD0](v23, -1, -1);
    MEMORY[0x253099FD0](v457, -1, -1);
  }

  v476 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v477 = sub_252141B6C();
  v478 = [v476 initWithSuiteName_];

  if (!v478)
  {
    goto LABEL_258;
  }

  v479 = sub_252141B6C();
  v480 = [v478 objectForKey_];

  if (v480)
  {
    sub_25214215C();
    swift_unknownObjectRelease();
  }

  else
  {
    v684 = 0u;
    v683 = 0u;
  }

  v605 = v683;
  v606 = v684;
  if (*(&v684 + 1))
  {
    v481 = swift_dynamicCast();
    if (v481)
    {
      v482 = *(&v590 + 1);
      v26 = v590;
      v605 = v590;
      MEMORY[0x28223BE20](v481);
      *(&v566 - 2) = &v605;
      v483 = v568;
      v484 = sub_2520CAA90(sub_2520CC0E0, (&v566 - 4), &unk_28644C7F0);
      v568 = v483;
      if (v484)
      {
        sub_2520B6E28(v26);

        v485 = sub_25214196C();
        v486 = sub_252141FAC();

        if (os_log_type_enabled(v485, v486))
        {
          v487 = swift_slowAlloc();
          v23 = swift_slowAlloc();
          *&v605 = v23;
          *v487 = 136446466;
          v488 = sub_2521425DC();
          v490 = sub_2520A5448(v488, v489, &v605);

          *(v487 + 4) = v490;
          *(v487 + 12) = 2080;
          v26 = sub_2520A5448(v26, v482, &v605);

          *(v487 + 14) = v26;
          v491 = "[%{public}s] [Noise Tuning] Applying tunings to given user default product ID %s.";
LABEL_188:
          _os_log_impl(&dword_25207E000, v485, v486, v491, v487, 0x16u);
          swift_arrayDestroy();
          v496 = v23;
          goto LABEL_189;
        }
      }

      else
      {

        v485 = sub_25214196C();
        v486 = sub_252141FAC();

        if (os_log_type_enabled(v485, v486))
        {
          v487 = swift_slowAlloc();
          v23 = swift_slowAlloc();
          *&v605 = v23;
          *v487 = 136446466;
          v497 = sub_2521425DC();
          v499 = sub_2520A5448(v497, v498, &v605);

          *(v487 + 4) = v499;
          *(v487 + 12) = 2080;
          v26 = sub_2520A5448(v26, v482, &v605);

          *(v487 + 14) = v26;
          v491 = "[%{public}s] [Noise Tuning] Invalid product ID: %s, cannot apply user default tunnings.";
          goto LABEL_188;
        }
      }

      goto LABEL_191;
    }
  }

  else
  {
    sub_2520A2584(&v605, &unk_27F4CE0B0, &unk_252144AF0);
  }

  sub_2520B6E28(0x6E776F6E6B6E75);
  v485 = sub_25214196C();
  v492 = sub_252141FBC();
  if (os_log_type_enabled(v485, v492))
  {
    v487 = swift_slowAlloc();
    v493 = swift_slowAlloc();
    *&v605 = v493;
    *v487 = 136446210;
    v494 = sub_2521425DC();
    v26 = v495;
    v23 = sub_2520A5448(v494, v495, &v605);

    *(v487 + 4) = v23;
    _os_log_impl(&dword_25207E000, v485, v492, "[%{public}s] [Noise Tuning] User did not specify any productID, saving user default tunings to target profile determined by the next connected device.", v487, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v493);
    v496 = v493;
LABEL_189:
    MEMORY[0x253099FD0](v496, -1, -1);
    MEMORY[0x253099FD0](v487, -1, -1);
  }

LABEL_191:

  v500 = OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_tuningDict;
  swift_beginAccess();
  *&v583 = v455;
  v32 = *&v455[v500];
  v501 = 1 << *(v32 + 32);
  v502 = -1;
  if (v501 < 64)
  {
    v502 = ~(-1 << v501);
  }

  v21 = v502 & *(v32 + 64);
  v22 = (v501 + 63) >> 6;
  v29 = &v605;
  swift_bridgeObjectRetain_n();
  v503 = 0;
  if (v21)
  {
    while (1)
    {
      v504 = v503;
LABEL_199:
      v505 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      v506 = v505 | (v504 << 6);
      v507 = (*(v32 + 48) + 16 * v506);
      v26 = *v507;
      v23 = v507[1];
      v508 = *(v32 + 56) + 232 * v506;
      v510 = *(v508 + 16);
      v509 = *(v508 + 32);
      v683 = *v508;
      v684 = v510;
      v685 = v509;
      v511 = *(v508 + 80);
      v513 = *(v508 + 48);
      v512 = *(v508 + 64);
      v689 = *(v508 + 96);
      v688 = v511;
      v686 = v513;
      v687 = v512;
      v514 = *(v508 + 144);
      v516 = *(v508 + 112);
      v515 = *(v508 + 128);
      v693 = *(v508 + 160);
      v692 = v514;
      v690 = v516;
      v691 = v515;
      v518 = *(v508 + 192);
      v517 = *(v508 + 208);
      v519 = *(v508 + 176);
      v697 = *(v508 + 224);
      v696 = v517;
      v694 = v519;
      v695 = v518;
      v601 = *(v508 + 176);
      v602 = *(v508 + 192);
      v603 = *(v508 + 208);
      v604 = *(v508 + 224);
      v597 = *(v508 + 112);
      v598 = *(v508 + 128);
      v599 = *(v508 + 144);
      v600 = *(v508 + 160);
      v593 = *(v508 + 48);
      v594 = *(v508 + 64);
      v595 = *(v508 + 80);
      v596 = *(v508 + 96);
      v590 = *v508;
      v591 = *(v508 + 16);
      v592 = *(v508 + 32);
      *&v605 = v26;
      *(&v605 + 1) = v23;
      v618 = v602;
      v619 = v603;
      v620 = v604;
      v614 = v598;
      v615 = v599;
      v616 = v600;
      v617 = v601;
      v610 = v594;
      v611 = v595;
      v612 = v596;
      v613 = v597;
      v606 = v590;
      v607 = v591;
      v608 = v592;
      v609 = v593;

      sub_2520A8DDC(&v683, v589);
      sub_2520C172C(v26, v23, &v683);
      sub_2520A2584(&v605, &qword_27F4CDE48, &qword_252144510);
      if (!v21)
      {
        goto LABEL_195;
      }
    }
  }

  while (1)
  {
LABEL_195:
    v504 = v503 + 1;
    if (__OFADD__(v503, 1))
    {
      __break(1u);
      goto LABEL_214;
    }

    if (v504 >= v22)
    {
      break;
    }

    v21 = *(v32 + 64 + 8 * v504);
    ++v503;
    if (v21)
    {
      v503 = v504;
      goto LABEL_199;
    }
  }

  v520 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v521 = sub_252141B6C();
  v522 = [v520 initWithSuiteName_];

  if (!v522)
  {
    goto LABEL_259;
  }

  v523 = [v522 dictionaryRepresentation];

  v524 = sub_252141B1C();
  v525 = &off_28644C878;
  v526 = 57;
  v527 = &unk_27F4CE0B0;
  *&v528 = 136446722;
  v584 = v528;
  *&v585 = v524;
  do
  {
    v530 = *(v525 - 1);
    v531 = *v525;
    if (*(v524 + 16))
    {
      v532 = *v525;

      v533 = sub_25213E648(v530, v531);
      if (v534)
      {
        sub_2520A5FC4(*(v524 + 56) + 32 * v533, &v605);
      }

      else
      {
        v605 = 0u;
        v606 = 0u;
      }
    }

    else
    {
      v605 = 0u;
      v606 = 0u;
    }

    sub_2520A2D9C(&v605, &v590, v527, &unk_252144AF0);

    v535 = sub_25214196C();
    v536 = sub_252141FBC();

    if (os_log_type_enabled(v535, v536))
    {
      v537 = swift_slowAlloc();
      *&v587 = swift_slowAlloc();
      v588 = v587;
      *v537 = v584;
      v538 = sub_2521425DC();
      v540 = sub_2520A5448(v538, v539, &v588);
      LODWORD(v586) = v536;
      v541 = v530;
      v542 = v527;
      v543 = v540;

      *(v537 + 4) = v543;
      *(v537 + 12) = 2080;
      v544 = sub_2520A5448(v541, v531, &v588);

      *(v537 + 14) = v544;
      *(v537 + 22) = 2080;
      sub_2520A2D9C(&v590, v589, v542, &unk_252144AF0);
      __swift_instantiateConcreteTypeFromMangledNameV2(v542, &unk_252144AF0);
      v545 = sub_252141BCC();
      v547 = v546;
      sub_2520A2584(&v590, v542, &unk_252144AF0);
      v548 = sub_2520A5448(v545, v547, &v588);
      v527 = v542;

      *(v537 + 24) = v548;
      v524 = v585;
      _os_log_impl(&dword_25207E000, v535, v586, "[%{public}s] [Noise Tuning] %s %s", v537, 0x20u);
      v549 = v587;
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v549, -1, -1);
      MEMORY[0x253099FD0](v537, -1, -1);

      v529 = v542;
    }

    else
    {

      sub_2520A2584(&v590, v527, &unk_252144AF0);
      v529 = v527;
    }

    sub_2520A2584(&v605, v529, &unk_252144AF0);
    v525 += 2;
    --v526;
  }

  while (v526);

  v550 = [objc_allocWithZone(MEMORY[0x277D0EEF8]) initWithOptions_];
  v551 = v583;
  v552 = *(v583 + OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_hidManager);
  *(v583 + OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_hidManager) = v550;
  v553 = v550;

  sub_25209CCFC(&unk_28644D3F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDE50, &unk_252144518);
  swift_arrayDestroy();
  v554 = sub_252141B0C();

  [v553 setDeviceMatching_];

  v555 = v570;
  [v553 setDispatchQueue_];
  v556 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v557 = swift_allocObject();
  v557[2] = v555;
  v557[3] = v556;
  v557[4] = ObjectType;
  *&v607 = sub_2520CC0CC;
  *(&v607 + 1) = v557;
  *&v605 = MEMORY[0x277D85DD0];
  *(&v605 + 1) = 1107296256;
  *&v606 = sub_2520C7444;
  *(&v606 + 1) = &block_descriptor_428;
  v558 = _Block_copy(&v605);
  v559 = v551;

  [v553 setDeviceNotificationHandler_];

  _Block_release(v558);
  v560 = *&v559[OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_notificationManager];

  v561 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v562 = &v560[OBJC_IVAR____TtC11HearingTest23HTNSNotificationManager_onNotificationWillTerminateForNoise];
  v563 = *&v560[OBJC_IVAR____TtC11HearingTest23HTNSNotificationManager_onNotificationWillTerminateForNoise];
  v564 = *&v560[OBJC_IVAR____TtC11HearingTest23HTNSNotificationManager_onNotificationWillTerminateForNoise + 8];
  *v562 = sub_2520CC0D8;
  v562[1] = v561;

  sub_2520A3730(v563);

  return v559;
}

void sub_2520B6E28(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v3 = v2;
  v5 = v4;
  v678 = v1;
  ObjectType = swift_getObjectType();
  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v7 = sub_25214198C();
  __swift_project_value_buffer(v7, qword_27F4CDE68);
  v8 = swift_allocObject();
  *(v8 + 16) = ObjectType;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  *(v9 + 24) = v3;

  v10 = sub_25214196C();
  v680 = sub_252141FAC();
  v11 = swift_allocObject();
  *(v11 + 16) = 34;
  v12 = swift_allocObject();
  *(v12 + 16) = 8;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_2520CB5FC;
  *(v13 + 24) = v8;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_2520CB6BC;
  *(v14 + 24) = v13;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_2520CB6C4;
  *(v15 + 24) = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = 32;
  v17 = swift_allocObject();
  *(v17 + 16) = 8;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_2520CB63C;
  *(v18 + 24) = v9;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_2520CC664;
  *(v19 + 24) = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDE28, &qword_2521444D0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_252144290;
  *(v20 + 32) = sub_2520CB67C;
  *(v20 + 40) = v11;
  *(v20 + 48) = sub_2520CC768;
  *(v20 + 56) = v12;
  *(v20 + 64) = sub_2520CB6CC;
  *(v20 + 72) = v15;
  *(v20 + 80) = sub_2520CC768;
  *(v20 + 88) = v16;
  *(v20 + 96) = sub_2520CC768;
  *(v20 + 104) = v17;
  *(v20 + 112) = sub_2520CC50C;
  *(v20 + 120) = v19;

  v679 = v3;
  if (os_log_type_enabled(v10, v680))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v968 = v22;
    *v21 = 136446466;
    v23 = sub_2521425DC();
    sub_2520A5448(v23, v24, v968);

    sub_25214213C();
    *(v21 + 12) = 2080;
    *v967 = sub_2520A5448(v5, v3, v968);
    sub_25214213C();
    _os_log_impl(&dword_25207E000, v10, v680, "[%{public}s] overWriteTuningWithUserDefaults for %s", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253099FD0](v22, -1, -1);
    MEMORY[0x253099FD0](v21, -1, -1);
  }

  else
  {
  }

  v25 = v5;
  v26 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v27 = sub_252141B6C();
  v28 = [v26 initWithSuiteName_];

  v29 = v678;
  if (!v28)
  {
    goto LABEL_567;
  }

  v30 = sub_252141B6C();
  v31 = [v28 objectForKey_];

  if (v31)
  {
    sub_25214215C();
    swift_unknownObjectRelease();
    sub_2520A2584(v968, &unk_27F4CE0B0, &unk_252144AF0);
    v32 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v33 = sub_252141B6C();
    v34 = [v32 initWithSuiteName_];

    if (!v34)
    {
LABEL_595:
      __break(1u);
      goto LABEL_596;
    }

    v35 = sub_252141B6C();
    [v34 doubleForKey_];
    v37 = v36;

    v38 = OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_tuningDict;
    swift_beginAccess();
    v39 = *(v678 + v38);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v936 = *(v678 + v38);
    v41 = v936;
    *(v678 + v38) = 0x8000000000000000;
    v42 = sub_25213E648(v25, v3);
    v44 = v43;
    v45 = *(v41 + 16);
    v46 = (v43 & 1) == 0;
    if (__OFADD__(v45, v46))
    {
      __break(1u);
      goto LABEL_540;
    }

    v47 = v42;
    if (sub_2520CB1CC(isUniquelyReferenced_nonNull_native, v45 + v46))
    {
      v48 = sub_25213E648(v25, v3);
      if ((v44 & 1) != (v49 & 1))
      {
        goto LABEL_651;
      }

      v47 = v48;
    }

    if (v44)
    {
      memmove(v968, (*(v936 + 56) + 232 * v47), 0xE8uLL);
      nullsub_1(v968);
    }

    else
    {
      sub_2520CB6D4(v968);
    }

    *&v945[128] = *&v968[168];
    *&v945[144] = *&v968[184];
    *&v945[160] = *&v968[200];
    *&v945[176] = *&v968[216];
    *&v945[64] = *&v968[104];
    *&v945[80] = *&v968[120];
    *&v945[96] = *&v968[136];
    *&v945[112] = *&v968[152];
    *v945 = *&v968[40];
    *&v945[16] = *&v968[56];
    *&v945[32] = *&v968[72];
    *&v945[48] = *&v968[88];
    v943 = *&v968[8];
    v944 = *&v968[24];
    *&v967[168] = *&v968[168];
    *&v967[184] = *&v968[184];
    *&v967[200] = *&v968[200];
    *&v967[216] = *&v968[216];
    *&v967[104] = *&v968[104];
    *&v967[120] = *&v968[120];
    *&v967[136] = *&v968[136];
    *&v967[152] = *&v968[152];
    *&v967[40] = *&v968[40];
    *&v967[56] = *&v968[56];
    *&v967[72] = *&v968[72];
    *&v967[88] = *&v968[88];
    *&v967[8] = *&v968[8];
    *&v967[24] = *&v968[24];
    *v967 = *v968;
    if (sub_2520CB6FC(v967) == 1)
    {
      goto LABEL_597;
    }

    *v951 = v37;
    *&v951[168] = *&v945[128];
    *&v951[184] = *&v945[144];
    *&v951[200] = *&v945[160];
    *&v951[216] = *&v945[176];
    *&v951[104] = *&v945[64];
    *&v951[120] = *&v945[80];
    *&v951[136] = *&v945[96];
    *&v951[152] = *&v945[112];
    *&v951[40] = *v945;
    *&v951[56] = *&v945[16];
    *&v951[72] = *&v945[32];
    *&v951[88] = *&v945[48];
    *&v951[8] = v943;
    *&v951[24] = v944;
    v964 = *&v951[192];
    v965 = *&v951[208];
    v966 = *&v945[184];
    v960 = *&v951[128];
    v961 = *&v951[144];
    v963 = *&v951[176];
    v962 = *&v951[160];
    v956 = *&v951[64];
    v957 = *&v951[80];
    v959 = *&v951[112];
    v958 = *&v951[96];
    v952 = *v951;
    v953 = *&v951[16];
    v955 = *&v951[48];
    v954 = *&v951[32];
    if (sub_2520CB6FC(&v952) == 1)
    {
      if (v44)
      {
        sub_2520CB714(*(v936 + 48) + 16 * v47);
        sub_2520CB018(v47, v936);
      }
    }

    else if (v44)
    {
      memmove((*(v936 + 56) + 232 * v47), v951, 0xE8uLL);
    }

    else
    {
      *&v968[192] = *&v951[192];
      *&v968[208] = *&v951[208];
      *&v968[224] = *&v951[224];
      *&v968[128] = *&v951[128];
      *&v968[144] = *&v951[144];
      *&v968[176] = *&v951[176];
      *&v968[160] = *&v951[160];
      *&v968[64] = *&v951[64];
      *&v968[80] = *&v951[80];
      *&v968[112] = *&v951[112];
      *&v968[96] = *&v951[96];
      *v968 = *v951;
      *&v968[16] = *&v951[16];
      *&v968[48] = *&v951[48];
      *&v968[32] = *&v951[32];
      sub_2520A8CE4(v47, v25, v3, v968, v936);
    }

    *v950 = v37;
    *&v950[168] = *&v945[128];
    *&v950[184] = *&v945[144];
    *&v950[200] = *&v945[160];
    *&v950[216] = *&v945[176];
    *&v950[104] = *&v945[64];
    *&v950[120] = *&v945[80];
    *&v950[136] = *&v945[96];
    *&v950[152] = *&v945[112];
    *&v950[40] = *v945;
    *&v950[56] = *&v945[16];
    *&v950[72] = *&v945[32];
    *&v950[88] = *&v945[48];
    *&v950[8] = v943;
    *&v950[24] = v944;
    sub_2520A2D9C(v951, &v946, &qword_27F4CDE30, &qword_2521444D8);
    sub_2520A2584(v950, &qword_27F4CDE30, &qword_2521444D8);
    *(v678 + v38) = v936;
    swift_endAccess();
  }

  else
  {
    memset(v968, 0, 32);
    sub_2520A2584(v968, &unk_27F4CE0B0, &unk_252144AF0);
  }

  v50 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v51 = sub_252141B6C();
  v52 = [v50 initWithSuiteName_];

  if (!v52)
  {
LABEL_568:
    __break(1u);
    goto LABEL_569;
  }

  v53 = sub_252141B6C();
  v54 = [v52 objectForKey_];

  if (!v54)
  {
    memset(v967, 0, 32);
    sub_2520A2584(v967, &unk_27F4CE0B0, &unk_252144AF0);
    v73 = 0x277CBE000;
    goto LABEL_44;
  }

  sub_25214215C();
  swift_unknownObjectRelease();
  sub_2520A2584(v967, &unk_27F4CE0B0, &unk_252144AF0);
  v55 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v56 = sub_252141B6C();
  v57 = [v55 initWithSuiteName_];

  if (!v57)
  {
LABEL_596:
    __break(1u);
LABEL_597:
    __break(1u);
    goto LABEL_598;
  }

  v58 = sub_252141B6C();
  [v57 doubleForKey_];
  v60 = v59;

  v61 = OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_tuningDict;
  swift_beginAccess();
  v62 = *(v678 + v61);
  v63 = swift_isUniquelyReferenced_nonNull_native();
  *&v932 = *(v678 + v61);
  v64 = v932;
  *(v678 + v61) = 0x8000000000000000;
  v65 = sub_25213E648(v25, v3);
  v67 = v66;
  v68 = *(v64 + 16);
  v69 = (v66 & 1) == 0;
  if (__OFADD__(v68, v69))
  {
LABEL_540:
    __break(1u);
    goto LABEL_541;
  }

  v70 = v65;
  if (sub_2520CB1CC(v63, v68 + v69))
  {
    v71 = sub_25213E648(v25, v3);
    v73 = 0x277CBE000;
    if ((v67 & 1) != (v72 & 1))
    {
      goto LABEL_651;
    }

    v70 = v71;
    if ((v67 & 1) == 0)
    {
      goto LABEL_32;
    }

LABEL_35:
    memmove(v967, (*(v932 + 56) + 232 * v70), 0xE8uLL);
    nullsub_1(v967);
    goto LABEL_36;
  }

  v73 = 0x277CBE000uLL;
  if (v67)
  {
    goto LABEL_35;
  }

LABEL_32:
  sub_2520CB6D4(v967);
LABEL_36:
  v74 = *v967;
  *&v942[128] = *&v967[176];
  *&v942[144] = *&v967[192];
  *&v942[160] = *&v967[208];
  *&v942[176] = *&v967[224];
  *&v942[64] = *&v967[112];
  *&v942[80] = *&v967[128];
  *&v942[96] = *&v967[144];
  *&v942[112] = *&v967[160];
  *v942 = *&v967[48];
  *&v942[16] = *&v967[64];
  *&v942[32] = *&v967[80];
  *&v942[48] = *&v967[96];
  v940 = *&v967[16];
  v941 = *&v967[32];
  v963 = *&v967[176];
  v964 = *&v967[192];
  v965 = *&v967[208];
  v966 = *&v967[224];
  v959 = *&v967[112];
  v960 = *&v967[128];
  v961 = *&v967[144];
  v962 = *&v967[160];
  v955 = *&v967[48];
  v956 = *&v967[64];
  v957 = *&v967[80];
  v958 = *&v967[96];
  v953 = *&v967[16];
  v954 = *&v967[32];
  v952 = *v967;
  if (sub_2520CB6FC(&v952) == 1)
  {
LABEL_599:
    __break(1u);
    goto LABEL_600;
  }

  *v950 = v74;
  *&v950[8] = v60;
  *&v950[176] = *&v942[128];
  *&v950[192] = *&v942[144];
  *&v950[208] = *&v942[160];
  *&v950[224] = *&v942[176];
  *&v950[112] = *&v942[64];
  *&v950[128] = *&v942[80];
  *&v950[144] = *&v942[96];
  *&v950[160] = *&v942[112];
  *&v950[48] = *v942;
  *&v950[64] = *&v942[16];
  *&v950[80] = *&v942[32];
  *&v950[96] = *&v942[48];
  *&v950[16] = v940;
  *&v950[32] = v941;
  *&v951[192] = *&v942[144];
  *&v951[208] = *&v942[160];
  *&v951[224] = *&v942[176];
  *&v951[128] = *&v942[80];
  *&v951[144] = *&v942[96];
  *&v951[176] = *&v942[128];
  *&v951[160] = *&v942[112];
  *&v951[64] = *&v942[16];
  *&v951[80] = *&v942[32];
  *&v951[112] = *&v942[64];
  *&v951[96] = *&v942[48];
  *v951 = *v950;
  *&v951[16] = v940;
  *&v951[48] = *v942;
  *&v951[32] = v941;
  if (sub_2520CB6FC(v951) == 1)
  {
    if (v67)
    {
      sub_2520CB714(*(v932 + 48) + 16 * v70);
      sub_2520CB018(v70, v932);
    }
  }

  else if (v67)
  {
    memmove((*(v932 + 56) + 232 * v70), v950, 0xE8uLL);
  }

  else
  {
    *&v967[192] = *&v950[192];
    *&v967[208] = *&v950[208];
    *&v967[224] = *&v950[224];
    *&v967[128] = *&v950[128];
    *&v967[144] = *&v950[144];
    *&v967[176] = *&v950[176];
    *&v967[160] = *&v950[160];
    *&v967[64] = *&v950[64];
    *&v967[80] = *&v950[80];
    *&v967[112] = *&v950[112];
    *&v967[96] = *&v950[96];
    *v967 = *v950;
    *&v967[16] = *&v950[16];
    *&v967[48] = *&v950[48];
    *&v967[32] = *&v950[32];
    sub_2520A8CE4(v70, v25, v679, v967, v932);
  }

  *&v946 = v74;
  *(&v946 + 1) = v60;
  *&v949[128] = *&v942[128];
  *&v949[144] = *&v942[144];
  *&v949[160] = *&v942[160];
  *&v949[176] = *&v942[176];
  *&v949[64] = *&v942[64];
  *&v949[80] = *&v942[80];
  *&v949[96] = *&v942[96];
  *&v949[112] = *&v942[112];
  *v949 = *v942;
  *&v949[16] = *&v942[16];
  *&v949[32] = *&v942[32];
  *&v949[48] = *&v942[48];
  v947 = v940;
  v948 = v941;
  sub_2520A2D9C(v950, &v943, &qword_27F4CDE30, &qword_2521444D8);
  sub_2520A2584(&v946, &qword_27F4CDE30, &qword_2521444D8);
  *(v678 + v61) = v932;
  swift_endAccess();

LABEL_44:
  v75 = objc_allocWithZone(*(v73 + 3024));
  v76 = sub_252141B6C();
  v77 = [v75 initWithSuiteName_];

  if (!v77)
  {
LABEL_569:
    __break(1u);
    goto LABEL_570;
  }

  v78 = sub_252141B6C();
  v79 = [v77 objectForKey_];

  v681 = v25;
  if (!v79)
  {
    v953 = 0u;
    v952 = 0u;
    sub_2520A2584(&v952, &unk_27F4CE0B0, &unk_252144AF0);
    goto LABEL_63;
  }

  sub_25214215C();
  swift_unknownObjectRelease();
  sub_2520A2584(&v952, &unk_27F4CE0B0, &unk_252144AF0);
  v80 = objc_allocWithZone(*(v73 + 3024));
  v81 = sub_252141B6C();
  v82 = [v80 initWithSuiteName_];

  if (!v82)
  {
LABEL_598:
    __break(1u);
    goto LABEL_599;
  }

  v83 = sub_252141B6C();
  v84 = [v82 integerForKey_];

  v85 = OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_tuningDict;
  swift_beginAccess();
  v86 = *(v678 + v85);
  v87 = swift_isUniquelyReferenced_nonNull_native();
  *&v922 = *(v678 + v85);
  v88 = v922;
  *(v678 + v85) = 0x8000000000000000;
  v89 = sub_25213E648(v25, v679);
  v91 = v90;
  v92 = *(v88 + 16);
  v93 = (v90 & 1) == 0;
  if (__OFADD__(v92, v93))
  {
LABEL_541:
    __break(1u);
    goto LABEL_542;
  }

  v94 = v89;
  if (sub_2520CB1CC(v87, v92 + v93))
  {
    v95 = sub_25213E648(v681, v679);
    if ((v91 & 1) != (v96 & 1))
    {
      goto LABEL_651;
    }

    v94 = v95;
  }

  if (v91)
  {
    memmove(&v952, (*(v922 + 56) + 232 * v94), 0xE8uLL);
    nullsub_1(&v952);
  }

  else
  {
    sub_2520CB6D4(&v952);
  }

  v927 = v952;
  *&v928 = v953;
  *&v939[112] = v964;
  *&v939[128] = v965;
  *&v939[144] = v966;
  *&v939[48] = v960;
  *&v939[64] = v961;
  *&v939[96] = v963;
  *&v939[80] = v962;
  v938 = v956;
  *v939 = v957;
  *&v939[32] = v959;
  *&v939[16] = v958;
  v937 = v955;
  v936 = v954;
  *v951 = v952;
  *&v951[224] = v966;
  *&v951[192] = v964;
  *&v951[208] = v965;
  *&v951[128] = v960;
  *&v951[144] = v961;
  *&v951[176] = v963;
  *&v951[160] = v962;
  *&v951[64] = v956;
  *&v951[80] = v957;
  *&v951[112] = v959;
  *&v951[96] = v958;
  *&v951[48] = v955;
  *&v951[32] = v954;
  *&v951[16] = v953;
  if (sub_2520CB6FC(v951) == 1)
  {
    goto LABEL_601;
  }

  v946 = v927;
  *&v947 = v928;
  *(&v947 + 1) = v84;
  *&v949[144] = *&v939[112];
  *&v949[160] = *&v939[128];
  *&v949[176] = *&v939[144];
  *&v949[80] = *&v939[48];
  *&v949[96] = *&v939[64];
  *&v949[128] = *&v939[96];
  *&v949[112] = *&v939[80];
  *&v949[16] = v938;
  *&v949[32] = *v939;
  *&v949[64] = *&v939[32];
  *&v949[48] = *&v939[16];
  *v949 = v937;
  v948 = v936;
  *&v950[192] = *&v939[112];
  *&v950[208] = *&v939[128];
  *&v950[224] = *&v939[144];
  *&v950[128] = *&v939[48];
  *&v950[144] = *&v939[64];
  *&v950[176] = *&v939[96];
  *&v950[160] = *&v939[80];
  *&v950[64] = v938;
  *&v950[80] = *v939;
  *&v950[112] = *&v939[32];
  *&v950[96] = *&v939[16];
  *v950 = v927;
  *&v950[16] = v947;
  *&v950[48] = v937;
  *&v950[32] = v936;
  if (sub_2520CB6FC(v950) == 1)
  {
    if (v91)
    {
      sub_2520CB714(*(v922 + 48) + 16 * v94);
      sub_2520CB018(v94, v922);
    }
  }

  else if (v91)
  {
    memmove((*(v922 + 56) + 232 * v94), &v946, 0xE8uLL);
  }

  else
  {
    v964 = *&v949[144];
    v965 = *&v949[160];
    v966 = *&v949[176];
    v960 = *&v949[80];
    v961 = *&v949[96];
    v963 = *&v949[128];
    v962 = *&v949[112];
    v956 = *&v949[16];
    v957 = *&v949[32];
    v959 = *&v949[64];
    v958 = *&v949[48];
    v952 = v946;
    v953 = v947;
    v955 = *v949;
    v954 = v948;
    sub_2520A8CE4(v94, v681, v679, &v952, v922);
  }

  v943 = v927;
  *&v944 = v928;
  *(&v944 + 1) = v84;
  *&v945[160] = *&v939[112];
  *&v945[176] = *&v939[128];
  *&v945[192] = *&v939[144];
  *&v945[96] = *&v939[48];
  *&v945[112] = *&v939[64];
  *&v945[144] = *&v939[96];
  *&v945[128] = *&v939[80];
  *&v945[32] = v938;
  *&v945[48] = *v939;
  *&v945[80] = *&v939[32];
  *&v945[64] = *&v939[16];
  *&v945[16] = v937;
  *v945 = v936;
  sub_2520A2D9C(&v946, &v940, &qword_27F4CDE30, &qword_2521444D8);
  sub_2520A2584(&v943, &qword_27F4CDE30, &qword_2521444D8);
  v29 = v678;
  *(v678 + v85) = v922;
  swift_endAccess();

LABEL_63:
  v97 = objc_allocWithZone(*(v73 + 3024));
  v98 = sub_252141B6C();
  v99 = [v97 initWithSuiteName_];

  if (!v99)
  {
LABEL_570:
    __break(1u);
    goto LABEL_571;
  }

  v100 = sub_252141B6C();
  v101 = [v99 objectForKey_];

  if (!v101)
  {
    memset(v951, 0, 32);
    sub_2520A2584(v951, &unk_27F4CE0B0, &unk_252144AF0);
    goto LABEL_82;
  }

  sub_25214215C();
  swift_unknownObjectRelease();
  sub_2520A2584(v951, &unk_27F4CE0B0, &unk_252144AF0);
  v102 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v103 = sub_252141B6C();
  v104 = [v102 initWithSuiteName_];

  if (!v104)
  {
LABEL_600:
    __break(1u);
LABEL_601:
    __break(1u);
    goto LABEL_602;
  }

  v105 = sub_252141B6C();
  v106 = [v104 integerForKey_];

  v107 = OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_tuningDict;
  swift_beginAccess();
  v108 = *(v678 + v107);
  v109 = swift_isUniquelyReferenced_nonNull_native();
  *&v916 = *(v678 + v107);
  v110 = v916;
  *(v678 + v107) = 0x8000000000000000;
  v111 = sub_25213E648(v681, v679);
  v113 = v112;
  v114 = *(v110 + 16);
  v115 = (v112 & 1) == 0;
  if (__OFADD__(v114, v115))
  {
LABEL_542:
    __break(1u);
    goto LABEL_543;
  }

  v116 = v111;
  if (sub_2520CB1CC(v109, v114 + v115))
  {
    v117 = sub_25213E648(v681, v679);
    if ((v113 & 1) != (v118 & 1))
    {
      goto LABEL_651;
    }

    v116 = v117;
  }

  if (v113)
  {
    memmove(v951, (*(v916 + 56) + 232 * v116), 0xE8uLL);
    nullsub_1(v951);
  }

  else
  {
    sub_2520CB6D4(v951);
  }

  v927 = *v951;
  v928 = *&v951[16];
  *&v935[80] = *&v951[168];
  *&v935[96] = *&v951[184];
  *&v935[112] = *&v951[200];
  *&v935[128] = *&v951[216];
  *&v935[16] = *&v951[104];
  *&v935[32] = *&v951[120];
  *&v935[48] = *&v951[136];
  *&v935[64] = *&v951[152];
  v932 = *&v951[40];
  v933 = *&v951[56];
  v934 = *&v951[72];
  *v935 = *&v951[88];
  *v950 = *v951;
  *&v950[16] = *&v951[16];
  *&v950[168] = *&v951[168];
  *&v950[184] = *&v951[184];
  *&v950[200] = *&v951[200];
  *&v950[216] = *&v951[216];
  *&v950[104] = *&v951[104];
  *&v950[120] = *&v951[120];
  *&v950[136] = *&v951[136];
  *&v950[152] = *&v951[152];
  *&v950[40] = *&v951[40];
  *&v950[56] = *&v951[56];
  *&v950[72] = *&v951[72];
  *&v950[88] = *&v951[88];
  *&v950[32] = *&v951[32];
  if (sub_2520CB6FC(v950) == 1)
  {
    goto LABEL_603;
  }

  v943 = v927;
  v944 = v928;
  *v945 = v106;
  *&v945[136] = *&v935[80];
  *&v945[152] = *&v935[96];
  *&v945[168] = *&v935[112];
  *&v945[184] = *&v935[128];
  *&v945[72] = *&v935[16];
  *&v945[88] = *&v935[32];
  *&v945[104] = *&v935[48];
  *&v945[120] = *&v935[64];
  *&v945[8] = v932;
  *&v945[24] = v933;
  *&v945[40] = v934;
  *&v945[56] = *v935;
  *&v949[144] = *&v945[160];
  *&v949[160] = *&v945[176];
  *&v949[176] = *&v935[136];
  *&v949[80] = *&v945[96];
  *&v949[96] = *&v945[112];
  *&v949[128] = *&v945[144];
  *&v949[112] = *&v945[128];
  *&v949[16] = *&v945[32];
  *&v949[32] = *&v945[48];
  *&v949[64] = *&v945[80];
  *&v949[48] = *&v945[64];
  v946 = v927;
  v947 = v928;
  *v949 = *&v945[16];
  v948 = *v945;
  if (sub_2520CB6FC(&v946) == 1)
  {
    if (v113)
    {
      sub_2520CB714(*(v916 + 48) + 16 * v116);
      sub_2520CB018(v116, v916);
    }
  }

  else if (v113)
  {
    memmove((*(v916 + 56) + 232 * v116), &v943, 0xE8uLL);
  }

  else
  {
    *&v951[192] = *&v945[160];
    *&v951[208] = *&v945[176];
    *&v951[224] = *&v945[192];
    *&v951[128] = *&v945[96];
    *&v951[144] = *&v945[112];
    *&v951[176] = *&v945[144];
    *&v951[160] = *&v945[128];
    *&v951[64] = *&v945[32];
    *&v951[80] = *&v945[48];
    *&v951[112] = *&v945[80];
    *&v951[96] = *&v945[64];
    *v951 = v943;
    *&v951[16] = v944;
    *&v951[48] = *&v945[16];
    *&v951[32] = *v945;
    sub_2520A8CE4(v116, v681, v679, v951, v916);
  }

  v940 = v927;
  v941 = v928;
  *&v942[136] = *&v935[80];
  *&v942[152] = *&v935[96];
  *&v942[168] = *&v935[112];
  *&v942[184] = *&v935[128];
  *&v942[72] = *&v935[16];
  *&v942[88] = *&v935[32];
  *&v942[104] = *&v935[48];
  *&v942[120] = *&v935[64];
  *&v942[8] = v932;
  *&v942[24] = v933;
  *&v942[40] = v934;
  *v942 = v106;
  *&v942[56] = *v935;
  sub_2520A2D9C(&v943, &v936, &qword_27F4CDE30, &qword_2521444D8);
  sub_2520A2584(&v940, &qword_27F4CDE30, &qword_2521444D8);
  v29 = v678;
  *(v678 + v107) = v916;
  swift_endAccess();

LABEL_82:
  v119 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v120 = sub_252141B6C();
  v121 = [v119 initWithSuiteName_];

  if (!v121)
  {
LABEL_571:
    __break(1u);
    goto LABEL_572;
  }

  v122 = sub_252141B6C();
  v123 = [v121 objectForKey_];

  if (!v123)
  {
    memset(v950, 0, 32);
    sub_2520A2584(v950, &unk_27F4CE0B0, &unk_252144AF0);
    v142 = 0x277CBE000;
    goto LABEL_101;
  }

  sub_25214215C();
  swift_unknownObjectRelease();
  sub_2520A2584(v950, &unk_27F4CE0B0, &unk_252144AF0);
  v124 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v125 = sub_252141B6C();
  v126 = [v124 initWithSuiteName_];

  if (!v126)
  {
LABEL_602:
    __break(1u);
LABEL_603:
    __break(1u);
    goto LABEL_604;
  }

  v127 = sub_252141B6C();
  [v126 doubleForKey_];
  v129 = v128;

  v130 = OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_tuningDict;
  swift_beginAccess();
  v131 = *(v29 + v130);
  v132 = swift_isUniquelyReferenced_nonNull_native();
  *&v910 = *(v29 + v130);
  v133 = v910;
  *(v29 + v130) = 0x8000000000000000;
  v134 = sub_25213E648(v681, v679);
  v136 = v135;
  v137 = *(v133 + 16);
  v138 = (v135 & 1) == 0;
  if (__OFADD__(v137, v138))
  {
LABEL_543:
    __break(1u);
    goto LABEL_544;
  }

  v139 = v134;
  if (sub_2520CB1CC(v132, v137 + v138))
  {
    v140 = sub_25213E648(v681, v679);
    v142 = 0x277CBE000;
    if ((v136 & 1) != (v141 & 1))
    {
      goto LABEL_651;
    }

    v139 = v140;
    if ((v136 & 1) == 0)
    {
      goto LABEL_89;
    }

LABEL_92:
    memmove(v950, (*(v910 + 56) + 232 * v139), 0xE8uLL);
    nullsub_1(v950);
    goto LABEL_93;
  }

  v142 = 0x277CBE000uLL;
  if (v136)
  {
    goto LABEL_92;
  }

LABEL_89:
  sub_2520CB6D4(v950);
LABEL_93:
  v922 = *v950;
  v923 = *&v950[16];
  *&v924 = *&v950[32];
  *&v931[64] = *&v950[176];
  *&v931[80] = *&v950[192];
  *&v931[96] = *&v950[208];
  *&v931[112] = *&v950[224];
  *v931 = *&v950[112];
  *&v931[16] = *&v950[128];
  *&v931[32] = *&v950[144];
  *&v931[48] = *&v950[160];
  v927 = *&v950[48];
  v928 = *&v950[64];
  v929 = *&v950[80];
  v930 = *&v950[96];
  v946 = *v950;
  v947 = *&v950[16];
  v948 = *&v950[32];
  *&v949[128] = *&v950[176];
  *&v949[144] = *&v950[192];
  *&v949[160] = *&v950[208];
  *&v949[176] = *&v950[224];
  *&v949[64] = *&v950[112];
  *&v949[80] = *&v950[128];
  *&v949[96] = *&v950[144];
  *&v949[112] = *&v950[160];
  *v949 = *&v950[48];
  *&v949[16] = *&v950[64];
  *&v949[32] = *&v950[80];
  *&v949[48] = *&v950[96];
  if (sub_2520CB6FC(&v946) == 1)
  {
LABEL_605:
    __break(1u);
    goto LABEL_606;
  }

  v940 = v922;
  v941 = v923;
  *v942 = v924;
  *&v942[8] = v129;
  *&v942[144] = *&v931[64];
  *&v942[160] = *&v931[80];
  *&v942[176] = *&v931[96];
  *&v942[192] = *&v931[112];
  *&v942[80] = *v931;
  *&v942[96] = *&v931[16];
  *&v942[112] = *&v931[32];
  *&v942[128] = *&v931[48];
  *&v942[16] = v927;
  *&v942[32] = v928;
  *&v942[48] = v929;
  *&v942[64] = v930;
  *&v945[160] = *&v931[80];
  *&v945[176] = *&v931[96];
  *&v945[192] = *&v931[112];
  *&v945[96] = *&v931[16];
  *&v945[112] = *&v931[32];
  *&v945[144] = *&v931[64];
  *&v945[128] = *&v931[48];
  *&v945[32] = v928;
  *&v945[48] = v929;
  *&v945[80] = *v931;
  *&v945[64] = v930;
  v943 = v922;
  v944 = v923;
  *&v945[16] = v927;
  *v945 = *v942;
  if (sub_2520CB6FC(&v943) == 1)
  {
    if (v136)
    {
      sub_2520CB714(*(v910 + 48) + 16 * v139);
      sub_2520CB018(v139, v910);
    }
  }

  else if (v136)
  {
    memmove((*(v910 + 56) + 232 * v139), &v940, 0xE8uLL);
  }

  else
  {
    *&v950[192] = *&v942[160];
    *&v950[208] = *&v942[176];
    *&v950[224] = *&v942[192];
    *&v950[128] = *&v942[96];
    *&v950[144] = *&v942[112];
    *&v950[176] = *&v942[144];
    *&v950[160] = *&v942[128];
    *&v950[64] = *&v942[32];
    *&v950[80] = *&v942[48];
    *&v950[112] = *&v942[80];
    *&v950[96] = *&v942[64];
    *v950 = v940;
    *&v950[16] = v941;
    *&v950[48] = *&v942[16];
    *&v950[32] = *v942;
    sub_2520A8CE4(v139, v681, v679, v950, v910);
  }

  v936 = v922;
  v937 = v923;
  *&v938 = v924;
  *(&v938 + 1) = v129;
  *&v939[128] = *&v931[64];
  *&v939[144] = *&v931[80];
  *&v939[160] = *&v931[96];
  *&v939[176] = *&v931[112];
  *&v939[64] = *v931;
  *&v939[80] = *&v931[16];
  *&v939[96] = *&v931[32];
  *&v939[112] = *&v931[48];
  *v939 = v927;
  *&v939[16] = v928;
  *&v939[32] = v929;
  *&v939[48] = v930;
  sub_2520A2D9C(&v940, &v932, &qword_27F4CDE30, &qword_2521444D8);
  sub_2520A2584(&v936, &qword_27F4CDE30, &qword_2521444D8);
  v29 = v678;
  *(v678 + v130) = v910;
  swift_endAccess();

LABEL_101:
  v143 = objc_allocWithZone(*(v142 + 3024));
  v144 = sub_252141B6C();
  v145 = [v143 initWithSuiteName_];

  if (!v145)
  {
LABEL_572:
    __break(1u);
    goto LABEL_573;
  }

  v146 = sub_252141B6C();
  v147 = [v145 objectForKey_];

  if (!v147)
  {
    v947 = 0u;
    v946 = 0u;
    sub_2520A2584(&v946, &unk_27F4CE0B0, &unk_252144AF0);
    v166 = 0x277CBE000;
    goto LABEL_121;
  }

  sub_25214215C();
  swift_unknownObjectRelease();
  sub_2520A2584(&v946, &unk_27F4CE0B0, &unk_252144AF0);
  v148 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v149 = sub_252141B6C();
  v150 = [v148 initWithSuiteName_];

  if (!v150)
  {
LABEL_604:
    __break(1u);
    goto LABEL_605;
  }

  v151 = sub_252141B6C();
  [v150 doubleForKey_];
  v153 = v152;

  v154 = OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_tuningDict;
  swift_beginAccess();
  v155 = *(v29 + v154);
  v156 = swift_isUniquelyReferenced_nonNull_native();
  *&v903 = *(v29 + v154);
  v157 = v903;
  *(v29 + v154) = 0x8000000000000000;
  v158 = sub_25213E648(v681, v679);
  v160 = v159;
  v161 = *(v157 + 16);
  v162 = (v159 & 1) == 0;
  if (__OFADD__(v161, v162))
  {
LABEL_544:
    __break(1u);
    goto LABEL_545;
  }

  v163 = v158;
  if (sub_2520CB1CC(v156, v161 + v162))
  {
    v164 = sub_25213E648(v681, v679);
    v166 = 0x277CBE000;
    if ((v160 & 1) != (v165 & 1))
    {
      goto LABEL_651;
    }

    v163 = v164;
  }

  else
  {
    v166 = 0x277CBE000uLL;
  }

  if (v160)
  {
    memmove(&v946, (*(v903 + 56) + 232 * v163), 0xE8uLL);
    nullsub_1(&v946);
  }

  else
  {
    sub_2520CB6D4(&v946);
  }

  v916 = v946;
  v917 = v947;
  v918 = v948;
  *&v926[64] = *&v949[136];
  *&v926[80] = *&v949[152];
  *&v926[96] = *&v949[168];
  *v926 = *&v949[72];
  *&v926[16] = *&v949[88];
  *&v926[48] = *&v949[120];
  *&v926[32] = *&v949[104];
  v922 = *&v949[8];
  v923 = *&v949[24];
  v925 = *&v949[56];
  v924 = *&v949[40];
  v943 = v946;
  v944 = v947;
  *v945 = v948;
  *&v945[136] = *&v949[120];
  *&v945[152] = *&v949[136];
  *&v945[168] = *&v949[152];
  *&v945[184] = *&v949[168];
  *&v945[72] = *&v949[56];
  *&v945[88] = *&v949[72];
  *&v945[104] = *&v949[88];
  *&v945[120] = *&v949[104];
  *&v945[24] = *&v949[8];
  *&v945[40] = *&v949[24];
  *&v945[56] = *&v949[40];
  *&v945[16] = *v949;
  if (sub_2520CB6FC(&v943) == 1)
  {
    goto LABEL_607;
  }

  v936 = v916;
  v937 = v917;
  v938 = v918;
  *&v939[120] = *&v926[48];
  *&v939[136] = *&v926[64];
  *&v939[152] = *&v926[80];
  *&v939[168] = *&v926[96];
  *&v939[56] = v925;
  *&v939[72] = *v926;
  *&v939[88] = *&v926[16];
  *&v939[104] = *&v926[32];
  *&v939[8] = v922;
  *v939 = v153;
  *&v939[24] = v923;
  *&v939[40] = v924;
  *&v942[160] = *&v939[144];
  *&v942[176] = *&v939[160];
  *&v942[192] = *&v926[104];
  *&v942[96] = *&v939[80];
  *&v942[112] = *&v939[96];
  *&v942[144] = *&v939[128];
  *&v942[128] = *&v939[112];
  *&v942[32] = *&v939[16];
  *&v942[48] = *&v939[32];
  *&v942[80] = *&v939[64];
  *&v942[64] = *&v939[48];
  v940 = v916;
  v941 = v917;
  *&v942[16] = *v939;
  *v942 = v918;
  if (sub_2520CB6FC(&v940) == 1)
  {
    if (v160)
    {
      sub_2520CB714(*(v903 + 48) + 16 * v163);
      sub_2520CB018(v163, v903);
    }
  }

  else if (v160)
  {
    memmove((*(v903 + 56) + 232 * v163), &v936, 0xE8uLL);
  }

  else
  {
    *&v949[144] = *&v939[144];
    *&v949[160] = *&v939[160];
    *&v949[176] = *&v939[176];
    *&v949[80] = *&v939[80];
    *&v949[96] = *&v939[96];
    *&v949[128] = *&v939[128];
    *&v949[112] = *&v939[112];
    *&v949[16] = *&v939[16];
    *&v949[32] = *&v939[32];
    *&v949[64] = *&v939[64];
    *&v949[48] = *&v939[48];
    v946 = v936;
    v947 = v937;
    *v949 = *v939;
    v948 = v938;
    sub_2520A8CE4(v163, v681, v679, &v946, v903);
  }

  v932 = v916;
  v933 = v917;
  v934 = v918;
  *v935 = v153;
  *&v935[120] = *&v926[48];
  *&v935[136] = *&v926[64];
  *&v935[152] = *&v926[80];
  *&v935[168] = *&v926[96];
  *&v935[56] = v925;
  *&v935[72] = *v926;
  *&v935[88] = *&v926[16];
  *&v935[104] = *&v926[32];
  *&v935[8] = v922;
  *&v935[24] = v923;
  *&v935[40] = v924;
  sub_2520A2D9C(&v936, &v927, &qword_27F4CDE30, &qword_2521444D8);
  sub_2520A2584(&v932, &qword_27F4CDE30, &qword_2521444D8);
  v29 = v678;
  *(v678 + v154) = v903;
  swift_endAccess();

LABEL_121:
  v167 = objc_allocWithZone(*(v166 + 3024));
  v168 = sub_252141B6C();
  v169 = [v167 initWithSuiteName_];

  if (!v169)
  {
LABEL_573:
    __break(1u);
    goto LABEL_574;
  }

  v170 = sub_252141B6C();
  v171 = [v169 objectForKey_];

  if (!v171)
  {
    v944 = 0u;
    v943 = 0u;
    sub_2520A2584(&v943, &unk_27F4CE0B0, &unk_252144AF0);
    goto LABEL_140;
  }

  sub_25214215C();
  swift_unknownObjectRelease();
  sub_2520A2584(&v943, &unk_27F4CE0B0, &unk_252144AF0);
  v172 = objc_allocWithZone(*(v166 + 3024));
  v173 = sub_252141B6C();
  v174 = [v172 initWithSuiteName_];

  if (!v174)
  {
LABEL_606:
    __break(1u);
LABEL_607:
    __break(1u);
    goto LABEL_608;
  }

  v175 = sub_252141B6C();
  [v174 doubleForKey_];
  v177 = v176;

  v178 = OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_tuningDict;
  swift_beginAccess();
  v179 = *(v29 + v178);
  v180 = swift_isUniquelyReferenced_nonNull_native();
  *&v896 = *(v29 + v178);
  v181 = v896;
  *(v29 + v178) = 0x8000000000000000;
  v182 = sub_25213E648(v681, v679);
  v184 = v183;
  v185 = *(v181 + 16);
  v186 = (v183 & 1) == 0;
  if (__OFADD__(v185, v186))
  {
LABEL_545:
    __break(1u);
    goto LABEL_546;
  }

  v187 = v182;
  if (sub_2520CB1CC(v180, v185 + v186))
  {
    v188 = sub_25213E648(v681, v679);
    if ((v184 & 1) != (v189 & 1))
    {
      goto LABEL_651;
    }

    v187 = v188;
  }

  if (v184)
  {
    memmove(&v943, (*(v896 + 56) + 232 * v187), 0xE8uLL);
    nullsub_1(&v943);
  }

  else
  {
    sub_2520CB6D4(&v943);
  }

  v910 = v943;
  v911 = v944;
  v912 = *v945;
  *&v913 = *&v945[16];
  *&v921[48] = *&v945[160];
  *&v921[64] = *&v945[176];
  *&v921[80] = *&v945[192];
  v920 = *&v945[96];
  *v921 = *&v945[112];
  *&v921[32] = *&v945[144];
  *&v921[16] = *&v945[128];
  v916 = *&v945[32];
  v917 = *&v945[48];
  v919 = *&v945[80];
  v918 = *&v945[64];
  v940 = v943;
  v941 = v944;
  *v942 = *v945;
  *&v942[16] = *&v945[16];
  *&v942[160] = *&v945[160];
  *&v942[176] = *&v945[176];
  *&v942[192] = *&v945[192];
  *&v942[96] = *&v945[96];
  *&v942[112] = *&v945[112];
  *&v942[144] = *&v945[144];
  *&v942[128] = *&v945[128];
  *&v942[32] = *&v945[32];
  *&v942[48] = *&v945[48];
  *&v942[80] = *&v945[80];
  *&v942[64] = *&v945[64];
  if (sub_2520CB6FC(&v940) == 1)
  {
    goto LABEL_609;
  }

  v932 = v910;
  v933 = v911;
  v934 = v912;
  *v935 = v913;
  *&v935[8] = v177;
  *&v935[144] = *&v921[48];
  *&v935[160] = *&v921[64];
  *&v935[176] = *&v921[80];
  *&v935[80] = v920;
  *&v935[96] = *v921;
  *&v935[128] = *&v921[32];
  *&v935[112] = *&v921[16];
  *&v935[16] = v916;
  *&v935[32] = v917;
  *&v935[64] = v919;
  *&v935[48] = v918;
  *&v939[144] = *&v921[48];
  *&v939[160] = *&v921[64];
  *&v939[176] = *&v921[80];
  *&v939[80] = v920;
  *&v939[96] = *v921;
  *&v939[128] = *&v921[32];
  *&v939[112] = *&v921[16];
  *&v939[16] = v916;
  *&v939[32] = v917;
  *&v939[64] = v919;
  *&v939[48] = v918;
  v936 = v910;
  v937 = v911;
  *v939 = *v935;
  v938 = v912;
  if (sub_2520CB6FC(&v936) == 1)
  {
    if (v184)
    {
      sub_2520CB714(*(v896 + 48) + 16 * v187);
      sub_2520CB018(v187, v896);
    }
  }

  else if (v184)
  {
    memmove((*(v896 + 56) + 232 * v187), &v932, 0xE8uLL);
  }

  else
  {
    *&v945[160] = *&v935[144];
    *&v945[176] = *&v935[160];
    *&v945[192] = *&v935[176];
    *&v945[96] = *&v935[80];
    *&v945[112] = *&v935[96];
    *&v945[144] = *&v935[128];
    *&v945[128] = *&v935[112];
    *&v945[32] = *&v935[16];
    *&v945[48] = *&v935[32];
    *&v945[80] = *&v935[64];
    *&v945[64] = *&v935[48];
    v943 = v932;
    v944 = v933;
    *&v945[16] = *v935;
    *v945 = v934;
    sub_2520A8CE4(v187, v681, v679, &v943, v896);
  }

  v927 = v910;
  v928 = v911;
  v929 = v912;
  *&v930 = v913;
  *(&v930 + 1) = v177;
  *&v931[128] = *&v921[48];
  *&v931[144] = *&v921[64];
  *&v931[160] = *&v921[80];
  *&v931[64] = v920;
  *&v931[80] = *v921;
  *&v931[112] = *&v921[32];
  *&v931[96] = *&v921[16];
  *v931 = v916;
  *&v931[16] = v917;
  *&v931[48] = v919;
  *&v931[32] = v918;
  sub_2520A2D9C(&v932, &v922, &qword_27F4CDE30, &qword_2521444D8);
  sub_2520A2584(&v927, &qword_27F4CDE30, &qword_2521444D8);
  v29 = v678;
  *(v678 + v178) = v896;
  swift_endAccess();

LABEL_140:
  v190 = objc_allocWithZone(*(v166 + 3024));
  v191 = sub_252141B6C();
  v192 = [v190 initWithSuiteName_];

  if (!v192)
  {
LABEL_574:
    __break(1u);
    goto LABEL_575;
  }

  v193 = sub_252141B6C();
  v194 = [v192 objectForKey_];

  if (!v194)
  {
    v941 = 0u;
    v940 = 0u;
    sub_2520A2584(&v940, &unk_27F4CE0B0, &unk_252144AF0);
    goto LABEL_159;
  }

  sub_25214215C();
  swift_unknownObjectRelease();
  sub_2520A2584(&v940, &unk_27F4CE0B0, &unk_252144AF0);
  v195 = objc_allocWithZone(*(v166 + 3024));
  v196 = sub_252141B6C();
  v197 = [v195 initWithSuiteName_];

  if (!v197)
  {
LABEL_608:
    __break(1u);
LABEL_609:
    __break(1u);
    goto LABEL_610;
  }

  v198 = sub_252141B6C();
  [v197 doubleForKey_];
  v200 = v199;

  v201 = OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_tuningDict;
  swift_beginAccess();
  v202 = *(v29 + v201);
  v203 = swift_isUniquelyReferenced_nonNull_native();
  *&v888 = *(v29 + v201);
  v204 = v888;
  *(v29 + v201) = 0x8000000000000000;
  v205 = sub_25213E648(v681, v679);
  v207 = v206;
  v208 = *(v204 + 16);
  v209 = (v206 & 1) == 0;
  if (__OFADD__(v208, v209))
  {
LABEL_546:
    __break(1u);
    goto LABEL_547;
  }

  v210 = v205;
  if (sub_2520CB1CC(v203, v208 + v209))
  {
    v211 = sub_25213E648(v681, v679);
    if ((v207 & 1) != (v212 & 1))
    {
      goto LABEL_651;
    }

    v210 = v211;
  }

  if (v207)
  {
    memmove(&v940, (*(v888 + 56) + 232 * v210), 0xE8uLL);
    nullsub_1(&v940);
  }

  else
  {
    sub_2520CB6D4(&v940);
  }

  v903 = v940;
  v904 = v941;
  v905 = *v942;
  v906 = *&v942[16];
  *&v915[16] = *&v942[136];
  *&v915[32] = *&v942[152];
  *&v915[48] = *&v942[168];
  *&v915[64] = *&v942[184];
  v912 = *&v942[72];
  v913 = *&v942[88];
  v914 = *&v942[104];
  *v915 = *&v942[120];
  v910 = *&v942[40];
  v911 = *&v942[56];
  v936 = v940;
  v937 = v941;
  v938 = *v942;
  *v939 = *&v942[16];
  *&v939[120] = *&v942[136];
  *&v939[136] = *&v942[152];
  *&v939[152] = *&v942[168];
  *&v939[168] = *&v942[184];
  *&v939[56] = *&v942[72];
  *&v939[72] = *&v942[88];
  *&v939[88] = *&v942[104];
  *&v939[104] = *&v942[120];
  *&v939[24] = *&v942[40];
  *&v939[40] = *&v942[56];
  *&v939[16] = *&v942[32];
  if (sub_2520CB6FC(&v936) == 1)
  {
    goto LABEL_611;
  }

  v927 = v903;
  v928 = v904;
  v929 = v905;
  v930 = v906;
  *v931 = v200;
  *&v931[104] = *&v915[16];
  *&v931[120] = *&v915[32];
  *&v931[136] = *&v915[48];
  *&v931[152] = *&v915[64];
  *&v931[40] = v912;
  *&v931[56] = v913;
  *&v931[72] = v914;
  *&v931[88] = *v915;
  *&v931[8] = v910;
  *&v931[24] = v911;
  *&v935[144] = *&v931[128];
  *&v935[160] = *&v931[144];
  *&v935[176] = *&v915[72];
  *&v935[80] = *&v931[64];
  *&v935[96] = *&v931[80];
  *&v935[128] = *&v931[112];
  *&v935[112] = *&v931[96];
  *&v935[16] = *v931;
  *&v935[32] = *&v931[16];
  *&v935[64] = *&v931[48];
  *&v935[48] = *&v931[32];
  v932 = v903;
  v933 = v904;
  *v935 = v906;
  v934 = v905;
  if (sub_2520CB6FC(&v932) == 1)
  {
    if (v207)
    {
      sub_2520CB714(*(v888 + 48) + 16 * v210);
      sub_2520CB018(v210, v888);
    }
  }

  else if (v207)
  {
    memmove((*(v888 + 56) + 232 * v210), &v927, 0xE8uLL);
  }

  else
  {
    *&v942[160] = *&v931[128];
    *&v942[176] = *&v931[144];
    *&v942[192] = *&v931[160];
    *&v942[96] = *&v931[64];
    *&v942[112] = *&v931[80];
    *&v942[144] = *&v931[112];
    *&v942[128] = *&v931[96];
    *&v942[32] = *v931;
    *&v942[48] = *&v931[16];
    *&v942[80] = *&v931[48];
    *&v942[64] = *&v931[32];
    v940 = v927;
    v941 = v928;
    *&v942[16] = v930;
    *v942 = v929;
    sub_2520A8CE4(v210, v681, v679, &v940, v888);
  }

  v922 = v903;
  v923 = v904;
  v924 = v905;
  v925 = v906;
  *v926 = v200;
  *&v926[104] = *&v915[16];
  *&v926[120] = *&v915[32];
  *&v926[136] = *&v915[48];
  *&v926[152] = *&v915[64];
  *&v926[40] = v912;
  *&v926[56] = v913;
  *&v926[72] = v914;
  *&v926[88] = *v915;
  *&v926[8] = v910;
  *&v926[24] = v911;
  sub_2520A2D9C(&v927, &v916, &qword_27F4CDE30, &qword_2521444D8);
  sub_2520A2584(&v922, &qword_27F4CDE30, &qword_2521444D8);
  v29 = v678;
  *(v678 + v201) = v888;
  swift_endAccess();

  v166 = 0x277CBE000uLL;
LABEL_159:
  v213 = objc_allocWithZone(*(v166 + 3024));
  v214 = sub_252141B6C();
  v215 = [v213 initWithSuiteName_];

  if (!v215)
  {
LABEL_575:
    __break(1u);
    goto LABEL_576;
  }

  v216 = sub_252141B6C();
  v217 = [v215 objectForKey_];

  if (!v217)
  {
    v937 = 0u;
    v936 = 0u;
    sub_2520A2584(&v936, &unk_27F4CE0B0, &unk_252144AF0);
    goto LABEL_178;
  }

  sub_25214215C();
  swift_unknownObjectRelease();
  sub_2520A2584(&v936, &unk_27F4CE0B0, &unk_252144AF0);
  v218 = objc_allocWithZone(*(v166 + 3024));
  v219 = sub_252141B6C();
  v220 = [v218 initWithSuiteName_];

  if (!v220)
  {
LABEL_610:
    __break(1u);
LABEL_611:
    __break(1u);
    goto LABEL_612;
  }

  v221 = sub_252141B6C();
  [v220 doubleForKey_];
  v223 = v222;

  v224 = OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_tuningDict;
  swift_beginAccess();
  v225 = *(v29 + v224);
  v226 = swift_isUniquelyReferenced_nonNull_native();
  *&__src = *(v29 + v224);
  v227 = __src;
  *(v29 + v224) = 0x8000000000000000;
  v228 = sub_25213E648(v681, v679);
  v230 = v229;
  v231 = *(v227 + 16);
  v232 = (v229 & 1) == 0;
  if (__OFADD__(v231, v232))
  {
LABEL_547:
    __break(1u);
    goto LABEL_548;
  }

  v233 = v228;
  if (sub_2520CB1CC(v226, v231 + v232))
  {
    v234 = sub_25213E648(v681, v679);
    if ((v230 & 1) != (v235 & 1))
    {
      goto LABEL_651;
    }

    v233 = v234;
  }

  if (v230)
  {
    memmove(&v936, (*(__src + 56) + 232 * v233), 0xE8uLL);
    nullsub_1(&v936);
  }

  else
  {
    sub_2520CB6D4(&v936);
  }

  v898 = v938;
  v899 = *v939;
  *&v900 = *&v939[16];
  v897 = v937;
  v896 = v936;
  *v909 = *&v939[128];
  *&v909[16] = *&v939[144];
  *&v909[32] = *&v939[160];
  *&v909[48] = *&v939[176];
  v905 = *&v939[64];
  v906 = *&v939[80];
  v907 = *&v939[96];
  v908 = *&v939[112];
  v903 = *&v939[32];
  v904 = *&v939[48];
  v934 = v938;
  *v935 = *v939;
  *&v935[16] = *&v939[16];
  v933 = v937;
  v932 = v936;
  *&v935[128] = *&v939[128];
  *&v935[144] = *&v939[144];
  *&v935[160] = *&v939[160];
  *&v935[176] = *&v939[176];
  *&v935[64] = *&v939[64];
  *&v935[80] = *&v939[80];
  *&v935[96] = *&v939[96];
  *&v935[112] = *&v939[112];
  *&v935[32] = *&v939[32];
  *&v935[48] = *&v939[48];
  if (sub_2520CB6FC(&v932) == 1)
  {
    goto LABEL_613;
  }

  v924 = v898;
  v925 = v899;
  *v926 = v900;
  v923 = v897;
  v922 = v896;
  *&v926[8] = v223;
  *&v926[112] = *v909;
  *&v926[128] = *&v909[16];
  *&v926[144] = *&v909[32];
  *&v926[160] = *&v909[48];
  *&v926[48] = v905;
  *&v926[64] = v906;
  *&v926[80] = v907;
  *&v926[96] = v908;
  *&v926[16] = v903;
  *&v926[32] = v904;
  *&v931[128] = *&v909[16];
  *&v931[144] = *&v909[32];
  *&v931[160] = *&v909[48];
  *&v931[64] = v906;
  *&v931[80] = v907;
  *&v931[112] = *v909;
  *&v931[96] = v908;
  *v931 = *v926;
  *&v931[16] = v903;
  *&v931[48] = v905;
  *&v931[32] = v904;
  v927 = v896;
  v928 = v897;
  v930 = v899;
  v929 = v898;
  if (sub_2520CB6FC(&v927) == 1)
  {
    if (v230)
    {
      sub_2520CB714(*(__src + 48) + 16 * v233);
      sub_2520CB018(v233, __src);
    }
  }

  else if (v230)
  {
    memmove((*(__src + 56) + 232 * v233), &v922, 0xE8uLL);
  }

  else
  {
    *&v939[144] = *&v926[128];
    *&v939[160] = *&v926[144];
    *&v939[176] = *&v926[160];
    *&v939[80] = *&v926[64];
    *&v939[96] = *&v926[80];
    *&v939[128] = *&v926[112];
    *&v939[112] = *&v926[96];
    *&v939[16] = *v926;
    *&v939[32] = *&v926[16];
    *&v939[64] = *&v926[48];
    *&v939[48] = *&v926[32];
    v936 = v922;
    v937 = v923;
    *v939 = v925;
    v938 = v924;
    sub_2520A8CE4(v233, v681, v679, &v936, __src);
  }

  v918 = v898;
  v919 = v899;
  *&v920 = v900;
  v917 = v897;
  v916 = v896;
  *(&v920 + 1) = v223;
  *&v921[96] = *v909;
  *&v921[112] = *&v909[16];
  *&v921[128] = *&v909[32];
  *&v921[144] = *&v909[48];
  *&v921[32] = v905;
  *&v921[48] = v906;
  *&v921[64] = v907;
  *&v921[80] = v908;
  *v921 = v903;
  *&v921[16] = v904;
  sub_2520A2D9C(&v922, &v910, &qword_27F4CDE30, &qword_2521444D8);
  sub_2520A2584(&v916, &qword_27F4CDE30, &qword_2521444D8);
  v29 = v678;
  *(v678 + v224) = __src;
  swift_endAccess();

LABEL_178:
  v236 = objc_allocWithZone(*(v166 + 3024));
  v237 = sub_252141B6C();
  v238 = [v236 initWithSuiteName_];

  if (!v238)
  {
LABEL_576:
    __break(1u);
    goto LABEL_577;
  }

  v239 = sub_252141B6C();
  v240 = [v238 objectForKey_];

  if (!v240)
  {
    v933 = 0u;
    v932 = 0u;
    sub_2520A2584(&v932, &unk_27F4CE0B0, &unk_252144AF0);
    goto LABEL_197;
  }

  sub_25214215C();
  swift_unknownObjectRelease();
  sub_2520A2584(&v932, &unk_27F4CE0B0, &unk_252144AF0);
  v241 = objc_allocWithZone(*(v166 + 3024));
  v242 = sub_252141B6C();
  v243 = [v241 initWithSuiteName_];

  if (!v243)
  {
LABEL_612:
    __break(1u);
LABEL_613:
    __break(1u);
    goto LABEL_614;
  }

  v244 = sub_252141B6C();
  v245 = [v243 integerForKey_];

  v246 = OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_tuningDict;
  swift_beginAccess();
  v247 = *(v29 + v246);
  v248 = swift_isUniquelyReferenced_nonNull_native();
  *&__dst = *(v29 + v246);
  v249 = __dst;
  *(v29 + v246) = 0x8000000000000000;
  v250 = sub_25213E648(v681, v679);
  v252 = v251;
  v253 = *(v249 + 16);
  v254 = (v251 & 1) == 0;
  if (__OFADD__(v253, v254))
  {
LABEL_548:
    __break(1u);
    goto LABEL_549;
  }

  v255 = v250;
  if (sub_2520CB1CC(v248, v253 + v254))
  {
    v256 = sub_25213E648(v681, v679);
    if ((v252 & 1) != (v257 & 1))
    {
      goto LABEL_651;
    }

    v255 = v256;
    if ((v252 & 1) == 0)
    {
      goto LABEL_185;
    }

LABEL_188:
    memmove(&v932, (*(__dst + 56) + 232 * v255), 0xE8uLL);
    nullsub_1(&v932);
    goto LABEL_189;
  }

  if (v252)
  {
    goto LABEL_188;
  }

LABEL_185:
  sub_2520CB6D4(&v932);
LABEL_189:
  v890 = v934;
  v891 = *v935;
  v892 = *&v935[16];
  v889 = v933;
  v888 = v932;
  *v902 = *&v935[136];
  *&v902[16] = *&v935[152];
  *&v902[32] = *&v935[168];
  v898 = *&v935[72];
  v899 = *&v935[88];
  v901 = *&v935[120];
  v900 = *&v935[104];
  v897 = *&v935[56];
  v896 = *&v935[40];
  v929 = v934;
  v930 = *v935;
  *v931 = *&v935[16];
  v928 = v933;
  v927 = v932;
  *&v931[104] = *&v935[120];
  *&v931[120] = *&v935[136];
  *&v931[136] = *&v935[152];
  *&v931[152] = *&v935[168];
  *&v931[40] = *&v935[56];
  *&v931[56] = *&v935[72];
  *&v931[72] = *&v935[88];
  *&v931[88] = *&v935[104];
  *&v931[24] = *&v935[40];
  *&v931[16] = *&v935[32];
  if (sub_2520CB6FC(&v927) == 1)
  {
LABEL_615:
    __break(1u);
    goto LABEL_616;
  }

  v918 = v890;
  v919 = v891;
  v920 = v892;
  v917 = v889;
  v916 = v888;
  *&v921[88] = v901;
  *&v921[104] = *v902;
  *&v921[120] = *&v902[16];
  *&v921[136] = *&v902[32];
  *&v921[24] = v897;
  *&v921[40] = v898;
  *&v921[56] = v899;
  *v921 = v245;
  *&v921[72] = v900;
  *&v921[8] = v896;
  *&v926[128] = *&v921[112];
  *&v926[144] = *&v921[128];
  *&v926[160] = *&v902[40];
  *&v926[64] = *&v921[48];
  *&v926[80] = *&v921[64];
  *&v926[112] = *&v921[96];
  *&v926[96] = *&v921[80];
  *v926 = v892;
  *&v926[16] = *v921;
  *&v926[48] = *&v921[32];
  *&v926[32] = *&v921[16];
  v922 = v888;
  v923 = v889;
  v925 = v891;
  v924 = v890;
  if (sub_2520CB6FC(&v922) == 1)
  {
    if (v252)
    {
      sub_2520CB714(*(__dst + 48) + 16 * v255);
      sub_2520CB018(v255, __dst);
    }
  }

  else if (v252)
  {
    memmove((*(__dst + 56) + 232 * v255), &v916, 0xE8uLL);
  }

  else
  {
    *&v935[144] = *&v921[112];
    *&v935[160] = *&v921[128];
    *&v935[176] = *&v921[144];
    *&v935[80] = *&v921[48];
    *&v935[96] = *&v921[64];
    *&v935[128] = *&v921[96];
    *&v935[112] = *&v921[80];
    *&v935[16] = v920;
    *&v935[32] = *v921;
    *&v935[64] = *&v921[32];
    *&v935[48] = *&v921[16];
    v932 = v916;
    v933 = v917;
    *v935 = v919;
    v934 = v918;
    sub_2520A8CE4(v255, v681, v679, &v932, __dst);
  }

  v912 = v890;
  v913 = v891;
  v914 = v892;
  v911 = v889;
  v910 = v888;
  *&v915[88] = v901;
  *&v915[104] = *v902;
  *&v915[120] = *&v902[16];
  *&v915[136] = *&v902[32];
  *&v915[24] = v897;
  *&v915[40] = v898;
  *&v915[56] = v899;
  *&v915[72] = v900;
  *v915 = v245;
  *&v915[8] = v896;
  sub_2520A2D9C(&v916, &v903, &qword_27F4CDE30, &qword_2521444D8);
  sub_2520A2584(&v910, &qword_27F4CDE30, &qword_2521444D8);
  v29 = v678;
  *(v678 + v246) = __dst;
  swift_endAccess();

  v166 = 0x277CBE000uLL;
LABEL_197:
  v258 = objc_allocWithZone(*(v166 + 3024));
  v259 = sub_252141B6C();
  v260 = [v258 initWithSuiteName_];

  if (!v260)
  {
LABEL_577:
    __break(1u);
    goto LABEL_578;
  }

  v261 = sub_252141B6C();
  v262 = [v260 objectForKey_];

  if (!v262)
  {
    v928 = 0u;
    v927 = 0u;
    sub_2520A2584(&v927, &unk_27F4CE0B0, &unk_252144AF0);
    goto LABEL_216;
  }

  sub_25214215C();
  swift_unknownObjectRelease();
  sub_2520A2584(&v927, &unk_27F4CE0B0, &unk_252144AF0);
  v263 = objc_allocWithZone(*(v166 + 3024));
  v264 = sub_252141B6C();
  v265 = [v263 initWithSuiteName_];

  if (!v265)
  {
LABEL_614:
    __break(1u);
    goto LABEL_615;
  }

  v266 = sub_252141B6C();
  [v265 doubleForKey_];
  v268 = v267;

  v269 = OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_tuningDict;
  swift_beginAccess();
  v270 = *(v29 + v269);
  v271 = swift_isUniquelyReferenced_nonNull_native();
  *&v862 = *(v29 + v269);
  v272 = v862;
  *(v29 + v269) = 0x8000000000000000;
  v273 = sub_25213E648(v681, v679);
  v275 = v274;
  v276 = *(v272 + 16);
  v277 = (v274 & 1) == 0;
  if (__OFADD__(v276, v277))
  {
LABEL_549:
    __break(1u);
    goto LABEL_550;
  }

  v278 = v273;
  if (sub_2520CB1CC(v271, v276 + v277))
  {
    v279 = sub_25213E648(v681, v679);
    if ((v275 & 1) != (v280 & 1))
    {
      goto LABEL_651;
    }

    v278 = v279;
  }

  if (v275)
  {
    memmove(&v927, (*(v862 + 56) + 232 * v278), 0xE8uLL);
    nullsub_1(&v927);
  }

  else
  {
    sub_2520CB6D4(&v927);
  }

  v882 = v929;
  v883 = v930;
  v884 = *v931;
  *&v885 = *&v931[16];
  __src = v927;
  v881 = v928;
  v891 = *&v931[80];
  v890 = *&v931[64];
  *&v895[16] = *&v931[160];
  *v895 = *&v931[144];
  v894 = *&v931[128];
  v892 = *&v931[96];
  v893 = *&v931[112];
  v889 = *&v931[48];
  v888 = *&v931[32];
  v924 = v929;
  v925 = v930;
  *v926 = *v931;
  *&v926[16] = *&v931[16];
  v922 = v927;
  v923 = v928;
  *&v926[160] = *&v931[160];
  *&v926[144] = *&v931[144];
  *&v926[128] = *&v931[128];
  *&v926[112] = *&v931[112];
  *&v926[96] = *&v931[96];
  *&v926[80] = *&v931[80];
  *&v926[64] = *&v931[64];
  *&v926[48] = *&v931[48];
  *&v926[32] = *&v931[32];
  if (sub_2520CB6FC(&v922) == 1)
  {
    goto LABEL_617;
  }

  v912 = v882;
  v913 = v883;
  v914 = v884;
  *v915 = v885;
  v910 = __src;
  v911 = v881;
  *&v915[8] = v268;
  *&v915[64] = v891;
  *&v915[48] = v890;
  *&v915[16] = v888;
  *&v915[32] = v889;
  *&v915[144] = *&v895[16];
  *&v915[128] = *v895;
  *&v915[112] = v894;
  *&v915[80] = v892;
  *&v915[96] = v893;
  *&v921[112] = v894;
  *&v921[128] = *v895;
  *&v921[144] = *&v895[16];
  *&v921[48] = v890;
  *&v921[64] = v891;
  *&v921[96] = v893;
  *&v921[80] = v892;
  v920 = v884;
  *v921 = *v915;
  *&v921[32] = v889;
  *&v921[16] = v888;
  v916 = __src;
  v917 = v881;
  v919 = v883;
  v918 = v882;
  if (sub_2520CB6FC(&v916) == 1)
  {
    if (v275)
    {
      sub_2520CB714(*(v862 + 48) + 16 * v278);
      sub_2520CB018(v278, v862);
    }
  }

  else if (v275)
  {
    memmove((*(v862 + 56) + 232 * v278), &v910, 0xE8uLL);
  }

  else
  {
    *&v931[128] = *&v915[112];
    *&v931[144] = *&v915[128];
    *&v931[160] = *&v915[144];
    *&v931[64] = *&v915[48];
    *&v931[80] = *&v915[64];
    *&v931[112] = *&v915[96];
    *&v931[96] = *&v915[80];
    *v931 = v914;
    *&v931[16] = *v915;
    *&v931[48] = *&v915[32];
    *&v931[32] = *&v915[16];
    v927 = v910;
    v928 = v911;
    v930 = v913;
    v929 = v912;
    sub_2520A8CE4(v278, v681, v679, &v927, v862);
  }

  v905 = v882;
  v906 = v883;
  v907 = v884;
  *&v908 = v885;
  v903 = __src;
  v904 = v881;
  *(&v908 + 1) = v268;
  *&v909[48] = v891;
  *&v909[32] = v890;
  *v909 = v888;
  *&v909[16] = v889;
  *&v909[128] = *&v895[16];
  *&v909[112] = *v895;
  *&v909[96] = v894;
  *&v909[64] = v892;
  *&v909[80] = v893;
  sub_2520A2D9C(&v910, &v896, &qword_27F4CDE30, &qword_2521444D8);
  sub_2520A2584(&v903, &qword_27F4CDE30, &qword_2521444D8);
  v29 = v678;
  *(v678 + v269) = v862;
  swift_endAccess();

LABEL_216:
  v281 = objc_allocWithZone(*(v166 + 3024));
  v282 = sub_252141B6C();
  v283 = [v281 initWithSuiteName_];

  if (!v283)
  {
LABEL_578:
    __break(1u);
    goto LABEL_579;
  }

  v284 = sub_252141B6C();
  v285 = [v283 objectForKey_];

  if (!v285)
  {
    v923 = 0u;
    v922 = 0u;
    sub_2520A2584(&v922, &unk_27F4CE0B0, &unk_252144AF0);
    goto LABEL_235;
  }

  sub_25214215C();
  swift_unknownObjectRelease();
  sub_2520A2584(&v922, &unk_27F4CE0B0, &unk_252144AF0);
  v286 = objc_allocWithZone(*(v166 + 3024));
  v287 = sub_252141B6C();
  v288 = [v286 initWithSuiteName_];

  if (!v288)
  {
LABEL_616:
    __break(1u);
LABEL_617:
    __break(1u);
    goto LABEL_618;
  }

  v289 = sub_252141B6C();
  [v288 doubleForKey_];
  v291 = v290;

  v292 = OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_tuningDict;
  swift_beginAccess();
  v293 = *(v29 + v292);
  v294 = swift_isUniquelyReferenced_nonNull_native();
  *&v852 = *(v29 + v292);
  v295 = v852;
  *(v29 + v292) = 0x8000000000000000;
  v296 = sub_25213E648(v681, v679);
  v298 = v297;
  v299 = *(v295 + 16);
  v300 = (v297 & 1) == 0;
  if (__OFADD__(v299, v300))
  {
LABEL_550:
    __break(1u);
    goto LABEL_551;
  }

  v301 = v296;
  if (sub_2520CB1CC(v294, v299 + v300))
  {
    v302 = sub_25213E648(v681, v679);
    if ((v298 & 1) != (v303 & 1))
    {
      goto LABEL_651;
    }

    v301 = v302;
  }

  if (v298)
  {
    memmove(&v922, (*(v852 + 56) + 232 * v301), 0xE8uLL);
    nullsub_1(&v922);
  }

  else
  {
    sub_2520CB6D4(&v922);
  }

  v873 = v924;
  v874 = v925;
  v875 = *v926;
  v876 = *&v926[16];
  __dst = v922;
  v872 = v923;
  v883 = *&v926[88];
  v882 = *&v926[72];
  v881 = *&v926[56];
  __src = *&v926[40];
  *v887 = *&v926[152];
  v886 = *&v926[136];
  v885 = *&v926[120];
  v884 = *&v926[104];
  v918 = v924;
  v919 = v925;
  v920 = *v926;
  *v921 = *&v926[16];
  v916 = v922;
  v917 = v923;
  *&v921[136] = *&v926[152];
  *&v921[120] = *&v926[136];
  *&v921[104] = *&v926[120];
  *&v921[88] = *&v926[104];
  *&v921[72] = *&v926[88];
  *&v921[56] = *&v926[72];
  *&v921[40] = *&v926[56];
  *&v921[24] = *&v926[40];
  *&v921[16] = *&v926[32];
  if (sub_2520CB6FC(&v916) == 1)
  {
    goto LABEL_619;
  }

  v905 = v873;
  v906 = v874;
  v907 = v875;
  v908 = v876;
  v903 = __dst;
  v904 = v872;
  *v909 = v291;
  *&v909[56] = v883;
  *&v909[40] = v882;
  *&v909[24] = v881;
  *&v909[8] = __src;
  *&v909[120] = *v887;
  *&v909[104] = v886;
  *&v909[88] = v885;
  *&v909[72] = v884;
  v911 = v872;
  v910 = __dst;
  *v915 = v876;
  v914 = v875;
  v912 = v873;
  v913 = v874;
  *&v915[64] = *&v909[48];
  *&v915[48] = *&v909[32];
  *&v915[16] = *v909;
  *&v915[32] = *&v909[16];
  *&v915[144] = *&v887[8];
  *&v915[128] = *&v909[112];
  *&v915[112] = *&v909[96];
  *&v915[80] = *&v909[64];
  *&v915[96] = *&v909[80];
  if (sub_2520CB6FC(&v910) == 1)
  {
    if (v298)
    {
      sub_2520CB714(*(v852 + 48) + 16 * v301);
      sub_2520CB018(v301, v852);
    }
  }

  else if (v298)
  {
    memmove((*(v852 + 56) + 232 * v301), &v903, 0xE8uLL);
  }

  else
  {
    *&v926[128] = *&v909[96];
    *&v926[144] = *&v909[112];
    *&v926[160] = *&v909[128];
    *&v926[64] = *&v909[32];
    *&v926[80] = *&v909[48];
    *&v926[112] = *&v909[80];
    *&v926[96] = *&v909[64];
    *v926 = v907;
    *&v926[16] = v908;
    *&v926[48] = *&v909[16];
    *&v926[32] = *v909;
    v922 = v903;
    v923 = v904;
    v925 = v906;
    v924 = v905;
    sub_2520A8CE4(v301, v681, v679, &v922, v852);
  }

  v898 = v873;
  v899 = v874;
  v900 = v875;
  v901 = v876;
  v896 = __dst;
  v897 = v872;
  *v902 = v291;
  *&v902[56] = v883;
  *&v902[40] = v882;
  *&v902[24] = v881;
  *&v902[8] = __src;
  *&v902[120] = *v887;
  *&v902[104] = v886;
  *&v902[88] = v885;
  *&v902[72] = v884;
  sub_2520A2D9C(&v903, &v888, &qword_27F4CDE30, &qword_2521444D8);
  sub_2520A2584(&v896, &qword_27F4CDE30, &qword_2521444D8);
  *(v29 + v292) = v852;
  swift_endAccess();

  v166 = 0x277CBE000uLL;
LABEL_235:
  v304 = objc_allocWithZone(*(v166 + 3024));
  v305 = sub_252141B6C();
  v306 = [v304 initWithSuiteName_];

  if (!v306)
  {
LABEL_579:
    __break(1u);
    goto LABEL_580;
  }

  v307 = sub_252141B6C();
  v308 = [v306 objectForKey_];

  if (!v308)
  {
    v917 = 0u;
    v916 = 0u;
    sub_2520A2584(&v916, &unk_27F4CE0B0, &unk_252144AF0);
    goto LABEL_254;
  }

  sub_25214215C();
  swift_unknownObjectRelease();
  sub_2520A2584(&v916, &unk_27F4CE0B0, &unk_252144AF0);
  v309 = objc_allocWithZone(*(v166 + 3024));
  v310 = sub_252141B6C();
  v311 = [v309 initWithSuiteName_];

  if (!v311)
  {
LABEL_618:
    __break(1u);
LABEL_619:
    __break(1u);
    goto LABEL_620;
  }

  v312 = sub_252141B6C();
  v313 = [v311 integerForKey_];

  v314 = OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_tuningDict;
  swift_beginAccess();
  v315 = *(v29 + v314);
  v316 = swift_isUniquelyReferenced_nonNull_native();
  *&v842 = *(v29 + v314);
  v317 = v842;
  *(v29 + v314) = 0x8000000000000000;
  v318 = sub_25213E648(v681, v679);
  v320 = v319;
  v321 = *(v317 + 16);
  v322 = (v319 & 1) == 0;
  if (__OFADD__(v321, v322))
  {
LABEL_551:
    __break(1u);
    goto LABEL_552;
  }

  v323 = v318;
  if (sub_2520CB1CC(v316, v321 + v322))
  {
    v324 = sub_25213E648(v681, v679);
    if ((v320 & 1) != (v325 & 1))
    {
      goto LABEL_651;
    }

    v323 = v324;
  }

  if (v320)
  {
    memmove(&v916, (*(v842 + 56) + 232 * v323), 0xE8uLL);
    nullsub_1(&v916);
  }

  else
  {
    sub_2520CB6D4(&v916);
  }

  v866 = v920;
  v867 = *v921;
  *&v868 = *&v921[16];
  v862 = v916;
  v863 = v917;
  v865 = v919;
  v864 = v918;
  v874 = *&v921[80];
  v873 = *&v921[64];
  v872 = *&v921[48];
  __dst = *&v921[32];
  *&v878 = *&v921[144];
  v877 = *&v921[128];
  v876 = *&v921[112];
  v875 = *&v921[96];
  v914 = v920;
  *v915 = *v921;
  *&v915[144] = *&v921[144];
  v910 = v916;
  v911 = v917;
  v913 = v919;
  v912 = v918;
  *&v915[80] = *&v921[80];
  *&v915[64] = *&v921[64];
  *&v915[48] = *&v921[48];
  *&v915[32] = *&v921[32];
  *&v915[128] = *&v921[128];
  *&v915[112] = *&v921[112];
  *&v915[96] = *&v921[96];
  *&v915[16] = *&v921[16];
  if (sub_2520CB6FC(&v910) == 1)
  {
    goto LABEL_621;
  }

  v900 = v866;
  v901 = v867;
  v896 = v862;
  v897 = v863;
  v899 = v865;
  v898 = v864;
  *v902 = v868;
  *&v902[8] = v313;
  *&v902[64] = v874;
  *&v902[48] = v873;
  *&v902[32] = v872;
  *&v902[16] = __dst;
  *&v902[128] = v878;
  *&v902[112] = v877;
  *&v902[96] = v876;
  *&v902[80] = v875;
  v904 = v863;
  v903 = v862;
  v908 = v867;
  v907 = v866;
  v905 = v864;
  v906 = v865;
  *&v909[48] = v873;
  *&v909[32] = v872;
  *v909 = *v902;
  *&v909[16] = __dst;
  *&v909[128] = v878;
  *&v909[112] = v877;
  *&v909[96] = v876;
  *&v909[64] = v874;
  *&v909[80] = v875;
  if (sub_2520CB6FC(&v903) == 1)
  {
    if (v320)
    {
      sub_2520CB714(*(v842 + 48) + 16 * v323);
      sub_2520CB018(v323, v842);
    }
  }

  else if (v320)
  {
    memmove((*(v842 + 56) + 232 * v323), &v896, 0xE8uLL);
  }

  else
  {
    *&v921[112] = *&v902[96];
    *&v921[128] = *&v902[112];
    *&v921[144] = *&v902[128];
    *&v921[48] = *&v902[32];
    *&v921[64] = *&v902[48];
    *&v921[96] = *&v902[80];
    *&v921[80] = *&v902[64];
    v920 = v900;
    *v921 = v901;
    *&v921[32] = *&v902[16];
    *&v921[16] = *v902;
    v916 = v896;
    v917 = v897;
    v919 = v899;
    v918 = v898;
    sub_2520A8CE4(v323, v681, v679, &v916, v842);
  }

  v892 = v866;
  v893 = v867;
  v888 = v862;
  v889 = v863;
  v891 = v865;
  v890 = v864;
  *&v894 = v868;
  *(&v894 + 1) = v313;
  *&v895[48] = v874;
  *&v895[32] = v873;
  *&v895[16] = v872;
  *v895 = __dst;
  *&v895[112] = v878;
  *&v895[96] = v877;
  *&v895[80] = v876;
  *&v895[64] = v875;
  sub_2520A2D9C(&v896, &__src, &qword_27F4CDE30, &qword_2521444D8);
  sub_2520A2584(&v888, &qword_27F4CDE30, &qword_2521444D8);
  v29 = v678;
  *(v678 + v314) = v842;
  swift_endAccess();

LABEL_254:
  v326 = objc_allocWithZone(*(v166 + 3024));
  v327 = sub_252141B6C();
  v328 = [v326 initWithSuiteName_];

  if (!v328)
  {
LABEL_580:
    __break(1u);
    goto LABEL_581;
  }

  v329 = sub_252141B6C();
  v330 = [v328 objectForKey_];

  if (!v330)
  {
    v911 = 0u;
    v910 = 0u;
    sub_2520A2584(&v910, &unk_27F4CE0B0, &unk_252144AF0);
    goto LABEL_273;
  }

  sub_25214215C();
  swift_unknownObjectRelease();
  sub_2520A2584(&v910, &unk_27F4CE0B0, &unk_252144AF0);
  v331 = objc_allocWithZone(*(v166 + 3024));
  v332 = sub_252141B6C();
  v333 = [v331 initWithSuiteName_];

  if (!v333)
  {
LABEL_620:
    __break(1u);
LABEL_621:
    __break(1u);
    goto LABEL_622;
  }

  v334 = sub_252141B6C();
  [v333 doubleForKey_];
  v336 = v335;

  v337 = OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_tuningDict;
  swift_beginAccess();
  v338 = *(v29 + v337);
  v339 = swift_isUniquelyReferenced_nonNull_native();
  *&v831 = *(v29 + v337);
  v340 = v831;
  *(v29 + v337) = 0x8000000000000000;
  v341 = sub_25213E648(v681, v679);
  v343 = v342;
  v344 = *(v340 + 16);
  v345 = (v342 & 1) == 0;
  if (__OFADD__(v344, v345))
  {
LABEL_552:
    __break(1u);
    goto LABEL_553;
  }

  v346 = v341;
  if (sub_2520CB1CC(v339, v344 + v345))
  {
    v347 = sub_25213E648(v681, v679);
    if ((v343 & 1) != (v348 & 1))
    {
      goto LABEL_651;
    }

    v346 = v347;
  }

  if (v343)
  {
    memmove(&v910, (*(v831 + 56) + 232 * v346), 0xE8uLL);
    nullsub_1(&v910);
  }

  else
  {
    sub_2520CB6D4(&v910);
  }

  v866 = v914;
  v867 = *v915;
  v868 = *&v915[16];
  v862 = v910;
  v863 = v911;
  v865 = v913;
  v864 = v912;
  v853 = *&v915[56];
  v852 = *&v915[40];
  v858 = *&v915[136];
  v857 = *&v915[120];
  v856 = *&v915[104];
  v854 = *&v915[72];
  v855 = *&v915[88];
  v907 = v914;
  v908 = *v915;
  *v909 = *&v915[16];
  v903 = v910;
  v904 = v911;
  v906 = v913;
  v905 = v912;
  *&v909[56] = *&v915[72];
  *&v909[40] = *&v915[56];
  *&v909[24] = *&v915[40];
  *&v909[120] = *&v915[136];
  *&v909[104] = *&v915[120];
  *&v909[88] = *&v915[104];
  *&v909[72] = *&v915[88];
  *&v909[16] = *&v915[32];
  if (sub_2520CB6FC(&v903) == 1)
  {
    goto LABEL_623;
  }

  v892 = v866;
  v893 = v867;
  v894 = v868;
  v888 = v862;
  v889 = v863;
  v891 = v865;
  v890 = v864;
  *v895 = v336;
  *&v895[40] = v854;
  *&v895[24] = v853;
  *&v895[8] = v852;
  *&v895[104] = v858;
  *&v895[88] = v857;
  *&v895[72] = v856;
  *&v895[56] = v855;
  v897 = v863;
  v896 = v862;
  v901 = v867;
  v900 = v866;
  v898 = v864;
  v899 = v865;
  *&v902[48] = *&v895[32];
  *&v902[32] = *&v895[16];
  *v902 = v868;
  *&v902[16] = *v895;
  *&v902[128] = *(&v858 + 1);
  *&v902[112] = *&v895[96];
  *&v902[96] = *&v895[80];
  *&v902[64] = *&v895[48];
  *&v902[80] = *&v895[64];
  if (sub_2520CB6FC(&v896) == 1)
  {
    if (v343)
    {
      sub_2520CB714(*(v831 + 48) + 16 * v346);
      sub_2520CB018(v346, v831);
    }
  }

  else if (v343)
  {
    memmove((*(v831 + 56) + 232 * v346), &v888, 0xE8uLL);
  }

  else
  {
    *&v915[112] = *&v895[80];
    *&v915[128] = *&v895[96];
    *&v915[144] = *&v895[112];
    *&v915[48] = *&v895[16];
    *&v915[64] = *&v895[32];
    *&v915[96] = *&v895[64];
    *&v915[80] = *&v895[48];
    v914 = v892;
    *v915 = v893;
    *&v915[32] = *v895;
    *&v915[16] = v894;
    v910 = v888;
    v911 = v889;
    v913 = v891;
    v912 = v890;
    sub_2520A8CE4(v346, v681, v679, &v910, v831);
  }

  v884 = v866;
  v885 = v867;
  v886 = v868;
  __src = v862;
  v881 = v863;
  v883 = v865;
  v882 = v864;
  *v887 = v336;
  *&v887[40] = v854;
  *&v887[24] = v853;
  *&v887[8] = v852;
  *&v887[104] = v858;
  *&v887[88] = v857;
  *&v887[72] = v856;
  *&v887[56] = v855;
  sub_2520A2D9C(&v888, &__dst, &qword_27F4CDE30, &qword_2521444D8);
  sub_2520A2584(&__src, &qword_27F4CDE30, &qword_2521444D8);
  *(v29 + v337) = v831;
  swift_endAccess();

  v166 = 0x277CBE000uLL;
LABEL_273:
  v349 = objc_allocWithZone(*(v166 + 3024));
  v350 = sub_252141B6C();
  v351 = [v349 initWithSuiteName_];

  if (!v351)
  {
LABEL_581:
    __break(1u);
    goto LABEL_582;
  }

  v352 = sub_252141B6C();
  v353 = [v351 objectForKey_];

  if (!v353)
  {
    v904 = 0u;
    v903 = 0u;
    sub_2520A2584(&v903, &unk_27F4CE0B0, &unk_252144AF0);
    goto LABEL_292;
  }

  sub_25214215C();
  swift_unknownObjectRelease();
  sub_2520A2584(&v903, &unk_27F4CE0B0, &unk_252144AF0);
  v354 = objc_allocWithZone(*(v166 + 3024));
  v355 = sub_252141B6C();
  v356 = [v354 initWithSuiteName_];

  if (!v356)
  {
LABEL_622:
    __break(1u);
LABEL_623:
    __break(1u);
    goto LABEL_624;
  }

  v357 = sub_252141B6C();
  [v356 doubleForKey_];
  v359 = v358;

  v360 = OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_tuningDict;
  swift_beginAccess();
  v361 = *(v29 + v360);
  v362 = swift_isUniquelyReferenced_nonNull_native();
  *&v820 = *(v29 + v360);
  v363 = v820;
  *(v29 + v360) = 0x8000000000000000;
  v364 = sub_25213E648(v681, v679);
  v366 = v365;
  v367 = *(v363 + 16);
  v368 = (v365 & 1) == 0;
  if (__OFADD__(v367, v368))
  {
LABEL_553:
    __break(1u);
    goto LABEL_554;
  }

  v369 = v364;
  if (sub_2520CB1CC(v362, v367 + v368))
  {
    v370 = sub_25213E648(v681, v679);
    if ((v366 & 1) != (v371 & 1))
    {
      goto LABEL_651;
    }

    v369 = v370;
  }

  if (v366)
  {
    memmove(&v903, (*(v820 + 56) + 232 * v369), 0xE8uLL);
    nullsub_1(&v903);
  }

  else
  {
    sub_2520CB6D4(&v903);
  }

  v856 = v907;
  v857 = v908;
  v858 = *v909;
  *&v859 = *&v909[16];
  v852 = v903;
  v853 = v904;
  v854 = v905;
  v855 = v906;
  *&v848 = *&v909[128];
  v847 = *&v909[112];
  v846 = *&v909[96];
  v842 = *&v909[32];
  v843 = *&v909[48];
  v845 = *&v909[80];
  v844 = *&v909[64];
  v900 = v907;
  v901 = v908;
  *v902 = *v909;
  *&v902[16] = *&v909[16];
  v896 = v903;
  v897 = v904;
  v898 = v905;
  v899 = v906;
  *&v902[48] = *&v909[48];
  *&v902[32] = *&v909[32];
  *&v902[128] = *&v909[128];
  *&v902[112] = *&v909[112];
  *&v902[96] = *&v909[96];
  *&v902[64] = *&v909[64];
  *&v902[80] = *&v909[80];
  if (sub_2520CB6FC(&v896) == 1)
  {
    goto LABEL_625;
  }

  *v887 = v859;
  v884 = v856;
  v885 = v857;
  v886 = v858;
  __src = v852;
  v881 = v853;
  v882 = v854;
  v883 = v855;
  *&v887[8] = v359;
  *&v887[32] = v843;
  *&v887[16] = v842;
  *&v887[112] = v848;
  *&v887[96] = v847;
  *&v887[80] = v846;
  *&v887[48] = v844;
  *&v887[64] = v845;
  v889 = v853;
  v888 = v852;
  v893 = v857;
  v892 = v856;
  v890 = v854;
  v891 = v855;
  *&v895[32] = v843;
  *&v895[16] = v842;
  v894 = v858;
  *v895 = *v887;
  *&v895[112] = v848;
  *&v895[96] = v847;
  *&v895[80] = v846;
  *&v895[48] = v844;
  *&v895[64] = v845;
  if (sub_2520CB6FC(&v888) == 1)
  {
    if (v366)
    {
      sub_2520CB714(*(v820 + 48) + 16 * v369);
      sub_2520CB018(v369, v820);
    }
  }

  else if (v366)
  {
    memmove((*(v820 + 56) + 232 * v369), &__src, 0xE8uLL);
  }

  else
  {
    *&v909[96] = *&v887[80];
    *&v909[112] = *&v887[96];
    *&v909[128] = *&v887[112];
    *&v909[32] = *&v887[16];
    *&v909[48] = *&v887[32];
    *&v909[80] = *&v887[64];
    *&v909[64] = *&v887[48];
    v907 = v884;
    v908 = v885;
    *&v909[16] = *v887;
    *v909 = v886;
    v903 = __src;
    v904 = v881;
    v906 = v883;
    v905 = v882;
    sub_2520A8CE4(v369, v681, v679, &v903, v820);
  }

  v875 = v856;
  v876 = v857;
  v877 = v858;
  *&v878 = v859;
  __dst = v852;
  v872 = v853;
  v873 = v854;
  v874 = v855;
  *(&v878 + 1) = v359;
  *&v879[96] = v848;
  *&v879[80] = v847;
  *&v879[64] = v846;
  *&v879[48] = v845;
  *&v879[32] = v844;
  *&v879[16] = v843;
  *v879 = v842;
  sub_2520A2D9C(&__src, &v862, &qword_27F4CDE30, &qword_2521444D8);
  sub_2520A2584(&__dst, &qword_27F4CDE30, &qword_2521444D8);
  *(v29 + v360) = v820;
  swift_endAccess();

  v166 = 0x277CBE000uLL;
LABEL_292:
  v372 = objc_allocWithZone(*(v166 + 3024));
  v373 = sub_252141B6C();
  v374 = [v372 initWithSuiteName_];

  if (!v374)
  {
LABEL_582:
    __break(1u);
    goto LABEL_583;
  }

  v375 = sub_252141B6C();
  v376 = [v374 objectForKey_];

  if (!v376)
  {
    v897 = 0u;
    v896 = 0u;
    sub_2520A2584(&v896, &unk_27F4CE0B0, &unk_252144AF0);
    v395 = v681;
    goto LABEL_311;
  }

  sub_25214215C();
  swift_unknownObjectRelease();
  sub_2520A2584(&v896, &unk_27F4CE0B0, &unk_252144AF0);
  v377 = objc_allocWithZone(*(v166 + 3024));
  v378 = sub_252141B6C();
  v379 = [v377 initWithSuiteName_];

  if (!v379)
  {
LABEL_624:
    __break(1u);
LABEL_625:
    __break(1u);
    goto LABEL_626;
  }

  v380 = sub_252141B6C();
  [v379 doubleForKey_];
  v382 = v381;

  v383 = OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_tuningDict;
  swift_beginAccess();
  v384 = *(v29 + v383);
  v385 = swift_isUniquelyReferenced_nonNull_native();
  *&v808 = *(v29 + v383);
  v386 = v808;
  *(v29 + v383) = 0x8000000000000000;
  v387 = sub_25213E648(v681, v679);
  v389 = v388;
  v390 = *(v386 + 16);
  v391 = (v388 & 1) == 0;
  if (__OFADD__(v390, v391))
  {
LABEL_554:
    __break(1u);
    goto LABEL_555;
  }

  v392 = v387;
  if (sub_2520CB1CC(v385, v390 + v391))
  {
    v393 = sub_25213E648(v681, v679);
    if ((v389 & 1) != (v394 & 1))
    {
      goto LABEL_651;
    }

    v392 = v393;
  }

  if (v389)
  {
    memmove(&v896, (*(v808 + 56) + 232 * v392), 0xE8uLL);
    nullsub_1(&v896);
  }

  else
  {
    sub_2520CB6D4(&v896);
  }

  v846 = v900;
  v847 = v901;
  v848 = *v902;
  v849 = *&v902[16];
  v842 = v896;
  v843 = v897;
  v844 = v898;
  v845 = v899;
  v836 = *&v902[120];
  v835 = *&v902[104];
  v834 = *&v902[88];
  v833 = *&v902[72];
  v832 = *&v902[56];
  v831 = *&v902[40];
  v892 = v900;
  v893 = v901;
  v894 = *v902;
  *v895 = *&v902[16];
  v888 = v896;
  v889 = v897;
  v890 = v898;
  v891 = v899;
  *&v895[40] = *&v902[56];
  *&v895[24] = *&v902[40];
  *&v895[104] = *&v902[120];
  *&v895[88] = *&v902[104];
  *&v895[72] = *&v902[88];
  *&v895[56] = *&v902[72];
  *&v895[16] = *&v902[32];
  if (sub_2520CB6FC(&v888) == 1)
  {
    goto LABEL_627;
  }

  v875 = v846;
  v876 = v847;
  v877 = v848;
  v878 = v849;
  __dst = v842;
  v872 = v843;
  v873 = v844;
  v874 = v845;
  *v879 = v382;
  *&v879[24] = v832;
  *&v879[8] = v831;
  *&v879[88] = v836;
  *&v879[72] = v835;
  *&v879[56] = v834;
  *&v879[40] = v833;
  v881 = v843;
  __src = v842;
  v885 = v847;
  v884 = v846;
  v882 = v844;
  v883 = v845;
  *&v887[32] = *&v879[16];
  *&v887[16] = *v879;
  v886 = v848;
  *v887 = v849;
  *&v887[112] = *(&v836 + 1);
  *&v887[96] = *&v879[80];
  *&v887[80] = *&v879[64];
  *&v887[48] = *&v879[32];
  *&v887[64] = *&v879[48];
  v395 = v681;
  if (sub_2520CB6FC(&__src) == 1)
  {
    if (v389)
    {
      sub_2520CB714(*(v808 + 48) + 16 * v392);
      sub_2520CB018(v392, v808);
    }
  }

  else if (v389)
  {
    memmove((*(v808 + 56) + 232 * v392), &__dst, 0xE8uLL);
  }

  else
  {
    *&v902[96] = *&v879[64];
    *&v902[112] = *&v879[80];
    *&v902[128] = *&v879[96];
    *&v902[32] = *v879;
    *&v902[48] = *&v879[16];
    *&v902[80] = *&v879[48];
    *&v902[64] = *&v879[32];
    v900 = v875;
    v901 = v876;
    *&v902[16] = v878;
    *v902 = v877;
    v896 = __dst;
    v897 = v872;
    v899 = v874;
    v898 = v873;
    sub_2520A8CE4(v392, v681, v679, &v896, v808);
  }

  v866 = v846;
  v867 = v847;
  v868 = v848;
  v869 = v849;
  v862 = v842;
  v863 = v843;
  v864 = v844;
  v865 = v845;
  *v870 = v382;
  *&v870[88] = v836;
  *&v870[72] = v835;
  *&v870[56] = v834;
  *&v870[40] = v833;
  *&v870[24] = v832;
  *&v870[8] = v831;
  sub_2520A2D9C(&__dst, &v852, &qword_27F4CDE30, &qword_2521444D8);
  sub_2520A2584(&v862, &qword_27F4CDE30, &qword_2521444D8);
  v29 = v678;
  *(v678 + v383) = v808;
  swift_endAccess();

  v166 = 0x277CBE000uLL;
LABEL_311:
  v396 = objc_allocWithZone(*(v166 + 3024));
  v397 = sub_252141B6C();
  v398 = [v396 initWithSuiteName_];

  if (!v398)
  {
LABEL_583:
    __break(1u);
    goto LABEL_584;
  }

  v399 = sub_252141B6C();
  v400 = [v398 objectForKey_];

  if (!v400)
  {
    v889 = 0u;
    v888 = 0u;
    sub_2520A2584(&v888, &unk_27F4CE0B0, &unk_252144AF0);
    goto LABEL_330;
  }

  sub_25214215C();
  swift_unknownObjectRelease();
  sub_2520A2584(&v888, &unk_27F4CE0B0, &unk_252144AF0);
  v401 = objc_allocWithZone(*(v166 + 3024));
  v402 = sub_252141B6C();
  v403 = [v401 initWithSuiteName_];

  if (!v403)
  {
LABEL_626:
    __break(1u);
LABEL_627:
    __break(1u);
    goto LABEL_628;
  }

  v404 = sub_252141B6C();
  [v403 doubleForKey_];
  v406 = v405;

  v407 = OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_tuningDict;
  swift_beginAccess();
  v408 = *(v29 + v407);
  v409 = swift_isUniquelyReferenced_nonNull_native();
  *&v796 = *(v29 + v407);
  v410 = v796;
  *(v29 + v407) = 0x8000000000000000;
  v411 = sub_25213E648(v395, v679);
  v413 = v412;
  v414 = *(v410 + 16);
  v415 = (v412 & 1) == 0;
  if (__OFADD__(v414, v415))
  {
LABEL_555:
    __break(1u);
    goto LABEL_556;
  }

  v416 = v411;
  if (sub_2520CB1CC(v409, v414 + v415))
  {
    v417 = sub_25213E648(v395, v679);
    if ((v413 & 1) != (v418 & 1))
    {
      goto LABEL_651;
    }

    v416 = v417;
  }

  if (v413)
  {
    memmove(&v888, (*(v796 + 56) + 232 * v416), 0xE8uLL);
    nullsub_1(&v888);
  }

  else
  {
    sub_2520CB6D4(&v888);
  }

  v837 = v894;
  v838 = *v895;
  *&v839 = *&v895[16];
  v833 = v890;
  v834 = v891;
  v836 = v893;
  v835 = v892;
  v832 = v889;
  v831 = v888;
  v822 = *&v895[64];
  v823 = *&v895[80];
  v824 = *&v895[96];
  *&v825 = *&v895[112];
  v820 = *&v895[32];
  v821 = *&v895[48];
  v886 = v894;
  *v887 = *v895;
  *&v887[16] = *&v895[16];
  v882 = v890;
  v883 = v891;
  v885 = v893;
  v884 = v892;
  v881 = v889;
  __src = v888;
  *&v887[64] = *&v895[64];
  *&v887[80] = *&v895[80];
  *&v887[96] = *&v895[96];
  *&v887[112] = *&v895[112];
  *&v887[32] = *&v895[32];
  *&v887[48] = *&v895[48];
  if (sub_2520CB6FC(&__src) == 1)
  {
    goto LABEL_629;
  }

  v868 = v837;
  v869 = v838;
  *v870 = v839;
  v864 = v833;
  v865 = v834;
  v867 = v836;
  v866 = v835;
  v863 = v832;
  v862 = v831;
  *&v870[8] = v406;
  *&v870[48] = v822;
  *&v870[64] = v823;
  *&v870[80] = v824;
  *&v870[96] = v825;
  *&v870[16] = v820;
  *&v870[32] = v821;
  v872 = v832;
  __dst = v831;
  v876 = v836;
  v875 = v835;
  v873 = v833;
  v874 = v834;
  v877 = v837;
  v878 = v838;
  *&v879[96] = v825;
  *&v879[80] = v824;
  *&v879[64] = v823;
  *&v879[32] = v821;
  *&v879[48] = v822;
  *&v879[16] = v820;
  *v879 = *v870;
  if (sub_2520CB6FC(&__dst) == 1)
  {
    if (v413)
    {
      sub_2520CB714(*(v796 + 48) + 16 * v416);
      sub_2520CB018(v416, v796);
    }
  }

  else if (v413)
  {
    memmove((*(v796 + 56) + 232 * v416), &v862, 0xE8uLL);
  }

  else
  {
    *&v895[80] = *&v870[64];
    *&v895[96] = *&v870[80];
    *&v895[112] = *&v870[96];
    *&v895[16] = *v870;
    *&v895[32] = *&v870[16];
    *&v895[64] = *&v870[48];
    *&v895[48] = *&v870[32];
    v892 = v866;
    v893 = v867;
    *v895 = v869;
    v894 = v868;
    v888 = v862;
    v889 = v863;
    v891 = v865;
    v890 = v864;
    sub_2520A8CE4(v416, v395, v679, &v888, v796);
  }

  v858 = v837;
  v859 = v838;
  *&v860 = v839;
  v854 = v833;
  v855 = v834;
  v857 = v836;
  v856 = v835;
  v853 = v832;
  v852 = v831;
  *(&v860 + 1) = v406;
  *&v861[32] = v822;
  *&v861[48] = v823;
  *&v861[64] = v824;
  *&v861[80] = v825;
  *v861 = v820;
  *&v861[16] = v821;
  sub_2520A2D9C(&v862, &v842, &qword_27F4CDE30, &qword_2521444D8);
  sub_2520A2584(&v852, &qword_27F4CDE30, &qword_2521444D8);
  v29 = v678;
  *(v678 + v407) = v796;
  swift_endAccess();

  v166 = 0x277CBE000uLL;
LABEL_330:
  v419 = objc_allocWithZone(*(v166 + 3024));
  v420 = sub_252141B6C();
  v421 = [v419 initWithSuiteName_];

  if (!v421)
  {
LABEL_584:
    __break(1u);
    goto LABEL_585;
  }

  v422 = sub_252141B6C();
  v423 = [v421 objectForKey_];

  if (!v423)
  {
    v881 = 0u;
    __src = 0u;
    sub_2520A2584(&__src, &unk_27F4CE0B0, &unk_252144AF0);
    goto LABEL_349;
  }

  sub_25214215C();
  swift_unknownObjectRelease();
  sub_2520A2584(&__src, &unk_27F4CE0B0, &unk_252144AF0);
  v424 = objc_allocWithZone(*(v166 + 3024));
  v425 = sub_252141B6C();
  v426 = [v424 initWithSuiteName_];

  if (!v426)
  {
LABEL_628:
    __break(1u);
LABEL_629:
    __break(1u);
    goto LABEL_630;
  }

  v427 = sub_252141B6C();
  [v426 doubleForKey_];
  v429 = v428;

  v430 = OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_tuningDict;
  swift_beginAccess();
  v431 = *(v29 + v430);
  v432 = swift_isUniquelyReferenced_nonNull_native();
  *&v783 = *(v29 + v430);
  v433 = v783;
  *(v29 + v430) = 0x8000000000000000;
  v434 = sub_25213E648(v681, v679);
  v436 = v435;
  v437 = *(v433 + 16);
  v438 = (v435 & 1) == 0;
  if (__OFADD__(v437, v438))
  {
LABEL_556:
    __break(1u);
    goto LABEL_557;
  }

  v439 = v434;
  if (sub_2520CB1CC(v432, v437 + v438))
  {
    v440 = sub_25213E648(v681, v679);
    if ((v436 & 1) != (v441 & 1))
    {
      goto LABEL_651;
    }

    v439 = v440;
  }

  if (v436)
  {
    memmove(&__src, (*(v783 + 56) + 232 * v439), 0xE8uLL);
    nullsub_1(&__src);
  }

  else
  {
    sub_2520CB6D4(&__src);
  }

  v826 = v886;
  v827 = *v887;
  v828 = *&v887[16];
  v822 = v882;
  v823 = v883;
  v825 = v885;
  v824 = v884;
  v821 = v881;
  v820 = __src;
  v810 = *&v887[72];
  v811 = *&v887[88];
  v812 = *&v887[104];
  v809 = *&v887[56];
  v808 = *&v887[40];
  v877 = v886;
  v878 = *v887;
  *v879 = *&v887[16];
  v873 = v882;
  v874 = v883;
  v876 = v885;
  v875 = v884;
  v872 = v881;
  __dst = __src;
  *&v879[40] = *&v887[56];
  *&v879[56] = *&v887[72];
  *&v879[72] = *&v887[88];
  *&v879[88] = *&v887[104];
  *&v879[24] = *&v887[40];
  *&v879[16] = *&v887[32];
  if (sub_2520CB6FC(&__dst) == 1)
  {
    goto LABEL_631;
  }

  v858 = v826;
  v859 = v827;
  v860 = v828;
  v854 = v822;
  v855 = v823;
  v857 = v825;
  v856 = v824;
  *&v861[40] = v810;
  *&v861[24] = v809;
  *&v861[56] = v811;
  *&v861[72] = v812;
  v853 = v821;
  v852 = v820;
  *v861 = v429;
  *&v861[8] = v808;
  v866 = v824;
  v867 = v825;
  v869 = v827;
  v868 = v826;
  v862 = v820;
  v863 = v821;
  v865 = v823;
  v864 = v822;
  *&v870[64] = *&v861[48];
  *&v870[80] = *&v861[64];
  *&v870[96] = *(&v812 + 1);
  *v870 = v828;
  *&v870[16] = *v861;
  *&v870[48] = *&v861[32];
  *&v870[32] = *&v861[16];
  if (sub_2520CB6FC(&v862) == 1)
  {
    if (v436)
    {
      sub_2520CB714(*(v783 + 48) + 16 * v439);
      sub_2520CB018(v439, v783);
    }
  }

  else if (v436)
  {
    memmove((*(v783 + 56) + 232 * v439), &v852, 0xE8uLL);
  }

  else
  {
    *&v887[80] = *&v861[48];
    *&v887[96] = *&v861[64];
    *&v887[112] = *&v861[80];
    *&v887[16] = v860;
    *&v887[32] = *v861;
    *&v887[64] = *&v861[32];
    *&v887[48] = *&v861[16];
    v884 = v856;
    v885 = v857;
    *v887 = v859;
    v886 = v858;
    __src = v852;
    v881 = v853;
    v883 = v855;
    v882 = v854;
    sub_2520A8CE4(v439, v681, v679, &__src, v783);
  }

  v848 = v826;
  v849 = v827;
  v850 = v828;
  v844 = v822;
  v845 = v823;
  v847 = v825;
  v846 = v824;
  v843 = v821;
  v842 = v820;
  *v851 = v429;
  *&v851[24] = v809;
  *&v851[40] = v810;
  *&v851[56] = v811;
  *&v851[72] = v812;
  *&v851[8] = v808;
  sub_2520A2D9C(&v852, &v831, &qword_27F4CDE30, &qword_2521444D8);
  sub_2520A2584(&v842, &qword_27F4CDE30, &qword_2521444D8);
  v29 = v678;
  *(v678 + v430) = v783;
  swift_endAccess();

  v166 = 0x277CBE000uLL;
LABEL_349:
  v442 = objc_allocWithZone(*(v166 + 3024));
  v443 = sub_252141B6C();
  v444 = [v442 initWithSuiteName_];

  if (!v444)
  {
LABEL_585:
    __break(1u);
    goto LABEL_586;
  }

  v445 = sub_252141B6C();
  v446 = [v444 objectForKey_];

  if (!v446)
  {
    v872 = 0u;
    __dst = 0u;
    sub_2520A2584(&__dst, &unk_27F4CE0B0, &unk_252144AF0);
    goto LABEL_368;
  }

  sub_25214215C();
  swift_unknownObjectRelease();
  sub_2520A2584(&__dst, &unk_27F4CE0B0, &unk_252144AF0);
  v447 = objc_allocWithZone(*(v166 + 3024));
  v448 = sub_252141B6C();
  v449 = [v447 initWithSuiteName_];

  if (!v449)
  {
LABEL_630:
    __break(1u);
LABEL_631:
    __break(1u);
    goto LABEL_632;
  }

  v450 = sub_252141B6C();
  v451 = [v449 integerForKey_];

  v452 = OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_tuningDict;
  swift_beginAccess();
  v453 = *(v29 + v452);
  v454 = swift_isUniquelyReferenced_nonNull_native();
  *&v770 = *(v29 + v452);
  v455 = v770;
  *(v29 + v452) = 0x8000000000000000;
  v456 = sub_25213E648(v681, v679);
  v458 = v457;
  v459 = *(v455 + 16);
  v460 = (v457 & 1) == 0;
  if (__OFADD__(v459, v460))
  {
LABEL_557:
    __break(1u);
    goto LABEL_558;
  }

  v461 = v456;
  if (sub_2520CB1CC(v454, v459 + v460))
  {
    v462 = sub_25213E648(v681, v679);
    if ((v458 & 1) != (v463 & 1))
    {
      goto LABEL_651;
    }

    v461 = v462;
  }

  if (v458)
  {
    memmove(&__dst, (*(v770 + 56) + 232 * v461), 0xE8uLL);
    nullsub_1(&__dst);
  }

  else
  {
    sub_2520CB6D4(&__dst);
  }

  v814 = v877;
  v815 = v878;
  v816 = *v879;
  *&v817 = *&v879[16];
  v810 = v873;
  v811 = v874;
  v812 = v875;
  v813 = v876;
  v808 = __dst;
  v809 = v872;
  v798 = *&v879[64];
  v799 = *&v879[80];
  *&v800 = *&v879[96];
  v797 = *&v879[48];
  v796 = *&v879[32];
  v868 = v877;
  v869 = v878;
  *v870 = *v879;
  *&v870[96] = *&v879[96];
  v864 = v873;
  v865 = v874;
  v866 = v875;
  v867 = v876;
  v862 = __dst;
  v863 = v872;
  *&v870[64] = *&v879[64];
  *&v870[80] = *&v879[80];
  *&v870[48] = *&v879[48];
  *&v870[32] = *&v879[32];
  *&v870[16] = *&v879[16];
  if (sub_2520CB6FC(&v862) == 1)
  {
    goto LABEL_633;
  }

  v848 = v814;
  v849 = v815;
  v850 = v816;
  v844 = v810;
  v845 = v811;
  v846 = v812;
  v847 = v813;
  v842 = v808;
  v843 = v809;
  *v851 = v817;
  *&v851[8] = v451;
  *&v851[48] = v798;
  *&v851[64] = v799;
  *&v851[80] = v800;
  *&v851[32] = v797;
  *&v851[16] = v796;
  *&v861[48] = v798;
  *&v861[64] = v799;
  *&v861[80] = v800;
  v858 = v814;
  v859 = v815;
  *&v861[32] = v797;
  *&v861[16] = v796;
  v854 = v810;
  v855 = v811;
  v856 = v812;
  v857 = v813;
  v852 = v808;
  v853 = v809;
  v860 = v816;
  *v861 = *v851;
  if (sub_2520CB6FC(&v852) == 1)
  {
    if (v458)
    {
      sub_2520CB714(*(v770 + 48) + 16 * v461);
      sub_2520CB018(v461, v770);
    }
  }

  else if (v458)
  {
    memmove((*(v770 + 56) + 232 * v461), &v842, 0xE8uLL);
  }

  else
  {
    *&v879[64] = *&v851[48];
    *&v879[80] = *&v851[64];
    *&v879[96] = *&v851[80];
    *v879 = v850;
    *&v879[16] = *v851;
    *&v879[48] = *&v851[32];
    *&v879[32] = *&v851[16];
    v875 = v846;
    v876 = v847;
    v878 = v849;
    v877 = v848;
    __dst = v842;
    v872 = v843;
    v874 = v845;
    v873 = v844;
    sub_2520A8CE4(v461, v681, v679, &__dst, v770);
  }

  v837 = v814;
  v838 = v815;
  v839 = v816;
  v833 = v810;
  v834 = v811;
  v835 = v812;
  v836 = v813;
  v831 = v808;
  v832 = v809;
  *&v840 = v817;
  *(&v840 + 1) = v451;
  *&v841[32] = v798;
  *&v841[48] = v799;
  *&v841[64] = v800;
  *&v841[16] = v797;
  *v841 = v796;
  sub_2520A2D9C(&v842, &v820, &qword_27F4CDE30, &qword_2521444D8);
  sub_2520A2584(&v831, &qword_27F4CDE30, &qword_2521444D8);
  v29 = v678;
  *(v678 + v452) = v770;
  swift_endAccess();

  v166 = 0x277CBE000uLL;
LABEL_368:
  v464 = objc_allocWithZone(*(v166 + 3024));
  v465 = sub_252141B6C();
  v466 = [v464 initWithSuiteName_];

  if (!v466)
  {
LABEL_586:
    __break(1u);
    goto LABEL_587;
  }

  v467 = sub_252141B6C();
  v468 = [v466 objectForKey_];

  if (!v468)
  {
    v863 = 0u;
    v862 = 0u;
    sub_2520A2584(&v862, &unk_27F4CE0B0, &unk_252144AF0);
    v487 = v681;
    goto LABEL_387;
  }

  sub_25214215C();
  swift_unknownObjectRelease();
  sub_2520A2584(&v862, &unk_27F4CE0B0, &unk_252144AF0);
  v469 = objc_allocWithZone(*(v166 + 3024));
  v470 = sub_252141B6C();
  v471 = [v469 initWithSuiteName_];

  if (!v471)
  {
LABEL_632:
    __break(1u);
LABEL_633:
    __break(1u);
    goto LABEL_634;
  }

  v472 = sub_252141B6C();
  [v471 doubleForKey_];
  v474 = v473;

  v475 = OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_tuningDict;
  swift_beginAccess();
  v476 = *(v29 + v475);
  v477 = swift_isUniquelyReferenced_nonNull_native();
  *&v740 = *(v29 + v475);
  v478 = v740;
  *(v29 + v475) = 0x8000000000000000;
  v479 = sub_25213E648(v681, v679);
  v481 = v480;
  v482 = *(v478 + 16);
  v483 = (v480 & 1) == 0;
  if (__OFADD__(v482, v483))
  {
LABEL_558:
    __break(1u);
    goto LABEL_559;
  }

  v484 = v479;
  if (sub_2520CB1CC(v477, v482 + v483))
  {
    v485 = sub_25213E648(v681, v679);
    if ((v481 & 1) != (v486 & 1))
    {
      goto LABEL_651;
    }

    v484 = v485;
  }

  if (v481)
  {
    memmove(&v862, (*(v740 + 56) + 232 * v484), 0xE8uLL);
    nullsub_1(&v862);
  }

  else
  {
    sub_2520CB6D4(&v862);
  }

  v802 = v868;
  v803 = v869;
  v804 = *v870;
  v805 = *&v870[16];
  v798 = v864;
  v799 = v865;
  v800 = v866;
  v801 = v867;
  v796 = v862;
  v797 = v863;
  v783 = *&v870[40];
  v784 = *&v870[56];
  v785 = *&v870[72];
  v786 = *&v870[88];
  v858 = v868;
  v859 = v869;
  v860 = *v870;
  *v861 = *&v870[16];
  v854 = v864;
  v855 = v865;
  v856 = v866;
  v857 = v867;
  v852 = v862;
  v853 = v863;
  *&v861[24] = *&v870[40];
  *&v861[40] = *&v870[56];
  *&v861[56] = *&v870[72];
  *&v861[72] = *&v870[88];
  *&v861[16] = *&v870[32];
  if (sub_2520CB6FC(&v852) == 1)
  {
    goto LABEL_635;
  }

  v837 = v802;
  v838 = v803;
  v839 = v804;
  v840 = v805;
  v833 = v798;
  v834 = v799;
  v835 = v800;
  v836 = v801;
  v831 = v796;
  v832 = v797;
  *v841 = v474;
  *&v841[24] = v784;
  *&v841[8] = v783;
  *&v841[40] = v785;
  *&v841[56] = v786;
  v848 = v802;
  v849 = v803;
  v850 = v804;
  *v851 = v805;
  v844 = v798;
  v845 = v799;
  v846 = v800;
  v847 = v801;
  v842 = v796;
  v843 = v797;
  *&v851[48] = *&v841[32];
  *&v851[64] = *&v841[48];
  *&v851[80] = *(&v786 + 1);
  *&v851[32] = *&v841[16];
  *&v851[16] = *v841;
  v487 = v681;
  if (sub_2520CB6FC(&v842) == 1)
  {
    if (v481)
    {
      sub_2520CB714(*(v740 + 48) + 16 * v484);
      sub_2520CB018(v484, v740);
    }
  }

  else if (v481)
  {
    memmove((*(v740 + 56) + 232 * v484), &v831, 0xE8uLL);
  }

  else
  {
    *&v870[64] = *&v841[32];
    *&v870[80] = *&v841[48];
    *&v870[96] = *&v841[64];
    *v870 = v839;
    *&v870[16] = v840;
    *&v870[48] = *&v841[16];
    *&v870[32] = *v841;
    v866 = v835;
    v867 = v836;
    v869 = v838;
    v868 = v837;
    v862 = v831;
    v863 = v832;
    v865 = v834;
    v864 = v833;
    sub_2520A8CE4(v484, v681, v679, &v862, v740);
  }

  v826 = v802;
  v827 = v803;
  v828 = v804;
  v829 = v805;
  v822 = v798;
  v823 = v799;
  v824 = v800;
  v825 = v801;
  v820 = v796;
  v821 = v797;
  *v830 = v474;
  *&v830[8] = v783;
  *&v830[24] = v784;
  *&v830[40] = v785;
  *&v830[56] = v786;
  sub_2520A2D9C(&v831, &v808, &qword_27F4CDE30, &qword_2521444D8);
  sub_2520A2584(&v820, &qword_27F4CDE30, &qword_2521444D8);
  *(v29 + v475) = v740;
  swift_endAccess();

  v166 = 0x277CBE000uLL;
LABEL_387:
  v488 = objc_allocWithZone(*(v166 + 3024));
  v489 = sub_252141B6C();
  v490 = [v488 initWithSuiteName_];

  if (!v490)
  {
LABEL_587:
    __break(1u);
    goto LABEL_588;
  }

  v491 = sub_252141B6C();
  v492 = [v490 objectForKey_];

  if (!v492)
  {
    v853 = 0u;
    v852 = 0u;
    sub_2520A2584(&v852, &unk_27F4CE0B0, &unk_252144AF0);
    goto LABEL_406;
  }

  sub_25214215C();
  swift_unknownObjectRelease();
  sub_2520A2584(&v852, &unk_27F4CE0B0, &unk_252144AF0);
  v493 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v494 = sub_252141B6C();
  v495 = [v493 initWithSuiteName_];

  if (!v495)
  {
LABEL_634:
    __break(1u);
LABEL_635:
    __break(1u);
    goto LABEL_636;
  }

  v496 = sub_252141B6C();
  v497 = [v495 integerForKey_];

  v498 = OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_tuningDict;
  swift_beginAccess();
  v499 = *(v29 + v498);
  v500 = swift_isUniquelyReferenced_nonNull_native();
  *&v726 = *(v29 + v498);
  v501 = v726;
  *(v29 + v498) = 0x8000000000000000;
  v502 = sub_25213E648(v487, v679);
  v504 = v503;
  v505 = *(v501 + 16);
  v506 = (v503 & 1) == 0;
  if (__OFADD__(v505, v506))
  {
LABEL_559:
    __break(1u);
    goto LABEL_560;
  }

  v507 = v502;
  if (sub_2520CB1CC(v500, v505 + v506))
  {
    v508 = sub_25213E648(v681, v679);
    if ((v504 & 1) != (v509 & 1))
    {
      goto LABEL_651;
    }

    v507 = v508;
  }

  if (v504)
  {
    memmove(&v852, (*(v726 + 56) + 232 * v507), 0xE8uLL);
    nullsub_1(&v852);
  }

  else
  {
    sub_2520CB6D4(&v852);
  }

  v791 = v860;
  v792 = *v861;
  *&v793 = *&v861[16];
  v787 = v856;
  v788 = v857;
  v790 = v859;
  v789 = v858;
  v783 = v852;
  v784 = v853;
  v786 = v855;
  v785 = v854;
  v770 = *&v861[32];
  v771 = *&v861[48];
  v772 = *&v861[64];
  *&v773 = *&v861[80];
  v850 = v860;
  *v851 = *v861;
  *&v851[80] = *&v861[80];
  v846 = v856;
  v847 = v857;
  v849 = v859;
  v848 = v858;
  v842 = v852;
  v843 = v853;
  v845 = v855;
  v844 = v854;
  *&v851[32] = *&v861[32];
  *&v851[48] = *&v861[48];
  *&v851[64] = *&v861[64];
  *&v851[16] = *&v861[16];
  if (sub_2520CB6FC(&v842) == 1)
  {
    goto LABEL_637;
  }

  v828 = v791;
  v829 = v792;
  v824 = v787;
  v825 = v788;
  v827 = v790;
  v826 = v789;
  v820 = v783;
  v821 = v784;
  v823 = v786;
  v822 = v785;
  *v830 = v793;
  *&v830[8] = v497;
  *&v830[16] = v770;
  *&v830[32] = v771;
  *&v830[48] = v772;
  *&v841[32] = v771;
  *&v841[48] = v772;
  v839 = v791;
  v840 = v792;
  v835 = v787;
  v836 = v788;
  v838 = v790;
  v837 = v789;
  v831 = v783;
  v832 = v784;
  *&v830[64] = v773;
  *&v841[64] = v773;
  v834 = v786;
  v833 = v785;
  *&v841[16] = v770;
  *v841 = *v830;
  if (sub_2520CB6FC(&v831) == 1)
  {
    if (v504)
    {
      sub_2520CB714(*(v726 + 48) + 16 * v507);
      sub_2520CB018(v507, v726);
    }
  }

  else if (v504)
  {
    memmove((*(v726 + 56) + 232 * v507), &v820, 0xE8uLL);
  }

  else
  {
    *&v861[48] = *&v830[32];
    *&v861[64] = *&v830[48];
    *&v861[80] = *&v830[64];
    v860 = v828;
    *v861 = v829;
    *&v861[32] = *&v830[16];
    *&v861[16] = *v830;
    v856 = v824;
    v857 = v825;
    v859 = v827;
    v858 = v826;
    v852 = v820;
    v853 = v821;
    v855 = v823;
    v854 = v822;
    sub_2520A8CE4(v507, v681, v679, &v852, v726);
  }

  v816 = v791;
  v817 = v792;
  v812 = v787;
  v813 = v788;
  v815 = v790;
  v814 = v789;
  v808 = v783;
  v809 = v784;
  v811 = v786;
  v810 = v785;
  *&v818 = v793;
  *(&v818 + 1) = v497;
  *v819 = v770;
  *&v819[16] = v771;
  *&v819[32] = v772;
  *&v819[48] = v773;
  sub_2520A2D9C(&v820, &v796, &qword_27F4CDE30, &qword_2521444D8);
  sub_2520A2584(&v808, &qword_27F4CDE30, &qword_2521444D8);
  v29 = v678;
  *(v678 + v498) = v726;
  swift_endAccess();

LABEL_406:
  v510 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v511 = sub_252141B6C();
  v512 = [v510 initWithSuiteName_];

  if (!v512)
  {
LABEL_588:
    __break(1u);
    goto LABEL_589;
  }

  v513 = sub_252141B6C();
  v514 = [v512 objectForKey_];

  if (!v514)
  {
    v843 = 0u;
    v842 = 0u;
    sub_2520A2584(&v842, &unk_27F4CE0B0, &unk_252144AF0);
    goto LABEL_425;
  }

  sub_25214215C();
  swift_unknownObjectRelease();
  sub_2520A2584(&v842, &unk_27F4CE0B0, &unk_252144AF0);
  v515 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v516 = sub_252141B6C();
  v517 = [v515 initWithSuiteName_];

  if (!v517)
  {
LABEL_636:
    __break(1u);
LABEL_637:
    __break(1u);
    goto LABEL_638;
  }

  v518 = sub_252141B6C();
  v519 = [v517 integerForKey_];

  v520 = OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_tuningDict;
  swift_beginAccess();
  v521 = *(v29 + v520);
  v522 = swift_isUniquelyReferenced_nonNull_native();
  *&v711 = *(v29 + v520);
  v523 = v711;
  *(v29 + v520) = 0x8000000000000000;
  v524 = sub_25213E648(v681, v679);
  v526 = v525;
  v527 = *(v523 + 16);
  v528 = (v525 & 1) == 0;
  if (__OFADD__(v527, v528))
  {
LABEL_560:
    __break(1u);
    goto LABEL_561;
  }

  v529 = v524;
  if (sub_2520CB1CC(v522, v527 + v528))
  {
    v530 = sub_25213E648(v681, v679);
    if ((v526 & 1) != (v531 & 1))
    {
      goto LABEL_651;
    }

    v529 = v530;
  }

  if (v526)
  {
    memmove(&v842, (*(v711 + 56) + 232 * v529), 0xE8uLL);
    nullsub_1(&v842);
  }

  else
  {
    sub_2520CB6D4(&v842);
  }

  v778 = v850;
  v779 = *v851;
  v780 = *&v851[16];
  v774 = v846;
  v775 = v847;
  v777 = v849;
  v776 = v848;
  v770 = v842;
  v771 = v843;
  v773 = v845;
  v772 = v844;
  v740 = *&v851[40];
  v741 = *&v851[56];
  v742 = *&v851[72];
  v839 = v850;
  v840 = *v851;
  *v841 = *&v851[16];
  v835 = v846;
  v836 = v847;
  v838 = v849;
  v837 = v848;
  v831 = v842;
  v832 = v843;
  v834 = v845;
  v833 = v844;
  *&v841[24] = *&v851[40];
  *&v841[40] = *&v851[56];
  *&v841[56] = *&v851[72];
  *&v841[16] = *&v851[32];
  if (sub_2520CB6FC(&v831) == 1)
  {
    goto LABEL_639;
  }

  v816 = v778;
  v817 = v779;
  v818 = v780;
  v812 = v774;
  v813 = v775;
  v815 = v777;
  v814 = v776;
  v808 = v770;
  v809 = v771;
  v811 = v773;
  v810 = v772;
  *&v819[8] = v740;
  *&v819[24] = v741;
  *&v819[40] = v742;
  v828 = v778;
  v829 = v779;
  v824 = v774;
  v825 = v775;
  v827 = v777;
  v826 = v776;
  v820 = v770;
  v821 = v771;
  *v819 = v519;
  v823 = v773;
  v822 = v772;
  *v830 = v780;
  *&v830[16] = *v819;
  *&v830[32] = *&v819[16];
  *&v830[48] = *&v819[32];
  *&v830[64] = *(&v742 + 1);
  if (sub_2520CB6FC(&v820) == 1)
  {
    if (v526)
    {
      sub_2520CB714(*(v711 + 48) + 16 * v529);
      sub_2520CB018(v529, v711);
    }
  }

  else if (v526)
  {
    memmove((*(v711 + 56) + 232 * v529), &v808, 0xE8uLL);
  }

  else
  {
    *&v851[48] = *&v819[16];
    *&v851[64] = *&v819[32];
    *&v851[80] = *&v819[48];
    v850 = v816;
    *v851 = v817;
    *&v851[32] = *v819;
    *&v851[16] = v818;
    v846 = v812;
    v847 = v813;
    v849 = v815;
    v848 = v814;
    v842 = v808;
    v843 = v809;
    v845 = v811;
    v844 = v810;
    sub_2520A8CE4(v529, v681, v679, &v842, v711);
  }

  v804 = v778;
  v805 = v779;
  v806 = v780;
  v800 = v774;
  v801 = v775;
  v803 = v777;
  v802 = v776;
  v796 = v770;
  v797 = v771;
  v799 = v773;
  v798 = v772;
  *&v807[8] = v740;
  *v807 = v519;
  *&v807[24] = v741;
  *&v807[40] = v742;
  sub_2520A2D9C(&v808, &v783, &qword_27F4CDE30, &qword_2521444D8);
  sub_2520A2584(&v796, &qword_27F4CDE30, &qword_2521444D8);
  v29 = v678;
  *(v678 + v520) = v711;
  swift_endAccess();

LABEL_425:
  v532 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v533 = sub_252141B6C();
  v534 = [v532 initWithSuiteName_];

  if (!v534)
  {
LABEL_589:
    __break(1u);
    goto LABEL_590;
  }

  v535 = sub_252141B6C();
  v536 = [v534 objectForKey_];

  if (!v536)
  {
    v832 = 0u;
    v831 = 0u;
    sub_2520A2584(&v831, &unk_27F4CE0B0, &unk_252144AF0);
    goto LABEL_444;
  }

  sub_25214215C();
  swift_unknownObjectRelease();
  sub_2520A2584(&v831, &unk_27F4CE0B0, &unk_252144AF0);
  v537 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v538 = sub_252141B6C();
  v539 = [v537 initWithSuiteName_];

  if (!v539)
  {
LABEL_638:
    __break(1u);
LABEL_639:
    __break(1u);
    goto LABEL_640;
  }

  v540 = sub_252141B6C();
  [v539 doubleForKey_];
  v542 = v541;

  v543 = OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_tuningDict;
  swift_beginAccess();
  v544 = *(v29 + v543);
  v545 = swift_isUniquelyReferenced_nonNull_native();
  *&v696 = *(v29 + v543);
  v546 = v696;
  *(v29 + v543) = 0x8000000000000000;
  v547 = sub_25213E648(v681, v679);
  v549 = v548;
  v550 = *(v546 + 16);
  v551 = (v548 & 1) == 0;
  if (__OFADD__(v550, v551))
  {
LABEL_561:
    __break(1u);
    goto LABEL_562;
  }

  v552 = v547;
  if (sub_2520CB1CC(v545, v550 + v551))
  {
    v553 = sub_25213E648(v681, v679);
    if ((v549 & 1) != (v554 & 1))
    {
      goto LABEL_651;
    }

    v552 = v553;
  }

  if (v549)
  {
    memmove(&v831, (*(v696 + 56) + 232 * v552), 0xE8uLL);
    nullsub_1(&v831);
  }

  else
  {
    sub_2520CB6D4(&v831);
  }

  v748 = v839;
  v749 = v840;
  v750 = *v841;
  *&v751 = *&v841[16];
  v744 = v835;
  v745 = v836;
  v746 = v837;
  v747 = v838;
  v740 = v831;
  v741 = v832;
  v742 = v833;
  v743 = v834;
  v726 = *&v841[32];
  v727 = *&v841[48];
  *&v728 = *&v841[64];
  v828 = v839;
  v829 = v840;
  *v830 = *v841;
  *&v830[16] = *&v841[16];
  v824 = v835;
  v825 = v836;
  v826 = v837;
  v827 = v838;
  v820 = v831;
  v821 = v832;
  v822 = v833;
  v823 = v834;
  *&v830[32] = *&v841[32];
  *&v830[48] = *&v841[48];
  *&v830[64] = *&v841[64];
  if (sub_2520CB6FC(&v820) == 1)
  {
    goto LABEL_641;
  }

  v804 = v748;
  v805 = v749;
  v806 = v750;
  *v807 = v751;
  v800 = v744;
  v801 = v745;
  v802 = v746;
  v803 = v747;
  v796 = v740;
  v797 = v741;
  v798 = v742;
  v799 = v743;
  *&v807[8] = v542;
  *&v807[16] = v726;
  *&v807[32] = v727;
  *&v807[48] = v728;
  *&v819[16] = v726;
  *&v819[32] = v727;
  *&v819[48] = v728;
  v816 = v748;
  v817 = v749;
  v812 = v744;
  v813 = v745;
  v815 = v747;
  v814 = v746;
  v808 = v740;
  v809 = v741;
  v811 = v743;
  v810 = v742;
  v818 = v750;
  *v819 = *v807;
  if (sub_2520CB6FC(&v808) == 1)
  {
    if (v549)
    {
      sub_2520CB714(*(v696 + 48) + 16 * v552);
      sub_2520CB018(v552, v696);
    }
  }

  else if (v549)
  {
    memmove((*(v696 + 56) + 232 * v552), &v796, 0xE8uLL);
  }

  else
  {
    *&v841[32] = *&v807[16];
    *&v841[48] = *&v807[32];
    *&v841[64] = *&v807[48];
    v839 = v804;
    v840 = v805;
    *&v841[16] = *v807;
    *v841 = v806;
    v835 = v800;
    v836 = v801;
    v838 = v803;
    v837 = v802;
    v831 = v796;
    v832 = v797;
    v834 = v799;
    v833 = v798;
    sub_2520A8CE4(v552, v681, v679, &v831, v696);
  }

  v791 = v748;
  v792 = v749;
  v793 = v750;
  *&v794 = v751;
  v787 = v744;
  v788 = v745;
  v789 = v746;
  v790 = v747;
  v783 = v740;
  v784 = v741;
  v785 = v742;
  v786 = v743;
  *(&v794 + 1) = v542;
  *v795 = v726;
  *&v795[16] = v727;
  *&v795[32] = v728;
  sub_2520A2D9C(&v796, &v770, &qword_27F4CDE30, &qword_2521444D8);
  sub_2520A2584(&v783, &qword_27F4CDE30, &qword_2521444D8);
  v29 = v678;
  *(v678 + v543) = v696;
  swift_endAccess();

LABEL_444:
  v555 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v556 = sub_252141B6C();
  v557 = [v555 initWithSuiteName_];

  if (!v557)
  {
LABEL_590:
    __break(1u);
    goto LABEL_591;
  }

  v558 = sub_252141B6C();
  v559 = [v557 objectForKey_];

  if (!v559)
  {
    v821 = 0u;
    v820 = 0u;
    sub_2520A2584(&v820, &unk_27F4CE0B0, &unk_252144AF0);
    goto LABEL_463;
  }

  sub_25214215C();
  swift_unknownObjectRelease();
  sub_2520A2584(&v820, &unk_27F4CE0B0, &unk_252144AF0);
  v560 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v561 = sub_252141B6C();
  v562 = [v560 initWithSuiteName_];

  if (!v562)
  {
LABEL_640:
    __break(1u);
LABEL_641:
    __break(1u);
    goto LABEL_642;
  }

  v563 = sub_252141B6C();
  [v562 doubleForKey_];
  v565 = v564;

  v566 = OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_tuningDict;
  swift_beginAccess();
  v567 = *(v29 + v566);
  v568 = swift_isUniquelyReferenced_nonNull_native();
  *&v682 = *(v29 + v566);
  v569 = v682;
  *(v29 + v566) = 0x8000000000000000;
  v570 = sub_25213E648(v681, v679);
  v572 = v571;
  v573 = *(v569 + 16);
  v574 = (v571 & 1) == 0;
  if (__OFADD__(v573, v574))
  {
LABEL_562:
    __break(1u);
    goto LABEL_563;
  }

  v575 = v570;
  if (sub_2520CB1CC(v568, v573 + v574))
  {
    v576 = sub_25213E648(v681, v679);
    if ((v572 & 1) != (v577 & 1))
    {
      goto LABEL_651;
    }

    v575 = v576;
  }

  if (v572)
  {
    memmove(&v820, (*(v682 + 56) + 232 * v575), 0xE8uLL);
    nullsub_1(&v820);
  }

  else
  {
    sub_2520CB6D4(&v820);
  }

  v734 = v828;
  v735 = v829;
  v736 = *v830;
  v737 = *&v830[16];
  v730 = v824;
  v731 = v825;
  v732 = v826;
  v733 = v827;
  v726 = v820;
  v727 = v821;
  v728 = v822;
  v729 = v823;
  v711 = *&v830[40];
  v712 = *&v830[56];
  v816 = v828;
  v817 = v829;
  v818 = *v830;
  *v819 = *&v830[16];
  v812 = v824;
  v813 = v825;
  v814 = v826;
  v815 = v827;
  v808 = v820;
  v809 = v821;
  v810 = v822;
  v811 = v823;
  *&v819[24] = *&v830[40];
  *&v819[40] = *&v830[56];
  *&v819[16] = *&v830[32];
  if (sub_2520CB6FC(&v808) == 1)
  {
    goto LABEL_643;
  }

  v791 = v734;
  v792 = v735;
  v793 = v736;
  v794 = v737;
  v787 = v730;
  v788 = v731;
  v789 = v732;
  v790 = v733;
  v783 = v726;
  v784 = v727;
  v785 = v728;
  v786 = v729;
  *v795 = v565;
  *&v795[8] = v711;
  *&v795[24] = v712;
  v804 = v734;
  v805 = v735;
  *v807 = v737;
  v806 = v736;
  v800 = v730;
  v801 = v731;
  v803 = v733;
  v802 = v732;
  v796 = v726;
  v797 = v727;
  v799 = v729;
  v798 = v728;
  *&v807[16] = *v795;
  *&v807[32] = *&v795[16];
  *&v807[48] = *(&v712 + 1);
  if (sub_2520CB6FC(&v796) == 1)
  {
    if (v572)
    {
      sub_2520CB714(*(v682 + 48) + 16 * v575);
      sub_2520CB018(v575, v682);
    }
  }

  else if (v572)
  {
    memmove((*(v682 + 56) + 232 * v575), &v783, 0xE8uLL);
  }

  else
  {
    *&v830[32] = *v795;
    *&v830[48] = *&v795[16];
    *&v830[64] = *&v795[32];
    v828 = v791;
    v829 = v792;
    *&v830[16] = v794;
    *v830 = v793;
    v824 = v787;
    v825 = v788;
    v827 = v790;
    v826 = v789;
    v820 = v783;
    v821 = v784;
    v823 = v786;
    v822 = v785;
    sub_2520A8CE4(v575, v681, v679, &v820, v682);
  }

  v778 = v734;
  v779 = v735;
  v780 = v736;
  v781 = v737;
  v774 = v730;
  v775 = v731;
  v776 = v732;
  v777 = v733;
  v770 = v726;
  v771 = v727;
  v772 = v728;
  v773 = v729;
  *v782 = v565;
  *&v782[8] = v711;
  *&v782[24] = v712;
  sub_2520A2D9C(&v783, &v740, &qword_27F4CDE30, &qword_2521444D8);
  sub_2520A2584(&v770, &qword_27F4CDE30, &qword_2521444D8);
  v29 = v678;
  *(v678 + v566) = v682;
  swift_endAccess();

LABEL_463:
  v578 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v579 = sub_252141B6C();
  v580 = [v578 initWithSuiteName_];

  if (!v580)
  {
LABEL_591:
    __break(1u);
    goto LABEL_592;
  }

  v581 = sub_252141B6C();
  v582 = [v580 objectForKey_];

  if (!v582)
  {
    v809 = 0u;
    v808 = 0u;
    sub_2520A2584(&v808, &unk_27F4CE0B0, &unk_252144AF0);
    goto LABEL_482;
  }

  sub_25214215C();
  swift_unknownObjectRelease();
  sub_2520A2584(&v808, &unk_27F4CE0B0, &unk_252144AF0);
  v583 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v584 = sub_252141B6C();
  v585 = [v583 initWithSuiteName_];

  if (!v585)
  {
LABEL_642:
    __break(1u);
LABEL_643:
    __break(1u);
    goto LABEL_644;
  }

  v586 = sub_252141B6C();
  [v585 doubleForKey_];
  v588 = v587;

  v589 = OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_tuningDict;
  swift_beginAccess();
  v590 = *(v29 + v589);
  v591 = swift_isUniquelyReferenced_nonNull_native();
  *&v769 = *(v29 + v589);
  v592 = v769;
  *(v29 + v589) = 0x8000000000000000;
  v593 = sub_25213E648(v681, v679);
  v595 = v594;
  v596 = *(v592 + 16);
  v597 = (v594 & 1) == 0;
  if (__OFADD__(v596, v597))
  {
LABEL_563:
    __break(1u);
    goto LABEL_564;
  }

  v598 = v593;
  if (sub_2520CB1CC(v591, v596 + v597))
  {
    v599 = sub_25213E648(v681, v679);
    if ((v595 & 1) != (v600 & 1))
    {
      goto LABEL_651;
    }

    v598 = v599;
  }

  if (v595)
  {
    memmove(&v808, (*(v769 + 56) + 232 * v598), 0xE8uLL);
    nullsub_1(&v808);
  }

  else
  {
    sub_2520CB6D4(&v808);
  }

  v721 = v818;
  v722 = *v819;
  *&v723 = *&v819[16];
  v717 = v814;
  v718 = v815;
  v719 = v816;
  v720 = v817;
  v713 = v810;
  v714 = v811;
  v715 = v812;
  v716 = v813;
  v711 = v808;
  v712 = v809;
  v682 = *&v819[32];
  *&v683 = *&v819[48];
  v806 = v818;
  *v807 = *v819;
  *&v807[16] = *&v819[16];
  v802 = v814;
  v803 = v815;
  v805 = v817;
  v804 = v816;
  v798 = v810;
  v799 = v811;
  v801 = v813;
  v800 = v812;
  v797 = v809;
  v796 = v808;
  *&v807[32] = *&v819[32];
  *&v807[48] = *&v819[48];
  if (sub_2520CB6FC(&v796) == 1)
  {
    goto LABEL_645;
  }

  v780 = v721;
  v781 = v722;
  *v782 = v723;
  v776 = v717;
  v777 = v718;
  v779 = v720;
  v778 = v719;
  v772 = v713;
  v773 = v714;
  v775 = v716;
  v774 = v715;
  v771 = v712;
  v770 = v711;
  *&v782[8] = v588;
  *&v782[16] = v682;
  *&v782[32] = v683;
  *&v795[32] = v683;
  v791 = v719;
  v792 = v720;
  v794 = v722;
  v793 = v721;
  v787 = v715;
  v788 = v716;
  v790 = v718;
  v789 = v717;
  v783 = v711;
  v784 = v712;
  v786 = v714;
  v785 = v713;
  *&v795[16] = v682;
  *v795 = *v782;
  v601 = sub_2520CB6FC(&v783);
  v602 = v769;
  if (v601 == 1)
  {
    if (v595)
    {
      sub_2520CB714(*(v769 + 48) + 16 * v598);
      sub_2520CB018(v598, v602);
    }
  }

  else if (v595)
  {
    memmove((*(v769 + 56) + 232 * v598), &v770, 0xE8uLL);
  }

  else
  {
    *&v819[16] = *v782;
    *&v819[32] = *&v782[16];
    *&v819[48] = *&v782[32];
    v816 = v778;
    v817 = v779;
    *v819 = v781;
    v818 = v780;
    v812 = v774;
    v813 = v775;
    v815 = v777;
    v814 = v776;
    v808 = v770;
    v809 = v771;
    v811 = v773;
    v810 = v772;
    sub_2520A8CE4(v598, v681, v679, &v808, v769);
  }

  v750 = v721;
  v751 = v722;
  *&v752 = v723;
  v746 = v717;
  v747 = v718;
  v749 = v720;
  v748 = v719;
  v742 = v713;
  v743 = v714;
  v745 = v716;
  v744 = v715;
  v740 = v711;
  v741 = v712;
  *(&v752 + 1) = v588;
  *v753 = v682;
  *&v753[16] = v683;
  sub_2520A2D9C(&v770, &v726, &qword_27F4CDE30, &qword_2521444D8);
  sub_2520A2584(&v740, &qword_27F4CDE30, &qword_2521444D8);
  *(v29 + v589) = v602;
  swift_endAccess();

LABEL_482:
  v603 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v604 = sub_252141B6C();
  v605 = [v603 initWithSuiteName_];

  if (!v605)
  {
LABEL_592:
    __break(1u);
    goto LABEL_593;
  }

  v606 = sub_252141B6C();
  v607 = [v605 objectForKey_];

  if (!v607)
  {
    v797 = 0u;
    v796 = 0u;
    sub_2520A2584(&v796, &unk_27F4CE0B0, &unk_252144AF0);
    goto LABEL_501;
  }

  sub_25214215C();
  swift_unknownObjectRelease();
  sub_2520A2584(&v796, &unk_27F4CE0B0, &unk_252144AF0);
  v608 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v609 = sub_252141B6C();
  v610 = [v608 initWithSuiteName_];

  if (!v610)
  {
LABEL_644:
    __break(1u);
LABEL_645:
    __break(1u);
    goto LABEL_646;
  }

  v611 = sub_252141B6C();
  v612 = [v610 integerForKey_];

  v613 = OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_tuningDict;
  swift_beginAccess();
  v614 = *(v29 + v613);
  v615 = swift_isUniquelyReferenced_nonNull_native();
  v768 = *(v29 + v613);
  v616 = v768;
  *(v29 + v613) = 0x8000000000000000;
  v617 = sub_25213E648(v681, v679);
  v619 = v618;
  v620 = v616[2];
  v621 = (v618 & 1) == 0;
  if (__OFADD__(v620, v621))
  {
LABEL_564:
    __break(1u);
    goto LABEL_565;
  }

  v622 = v617;
  if (sub_2520CB1CC(v615, v620 + v621))
  {
    v623 = sub_25213E648(v681, v679);
    if ((v619 & 1) != (v624 & 1))
    {
      goto LABEL_651;
    }

    v622 = v623;
  }

  if (v619)
  {
    memmove(&v796, (v768[7] + 232 * v622), 0xE8uLL);
    nullsub_1(&v796);
  }

  else
  {
    sub_2520CB6D4(&v796);
  }

  v706 = v806;
  v707 = *v807;
  v708 = *&v807[16];
  v702 = v802;
  v703 = v803;
  v704 = v804;
  v705 = v805;
  v698 = v798;
  v699 = v799;
  v700 = v800;
  v701 = v801;
  v696 = v796;
  v697 = v797;
  v769 = *&v807[40];
  v793 = v806;
  v794 = *v807;
  *v795 = *&v807[16];
  v789 = v802;
  v790 = v803;
  v792 = v805;
  v791 = v804;
  v785 = v798;
  v786 = v799;
  v788 = v801;
  v787 = v800;
  v784 = v797;
  v783 = v796;
  *&v795[24] = *&v807[40];
  *&v795[16] = *&v807[32];
  if (sub_2520CB6FC(&v783) == 1)
  {
    goto LABEL_647;
  }

  v750 = v706;
  v751 = v707;
  v752 = v708;
  v746 = v702;
  v747 = v703;
  v749 = v705;
  v748 = v704;
  v742 = v698;
  v743 = v699;
  v745 = v701;
  v744 = v700;
  v740 = v696;
  v741 = v697;
  *v753 = v612;
  *&v753[8] = v769;
  v778 = v704;
  v779 = v705;
  v781 = v707;
  v780 = v706;
  v774 = v700;
  v775 = v701;
  v777 = v703;
  v776 = v702;
  v770 = v696;
  v771 = v697;
  v773 = v699;
  v772 = v698;
  *v782 = v708;
  *&v782[16] = *v753;
  *&v782[32] = *(&v769 + 1);
  v625 = sub_2520CB6FC(&v770);
  v626 = v768;
  if (v625 == 1)
  {
    if (v619)
    {
      sub_2520CB714(v768[6] + 16 * v622);
      sub_2520CB018(v622, v626);
    }
  }

  else if (v619)
  {
    memmove((v768[7] + 232 * v622), &v740, 0xE8uLL);
  }

  else
  {
    *&v807[16] = v752;
    *&v807[32] = *v753;
    *&v807[48] = *&v753[16];
    v804 = v748;
    v805 = v749;
    *v807 = v751;
    v806 = v750;
    v800 = v744;
    v801 = v745;
    v803 = v747;
    v802 = v746;
    v796 = v740;
    v797 = v741;
    v799 = v743;
    v798 = v742;
    sub_2520A8CE4(v622, v681, v679, &v796, v768);
  }

  v736 = v706;
  v737 = v707;
  v738 = v708;
  v732 = v702;
  v733 = v703;
  v734 = v704;
  v735 = v705;
  v728 = v698;
  v729 = v699;
  v730 = v700;
  v731 = v701;
  v726 = v696;
  v727 = v697;
  *v739 = v612;
  *&v739[8] = v769;
  sub_2520A2D9C(&v740, &v711, &qword_27F4CDE30, &qword_2521444D8);
  sub_2520A2584(&v726, &qword_27F4CDE30, &qword_2521444D8);
  v29 = v678;
  *(v678 + v613) = v626;
  swift_endAccess();

LABEL_501:
  v627 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v628 = sub_252141B6C();
  v629 = [v627 initWithSuiteName_];

  if (!v629)
  {
LABEL_593:
    __break(1u);
    goto LABEL_594;
  }

  v630 = sub_252141B6C();
  v631 = [v629 objectForKey_];

  if (!v631)
  {
    v784 = 0u;
    v783 = 0u;
    sub_2520A2584(&v783, &unk_27F4CE0B0, &unk_252144AF0);
    goto LABEL_520;
  }

  sub_25214215C();
  swift_unknownObjectRelease();
  sub_2520A2584(&v783, &unk_27F4CE0B0, &unk_252144AF0);
  v632 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v633 = sub_252141B6C();
  v634 = [v632 initWithSuiteName_];

  if (!v634)
  {
LABEL_646:
    __break(1u);
LABEL_647:
    __break(1u);
LABEL_648:
    __break(1u);
    goto LABEL_649;
  }

  v635 = sub_252141B6C();
  [v634 doubleForKey_];
  v637 = v636;

  v638 = OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_tuningDict;
  swift_beginAccess();
  v639 = *(v29 + v638);
  v640 = swift_isUniquelyReferenced_nonNull_native();
  v768 = *(v29 + v638);
  v641 = v768;
  *(v29 + v638) = 0x8000000000000000;
  v642 = sub_25213E648(v681, v679);
  v644 = v643;
  v645 = v641[2];
  v646 = (v643 & 1) == 0;
  if (__OFADD__(v645, v646))
  {
LABEL_565:
    __break(1u);
LABEL_566:
    __break(1u);
LABEL_567:
    __break(1u);
    goto LABEL_568;
  }

  v647 = v642;
  if (sub_2520CB1CC(v640, v645 + v646))
  {
    v648 = sub_25213E648(v681, v679);
    if ((v644 & 1) != (v649 & 1))
    {
      goto LABEL_651;
    }

    v647 = v648;
    if ((v644 & 1) == 0)
    {
      goto LABEL_508;
    }

LABEL_511:
    memmove(&v783, (v768[7] + 232 * v647), 0xE8uLL);
    nullsub_1(&v783);
    goto LABEL_512;
  }

  if (v644)
  {
    goto LABEL_511;
  }

LABEL_508:
  sub_2520CB6D4(&v783);
LABEL_512:
  v692 = v793;
  v693 = v794;
  v694 = *v795;
  v695 = *&v795[16];
  v688 = v789;
  v689 = v790;
  v690 = v791;
  v691 = v792;
  v684 = v785;
  v685 = v786;
  v686 = v787;
  v687 = v788;
  v682 = v783;
  v683 = v784;
  v650 = *&v795[32];
  v780 = v793;
  v781 = v794;
  *v782 = *v795;
  *&v782[16] = *&v795[16];
  v776 = v789;
  v777 = v790;
  v778 = v791;
  v779 = v792;
  v772 = v785;
  v773 = v786;
  v774 = v787;
  v775 = v788;
  v770 = v783;
  v771 = v784;
  *&v782[32] = *&v795[32];
  if (sub_2520CB6FC(&v770) == 1)
  {
LABEL_649:
    __break(1u);
LABEL_650:
    __break(1u);
    goto LABEL_651;
  }

  v736 = v692;
  v737 = v693;
  v738 = v694;
  *v739 = v695;
  v732 = v688;
  v733 = v689;
  v734 = v690;
  v735 = v691;
  v728 = v684;
  v729 = v685;
  v730 = v686;
  v731 = v687;
  v726 = v682;
  v727 = v683;
  *&v739[8] = v637;
  *&v739[16] = v650;
  *&v753[16] = v650;
  v748 = v690;
  v749 = v691;
  v751 = v693;
  v750 = v692;
  v744 = v686;
  v745 = v687;
  v747 = v689;
  v746 = v688;
  v740 = v682;
  v741 = v683;
  v743 = v685;
  v742 = v684;
  v752 = v694;
  *v753 = *v739;
  v651 = sub_2520CB6FC(&v740);
  v652 = v768;
  if (v651 == 1)
  {
    if (v644)
    {
      sub_2520CB714(v768[6] + 16 * v647);
      sub_2520CB018(v647, v652);
    }
  }

  else if (v644)
  {
    memmove((v768[7] + 232 * v647), &v726, 0xE8uLL);
  }

  else
  {
    *v795 = v738;
    *&v795[16] = *v739;
    *&v795[32] = *&v739[16];
    v791 = v734;
    v792 = v735;
    v794 = v737;
    v793 = v736;
    v787 = v730;
    v788 = v731;
    v790 = v733;
    v789 = v732;
    v783 = v726;
    v784 = v727;
    v786 = v729;
    v785 = v728;
    sub_2520A8CE4(v647, v681, v679, &v783, v768);
  }

  v721 = v692;
  v722 = v693;
  v723 = v694;
  *&v724 = v695;
  v717 = v688;
  v718 = v689;
  v719 = v690;
  v720 = v691;
  v713 = v684;
  v714 = v685;
  v715 = v686;
  v716 = v687;
  v711 = v682;
  v712 = v683;
  *(&v724 + 1) = v637;
  v725 = v650;
  sub_2520A2D9C(&v726, &v696, &qword_27F4CDE30, &qword_2521444D8);
  sub_2520A2584(&v711, &qword_27F4CDE30, &qword_2521444D8);
  *(v29 + v638) = v652;
  swift_endAccess();

LABEL_520:
  v653 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v654 = sub_252141B6C();
  v655 = [v653 initWithSuiteName_];

  if (!v655)
  {
LABEL_594:
    __break(1u);
    goto LABEL_595;
  }

  v656 = sub_252141B6C();
  v657 = [v655 objectForKey_];

  if (!v657)
  {
    v771 = 0u;
    v770 = 0u;
    sub_2520A2584(&v770, &unk_27F4CE0B0, &unk_252144AF0);
    return;
  }

  sub_25214215C();
  swift_unknownObjectRelease();
  sub_2520A2584(&v770, &unk_27F4CE0B0, &unk_252144AF0);
  v658 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v659 = sub_252141B6C();
  v660 = [v658 initWithSuiteName_];

  if (!v660)
  {
    goto LABEL_648;
  }

  v661 = sub_252141B6C();
  [v660 doubleForKey_];
  v663 = v662;

  v664 = OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_tuningDict;
  swift_beginAccess();
  v665 = *(v29 + v664);
  v666 = swift_isUniquelyReferenced_nonNull_native();
  v768 = *(v29 + v664);
  v667 = v768;
  *(v29 + v664) = 0x8000000000000000;
  v668 = sub_25213E648(v681, v679);
  v670 = v669;
  v671 = v667[2];
  v672 = (v669 & 1) == 0;
  if (__OFADD__(v671, v672))
  {
    goto LABEL_566;
  }

  v673 = v668;
  if ((sub_2520CB1CC(v666, v671 + v672) & 1) == 0)
  {
    goto LABEL_527;
  }

  v674 = sub_25213E648(v681, v679);
  if ((v670 & 1) != (v675 & 1))
  {
LABEL_651:
    sub_2521424CC();
    __break(1u);
    return;
  }

  v673 = v674;
LABEL_527:
  if (v670)
  {
    memmove(&v770, (v768[7] + 232 * v673), 0xE8uLL);
    nullsub_1(&v770);
  }

  else
  {
    sub_2520CB6D4(&v770);
  }

  v764 = v780;
  v765 = v781;
  v766 = *v782;
  v767 = *&v782[16];
  v760 = v776;
  v761 = v777;
  v762 = v778;
  v763 = v779;
  v756 = v772;
  v757 = v773;
  v758 = v774;
  v759 = v775;
  v754 = v770;
  v755 = v771;
  v750 = v780;
  v751 = v781;
  v752 = *v782;
  *v753 = *&v782[16];
  v746 = v776;
  v747 = v777;
  v748 = v778;
  v749 = v779;
  v742 = v772;
  v743 = v773;
  v744 = v774;
  v745 = v775;
  v740 = v770;
  v741 = v771;
  *&v753[16] = *&v782[32];
  if (sub_2520CB6FC(&v740) == 1)
  {
    goto LABEL_650;
  }

  v721 = v764;
  v722 = v765;
  v723 = v766;
  v724 = v767;
  v717 = v760;
  v718 = v761;
  v719 = v762;
  v720 = v763;
  v713 = v756;
  v714 = v757;
  v715 = v758;
  v716 = v759;
  v711 = v754;
  v712 = v755;
  v725 = v663;
  v738 = v766;
  *v739 = v767;
  v734 = v762;
  v735 = v763;
  v736 = v764;
  v737 = v765;
  v730 = v758;
  v731 = v759;
  v732 = v760;
  v733 = v761;
  v726 = v754;
  v727 = v755;
  v728 = v756;
  v729 = v757;
  *&v739[16] = v663;
  v676 = sub_2520CB6FC(&v726);
  v677 = v768;
  if (v676 == 1)
  {
    if (v670)
    {
      sub_2520CB714(v768[6] + 16 * v673);
      sub_2520CB018(v673, v677);
    }
  }

  else if (v670)
  {
    memmove((v768[7] + 232 * v673), &v711, 0xE8uLL);
  }

  else
  {
    *v782 = v723;
    *&v782[16] = v724;
    *&v782[32] = v725;
    v778 = v719;
    v779 = v720;
    v781 = v722;
    v780 = v721;
    v774 = v715;
    v775 = v716;
    v777 = v718;
    v776 = v717;
    v770 = v711;
    v771 = v712;
    v773 = v714;
    v772 = v713;
    sub_2520A8CE4(v673, v681, v679, &v770, v768);
  }

  v706 = v764;
  v707 = v765;
  v708 = v766;
  v709 = v767;
  v702 = v760;
  v703 = v761;
  v704 = v762;
  v705 = v763;
  v698 = v756;
  v699 = v757;
  v700 = v758;
  v701 = v759;
  v696 = v754;
  v697 = v755;
  v710 = v663;
  sub_2520A2D9C(&v711, &v682, &qword_27F4CDE30, &qword_2521444D8);
  sub_2520A2584(&v696, &qword_27F4CDE30, &qword_2521444D8);
  *(v29 + v664) = v677;
  swift_endAccess();
}