uint64_t _s12RVCCleanModeV13CleanModeTypeOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s12RVCCleanModeV13CleanModeTypeOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_25318DD18()
{
  result = qword_27F58D948;
  if (!qword_27F58D948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D948);
  }

  return result;
}

unint64_t sub_25318DD6C()
{
  result = qword_27F58D950;
  if (!qword_27F58D950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D950);
  }

  return result;
}

void *sub_25318DDCC(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
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

  result = sub_253169F70(result, v11, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D198, &qword_2531E1450);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_25318DED4(uint64_t result)
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

  result = sub_25316A868(result, v12, 1, v3);
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

  memcpy((v3 + 12 * v8 + 32), (v6 + 32), 12 * v2);

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

uint64_t sub_25318DFC8()
{
  result = sub_2531DAA04();
  qword_27F59A2A0 = result;
  return result;
}

uint64_t MTR.RVCDevice.currentServiceArea.getter()
{
  result = *(v0 + 56);
  v2 = *(v0 + 64);
  return result;
}

uint64_t MTR.RVCDevice.currentServiceArea.setter(uint64_t result, char a2)
{
  *(v2 + 56) = result;
  *(v2 + 64) = a2 & 1;
  return result;
}

uint64_t MTR.RVCDevice.allRunningModes.setter(uint64_t a1)
{
  v3 = *(v1 + 72);

  *(v1 + 72) = a1;
  return result;
}

uint64_t MTR.RVCDevice.allCleaningModes.setter(uint64_t a1)
{
  v3 = *(v1 + 80);

  *(v1 + 80) = a1;
  return result;
}

uint64_t MTR.RVCDevice.allOperationalStates.setter(uint64_t a1)
{
  v3 = *(v1 + 88);

  *(v1 + 88) = a1;
  return result;
}

uint64_t MTR.RVCDevice.allSupportedClusterIDs.setter(uint64_t a1)
{
  v3 = *(v1 + 96);

  *(v1 + 96) = a1;
  return result;
}

void MTR.RVCDevice.firstIdleRunningMode.getter(uint64_t a1@<X8>)
{
  v3 = *(v1 + 72);
  if (v3)
  {
    v4 = 0;
    v5 = 1 << *(v3 + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(v3 + 56);
    v8 = (v5 + 63) >> 6;
LABEL_6:
    while (v7)
    {
LABEL_11:
      v10 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v11 = *(v3 + 48) + ((v4 << 11) | (32 * v10));
      v12 = *(v11 + 24);
      if (*(v12 + 16))
      {
        v19 = *v11;
        v13 = *(v11 + 16);
        v14 = *(v12 + 40);
        sub_2531DB3F4();
        sub_2531DB424();
        v15 = sub_2531DB454();
        v16 = -1 << *(v12 + 32);
        v17 = v15 & ~v16;
        if ((*(v12 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
        {
          v18 = ~v16;
          while (*(*(v12 + 48) + v17) != 10)
          {
            v17 = (v17 + 1) & v18;
            if (((*(v12 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
            {
              goto LABEL_6;
            }
          }

          *a1 = v19;
          *(a1 + 16) = v13;
          *(a1 + 24) = v12;

          return;
        }
      }
    }

    while (1)
    {
      v9 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v9 >= v8)
      {
        goto LABEL_17;
      }

      v7 = *(v3 + 56 + 8 * v9);
      ++v4;
      if (v7)
      {
        v4 = v9;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }
}

void MTR.RVCDevice.firstCleaningRunningMode.getter(uint64_t a1@<X8>)
{
  v3 = *(v1 + 72);
  if (v3)
  {
    v4 = 0;
    v5 = 1 << *(v3 + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(v3 + 56);
    v8 = (v5 + 63) >> 6;
LABEL_6:
    while (v7)
    {
LABEL_11:
      v10 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v11 = *(v3 + 48) + ((v4 << 11) | (32 * v10));
      v12 = *(v11 + 24);
      if (*(v12 + 16))
      {
        v19 = *v11;
        v13 = *(v11 + 16);
        v14 = *(v12 + 40);
        sub_2531DB3F4();
        sub_2531DB424();
        v15 = sub_2531DB454();
        v16 = -1 << *(v12 + 32);
        v17 = v15 & ~v16;
        if ((*(v12 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
        {
          v18 = ~v16;
          while (*(*(v12 + 48) + v17) != 11)
          {
            v17 = (v17 + 1) & v18;
            if (((*(v12 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
            {
              goto LABEL_6;
            }
          }

          *a1 = v19;
          *(a1 + 16) = v13;
          *(a1 + 24) = v12;

          return;
        }
      }
    }

    while (1)
    {
      v9 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v9 >= v8)
      {
        goto LABEL_17;
      }

      v7 = *(v3 + 56 + 8 * v9);
      ++v4;
      if (v7)
      {
        v4 = v9;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }
}

void MTR.RVCDevice.firstVacuumCleaningMode.getter(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 80);
  if (v2)
  {
    v24 = *(v1 + 80);
    v25 = a1;
    v3 = 0;
    v4 = v2 + 56;
    v5 = 1 << *(v2 + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(v2 + 56);
    v8 = (v5 + 63) >> 6;
LABEL_6:
    while (v7)
    {
LABEL_11:
      v10 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v11 = *(v2 + 48) + ((v3 << 11) | (32 * v10));
      v12 = *(v11 + 24);
      if (*(v12 + 16))
      {
        v26 = *v11;
        v27 = *(v11 + 16);
        v13 = *(v12 + 40);
        sub_2531DB3F4();
        sub_2531DB424();
        v14 = sub_2531DB454();
        v15 = v12 + 56;
        v16 = -1 << *(v12 + 32);
        v17 = v14 & ~v16;
        if ((*(v12 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
        {
          v18 = ~v16;
          v19 = *(v12 + 48);
          while (*(v19 + v17) != 11)
          {
            v17 = (v17 + 1) & v18;
            if (((*(v15 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
            {
LABEL_16:
              v2 = v24;
              goto LABEL_6;
            }
          }

          v20 = byte_2864F0FE0;
          sub_2531DB3F4();
          v21 = word_2531E582A[v20];
          sub_2531DB424();
          for (i = sub_2531DB454() & v18; ((*(v15 + ((i >> 3) & 0xFFFFFFFFFFFFFF8)) >> i) & 1) != 0; i = (i + 1) & v18)
          {
            if (word_2531E582A[*(v19 + i)] == v21)
            {
              goto LABEL_16;
            }
          }

          *v25 = v26;
          *(v25 + 2) = v27;
          *(v25 + 3) = v12;

          return;
        }
      }
    }

    while (1)
    {
      v9 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if (v9 >= v8)
      {
        v23 = 0uLL;
        a1 = v25;
        goto LABEL_23;
      }

      v7 = *(v4 + 8 * v9);
      ++v3;
      if (v7)
      {
        v3 = v9;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
    v23 = 0uLL;
LABEL_23:
    *a1 = v23;
    a1[1] = v23;
  }
}

void MTR.RVCDevice.firstMopCleaningMode.getter(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 80);
  if (v2)
  {
    v24 = *(v1 + 80);
    v25 = a1;
    v3 = 0;
    v4 = v2 + 56;
    v5 = 1 << *(v2 + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(v2 + 56);
    v8 = (v5 + 63) >> 6;
LABEL_6:
    while (v7)
    {
LABEL_11:
      v10 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v11 = *(v2 + 48) + ((v3 << 11) | (32 * v10));
      v12 = *(v11 + 24);
      if (*(v12 + 16))
      {
        v26 = *v11;
        v27 = *(v11 + 16);
        v13 = *(v12 + 40);
        sub_2531DB3F4();
        sub_2531DB424();
        v14 = sub_2531DB454();
        v15 = v12 + 56;
        v16 = -1 << *(v12 + 32);
        v17 = v14 & ~v16;
        if ((*(v12 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
        {
          v18 = ~v16;
          v19 = *(v12 + 48);
          while (*(v19 + v17) < 0xCu)
          {
            v17 = (v17 + 1) & v18;
            if (((*(v15 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
            {
LABEL_16:
              v2 = v24;
              goto LABEL_6;
            }
          }

          v20 = byte_2864F1008;
          sub_2531DB3F4();
          v21 = word_2531E582A[v20];
          sub_2531DB424();
          for (i = sub_2531DB454() & v18; ((*(v15 + ((i >> 3) & 0xFFFFFFFFFFFFFF8)) >> i) & 1) != 0; i = (i + 1) & v18)
          {
            if (word_2531E582A[*(v19 + i)] == v21)
            {
              goto LABEL_16;
            }
          }

          *v25 = v26;
          *(v25 + 2) = v27;
          *(v25 + 3) = v12;

          return;
        }
      }
    }

    while (1)
    {
      v9 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if (v9 >= v8)
      {
        v23 = 0uLL;
        a1 = v25;
        goto LABEL_23;
      }

      v7 = *(v4 + 8 * v9);
      ++v3;
      if (v7)
      {
        v3 = v9;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
    v23 = 0uLL;
LABEL_23:
    *a1 = v23;
    a1[1] = v23;
  }
}

void MTR.RVCDevice.firstVacuumAndMopCleaningMode.getter(void *a1@<X8>)
{
  v3 = *(v1 + 80);
  if (v3)
  {
    v4 = 1 << *(v3 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(v3 + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    while (v6)
    {
      v9 = v8;
LABEL_11:
      v10 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v11 = (*(v3 + 48) + ((v9 << 11) | (32 * v10)));
      v13 = *v11;
      v12 = v11[1];
      v15 = v11[2];
      v14 = v11[3];
      if (sub_25318D5E0(&unk_2864F1010, v14))
      {

        *a1 = v13;
        a1[1] = v12;
        a1[2] = v15;
        a1[3] = v14;
        return;
      }
    }

    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v9 >= v7)
      {

        goto LABEL_14;
      }

      v6 = *(v3 + 56 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:
    *a1 = 0u;
    *(a1 + 1) = 0u;
  }
}

uint64_t MTR.RVCDevice.init(device:endpoint:)@<X0>(__int128 *a1@<X0>, unsigned __int16 *a2@<X1>, uint64_t a3@<X8>)
{
  v17 = a1;
  v5 = sub_2531DAAA4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2531DAAC4();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v12 = sub_2531DA5B4();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v16 = *a2;
  sub_253181ED8(0, &qword_27F58D998, 0x277D85C90);
  sub_2531DA5A4();
  v18 = MEMORY[0x277D84F90];
  sub_253196EDC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D9A8, &qword_2531E5670);
  sub_253196F34();
  sub_2531DAB54();
  (*(v6 + 104))(v9, *MEMORY[0x277D85268], v5);
  *a3 = sub_2531DAAD4();
  *(a3 + 50) = 118295810;
  *(a3 + 54) = 12;
  *(a3 + 56) = 0;
  *(a3 + 64) = 1;
  *(a3 + 72) = 0u;
  *(a3 + 88) = 0u;
  result = sub_253168604(v17, a3 + 8);
  *(a3 + 48) = v16;
  return result;
}

uint64_t MTR.RVCDevice.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v4 = *(v2 + 48);
  sub_2531DB424();
  switch(*(v2 + 51))
  {
    case 0xD:
      break;
    default:
      sub_2531DB424();
      break;
  }

  switch(*(v2 + 52))
  {
    case 0xD:
      break;
    default:
      sub_2531DB424();
      break;
  }

  if (*(v2 + 53) <= 6u)
  {
    sub_2531DB414();
  }

  result = *(v2 + 54);
  if (*(v2 + 54) <= 6u || *(v2 + 54) <= 0xAu || result == 11)
  {
    result = sub_2531DB414();
  }

  v6 = *(v2 + 80);
  if (v6)
  {
    result = sub_25318C9F4(a1, v6);
  }

  v7 = *(v2 + 72);
  if (v7)
  {
    result = sub_25318C9F4(a1, v7);
  }

  v8 = *(v2 + 88);
  if (v8)
  {

    return sub_25318CBA8(a1, v8);
  }

  return result;
}

uint64_t sub_25318F0B0()
{
  v20 = v0;
  v1 = *(v0 + 272);
  *(v0 + 264) = MEMORY[0x277D84F90];
  v2 = *(v1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D1E8, &qword_2531E1490);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2531E14E0;
  *(inited + 32) = v2;
  *(inited + 36) = 0x10000001DLL;
  sub_25318DED4(inited);
  v4 = *(v1 + 48);
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_2531E53E0;
  *(v5 + 32) = v4;
  *(v5 + 36) = 0x100000054;
  *(v5 + 44) = v4;
  *(v5 + 48) = 84;
  sub_25318DED4(v5);
  v6 = *(v1 + 48);
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_2531E53E0;
  *(v7 + 32) = v6;
  *(v7 + 36) = 0x100000055;
  *(v7 + 44) = v6;
  *(v7 + 48) = 85;
  sub_25318DED4(v7);
  v19 = *(v1 + 48);
  _s23HomeKitDaemonFoundation3MTRO7ClusterO19RVCOperationalStateV14attributePaths8endpointSayAC9AttributeO4PathVGAC8EndpointO2IDV_tFZ_0(&v19);
  sub_25318DED4(v8);
  v9 = *(v1 + 48);
  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_2531E14E0;
  *(v10 + 32) = v9;
  *(v10 + 36) = 0x300000150;
  sub_25318DED4(v10);
  v11 = *(v1 + 32);
  v12 = *(v1 + 40);
  __swift_project_boxed_opaque_existential_1((v1 + 8), v11);
  v13 = *(v0 + 264);
  *(v0 + 280) = v13;
  *(v0 + 224) = xmmword_2531E2770;
  *(v0 + 240) = 10;
  v14 = *(v12 + 32);
  v18 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  *(v0 + 288) = v16;
  *v16 = v0;
  v16[1] = sub_25318F33C;

  return v18(v0 + 248, v13, v0 + 224, v11, v12);
}

uint64_t sub_25318F33C()
{
  v2 = *(*v1 + 288);
  v3 = *(*v1 + 280);
  v6 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {
    v4 = sub_25318F834;
  }

  else
  {
    v4 = sub_25318F46C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25318F46C()
{
  v29 = v0;
  v2 = v0[31];
  v1 = v0[32];
  if (qword_27F58D0F0 != -1)
  {
    swift_once();
  }

  v3 = sub_2531DA274();
  __swift_project_value_buffer(v3, qword_27F59A2A8);

  v4 = sub_2531DA254();
  v5 = sub_2531DAA64();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v27 = v7;
    *v6 = 136315138;
    sub_2531DABC4();

    strcpy(v28, "ReadResponse: ");
    HIBYTE(v28[1]) = -18;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D178, &qword_2531E11F8);
    v9 = MEMORY[0x259BFE6E0](v2, v8);
    MEMORY[0x259BFE570](v9);

    MEMORY[0x259BFE570](0x20726F6620, 0xE500000000000000);
    v10 = MEMORY[0x259BFE6E0](v1, &type metadata for MTR.Attribute.Path);
    MEMORY[0x259BFE570](v10);

    v11 = sub_253196608(v28[0], v28[1], &v27);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_253166000, v4, v5, "Everything : %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x259BFFA80](v7, -1, -1);
    MEMORY[0x259BFFA80](v6, -1, -1);
  }

  v12 = v0[34];
  v28[0] = v2;
  v28[1] = v1;
  LOWORD(v27) = *(v12 + 48);
  v13 = sub_253197D6C(v28, &v27);
  v14 = *(v12 + 96);

  *(v12 + 96) = v13;
  v28[0] = v2;
  v28[1] = v1;
  LOWORD(v27) = *(v12 + 48);
  v15 = sub_2531C3048(v28, &v27);
  v16 = *(v12 + 72);

  *(v12 + 72) = v15;
  v28[0] = v2;
  v28[1] = v1;
  LOWORD(v27) = *(v12 + 48);
  sub_2531BF1B0(v28, &v27, &v26);
  *(v12 + 51) = v26;
  v28[0] = v2;
  v28[1] = v1;
  LOWORD(v27) = *(v12 + 48);
  Result8endpointShyAGGSgAC9AttributeO05BatchnO0V_AC8EndpointO2IDVtFZ_0 = _s23HomeKitDaemonFoundation3MTRO7ClusterO12RVCCleanModeV17allCleanModesFrom15batchReadResult8endpointShyAGGSgAC9AttributeO05BatchnO0V_AC8EndpointO2IDVtFZ_0(v28, &v27);
  v18 = *(v12 + 80);

  *(v12 + 80) = Result8endpointShyAGGSgAC9AttributeO05BatchnO0V_AC8EndpointO2IDVtFZ_0;
  v28[0] = v2;
  v28[1] = v1;
  LOWORD(v27) = *(v12 + 48);
  static MTR.Cluster.RVCCleanMode.currentRunModeFrom(batchReadResult:endpoint:)(v28, &v27, &v26);
  *(v12 + 52) = v26;
  v28[0] = v2;
  v28[1] = v1;
  LOWORD(v27) = *(v12 + 48);
  v19 = sub_2531C48F0(v28, &v27);
  v20 = *(v12 + 88);

  *(v12 + 88) = v19;
  v28[0] = v2;
  v28[1] = v1;
  LOWORD(v27) = *(v12 + 48);
  sub_2531C37B4(v28, &v27);
  *(v12 + 53) = v26;
  v28[0] = v2;
  v28[1] = v1;
  LOWORD(v27) = *(v12 + 48);
  sub_2531C37D8(v28, &v27);
  *(v12 + 54) = v26;
  v28[0] = v2;
  v28[1] = v1;
  LOWORD(v27) = *(v12 + 48);
  v21 = sub_25316FB68(v28, &v27);
  v23 = v22;

  *(v12 + 56) = v21;
  *(v12 + 64) = v23 & 1;
  v24 = v0[1];

  return v24();
}

uint64_t MTR.RVCDevice.goHome()()
{
  v1[37] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D9B8, &qword_2531E5688);
  v1[38] = v2;
  v3 = *(v2 - 8);
  v1[39] = v3;
  v4 = *(v3 + 64) + 15;
  v1[40] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25318F918, 0, 0);
}

uint64_t sub_25318F918()
{
  v52 = v0;
  sub_25316B6E4(v0[37] + 8, (v0 + 28));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D9C0, &qword_2531E5690);
  sub_253181ED8(0, &qword_27F58D9C8, 0x277CD5310);
  if (swift_dynamicCast())
  {
    v1 = v0[37];
    v2 = v0[33];
    v0[41] = v2;
    v3 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedShort_];
    v4 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
    v5 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
    v6 = [objc_opt_self() attributePathWithEndpointID:v3 clusterID:v4 attributeID:v5];
    v0[42] = v6;

    v50 = xmmword_2531E5650;
    v51 = 2;
    MTR.Value.makeDataValue()();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D9D0, &qword_2531E5698);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2531E53E0;
    v8 = *MEMORY[0x277CD50B8];
    *(inited + 32) = sub_2531DA6D4();
    *(inited + 40) = v9;
    *(inited + 48) = v6;
    v10 = *MEMORY[0x277CD50D8];
    *(inited + 56) = sub_2531DA6D4();
    *(inited + 64) = v11;
    v12 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D730, &qword_2531E48E0);
    v13 = sub_2531DA604();

    *(inited + 72) = v13;
    v14 = sub_2531B589C(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D9D8, &qword_2531E56A0);
    swift_arrayDestroy();
    v15 = sub_25316A984(0, 1, 1, MEMORY[0x277D84F90]);
    v17 = v15[2];
    v16 = v15[3];
    if (v17 >= v16 >> 1)
    {
      v15 = sub_25316A984((v16 > 1), v17 + 1, 1, v15);
    }

    v0[43] = v15;
    v18 = v0[37];
    v15[2] = v17 + 1;
    v15[v17 + 4] = v14;
    v19 = v2;
    v20 = sub_2531DB474();
    v21 = [objc_allocWithZone(MEMORY[0x277CD52A0]) initWithDevice:v19 endpointID:v20 queue:*v18];
    v0[44] = v21;

    if (v21)
    {
      if (qword_27F58D0F0 != -1)
      {
        swift_once();
      }

      v22 = sub_2531DA274();
      v0[45] = __swift_project_value_buffer(v22, qword_27F59A2A8);

      v23 = sub_2531DA254();
      v24 = sub_2531DAA64();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        *&v50 = v26;
        *v25 = 136315138;
        v0[36] = v15;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D9E8, &qword_2531E56A8);
        v27 = sub_2531DA704();
        v29 = sub_253196608(v27, v28, &v50);

        *(v25 + 4) = v29;
        _os_log_impl(&dword_253166000, v23, v24, "Issuing goHome command to RVC : %s", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v26);
        MEMORY[0x259BFFA80](v26, -1, -1);
        MEMORY[0x259BFFA80](v25, -1, -1);
      }

      v49 = v21;
      sub_253190648(v15);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D170, &qword_2531E2AB0);
      v48 = sub_2531DA894();
      v0[46] = v48;

      if (qword_27F58D0E0 != -1)
      {
        swift_once();
      }

      v30 = v0[39];
      v31 = v0[40];
      v32 = v0[38];
      v47 = qword_27F59A2A0;
      v0[2] = v0;
      v0[7] = v0 + 34;
      v0[3] = sub_253190174;
      swift_continuation_init();
      v0[27] = v32;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 24);
      v0[47] = sub_253181ED8(0, &qword_27F58D9E0, 0x277CD54B8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D758, &qword_2531E4FB0);
      sub_2531DA954();
      (*(v30 + 32))(boxed_opaque_existential_0, v31, v32);
      v0[20] = MEMORY[0x277D85DD0];
      v0[21] = 1107296256;
      v0[22] = sub_253190A1C;
      v0[23] = &block_descriptor_0;
      [v49 goHomeWithExpectedValues:v48 expectedValueInterval:v47 completion:v0 + 20];
      (*(v30 + 8))(boxed_opaque_existential_0, v32);

      return MEMORY[0x282200938](v0 + 2);
    }

    if (qword_27F58D0F0 != -1)
    {
      swift_once();
    }

    v39 = sub_2531DA274();
    __swift_project_value_buffer(v39, qword_27F59A2A8);
    v40 = sub_2531DA254();
    v41 = sub_2531DAA64();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_253166000, v40, v41, "Unable to create MTRClusterRVCOperationalState for goHome command", v42, 2u);
      MEMORY[0x259BFFA80](v42, -1, -1);
    }

    sub_25318DD6C();
    swift_allocError();
    *v43 = 14;
    swift_willThrow();
  }

  else
  {
    if (qword_27F58D0F0 != -1)
    {
      swift_once();
    }

    v34 = sub_2531DA274();
    __swift_project_value_buffer(v34, qword_27F59A2A8);
    v35 = sub_2531DA254();
    v36 = sub_2531DAA84();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_253166000, v35, v36, "goHome: Invalid Matter device", v37, 2u);
      MEMORY[0x259BFFA80](v37, -1, -1);
    }

    sub_25318DD6C();
    swift_allocError();
    *v38 = 13;
    swift_willThrow();
  }

  v44 = v0[40];

  v45 = v0[1];

  return v45();
}

uint64_t sub_253190174()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 384) = v3;
  if (v3)
  {
    v4 = *(v1 + 344);

    v5 = sub_2531905B0;
  }

  else
  {
    v5 = sub_25319028C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_25319028C()
{
  v36 = v0;
  v1 = *(v0 + 360);
  v2 = *(v0 + 368);
  v3 = *(v0 + 272);

  v4 = sub_2531DA254();
  v5 = sub_2531DAA64();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 376);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v35[0] = v8;
    *v7 = 136315138;
    *(v0 + 280) = v3;
    v9 = v3;
    v10 = sub_2531DA704();
    v12 = sub_253196608(v10, v11, v35);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_253166000, v4, v5, "goHome command response: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x259BFFA80](v8, -1, -1);
    MEMORY[0x259BFFA80](v7, -1, -1);
  }

  v13 = *(v0 + 344);
  v14 = [v3 commandResponseState];

  v15 = [v14 errorStateID];
  LOBYTE(v14) = [v15 unsignedCharValue];

  sub_253197FBC(v14, v35);
  v16 = v35[0];
  if (LOBYTE(v35[0]))
  {
    v17 = *(v0 + 360);
    v18 = sub_2531DA254();
    v19 = sub_2531DAA84();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      sub_25318DD6C();
      swift_allocError();
      *v22 = v16;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 4) = v23;
      *v21 = v23;
      _os_log_impl(&dword_253166000, v18, v19, "operationalStateCluster.goHome failed with error: %@", v20, 0xCu);
      sub_25316FD44(v21);
      MEMORY[0x259BFFA80](v21, -1, -1);
      MEMORY[0x259BFFA80](v20, -1, -1);
    }

    v24 = *(v0 + 352);
    v26 = *(v0 + 328);
    v25 = *(v0 + 336);

    sub_25318DD6C();
    swift_allocError();
    *v27 = v16;
    swift_willThrow();

    v28 = *(v0 + 320);

    v29 = *(v0 + 8);
  }

  else
  {
    v30 = *(v0 + 352);
    v32 = *(v0 + 328);
    v31 = *(v0 + 336);
    v33 = *(v0 + 320);

    v29 = *(v0 + 8);
  }

  return v29();
}

uint64_t sub_2531905B0()
{
  v1 = v0[48];
  v2 = v0[46];
  v3 = v0[44];
  v5 = v0[41];
  v4 = v0[42];
  swift_willThrow();

  v6 = v0[48];
  v7 = v0[40];

  v8 = v0[1];

  return v8();
}

uint64_t sub_253190648(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    sub_2531B46CC(0, v1, 0);
    v4 = (a1 + 32);
    v2 = v10;
    do
    {
      v8 = *v4;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D1D0, &qword_2531E1478);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D170, &qword_2531E2AB0);
      swift_dynamicCast();
      v6 = *(v10 + 16);
      v5 = *(v10 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_2531B46CC((v5 > 1), v6 + 1, 1);
      }

      *(v10 + 16) = v6 + 1;
      *(v10 + 8 * v6 + 32) = v9;
      ++v4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_253190778(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v7 = MEMORY[0x277D84F90];
    sub_2531DAC94();
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_2531DB484();
      sub_2531DAC64();
      v6 = *(v7 + 16);
      sub_2531DACA4();
      sub_2531DACB4();
      sub_2531DAC74();
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

char *sub_253190820(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_2531DAD44();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x277D84F90];
  result = sub_2531B470C(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x259BFEA20](i, a1);
        sub_253181ED8(0, &qword_27F58D978, 0x277CCABB0);
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_2531B470C((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        sub_25318306C(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_253181ED8(0, &qword_27F58D978, 0x277CCABB0);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_2531B470C((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        sub_25318306C(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t MTR.RVCDevice.pause()()
{
  v1[37] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D9B8, &qword_2531E5688);
  v1[38] = v2;
  v3 = *(v2 - 8);
  v1[39] = v3;
  v4 = *(v3 + 64) + 15;
  v1[40] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_253190AFC, 0, 0);
}

uint64_t sub_253190AFC()
{
  v62 = v0;
  v1 = v0[37];
  v2 = *(v1 + 53);
  v3 = v2 >= 5;
  v4 = v2 - 5;
  if (v3)
  {
    if (v4 >= 2)
    {
      if (qword_27F58D0F0 != -1)
      {
        swift_once();
      }

      v45 = sub_2531DA274();
      __swift_project_value_buffer(v45, qword_27F59A2A8);
      v35 = sub_2531DA254();
      v36 = sub_2531DAA84();
      if (!os_log_type_enabled(v35, v36))
      {
        goto LABEL_25;
      }

      v37 = swift_slowAlloc();
      *v37 = 0;
      v38 = "pause: Current operational state not available. Cannot pause";
    }

    else
    {
      if (qword_27F58D0F0 != -1)
      {
        swift_once();
      }

      v34 = sub_2531DA274();
      __swift_project_value_buffer(v34, qword_27F59A2A8);
      v35 = sub_2531DA254();
      v36 = sub_2531DAA84();
      if (!os_log_type_enabled(v35, v36))
      {
        goto LABEL_25;
      }

      v37 = swift_slowAlloc();
      *v37 = 0;
      v38 = "Cannot pause RVC while charging or docked";
    }

    _os_log_impl(&dword_253166000, v35, v36, v38, v37, 2u);
    MEMORY[0x259BFFA80](v37, -1, -1);
LABEL_25:

    sub_25318DD6C();
    swift_allocError();
    v44 = 6;
LABEL_26:
    *v43 = v44;
    swift_willThrow();
    goto LABEL_27;
  }

  sub_25316B6E4(v1 + 8, (v0 + 28));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D9C0, &qword_2531E5690);
  sub_253181ED8(0, &qword_27F58D9C8, 0x277CD5310);
  if (!swift_dynamicCast())
  {
    if (qword_27F58D0F0 != -1)
    {
      swift_once();
    }

    v39 = sub_2531DA274();
    __swift_project_value_buffer(v39, qword_27F59A2A8);
    v40 = sub_2531DA254();
    v41 = sub_2531DAA84();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_253166000, v40, v41, "pause: Invalid Matter device", v42, 2u);
      MEMORY[0x259BFFA80](v42, -1, -1);
    }

    sub_25318DD6C();
    swift_allocError();
    v44 = 13;
    goto LABEL_26;
  }

  v5 = v0[37];
  v6 = v0[33];
  v0[41] = v6;
  v7 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedShort_];
  v8 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
  v9 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
  v10 = [objc_opt_self() attributePathWithEndpointID:v7 clusterID:v8 attributeID:v9];
  v0[42] = v10;

  v60 = xmmword_2531E5660;
  v61 = 2;
  MTR.Value.makeDataValue()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D9D0, &qword_2531E5698);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2531E53E0;
  v12 = *MEMORY[0x277CD50B8];
  *(inited + 32) = sub_2531DA6D4();
  *(inited + 40) = v13;
  *(inited + 48) = v10;
  v14 = *MEMORY[0x277CD50D8];
  *(inited + 56) = sub_2531DA6D4();
  *(inited + 64) = v15;
  v16 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D730, &qword_2531E48E0);
  v17 = sub_2531DA604();

  *(inited + 72) = v17;
  v18 = sub_2531B589C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D9D8, &qword_2531E56A0);
  swift_arrayDestroy();
  v19 = sub_25316A984(0, 1, 1, MEMORY[0x277D84F90]);
  v21 = v19[2];
  v20 = v19[3];
  if (v21 >= v20 >> 1)
  {
    v19 = sub_25316A984((v20 > 1), v21 + 1, 1, v19);
  }

  v22 = v0[37];
  v19[2] = v21 + 1;
  v19[v21 + 4] = v18;
  v23 = v6;
  v24 = sub_2531DB474();
  v25 = [objc_allocWithZone(MEMORY[0x277CD52A0]) initWithDevice:v23 endpointID:v24 queue:*v22];
  v0[43] = v25;

  if (v25)
  {
    if (qword_27F58D0F0 != -1)
    {
      swift_once();
    }

    v26 = sub_2531DA274();
    v0[44] = __swift_project_value_buffer(v26, qword_27F59A2A8);
    swift_bridgeObjectRetain_n();
    v27 = sub_2531DA254();
    v28 = sub_2531DAA64();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *&v60 = v30;
      *v29 = 136315138;
      v0[36] = v19;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D9E8, &qword_2531E56A8);
      v31 = sub_2531DA704();
      v33 = sub_253196608(v31, v32, &v60);

      *(v29 + 4) = v33;

      _os_log_impl(&dword_253166000, v27, v28, "Issuing pause command to RVC : %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x259BFFA80](v30, -1, -1);
      MEMORY[0x259BFFA80](v29, -1, -1);
    }

    else
    {
    }

    sub_253190648(v19);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D170, &qword_2531E2AB0);
    v59 = sub_2531DA894();
    v0[45] = v59;

    if (qword_27F58D0E0 != -1)
    {
      swift_once();
    }

    v54 = v0[39];
    v55 = v0[40];
    v56 = v0[38];
    v58 = qword_27F59A2A0;
    v0[2] = v0;
    v0[7] = v0 + 34;
    v0[3] = sub_2531914F4;
    swift_continuation_init();
    v0[27] = v56;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 24);
    v0[46] = sub_253181ED8(0, &qword_27F58D9E0, 0x277CD54B8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D758, &qword_2531E4FB0);
    sub_2531DA954();
    (*(v54 + 32))(boxed_opaque_existential_0, v55, v56);
    v0[20] = MEMORY[0x277D85DD0];
    v0[21] = 1107296256;
    v0[22] = sub_253190A1C;
    v0[23] = &block_descriptor_8;
    [v25 pauseWithExpectedValues:v59 expectedValueInterval:v58 completion:v0 + 20];
    (*(v54 + 8))(boxed_opaque_existential_0, v56);

    return MEMORY[0x282200938](v0 + 2);
  }

  if (qword_27F58D0F0 != -1)
  {
    swift_once();
  }

  v49 = sub_2531DA274();
  __swift_project_value_buffer(v49, qword_27F59A2A8);
  v50 = sub_2531DA254();
  v51 = sub_2531DAA64();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 0;
    _os_log_impl(&dword_253166000, v50, v51, "Unable to create MTRClusterRVCOperationalState for pause command", v52, 2u);
    MEMORY[0x259BFFA80](v52, -1, -1);
  }

  sub_25318DD6C();
  swift_allocError();
  *v53 = 14;
  swift_willThrow();

LABEL_27:
  v46 = v0[40];

  v47 = v0[1];

  return v47();
}

uint64_t sub_2531914F4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 376) = v2;
  if (v2)
  {
    v3 = sub_2531917BC;
  }

  else
  {
    v3 = sub_253191604;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_253191604()
{
  v22 = v0;
  v1 = *(v0 + 352);
  v2 = *(v0 + 360);
  v3 = *(v0 + 272);

  v4 = v3;
  v5 = sub_2531DA254();
  v6 = sub_2531DAA64();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 368);
    v8 = *(v0 + 344);
    v20 = *(v0 + 336);
    v9 = *(v0 + 328);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v10 = 136315138;
    *(v0 + 280) = v4;
    v12 = sub_2531DA704();
    v14 = sub_253196608(v12, v13, &v21);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_253166000, v5, v6, "pause command response: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x259BFFA80](v11, -1, -1);
    MEMORY[0x259BFFA80](v10, -1, -1);
  }

  else
  {
    v15 = *(v0 + 344);
    v16 = *(v0 + 328);
  }

  v17 = *(v0 + 320);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_2531917BC()
{
  v1 = v0[47];
  v2 = v0[45];
  v4 = v0[42];
  v3 = v0[43];
  v5 = v0[41];
  swift_willThrow();

  v6 = v0[47];
  v7 = v0[40];

  v8 = v0[1];

  return v8();
}

uint64_t MTR.RVCDevice.resume()()
{
  v1[37] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D9B8, &qword_2531E5688);
  v1[38] = v2;
  v3 = *(v2 - 8);
  v1[39] = v3;
  v4 = *(v3 + 64) + 15;
  v1[40] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_253191920, 0, 0);
}

uint64_t sub_253191920()
{
  v61 = v0;
  v1 = v0[37];
  v2 = *(v1 + 53);
  if (((1 << v2) & 0x6F) == 0)
  {
    if (v2 == 4)
    {
      if (qword_27F58D0F0 != -1)
      {
        swift_once();
      }

      v42 = sub_2531DA274();
      __swift_project_value_buffer(v42, qword_27F59A2A8);
      v43 = sub_2531DA254();
      v44 = sub_2531DAA84();
      if (!os_log_type_enabled(v43, v44))
      {
        goto LABEL_35;
      }

      v45 = swift_slowAlloc();
      *v45 = 0;
      v46 = "Cannot resume while in seekingCharger state";
    }

    else
    {
      if (qword_27F58D0F0 != -1)
      {
        swift_once();
      }

      v52 = sub_2531DA274();
      __swift_project_value_buffer(v52, qword_27F59A2A8);
      v43 = sub_2531DA254();
      v44 = sub_2531DAA84();
      if (!os_log_type_enabled(v43, v44))
      {
        goto LABEL_35;
      }

      v45 = swift_slowAlloc();
      *v45 = 0;
      v46 = "resume: Current operational state not available. Cannot pause";
    }

    _os_log_impl(&dword_253166000, v43, v44, v46, v45, 2u);
    MEMORY[0x259BFFA80](v45, -1, -1);
LABEL_35:

    sub_25318DD6C();
    swift_allocError();
    v41 = 6;
LABEL_36:
    *v40 = v41;
    swift_willThrow();
    goto LABEL_37;
  }

  sub_25316B6E4(v1 + 8, (v0 + 28));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D9C0, &qword_2531E5690);
  sub_253181ED8(0, &qword_27F58D9C8, 0x277CD5310);
  if (!swift_dynamicCast())
  {
    if (qword_27F58D0F0 != -1)
    {
      swift_once();
    }

    v36 = sub_2531DA274();
    __swift_project_value_buffer(v36, qword_27F59A2A8);
    v37 = sub_2531DA254();
    v38 = sub_2531DAA84();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_253166000, v37, v38, "resume: Invalid Matter device", v39, 2u);
      MEMORY[0x259BFFA80](v39, -1, -1);
    }

    sub_25318DD6C();
    swift_allocError();
    v41 = 13;
    goto LABEL_36;
  }

  v3 = v0[37];
  v4 = v0[33];
  v0[41] = v4;
  v5 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedShort_];
  v6 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
  v7 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
  v8 = [objc_opt_self() attributePathWithEndpointID:v5 clusterID:v6 attributeID:v7];
  v0[42] = v8;

  v59 = xmmword_2531E1A40;
  v60 = 2;
  MTR.Value.makeDataValue()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D9D0, &qword_2531E5698);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2531E53E0;
  v10 = *MEMORY[0x277CD50B8];
  *(inited + 32) = sub_2531DA6D4();
  *(inited + 40) = v11;
  *(inited + 48) = v8;
  v12 = *MEMORY[0x277CD50D8];
  *(inited + 56) = sub_2531DA6D4();
  *(inited + 64) = v13;
  v14 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D730, &qword_2531E48E0);
  v15 = sub_2531DA604();

  *(inited + 72) = v15;
  v16 = sub_2531B589C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D9D8, &qword_2531E56A0);
  swift_arrayDestroy();
  v17 = sub_25316A984(0, 1, 1, MEMORY[0x277D84F90]);
  v19 = v17[2];
  v18 = v17[3];
  if (v19 >= v18 >> 1)
  {
    v17 = sub_25316A984((v18 > 1), v19 + 1, 1, v17);
  }

  v0[43] = v17;
  v20 = v0[37];
  v17[2] = v19 + 1;
  v17[v19 + 4] = v16;
  v21 = v4;
  v22 = sub_2531DB474();
  v23 = [objc_allocWithZone(MEMORY[0x277CD52A0]) initWithDevice:v21 endpointID:v22 queue:*v20];
  v0[44] = v23;

  if (v23)
  {
    if (qword_27F58D0F0 != -1)
    {
      swift_once();
    }

    v24 = sub_2531DA274();
    v0[45] = __swift_project_value_buffer(v24, qword_27F59A2A8);

    v25 = sub_2531DA254();
    v26 = sub_2531DAA64();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *&v59 = v28;
      *v27 = 136315138;
      v0[36] = v17;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D9E8, &qword_2531E56A8);
      v29 = sub_2531DA704();
      v31 = sub_253196608(v29, v30, &v59);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_253166000, v25, v26, "Issuing resume command to RVC : %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x259BFFA80](v28, -1, -1);
      MEMORY[0x259BFFA80](v27, -1, -1);
    }

    v58 = v23;
    sub_253190648(v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D170, &qword_2531E2AB0);
    v57 = sub_2531DA894();
    v0[46] = v57;

    if (qword_27F58D0E0 != -1)
    {
      swift_once();
    }

    v32 = v0[39];
    v33 = v0[40];
    v34 = v0[38];
    v56 = qword_27F59A2A0;
    v0[2] = v0;
    v0[7] = v0 + 34;
    v0[3] = sub_253192304;
    swift_continuation_init();
    v0[27] = v34;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 24);
    v0[47] = sub_253181ED8(0, &qword_27F58D9E0, 0x277CD54B8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D758, &qword_2531E4FB0);
    sub_2531DA954();
    (*(v32 + 32))(boxed_opaque_existential_0, v33, v34);
    v0[20] = MEMORY[0x277D85DD0];
    v0[21] = 1107296256;
    v0[22] = sub_253190A1C;
    v0[23] = &block_descriptor_12;
    [v58 resumeWithExpectedValues:v57 expectedValueInterval:v56 completion:v0 + 20];
    (*(v32 + 8))(boxed_opaque_existential_0, v34);

    return MEMORY[0x282200938](v0 + 2);
  }

  if (qword_27F58D0F0 != -1)
  {
    swift_once();
  }

  v47 = sub_2531DA274();
  __swift_project_value_buffer(v47, qword_27F59A2A8);
  v48 = sub_2531DA254();
  v49 = sub_2531DAA64();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 0;
    _os_log_impl(&dword_253166000, v48, v49, "Unable to create MTRClusterRVCOperationalState for pause command", v50, 2u);
    MEMORY[0x259BFFA80](v50, -1, -1);
  }

  sub_25318DD6C();
  swift_allocError();
  *v51 = 14;
  swift_willThrow();

LABEL_37:
  v53 = v0[40];

  v54 = v0[1];

  return v54();
}

uint64_t sub_253192304()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 384) = v3;
  if (v3)
  {
    v4 = *(v1 + 344);

    v5 = sub_25319717C;
  }

  else
  {
    v5 = sub_25319241C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_25319241C()
{
  v36 = v0;
  v1 = *(v0 + 360);
  v2 = *(v0 + 368);
  v3 = *(v0 + 272);

  v4 = sub_2531DA254();
  v5 = sub_2531DAA64();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 376);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v35[0] = v8;
    *v7 = 136315138;
    *(v0 + 280) = v3;
    v9 = v3;
    v10 = sub_2531DA704();
    v12 = sub_253196608(v10, v11, v35);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_253166000, v4, v5, "resume command response: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x259BFFA80](v8, -1, -1);
    MEMORY[0x259BFFA80](v7, -1, -1);
  }

  v13 = *(v0 + 344);
  v14 = [v3 commandResponseState];

  v15 = [v14 errorStateID];
  LOBYTE(v14) = [v15 unsignedCharValue];

  sub_253197FBC(v14, v35);
  v16 = v35[0];
  if (LOBYTE(v35[0]))
  {
    v17 = *(v0 + 360);
    v18 = sub_2531DA254();
    v19 = sub_2531DAA84();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      sub_25318DD6C();
      swift_allocError();
      *v22 = v16;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 4) = v23;
      *v21 = v23;
      _os_log_impl(&dword_253166000, v18, v19, "operationalStateCluster.resume failed with error: %@", v20, 0xCu);
      sub_25316FD44(v21);
      MEMORY[0x259BFFA80](v21, -1, -1);
      MEMORY[0x259BFFA80](v20, -1, -1);
    }

    v24 = *(v0 + 352);
    v26 = *(v0 + 328);
    v25 = *(v0 + 336);

    sub_25318DD6C();
    swift_allocError();
    *v27 = v16;
    swift_willThrow();

    v28 = *(v0 + 320);

    v29 = *(v0 + 8);
  }

  else
  {
    v30 = *(v0 + 352);
    v32 = *(v0 + 328);
    v31 = *(v0 + 336);
    v33 = *(v0 + 320);

    v29 = *(v0 + 8);
  }

  return v29();
}

uint64_t sub_253192740()
{
  v1[47] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D9F8, &qword_2531E57D8);
  v1[48] = v2;
  v3 = *(v2 - 8);
  v1[49] = v3;
  v4 = *(v3 + 64) + 15;
  v1[50] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25319280C, 0, 0);
}

uint64_t sub_25319280C()
{
  v100 = v0;
  sub_25316B6E4(*(v0 + 376) + 8, v0 + 304);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D9C0, &qword_2531E5690);
  sub_253181ED8(0, &qword_27F58D9C8, 0x277CD5310);
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 376);
    v2 = *(v0 + 344);
    *(v0 + 408) = v2;
    v3 = *(v1 + 72);
    if (v3)
    {
      v4 = 0;
      v97 = v2;
      v5 = -1 << *(v3 + 32);
      if (-v5 < 64)
      {
        v6 = ~(-1 << -v5);
      }

      else
      {
        v6 = -1;
      }

      v7 = v6 & *(v3 + 56);
      v8 = (63 - v5) >> 6;
      while (1)
      {
LABEL_7:
        if (!v7)
        {
          v2 = v97;
          while (1)
          {
            v9 = v4 + 1;
            if (__OFADD__(v4, 1))
            {
              break;
            }

            if (v9 >= v8)
            {
              goto LABEL_23;
            }

            v7 = *(v3 + 56 + 8 * v9);
            ++v4;
            if (v7)
            {
              v4 = v9;
              goto LABEL_13;
            }
          }

          __break(1u);
          goto LABEL_51;
        }

LABEL_13:
        v10 = __clz(__rbit64(v7));
        v7 &= v7 - 1;
        v11 = (*(v3 + 48) + ((v4 << 11) | (32 * v10)));
        v12 = v11[3];
        if (*(v12 + 16))
        {
          v13 = *v11;
          v14 = *(v12 + 40);
          sub_2531DB3F4();
          sub_2531DB424();
          v15 = sub_2531DB454();
          v16 = -1 << *(v12 + 32);
          v17 = v15 & ~v16;
          if ((*(v12 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
          {
            break;
          }
        }
      }

      v18 = ~v16;
      while (*(*(v12 + 48) + v17) != 11)
      {
        v17 = (v17 + 1) & v18;
        if (((*(v12 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
        {
          goto LABEL_7;
        }
      }

      v36 = *(v0 + 376);
      v37 = [objc_allocWithZone(MEMORY[0x277CD54C0]) init];
      *(v0 + 416) = v37;
      v38 = sub_2531DAB34();
      v95 = v37;
      [v37 setNewMode_];

      v93 = *(v36 + 48);
      v39 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedShort_];
      v40 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
      v41 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
      v92 = objc_opt_self();
      v42 = [v92 attributePathWithEndpointID:v39 clusterID:v40 attributeID:v41];
      *(v0 + 424) = v42;

      v98 = v13;
      v99 = 2;
      MTR.Value.makeDataValue()();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D9D0, &qword_2531E5698);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2531E53E0;
      v44 = *MEMORY[0x277CD50B8];
      *(inited + 32) = sub_2531DA6D4();
      *(inited + 40) = v45;
      *(inited + 48) = v42;
      v91 = *MEMORY[0x277CD50D8];
      *(inited + 56) = sub_2531DA6D4();
      *(inited + 64) = v46;
      v90 = v42;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D730, &qword_2531E48E0);
      v47 = sub_2531DA604();

      *(inited + 72) = v47;
      v48 = sub_2531B589C(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D9D8, &qword_2531E56A0);
      swift_arrayDestroy();
      v49 = sub_25316A984(0, 1, 1, MEMORY[0x277D84F90]);
      v51 = v49[2];
      v50 = v49[3];
      if (v51 >= v50 >> 1)
      {
        v49 = sub_25316A984((v50 > 1), v51 + 1, 1, v49);
      }

      v49[2] = v51 + 1;
      v49[v51 + 4] = v48;
      v52 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedShort_];
      v53 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
      v54 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
      v55 = [v92 attributePathWithEndpointID:v52 clusterID:v53 attributeID:v54];
      *(v0 + 432) = v55;

      v98 = xmmword_2531E1A40;
      v99 = 2;
      MTR.Value.makeDataValue()();
      v56 = swift_initStackObject();
      *(v56 + 16) = xmmword_2531E53E0;
      *(v56 + 32) = sub_2531DA6D4();
      *(v56 + 40) = v57;
      *(v56 + 48) = v55;
      *(v56 + 56) = sub_2531DA6D4();
      *(v56 + 64) = v58;
      v59 = v55;
      v60 = sub_2531DA604();

      *(v56 + 72) = v60;
      v61 = sub_2531B589C(v56);
      swift_setDeallocating();
      swift_arrayDestroy();
      v63 = v49[2];
      v62 = v49[3];
      if (v63 >= v62 >> 1)
      {
        v49 = sub_25316A984((v62 > 1), v63 + 1, 1, v49);
      }

      *(v0 + 440) = v49;
      v64 = *(v0 + 376);
      v49[2] = v63 + 1;
      v49[v63 + 4] = v61;
      v65 = v97;
      v66 = sub_2531DB474();
      v67 = [objc_allocWithZone(MEMORY[0x277CD52A8]) initWithDevice:v65 endpointID:v66 queue:*v64];
      *(v0 + 448) = v67;

      if (v67)
      {
        if (qword_27F58D0F0 != -1)
        {
          swift_once();
        }

        v68 = sub_2531DA274();
        *(v0 + 456) = __swift_project_value_buffer(v68, qword_27F59A2A8);
        v69 = v95;

        v70 = sub_2531DA254();
        v71 = sub_2531DAA64();

        if (os_log_type_enabled(v70, v71))
        {
          v72 = swift_slowAlloc();
          v73 = swift_slowAlloc();
          *&v98 = v73;
          *v72 = 136315394;
          *(v0 + 360) = v69;
          sub_253181ED8(0, &qword_27F58DA08, 0x277CD54C0);
          v74 = v69;
          v75 = sub_2531DA704();
          v77 = sub_253196608(v75, v76, &v98);

          *(v72 + 4) = v77;
          *(v72 + 12) = 2080;
          *(v0 + 368) = v49;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D9E8, &qword_2531E56A8);
          v78 = sub_2531DA704();
          v80 = sub_253196608(v78, v79, &v98);

          *(v72 + 14) = v80;
          _os_log_impl(&dword_253166000, v70, v71, "Changing run mode to %s, expected values: %s", v72, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x259BFFA80](v73, -1, -1);
          MEMORY[0x259BFFA80](v72, -1, -1);
        }

        sub_253190648(v49);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D170, &qword_2531E2AB0);
        v96 = sub_2531DA894();
        *(v0 + 464) = v96;

        if (qword_27F58D0E0 != -1)
        {
          swift_once();
        }

        v81 = *(v0 + 392);
        v82 = *(v0 + 400);
        v83 = *(v0 + 384);
        v94 = qword_27F59A2A0;
        *(v0 + 16) = v0;
        *(v0 + 56) = v0 + 352;
        *(v0 + 24) = sub_253193538;
        swift_continuation_init();
        *(v0 + 296) = v83;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 272));
        sub_253181ED8(0, &qword_27F58DA00, 0x277CD54C8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D758, &qword_2531E4FB0);
        sub_2531DA954();
        (*(v81 + 32))(boxed_opaque_existential_0, v82, v83);
        *(v0 + 240) = MEMORY[0x277D85DD0];
        *(v0 + 248) = 1107296256;
        *(v0 + 256) = sub_2531939F0;
        *(v0 + 264) = &block_descriptor_20;
        [v67 changeToModeWithParams:v69 expectedValues:v96 expectedValueInterval:v94 completion:{v0 + 240, v90}];
        (*(v81 + 8))(boxed_opaque_existential_0, v83);

        return MEMORY[0x282200938](v0 + 16);
      }

      if (qword_27F58D0F0 != -1)
      {
        swift_once();
      }

      v85 = sub_2531DA274();
      __swift_project_value_buffer(v85, qword_27F59A2A8);
      v86 = sub_2531DA254();
      v87 = sub_2531DAA64();
      if (os_log_type_enabled(v86, v87))
      {
        v88 = swift_slowAlloc();
        *v88 = 0;
        _os_log_impl(&dword_253166000, v86, v87, "Unable to create MTRClusterRVCRunMode", v88, 2u);
        MEMORY[0x259BFFA80](v88, -1, -1);
      }

      sub_25318DD6C();
      swift_allocError();
      *v89 = 14;
      swift_willThrow();
    }

    else
    {
LABEL_23:
      if (qword_27F58D0F0 != -1)
      {
        swift_once();
      }

      v24 = sub_2531DA274();
      __swift_project_value_buffer(v24, qword_27F59A2A8);
      v25 = sub_2531DA254();
      v26 = sub_2531DAA84();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        *&v98 = v28;
        *v27 = 136315138;
        *(v0 + 480) = 11;
        v29 = sub_2531DA704();
        v31 = sub_253196608(v29, v30, &v98);

        *(v27 + 4) = v31;
        _os_log_impl(&dword_253166000, v25, v26, "Invalid run mode type %s", v27, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v28);
        MEMORY[0x259BFFA80](v28, -1, -1);
        MEMORY[0x259BFFA80](v27, -1, -1);
      }

      sub_25318DD6C();
      swift_allocError();
      *v32 = 4;
      swift_willThrow();
    }
  }

  else
  {
    if (qword_27F58D0F0 != -1)
    {
LABEL_51:
      swift_once();
    }

    v19 = sub_2531DA274();
    __swift_project_value_buffer(v19, qword_27F59A2A8);
    v20 = sub_2531DA254();
    v21 = sub_2531DAA84();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_253166000, v20, v21, "start: Invalid Matter device", v22, 2u);
      MEMORY[0x259BFFA80](v22, -1, -1);
    }

    sub_25318DD6C();
    swift_allocError();
    *v23 = 13;
    swift_willThrow();
  }

  v33 = *(v0 + 400);

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_253193538()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 472) = v3;
  if (v3)
  {
    v4 = *(v1 + 440);

    v5 = sub_253193948;
  }

  else
  {
    v5 = sub_253193650;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_253193650()
{
  v36 = v0;
  v1 = *(v0 + 456);
  v2 = *(v0 + 464);
  v3 = *(v0 + 352);

  v4 = sub_2531DA254();
  v5 = sub_2531DAA64();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&dword_253166000, v4, v5, "runModeCluster.changeToMode response: %@", v6, 0xCu);
    sub_25316FD44(v7);
    MEMORY[0x259BFFA80](v7, -1, -1);
    MEMORY[0x259BFFA80](v6, -1, -1);
  }

  v9 = *(v0 + 440);

  v10 = [v3 status];
  v11 = [v10 unsignedCharValue];

  sub_2531981E8(v11, v35);
  v12 = v35[0];
  if (v35[0])
  {
    v13 = *(v0 + 456);
    v14 = sub_2531DA254();
    v15 = sub_2531DAA84();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      sub_25318DD6C();
      swift_allocError();
      *v18 = v12;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v19;
      *v17 = v19;
      _os_log_impl(&dword_253166000, v14, v15, "runModeCluster.changeToMode failed with error: %@", v16, 0xCu);
      sub_25316FD44(v17);
      MEMORY[0x259BFFA80](v17, -1, -1);
      MEMORY[0x259BFFA80](v16, -1, -1);
    }

    v20 = *(v0 + 448);
    v22 = *(v0 + 424);
    v21 = *(v0 + 432);
    v24 = *(v0 + 408);
    v23 = *(v0 + 416);

    sub_25318DD6C();
    swift_allocError();
    *v25 = v12;
    swift_willThrow();

    v26 = *(v0 + 400);

    v27 = *(v0 + 8);
  }

  else
  {
    v28 = *(v0 + 448);
    v30 = *(v0 + 424);
    v29 = *(v0 + 432);
    v32 = *(v0 + 408);
    v31 = *(v0 + 416);
    v33 = *(v0 + 400);

    v27 = *(v0 + 8);
  }

  return v27();
}

uint64_t sub_253193948()
{
  v1 = v0[58];
  v2 = v0[59];
  v3 = v0[56];
  v5 = v0[53];
  v4 = v0[54];
  v7 = v0[51];
  v6 = v0[52];
  swift_willThrow();

  v8 = v0[59];
  v9 = v0[50];

  v10 = v0[1];

  return v10();
}

void sub_253193A04(uint64_t a1, void *a2, void *a3, uint64_t *a4, uint64_t *a5)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v9 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    sub_2531DA964();
  }

  else if (a2)
  {
    v10 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    sub_2531DA974();
  }

  else
  {
    __break(1u);
  }
}

uint64_t MTR.RVCDevice.startCleaning(areas:targetCleanModes:)(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  return MEMORY[0x2822009F8](sub_253193AD8, 0, 0);
}

uint64_t sub_253193AD8()
{
  sub_25316B6E4(v0[10] + 8, (v0 + 2));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D9C0, &qword_2531E5690);
  sub_253181ED8(0, &qword_27F58D9C8, 0x277CD5310);
  if (swift_dynamicCast())
  {
    v1 = v0[7];
    v0[11] = v1;
    v2 = swift_task_alloc();
    v0[12] = v2;
    *v2 = v0;
    v2[1] = sub_253193CF8;
    v3 = v0[10];
    v4 = v0[8];

    return sub_2531945F8(v4, v1);
  }

  else
  {
    if (qword_27F58D0F0 != -1)
    {
      swift_once();
    }

    v6 = sub_2531DA274();
    __swift_project_value_buffer(v6, qword_27F59A2A8);
    v7 = sub_2531DA254();
    v8 = sub_2531DAA84();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_253166000, v7, v8, "startCleaning: Invalid Matter device", v9, 2u);
      MEMORY[0x259BFFA80](v9, -1, -1);
    }

    sub_25318DD6C();
    swift_allocError();
    *v10 = 13;
    swift_willThrow();
    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_253193CF8(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v7 = sub_2531944CC;
  }

  else
  {
    *(v4 + 144) = a1 & 1;
    v7 = sub_253193E24;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_253193E24()
{
  if (*(v0 + 144) == 1)
  {
    if (*(*(v0 + 72) + 16))
    {
      v1 = swift_task_alloc();
      *(v0 + 112) = v1;
      *v1 = v0;
      v1[1] = sub_253194068;
      v3 = *(v0 + 80);
      v2 = *(v0 + 88);
      v4 = *(v0 + 72);

      return sub_2531954CC(v4, v2);
    }

    else
    {
      v13 = swift_task_alloc();
      *(v0 + 128) = v13;
      *v13 = v0;
      v13[1] = sub_253194354;
      v14 = *(v0 + 80);

      return sub_253192740();
    }
  }

  else
  {
    if (qword_27F58D0F0 != -1)
    {
      swift_once();
    }

    v6 = sub_2531DA274();
    __swift_project_value_buffer(v6, qword_27F59A2A8);
    v7 = sub_2531DA254();
    v8 = sub_2531DAA84();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_253166000, v7, v8, "startCleaning: Unable to select areas", v9, 2u);
      MEMORY[0x259BFFA80](v9, -1, -1);
    }

    v10 = *(v0 + 88);

    sub_25318DD6C();
    swift_allocError();
    *v11 = 6;
    swift_willThrow();

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_253194068(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 112);
  v6 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v7 = sub_253194530;
  }

  else
  {
    *(v4 + 145) = a1 & 1;
    v7 = sub_253194194;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_253194194()
{
  if (*(v0 + 145))
  {
    v1 = swift_task_alloc();
    *(v0 + 128) = v1;
    *v1 = v0;
    v1[1] = sub_253194354;
    v2 = *(v0 + 80);

    return sub_253192740();
  }

  else
  {
    if (qword_27F58D0F0 != -1)
    {
      swift_once();
    }

    v4 = sub_2531DA274();
    __swift_project_value_buffer(v4, qword_27F59A2A8);
    v5 = sub_2531DA254();
    v6 = sub_2531DAA84();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_253166000, v5, v6, "Unable to set clean mode", v7, 2u);
      MEMORY[0x259BFFA80](v7, -1, -1);
    }

    v8 = *(v0 + 88);

    sub_25318DD6C();
    swift_allocError();
    *v9 = 4;
    swift_willThrow();

    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_253194354()
{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_253194594;
  }

  else
  {
    v3 = sub_253194468;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_253194468()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2531944CC()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_253194530()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_253194594()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2531945F8(uint64_t a1, uint64_t a2)
{
  v3[49] = a2;
  v3[50] = v2;
  v3[48] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DA48, &qword_2531E5808);
  v3[51] = v4;
  v5 = *(v4 - 8);
  v3[52] = v5;
  v6 = *(v5 + 64) + 15;
  v3[53] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2531946C8, 0, 0);
}

uint64_t sub_2531946C8()
{
  v77 = v0;
  v1 = *(v0[50] + 96);
  if (v1)
  {
    sub_25318B8EC(336, v1);
  }

  if (qword_27F58D0F0 == -1)
  {
    goto LABEL_4;
  }

  while (1)
  {
    swift_once();
LABEL_4:
    v2 = v0[50];
    v3 = sub_2531DA274();
    v0[54] = __swift_project_value_buffer(v3, qword_27F59A2A8);
    sub_2531970E4(v2, (v0 + 26));
    v4 = sub_2531DA254();
    v5 = sub_2531DAA64();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v74 = v7;
      *v6 = 136315138;
      v8 = v0[30];
      __swift_project_boxed_opaque_existential_1(v0 + 27, v8);
      v9 = *(v8 - 8);
      v10 = *(v9 + 64) + 15;
      swift_task_alloc();
      (*(v9 + 16))();
      v11 = sub_2531DA704();
      v13 = v12;

      sub_25319711C((v0 + 26));
      v14 = sub_253196608(v11, v13, &v74);

      *(v6 + 4) = v14;
      _os_log_impl(&dword_253166000, v4, v5, "Device %s supports mapping", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v7);
      MEMORY[0x259BFFA80](v7, -1, -1);
      MEMORY[0x259BFFA80](v6, -1, -1);
    }

    else
    {

      sub_25319711C((v0 + 26));
    }

    v15 = v0[49];
    v16 = v0[50];
    v17 = *(v16 + 48);
    v18 = sub_2531DB474();
    v19 = [objc_allocWithZone(MEMORY[0x277CD52B0]) initWithDevice:v15 endpointID:v18 queue:*v16];
    v0[55] = v19;

    if (!v19)
    {
      break;
    }

    v71 = v19;
    v20 = v0[48];
    v21 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedShort_];
    v22 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
    v23 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
    v72 = [objc_opt_self() attributePathWithEndpointID:v21 clusterID:v22 attributeID:v23];
    v0[56] = v72;

    v24 = -1;
    v25 = -1 << *(v20 + 32);
    if (-v25 < 64)
    {
      v24 = ~(-1 << -v25);
    }

    v26 = v24 & *(v20 + 56);
    v27 = (63 - v25) >> 6;

    v28 = 0;
    for (i = MEMORY[0x277D84F90]; v26; v34[48] = 2)
    {
LABEL_15:
      v31 = *(*(v20 + 48) + ((v28 << 8) | (4 * __clz(__rbit64(v26)))));
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        i = sub_25316A3D4(0, *(i + 2) + 1, 1, i);
      }

      v33 = *(i + 2);
      v32 = *(i + 3);
      if (v33 >= v32 >> 1)
      {
        i = sub_25316A3D4((v32 > 1), v33 + 1, 1, i);
      }

      v26 &= v26 - 1;
      *(i + 2) = v33 + 1;
      v34 = &i[24 * v33];
      *(v34 + 4) = v31;
      *(v34 + 5) = 0;
    }

    while (1)
    {
      v30 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v30 >= v27)
      {
        v35 = v0[48];

        v36 = swift_allocObject();
        *(v36 + 16) = i;
        v74 = v36;
        v75 = 0;
        LOBYTE(v76) = 7;
        v37 = MTR.Value.makeDataValue()();
        sub_25316D2BC(v74, v75, v76);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DA28, &qword_2531E57F8);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2531E53E0;
        v39 = *MEMORY[0x277CD50B8];
        *(inited + 32) = sub_2531DA6D4();
        *(inited + 40) = v40;
        *(inited + 72) = sub_253181ED8(0, &qword_27F58DA30, 0x277CD51C0);
        *(inited + 48) = v72;
        v41 = *MEMORY[0x277CD50D8];
        *(inited + 80) = sub_2531DA6D4();
        *(inited + 88) = v42;
        *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D178, &qword_2531E11F8);
        *(inited + 96) = v37;
        v43 = v72;
        v44 = sub_2531B54D8(inited);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DA38, &qword_2531E5800);
        swift_arrayDestroy();
        v45 = sub_25316A9A8(0, 1, 1, MEMORY[0x277D84F90]);
        v47 = v45[2];
        v46 = v45[3];
        if (v47 >= v46 >> 1)
        {
          v45 = sub_25316A9A8((v46 > 1), v47 + 1, 1, v45);
        }

        v0[57] = v45;
        v48 = v0[48];
        v45[2] = v47 + 1;
        v45[v47 + 4] = v44;
        v49 = [objc_allocWithZone(MEMORY[0x277CD5518]) init];
        v0[58] = v49;
        v50 = *(v48 + 16);
        v73 = v49;
        if (v50)
        {
          v51 = v0[48];
          v52 = sub_253196584(v50, 0);
          v69 = sub_253196D18(&v74, v52 + 8, v50, v51);

          v53 = sub_25319714C();
          if (v69 == v50)
          {
            v49 = v73;
            goto LABEL_32;
          }

          __break(1u);
        }

        else
        {
          v52 = MEMORY[0x277D84F90];
LABEL_32:
          v61 = v49;
          v62 = sub_253190778(v52);

          sub_253190820(v62);

          v63 = sub_2531DA894();

          [v61 setNewAreas_];

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D170, &qword_2531E2AB0);
          v70 = sub_2531DA894();
          v0[59] = v70;
          if (qword_27F58D0E0 != -1)
          {
            swift_once();
          }

          v64 = v0[52];
          v65 = v0[53];
          v66 = v0[51];
          v68 = qword_27F59A2A0;
          v0[2] = v0;
          v0[7] = v0 + 47;
          v0[3] = sub_253195038;
          swift_continuation_init();
          v0[46] = v66;
          boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 43);
          sub_253181ED8(0, &qword_27F58DA50, 0x277CD5520);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D758, &qword_2531E4FB0);
          sub_2531DA954();
          (*(v64 + 32))(boxed_opaque_existential_0, v65, v66);
          v0[39] = MEMORY[0x277D85DD0];
          v0[40] = 1107296256;
          v0[41] = sub_25319638C;
          v0[42] = &block_descriptor_28;
          [v71 selectAreasWithParams:v73 expectedValues:v70 expectedValueInterval:v68 completion:v0 + 39];
          (*(v64 + 8))(boxed_opaque_existential_0, v66);
          v53 = (v0 + 2);
        }

        return MEMORY[0x282200938](v53);
      }

      v26 = *(v20 + 56 + 8 * v30);
      ++v28;
      if (v26)
      {
        v28 = v30;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  v54 = sub_2531DA254();
  v55 = sub_2531DAA84();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    *v56 = 0;
    _os_log_impl(&dword_253166000, v54, v55, "Unable to create MTRClusterRVCRunMode", v56, 2u);
    MEMORY[0x259BFFA80](v56, -1, -1);
  }

  sub_25318DD6C();
  swift_allocError();
  *v57 = 14;
  swift_willThrow();
  v58 = v0[53];

  v59 = v0[1];

  return v59(0);
}

uint64_t sub_253195038()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 480) = v3;
  if (v3)
  {
    v4 = *(v1 + 456);

    v5 = sub_253195434;
  }

  else
  {
    v5 = sub_253195150;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_253195150()
{
  v33 = v0;
  v1 = *(v0 + 472);
  v2 = *(v0 + 432);
  v3 = *(v0 + 376);

  v4 = sub_2531DA254();
  v5 = sub_2531DAA64();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&dword_253166000, v4, v5, "SelectAreaToClean response: %@", v6, 0xCu);
    sub_25316FD44(v7);
    MEMORY[0x259BFFA80](v7, -1, -1);
    MEMORY[0x259BFFA80](v6, -1, -1);
  }

  v9 = *(v0 + 456);

  v10 = [v3 status];
  v11 = [v10 unsignedCharValue];

  sub_253198418(v11, v32);
  v12 = v32[0];
  if (v32[0])
  {
    v13 = *(v0 + 432);
    v14 = sub_2531DA254();
    v15 = sub_2531DAA84();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      sub_25318DD6C();
      swift_allocError();
      *v18 = v12;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v19;
      *v17 = v19;
      _os_log_impl(&dword_253166000, v14, v15, "SelectAreaToClean failed with error: %@", v16, 0xCu);
      sub_25316FD44(v17);
      MEMORY[0x259BFFA80](v17, -1, -1);
      MEMORY[0x259BFFA80](v16, -1, -1);
    }

    v20 = *(v0 + 464);
    v22 = *(v0 + 440);
    v21 = *(v0 + 448);

    sub_25318DD6C();
    swift_allocError();
    *v23 = v12;
    swift_willThrow();

    v24 = *(v0 + 424);

    v25 = *(v0 + 8);
    v26 = 0;
  }

  else
  {
    v27 = *(v0 + 464);
    v29 = *(v0 + 440);
    v28 = *(v0 + 448);
    v30 = *(v0 + 424);

    v25 = *(v0 + 8);
    v26 = 1;
  }

  return v25(v26);
}

uint64_t sub_253195434()
{
  v1 = v0[59];
  v2 = v0[60];
  v3 = v0[58];
  v5 = v0[55];
  v4 = v0[56];
  swift_willThrow();

  v6 = v0[60];
  v7 = v0[53];

  v8 = v0[1];

  return v8(0);
}

uint64_t sub_2531954CC(uint64_t a1, uint64_t a2)
{
  v3[51] = a2;
  v3[52] = v2;
  v3[50] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DA10, &qword_2531E57E0);
  v3[53] = v4;
  v5 = *(v4 - 8);
  v3[54] = v5;
  v6 = *(v5 + 64) + 15;
  v3[55] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25319559C, 0, 0);
}

uint64_t sub_25319559C()
{
  v80 = v0;
  v1 = *(v0[52] + 80);
  if (v1)
  {
    v2 = -1;
    v3 = -1 << *(v1 + 32);
    if (-v3 < 64)
    {
      v2 = ~(-1 << -v3);
    }

    v4 = v2 & *(v1 + 56);
    v5 = (63 - v3) >> 6;
    v6 = *(v0[52] + 80);

    v7 = 0;
    do
    {
      if (!v4)
      {
        while (1)
        {
          v8 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            break;
          }

          if (v8 >= v5)
          {

            goto LABEL_25;
          }

          v4 = *(v1 + 56 + 8 * v8);
          ++v7;
          if (v4)
          {
            v7 = v8;
            goto LABEL_11;
          }
        }

        __break(1u);
        goto LABEL_38;
      }

      v8 = v7;
LABEL_11:
      v9 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
      v10 = (*(v1 + 48) + ((v8 << 11) | (32 * v9)));
      v11 = *v10;
      v12 = v10[2];
    }

    while ((sub_25318D5E0(v0[50], v10[3]) & 1) == 0);
    v13 = v0[51];
    v14 = v0[52];

    v15 = *(v14 + 48);
    v16 = sub_2531DB474();
    v17 = [objc_allocWithZone(MEMORY[0x277CD5298]) initWithDevice:v13 endpointID:v16 queue:*v14];
    v0[56] = v17;

    if (v17)
    {
      v77 = v17;
      v18 = [objc_allocWithZone(MEMORY[0x277CD5490]) init];
      v0[57] = v18;
      v19 = sub_2531DAB34();
      [v18 setNewMode_];

      v20 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedShort_];
      v21 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
      v22 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
      v23 = [objc_opt_self() attributePathWithEndpointID:v20 clusterID:v21 attributeID:v22];
      v0[58] = v23;

      v78[0] = v11;
      v78[1] = 0;
      v79 = 2;
      v24 = MTR.Value.makeDataValue()();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DA28, &qword_2531E57F8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2531E53E0;
      v26 = *MEMORY[0x277CD50B8];
      *(inited + 32) = sub_2531DA6D4();
      *(inited + 40) = v27;
      *(inited + 72) = sub_253181ED8(0, &qword_27F58DA30, 0x277CD51C0);
      *(inited + 48) = v23;
      v28 = *MEMORY[0x277CD50D8];
      *(inited + 80) = sub_2531DA6D4();
      *(inited + 88) = v29;
      *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D178, &qword_2531E11F8);
      *(inited + 96) = v24;
      v30 = v23;
      v31 = sub_2531B54D8(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DA38, &qword_2531E5800);
      swift_arrayDestroy();
      v32 = sub_25316A9A8(0, 1, 1, MEMORY[0x277D84F90]);
      v34 = v32[2];
      v33 = v32[3];
      if (v34 >= v33 >> 1)
      {
        v32 = sub_25316A9A8((v33 > 1), v34 + 1, 1, v32);
      }

      v0[59] = v32;
      v32[2] = v34 + 1;
      v32[v34 + 4] = v31;
      if (qword_27F58D0F0 != -1)
      {
        swift_once();
      }

      v35 = sub_2531DA274();
      v0[60] = __swift_project_value_buffer(v35, qword_27F59A2A8);
      v36 = v18;
      v37 = sub_2531DA254();
      v38 = sub_2531DAA64();

      v76 = v36;
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v78[0] = v41;
        *v39 = 138412546;
        *(v39 + 4) = v36;
        *v40 = v36;
        *(v39 + 12) = 2080;
        v42 = v36;

        v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D170, &qword_2531E2AB0);
        v44 = MEMORY[0x259BFE6E0](v32, v43);
        v46 = v45;

        v47 = sub_253196608(v44, v46, v78);

        *(v39 + 14) = v47;
        _os_log_impl(&dword_253166000, v37, v38, "Going to issue changeToMode command to cleanModeCluster with params: %@ & expectedValues: %s", v39, 0x16u);
        sub_25316FD44(v40);
        MEMORY[0x259BFFA80](v40, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v41);
        MEMORY[0x259BFFA80](v41, -1, -1);
        MEMORY[0x259BFFA80](v39, -1, -1);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D170, &qword_2531E2AB0);
      v75 = sub_2531DA894();
      v0[61] = v75;

      if (qword_27F58D0E0 != -1)
      {
        swift_once();
      }

      v48 = v0[54];
      v49 = v0[55];
      v50 = v0[53];
      v74 = qword_27F59A2A0;
      v0[2] = v0;
      v0[7] = v0 + 49;
      v0[3] = sub_253195FB8;
      swift_continuation_init();
      v0[46] = v50;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 43);
      sub_253181ED8(0, &qword_27F58DA40, 0x277CD5498);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D758, &qword_2531E4FB0);
      sub_2531DA954();
      (*(v48 + 32))(boxed_opaque_existential_0, v49, v50);
      v0[39] = MEMORY[0x277D85DD0];
      v0[40] = 1107296256;
      v0[41] = sub_2531963A0;
      v0[42] = &block_descriptor_24;
      [v77 changeToModeWithParams:v76 expectedValues:v75 expectedValueInterval:v74 completion:v0 + 39];
      (*(v48 + 8))(boxed_opaque_existential_0, v50);

      return MEMORY[0x282200938](v0 + 2);
    }

    if (qword_27F58D0F0 != -1)
    {
      swift_once();
    }

    v69 = sub_2531DA274();
    __swift_project_value_buffer(v69, qword_27F59A2A8);
    v70 = sub_2531DA254();
    v71 = sub_2531DAA84();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      *v72 = 0;
      _os_log_impl(&dword_253166000, v70, v71, "Unable to create MTRClusterRVCCleanMode", v72, 2u);
      MEMORY[0x259BFFA80](v72, -1, -1);
    }
  }

  else
  {
LABEL_25:
    if (qword_27F58D0F0 != -1)
    {
LABEL_38:
      swift_once();
    }

    v52 = v0[52];
    v53 = v0[50];
    v54 = sub_2531DA274();
    __swift_project_value_buffer(v54, qword_27F59A2A8);
    sub_2531970E4(v52, (v0 + 26));

    v55 = sub_2531DA254();
    v56 = sub_2531DAA84();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = v0[50];
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v78[0] = v59;
      *v58 = 136315394;
      v0[47] = v57;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DA18, &qword_2531E57E8);
      v60 = sub_2531DA704();
      v62 = sub_253196608(v60, v61, v78);

      *(v58 + 4) = v62;
      *(v58 + 12) = 2080;
      v0[48] = v0[36];

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DA20, &qword_2531E57F0);
      v63 = sub_2531DA704();
      v65 = v64;
      sub_25319711C((v0 + 26));
      v66 = sub_253196608(v63, v65, v78);

      *(v58 + 14) = v66;
      _os_log_impl(&dword_253166000, v55, v56, "Couldn't find a clean mode that contained all the specified tags: %s allRunningModes: %s", v58, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259BFFA80](v59, -1, -1);
      MEMORY[0x259BFFA80](v58, -1, -1);
    }

    else
    {

      sub_25319711C((v0 + 26));
    }
  }

  v67 = v0[55];

  v68 = v0[1];

  return v68(0);
}

uint64_t sub_253195FB8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 496) = v2;
  if (v2)
  {
    v3 = sub_2531962E4;
  }

  else
  {
    v3 = sub_2531960C8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2531960C8()
{
  v27 = v0;
  v1 = *(v0 + 480);
  v2 = *(v0 + 488);
  v3 = *(v0 + 392);

  v4 = sub_2531DA254();
  v5 = sub_2531DAA64();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&dword_253166000, v4, v5, "Finished changing the clean mode : %@", v6, 0xCu);
    sub_25316FD44(v7);
    MEMORY[0x259BFFA80](v7, -1, -1);
    MEMORY[0x259BFFA80](v6, -1, -1);
  }

  v9 = [v3 status];
  v10 = [v9 unsignedCharValue];

  sub_2531985A0(v10, v26);
  v11 = v26[0];
  if (v26[0] != 26 && v26[0])
  {
    v20 = *(v0 + 464);
    v19 = *(v0 + 472);
    v22 = *(v0 + 448);
    v21 = *(v0 + 456);
    sub_25318DD6C();
    swift_allocError();
    *v23 = v11;
    swift_willThrow();

    v24 = *(v0 + 440);

    v17 = *(v0 + 8);
    v18 = 0;
  }

  else
  {
    v13 = *(v0 + 464);
    v12 = *(v0 + 472);
    v15 = *(v0 + 448);
    v14 = *(v0 + 456);

    v16 = *(v0 + 440);

    v17 = *(v0 + 8);
    v18 = 1;
  }

  return v17(v18);
}

uint64_t sub_2531962E4()
{
  v1 = v0[61];
  v2 = v0[62];
  v4 = v0[58];
  v3 = v0[59];
  v6 = v0[56];
  v5 = v0[57];
  swift_willThrow();

  v7 = v0[62];
  v8 = v0[55];

  v9 = v0[1];

  return v9(0);
}

uint64_t MTR.RVCDevice.debugDescription.getter()
{
  strcpy(v4, "endpointID: ");
  BYTE5(v4[1]) = 0;
  HIWORD(v4[1]) = -5120;
  v3 = *(v0 + 48);
  v1 = sub_2531DAF34();
  MEMORY[0x259BFE570](v1);

  return v4[0];
}

uint64_t MTR.RVCDevice.hashValue.getter()
{
  sub_2531DB3F4();
  MTR.RVCDevice.hash(into:)(v1);
  return sub_2531DB454();
}

uint64_t sub_253196470()
{
  sub_2531DB3F4();
  MTR.RVCDevice.hash(into:)(v1);
  return sub_2531DB454();
}

uint64_t sub_2531964B4()
{
  sub_2531DB3F4();
  MTR.RVCDevice.hash(into:)(v1);
  return sub_2531DB454();
}

void *sub_2531964F4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DA68, &qword_2531E5820);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

void *sub_253196584(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DA58, &qword_2531E5810);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 29;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 2);
  return result;
}

uint64_t sub_253196608(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2531966D4(v11, 0, 0, 1, a1, a2);
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
    sub_25317E5F0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_2531966D4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2531967E0(a5, a6);
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
    result = sub_2531DAC54();
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

uint64_t sub_2531967E0(uint64_t a1, unint64_t a2)
{
  v4 = sub_25319682C(a1, a2);
  sub_25319695C(&unk_2864F0EA0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_25319682C(uint64_t a1, unint64_t a2)
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

  v6 = sub_253196A48(v5, 0);
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

  result = sub_2531DAC54();
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
        v10 = sub_2531DA754();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_253196A48(v10, 0);
        result = sub_2531DABB4();
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

uint64_t sub_25319695C(uint64_t result)
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

  result = sub_253196ABC(result, v12, 1, v3);
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

void *sub_253196A48(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DA60, &qword_2531E5818);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_253196ABC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DA60, &qword_2531E5818);
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

void *sub_253196BB0(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = v17 | (v12 << 6);
      v19 = *(a4 + 48) + 12 * v18;
      v20 = *v19;
      LOBYTE(v19) = *(v19 + 8);
      v21 = *(*(a4 + 56) + 8 * v18);
      *v11 = v20;
      *(v11 + 8) = v19;
      *(v11 + 16) = v21;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 24;

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
      v23 = v12 + 1;
    }

    else
    {
      v23 = (63 - v7) >> 6;
    }

    v12 = v23 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_253196D18(void *result, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 8) | (4 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

BOOL _s23HomeKitDaemonFoundation3MTRO9RVCDeviceV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48) != *(a2 + 48))
  {
    return 0;
  }

  v2 = *(a1 + 72);
  v3 = *(a2 + 72);
  if (!v2)
  {
    if (!v3)
    {
      goto LABEL_5;
    }

    return 0;
  }

  if (!v3)
  {
    return 0;
  }

  v4 = a1;
  v5 = *(a2 + 72);
  v6 = a2;

  v7 = sub_25318C2E4(v2, v3);

  a1 = v4;
  a2 = v6;
  if ((v7 & 1) == 0)
  {
    return 0;
  }

LABEL_5:
  v8 = *(a1 + 80);
  v9 = *(a2 + 80);
  result = (v8 | v9) == 0;
  if (v8)
  {
    if (v9)
    {
      v11 = *(a2 + 80);

      v12 = sub_25318C2E4(v8, v9);

      return v12 & 1;
    }
  }

  return result;
}

unint64_t sub_253196EDC()
{
  result = qword_27F58D9A0;
  if (!qword_27F58D9A0)
  {
    sub_2531DAAC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D9A0);
  }

  return result;
}

unint64_t sub_253196F34()
{
  result = qword_27F58D9B0;
  if (!qword_27F58D9B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F58D9A8, &qword_2531E5670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D9B0);
  }

  return result;
}

unint64_t sub_253196FB4()
{
  result = qword_27F58D9F0;
  if (!qword_27F58D9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D9F0);
  }

  return result;
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_253197034(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_25319707C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id MTRAccessGrant.init(from:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 4);
  if (v2 >> 6)
  {
    if (v2 >> 6 != 1)
    {
      return [swift_getObjCClassFromMetadata() accessGrantForAllNodesWithPrivilege_];
    }

    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v4 = sub_2531DB474();
    v5 = [ObjCClassFromMetadata accessGrantForGroupID:v4 privilege:BYTE3(v1)];

    if (!v5)
    {
      return v5;
    }

    goto LABEL_9;
  }

  v6 = *(a1 + 4);
  if (v6 <= 2)
  {
    if (v6 > 1 && !BYTE2(v1))
    {
      v12 = *a1;
    }
  }

  else if (v6 == 5)
  {
    v7 = *a1;
  }

  v8 = v2 >> 8;
  v9 = swift_getObjCClassFromMetadata();
  v10 = sub_2531DB494();
  v5 = [v9 accessGrantForNodeID:v10 privilege:v8];

  if (v5)
  {
LABEL_9:
  }

  return v5;
}

void *static MTR.Cluster.Descriptor.readCachedChildEndpoints(device:endpoint:)(void *a1, __int16 *a2)
{
  v3 = *a2;
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v9 = v3;
  v10 = 0x30000001DLL;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F8, &qword_2531E27D0);
  v7 = sub_2531976A4(&qword_27F58D300, &qword_27F58D2F8, &qword_2531E27D0, sub_2531720C0);
  result = MTR.Device.readCachedAttributeValue<A>(from:of:)(&v9, v4, v6, v5, v7, &v11);
  if (!v2)
  {
    return v11;
  }

  return result;
}

void *static MTR.Cluster.Descriptor.readCachedDeviceTypes(device:endpoint:)(void *a1, __int16 *a2)
{
  v3 = *a2;
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v9 = v3;
  v10 = 29;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D310, &qword_2531E27D8);
  v7 = sub_2531976A4(&qword_27F58D318, &qword_27F58D310, &qword_2531E27D8, sub_253172114);
  result = MTR.Device.readCachedAttributeValue<A>(from:of:)(&v9, v4, v6, v5, v7, &v11);
  if (!v2)
  {
    return v11;
  }

  return result;
}

void *static MTR.Cluster.Descriptor.readCachedClientClusters(device:endpoint:)(void *a1, __int16 *a2)
{
  v3 = *a2;
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v9 = v3;
  v10 = 0x20000001DLL;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D328, &unk_2531E27E0);
  v7 = sub_2531976A4(&qword_27F58D330, &qword_27F58D328, &unk_2531E27E0, sub_253172168);
  result = MTR.Device.readCachedAttributeValue<A>(from:of:)(&v9, v4, v6, v5, v7, &v11);
  if (!v2)
  {
    return v11;
  }

  return result;
}

void *static MTR.Cluster.Descriptor.readCachedServerClusters(device:endpoint:)(void *a1, __int16 *a2)
{
  v3 = *a2;
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v9 = v3;
  v10 = 0x10000001DLL;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D328, &unk_2531E27E0);
  v7 = sub_2531976A4(&qword_27F58D330, &qword_27F58D328, &unk_2531E27E0, sub_253172168);
  result = MTR.Device.readCachedAttributeValue<A>(from:of:)(&v9, v4, v6, v5, v7, &v11);
  if (!v2)
  {
    return v11;
  }

  return result;
}

uint64_t sub_2531976A4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static MTR.Cluster.Descriptor.readDeviceTypesWithRetry(device:endpoint:)(uint64_t a1, _WORD *a2)
{
  *(v2 + 48) = a1;
  *(v2 + 84) = *a2;
  return MEMORY[0x2822009F8](sub_253197748, 0, 0);
}

uint64_t sub_253197748()
{
  v1 = *(v0 + 84);
  v2 = *(v0 + 48);
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  *(v0 + 72) = v1;
  *(v0 + 76) = 29;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D310, &qword_2531E27D8);
  *(v0 + 16) = xmmword_2531E2770;
  *(v0 + 32) = 10;
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  v7 = sub_2531976A4(&qword_27F58D318, &qword_27F58D310, &qword_2531E27D8, sub_253172114);
  *v6 = v0;
  v6[1] = sub_253174A10;

  return MTR.Device.readAttributeValue<A>(from:of:polling:)(v0 + 40, v0 + 72, v5, v0 + 16, v3, v5, v4, v7);
}

uint64_t static MTR.Cluster.Descriptor.readChildEndpointsWithRetry(device:endpoint:)(uint64_t a1, _WORD *a2)
{
  *(v2 + 48) = a1;
  *(v2 + 84) = *a2;
  return MEMORY[0x2822009F8](sub_2531978D4, 0, 0);
}

uint64_t sub_2531978D4()
{
  v1 = *(v0 + 84);
  v2 = *(v0 + 48);
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  *(v0 + 72) = v1;
  *(v0 + 76) = 0x30000001DLL;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F8, &qword_2531E27D0);
  *(v0 + 16) = xmmword_2531E2770;
  *(v0 + 32) = 10;
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  v7 = sub_2531976A4(&qword_27F58D300, &qword_27F58D2F8, &qword_2531E27D0, sub_2531720C0);
  *v6 = v0;
  v6[1] = sub_253174448;

  return MTR.Device.readAttributeValue<A>(from:of:polling:)(v0 + 40, v0 + 72, v5, v0 + 16, v3, v5, v4, v7);
}

uint64_t static MTR.Cluster.Descriptor.readClientClustersWithRetry(device:endpoint:)(uint64_t a1, _WORD *a2)
{
  *(v2 + 48) = a1;
  *(v2 + 84) = *a2;
  return MEMORY[0x2822009F8](sub_253197A60, 0, 0);
}

uint64_t sub_253197A60()
{
  v1 = *(v0 + 84);
  v2 = *(v0 + 48);
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  *(v0 + 72) = v1;
  *(v0 + 76) = 0x20000001DLL;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D328, &unk_2531E27E0);
  *(v0 + 16) = xmmword_2531E2770;
  *(v0 + 32) = 10;
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  v7 = sub_2531976A4(&qword_27F58D330, &qword_27F58D328, &unk_2531E27E0, sub_253172168);
  *v6 = v0;
  v6[1] = sub_253174448;

  return MTR.Device.readAttributeValue<A>(from:of:polling:)(v0 + 40, v0 + 72, v5, v0 + 16, v3, v5, v4, v7);
}

uint64_t static MTR.Cluster.Descriptor.readServerClustersWithRetry(device:endpoint:)(uint64_t a1, _WORD *a2)
{
  *(v2 + 48) = a1;
  *(v2 + 84) = *a2;
  return MEMORY[0x2822009F8](sub_253197BEC, 0, 0);
}

uint64_t sub_253197BEC()
{
  v1 = *(v0 + 84);
  v2 = *(v0 + 48);
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  *(v0 + 72) = v1;
  *(v0 + 76) = 0x10000001DLL;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D328, &unk_2531E27E0);
  *(v0 + 16) = xmmword_2531E2770;
  *(v0 + 32) = 10;
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  v7 = sub_2531976A4(&qword_27F58D330, &qword_27F58D328, &unk_2531E27E0, sub_253172168);
  *v6 = v0;
  v6[1] = sub_253174448;

  return MTR.Device.readAttributeValue<A>(from:of:polling:)(v0 + 40, v0 + 72, v5, v0 + 16, v3, v5, v4, v7);
}

uint64_t sub_253197D6C(uint64_t *a1, unsigned __int16 *a2)
{
  v2 = 0;
  v3 = sub_25318B150(*a2 | 0x1D00000000, 1u, *a1, a1[1]);
  v12 = *(v3 + 16);
  if (v12)
  {
    v22 = MEMORY[0x277D84F90];
    v13 = v3;
    sub_2531B46AC(0, v12, 0);
    v14 = v13;
    v15 = 32;
    v16 = v22;
    while (1)
    {
      v17 = *(v14 + v15);
      if (HIDWORD(v17))
      {
        break;
      }

      v19 = *(v22 + 16);
      v18 = *(v22 + 24);
      v2 = (v19 + 1);
      if (v19 >= v18 >> 1)
      {
        sub_2531B46AC((v18 > 1), v19 + 1, 1);
        v14 = v13;
      }

      *(v22 + 16) = v2;
      *(v22 + 4 * v19 + 32) = v17;
      v15 += 8;
      if (!--v12)
      {

        goto LABEL_14;
      }
    }

    __break(1u);
    swift_once();
    v4 = sub_2531DA274();
    __swift_project_value_buffer(v4, qword_27F59A2A8);
    v5 = v2;
    v6 = sub_2531DA254();
    v7 = sub_2531DAA84();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      v10 = v2;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v11;
      *v9 = v11;
      _os_log_impl(&dword_253166000, v6, v7, "Error occurred while parsing run mode response: %@", v8, 0xCu);
      sub_25316FD44(v9);
      MEMORY[0x259BFFA80](v9, -1, -1);
      MEMORY[0x259BFFA80](v8, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  else
  {

    v16 = MEMORY[0x277D84F90];
LABEL_14:
    v21 = sub_2531C2BF0(v16);

    return v21;
  }
}

void sub_253197FBC(char a1@<W0>, char *a2@<X8>)
{
  v2 = a1;
  switch(a1)
  {
    case 0:
      break;
    case 1:
      v2 = 27;
      break;
    case 2:
      v2 = 28;
      break;
    case 3:
      v2 = 29;
      break;
    case 64:
      v2 = 30;
      break;
    case 65:
      v2 = 18;
      break;
    case 66:
      v2 = 19;
      break;
    case 67:
      v2 = 20;
      break;
    case 68:
      v2 = 21;
      break;
    case 69:
      v2 = 22;
      break;
    case 70:
      v2 = 23;
      break;
    case 71:
      v2 = 24;
      break;
    case 72:
      v2 = 31;
      break;
    case 73:
      v2 = 32;
      break;
    case 74:
      v2 = 33;
      break;
    case 75:
      v2 = 34;
      break;
    case 76:
      v2 = 35;
      break;
    case 77:
      v2 = 36;
      break;
    case 78:
      v2 = 37;
      break;
    default:
      v3 = a2;
      if (qword_27F58D0F0 != -1)
      {
        swift_once();
      }

      v4 = sub_2531DA274();
      __swift_project_value_buffer(v4, qword_27F59A2A8);
      v5 = sub_2531DA254();
      v6 = sub_2531DAA84();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v12 = v8;
        *v7 = 136315138;
        type metadata accessor for MTRRVCOperationalStateErrorState(0);
        v9 = sub_2531DA6F4();
        v11 = sub_253196608(v9, v10, &v12);

        *(v7 + 4) = v11;
        _os_log_impl(&dword_253166000, v5, v6, "Matter added new status code in MTRRVCCleanModeStatusCode. Add mapping to it: %s", v7, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v8);
        MEMORY[0x259BFFA80](v8, -1, -1);
        MEMORY[0x259BFFA80](v7, -1, -1);
      }

      v2 = 1;
      a2 = v3;
      break;
  }

  *a2 = v2;
}

void sub_2531981E8(unsigned __int8 a1@<W0>, char *a2@<X8>)
{
  v4 = a1;
  if (a1 <= 0x43u)
  {
    if (a1 > 0x41u)
    {
      if (a1 != 66)
      {
        if (a1 == 67)
        {
          *a2 = 20;
          return;
        }

        goto LABEL_22;
      }

      v4 = 19;
    }

    else if (a1)
    {
      if (a1 == 65)
      {
        *a2 = 18;
        return;
      }

      goto LABEL_22;
    }

    *a2 = v4;
    return;
  }

  if (a1 <= 0x45u)
  {
    if (a1 == 68)
    {
      *a2 = 21;
      return;
    }

    if (a1 == 69)
    {
      *a2 = 22;
      return;
    }
  }

  else
  {
    switch(a1)
    {
      case 'F':
        *a2 = 23;
        return;
      case 'G':
        *a2 = 24;
        return;
      case 'H':
        *a2 = 25;
        return;
    }
  }

LABEL_22:
  v14[9] = v2;
  v14[10] = v3;
  if (qword_27F58D0F0 != -1)
  {
    swift_once();
  }

  v6 = sub_2531DA274();
  __swift_project_value_buffer(v6, qword_27F59A2A8);
  v7 = sub_2531DA254();
  v8 = sub_2531DAA84();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14[0] = v10;
    *v9 = 136315138;
    type metadata accessor for MTRRVCRunModeStatusCode(0);
    v11 = sub_2531DA6F4();
    v13 = sub_253196608(v11, v12, v14);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_253166000, v7, v8, "Matter added new status code in MTRRVCRunModeStatusCode. Add mapping to it: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x259BFFA80](v10, -1, -1);
    MEMORY[0x259BFFA80](v9, -1, -1);
  }

  *a2 = 1;
}

void sub_253198418(unsigned __int8 a1@<W0>, _BYTE *a2@<X8>)
{
  if (a1 >= 4u)
  {
    if (qword_27F58D0F0 != -1)
    {
      swift_once();
    }

    v4 = sub_2531DA274();
    __swift_project_value_buffer(v4, qword_27F59A2A8);
    v5 = sub_2531DA254();
    v6 = sub_2531DAA84();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v12 = v8;
      *v7 = 136315138;
      type metadata accessor for MTRServiceAreaSelectAreasStatus(0);
      v9 = sub_2531DA6F4();
      v11 = sub_253196608(v9, v10, &v12);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_253166000, v5, v6, "Matter added new status code in MTRServiceAreaSelectAreasStatus. Add mapping to it: %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x259BFFA80](v8, -1, -1);
      MEMORY[0x259BFFA80](v7, -1, -1);
    }

    LOBYTE(v3) = 1;
  }

  else
  {
    v3 = 0x11100F00u >> (8 * (a1 & 0x1F));
  }

  *a2 = v3;
}

void sub_2531985A0(char a1@<W0>, char *a2@<X8>)
{
  v4 = a1;
  if (a1 == 64)
  {
    v4 = 26;
    goto LABEL_9;
  }

  if (!a1)
  {
LABEL_9:
    *a2 = v4;
    return;
  }

  v14[9] = v2;
  v14[10] = v3;
  if (qword_27F58D0F0 != -1)
  {
    swift_once();
  }

  v6 = sub_2531DA274();
  __swift_project_value_buffer(v6, qword_27F59A2A8);
  v7 = sub_2531DA254();
  v8 = sub_2531DAA84();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14[0] = v10;
    *v9 = 136315138;
    type metadata accessor for MTRRVCCleanModeStatusCode(0);
    v11 = sub_2531DA6F4();
    v13 = sub_253196608(v11, v12, v14);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_253166000, v7, v8, "Matter added new status code in MTRRVCCleanModeStatusCode. Add mapping to it: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x259BFFA80](v10, -1, -1);
    MEMORY[0x259BFFA80](v9, -1, -1);
  }

  *a2 = 1;
}

uint64_t MTR.Error.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 0;
  v3 = 20;
  switch(result)
  {
    case 0:
      goto LABEL_34;
    case 1:
      v2 = 1;
      goto LABEL_34;
    case 2:
      v2 = 2;
      goto LABEL_34;
    case 3:
      v2 = 3;
      goto LABEL_34;
    case 4:
      v2 = 4;
      goto LABEL_34;
    case 5:
      v2 = 5;
      goto LABEL_34;
    case 6:
      v2 = 6;
      goto LABEL_34;
    case 7:
      v2 = 7;
      goto LABEL_34;
    case 8:
      v2 = 8;
      goto LABEL_34;
    case 9:
      v2 = 9;
      goto LABEL_34;
    case 10:
      v2 = 10;
      goto LABEL_34;
    case 11:
      v2 = 11;
      goto LABEL_34;
    case 12:
      v2 = 12;
      goto LABEL_34;
    case 13:
      v2 = 13;
      goto LABEL_34;
    case 14:
      v2 = 14;
      goto LABEL_34;
    case 15:
      v2 = 15;
      goto LABEL_34;
    case 16:
      v2 = 16;
      goto LABEL_34;
    case 17:
      v2 = 17;
      goto LABEL_34;
    case 18:
      v2 = 18;
      goto LABEL_34;
    case 19:
      v2 = 19;
LABEL_34:
      v3 = v2;
      goto LABEL_35;
    case 20:
LABEL_35:
      *a2 = v3;
      break;
    case 21:
      *a2 = 21;
      break;
    case 22:
      *a2 = 22;
      break;
    case 23:
      *a2 = 23;
      break;
    case 24:
      *a2 = 24;
      break;
    case 25:
      *a2 = 25;
      break;
    case 26:
      *a2 = 26;
      break;
    case 27:
      *a2 = 27;
      break;
    case 28:
      *a2 = 28;
      break;
    case 29:
      *a2 = 29;
      break;
    case 30:
      *a2 = 30;
      break;
    case 31:
      *a2 = 31;
      break;
    case 32:
      *a2 = 32;
      break;
    case 33:
      *a2 = 33;
      break;
    case 34:
      *a2 = 34;
      break;
    case 35:
      *a2 = 35;
      break;
    case 36:
      *a2 = 36;
      break;
    case 37:
      *a2 = 37;
      break;
    default:
      *a2 = 38;
      break;
  }

  return result;
}

unint64_t sub_2531988E4()
{
  result = qword_27F58DA70;
  if (!qword_27F58DA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DA70);
  }

  return result;
}

uint64_t sub_253198938()
{
  v1 = *v0;
  sub_2531DB3F4();
  MEMORY[0x259BFF270](v1);
  return sub_2531DB454();
}

uint64_t sub_2531989AC()
{
  v1 = *v0;
  sub_2531DB3F4();
  MEMORY[0x259BFF270](v1);
  return sub_2531DB454();
}

uint64_t sub_2531989FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_253198BAC();
  v5 = sub_253198C00();

  return MEMORY[0x2821FE2D0](a1, a2, v4, v5);
}

uint64_t _s5ErrorOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDB)
  {
    goto LABEL_17;
  }

  if (a2 + 37 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 37) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 37;
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

      return (*a1 | (v4 << 8)) - 37;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 37;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x26;
  v8 = v6 - 38;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s5ErrorOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 37 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 37) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xDB)
  {
    v4 = 0;
  }

  if (a2 > 0xDA)
  {
    v5 = ((a2 - 219) >> 8) + 1;
    *result = a2 + 37;
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
    *result = a2 + 37;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_253198BAC()
{
  result = qword_27F58DA78;
  if (!qword_27F58DA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DA78);
  }

  return result;
}

unint64_t sub_253198C00()
{
  result = qword_27F58DA80;
  if (!qword_27F58DA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DA80);
  }

  return result;
}

BOOL sub_253198C54(unint64_t a1, unsigned __int8 a2, unint64_t a3, unsigned __int8 a4)
{
  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        a1 = a1 | 0xFFFFFFFE00000000;
      }

      else
      {
        v9 = a1 | 0xFF00;
        if (BYTE2(a1) != 1)
        {
          v9 = 0;
        }

        if (BYTE2(a1))
        {
          v10 = v9;
        }

        else
        {
          v10 = a1;
        }

        a1 = *&v10 | 0xFFFFFFFFFFFF0000;
      }
    }
  }

  else
  {
    if (a2 == 5)
    {
      v4 = a1;
    }

    else
    {
      v4 = 0;
    }

    v5 = a1 | 0xFFFFFFFB00000000;
    if (a2 != 3)
    {
      v5 = a1 | 0xFFFFFFFD00000000;
    }

    if (a2 <= 4u)
    {
      a1 = v5;
    }

    else
    {
      a1 = v4;
    }
  }

  if (a4 <= 2u)
  {
    if (a4)
    {
      if (a4 == 1)
      {
        a3 = a3 | 0xFFFFFFFE00000000;
      }

      else
      {
        v11 = a3 | 0xFF00;
        if (BYTE2(a3) != 1)
        {
          v11 = 0;
        }

        if (BYTE2(a3))
        {
          v12 = v11;
        }

        else
        {
          v12 = a3;
        }

        a3 = *&v12 | 0xFFFFFFFFFFFF0000;
      }
    }
  }

  else
  {
    if (a4 == 5)
    {
      v6 = a3;
    }

    else
    {
      v6 = 0;
    }

    v7 = a3 | 0xFFFFFFFB00000000;
    if (a4 != 3)
    {
      v7 = a3 | 0xFFFFFFFD00000000;
    }

    if (a4 <= 4u)
    {
      a3 = v7;
    }

    else
    {
      a3 = v6;
    }
  }

  return a1 == a3;
}

BOOL sub_253198D50(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v4 = __ROR8__(a1, 32);
  if (a2)
  {
    v4 = a1;
  }

  v5 = __ROR8__(a3, 32);
  if (a4)
  {
    v5 = a3;
  }

  return v4 == v5;
}

uint64_t MTR.ValueDecoder.decode<A>(_:from:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *v4;
  v11 = *(a1 + 16);
  _s12ValueDecoderV14ImplementationCMa();
  v12 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D1A0, &qword_2531E48A0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_2531E14E0;
  *(v13 + 32) = v8;
  *(v13 + 40) = v9;
  *(v13 + 48) = v11;
  v12[3] = v13;
  v12[4] = 0x8000000000000000;
  v12[2] = v10;

  sub_25316D004(v8, v9, v11);
  sub_25319B444(a2, a3, a4);
}

uint64_t sub_253198EA4@<X0>(unsigned __int8 a1@<W3>, void *a2@<X8>)
{
  sub_2531DABC4();

  if (a1 <= 4u)
  {
    v14 = 0xE300000000000000;
    v15 = 7630441;
    v16 = 0xE400000000000000;
    v17 = 1953393013;
    v18 = 0xE500000000000000;
    v19 = 0x74616F6C66;
    if (a1 != 3)
    {
      v19 = 0x656C62756F64;
      v18 = 0xE600000000000000;
    }

    if (a1 != 2)
    {
      v17 = v19;
      v16 = v18;
    }

    if (!a1)
    {
      v15 = 1819242338;
      v14 = 0xE400000000000000;
    }

    if (a1 <= 1u)
    {
      v12 = v15;
    }

    else
    {
      v12 = v17;
    }

    if (a1 <= 1u)
    {
      v13 = v14;
    }

    else
    {
      v13 = v16;
    }
  }

  else
  {
    v4 = 0xE900000000000065;
    v5 = 0x7275746375727473;
    v6 = 0xE700000000000000;
    v7 = 0x6E776F6E6B6E75;
    v8 = 0xE400000000000000;
    if (a1 != 9)
    {
      v7 = 1819047278;
      v6 = 0xE400000000000000;
    }

    if (a1 != 8)
    {
      v5 = v7;
      v4 = v6;
    }

    v9 = 0xE600000000000000;
    v10 = 0x676E69727473;
    v11 = 1635017060;
    if (a1 != 6)
    {
      v11 = 0x7961727261;
      v8 = 0xE500000000000000;
    }

    if (a1 != 5)
    {
      v10 = v11;
      v9 = v8;
    }

    if (a1 <= 7u)
    {
      v12 = v10;
    }

    else
    {
      v12 = v5;
    }

    if (a1 <= 7u)
    {
      v13 = v9;
    }

    else
    {
      v13 = v4;
    }
  }

  MEMORY[0x259BFE570](v12, v13);

  MEMORY[0x259BFE570](0x616574736E692027, 0xEA00000000002E64);
  v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8) + 48);
  *a2 = MEMORY[0x277CC9318];

  sub_2531DAC14();
  v21 = *MEMORY[0x277D84160];
  v22 = sub_2531DAC24();
  v23 = *(*(v22 - 8) + 104);

  return v23(a2, v21, v22);
}

uint64_t sub_253199108@<X0>(unsigned __int8 a1@<W3>, void *a2@<X8>)
{
  sub_2531DABC4();

  if (a1 <= 4u)
  {
    v14 = 0xE300000000000000;
    v15 = 7630441;
    v16 = 0xE400000000000000;
    v17 = 1953393013;
    v18 = 0xE500000000000000;
    v19 = 0x74616F6C66;
    if (a1 != 3)
    {
      v19 = 0x656C62756F64;
      v18 = 0xE600000000000000;
    }

    if (a1 != 2)
    {
      v17 = v19;
      v16 = v18;
    }

    if (!a1)
    {
      v15 = 1819242338;
      v14 = 0xE400000000000000;
    }

    if (a1 <= 1u)
    {
      v12 = v15;
    }

    else
    {
      v12 = v17;
    }

    if (a1 <= 1u)
    {
      v13 = v14;
    }

    else
    {
      v13 = v16;
    }
  }

  else
  {
    v4 = 0xE900000000000065;
    v5 = 0x7275746375727473;
    v6 = 0xE700000000000000;
    v7 = 0x6E776F6E6B6E75;
    v8 = 0xE400000000000000;
    if (a1 != 9)
    {
      v7 = 1819047278;
      v6 = 0xE400000000000000;
    }

    if (a1 != 8)
    {
      v5 = v7;
      v4 = v6;
    }

    v9 = 0xE600000000000000;
    v10 = 0x676E69727473;
    v11 = 1635017060;
    if (a1 != 6)
    {
      v11 = 0x7961727261;
      v8 = 0xE500000000000000;
    }

    if (a1 != 5)
    {
      v10 = v11;
      v9 = v8;
    }

    if (a1 <= 7u)
    {
      v12 = v10;
    }

    else
    {
      v12 = v5;
    }

    if (a1 <= 7u)
    {
      v13 = v9;
    }

    else
    {
      v13 = v4;
    }
  }

  MEMORY[0x259BFE570](v12, v13);

  MEMORY[0x259BFE570](0x616574736E692027, 0xEA00000000002E64);
  v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8) + 48);
  *a2 = MEMORY[0x277D839B0];

  sub_2531DAC14();
  v21 = *MEMORY[0x277D84160];
  v22 = sub_2531DAC24();
  v23 = *(*(v22 - 8) + 104);

  return v23(a2, v21, v22);
}

uint64_t sub_25319936C@<X0>(unsigned __int8 a1@<W3>, void *a2@<X8>)
{
  sub_2531DABC4();

  if (a1 <= 4u)
  {
    v14 = 0xE300000000000000;
    v15 = 7630441;
    v16 = 0xE400000000000000;
    v17 = 1953393013;
    v18 = 0xE500000000000000;
    v19 = 0x74616F6C66;
    if (a1 != 3)
    {
      v19 = 0x656C62756F64;
      v18 = 0xE600000000000000;
    }

    if (a1 != 2)
    {
      v17 = v19;
      v16 = v18;
    }

    if (!a1)
    {
      v15 = 1819242338;
      v14 = 0xE400000000000000;
    }

    if (a1 <= 1u)
    {
      v12 = v15;
    }

    else
    {
      v12 = v17;
    }

    if (a1 <= 1u)
    {
      v13 = v14;
    }

    else
    {
      v13 = v16;
    }
  }

  else
  {
    v4 = 0xE900000000000065;
    v5 = 0x7275746375727473;
    v6 = 0xE700000000000000;
    v7 = 0x6E776F6E6B6E75;
    v8 = 0xE400000000000000;
    if (a1 != 9)
    {
      v7 = 1819047278;
      v6 = 0xE400000000000000;
    }

    if (a1 != 8)
    {
      v5 = v7;
      v4 = v6;
    }

    v9 = 0xE600000000000000;
    v10 = 0x676E69727473;
    v11 = 1635017060;
    if (a1 != 6)
    {
      v11 = 0x7961727261;
      v8 = 0xE500000000000000;
    }

    if (a1 != 5)
    {
      v10 = v11;
      v9 = v8;
    }

    if (a1 <= 7u)
    {
      v12 = v10;
    }

    else
    {
      v12 = v5;
    }

    if (a1 <= 7u)
    {
      v13 = v9;
    }

    else
    {
      v13 = v4;
    }
  }

  MEMORY[0x259BFE570](v12, v13);

  MEMORY[0x259BFE570](0x616574736E692027, 0xEA00000000002E64);
  v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8) + 48);
  *a2 = MEMORY[0x277D837D0];

  sub_2531DAC14();
  v21 = *MEMORY[0x277D84160];
  v22 = sub_2531DAC24();
  v23 = *(*(v22 - 8) + 104);

  return v23(a2, v21, v22);
}

uint64_t sub_2531995D0@<X0>(unsigned __int8 a1@<W3>, void *a2@<X8>)
{
  sub_2531DABC4();

  if (a1 <= 4u)
  {
    v14 = 0xE300000000000000;
    v15 = 7630441;
    v16 = 0xE400000000000000;
    v17 = 1953393013;
    v18 = 0xE500000000000000;
    v19 = 0x74616F6C66;
    if (a1 != 3)
    {
      v19 = 0x656C62756F64;
      v18 = 0xE600000000000000;
    }

    if (a1 != 2)
    {
      v17 = v19;
      v16 = v18;
    }

    if (!a1)
    {
      v15 = 1819242338;
      v14 = 0xE400000000000000;
    }

    if (a1 <= 1u)
    {
      v12 = v15;
    }

    else
    {
      v12 = v17;
    }

    if (a1 <= 1u)
    {
      v13 = v14;
    }

    else
    {
      v13 = v16;
    }
  }

  else
  {
    v4 = 0xE900000000000065;
    v5 = 0x7275746375727473;
    v6 = 0xE700000000000000;
    v7 = 0x6E776F6E6B6E75;
    v8 = 0xE400000000000000;
    if (a1 != 9)
    {
      v7 = 1819047278;
      v6 = 0xE400000000000000;
    }

    if (a1 != 8)
    {
      v5 = v7;
      v4 = v6;
    }

    v9 = 0xE600000000000000;
    v10 = 0x676E69727473;
    v11 = 1635017060;
    if (a1 != 6)
    {
      v11 = 0x7961727261;
      v8 = 0xE500000000000000;
    }

    if (a1 != 5)
    {
      v10 = v11;
      v9 = v8;
    }

    if (a1 <= 7u)
    {
      v12 = v10;
    }

    else
    {
      v12 = v5;
    }

    if (a1 <= 7u)
    {
      v13 = v9;
    }

    else
    {
      v13 = v4;
    }
  }

  MEMORY[0x259BFE570](v12, v13);

  MEMORY[0x259BFE570](0x616574736E692027, 0xEA00000000002E64);
  v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8) + 48);
  *a2 = MEMORY[0x277D839F8];

  sub_2531DAC14();
  v21 = *MEMORY[0x277D84160];
  v22 = sub_2531DAC24();
  v23 = *(*(v22 - 8) + 104);

  return v23(a2, v21, v22);
}

uint64_t sub_253199834@<X0>(unsigned __int8 a1@<W3>, void *a2@<X8>)
{
  sub_2531DABC4();

  if (a1 <= 4u)
  {
    v14 = 0xE300000000000000;
    v15 = 7630441;
    v16 = 0xE400000000000000;
    v17 = 1953393013;
    v18 = 0xE500000000000000;
    v19 = 0x74616F6C66;
    if (a1 != 3)
    {
      v19 = 0x656C62756F64;
      v18 = 0xE600000000000000;
    }

    if (a1 != 2)
    {
      v17 = v19;
      v16 = v18;
    }

    if (!a1)
    {
      v15 = 1819242338;
      v14 = 0xE400000000000000;
    }

    if (a1 <= 1u)
    {
      v12 = v15;
    }

    else
    {
      v12 = v17;
    }

    if (a1 <= 1u)
    {
      v13 = v14;
    }

    else
    {
      v13 = v16;
    }
  }

  else
  {
    v4 = 0xE900000000000065;
    v5 = 0x7275746375727473;
    v6 = 0xE700000000000000;
    v7 = 0x6E776F6E6B6E75;
    v8 = 0xE400000000000000;
    if (a1 != 9)
    {
      v7 = 1819047278;
      v6 = 0xE400000000000000;
    }

    if (a1 != 8)
    {
      v5 = v7;
      v4 = v6;
    }

    v9 = 0xE600000000000000;
    v10 = 0x676E69727473;
    v11 = 1635017060;
    if (a1 != 6)
    {
      v11 = 0x7961727261;
      v8 = 0xE500000000000000;
    }

    if (a1 != 5)
    {
      v10 = v11;
      v9 = v8;
    }

    if (a1 <= 7u)
    {
      v12 = v10;
    }

    else
    {
      v12 = v5;
    }

    if (a1 <= 7u)
    {
      v13 = v9;
    }

    else
    {
      v13 = v4;
    }
  }

  MEMORY[0x259BFE570](v12, v13);

  MEMORY[0x259BFE570](0x616574736E692027, 0xEA00000000002E64);
  v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8) + 48);
  *a2 = MEMORY[0x277D83A90];

  sub_2531DAC14();
  v21 = *MEMORY[0x277D84160];
  v22 = sub_2531DAC24();
  v23 = *(*(v22 - 8) + 104);

  return v23(a2, v21, v22);
}

uint64_t sub_253199A98@<X0>(unsigned __int8 a1@<W3>, void *a2@<X8>)
{
  sub_2531DABC4();

  if (a1 <= 4u)
  {
    v14 = 0xE300000000000000;
    v15 = 7630441;
    v16 = 0xE400000000000000;
    v17 = 1953393013;
    v18 = 0xE500000000000000;
    v19 = 0x74616F6C66;
    if (a1 != 3)
    {
      v19 = 0x656C62756F64;
      v18 = 0xE600000000000000;
    }

    if (a1 != 2)
    {
      v17 = v19;
      v16 = v18;
    }

    if (!a1)
    {
      v15 = 1819242338;
      v14 = 0xE400000000000000;
    }

    if (a1 <= 1u)
    {
      v12 = v15;
    }

    else
    {
      v12 = v17;
    }

    if (a1 <= 1u)
    {
      v13 = v14;
    }

    else
    {
      v13 = v16;
    }
  }

  else
  {
    v4 = 0xE900000000000065;
    v5 = 0x7275746375727473;
    v6 = 0xE700000000000000;
    v7 = 0x6E776F6E6B6E75;
    v8 = 0xE400000000000000;
    if (a1 != 9)
    {
      v7 = 1819047278;
      v6 = 0xE400000000000000;
    }

    if (a1 != 8)
    {
      v5 = v7;
      v4 = v6;
    }

    v9 = 0xE600000000000000;
    v10 = 0x676E69727473;
    v11 = 1635017060;
    if (a1 != 6)
    {
      v11 = 0x7961727261;
      v8 = 0xE500000000000000;
    }

    if (a1 != 5)
    {
      v10 = v11;
      v9 = v8;
    }

    if (a1 <= 7u)
    {
      v12 = v10;
    }

    else
    {
      v12 = v5;
    }

    if (a1 <= 7u)
    {
      v13 = v9;
    }

    else
    {
      v13 = v4;
    }
  }

  MEMORY[0x259BFE570](v12, v13);

  MEMORY[0x259BFE570](0x616574736E692027, 0xEA00000000002E64);
  v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8) + 48);
  *a2 = MEMORY[0x277D83B88];

  sub_2531DAC14();
  v21 = *MEMORY[0x277D84160];
  v22 = sub_2531DAC24();
  v23 = *(*(v22 - 8) + 104);

  return v23(a2, v21, v22);
}

uint64_t sub_253199CFC@<X0>(unsigned __int8 a1@<W3>, void *a2@<X8>)
{
  sub_2531DABC4();

  if (a1 <= 4u)
  {
    v14 = 0xE300000000000000;
    v15 = 7630441;
    v16 = 0xE400000000000000;
    v17 = 1953393013;
    v18 = 0xE500000000000000;
    v19 = 0x74616F6C66;
    if (a1 != 3)
    {
      v19 = 0x656C62756F64;
      v18 = 0xE600000000000000;
    }

    if (a1 != 2)
    {
      v17 = v19;
      v16 = v18;
    }

    if (!a1)
    {
      v15 = 1819242338;
      v14 = 0xE400000000000000;
    }

    if (a1 <= 1u)
    {
      v12 = v15;
    }

    else
    {
      v12 = v17;
    }

    if (a1 <= 1u)
    {
      v13 = v14;
    }

    else
    {
      v13 = v16;
    }
  }

  else
  {
    v4 = 0xE900000000000065;
    v5 = 0x7275746375727473;
    v6 = 0xE700000000000000;
    v7 = 0x6E776F6E6B6E75;
    v8 = 0xE400000000000000;
    if (a1 != 9)
    {
      v7 = 1819047278;
      v6 = 0xE400000000000000;
    }

    if (a1 != 8)
    {
      v5 = v7;
      v4 = v6;
    }

    v9 = 0xE600000000000000;
    v10 = 0x676E69727473;
    v11 = 1635017060;
    if (a1 != 6)
    {
      v11 = 0x7961727261;
      v8 = 0xE500000000000000;
    }

    if (a1 != 5)
    {
      v10 = v11;
      v9 = v8;
    }

    if (a1 <= 7u)
    {
      v12 = v10;
    }

    else
    {
      v12 = v5;
    }

    if (a1 <= 7u)
    {
      v13 = v9;
    }

    else
    {
      v13 = v4;
    }
  }

  MEMORY[0x259BFE570](v12, v13);

  MEMORY[0x259BFE570](0x616574736E692027, 0xEA00000000002E64);
  v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8) + 48);
  *a2 = MEMORY[0x277D84900];

  sub_2531DAC14();
  v21 = *MEMORY[0x277D84160];
  v22 = sub_2531DAC24();
  v23 = *(*(v22 - 8) + 104);

  return v23(a2, v21, v22);
}

uint64_t sub_253199F60@<X0>(unsigned __int8 a1@<W3>, void *a2@<X8>)
{
  sub_2531DABC4();

  if (a1 <= 4u)
  {
    v14 = 0xE300000000000000;
    v15 = 7630441;
    v16 = 0xE400000000000000;
    v17 = 1953393013;
    v18 = 0xE500000000000000;
    v19 = 0x74616F6C66;
    if (a1 != 3)
    {
      v19 = 0x656C62756F64;
      v18 = 0xE600000000000000;
    }

    if (a1 != 2)
    {
      v17 = v19;
      v16 = v18;
    }

    if (!a1)
    {
      v15 = 1819242338;
      v14 = 0xE400000000000000;
    }

    if (a1 <= 1u)
    {
      v12 = v15;
    }

    else
    {
      v12 = v17;
    }

    if (a1 <= 1u)
    {
      v13 = v14;
    }

    else
    {
      v13 = v16;
    }
  }

  else
  {
    v4 = 0xE900000000000065;
    v5 = 0x7275746375727473;
    v6 = 0xE700000000000000;
    v7 = 0x6E776F6E6B6E75;
    v8 = 0xE400000000000000;
    if (a1 != 9)
    {
      v7 = 1819047278;
      v6 = 0xE400000000000000;
    }

    if (a1 != 8)
    {
      v5 = v7;
      v4 = v6;
    }

    v9 = 0xE600000000000000;
    v10 = 0x676E69727473;
    v11 = 1635017060;
    if (a1 != 6)
    {
      v11 = 0x7961727261;
      v8 = 0xE500000000000000;
    }

    if (a1 != 5)
    {
      v10 = v11;
      v9 = v8;
    }

    if (a1 <= 7u)
    {
      v12 = v10;
    }

    else
    {
      v12 = v5;
    }

    if (a1 <= 7u)
    {
      v13 = v9;
    }

    else
    {
      v13 = v4;
    }
  }

  MEMORY[0x259BFE570](v12, v13);

  MEMORY[0x259BFE570](0x616574736E692027, 0xEA00000000002E64);
  v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8) + 48);
  *a2 = MEMORY[0x277D84958];

  sub_2531DAC14();
  v21 = *MEMORY[0x277D84160];
  v22 = sub_2531DAC24();
  v23 = *(*(v22 - 8) + 104);

  return v23(a2, v21, v22);
}

uint64_t sub_25319A1C4@<X0>(unsigned __int8 a1@<W3>, void *a2@<X8>)
{
  sub_2531DABC4();

  if (a1 <= 4u)
  {
    v14 = 0xE300000000000000;
    v15 = 7630441;
    v16 = 0xE400000000000000;
    v17 = 1953393013;
    v18 = 0xE500000000000000;
    v19 = 0x74616F6C66;
    if (a1 != 3)
    {
      v19 = 0x656C62756F64;
      v18 = 0xE600000000000000;
    }

    if (a1 != 2)
    {
      v17 = v19;
      v16 = v18;
    }

    if (!a1)
    {
      v15 = 1819242338;
      v14 = 0xE400000000000000;
    }

    if (a1 <= 1u)
    {
      v12 = v15;
    }

    else
    {
      v12 = v17;
    }

    if (a1 <= 1u)
    {
      v13 = v14;
    }

    else
    {
      v13 = v16;
    }
  }

  else
  {
    v4 = 0xE900000000000065;
    v5 = 0x7275746375727473;
    v6 = 0xE700000000000000;
    v7 = 0x6E776F6E6B6E75;
    v8 = 0xE400000000000000;
    if (a1 != 9)
    {
      v7 = 1819047278;
      v6 = 0xE400000000000000;
    }

    if (a1 != 8)
    {
      v5 = v7;
      v4 = v6;
    }

    v9 = 0xE600000000000000;
    v10 = 0x676E69727473;
    v11 = 1635017060;
    if (a1 != 6)
    {
      v11 = 0x7961727261;
      v8 = 0xE500000000000000;
    }

    if (a1 != 5)
    {
      v10 = v11;
      v9 = v8;
    }

    if (a1 <= 7u)
    {
      v12 = v10;
    }

    else
    {
      v12 = v5;
    }

    if (a1 <= 7u)
    {
      v13 = v9;
    }

    else
    {
      v13 = v4;
    }
  }

  MEMORY[0x259BFE570](v12, v13);

  MEMORY[0x259BFE570](0x616574736E692027, 0xEA00000000002E64);
  v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8) + 48);
  *a2 = MEMORY[0x277D849A8];

  sub_2531DAC14();
  v21 = *MEMORY[0x277D84160];
  v22 = sub_2531DAC24();
  v23 = *(*(v22 - 8) + 104);

  return v23(a2, v21, v22);
}

uint64_t sub_25319A428@<X0>(unsigned __int8 a1@<W3>, void *a2@<X8>)
{
  sub_2531DABC4();

  if (a1 <= 4u)
  {
    v14 = 0xE300000000000000;
    v15 = 7630441;
    v16 = 0xE400000000000000;
    v17 = 1953393013;
    v18 = 0xE500000000000000;
    v19 = 0x74616F6C66;
    if (a1 != 3)
    {
      v19 = 0x656C62756F64;
      v18 = 0xE600000000000000;
    }

    if (a1 != 2)
    {
      v17 = v19;
      v16 = v18;
    }

    if (!a1)
    {
      v15 = 1819242338;
      v14 = 0xE400000000000000;
    }

    if (a1 <= 1u)
    {
      v12 = v15;
    }

    else
    {
      v12 = v17;
    }

    if (a1 <= 1u)
    {
      v13 = v14;
    }

    else
    {
      v13 = v16;
    }
  }

  else
  {
    v4 = 0xE900000000000065;
    v5 = 0x7275746375727473;
    v6 = 0xE700000000000000;
    v7 = 0x6E776F6E6B6E75;
    v8 = 0xE400000000000000;
    if (a1 != 9)
    {
      v7 = 1819047278;
      v6 = 0xE400000000000000;
    }

    if (a1 != 8)
    {
      v5 = v7;
      v4 = v6;
    }

    v9 = 0xE600000000000000;
    v10 = 0x676E69727473;
    v11 = 1635017060;
    if (a1 != 6)
    {
      v11 = 0x7961727261;
      v8 = 0xE500000000000000;
    }

    if (a1 != 5)
    {
      v10 = v11;
      v9 = v8;
    }

    if (a1 <= 7u)
    {
      v12 = v10;
    }

    else
    {
      v12 = v5;
    }

    if (a1 <= 7u)
    {
      v13 = v9;
    }

    else
    {
      v13 = v4;
    }
  }

  MEMORY[0x259BFE570](v12, v13);

  MEMORY[0x259BFE570](0x616574736E692027, 0xEA00000000002E64);
  v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8) + 48);
  *a2 = MEMORY[0x277D84A28];

  sub_2531DAC14();
  v21 = *MEMORY[0x277D84160];
  v22 = sub_2531DAC24();
  v23 = *(*(v22 - 8) + 104);

  return v23(a2, v21, v22);
}

uint64_t sub_25319A68C@<X0>(unsigned __int8 a1@<W3>, void *a2@<X8>)
{
  sub_2531DABC4();

  if (a1 <= 4u)
  {
    v14 = 0xE300000000000000;
    v15 = 7630441;
    v16 = 0xE400000000000000;
    v17 = 1953393013;
    v18 = 0xE500000000000000;
    v19 = 0x74616F6C66;
    if (a1 != 3)
    {
      v19 = 0x656C62756F64;
      v18 = 0xE600000000000000;
    }

    if (a1 != 2)
    {
      v17 = v19;
      v16 = v18;
    }

    if (!a1)
    {
      v15 = 1819242338;
      v14 = 0xE400000000000000;
    }

    if (a1 <= 1u)
    {
      v12 = v15;
    }

    else
    {
      v12 = v17;
    }

    if (a1 <= 1u)
    {
      v13 = v14;
    }

    else
    {
      v13 = v16;
    }
  }

  else
  {
    v4 = 0xE900000000000065;
    v5 = 0x7275746375727473;
    v6 = 0xE700000000000000;
    v7 = 0x6E776F6E6B6E75;
    v8 = 0xE400000000000000;
    if (a1 != 9)
    {
      v7 = 1819047278;
      v6 = 0xE400000000000000;
    }

    if (a1 != 8)
    {
      v5 = v7;
      v4 = v6;
    }

    v9 = 0xE600000000000000;
    v10 = 0x676E69727473;
    v11 = 1635017060;
    if (a1 != 6)
    {
      v11 = 0x7961727261;
      v8 = 0xE500000000000000;
    }

    if (a1 != 5)
    {
      v10 = v11;
      v9 = v8;
    }

    if (a1 <= 7u)
    {
      v12 = v10;
    }

    else
    {
      v12 = v5;
    }

    if (a1 <= 7u)
    {
      v13 = v9;
    }

    else
    {
      v13 = v4;
    }
  }

  MEMORY[0x259BFE570](v12, v13);

  MEMORY[0x259BFE570](0x616574736E692027, 0xEA00000000002E64);
  v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8) + 48);
  *a2 = MEMORY[0x277D83E88];

  sub_2531DAC14();
  v21 = *MEMORY[0x277D84160];
  v22 = sub_2531DAC24();
  v23 = *(*(v22 - 8) + 104);

  return v23(a2, v21, v22);
}

uint64_t sub_25319A8F0@<X0>(unsigned __int8 a1@<W3>, void *a2@<X8>)
{
  sub_2531DABC4();

  if (a1 <= 4u)
  {
    v14 = 0xE300000000000000;
    v15 = 7630441;
    v16 = 0xE400000000000000;
    v17 = 1953393013;
    v18 = 0xE500000000000000;
    v19 = 0x74616F6C66;
    if (a1 != 3)
    {
      v19 = 0x656C62756F64;
      v18 = 0xE600000000000000;
    }

    if (a1 != 2)
    {
      v17 = v19;
      v16 = v18;
    }

    if (!a1)
    {
      v15 = 1819242338;
      v14 = 0xE400000000000000;
    }

    if (a1 <= 1u)
    {
      v12 = v15;
    }

    else
    {
      v12 = v17;
    }

    if (a1 <= 1u)
    {
      v13 = v14;
    }

    else
    {
      v13 = v16;
    }
  }

  else
  {
    v4 = 0xE900000000000065;
    v5 = 0x7275746375727473;
    v6 = 0xE700000000000000;
    v7 = 0x6E776F6E6B6E75;
    v8 = 0xE400000000000000;
    if (a1 != 9)
    {
      v7 = 1819047278;
      v6 = 0xE400000000000000;
    }

    if (a1 != 8)
    {
      v5 = v7;
      v4 = v6;
    }

    v9 = 0xE600000000000000;
    v10 = 0x676E69727473;
    v11 = 1635017060;
    if (a1 != 6)
    {
      v11 = 0x7961727261;
      v8 = 0xE500000000000000;
    }

    if (a1 != 5)
    {
      v10 = v11;
      v9 = v8;
    }

    if (a1 <= 7u)
    {
      v12 = v10;
    }

    else
    {
      v12 = v5;
    }

    if (a1 <= 7u)
    {
      v13 = v9;
    }

    else
    {
      v13 = v4;
    }
  }

  MEMORY[0x259BFE570](v12, v13);

  MEMORY[0x259BFE570](0x616574736E692027, 0xEA00000000002E64);
  v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8) + 48);
  *a2 = MEMORY[0x277D84B78];

  sub_2531DAC14();
  v21 = *MEMORY[0x277D84160];
  v22 = sub_2531DAC24();
  v23 = *(*(v22 - 8) + 104);

  return v23(a2, v21, v22);
}

uint64_t sub_25319AB54@<X0>(unsigned __int8 a1@<W3>, void *a2@<X8>)
{
  sub_2531DABC4();

  if (a1 <= 4u)
  {
    v14 = 0xE300000000000000;
    v15 = 7630441;
    v16 = 0xE400000000000000;
    v17 = 1953393013;
    v18 = 0xE500000000000000;
    v19 = 0x74616F6C66;
    if (a1 != 3)
    {
      v19 = 0x656C62756F64;
      v18 = 0xE600000000000000;
    }

    if (a1 != 2)
    {
      v17 = v19;
      v16 = v18;
    }

    if (!a1)
    {
      v15 = 1819242338;
      v14 = 0xE400000000000000;
    }

    if (a1 <= 1u)
    {
      v12 = v15;
    }

    else
    {
      v12 = v17;
    }

    if (a1 <= 1u)
    {
      v13 = v14;
    }

    else
    {
      v13 = v16;
    }
  }

  else
  {
    v4 = 0xE900000000000065;
    v5 = 0x7275746375727473;
    v6 = 0xE700000000000000;
    v7 = 0x6E776F6E6B6E75;
    v8 = 0xE400000000000000;
    if (a1 != 9)
    {
      v7 = 1819047278;
      v6 = 0xE400000000000000;
    }

    if (a1 != 8)
    {
      v5 = v7;
      v4 = v6;
    }

    v9 = 0xE600000000000000;
    v10 = 0x676E69727473;
    v11 = 1635017060;
    if (a1 != 6)
    {
      v11 = 0x7961727261;
      v8 = 0xE500000000000000;
    }

    if (a1 != 5)
    {
      v10 = v11;
      v9 = v8;
    }

    if (a1 <= 7u)
    {
      v12 = v10;
    }

    else
    {
      v12 = v5;
    }

    if (a1 <= 7u)
    {
      v13 = v9;
    }

    else
    {
      v13 = v4;
    }
  }

  MEMORY[0x259BFE570](v12, v13);

  MEMORY[0x259BFE570](0x616574736E692027, 0xEA00000000002E64);
  v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8) + 48);
  *a2 = MEMORY[0x277D84C58];

  sub_2531DAC14();
  v21 = *MEMORY[0x277D84160];
  v22 = sub_2531DAC24();
  v23 = *(*(v22 - 8) + 104);

  return v23(a2, v21, v22);
}

uint64_t sub_25319ADB8@<X0>(unsigned __int8 a1@<W3>, void *a2@<X8>)
{
  sub_2531DABC4();

  if (a1 <= 4u)
  {
    v14 = 0xE300000000000000;
    v15 = 7630441;
    v16 = 0xE400000000000000;
    v17 = 1953393013;
    v18 = 0xE500000000000000;
    v19 = 0x74616F6C66;
    if (a1 != 3)
    {
      v19 = 0x656C62756F64;
      v18 = 0xE600000000000000;
    }

    if (a1 != 2)
    {
      v17 = v19;
      v16 = v18;
    }

    if (!a1)
    {
      v15 = 1819242338;
      v14 = 0xE400000000000000;
    }

    if (a1 <= 1u)
    {
      v12 = v15;
    }

    else
    {
      v12 = v17;
    }

    if (a1 <= 1u)
    {
      v13 = v14;
    }

    else
    {
      v13 = v16;
    }
  }

  else
  {
    v4 = 0xE900000000000065;
    v5 = 0x7275746375727473;
    v6 = 0xE700000000000000;
    v7 = 0x6E776F6E6B6E75;
    v8 = 0xE400000000000000;
    if (a1 != 9)
    {
      v7 = 1819047278;
      v6 = 0xE400000000000000;
    }

    if (a1 != 8)
    {
      v5 = v7;
      v4 = v6;
    }

    v9 = 0xE600000000000000;
    v10 = 0x676E69727473;
    v11 = 1635017060;
    if (a1 != 6)
    {
      v11 = 0x7961727261;
      v8 = 0xE500000000000000;
    }

    if (a1 != 5)
    {
      v10 = v11;
      v9 = v8;
    }

    if (a1 <= 7u)
    {
      v12 = v10;
    }

    else
    {
      v12 = v5;
    }

    if (a1 <= 7u)
    {
      v13 = v9;
    }

    else
    {
      v13 = v4;
    }
  }

  MEMORY[0x259BFE570](v12, v13);

  MEMORY[0x259BFE570](0x616574736E692027, 0xEA00000000002E64);
  v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8) + 48);
  *a2 = MEMORY[0x277D84CC0];

  sub_2531DAC14();
  v21 = *MEMORY[0x277D84160];
  v22 = sub_2531DAC24();
  v23 = *(*(v22 - 8) + 104);

  return v23(a2, v21, v22);
}

uint64_t sub_25319B01C@<X0>(unsigned __int8 a1@<W3>, void *a2@<X8>)
{
  sub_2531DABC4();

  if (a1 <= 4u)
  {
    v14 = 0xE300000000000000;
    v15 = 7630441;
    v16 = 0xE400000000000000;
    v17 = 1953393013;
    v18 = 0xE500000000000000;
    v19 = 0x74616F6C66;
    if (a1 != 3)
    {
      v19 = 0x656C62756F64;
      v18 = 0xE600000000000000;
    }

    if (a1 != 2)
    {
      v17 = v19;
      v16 = v18;
    }

    if (!a1)
    {
      v15 = 1819242338;
      v14 = 0xE400000000000000;
    }

    if (a1 <= 1u)
    {
      v12 = v15;
    }

    else
    {
      v12 = v17;
    }

    if (a1 <= 1u)
    {
      v13 = v14;
    }

    else
    {
      v13 = v16;
    }
  }

  else
  {
    v4 = 0xE900000000000065;
    v5 = 0x7275746375727473;
    v6 = 0xE700000000000000;
    v7 = 0x6E776F6E6B6E75;
    v8 = 0xE400000000000000;
    if (a1 != 9)
    {
      v7 = 1819047278;
      v6 = 0xE400000000000000;
    }

    if (a1 != 8)
    {
      v5 = v7;
      v4 = v6;
    }

    v9 = 0xE600000000000000;
    v10 = 0x676E69727473;
    v11 = 1635017060;
    if (a1 != 6)
    {
      v11 = 0x7961727261;
      v8 = 0xE500000000000000;
    }

    if (a1 != 5)
    {
      v10 = v11;
      v9 = v8;
    }

    if (a1 <= 7u)
    {
      v12 = v10;
    }

    else
    {
      v12 = v5;
    }

    if (a1 <= 7u)
    {
      v13 = v9;
    }

    else
    {
      v13 = v4;
    }
  }

  MEMORY[0x259BFE570](v12, v13);

  MEMORY[0x259BFE570](0x616574736E692027, 0xEA00000000002E64);
  v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8) + 48);
  *a2 = MEMORY[0x277D84D38];

  sub_2531DAC14();
  v21 = *MEMORY[0x277D84160];
  v22 = sub_2531DAC24();
  v23 = *(*(v22 - 8) + 104);

  return v23(a2, v21, v22);
}

uint64_t sub_25319B280@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  sub_2531DABC4();
  MEMORY[0x259BFE570](0xD000000000000013, 0x80000002531DC810);
  MEMORY[0x259BFE570](a1, a2);
  MEMORY[0x259BFE570](0xD00000000000001DLL, 0x80000002531DC830);
  sub_2531DAD24();
  MEMORY[0x259BFE570](0x64616574736E6920, 0xE90000000000002ELL);

  sub_2531DAC14();
  v6 = *MEMORY[0x277D84168];
  v7 = sub_2531DAC24();
  return (*(*(v7 - 8) + 104))(a3, v6, v7);
}

uint64_t MTR.ValueDecoder.userInfo.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t sub_25319B444@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  result = swift_beginAccess();
  v8 = *(v3 + 24);
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = v8 + 24 * v9;
    v11 = *(v10 + 16);
    v12 = *(v10 + 24);
    v17 = *(v10 + 8);
    v18 = v11;
    v19 = v12;
    v13 = *(v3 + 32);
    memset(v15, 0, sizeof(v15));
    v16 = -1;
    sub_25316D004(v17, v11, v12);
    v14 = sub_25316B674();

    sub_25319D118(&v17, a1, v13, v15, a1, &_s10_CodingKeyON, a2, v14, a3);
    sub_25316D2BC(v17, v18, v19);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t dispatch thunk of MTR.NativeValueDecoder.decode(_:)(uint64_t a1, uint64_t a2)
{
  return (*(a2 + 16))();
}

{
  return (*(a2 + 24))();
}

uint64_t getEnumTagSinglePayload for NWAsyncConnection.Outbound(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for NWAsyncConnection.Outbound(uint64_t result, int a2, int a3)
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

uint64_t sub_25319B61C()
{
  v1 = v0;
  result = swift_beginAccess();
  if (*(*(v0 + 24) + 16))
  {
    sub_2531A6B9C(&v6);
    v3 = v8;
    v4 = v6;
    v5 = v7;
    if (v8 == 255)
    {
      sub_253170AB0(v6, v7, 0xFFu);
      sub_2531A6A9C(*(*(v1 + 24) + 16) - 1, &v6);
      v4 = v6;
      v5 = v7;
      v3 = v8;
    }

    swift_endAccess();
    return sub_25316D2BC(v4, v5, v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25319B6D4()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return swift_deallocClassInstance();
}

uint64_t sub_25319B724()
{
  v1 = *(v0 + 32);
  _s12ValueDecoderV21GenericKeyedContainerVMa();

  swift_getWitnessTable();
  return sub_2531DAE64();
}

uint64_t sub_25319B7DC()
{
  result = swift_beginAccess();
  v2 = *(v0 + 24);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v2 + 24 * v3;
    v5 = *(v4 + 8);
    v6 = *(v4 + 16);
    v7 = *(v4 + 24);
    if (v7 == 8)
    {
      v18 = *(v5 + 16);
      sub_25316D004(v5, v6, 8u);

      sub_25319B724();

      return sub_25316D2BC(v5, v6, 8u);
    }

    if (v7 == 10 && (v6 | v5) == 0)
    {
      v9 = sub_2531DAC24();
      swift_allocError();
      v11 = v19;
      v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8) + 48);
      *v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DAA0, &unk_2531E5F00);
      v21 = *(v0 + 32);

      sub_25316B2C4(v21);

      sub_2531DAC14();
      v22 = MEMORY[0x277D84170];
LABEL_32:
      (*(*(v9 - 8) + 104))(v11, *v22, v9);
      return swift_willThrow();
    }

    v9 = sub_2531DAC24();
    swift_allocError();
    v11 = v10;
    *v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DAA0, &unk_2531E5F00);
    v12 = *(v0 + 32);

    sub_25316B2C4(v12);

    sub_2531DABC4();

    v13 = *(v0 + 24);
    v14 = *(v13 + 16);
    if (v14)
    {
      v15 = *(v13 + 24 * v14 + 24);
      if (v15 <= 4)
      {
        if (v15 <= 1)
        {
          if (v15)
          {
            v16 = 0xE300000000000000;
            v17 = 7630441;
          }

          else
          {
            v16 = 0xE400000000000000;
            v17 = 1819242338;
          }
        }

        else if (v15 == 2)
        {
          v16 = 0xE400000000000000;
          v17 = 1953393013;
        }

        else if (v15 == 3)
        {
          v16 = 0xE500000000000000;
          v17 = 0x74616F6C66;
        }

        else
        {
          v16 = 0xE600000000000000;
          v17 = 0x656C62756F64;
        }
      }

      else if (v15 > 7)
      {
        if (v15 == 8)
        {
          v16 = 0xE900000000000065;
          v17 = 0x7275746375727473;
        }

        else if (v15 == 9)
        {
          v16 = 0xE700000000000000;
          v17 = 0x6E776F6E6B6E75;
        }

        else
        {
          v16 = 0xE400000000000000;
          v17 = 1819047278;
        }
      }

      else if (v15 == 5)
      {
        v16 = 0xE600000000000000;
        v17 = 0x676E69727473;
      }

      else if (v15 == 6)
      {
        v16 = 0xE400000000000000;
        v17 = 1635017060;
      }

      else
      {
        v16 = 0xE500000000000000;
        v17 = 0x7961727261;
      }

      v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8) + 48);
      MEMORY[0x259BFE570](v17, v16);

      MEMORY[0x259BFE570](0x616574736E692027, 0xEA00000000002E64);
      sub_2531DAC14();
      v22 = MEMORY[0x277D84160];
      goto LABEL_32;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25319BBF0@<X0>(uint64_t *a1@<X8>)
{
  result = swift_beginAccess();
  v4 = *(v1 + 24);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v4 + 24 * v5;
    v9 = *(v6 + 8);
    v8 = v6 + 8;
    v7 = v9;
    v10 = *(v8 + 16);
    if (v10 == 7)
    {
      v20 = *(v7 + 16);
      v21 = *(v1 + 32);
      a1[3] = &_s12ValueDecoderV16UnkeyedContainerVN;
      a1[4] = sub_2531A4AE4();
      v22 = swift_allocObject();
      *a1 = v22;
      *(v22 + 48) = 0;
      *(v22 + 56) = 0;
      *(v22 + 64) = -1;
      *(v22 + 16) = v1;
      *(v22 + 24) = v21;
      *(v22 + 32) = v20;
      *(v22 + 40) = 0;
    }

    if (v10 == 10 && !(*(v8 + 8) | v7))
    {
      v11 = sub_2531DAC24();
      swift_allocError();
      v13 = v23;
      v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8) + 48);
      *v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DA90, &unk_2531E5EF0);
      v25 = *(v1 + 32);

      sub_25316B2C4(v25);

      sub_2531DAC14();
      v26 = MEMORY[0x277D84170];
LABEL_30:
      (*(*(v11 - 8) + 104))(v13, *v26, v11);
      return swift_willThrow();
    }

    v11 = sub_2531DAC24();
    swift_allocError();
    v13 = v12;
    *v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DA90, &unk_2531E5EF0);
    v14 = *(v1 + 32);

    sub_25316B2C4(v14);

    sub_2531DABC4();

    v15 = *(v1 + 24);
    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = *(v15 + 24 * v16 + 24);
      if (v17 <= 4)
      {
        if (v17 <= 1)
        {
          if (v17)
          {
            v18 = 0xE300000000000000;
            v19 = 7630441;
          }

          else
          {
            v18 = 0xE400000000000000;
            v19 = 1819242338;
          }
        }

        else if (v17 == 2)
        {
          v18 = 0xE400000000000000;
          v19 = 1953393013;
        }

        else if (v17 == 3)
        {
          v18 = 0xE500000000000000;
          v19 = 0x74616F6C66;
        }

        else
        {
          v18 = 0xE600000000000000;
          v19 = 0x656C62756F64;
        }
      }

      else if (v17 > 7)
      {
        if (v17 == 8)
        {
          v18 = 0xE900000000000065;
          v19 = 0x7275746375727473;
        }

        else if (v17 == 9)
        {
          v18 = 0xE700000000000000;
          v19 = 0x6E776F6E6B6E75;
        }

        else
        {
          v18 = 0xE400000000000000;
          v19 = 1819047278;
        }
      }

      else if (v17 == 5)
      {
        v18 = 0xE600000000000000;
        v19 = 0x676E69727473;
      }

      else if (v17 == 6)
      {
        v18 = 0xE400000000000000;
        v19 = 1635017060;
      }

      else
      {
        v18 = 0xE500000000000000;
        v19 = 0x7961727261;
      }

      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8) + 48);
      MEMORY[0x259BFE570](v19, v18);

      MEMORY[0x259BFE570](0x616574736E692027, 0xEA00000000002E64);
      sub_2531DAC14();
      v26 = MEMORY[0x277D84160];
      goto LABEL_30;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25319C06C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *v2;
  a2[3] = a1;
  a2[4] = sub_2531A4AA0(&qword_27F58DA88);
  *a2 = v4;
}

uint64_t sub_25319C0D4()
{
  result = swift_beginAccess();
  v2 = *(v0 + 24);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v2 + 24 * v3;
    v6 = *(v4 + 24) == 10;
    v5 = *(v4 + 16) | *(v4 + 8);
    return v6 && v5 == 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25319C134(uint64_t a1, uint64_t a2, unsigned __int8 a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v10 = a1;
  if (a3 == 10)
  {
    if (!(a2 | a1))
    {
      v18 = sub_2531DAC24();
      swift_allocError();
      v20 = v19;
      *v19 = MEMORY[0x277D839B0];
      v21 = a8;
      v22 = ~a8;
      v10 = sub_25316B2C4(a4);
      if (v22)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D190, &qword_2531E1448);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2531E14E0;
        *(inited + 56) = &_s10_CodingKeyON;
        *(inited + 64) = sub_25316B674();
        v24 = swift_allocObject();
        *(inited + 32) = v24;
        *(v24 + 16) = a5;
        *(v24 + 24) = a6;
        *(v24 + 32) = a7;
        *(v24 + 40) = v21;
        sub_2531A7D7C(a5, a6, a7, v21);
        sub_25318DDCC(inited);
      }

      v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8) + 48);
      sub_2531DABC4();
      MEMORY[0x259BFE570](0xD000000000000019, 0x80000002531DC7A0);
      MEMORY[0x259BFE570](1819242306, 0xE400000000000000);
      MEMORY[0x259BFE570](0xD00000000000001CLL, 0x80000002531DC7C0);
      sub_2531DAC14();
      (*(*(v18 - 8) + 104))(v20, *MEMORY[0x277D84170], v18);
      goto LABEL_6;
    }
  }

  else if (!a3)
  {
    return v10 & 1;
  }

  v11 = *(v8 + 32);

  sub_25316B2C4(v11);

  sub_2531DAC24();
  swift_allocError();
  sub_253199108(a3, v12);

LABEL_6:
  swift_willThrow();
  return v10 & 1;
}

uint64_t sub_25319C3E4(uint64_t a1, uint64_t a2, unsigned __int8 a3, unint64_t a4, uint64_t a5, char a6)
{
  v8 = a1;
  if (a3 == 10)
  {
    if (!(a2 | a1))
    {
      v15 = sub_2531DAC24();
      swift_allocError();
      v17 = v16;
      *v16 = MEMORY[0x277D839B0];
      if (a6 == -1)
      {
        v8 = sub_25316B2C4(a4);
      }

      else
      {
        v18 = sub_25316B2C4(a4);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D190, &qword_2531E1448);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2531E14E0;
        *(inited + 56) = &_s3TagO14CodingKeyProxyVN;
        *(inited + 64) = sub_253168DD0();
        *(inited + 32) = a5;
        *(inited + 40) = a6 & 1;
        sub_25318DDCC(inited);
        v8 = v18;
      }

      v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8) + 48);
      sub_2531DABC4();
      MEMORY[0x259BFE570](0xD000000000000019, 0x80000002531DC7A0);
      MEMORY[0x259BFE570](1819242306, 0xE400000000000000);
      MEMORY[0x259BFE570](0xD00000000000001CLL, 0x80000002531DC7C0);
      sub_2531DAC14();
      (*(*(v15 - 8) + 104))(v17, *MEMORY[0x277D84170], v15);
      goto LABEL_6;
    }
  }

  else if (!a3)
  {
    return v8 & 1;
  }

  v9 = *(v6 + 32);

  sub_25316B2C4(v9);

  sub_2531DAC24();
  swift_allocError();
  sub_253199108(a3, v10);

LABEL_6:
  swift_willThrow();
  return v8 & 1;
}

uint64_t sub_25319C668(uint64_t result, uint64_t a2, unsigned __int8 a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a3 != 3)
  {
    if (a3 == 10)
    {
      if (!(a2 | result))
      {
        v16 = sub_2531DAC24();
        swift_allocError();
        v18 = v17;
        *v17 = MEMORY[0x277D839F8];
        sub_25316B2C4(a4);
        if (a8 != -1)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D190, &qword_2531E1448);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_2531E14E0;
          *(inited + 56) = &_s10_CodingKeyON;
          *(inited + 64) = sub_25316B674();
          v20 = swift_allocObject();
          *(inited + 32) = v20;
          *(v20 + 16) = a5;
          *(v20 + 24) = a6;
          *(v20 + 32) = a7;
          *(v20 + 40) = a8;
          sub_2531A7D7C(a5, a6, a7, a8);
          sub_25318DDCC(inited);
        }

        v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8) + 48);
        sub_2531DABC4();
        MEMORY[0x259BFE570](0xD000000000000019, 0x80000002531DC7A0);
        MEMORY[0x259BFE570](0x656C62756F44, 0xE600000000000000);
        MEMORY[0x259BFE570](0xD00000000000001CLL, 0x80000002531DC7C0);
        sub_2531DAC14();
        (*(*(v16 - 8) + 104))(v18, *MEMORY[0x277D84170], v16);
        return swift_willThrow();
      }
    }

    else if (a3 == 4)
    {
      return result;
    }

    v10 = *(v8 + 32);

    sub_25316B2C4(v10);

    sub_2531DAC24();
    swift_allocError();
    sub_2531995D0(a3, v11);

    return swift_willThrow();
  }

  return result;
}

uint64_t sub_25319C934(uint64_t result, uint64_t a2, unsigned __int8 a3, unint64_t a4, uint64_t a5, char a6)
{
  if (a3 != 3)
  {
    if (a3 == 10)
    {
      if (!(a2 | result))
      {
        v13 = sub_2531DAC24();
        swift_allocError();
        v15 = v14;
        *v14 = MEMORY[0x277D839F8];
        sub_25316B2C4(a4);
        if (a6 != -1)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D190, &qword_2531E1448);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_2531E14E0;
          *(inited + 56) = &_s3TagO14CodingKeyProxyVN;
          *(inited + 64) = sub_253168DD0();
          *(inited + 32) = a5;
          *(inited + 40) = a6 & 1;
          sub_25318DDCC(inited);
        }

        v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8) + 48);
        sub_2531DABC4();
        MEMORY[0x259BFE570](0xD000000000000019, 0x80000002531DC7A0);
        MEMORY[0x259BFE570](0x656C62756F44, 0xE600000000000000);
        MEMORY[0x259BFE570](0xD00000000000001CLL, 0x80000002531DC7C0);
        sub_2531DAC14();
        (*(*(v13 - 8) + 104))(v15, *MEMORY[0x277D84170], v13);
        return swift_willThrow();
      }
    }

    else if (a3 == 4)
    {
      return result;
    }

    v8 = *(v6 + 32);

    sub_25316B2C4(v8);

    sub_2531DAC24();
    swift_allocError();
    sub_2531995D0(a3, v9);

    return swift_willThrow();
  }

  return result;
}

uint64_t sub_25319CBD4(uint64_t result, uint64_t a2, unsigned __int8 a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a3 == 10)
  {
    if (!(a2 | result))
    {
      v16 = sub_2531DAC24();
      swift_allocError();
      v18 = v17;
      *v17 = MEMORY[0x277D83A90];
      sub_25316B2C4(a4);
      if (a8 != -1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D190, &qword_2531E1448);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2531E14E0;
        *(inited + 56) = &_s10_CodingKeyON;
        *(inited + 64) = sub_25316B674();
        v20 = swift_allocObject();
        *(inited + 32) = v20;
        *(v20 + 16) = a5;
        *(v20 + 24) = a6;
        *(v20 + 32) = a7;
        *(v20 + 40) = a8;
        sub_2531A7D7C(a5, a6, a7, a8);
        sub_25318DDCC(inited);
      }

      v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8) + 48);
      sub_2531DABC4();
      MEMORY[0x259BFE570](0xD000000000000019, 0x80000002531DC7A0);
      MEMORY[0x259BFE570](0x74616F6C46, 0xE500000000000000);
      MEMORY[0x259BFE570](0xD00000000000001CLL, 0x80000002531DC7C0);
      sub_2531DAC14();
      (*(*(v16 - 8) + 104))(v18, *MEMORY[0x277D84170], v16);
      return swift_willThrow();
    }

LABEL_5:
    v10 = *(v8 + 32);

    sub_25316B2C4(v10);

    sub_2531DAC24();
    swift_allocError();
    sub_253199834(a3, v11);

    return swift_willThrow();
  }

  if (a3 != 3)
  {
    goto LABEL_5;
  }

  return result;
}

uint64_t sub_25319CE8C(uint64_t result, uint64_t a2, unsigned __int8 a3, unint64_t a4, uint64_t a5, char a6)
{
  if (a3 == 10)
  {
    if (!(a2 | result))
    {
      v13 = sub_2531DAC24();
      swift_allocError();
      v15 = v14;
      *v14 = MEMORY[0x277D83A90];
      sub_25316B2C4(a4);
      if (a6 != -1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D190, &qword_2531E1448);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2531E14E0;
        *(inited + 56) = &_s3TagO14CodingKeyProxyVN;
        *(inited + 64) = sub_253168DD0();
        *(inited + 32) = a5;
        *(inited + 40) = a6 & 1;
        sub_25318DDCC(inited);
      }

      v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8) + 48);
      sub_2531DABC4();
      MEMORY[0x259BFE570](0xD000000000000019, 0x80000002531DC7A0);
      MEMORY[0x259BFE570](0x74616F6C46, 0xE500000000000000);
      MEMORY[0x259BFE570](0xD00000000000001CLL, 0x80000002531DC7C0);
      sub_2531DAC14();
      (*(*(v13 - 8) + 104))(v15, *MEMORY[0x277D84170], v13);
      return swift_willThrow();
    }

LABEL_5:
    v8 = *(v6 + 32);

    sub_25316B2C4(v8);

    sub_2531DAC24();
    swift_allocError();
    sub_253199834(a3, v9);

    return swift_willThrow();
  }

  if (a3 != 3)
  {
    goto LABEL_5;
  }

  return result;
}

uint64_t sub_25319D118@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v109 = a8;
  v110 = a2;
  v101 = a7;
  v102 = a9;
  v111 = a4;
  v115 = a3;
  v106 = *(a6 - 8);
  v12 = *(v106 + 64);
  v13 = MEMORY[0x28223BE20](a1);
  v99 = v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v100 = v95 - v15;
  v16 = sub_2531DAAF4();
  v107 = *(v16 - 8);
  v108 = v16;
  v17 = *(v107 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = v95 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = v95 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = v95 - v25;
  MEMORY[0x28223BE20](v24);
  v103 = v95 - v27;
  v28 = sub_2531DAAF4();
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v28);
  v32 = v95 - v31;
  v33 = *(*(a5 - 8) + 64);
  MEMORY[0x28223BE20](v30);
  v37 = v95 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = *a1;
  v38 = *(a1 + 8);
  v40 = *(a1 + 16);
  if (v110 != MEMORY[0x277CC9318])
  {
    v41 = v111;
    v97 = *a1;
    v98 = v38;
    v96 = v40;
    v110 = a6;
    if (swift_conformsToProtocol2())
    {
      v112 = 0;
      v113 = 0xE000000000000000;
      sub_2531DABC4();
      MEMORY[0x259BFE570](0xD000000000000010, 0x80000002531DCBA0);
      v42 = sub_2531DB544();
      MEMORY[0x259BFE570](v42);

      MEMORY[0x259BFE570](0xD00000000000002BLL, 0x80000002531DCBC0);
      v104 = v113;
      v105 = v112;
      v43 = sub_2531DAC24();
      swift_allocError();
      v102 = v44;
      v45 = v107;
      v46 = v108;
      v47 = *(v107 + 16);
      v48 = v103;
      v47();
      (v47)(v26, v48, v46);
      v49 = v106;
      v50 = v110;
      if ((*(v106 + 48))(v26, 1, v110) == 1)
      {
        v51 = *(v45 + 8);
        v51(v48, v46);
        v51(v26, v46);
        v52 = v115;

LABEL_19:
        sub_25316B2C4(v52);

        v84 = v102;
        sub_2531DAC14();
        (*(*(v43 - 8) + 104))(v84, *MEMORY[0x277D84168], v43);
        return swift_willThrow();
      }

      v69 = *(v49 + 32);
      v70 = v100;
      v69(v100, v26, v50);
      v52 = swift_allocObject();
      v71 = v109;
      *(v52 + 40) = v50;
      *(v52 + 48) = v71;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v52 + 16));
      v69(boxed_opaque_existential_0, v70, v50);
      v73 = *(v45 + 8);
      a5 = v45 + 8;
      v73(v103, v46);
      v74 = v115;
      *(v52 + 56) = v115;
      if (v74 >> 62)
      {
        if (v74 >> 62 != 1)
        {
          v83 = 1;
          goto LABEL_18;
        }

        v75 = ((v74 & 0x3FFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v75 = (v74 + 64);
      }

      v82 = *v75;

      v83 = v82 + 1;
      if (!__OFADD__(v82, 1))
      {
LABEL_18:
        *(v52 + 64) = v83;
        goto LABEL_19;
      }

      __break(1u);
    }

    else
    {
      v62 = v107;
      v61 = v108;
      v63 = *(v107 + 16);
      v63(v23, v41, v108);
      v63(v20, v23, v61);
      v64 = v106;
      v65 = v110;
      v66 = (*(v106 + 48))(v20, 1, v110);
      v95[1] = a5;
      if (v66 == 1)
      {
        v67 = *(v62 + 8);
        v67(v23, v61);
        v67(v20, v61);
        v52 = v115;

        v68 = v104;
        goto LABEL_25;
      }

      v76 = *(v64 + 32);
      v77 = v99;
      v76(v99, v20, v65);
      v52 = swift_allocObject();
      v78 = v109;
      *(v52 + 40) = v65;
      *(v52 + 48) = v78;
      v79 = __swift_allocate_boxed_opaque_existential_0((v52 + 16));
      v76(v79, v77, v65);
      (*(v62 + 8))(v23, v61);
      v80 = v115;
      *(v52 + 56) = v115;
      if (v80 >> 62)
      {
        v68 = v104;
        if (v80 >> 62 != 1)
        {
          v86 = 1;
LABEL_24:
          *(v52 + 64) = v86;
LABEL_25:
          a5 = v68[4];
          v68[4] = v52;
          swift_beginAccess();
          v52 = v68[3];

          sub_25316D004(v97, v98, v96);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v68[3] = v52;
          if (isUniquelyReferenced_nonNull_native)
          {
LABEL_26:
            v89 = *(v52 + 16);
            v88 = *(v52 + 24);
            v91 = v97;
            v90 = v98;
            if (v89 >= v88 >> 1)
            {
              v94 = sub_25316A3D4((v88 > 1), v89 + 1, 1, v52);
              v91 = v97;
              v90 = v98;
              v52 = v94;
            }

            *(v52 + 16) = v89 + 1;
            v92 = v52 + 24 * v89;
            *(v92 + 32) = v91;
            *(v92 + 40) = v90;
            *(v92 + 48) = v96;
            v68[3] = v52;
            swift_endAccess();
            sub_2531A1840(v68);
            v93 = v68[4];
            v68[4] = a5;

            sub_25319B61C();
          }

LABEL_32:
          v52 = sub_25316A3D4(0, *(v52 + 16) + 1, 1, v52);
          v68[3] = v52;
          goto LABEL_26;
        }

        v81 = ((v80 & 0x3FFFFFFFFFFFFFFFLL) + 32);
LABEL_23:
        v85 = *v81;

        v86 = v85 + 1;
        if (__OFADD__(v85, 1))
        {
          __break(1u);
          goto LABEL_32;
        }

        goto LABEL_24;
      }
    }

    v81 = (v80 + 64);
    v68 = v104;
    goto LABEL_23;
  }

  v53 = v35;
  v54 = v34;
  v112 = *a1;
  v113 = v38;
  v114 = v40;
  v55 = v105;
  result = sub_2531A6C90(&v112, v115, v111, a6, v109);
  if (!v55)
  {
    v58 = result;
    v59 = v57;
    v112 = result;
    v113 = v57;
    sub_25316D050(result, v57);
    sub_25316D050(v58, v59);
    if (swift_dynamicCast())
    {
      sub_25316D308(v58, v59);
      (*(v54 + 56))(v32, 0, 1, a5);
      v60 = *(v54 + 32);
      v60(v37, v32, a5);
      return (v60)(v102, v37, a5);
    }

    else
    {
      (*(v54 + 56))(v32, 1, 1, a5);
      (*(v53 + 8))(v32, v28);
      result = sub_2531DAD34();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_25319DAD4(uint64_t a1, uint64_t a2, unsigned __int8 a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a3 == 10)
  {
    if (!(a2 | a1))
    {
      v17 = sub_2531DAC24();
      swift_allocError();
      v19 = v18;
      *v18 = MEMORY[0x277D83B88];
      sub_25316B2C4(a4);
      if (a8 != -1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D190, &qword_2531E1448);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2531E14E0;
        *(inited + 56) = &_s10_CodingKeyON;
        *(inited + 64) = sub_25316B674();
        v21 = swift_allocObject();
        *(inited + 32) = v21;
        *(v21 + 16) = a5;
        *(v21 + 24) = a6;
        *(v21 + 32) = a7;
        *(v21 + 40) = a8;
        sub_2531A7D7C(a5, a6, a7, a8);
        sub_25318DDCC(inited);
      }

      v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8) + 48);
      sub_2531DABC4();
      MEMORY[0x259BFE570](0xD000000000000019, 0x80000002531DC7A0);
      MEMORY[0x259BFE570](7630409, 0xE300000000000000);
      MEMORY[0x259BFE570](0xD00000000000001CLL, 0x80000002531DC7C0);
      sub_2531DAC14();
      (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D84170], v17);
      goto LABEL_6;
    }

LABEL_5:
    v11 = *(v8 + 32);

    sub_25316B2C4(v11);

    sub_2531DAC24();
    swift_allocError();
    sub_253199A98(a3, v12);

LABEL_6:
    swift_willThrow();
    return a1;
  }

  if (a3 != 1)
  {
    goto LABEL_5;
  }

  return a1;
}

uint64_t sub_25319DD88(uint64_t a1, uint64_t a2, unsigned __int8 a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v10 = a1;
  if (a3 == 10)
  {
    if (!(a2 | a1))
    {
      v20 = sub_2531DAC24();
      swift_allocError();
      v22 = v21;
      *v21 = MEMORY[0x277D84900];
      v23 = a8;
      v24 = ~a8;
      v10 = sub_25316B2C4(a4);
      if (v24)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D190, &qword_2531E1448);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2531E14E0;
        *(inited + 56) = &_s10_CodingKeyON;
        *(inited + 64) = sub_25316B674();
        v26 = swift_allocObject();
        *(inited + 32) = v26;
        *(v26 + 16) = a5;
        *(v26 + 24) = a6;
        *(v26 + 32) = a7;
        *(v26 + 40) = v23;
        sub_2531A7D7C(a5, a6, a7, v23);
        sub_25318DDCC(inited);
      }

      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8) + 48);
      sub_2531DABC4();
      MEMORY[0x259BFE570](0xD000000000000019, 0x80000002531DC7A0);
      MEMORY[0x259BFE570](947154505, 0xE400000000000000);
      MEMORY[0x259BFE570](0xD00000000000001CLL, 0x80000002531DC7C0);
      sub_2531DAC14();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D84170], v20);
      goto LABEL_8;
    }
  }

  else if (a3 == 1)
  {
    if (a1 == a1)
    {
      return v10;
    }

    v11 = *(v8 + 32);

    sub_25316B2C4(v11);

    sub_2531DAC24();
    swift_allocError();
    sub_25319B280(947154505, 0xE400000000000000, v12);
    goto LABEL_7;
  }

  v13 = *(v8 + 32);

  sub_25316B2C4(v13);

  sub_2531DAC24();
  swift_allocError();
  sub_253199CFC(a3, v14);
LABEL_7:

LABEL_8:
  swift_willThrow();
  return v10;
}

uint64_t sub_25319E0AC(uint64_t a1, uint64_t a2, unsigned __int8 a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v10 = a1;
  if (a3 == 10)
  {
    if (!(a2 | a1))
    {
      v20 = sub_2531DAC24();
      swift_allocError();
      v22 = v21;
      *v21 = MEMORY[0x277D84958];
      v23 = a8;
      v24 = ~a8;
      v10 = sub_25316B2C4(a4);
      if (v24)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D190, &qword_2531E1448);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2531E14E0;
        *(inited + 56) = &_s10_CodingKeyON;
        *(inited + 64) = sub_25316B674();
        v26 = swift_allocObject();
        *(inited + 32) = v26;
        *(v26 + 16) = a5;
        *(v26 + 24) = a6;
        *(v26 + 32) = a7;
        *(v26 + 40) = v23;
        sub_2531A7D7C(a5, a6, a7, v23);
        sub_25318DDCC(inited);
      }

      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8) + 48);
      sub_2531DABC4();
      MEMORY[0x259BFE570](0xD000000000000019, 0x80000002531DC7A0);
      MEMORY[0x259BFE570](0x3631746E49, 0xE500000000000000);
      MEMORY[0x259BFE570](0xD00000000000001CLL, 0x80000002531DC7C0);
      sub_2531DAC14();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D84170], v20);
      goto LABEL_8;
    }
  }

  else if (a3 == 1)
  {
    if (a1 == a1)
    {
      return v10;
    }

    v11 = *(v8 + 32);

    sub_25316B2C4(v11);

    sub_2531DAC24();
    swift_allocError();
    sub_25319B280(0x3631746E49, 0xE500000000000000, v12);
    goto LABEL_7;
  }

  v13 = *(v8 + 32);

  sub_25316B2C4(v13);

  sub_2531DAC24();
  swift_allocError();
  sub_253199F60(a3, v14);
LABEL_7:

LABEL_8:
  swift_willThrow();
  return v10;
}

uint64_t sub_25319E3D8(uint64_t a1, uint64_t a2, unsigned __int8 a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v10 = a1;
  if (a3 == 10)
  {
    if (!(a2 | a1))
    {
      v20 = sub_2531DAC24();
      swift_allocError();
      v22 = v21;
      *v21 = MEMORY[0x277D849A8];
      v23 = a8;
      v24 = ~a8;
      v10 = sub_25316B2C4(a4);
      if (v24)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D190, &qword_2531E1448);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2531E14E0;
        *(inited + 56) = &_s10_CodingKeyON;
        *(inited + 64) = sub_25316B674();
        v26 = swift_allocObject();
        *(inited + 32) = v26;
        *(v26 + 16) = a5;
        *(v26 + 24) = a6;
        *(v26 + 32) = a7;
        *(v26 + 40) = v23;
        sub_2531A7D7C(a5, a6, a7, v23);
        sub_25318DDCC(inited);
      }

      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8) + 48);
      sub_2531DABC4();
      MEMORY[0x259BFE570](0xD000000000000019, 0x80000002531DC7A0);
      MEMORY[0x259BFE570](0x3233746E49, 0xE500000000000000);
      MEMORY[0x259BFE570](0xD00000000000001CLL, 0x80000002531DC7C0);
      sub_2531DAC14();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D84170], v20);
      goto LABEL_8;
    }
  }

  else if (a3 == 1)
  {
    if (a1 == a1)
    {
      return v10;
    }

    v11 = *(v8 + 32);

    sub_25316B2C4(v11);

    sub_2531DAC24();
    swift_allocError();
    sub_25319B280(0x3233746E49, 0xE500000000000000, v12);
    goto LABEL_7;
  }

  v13 = *(v8 + 32);

  sub_25316B2C4(v13);

  sub_2531DAC24();
  swift_allocError();
  sub_25319A1C4(a3, v14);
LABEL_7:

LABEL_8:
  swift_willThrow();
  return v10;
}

uint64_t sub_25319E704(uint64_t a1, uint64_t a2, unsigned __int8 a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a3 != 1)
  {
    if (a3 == 10 && !(a2 | a1))
    {
      v17 = sub_2531DAC24();
      swift_allocError();
      v19 = v18;
      *v18 = MEMORY[0x277D84A28];
      sub_25316B2C4(a4);
      if (a8 != -1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D190, &qword_2531E1448);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2531E14E0;
        *(inited + 56) = &_s10_CodingKeyON;
        *(inited + 64) = sub_25316B674();
        v21 = swift_allocObject();
        *(inited + 32) = v21;
        *(v21 + 16) = a5;
        *(v21 + 24) = a6;
        *(v21 + 32) = a7;
        *(v21 + 40) = a8;
        sub_2531A7D7C(a5, a6, a7, a8);
        sub_25318DDCC(inited);
      }

      v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8) + 48);
      sub_2531DABC4();
      MEMORY[0x259BFE570](0xD000000000000019, 0x80000002531DC7A0);
      MEMORY[0x259BFE570](0x3436746E49, 0xE500000000000000);
      MEMORY[0x259BFE570](0xD00000000000001CLL, 0x80000002531DC7C0);
      sub_2531DAC14();
      (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D84170], v17);
    }

    else
    {
      v11 = *(v8 + 32);

      sub_25316B2C4(v11);

      sub_2531DAC24();
      swift_allocError();
      sub_25319A428(a3, v12);
    }

    swift_willThrow();
  }

  return a1;
}

uint64_t sub_25319E9B8(uint64_t a1, uint64_t a2, unsigned __int8 a3, unint64_t a4, uint64_t a5, char a6)
{
  if (a3 == 10)
  {
    if (!(a2 | a1))
    {
      v15 = sub_2531DAC24();
      swift_allocError();
      v17 = v16;
      *v16 = MEMORY[0x277D83B88];
      sub_25316B2C4(a4);
      if (a6 != -1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D190, &qword_2531E1448);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2531E14E0;
        *(inited + 56) = &_s3TagO14CodingKeyProxyVN;
        *(inited + 64) = sub_253168DD0();
        *(inited + 32) = a5;
        *(inited + 40) = a6 & 1;
        sub_25318DDCC(inited);
      }

      v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8) + 48);
      sub_2531DABC4();
      MEMORY[0x259BFE570](0xD000000000000019, 0x80000002531DC7A0);
      MEMORY[0x259BFE570](7630409, 0xE300000000000000);
      MEMORY[0x259BFE570](0xD00000000000001CLL, 0x80000002531DC7C0);
      sub_2531DAC14();
      (*(*(v15 - 8) + 104))(v17, *MEMORY[0x277D84170], v15);
      goto LABEL_6;
    }

LABEL_5:
    v9 = *(v6 + 32);

    sub_25316B2C4(v9);

    sub_2531DAC24();
    swift_allocError();
    sub_253199A98(a3, v10);

LABEL_6:
    swift_willThrow();
    return a1;
  }

  if (a3 != 1)
  {
    goto LABEL_5;
  }

  return a1;
}

uint64_t sub_25319EC40(uint64_t a1, uint64_t a2, unsigned __int8 a3, unint64_t a4, uint64_t a5, char a6)
{
  v8 = a1;
  if (a3 == 10)
  {
    if (!(a2 | a1))
    {
      v17 = sub_2531DAC24();
      swift_allocError();
      v19 = v18;
      *v18 = MEMORY[0x277D84900];
      if (a6 == -1)
      {
        v8 = sub_25316B2C4(a4);
      }

      else
      {
        v20 = sub_25316B2C4(a4);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D190, &qword_2531E1448);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2531E14E0;
        *(inited + 56) = &_s3TagO14CodingKeyProxyVN;
        *(inited + 64) = sub_253168DD0();
        *(inited + 32) = a5;
        *(inited + 40) = a6 & 1;
        sub_25318DDCC(inited);
        v8 = v20;
      }

      v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8) + 48);
      sub_2531DABC4();
      MEMORY[0x259BFE570](0xD000000000000019, 0x80000002531DC7A0);
      MEMORY[0x259BFE570](947154505, 0xE400000000000000);
      MEMORY[0x259BFE570](0xD00000000000001CLL, 0x80000002531DC7C0);
      sub_2531DAC14();
      (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D84170], v17);
      goto LABEL_8;
    }
  }

  else if (a3 == 1)
  {
    if (a1 == a1)
    {
      return v8;
    }

    v9 = *(v6 + 32);

    sub_25316B2C4(v9);

    sub_2531DAC24();
    swift_allocError();
    sub_25319B280(947154505, 0xE400000000000000, v10);
    goto LABEL_7;
  }

  v11 = *(v6 + 32);

  sub_25316B2C4(v11);

  sub_2531DAC24();
  swift_allocError();
  sub_253199CFC(a3, v12);
LABEL_7:

LABEL_8:
  swift_willThrow();
  return v8;
}

uint64_t sub_25319EF38(uint64_t a1, uint64_t a2, unsigned __int8 a3, unint64_t a4, uint64_t a5, char a6)
{
  v8 = a1;
  if (a3 == 10)
  {
    if (!(a2 | a1))
    {
      v17 = sub_2531DAC24();
      swift_allocError();
      v19 = v18;
      *v18 = MEMORY[0x277D84958];
      if (a6 == -1)
      {
        v8 = sub_25316B2C4(a4);
      }

      else
      {
        v20 = sub_25316B2C4(a4);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D190, &qword_2531E1448);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2531E14E0;
        *(inited + 56) = &_s3TagO14CodingKeyProxyVN;
        *(inited + 64) = sub_253168DD0();
        *(inited + 32) = a5;
        *(inited + 40) = a6 & 1;
        sub_25318DDCC(inited);
        v8 = v20;
      }

      v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8) + 48);
      sub_2531DABC4();
      MEMORY[0x259BFE570](0xD000000000000019, 0x80000002531DC7A0);
      MEMORY[0x259BFE570](0x3631746E49, 0xE500000000000000);
      MEMORY[0x259BFE570](0xD00000000000001CLL, 0x80000002531DC7C0);
      sub_2531DAC14();
      (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D84170], v17);
      goto LABEL_8;
    }
  }

  else if (a3 == 1)
  {
    if (a1 == a1)
    {
      return v8;
    }

    v9 = *(v6 + 32);

    sub_25316B2C4(v9);

    sub_2531DAC24();
    swift_allocError();
    sub_25319B280(0x3631746E49, 0xE500000000000000, v10);
    goto LABEL_7;
  }

  v11 = *(v6 + 32);

  sub_25316B2C4(v11);

  sub_2531DAC24();
  swift_allocError();
  sub_253199F60(a3, v12);
LABEL_7:

LABEL_8:
  swift_willThrow();
  return v8;
}

uint64_t sub_25319F238(uint64_t a1, uint64_t a2, unsigned __int8 a3, unint64_t a4, uint64_t a5, char a6)
{
  v8 = a1;
  if (a3 == 10)
  {
    if (!(a2 | a1))
    {
      v17 = sub_2531DAC24();
      swift_allocError();
      v19 = v18;
      *v18 = MEMORY[0x277D849A8];
      if (a6 == -1)
      {
        v8 = sub_25316B2C4(a4);
      }

      else
      {
        v20 = sub_25316B2C4(a4);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D190, &qword_2531E1448);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2531E14E0;
        *(inited + 56) = &_s3TagO14CodingKeyProxyVN;
        *(inited + 64) = sub_253168DD0();
        *(inited + 32) = a5;
        *(inited + 40) = a6 & 1;
        sub_25318DDCC(inited);
        v8 = v20;
      }

      v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8) + 48);
      sub_2531DABC4();
      MEMORY[0x259BFE570](0xD000000000000019, 0x80000002531DC7A0);
      MEMORY[0x259BFE570](0x3233746E49, 0xE500000000000000);
      MEMORY[0x259BFE570](0xD00000000000001CLL, 0x80000002531DC7C0);
      sub_2531DAC14();
      (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D84170], v17);
      goto LABEL_8;
    }
  }

  else if (a3 == 1)
  {
    if (a1 == a1)
    {
      return v8;
    }

    v9 = *(v6 + 32);

    sub_25316B2C4(v9);

    sub_2531DAC24();
    swift_allocError();
    sub_25319B280(0x3233746E49, 0xE500000000000000, v10);
    goto LABEL_7;
  }

  v11 = *(v6 + 32);

  sub_25316B2C4(v11);

  sub_2531DAC24();
  swift_allocError();
  sub_25319A1C4(a3, v12);
LABEL_7:

LABEL_8:
  swift_willThrow();
  return v8;
}

uint64_t sub_25319F538(uint64_t a1, uint64_t a2, unsigned __int8 a3, unint64_t a4, uint64_t a5, char a6)
{
  if (a3 != 1)
  {
    if (a3 == 10 && !(a2 | a1))
    {
      v15 = sub_2531DAC24();
      swift_allocError();
      v17 = v16;
      *v16 = MEMORY[0x277D84A28];
      sub_25316B2C4(a4);
      if (a6 != -1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D190, &qword_2531E1448);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2531E14E0;
        *(inited + 56) = &_s3TagO14CodingKeyProxyVN;
        *(inited + 64) = sub_253168DD0();
        *(inited + 32) = a5;
        *(inited + 40) = a6 & 1;
        sub_25318DDCC(inited);
      }

      v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8) + 48);
      sub_2531DABC4();
      MEMORY[0x259BFE570](0xD000000000000019, 0x80000002531DC7A0);
      MEMORY[0x259BFE570](0x3436746E49, 0xE500000000000000);
      MEMORY[0x259BFE570](0xD00000000000001CLL, 0x80000002531DC7C0);
      sub_2531DAC14();
      (*(*(v15 - 8) + 104))(v17, *MEMORY[0x277D84170], v15);
    }

    else
    {
      v9 = *(v6 + 32);

      sub_25316B2C4(v9);

      sub_2531DAC24();
      swift_allocError();
      sub_25319A428(a3, v10);
    }

    swift_willThrow();
  }

  return a1;
}

uint64_t sub_25319F7C0(uint64_t a1, uint64_t a2, unsigned __int8 a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a3 == 10)
  {
    if (!(a2 | a1))
    {
      v17 = sub_2531DAC24();
      swift_allocError();
      v19 = v18;
      *v18 = MEMORY[0x277D83E88];
      sub_25316B2C4(a4);
      if (a8 != -1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D190, &qword_2531E1448);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2531E14E0;
        *(inited + 56) = &_s10_CodingKeyON;
        *(inited + 64) = sub_25316B674();
        v21 = swift_allocObject();
        *(inited + 32) = v21;
        *(v21 + 16) = a5;
        *(v21 + 24) = a6;
        *(v21 + 32) = a7;
        *(v21 + 40) = a8;
        sub_2531A7D7C(a5, a6, a7, a8);
        sub_25318DDCC(inited);
      }

      v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8) + 48);
      sub_2531DABC4();
      MEMORY[0x259BFE570](0xD000000000000019, 0x80000002531DC7A0);
      MEMORY[0x259BFE570](1953384789, 0xE400000000000000);
      MEMORY[0x259BFE570](0xD00000000000001CLL, 0x80000002531DC7C0);
      sub_2531DAC14();
      (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D84170], v17);
      goto LABEL_6;
    }

LABEL_5:
    v11 = *(v8 + 32);

    sub_25316B2C4(v11);

    sub_2531DAC24();
    swift_allocError();
    sub_25319A68C(a3, v12);

LABEL_6:
    swift_willThrow();
    return a1;
  }

  if (a3 != 2)
  {
    goto LABEL_5;
  }

  return a1;
}

uint64_t sub_25319FA74(unint64_t a1, uint64_t a2, unsigned __int8 a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v10 = a1;
  if (a3 == 10)
  {
    if (!(a2 | a1))
    {
      v20 = sub_2531DAC24();
      swift_allocError();
      v22 = v21;
      *v21 = MEMORY[0x277D84B78];
      v23 = a8;
      v24 = ~a8;
      v10 = sub_25316B2C4(a4);
      if (v24)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D190, &qword_2531E1448);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2531E14E0;
        *(inited + 56) = &_s10_CodingKeyON;
        *(inited + 64) = sub_25316B674();
        v26 = swift_allocObject();
        *(inited + 32) = v26;
        *(v26 + 16) = a5;
        *(v26 + 24) = a6;
        *(v26 + 32) = a7;
        *(v26 + 40) = v23;
        sub_2531A7D7C(a5, a6, a7, v23);
        sub_25318DDCC(inited);
      }

      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8) + 48);
      sub_2531DABC4();
      MEMORY[0x259BFE570](0xD000000000000019, 0x80000002531DC7A0);
      MEMORY[0x259BFE570](0x38746E4955, 0xE500000000000000);
      MEMORY[0x259BFE570](0xD00000000000001CLL, 0x80000002531DC7C0);
      sub_2531DAC14();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D84170], v20);
      goto LABEL_8;
    }
  }

  else if (a3 == 2)
  {
    if (a1 <= 0xFF)
    {
      return v10;
    }

    v11 = *(v8 + 32);

    sub_25316B2C4(v11);

    sub_2531DAC24();
    swift_allocError();
    sub_25319B280(0x38746E4955, 0xE500000000000000, v12);
    goto LABEL_7;
  }

  v13 = *(v8 + 32);

  sub_25316B2C4(v13);

  sub_2531DAC24();
  swift_allocError();
  sub_25319A8F0(a3, v14);
LABEL_7:

LABEL_8:
  swift_willThrow();
  return v10;
}

uint64_t sub_25319FDA0(unint64_t a1, uint64_t a2, unsigned __int8 a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v10 = a1;
  if (a3 == 10)
  {
    if (!(a2 | a1))
    {
      v20 = sub_2531DAC24();
      swift_allocError();
      v22 = v21;
      *v21 = MEMORY[0x277D84C58];
      v23 = a8;
      v24 = ~a8;
      v10 = sub_25316B2C4(a4);
      if (v24)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D190, &qword_2531E1448);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2531E14E0;
        *(inited + 56) = &_s10_CodingKeyON;
        *(inited + 64) = sub_25316B674();
        v26 = swift_allocObject();
        *(inited + 32) = v26;
        *(v26 + 16) = a5;
        *(v26 + 24) = a6;
        *(v26 + 32) = a7;
        *(v26 + 40) = v23;
        sub_2531A7D7C(a5, a6, a7, v23);
        sub_25318DDCC(inited);
      }

      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8) + 48);
      sub_2531DABC4();
      MEMORY[0x259BFE570](0xD000000000000019, 0x80000002531DC7A0);
      MEMORY[0x259BFE570](0x3631746E4955, 0xE600000000000000);
      MEMORY[0x259BFE570](0xD00000000000001CLL, 0x80000002531DC7C0);
      sub_2531DAC14();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D84170], v20);
      goto LABEL_8;
    }
  }

  else if (a3 == 2)
  {
    if (!(a1 >> 16))
    {
      return v10;
    }

    v11 = *(v8 + 32);

    sub_25316B2C4(v11);

    sub_2531DAC24();
    swift_allocError();
    sub_25319B280(0x3631746E4955, 0xE600000000000000, v12);
    goto LABEL_7;
  }

  v13 = *(v8 + 32);

  sub_25316B2C4(v13);

  sub_2531DAC24();
  swift_allocError();
  sub_25319AB54(a3, v14);
LABEL_7:

LABEL_8:
  swift_willThrow();
  return v10;
}

uint64_t sub_2531A00CC(unint64_t a1, uint64_t a2, unsigned __int8 a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v10 = a1;
  if (a3 == 10)
  {
    if (!(a2 | a1))
    {
      v20 = sub_2531DAC24();
      swift_allocError();
      v22 = v21;
      *v21 = MEMORY[0x277D84CC0];
      v23 = a8;
      v24 = ~a8;
      v10 = sub_25316B2C4(a4);
      if (v24)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D190, &qword_2531E1448);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2531E14E0;
        *(inited + 56) = &_s10_CodingKeyON;
        *(inited + 64) = sub_25316B674();
        v26 = swift_allocObject();
        *(inited + 32) = v26;
        *(v26 + 16) = a5;
        *(v26 + 24) = a6;
        *(v26 + 32) = a7;
        *(v26 + 40) = v23;
        sub_2531A7D7C(a5, a6, a7, v23);
        sub_25318DDCC(inited);
      }

      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8) + 48);
      sub_2531DABC4();
      MEMORY[0x259BFE570](0xD000000000000019, 0x80000002531DC7A0);
      MEMORY[0x259BFE570](0x3233746E4955, 0xE600000000000000);
      MEMORY[0x259BFE570](0xD00000000000001CLL, 0x80000002531DC7C0);
      sub_2531DAC14();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D84170], v20);
      goto LABEL_8;
    }
  }

  else if (a3 == 2)
  {
    if (!HIDWORD(a1))
    {
      return v10;
    }

    v11 = *(v8 + 32);

    sub_25316B2C4(v11);

    sub_2531DAC24();
    swift_allocError();
    sub_25319B280(0x3233746E4955, 0xE600000000000000, v12);
    goto LABEL_7;
  }

  v13 = *(v8 + 32);

  sub_25316B2C4(v13);

  sub_2531DAC24();
  swift_allocError();
  sub_25319ADB8(a3, v14);
LABEL_7:

LABEL_8:
  swift_willThrow();
  return v10;
}

uint64_t sub_2531A03F8(uint64_t a1, uint64_t a2, unsigned __int8 a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a3 != 2)
  {
    if (a3 == 10 && !(a2 | a1))
    {
      v17 = sub_2531DAC24();
      swift_allocError();
      v19 = v18;
      *v18 = MEMORY[0x277D84D38];
      sub_25316B2C4(a4);
      if (a8 != -1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D190, &qword_2531E1448);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2531E14E0;
        *(inited + 56) = &_s10_CodingKeyON;
        *(inited + 64) = sub_25316B674();
        v21 = swift_allocObject();
        *(inited + 32) = v21;
        *(v21 + 16) = a5;
        *(v21 + 24) = a6;
        *(v21 + 32) = a7;
        *(v21 + 40) = a8;
        sub_2531A7D7C(a5, a6, a7, a8);
        sub_25318DDCC(inited);
      }

      v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8) + 48);
      sub_2531DABC4();
      MEMORY[0x259BFE570](0xD000000000000019, 0x80000002531DC7A0);
      MEMORY[0x259BFE570](0x3436746E4955, 0xE600000000000000);
      MEMORY[0x259BFE570](0xD00000000000001CLL, 0x80000002531DC7C0);
      sub_2531DAC14();
      (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D84170], v17);
    }

    else
    {
      v11 = *(v8 + 32);

      sub_25316B2C4(v11);

      sub_2531DAC24();
      swift_allocError();
      sub_25319B01C(a3, v12);
    }

    swift_willThrow();
  }

  return a1;
}

uint64_t sub_2531A06AC(uint64_t a1, uint64_t a2, unsigned __int8 a3, unint64_t a4, uint64_t a5, char a6)
{
  if (a3 == 10)
  {
    if (!(a2 | a1))
    {
      v15 = sub_2531DAC24();
      swift_allocError();
      v17 = v16;
      *v16 = MEMORY[0x277D83E88];
      sub_25316B2C4(a4);
      if (a6 != -1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D190, &qword_2531E1448);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2531E14E0;
        *(inited + 56) = &_s3TagO14CodingKeyProxyVN;
        *(inited + 64) = sub_253168DD0();
        *(inited + 32) = a5;
        *(inited + 40) = a6 & 1;
        sub_25318DDCC(inited);
      }

      v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8) + 48);
      sub_2531DABC4();
      MEMORY[0x259BFE570](0xD000000000000019, 0x80000002531DC7A0);
      MEMORY[0x259BFE570](1953384789, 0xE400000000000000);
      MEMORY[0x259BFE570](0xD00000000000001CLL, 0x80000002531DC7C0);
      sub_2531DAC14();
      (*(*(v15 - 8) + 104))(v17, *MEMORY[0x277D84170], v15);
      goto LABEL_6;
    }

LABEL_5:
    v9 = *(v6 + 32);

    sub_25316B2C4(v9);

    sub_2531DAC24();
    swift_allocError();
    sub_25319A68C(a3, v10);

LABEL_6:
    swift_willThrow();
    return a1;
  }

  if (a3 != 2)
  {
    goto LABEL_5;
  }

  return a1;
}

uint64_t sub_2531A0934(unint64_t a1, uint64_t a2, unsigned __int8 a3, unint64_t a4, uint64_t a5, char a6)
{
  v8 = a1;
  if (a3 == 10)
  {
    if (!(a2 | a1))
    {
      v17 = sub_2531DAC24();
      swift_allocError();
      v19 = v18;
      *v18 = MEMORY[0x277D84B78];
      if (a6 == -1)
      {
        v8 = sub_25316B2C4(a4);
      }

      else
      {
        v20 = sub_25316B2C4(a4);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D190, &qword_2531E1448);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2531E14E0;
        *(inited + 56) = &_s3TagO14CodingKeyProxyVN;
        *(inited + 64) = sub_253168DD0();
        *(inited + 32) = a5;
        *(inited + 40) = a6 & 1;
        sub_25318DDCC(inited);
        v8 = v20;
      }

      v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8) + 48);
      sub_2531DABC4();
      MEMORY[0x259BFE570](0xD000000000000019, 0x80000002531DC7A0);
      MEMORY[0x259BFE570](0x38746E4955, 0xE500000000000000);
      MEMORY[0x259BFE570](0xD00000000000001CLL, 0x80000002531DC7C0);
      sub_2531DAC14();
      (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D84170], v17);
      goto LABEL_8;
    }
  }

  else if (a3 == 2)
  {
    if (a1 <= 0xFF)
    {
      return v8;
    }

    v9 = *(v6 + 32);

    sub_25316B2C4(v9);

    sub_2531DAC24();
    swift_allocError();
    sub_25319B280(0x38746E4955, 0xE500000000000000, v10);
    goto LABEL_7;
  }

  v11 = *(v6 + 32);

  sub_25316B2C4(v11);

  sub_2531DAC24();
  swift_allocError();
  sub_25319A8F0(a3, v12);
LABEL_7:

LABEL_8:
  swift_willThrow();
  return v8;
}