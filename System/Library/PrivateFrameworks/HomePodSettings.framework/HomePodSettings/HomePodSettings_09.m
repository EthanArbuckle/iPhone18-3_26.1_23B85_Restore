unint64_t sub_254390A98()
{
  result = qword_27F5E2A30;
  if (!qword_27F5E2A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E2A30);
  }

  return result;
}

unint64_t sub_254390AF0()
{
  result = qword_27F5E2A38;
  if (!qword_27F5E2A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E2A38);
  }

  return result;
}

unint64_t sub_254390B48()
{
  result = qword_27F5E2A40;
  if (!qword_27F5E2A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E2A40);
  }

  return result;
}

unint64_t sub_254390BA0()
{
  result = qword_27F5E2A48;
  if (!qword_27F5E2A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E2A48);
  }

  return result;
}

unint64_t sub_254390C3C()
{
  result = qword_27F5E2A60;
  if (!qword_27F5E2A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E2A60);
  }

  return result;
}

unint64_t sub_254390C94()
{
  result = qword_27F5E2A68;
  if (!qword_27F5E2A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E2A68);
  }

  return result;
}

unint64_t sub_254390E08()
{
  result = qword_27F5E2A98;
  if (!qword_27F5E2A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E2A98);
  }

  return result;
}

unint64_t sub_254390E60()
{
  result = qword_27F5E2AA0;
  if (!qword_27F5E2AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E2AA0);
  }

  return result;
}

unint64_t sub_254390EB8()
{
  result = qword_27F5E2AA8;
  if (!qword_27F5E2AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E2AA8);
  }

  return result;
}

uint64_t sub_254390F54()
{
  OUTLINED_FUNCTION_59_3();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_26(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_5_1();
  v7(v6);
  return v0;
}

unint64_t sub_254390FAC(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

unint64_t sub_25439100C(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  v4 = sub_2543A1F88();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v2 + 64;
  v13 = ~(-1 << *(v2 + 32));
  for (i = a2 & v13; ((1 << i) & *(v15 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v13)
  {
    (*(v5 + 16))(v8, *(v2 + 48) + *(v5 + 72) * i, v4);
    sub_25438F8C0(&qword_27F5DF530, MEMORY[0x277CC95F0]);
    v10 = sub_2543A2848();
    (*(v5 + 8))(v8, v4);
    if (v10)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_2543911C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2 + 64;
  v5 = ~(-1 << *(v2 + 32));
  for (i = a2 & v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    sub_254371D74();
    v7 = *(*(v3 + 48) + 8 * i);
    v8 = sub_2543A30B8();

    if (v8)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_254391288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_2543A3608() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_25439133C(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE300000000000000;
      v8 = 7955819;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v7 = 0xE500000000000000;
          v8 = 0x726F727265;
          break;
        case 2:
          v7 = 0xE800000000000000;
          v8 = 0x44497265626D656DLL;
          break;
        case 3:
          v7 = 0xE800000000000000;
          v8 = 0x44497265646E6573;
          break;
        case 4:
          v8 = 0x4B74736575716572;
          v7 = 0xEA00000000007965;
          break;
        case 5:
          v8 = 0x65736E6F70736572;
          v7 = 0xEB0000000079654BLL;
          break;
        default:
          break;
      }

      v9 = 0xE300000000000000;
      v10 = 7955819;
      switch(a1)
      {
        case 1:
          v9 = 0xE500000000000000;
          v10 = 0x726F727265;
          break;
        case 2:
          v9 = 0xE800000000000000;
          v10 = 0x44497265626D656DLL;
          break;
        case 3:
          v9 = 0xE800000000000000;
          v10 = 0x44497265646E6573;
          break;
        case 4:
          v10 = 0x4B74736575716572;
          v9 = 0xEA00000000007965;
          break;
        case 5:
          v10 = 0x65736E6F70736572;
          v9 = 0xEB0000000079654BLL;
          break;
        default:
          break;
      }

      if (v8 == v10 && v7 == v9)
      {
        break;
      }

      v12 = sub_2543A3608();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
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

unint64_t sub_2543915A0(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_254366778(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x259C09CF0](v8, a1);
    sub_25435A68C(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

void sub_254391664()
{
  OUTLINED_FUNCTION_9_1();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_2_4();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_3_3(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFC90, &unk_2543AE850);
      v8 = swift_allocObject();
      OUTLINED_FUNCTION_82_3(v8);
      OUTLINED_FUNCTION_41_5(v9);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_25_8();
        sub_2542F13D0(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_73_3();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_8_2();
  if (!v6)
  {
    OUTLINED_FUNCTION_1_10();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_254391720()
{
  OUTLINED_FUNCTION_9_1();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_2_4();
  if (v7 == v8)
  {
LABEL_7:
    OUTLINED_FUNCTION_3_3(v6);
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E2BB0, &unk_2543B3A30);
      v9 = OUTLINED_FUNCTION_106_0();
      OUTLINED_FUNCTION_82_3(v9);
      OUTLINED_FUNCTION_41_5(v10);
      if (v1)
      {
LABEL_9:
        v11 = OUTLINED_FUNCTION_25_8();
        sub_2542F13F0(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else
    {
      v3 = MEMORY[0x277D84F90];
      if (v1)
      {
        goto LABEL_9;
      }
    }

    memcpy((v3 + 32), (v0 + 32), 8 * v2);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_8_2();
  if (!v7)
  {
    OUTLINED_FUNCTION_1_10();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_2543917D4()
{
  OUTLINED_FUNCTION_9_1();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_2_4();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_3_3(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFC18, &unk_2543B3A20);
      v8 = OUTLINED_FUNCTION_106_0();
      OUTLINED_FUNCTION_82_3(v8);
      OUTLINED_FUNCTION_41_5(v9);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_25_8();
        sub_2542F13F0(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFC28, &unk_2543A81D0);
    OUTLINED_FUNCTION_73_3();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_8_2();
  if (!v6)
  {
    OUTLINED_FUNCTION_1_10();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_254391894()
{
  OUTLINED_FUNCTION_9_1();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_2_4();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_3_3(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5DFCB0, &unk_2543B3A10);
      v8 = OUTLINED_FUNCTION_106_0();
      OUTLINED_FUNCTION_82_3(v8);
      OUTLINED_FUNCTION_41_5(v9);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_25_8();
        sub_2542F13F0(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_73_3();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_8_2();
  if (!v6)
  {
    OUTLINED_FUNCTION_1_10();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_254391944()
{
  OUTLINED_FUNCTION_9_1();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_2_4();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_3_3(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFC88, &qword_2543A7F60);
      v8 = swift_allocObject();
      OUTLINED_FUNCTION_82_3(v8);
      OUTLINED_FUNCTION_41_5(v9);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_25_8();
        sub_2542F1410(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_73_3();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_8_2();
  if (!v6)
  {
    OUTLINED_FUNCTION_1_10();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_254391A00()
{
  OUTLINED_FUNCTION_9_1();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_2_4();
  if (v7 == v8)
  {
LABEL_7:
    OUTLINED_FUNCTION_3_3(v6);
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E02E8, &qword_2543B39E0);
      v9 = swift_allocObject();
      OUTLINED_FUNCTION_82_3(v9);
      *(v3 + 16) = v2;
      *(v3 + 24) = 2 * (v10 / 48);
      if (v1)
      {
LABEL_9:
        v11 = OUTLINED_FUNCTION_25_8();
        sub_2542F1430(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E2B88, &qword_2543B39E8);
    OUTLINED_FUNCTION_73_3();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_8_2();
  if (!v7)
  {
    OUTLINED_FUNCTION_1_10();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_254391ADC(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_254393128(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_254391B48(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_254391B48(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_2543A3598();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        v6 = sub_2543A2A98();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_254391D04(v7, v8, a1, v4);
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
    return sub_254391C3C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_254391C3C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 16 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *(v12 - 2) && v10 == *(v12 - 1))
        {
          break;
        }

        result = sub_2543A3608();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *v12;
        v10 = v12[1];
        *v12 = *(v12 - 1);
        *(v12 - 1) = v10;
        *(v12 - 2) = result;
        v12 -= 2;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 16;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_254391D04(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v92 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 16 * v10);
        v12 = (*a3 + 16 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          v14 = sub_2543A3608();
        }

        v10 = v9 + 2;
        v15 = 16 * v9;
        v16 = v12 + 5;
        while (v10 < v6)
        {
          if (*(v16 - 1) == *(v16 - 3) && *v16 == *(v16 - 2))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else if ((v14 ^ sub_2543A3608()))
          {
            break;
          }

          ++v10;
          v16 += 2;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v18 = 16 * v10;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v15);
              v23 = v21 + v18;
              v24 = *v22;
              v25 = v22[1];
              *v22 = *(v23 - 16);
              *(v23 - 16) = v24;
              *(v23 - 8) = v25;
            }

            ++v20;
            v18 -= 16;
            v15 += 16;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v26 = a3[1];
      if (v10 < v26)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v26)
          {
            v27 = a3[1];
          }

          else
          {
            v27 = v9 + a4;
          }

          if (v27 < v9)
          {
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
            return;
          }

          if (v10 != v27)
          {
            v87 = v5;
            v89 = v9;
            v28 = *a3;
            v29 = *a3 + 16 * v10;
            v30 = v9 - v10;
            do
            {
              v31 = v10;
              v32 = (v28 + 16 * v10);
              v33 = *v32;
              v34 = v32[1];
              v35 = v30;
              v36 = v29;
              do
              {
                v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
                if (v37 || (sub_2543A3608() & 1) == 0)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_124;
                }

                v33 = *v36;
                v34 = v36[1];
                *v36 = *(v36 - 1);
                *(v36 - 1) = v34;
                *(v36 - 2) = v33;
                v36 -= 2;
              }

              while (!__CFADD__(v35++, 1));
              v10 = v31 + 1;
              v29 += 16;
              --v30;
            }

            while (v31 + 1 != v27);
            v10 = v27;
            v5 = v87;
            v9 = v89;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      v88 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v82 = v8[2];
        sub_2542F0C90();
        v8 = v83;
      }

      v39 = v8[2];
      v40 = v39 + 1;
      if (v39 >= v8[3] >> 1)
      {
        sub_2542F0C90();
        v8 = v84;
      }

      v8[2] = v40;
      v41 = v8 + 4;
      v42 = &v8[2 * v39 + 4];
      *v42 = v9;
      v42[1] = v88;
      v90 = *a1;
      if (!*a1)
      {
        goto LABEL_127;
      }

      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          v44 = &v41[2 * v40 - 2];
          v45 = &v8[2 * v40];
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v46 = v8[4];
            v47 = v8[5];
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_69:
            if (v49)
            {
              goto LABEL_109;
            }

            v61 = *v45;
            v60 = v45[1];
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_112;
            }

            v65 = v44[1];
            v66 = v65 - *v44;
            if (__OFSUB__(v65, *v44))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v63, v66))
            {
              goto LABEL_117;
            }

            if (v63 + v66 >= v48)
            {
              if (v48 < v66)
              {
                v43 = v40 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v40 < 2)
          {
            goto LABEL_111;
          }

          v68 = *v45;
          v67 = v45[1];
          v56 = __OFSUB__(v67, v68);
          v63 = v67 - v68;
          v64 = v56;
LABEL_84:
          if (v64)
          {
            goto LABEL_114;
          }

          v70 = *v44;
          v69 = v44[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_116;
          }

          if (v71 < v63)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v43 - 1 >= v40)
          {
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
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
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v75 = &v41[2 * v43 - 2];
          v76 = *v75;
          v77 = &v41[2 * v43];
          v78 = v77[1];
          sub_254392338((*a3 + 16 * *v75), (*a3 + 16 * *v77), (*a3 + 16 * v78), v90);
          if (v5)
          {
            goto LABEL_102;
          }

          if (v78 < v76)
          {
            goto LABEL_104;
          }

          v79 = v8;
          v80 = v8[2];
          if (v43 > v80)
          {
            goto LABEL_105;
          }

          *v75 = v76;
          v75[1] = v78;
          if (v43 >= v80)
          {
            goto LABEL_106;
          }

          v40 = v80 - 1;
          memmove(&v41[2 * v43], v77 + 2, 16 * (v80 - 1 - v43));
          v79[2] = v80 - 1;
          v81 = v80 > 2;
          v8 = v79;
          if (!v81)
          {
            goto LABEL_98;
          }
        }

        v50 = &v41[2 * v40];
        v51 = *(v50 - 8);
        v52 = *(v50 - 7);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_107;
        }

        v55 = *(v50 - 6);
        v54 = *(v50 - 5);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_108;
        }

        v57 = v45[1];
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_110;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_113;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = v44[1];
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_118;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v88;
      if (v88 >= v6)
      {
        v92 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_128;
  }

  sub_25439220C(&v92, *a1, a3);
LABEL_102:
}

uint64_t sub_25439220C(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_2543924DC(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_254392338((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_254392338(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_2542F13D0(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (sub_2543A3608() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 16;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 16;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 16;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    *v7 = *v13;
    goto LABEL_17;
  }

  sub_2542F13D0(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_19:
  v14 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    v16 = *(v10 - 2) == *(v6 - 2) && *(v10 - 1) == *(v6 - 1);
    if (!v16 && (sub_2543A3608() & 1) != 0)
    {
      v12 = v5 + 16 == v6;
      v6 -= 16;
      if (!v12)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_19;
    }

    if (v10 != v5 + 16)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 16;
  }

LABEL_36:
  v17 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v17])
  {
    memmove(v6, v4, 16 * v17);
  }

  return 1;
}

char *sub_2543924F0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFC68, &qword_2543A7F48);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

uint64_t sub_2543925F0(const void *a1)
{
  v2 = sub_2543A1F38();
  v25 = *(v2 - 8);
  v3 = *(v25 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF638, &unk_2543B0DF0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v24 - v8;
  v10 = _s29AppleConnectSettingsMergeableVMa(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E0368, &qword_2543A9910);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v24 - v16;
  sub_25439331C();
  if (__swift_getEnumTagSinglePayload(v17, 1, v10) == 1)
  {
    return sub_2543A3708();
  }

  sub_254382EC4();
  sub_2543A3708();
  v19 = *v13;
  v20 = v13[1];
  sub_2543A28C8();
  if (v13[3])
  {
    v21 = v13[2];
    sub_2543A3708();
    sub_2543A28C8();
  }

  else
  {
    sub_2543A3708();
  }

  v22 = *(v10 + 24);
  sub_25439331C();
  if (__swift_getEnumTagSinglePayload(v9, 1, v2) == 1)
  {
    sub_2543A3708();
  }

  else
  {
    v23 = v25;
    (*(v25 + 32))(v5, v9, v2);
    sub_2543A3708();
    sub_25438F8C0(&qword_27F5E23B8, MEMORY[0x277CC9578]);
    sub_2543A2808();
    (*(v23 + 8))(v5, v2);
  }

  sub_25439294C(a1, *(v13 + *(v10 + 28)));
  return sub_25438704C(v13, _s29AppleConnectSettingsMergeableVMa);
}

uint64_t sub_25439294C(const void *a1, uint64_t a2)
{
  v41 = a1;
  v42 = sub_2543A2178();
  v3 = *(v42 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v42);
  v6 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E2AB8, &qword_2543B38D0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v36 - v12;
  v14 = a2 + 64;
  v15 = 1 << *(a2 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(a2 + 64);
  v18 = (v15 + 63) >> 6;
  v36[1] = v3 + 16;
  v43 = (v3 + 32);
  v38 = v3;
  v39 = a2;
  v40 = (v3 + 8);
  result = sub_2543A2768();
  v20 = 0;
  v21 = 0;
  v37 = v10;
  v36[0] = v13;
  while (1)
  {
    v44 = v20;
    if (!v17)
    {
      break;
    }

    v22 = v21;
LABEL_10:
    v23 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v24 = v23 | (v22 << 6);
    v25 = v38;
    v26 = *(*(v39 + 48) + 8 * v24);
    v27 = v42;
    (*(v38 + 16))(v6, *(v39 + 56) + *(v38 + 72) * v24, v42);
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E2AC0, &qword_2543B38D8);
    v29 = *(v28 + 48);
    v30 = v37;
    *v37 = v26;
    v31 = *(v25 + 32);
    v10 = v30;
    v31(&v30[v29], v6, v27);
    __swift_storeEnumTagSinglePayload(v10, 0, 1, v28);
    v13 = v36[0];
LABEL_11:
    sub_254390F54();
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E2AC0, &qword_2543B38D8);
    if (__swift_getEnumTagSinglePayload(v13, 1, v32) == 1)
    {

      return MEMORY[0x259C0A1D0](v44);
    }

    v33 = *v13;
    v34 = v42;
    (*v43)(v6, &v13[*(v32 + 48)], v42);
    memcpy(__dst, v41, sizeof(__dst));
    MEMORY[0x259C0A1D0](v33);
    sub_25438F8C0(&qword_27F5E2AD8, MEMORY[0x277CFB4B0]);
    sub_2543A2808();
    (*v40)(v6, v34);
    result = sub_2543A3728();
    v20 = result ^ v44;
  }

  while (1)
  {
    v22 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v22 >= v18)
    {
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E2AC0, &qword_2543B38D8);
      __swift_storeEnumTagSinglePayload(v10, 1, 1, v35);
      v17 = 0;
      goto LABEL_11;
    }

    v17 = *(v14 + 8 * v22);
    ++v21;
    if (v17)
    {
      v21 = v22;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_254392D54()
{
  result = qword_27F5E2AF8;
  if (!qword_27F5E2AF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5E2AF0, &qword_2543B38F0);
    sub_25438F8C0(&qword_27F5E2B00, MEMORY[0x277CFB4B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E2AF8);
  }

  return result;
}

unint64_t sub_254392E48()
{
  result = qword_27F5E2B10;
  if (!qword_27F5E2B10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5E2AF0, &qword_2543B38F0);
    sub_25438F8C0(&qword_27F5E2B18, MEMORY[0x277CFB4B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E2B10);
  }

  return result;
}

unint64_t sub_254392F04()
{
  result = qword_27F5E2B20;
  if (!qword_27F5E2B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E2B20);
  }

  return result;
}

uint64_t sub_254392F58(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_254392FA8()
{
  result = qword_27F5E2B38;
  if (!qword_27F5E2B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E2B38);
  }

  return result;
}

unint64_t sub_254393064()
{
  result = qword_27F5E2B48;
  if (!qword_27F5E2B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E2B48);
  }

  return result;
}

unint64_t sub_2543930B8()
{
  result = qword_27F5E2B50;
  if (!qword_27F5E2B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E2B50);
  }

  return result;
}

uint64_t sub_25439310C(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_254386874(a1);
}

uint64_t sub_25439313C()
{
  OUTLINED_FUNCTION_59_3();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_26(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_5_1();
  v7(v6);
  return v0;
}

uint64_t sub_254393194()
{
  OUTLINED_FUNCTION_59_3();
  v2 = v1(0);
  OUTLINED_FUNCTION_26(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_5_1();
  v6(v5);
  return v0;
}

unint64_t sub_254393254()
{
  result = qword_27F5E2B80;
  if (!qword_27F5E2B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E2B80);
  }

  return result;
}

uint64_t sub_2543932A8(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_25439331C()
{
  OUTLINED_FUNCTION_59_3();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_26(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_5_1();
  v7(v6);
  return v0;
}

uint64_t _s30DeviceDisplayMetaDataMergeableV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s30DeviceDisplayMetaDataMergeableV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x2543934D8);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

_BYTE *_s29AppleConnectSettingsMergeableV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x2543935DCLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *_s20ProfileInfoMergeableV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x2543936E0);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_25439372C()
{
  result = qword_27F5E2BB8;
  if (!qword_27F5E2BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E2BB8);
  }

  return result;
}

unint64_t sub_254393784()
{
  result = qword_27F5E2BC0;
  if (!qword_27F5E2BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E2BC0);
  }

  return result;
}

unint64_t sub_2543937DC()
{
  result = qword_27F5E2BC8;
  if (!qword_27F5E2BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E2BC8);
  }

  return result;
}

unint64_t sub_25439383C()
{
  result = qword_27F5E2BD0;
  if (!qword_27F5E2BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E2BD0);
  }

  return result;
}

unint64_t sub_254393894()
{
  result = qword_27F5E2BD8;
  if (!qword_27F5E2BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E2BD8);
  }

  return result;
}

unint64_t sub_2543938EC()
{
  result = qword_27F5E2BE0;
  if (!qword_27F5E2BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E2BE0);
  }

  return result;
}

unint64_t sub_254393944()
{
  result = qword_27F5E2BE8;
  if (!qword_27F5E2BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E2BE8);
  }

  return result;
}

unint64_t sub_25439399C()
{
  result = qword_27F5E2BF0;
  if (!qword_27F5E2BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E2BF0);
  }

  return result;
}

unint64_t sub_2543939F4()
{
  result = qword_27F5E2BF8;
  if (!qword_27F5E2BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E2BF8);
  }

  return result;
}

unint64_t sub_254393A90()
{
  result = qword_27F5E2C10;
  if (!qword_27F5E2C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E2C10);
  }

  return result;
}

unint64_t sub_254393AE8()
{
  result = qword_27F5E2C18;
  if (!qword_27F5E2C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E2C18);
  }

  return result;
}

unint64_t sub_254393B40()
{
  result = qword_27F5E2C20;
  if (!qword_27F5E2C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E2C20);
  }

  return result;
}

unint64_t sub_254393B98()
{
  result = qword_27F5E2C28;
  if (!qword_27F5E2C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E2C28);
  }

  return result;
}

unint64_t sub_254393BF0()
{
  result = qword_27F5E2C30;
  if (!qword_27F5E2C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E2C30);
  }

  return result;
}

unint64_t sub_254393C48()
{
  result = qword_27F5E2C38;
  if (!qword_27F5E2C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E2C38);
  }

  return result;
}

unint64_t sub_254393C9C()
{
  result = qword_27F5E2C50;
  if (!qword_27F5E2C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E2C50);
  }

  return result;
}

_BYTE *sub_254393CF4(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x254393DC0);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_254393DFC()
{
  result = qword_27F5E2C58;
  if (!qword_27F5E2C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E2C58);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_12_21()
{

  return sub_2543A3608();
}

uint64_t OUTLINED_FUNCTION_13_15@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return sub_25438E238(a1, a2);
}

uint64_t OUTLINED_FUNCTION_16_11()
{
  result = *(v0 + 16);
  v3 = *(v0 + 24);
  *(v1 - 75) = 2;
  return result;
}

uint64_t OUTLINED_FUNCTION_19_8()
{

  return sub_2543A3608();
}

uint64_t OUTLINED_FUNCTION_22_4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  return result;
}

void OUTLINED_FUNCTION_34_4()
{
  *(v0 + 120) = 0;
  *(v0 + 160) = 0;
  *(v0 + 168) = 0;
  *(v0 + 144) = 0;
  *(v0 + 152) = 0;
  *(v0 + 136) = 0;
}

uint64_t OUTLINED_FUNCTION_40_5()
{

  return sub_2543A3778();
}

uint64_t OUTLINED_FUNCTION_49_2()
{

  return sub_2543A3538();
}

void OUTLINED_FUNCTION_52_3(uint64_t a1@<X8>)
{
  v5 = *(v4 - 232);
  v6 = *(v4 - 224);
  *a1 = v3;
  *(a1 + 8) = v5;
  v7 = *(v4 - 216);
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v1;
  *(a1 + 33) = v2;
  *(a1 + 34) = *(v4 - 182);
  *(a1 + 38) = *(v4 - 178);
  v8 = *(v4 - 200);
  *(a1 + 40) = *(v4 - 208);
  *(a1 + 48) = v8;
}

uint64_t OUTLINED_FUNCTION_68_3()
{

  return sub_2543A3608();
}

uint64_t OUTLINED_FUNCTION_69_5@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

uint64_t OUTLINED_FUNCTION_73_3()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_74_2()
{

  return sub_25438E238(v0, v1);
}

uint64_t OUTLINED_FUNCTION_106_0()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_109_0()
{
}

uint64_t OUTLINED_FUNCTION_110_1(uint64_t a1, uint64_t a2)
{

  return sub_254303B4C(a1, a2);
}

void *OUTLINED_FUNCTION_111_1(void *a1)
{

  return memcpy(a1, v1, 0x48uLL);
}

__n128 OUTLINED_FUNCTION_116_1()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 48);
  return *(v0 + 64);
}

__n128 OUTLINED_FUNCTION_122_1()
{
  v1 = *(v0 - 136);
  *(v0 - 208) = *(v0 - 152);
  return *(v0 - 120);
}

void OUTLINED_FUNCTION_123_1()
{
  v2 = *v0;
  v3 = v0[1];

  JUMPOUT(0x259C093D0);
}

uint64_t OUTLINED_FUNCTION_124_1()
{

  return sub_2543A2188();
}

uint64_t OUTLINED_FUNCTION_125_0()
{

  return sub_25438E238(v0, 0);
}

void *OUTLINED_FUNCTION_126_1(void *a1)
{

  return memcpy(a1, (v1 + 32), 0x50uLL);
}

uint64_t OUTLINED_FUNCTION_127_1()
{
  v2 = *v0;
  v3 = v0[1];

  return sub_2543A2768();
}

void *OUTLINED_FUNCTION_128_1(void *a1)
{

  return memcpy(a1, (v1 + 504), 0x88uLL);
}

uint64_t OUTLINED_FUNCTION_129_0()
{

  return sub_2543A3708();
}

uint64_t OUTLINED_FUNCTION_130_1()
{

  return sub_2543A3708();
}

_OWORD *sub_25439471C(uint64_t a1, char a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_2542F50C4(a1, v15);
    v5 = *v2;
    swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    result = sub_254319AD8(v15, a2);
    *v2 = v13;
  }

  else
  {
    sub_2542F5064(a1, &unk_27F5DFA00, &unk_2543A76C0);
    v7 = *v2;
    v8 = sub_25438E144(a2);
    if (v9)
    {
      v10 = v8;
      v11 = *v3;
      swift_isUniquelyReferenced_nonNull_native();
      v14 = *v3;
      v12 = *(*v3 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E0D40, &qword_2543AC250);
      sub_2543A3368();
      sub_2542F50C4((*(v14 + 56) + 32 * v10), v15);
      sub_2543667D4();
      sub_2543A3388();
      *v3 = v14;
    }

    else
    {
      memset(v15, 0, sizeof(v15));
    }

    return sub_2542F5064(v15, &unk_27F5DFA00, &unk_2543A76C0);
  }

  return result;
}

uint64_t sub_254394864(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_2542DA8C0(a1, v9);
    v6 = *v3;
    swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_254319BFC(v9, a2, a3);

    *v3 = v8;
  }

  else
  {
    sub_2542F5064(a1, &qword_27F5E2C60, &qword_2543B4198);
    sub_2542D5A7C(v9);

    return sub_2542F5064(v9, &qword_27F5E2C60, &qword_2543B4198);
  }

  return result;
}

double sub_254394938@<D0>(char a1@<W0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_25438E144(a1), (v6 & 1) != 0))
  {
    v7 = *(a2 + 56) + 32 * v5;

    sub_2542D62F0(v7, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

double sub_25439499C@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_25438E1CC(), (v5 & 1) != 0))
  {
    v6 = *(a1 + 56) + 32 * v4;

    sub_2542D62F0(v6, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

double sub_254394A00@<D0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_25438E0D0(), (v5 & 1) != 0))
  {
    sub_2543004CC(*(a1 + 56) + 40 * v4, a2);
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_254394A5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_25438E0D0();
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = (*(a3 + 56) + 16 * v4);
  v7 = *v6;
  v8 = v6[1];

  return v7;
}

uint64_t sub_254394AB4()
{
  OUTLINED_FUNCTION_9_15();
  v1 = *(v0 + 16);
  return sub_2543A2768();
}

uint64_t sub_254394AE0()
{
  OUTLINED_FUNCTION_9_15();
  v1 = *(v0 + 24);
  return sub_2543A2768();
}

uint64_t sub_254394B0C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_2543A2768();
  return sub_254394B64(v4);
}

uint64_t sub_254394B38()
{
  OUTLINED_FUNCTION_9_15();
  v1 = *(v0 + 32);
  return sub_2543A2768();
}

uint64_t sub_254394B64(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

uint64_t RoutedRequestHandlerService.__allocating_init()()
{
  v0 = swift_allocObject();
  RoutedRequestHandlerService.init()();
  return v0;
}

uint64_t *RoutedRequestHandlerService.init()()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF548, &qword_2543B4150);
  v2 = MEMORY[0x277D84F90];
  v0[2] = sub_2543A2748();
  v4 = *(v1 + 80);
  OUTLINED_FUNCTION_0_42();
  swift_getExtendedExistentialTypeMetadata();
  v0[3] = sub_2543A2A88();
  v0[4] = v2;
  return v0;
}

uint64_t sub_254394CAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  sub_2543A3298();

  v32[0] = 0xD00000000000001FLL;
  v32[1] = 0x80000002543BA820;
  v8 = sub_2543A37B8();
  MEMORY[0x259C093D0](v8);

  v9 = *(v7 + 88);
  v30 = *(v7 + 80);
  type metadata accessor for RoutedRequestHandlerService();
  v10 = sub_2542DF684() & 1;
  v11._countAndFlagsBits = 0xD00000000000001FLL;
  v11._object = 0x80000002543BA820;
  Logging.ulog(_:extended:)(v11, v10);

  v29 = a3;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = *(AssociatedConformanceWitness + 32);
  v13(a2, AssociatedConformanceWitness);
  v14 = sub_254394AB4();
  sub_254394A00(v14, v32);

  v15 = v33;
  sub_2542F5064(v32, &qword_27F5E2C60, &qword_2543B4198);
  v16 = (v13)(a2, AssociatedConformanceWitness);
  v18 = v17;
  if (v15)
  {
    type metadata accessor for RoutedRequestHandlerService.Error();
    swift_getWitnessTable();
    swift_allocError();
    *v19 = v16;
    v19[1] = v18;
    return swift_willThrow();
  }

  else
  {
    v33 = v29;
    v34 = a4;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v32);
    v27 = *(*(v29 - 8) + 16);
    v27(boxed_opaque_existential_1, a1, v29);
    swift_beginAccess();
    sub_254394864(v32, v16, v18);
    swift_endAccess();
    v22 = *(a4 + 8);
    v33 = v29;
    v34 = v22;
    v23 = __swift_allocate_boxed_opaque_existential_1(v32);
    v27(v23, a1, v29);
    swift_beginAccess();
    v35 = v30;
    OUTLINED_FUNCTION_0_42();
    swift_getExtendedExistentialTypeMetadata();
    sub_2543A2B38();
    sub_2543A2AD8();
    swift_endAccess();
    swift_beginAccess();
    sub_254395FA4(sub_2542F12FC);
    v24 = *(v4[4] + 16);
    sub_254396018(v24, sub_2542F12FC);
    v25 = v4[4];
    *(v25 + 16) = v24 + 1;
    v26 = v25 + 16 * v24;
    *(v26 + 32) = a2;
    *(v26 + 40) = AssociatedConformanceWitness;
    v4[4] = v25;
    return swift_endAccess();
  }
}

uint64_t sub_25439505C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[34] = a5;
  v6[35] = v5;
  v6[32] = a3;
  v6[33] = a4;
  v6[30] = a1;
  v6[31] = a2;
  v6[36] = *v5;
  return OUTLINED_FUNCTION_1_3(sub_2543950A4);
}

uint64_t sub_2543950A4()
{
  *(v0 + 232) = *(v0 + 280);
  v1 = *(v0 + 288);
  v3 = *(v0 + 264);
  v2 = *(v0 + 272);
  v4 = *(v0 + 248);
  MEMORY[0x259C093D0](0xD000000000000016, 0x80000002543BA840);
  MEMORY[0x259C093D0](0x7473657571657220, 0xE90000000000003DLL);
  sub_2543A35C8();
  v6 = *(v1 + 80);
  v5 = *(v1 + 88);
  type metadata accessor for RoutedRequestHandlerService();
  v7 = sub_2542DF684() & 1;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  Logging.ulog(_:extended:)(v8, v7);
  v9 = (v0 + 56);

  (*(v2 + 32))(v3, v2);
  v10 = sub_254394AB4();
  sub_254394A00(v10, v0 + 56);

  if (*(v0 + 80))
  {
    v11 = *(v0 + 264);
    sub_2542DA8C0(v9, v0 + 16);
    sub_2543004CC(v0 + 16, v0 + 136);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF548, &qword_2543B4150);
    *(v0 + 216) = v11;
    *(v0 + 224) = v6;
    swift_getExtendedExistentialTypeMetadata();
    if (swift_dynamicCast())
    {
      sub_2542DA8C0((v0 + 176), v0 + 96);
      v12 = *(v0 + 120);
      v13 = *(v0 + 128);
      v14 = __swift_project_boxed_opaque_existential_0((v0 + 96), v12);
      v16 = swift_task_alloc();
      *(v0 + 296) = v16;
      *v16 = v0;
      v16[1] = sub_254395424;
      v17 = *(v0 + 248);
      v18 = *(v0 + 256);
      v19 = *(v0 + 240);

      return sub_254395B4C(v19, v17, v18, v14, v15, v12, v13);
    }

    v26 = *(v0 + 264);
    v27 = sub_2543A37B8();
    v29 = v28;
    sub_254396078();
    swift_allocError();
    *v30 = v27;
    *(v30 + 8) = v29;
    *(v30 + 16) = 1;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  }

  else
  {
    v21 = *(v0 + 264);
    sub_2542F5064(v9, &qword_27F5E2C60, &qword_2543B4198);
    v22 = sub_2543A37B8();
    v24 = v23;
    sub_254396078();
    swift_allocError();
    *v25 = v22;
    *(v25 + 8) = v24;
    *(v25 + 16) = 0;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_27();

  return v31();
}

uint64_t sub_254395424()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  v3 = *(v2 + 296);
  v4 = *v1;
  OUTLINED_FUNCTION_7();
  *v5 = v4;
  *(v6 + 304) = v0;

  if (v0)
  {
    v7 = sub_25439558C;
  }

  else
  {
    v7 = sub_254395528;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_254395528()
{
  OUTLINED_FUNCTION_28();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  OUTLINED_FUNCTION_27();

  return v1();
}

uint64_t sub_25439558C()
{
  OUTLINED_FUNCTION_28();
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  v1 = v0[38];
  OUTLINED_FUNCTION_27();

  return v2();
}

uint64_t sub_2543955F0(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v2[12] = *v1;
  return OUTLINED_FUNCTION_1_3(sub_254395630);
}

uint64_t sub_254395630()
{
  v1 = v0[12];
  v2 = v0[10];
  v0[7] = v0[11];
  MEMORY[0x259C093D0](0xD000000000000014, 0x80000002543B93E0);
  MEMORY[0x259C093D0](0x3D7265626D656D20, 0xE800000000000000);
  v3 = *(v1 + 80);
  sub_2543A35C8();
  v4 = *(v1 + 88);
  type metadata accessor for RoutedRequestHandlerService();
  v5 = sub_2542DF684() & 1;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  Logging.ulog(_:extended:)(v6, v5);

  v0[13] = sub_254394AE0();
  v0[9] = v3;
  OUTLINED_FUNCTION_0_42();
  v0[14] = swift_getExtendedExistentialTypeMetadata();
  v7 = sub_2543A2A48();
  v0[8] = v7;
  if (v7 == sub_2543A2AC8())
  {
    v8 = v0[13];

    OUTLINED_FUNCTION_27();

    return v9();
  }

  else
  {
    v12 = v0[13];
    v11 = v0[14];
    sub_2543A2AA8();
    OUTLINED_FUNCTION_6_14();
    v13 = v0[14];
    if (v3)
    {
      sub_2543004CC(v0[13] + 40 * v7 + 32, (v0 + 2));
      OUTLINED_FUNCTION_11_11();
      sub_2543A2B28();
      v14 = v0[6];
      __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
      OUTLINED_FUNCTION_6_27();
      v21 = v15 + *v15;
      v17 = *(v16 + 4);
      v18 = swift_task_alloc();
      v0[15] = v18;
      *v18 = v0;
      v19 = OUTLINED_FUNCTION_2_40(v18);

      return v20(v19);
    }

    else
    {
      OUTLINED_FUNCTION_11_11();
      result = sub_2543A32B8();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_2543958C0()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  v2 = *(v1 + 120);
  v3 = *v0;
  OUTLINED_FUNCTION_7();
  *v4 = v3;

  return MEMORY[0x2822009F8](sub_2543959AC, 0, 0);
}

uint64_t sub_2543959AC()
{
  v2 = v0[13];
  v3 = v0[14];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v4 = sub_2543A2AC8();
  v5 = v0[8];
  if (v5 == v4)
  {
    v6 = v0[13];

    OUTLINED_FUNCTION_27();

    return v7();
  }

  else
  {
    v10 = v0[13];
    v9 = v0[14];
    sub_2543A2AA8();
    OUTLINED_FUNCTION_6_14();
    v11 = v0[14];
    if (v1)
    {
      sub_2543004CC(v0[13] + 40 * v5 + 32, (v0 + 2));
      OUTLINED_FUNCTION_11_11();
      sub_2543A2B28();
      v12 = v0[6];
      __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
      OUTLINED_FUNCTION_6_27();
      v19 = v13 + *v13;
      v15 = *(v14 + 4);
      v16 = swift_task_alloc();
      v0[15] = v16;
      *v16 = v0;
      v17 = OUTLINED_FUNCTION_2_40();

      return v18(v17);
    }

    else
    {
      OUTLINED_FUNCTION_11_11();
      result = sub_2543A32B8();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_254395B4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a7 + 32);
  v15 = v7 + *v7;
  v8 = v7[1];
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_39(v9);
  *v10 = v11;
  v12 = OUTLINED_FUNCTION_4_22(v10);

  return v13(v12);
}

void *RoutedRequestHandlerService.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return v0;
}

uint64_t RoutedRequestHandlerService.__deallocating_deinit()
{
  RoutedRequestHandlerService.deinit();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_254395CFC()
{
  v2 = *(**v0 + 200);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2542DB160;

  return v6();
}

uint64_t sub_254395E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *v5;
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_2542DB160;

  return sub_25439505C(a1, a2, a3, a4, a5);
}

uint64_t sub_254395EDC(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2542D32CC;

  return sub_2543955F0(a1);
}

uint64_t sub_254395FA4(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t sub_254396018(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

unint64_t sub_254396078()
{
  result = qword_27F5E2C68[0];
  if (!qword_27F5E2C68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F5E2C68);
  }

  return result;
}

uint64_t sub_2543960CC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_254394B38();
  *a2 = result;
  return result;
}

__n128 sub_254396108(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t dispatch thunk of RoutedRequestHandlerService.activate()()
{
  OUTLINED_FUNCTION_19_3();
  v1 = *(v0 + 200);
  v7 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_39(v3);
  *v4 = v5;
  v4[1] = sub_2542DB160;

  return v7();
}

uint64_t dispatch thunk of RoutedRequestHandlerService.handleRequest<A>(_:from:)()
{
  OUTLINED_FUNCTION_19_3();
  v1 = *(v0 + 216);
  v9 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_39(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_4_22(v4);

  return v7(v6);
}

uint64_t dispatch thunk of RoutedRequestHandlerService.handleLostMember(_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_19_3();
  v3 = *(v2 + 224);
  v9 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_39(v5);
  *v6 = v7;
  v6[1] = sub_2542D32CC;

  return v9(a1);
}

uint64_t sub_254396534()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t OUTLINED_FUNCTION_6_27()
{
  result = v0 + 24;
  v2 = *(v0 + 24);
  return result;
}

uint64_t OUTLINED_FUNCTION_9_15()
{

  return swift_beginAccess();
}

id sub_254396674(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = &v4[OBJC_IVAR____TtC15HomePodSettings32TransportObservationUpdateObject_observationUpdate];
  v9[3] = a2;
  v9[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
  v11 = *(a2 - 8);
  (*(v11 + 16))(boxed_opaque_existential_1, a1, a2);
  v12 = (*(*(a3 + 8) + 32))(a2);
  v13 = &v4[OBJC_IVAR____TtC15HomePodSettings32TransportObservationUpdateObject_observationTypeIdentifier];
  *v13 = v12;
  v13[1] = v14;
  v17.receiver = v4;
  v17.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v17, sel_init);
  (*(v11 + 8))(a1, a2);
  return v15;
}

void sub_25439677C(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC15HomePodSettings32TransportObservationUpdateObject_observationUpdate + 32);
  __swift_project_boxed_opaque_existential_0((v1 + OBJC_IVAR____TtC15HomePodSettings32TransportObservationUpdateObject_observationUpdate), *(v1 + OBJC_IVAR____TtC15HomePodSettings32TransportObservationUpdateObject_observationUpdate + 24));
  v4 = *(*(v3 + 8) + 8);
  v5 = *(v4 + 8);
  v6 = *(v4 + 16);
  sub_25430D714();
  v7 = *(v1 + OBJC_IVAR____TtC15HomePodSettings32TransportObservationUpdateObject_observationTypeIdentifier);
  v8 = *(v1 + OBJC_IVAR____TtC15HomePodSettings32TransportObservationUpdateObject_observationTypeIdentifier + 8);
  v9 = sub_2543A2858();
  v10 = sub_2543A2858();
  [a1 encodeObject:v9 forKey:v10];
}

id sub_2543969D4(void *a1)
{
  ObjectType = swift_getObjectType();
  sub_25430CAE0();
  v3 = sub_2543A3088();
  if (v3)
  {
    v4 = v3;
    if (qword_27F5DF070 != -1)
    {
      swift_once();
    }

    v5 = sub_2543A2878();
    sub_254300A98(v5, v6, a1, 0x746176726573624FLL, 0xEB000000006E6F69, &v20);

    v8 = v21;
    v9 = v22;
    v10 = __swift_project_boxed_opaque_existential_0(&v20, v21);
    v11 = swift_getObjectType();
    v12 = *(*(v8 - 8) + 64);
    v13 = MEMORY[0x28223BE20](v11);
    v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v16 + 16))(v15, v10, v8, v13);
    v17 = sub_254396620(v15, v8, v9);

    swift_deallocPartialClassInstance();
    __swift_destroy_boxed_opaque_existential_0(&v20);
  }

  else
  {
    v7 = sub_2542DF684();
    static Logging.ulog(_:_:extended:)(90, 0xD00000000000002ELL, 0x80000002543BA990, v7 & 1, ObjectType, &off_28664CDC8);

    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v17;
}

uint64_t sub_254396E2C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15HomePodSettings29CoordinationObservationUpdate____lazy_storage___observationUpdate;
  swift_beginAccess();
  sub_2543973CC(v1 + v3, &v5);
  if (v6)
  {
    return sub_2542DA8C0(&v5, a1);
  }

  sub_254300D4C(&v5);
  sub_2543004CC(*(v1 + OBJC_IVAR____TtC15HomePodSettings29CoordinationObservationUpdate_observationUpdateObject) + OBJC_IVAR____TtC15HomePodSettings32TransportObservationUpdateObject_observationUpdate, a1);
  sub_2543004CC(a1, &v5);
  swift_beginAccess();
  sub_25439743C(&v5, v1 + v3);
  return swift_endAccess();
}

id sub_254396F50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = *(a2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](ObjectType);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = &v4[OBJC_IVAR____TtC15HomePodSettings29CoordinationObservationUpdate____lazy_storage___observationUpdate];
  type metadata accessor for TransportObservationUpdateObject();
  *v13 = 0u;
  *(v13 + 1) = 0u;
  *(v13 + 4) = 0;
  (*(v9 + 16))(v12, a1, a2);
  *&v4[OBJC_IVAR____TtC15HomePodSettings29CoordinationObservationUpdate_observationUpdateObject] = sub_254396620(v12, a2, a3);
  v16.receiver = v4;
  v16.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v16, sel_init);
  (*(v9 + 8))(a1, a2);
  return v14;
}

id sub_2543970B4(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC15HomePodSettings29CoordinationObservationUpdate____lazy_storage___observationUpdate];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  *&v1[OBJC_IVAR____TtC15HomePodSettings29CoordinationObservationUpdate_observationUpdateObject] = a1;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_init);
}

void sub_25439711C(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC15HomePodSettings29CoordinationObservationUpdate_observationUpdateObject);
  v4 = sub_2543A2858();
  [a1 encodeObject:v3 forKey:v4];
}

id sub_254397208(void *a1)
{
  ObjectType = swift_getObjectType();
  type metadata accessor for TransportObservationUpdateObject();
  v3 = sub_2543A3088();
  if (v3)
  {
    v4 = v3;
    v5 = objc_allocWithZone(ObjectType);
    v6 = sub_2543970B4(v4);

    swift_getObjectType();
    OUTLINED_FUNCTION_0_12();
  }

  else
  {
    static Logging.ulog(_:_:extended:)(90, 0xD000000000000035, 0x80000002543BAAF0, 0, ObjectType, &off_28664CDF0);

    swift_getObjectType();
    OUTLINED_FUNCTION_0_12();
    return 0;
  }

  return v6;
}

uint64_t sub_2543973CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E0318, &qword_2543A9580);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25439743C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E0318, &qword_2543A9580);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t static ObservationLifeCycleRequest.typeIdentifier.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(*(a2 + 8) + 32))();
  MEMORY[0x259C093D0](v2);

  return 0xD00000000000001CLL;
}

uint64_t ObservationLifeCycleRequest.action.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return sub_254364634(v2, v3, v4);
}

uint64_t sub_25439753C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2543A3608();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_2543975C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *(a3 + 24);
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_2543975CC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  return sub_2542E135C();
}

uint64_t sub_2543975D8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v2 = *(a2 + 24);
  return sub_2542E1334();
}

uint64_t sub_2543975E4(uint64_t a1, uint64_t a2)
{
  sub_2543A36E8();
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  sub_2542E1334();
  return sub_2543A3728();
}

uint64_t sub_254397628(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  return sub_2543975B0();
}

uint64_t sub_254397634@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_25439753C(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_254397668(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  return OUTLINED_FUNCTION_12_0();
}

uint64_t sub_25439768C@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  result = OUTLINED_FUNCTION_0_1();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2543976C0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_254397714(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t ObservationLifeCycleRequest.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v21[1] = *(a2 + 24);
  v21[2] = v4;
  type metadata accessor for ObservationLifeCycleRequest.CodingKeys();
  OUTLINED_FUNCTION_0_43();
  v21[0] = swift_getWitnessTable();
  v22 = sub_2543A3588();
  v5 = OUTLINED_FUNCTION_3(v22);
  v30 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = v21 - v9;
  v12 = *v2;
  v11 = *(v2 + 8);
  v13 = *(v2 + 16);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_254364634(v12, v11, v13);
  sub_2543A3778();
  v27 = v12;
  v28 = v11;
  v29 = v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = OUTLINED_FUNCTION_2_41();
  v17 = OUTLINED_FUNCTION_2_41();
  v18 = OUTLINED_FUNCTION_2_41();
  v23 = AssociatedTypeWitness;
  v24 = v16;
  v19 = v22;
  v25 = v17;
  v26 = v18;
  type metadata accessor for ObservationRequestAction();
  swift_getWitnessTable();
  sub_2543A3578();
  sub_254364670(v27, v28, v29);
  return (*(v30 + 8))(v10, v19);
}

__n128 sub_254397990@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  *a2 = *a1;
  a2[1].n128_u8[0] = v2;
  return result;
}

uint64_t ObservationLifeCycleRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for ObservationLifeCycleRequest.CodingKeys();
  OUTLINED_FUNCTION_0_43();
  swift_getWitnessTable();
  v14 = sub_2543A34F8();
  v4 = OUTLINED_FUNCTION_3(v14);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2543A3768();
  if (!v2)
  {
    swift_getAssociatedTypeWitness();
    OUTLINED_FUNCTION_1_37();
    OUTLINED_FUNCTION_1_37();
    OUTLINED_FUNCTION_1_37();
    type metadata accessor for ObservationRequestAction();
    swift_getWitnessTable();
    sub_2543A34D8();
    v8 = OUTLINED_FUNCTION_3_28();
    v9(v8);
    *a2 = v12;
    *(a2 + 16) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_254397BC4(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_254397C28(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_254397C64(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_254397CC4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  return ObservationLifeCycleRequest.init(from:)(a1, a3);
}

uint64_t sub_254397CFC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

_BYTE *sub_254397D5C(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x254397DF8);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_37()
{

  return swift_getAssociatedConformanceWitness();
}

uint64_t OUTLINED_FUNCTION_2_41()
{

  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_254397EE0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  OUTLINED_FUNCTION_5_6();
  v12 = v3 + *v3;
  v5 = *(v4 + 4);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_39(v6);
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_1_35(v7);

  return v10(v9);
}

uint64_t sub_254397FDC(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_2543980D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(a6 + 32);
  OUTLINED_FUNCTION_5_6();
  v20 = (v13 + *v13);
  v15 = *(v14 + 4);
  v16 = swift_task_alloc();
  v17 = OUTLINED_FUNCTION_39(v16);
  *v17 = v18;
  v17[1] = sub_2542FE220;

  return v20(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_254398214(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  OUTLINED_FUNCTION_5_6();
  v12 = v3 + *v3;
  v5 = *(v4 + 4);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_39(v6);
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_1_35(v7);

  return v10(v9);
}

uint64_t sub_254398310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 48);
  v12 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_39(v8);
  *v9 = v10;
  v9[1] = sub_2542DF754;

  return v12(a1, a2, a3);
}

uint64_t sub_254398488()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t sub_2543984B0()
{
  sub_254398488();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t dispatch thunk of MemberDiscovery.activate()(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  v9 = v3 + *v3;
  v4 = v3[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v6 = OUTLINED_FUNCTION_1_35(v5);

  return v7(v6);
}

uint64_t dispatch thunk of MemberDiscovery.deactivate()(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v9 = v3 + *v3;
  v4 = v3[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v6 = OUTLINED_FUNCTION_1_35(v5);

  return v7(v6);
}

uint64_t sub_254398734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  OUTLINED_FUNCTION_68_2();
  OUTLINED_FUNCTION_15_13();
  OUTLINED_FUNCTION_10_18();
  v17 = swift_task_alloc();
  OUTLINED_FUNCTION_0_44(v17);
  type metadata accessor for CoordinationTransportServer();
  OUTLINED_FUNCTION_6_28();
  OUTLINED_FUNCTION_16_12();
  *v17 = v18;
  v17[1] = sub_2543727FC;
  OUTLINED_FUNCTION_3_29();
  OUTLINED_FUNCTION_77_0();

  return sub_2543987E4(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12, a13, a14, a15, a16, a17);
}

uint64_t sub_2543987E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  OUTLINED_FUNCTION_55_2();
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_15_13();
  v19[13] = a17;
  v19[14] = v17;
  v19[11] = v20;
  v19[12] = v21;
  v19[9] = v22;
  v19[10] = v23;
  v19[7] = v24;
  v19[8] = v25;
  v19[6] = v26;
  v19[15] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_13_16();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_13_16();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_2_42();
  v27 = type metadata accessor for ObservationLifeCycleResponse.ObservationResult();
  v19[16] = v27;
  OUTLINED_FUNCTION_8(v27);
  v19[17] = v28;
  v30 = *(v29 + 64);
  v19[18] = OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_2_42();
  v31 = type metadata accessor for ObservationLifeCycleResponse();
  v19[19] = v31;
  OUTLINED_FUNCTION_8(v31);
  v19[20] = v32;
  v34 = *(v33 + 64);
  v19[21] = OUTLINED_FUNCTION_146();
  v19[22] = OUTLINED_FUNCTION_29_7();
  v19[23] = OUTLINED_FUNCTION_30_6();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19[24] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_8(AssociatedTypeWitness);
  v19[25] = v36;
  v38 = *(v37 + 64);
  v19[26] = OUTLINED_FUNCTION_146();
  v39 = *(v18 + 16);
  v19[27] = sub_2543A2B58();
  v19[28] = v40;
  OUTLINED_FUNCTION_52_2();

  return MEMORY[0x2822009F8](v41, v42, v43);
}

uint64_t sub_254398A08()
{
  v30 = v0;
  v1 = *(v0 + 200);
  v2 = *(v0 + 208);
  v3 = *(v0 + 192);
  v21 = *(v0 + 176);
  v22 = *(v0 + 184);
  v4 = *(v0 + 88);
  v25 = *(v0 + 104);
  v26 = *(v0 + 96);
  v5 = *(v0 + 80);
  v6 = *(v0 + 56);
  v23 = *(v0 + 64);
  *(v0 + 40) = *(v0 + 112);
  v28.n128_u64[0] = 0;
  v28.n128_u64[1] = 0xE000000000000000;
  sub_2543A3298();
  MEMORY[0x259C093D0](0xD000000000000045, 0x80000002543BABB0);
  MEMORY[0x259C093D0](0xD000000000000011, 0x80000002543BAB90);
  v7 = sub_2543A37B8();
  MEMORY[0x259C093D0](v7);

  v8 = OUTLINED_FUNCTION_15_6();
  MEMORY[0x259C093D0](v8, 0xEA00000000003D44);
  swift_checkMetadataState();
  sub_2543A32A8();
  sub_2543A35C8();
  (*(v1 + 8))(v2, v3);
  v9 = *(v26 + 8);
  sub_2542DF684();
  v10._countAndFlagsBits = OUTLINED_FUNCTION_60_0();
  Logging.ulog(_:extended:)(v10, v11);

  v28 = v23;
  v29 = 0;
  sub_254397990(&v28, &v27);
  v12 = v27;
  *(v0 + 232) = v27;
  OUTLINED_FUNCTION_18_11(v12.n128_i64[0]);
  v13 = *(v26 + 56);
  sub_2543A2768();
  sub_2543A2768();
  v24 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v0 + 248) = v15;
  type metadata accessor for ObservationLifeCycleRequest();
  OUTLINED_FUNCTION_8_21();
  *v15 = v0;
  v15[1] = sub_254398CE0;
  v16 = *(v0 + 168);
  v17 = *(v0 + 112);
  v18 = *(v0 + 96);
  v19 = *(v0 + 80);
  OUTLINED_FUNCTION_22_5();

  return v24();
}

uint64_t sub_254398CE0()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  v3 = v2;
  v4 = *(v2 + 248);
  v5 = *v1;
  OUTLINED_FUNCTION_7();
  *v6 = v5;
  *(v3 + 256) = v0;

  if (v0)
  {
    v7 = *(v3 + 216);
    v8 = *(v3 + 224);
    v9 = sub_254398F78;
  }

  else
  {
    sub_254364670(*(v3 + 232), *(v3 + 240), *(v3 + 33));
    v7 = *(v3 + 216);
    v8 = *(v3 + 224);
    v9 = sub_254398DF0;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_254398DF0()
{
  v1 = v0[18];
  v2 = v0[15];
  (*(v0[17] + 16))(v1, v0[21], v0[16]);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    v4 = v0[20];
    v3 = v0[21];
    v5 = v0[19];
    sub_254399B88();
    swift_allocError();
    *v6 = 0;
    swift_willThrow();
    v7 = *(v4 + 8);
    v8 = OUTLINED_FUNCTION_60_0();
    v9(v8);
    v10 = v0[26];
    v11 = v0[21];
    v12 = v0[18];
  }

  else
  {
    v14 = v0[26];
    v15 = v0[18];
    v16 = v0[15];
    v17 = v0[6];
    (*(v0[20] + 8))(v0[21], v0[19]);
    (*(*(v16 - 8) + 32))(v17, v15, v16);
  }

  OUTLINED_FUNCTION_27();

  return v13();
}

uint64_t sub_254398F78()
{
  sub_254364670(*(v0 + 232), *(v0 + 240), *(v0 + 33));
  v1 = *(v0 + 256);
  v2 = *(v0 + 208);
  v3 = *(v0 + 168);
  v4 = *(v0 + 144);

  OUTLINED_FUNCTION_27();

  return v5();
}

uint64_t sub_254399004()
{
  OUTLINED_FUNCTION_55_2();
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_9_16();
  v0 = swift_task_alloc();
  OUTLINED_FUNCTION_0_44(v0);
  type metadata accessor for CoordinationTransportServer();
  OUTLINED_FUNCTION_6_28();
  OUTLINED_FUNCTION_14_11();
  *v0 = v1;
  OUTLINED_FUNCTION_4_23();
  OUTLINED_FUNCTION_52_2();

  return sub_2543990B0();
}

uint64_t sub_2543990B0()
{
  OUTLINED_FUNCTION_55_2();
  OUTLINED_FUNCTION_89();
  v3 = v2;
  v1[12] = v4;
  v1[13] = v0;
  v1[10] = v5;
  v1[11] = v2;
  v1[8] = v6;
  v1[9] = v7;
  v1[6] = v8;
  v1[7] = v9;
  v1[14] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_13_16();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_13_16();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_2_42();
  v10 = type metadata accessor for ObservationLifeCycleResponse.ObservationResult();
  v1[15] = v10;
  OUTLINED_FUNCTION_8(v10);
  v1[16] = v11;
  v13 = *(v12 + 64);
  v1[17] = OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_2_42();
  v14 = type metadata accessor for ObservationLifeCycleResponse();
  v1[18] = v14;
  OUTLINED_FUNCTION_8(v14);
  v1[19] = v15;
  v17 = *(v16 + 64);
  v1[20] = OUTLINED_FUNCTION_146();
  v1[21] = OUTLINED_FUNCTION_29_7();
  v1[22] = OUTLINED_FUNCTION_30_6();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[23] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_8(AssociatedTypeWitness);
  v1[24] = v19;
  v21 = *(v20 + 64);
  v1[25] = OUTLINED_FUNCTION_146();
  v22 = *(v3 + 16);
  v1[26] = sub_2543A2B58();
  v1[27] = v23;
  OUTLINED_FUNCTION_52_2();

  return MEMORY[0x2822009F8](v24, v25, v26);
}

uint64_t sub_2543992D4()
{
  v31 = v0;
  v2 = v0[12].n128_u64[0];
  v1 = v0[12].n128_u64[1];
  v3 = v0[11].n128_u64[1];
  v4 = v0[10].n128_u64[1];
  v26 = v0[6].n128_u64[0];
  v27 = v0[5].n128_u64[1];
  v5 = v0[4].n128_u64[1];
  v25 = v0[5].n128_u64[0];
  v6 = v0[3].n128_u64[1];
  v22 = v0[11].n128_u64[0];
  v23 = v0[4].n128_u64[0];
  v7 = v0[3].n128_u64[0];
  v0[2].n128_u64[1] = v0[6].n128_u64[1];
  v29.n128_u64[0] = 0;
  v29.n128_u64[1] = 0xE000000000000000;
  sub_2543A3298();
  MEMORY[0x259C093D0](0xD00000000000002CLL, 0x80000002543BAB60);
  MEMORY[0x259C093D0](0xD000000000000011, 0x80000002543BAB90);
  v8 = sub_2543A37B8();
  MEMORY[0x259C093D0](v8);

  v9 = OUTLINED_FUNCTION_15_6();
  MEMORY[0x259C093D0](v9, 0xEA00000000003D44);
  swift_checkMetadataState();
  sub_2543A32A8();
  sub_2543A35C8();
  (*(v2 + 8))(v1, v3);
  v10 = *(v27 + 8);
  sub_2542DF684();
  v11._countAndFlagsBits = OUTLINED_FUNCTION_60_0();
  Logging.ulog(_:extended:)(v11, v12);

  v29 = v23;
  v30 = 1;
  sub_254397990(&v29, &v28);
  v13 = v28;
  v0[14] = v28;
  OUTLINED_FUNCTION_18_11(v13.n128_i64[0]);
  v14 = *(v27 + 56);
  sub_2543A2768();
  v24 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  v0[15].n128_u64[0] = v16;
  type metadata accessor for ObservationLifeCycleRequest();
  OUTLINED_FUNCTION_8_21();
  *v16 = v0;
  v16[1] = sub_2543995AC;
  v17 = v0[10].n128_u64[0];
  v18 = v0[6].n128_u64[1];
  v19 = v0[5].n128_u64[1];
  v20 = v0[4].n128_u64[1];
  OUTLINED_FUNCTION_22_5();

  return v24();
}

uint64_t sub_2543995AC()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  v3 = v2;
  v4 = *(v2 + 240);
  v5 = *v1;
  OUTLINED_FUNCTION_7();
  *v6 = v5;
  *(v3 + 248) = v0;

  if (v0)
  {
    v7 = *(v3 + 208);
    v8 = *(v3 + 216);
    v9 = sub_254399844;
  }

  else
  {
    sub_254364670(*(v3 + 224), *(v3 + 232), *(v3 + 33));
    v7 = *(v3 + 208);
    v8 = *(v3 + 216);
    v9 = sub_2543996BC;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_2543996BC()
{
  OUTLINED_FUNCTION_89();
  v1 = v0[17];
  v2 = v0[14];
  (*(v0[16] + 16))(v1, v0[20], v0[15]);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    v3 = v0[25];
    v4 = v0[17];
    (*(v0[19] + 8))(v0[20], v0[18]);
  }

  else
  {
    v7 = v0[19];
    v6 = v0[20];
    v9 = v0[17];
    v8 = v0[18];
    v10 = v0[14];
    sub_254399B88();
    swift_allocError();
    *v11 = 1;
    swift_willThrow();
    v12 = *(v7 + 8);
    v13 = OUTLINED_FUNCTION_60_0();
    v14(v13);
    (*(*(v10 - 8) + 8))(v9, v10);
    v15 = v0[25];
    v16 = v0[20];
    v17 = v0[17];
  }

  OUTLINED_FUNCTION_27();

  return v5();
}

uint64_t sub_254399844()
{
  sub_254364670(*(v0 + 224), *(v0 + 232), *(v0 + 33));
  v1 = *(v0 + 248);
  v2 = *(v0 + 200);
  v3 = *(v0 + 160);
  v4 = *(v0 + 136);

  OUTLINED_FUNCTION_27();

  return v5();
}

uint64_t sub_2543998D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  OUTLINED_FUNCTION_68_2();
  OUTLINED_FUNCTION_15_13();
  OUTLINED_FUNCTION_10_18();
  v17 = swift_task_alloc();
  OUTLINED_FUNCTION_0_44(v17);
  type metadata accessor for CoordinationTransportClient();
  OUTLINED_FUNCTION_7_20();
  OUTLINED_FUNCTION_16_12();
  *v17 = v18;
  v17[1] = sub_2543727FC;
  OUTLINED_FUNCTION_3_29();
  OUTLINED_FUNCTION_77_0();

  return sub_2543987E4(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12, a13, a14, a15, a16, a17);
}

uint64_t sub_254399980()
{
  OUTLINED_FUNCTION_55_2();
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_9_16();
  v0 = swift_task_alloc();
  OUTLINED_FUNCTION_0_44(v0);
  type metadata accessor for CoordinationTransportClient();
  OUTLINED_FUNCTION_7_20();
  OUTLINED_FUNCTION_14_11();
  *v0 = v1;
  OUTLINED_FUNCTION_4_23();
  OUTLINED_FUNCTION_52_2();

  return sub_2543990B0();
}

uint64_t sub_254399A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  OUTLINED_FUNCTION_68_2();
  OUTLINED_FUNCTION_10_18();
  v17 = swift_task_alloc();
  OUTLINED_FUNCTION_31_7(v17);
  OUTLINED_FUNCTION_5_19();
  OUTLINED_FUNCTION_16_12();
  *v17 = v18;
  v17[1] = sub_2542DB160;
  OUTLINED_FUNCTION_3_29();
  OUTLINED_FUNCTION_77_0();

  return sub_2543987E4(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12, a13, a14, a15, a16, a17);
}

uint64_t sub_254399AE0()
{
  OUTLINED_FUNCTION_55_2();
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_9_16();
  v0 = swift_task_alloc();
  OUTLINED_FUNCTION_31_7(v0);
  OUTLINED_FUNCTION_5_19();
  OUTLINED_FUNCTION_14_11();
  *v0 = v1;
  OUTLINED_FUNCTION_4_23();
  OUTLINED_FUNCTION_52_2();

  return sub_2543990B0();
}

unint64_t sub_254399B88()
{
  result = qword_27F5E2F10;
  if (!qword_27F5E2F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E2F10);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_44(uint64_t a1)
{
  *(v2 + 56) = a1;
  v3 = *(v1 + 112);
  v4 = *(v1 + 96);
  *(v2 + 16) = *(v1 + 80);
  *(v2 + 32) = v4;
  *(v2 + 48) = v3;
  return 0;
}

uint64_t OUTLINED_FUNCTION_5_19()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_6_28()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_7_20()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_8_21()
{

  return swift_getWitnessTable();
}

void OUTLINED_FUNCTION_18_11(uint64_t a1@<X8>)
{
  *(v3 + 33) = v2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v1;
  *(v3 + 32) = v2;
}

uint64_t OUTLINED_FUNCTION_29_7()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_30_6()
{

  return swift_getAssociatedConformanceWitness();
}

uint64_t OUTLINED_FUNCTION_31_7(uint64_t a1)
{
  *(v2 + 16) = a1;
  v4 = v1[10];
  v5 = v1[11];
  v6 = v1[12];

  return type metadata accessor for RapportTransport();
}

uint64_t sub_25439A004(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v81 = a2;
  v8 = sub_2543A3758();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78._countAndFlagsBits = &type metadata for SettingsObservationUpdate;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E0DB8, &unk_2543B4A50);
  countAndFlagsBits = sub_2543A2888();
  object = v14;
  v75._countAndFlagsBits = countAndFlagsBits;
  v75._object = v14;
  if (swift_isClassType())
  {
    v78._countAndFlagsBits = a1;
    LOBYTE(v78._object) = a2 & 1;
    *&v79 = a3;
    *(&v79 + 1) = a4;
    sub_2543180C0(a1, a2 & 1);
    sub_2543A2768();
    v16 = sub_2543A3628();
    swift_unknownObjectRelease();
    v78._countAndFlagsBits = 0;
    v78._object = 0xE000000000000000;
    MEMORY[0x259C093D0](32, 0xE100000000000000);
    v72 = v16;
    sub_2543A3358();
    MEMORY[0x259C093D0](v78._countAndFlagsBits, v78._object);

    object = v75._object;
    countAndFlagsBits = v75._countAndFlagsBits;
  }

  v78._countAndFlagsBits = 60;
  v78._object = 0xE100000000000000;
  MEMORY[0x259C093D0](countAndFlagsBits, object);

  sub_2543A2768();
  MEMORY[0x259C093D0](62, 0xE100000000000000);

  v17 = v78._object;
  v60 = v78._countAndFlagsBits;
  *(&v79 + 1) = &type metadata for SettingsObservationUpdate;
  v18 = swift_allocObject();
  v78._countAndFlagsBits = v18;
  v19 = v81;
  *(v18 + 16) = a1;
  *(v18 + 24) = v19;
  *(v18 + 32) = a3;
  *(v18 + 40) = a4;
  sub_2543180C0(a1, v19);
  sub_2543A2768();
  sub_2543A3738();
  sub_2543A3748();
  (*(v9 + 8))(v12, v8);
  sub_2543A3348();
  v20 = MEMORY[0x277D84F90];
  while (1)
  {
    sub_2543A3428();
    if (!*(&v80 + 1))
    {
      break;
    }

    v75 = v78;
    v76[0] = v79;
    v76[1] = v80;
    sub_25439C368(sub_25439DCA8, &v72);
    sub_2542DE3E4(&v75, &qword_27F5E1A60, &qword_2543AE860);
    v21 = v72;
    if (v72)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = *(v20 + 16);
        sub_2542F0F3C();
        v20 = v24;
      }

      v22 = *(v20 + 16);
      if (v22 >= *(v20 + 24) >> 1)
      {
        sub_2542F0F3C();
        v20 = v25;
      }

      *(v20 + 16) = v22 + 1;
      *(v20 + 8 * v22 + 32) = v21;
    }

    else
    {
    }
  }

  v58[1] = 0;

  v26 = MEMORY[0x277D84F90];
  v27 = sub_2543A2748();
  v28 = v27[2];
  if (v28)
  {
    v59 = v17;
    v77 = v26;
    sub_2542F15C8();
    v69 = v77;
    v31 = sub_254351CE8(v27);
    v32 = 0;
    v68 = (v27 + 8);
    v62 = v29;
    v61 = (v27 + 9);
    v65 = xmmword_2543A7DE0;
    v64 = v20;
    v63 = v28;
    while ((v31 & 0x8000000000000000) == 0 && v31 < 1 << *(v27 + 32))
    {
      v33 = v31 >> 6;
      if ((*&v68[8 * (v31 >> 6)] & (1 << v31)) == 0)
      {
        goto LABEL_35;
      }

      if (*(v27 + 9) != v29)
      {
        goto LABEL_36;
      }

      v67 = v29;
      v66 = v30;
      v34 = (v27[6] + 16 * v31);
      v36 = *v34;
      v35 = v34[1];
      sub_2542D62F0(v27[7] + 32 * v31, &v79);
      v75._countAndFlagsBits = v36;
      v75._object = v35;
      sub_2542F50C4(&v79, v76);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFC90, &unk_2543AE850);
      v37 = swift_allocObject();
      *(v37 + 16) = v65;
      v38 = v27;
      v27 = &unk_2543B4A10;
      sub_25439331C();
      v39 = v73;
      *(v37 + 32) = v72;
      *(v37 + 40) = v39;
      v70 = 0;
      v71 = 0xE000000000000000;
      sub_2543A2768();
      sub_2543A3358();
      v40 = v71;
      *(v37 + 48) = v70;
      *(v37 + 56) = v40;
      sub_2542DE3E4(&v75, &qword_27F5DFC80, &unk_2543B4A10);
      __swift_destroy_boxed_opaque_existential_0(v74);
      v41 = v69;
      v77 = v69;
      v42 = *(v69 + 16);
      if (v42 >= *(v69 + 24) >> 1)
      {
        sub_2542F15C8();
        v41 = v77;
      }

      *(v41 + 16) = v42 + 1;
      *(v41 + 8 * v42 + 32) = v37;
      v43 = 1 << v38[32];
      if (v31 >= v43)
      {
        goto LABEL_37;
      }

      v44 = *&v68[8 * v33];
      if ((v44 & (1 << v31)) == 0)
      {
        goto LABEL_38;
      }

      v27 = v38;
      v69 = v41;
      if (*(v38 + 9) != v67)
      {
        goto LABEL_39;
      }

      v45 = v44 & (-2 << (v31 & 0x3F));
      if (v45)
      {
        v43 = __clz(__rbit64(v45)) | v31 & 0x7FFFFFFFFFFFFFC0;
        v20 = v64;
        v46 = v63;
      }

      else
      {
        v47 = v33 << 6;
        v48 = v33 + 1;
        v49 = &v61[8 * v33];
        v20 = v64;
        v46 = v63;
        while (v48 < (v43 + 63) >> 6)
        {
          v51 = *v49++;
          v50 = v51;
          v47 += 64;
          ++v48;
          if (v51)
          {
            sub_254351BC8(v31, v67, v66 & 1);
            v43 = __clz(__rbit64(v50)) + v47;
            goto LABEL_30;
          }
        }

        sub_254351BC8(v31, v67, v66 & 1);
      }

LABEL_30:
      v30 = 0;
      ++v32;
      v31 = v43;
      v29 = v62;
      if (v32 == v46)
      {

        v17 = v59;
        v52 = v60;
        v53 = v69;
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);

    sub_2542DE3E4(&v75, &qword_27F5E1A60, &qword_2543AE860);

    __break(1u);
  }

  else
  {

    v53 = MEMORY[0x277D84F90];
    v52 = v60;
LABEL_33:
    v78._countAndFlagsBits = v20;
    sub_2542F1628(v53);
    v54 = v78._countAndFlagsBits;
    v78._countAndFlagsBits = v52;
    v78._object = v17;
    *&v79 = 0;
    *(&v79 + 1) = v54;
    *&v80 = 0;
    v55._countAndFlagsBits = 2128928;
    v55._object = 0xE300000000000000;
    v82.value = 0;
    v82.is_nil = 1;
    v56 = TableFormatter.Table.string(colSeparator:maxColWidth:)(v55, v82);

    swift_bridgeObjectRelease_n();

    v75 = v56;
    v72 = 10;
    v73 = 0xE100000000000000;
    v70 = 2105354;
    v71 = 0xE300000000000000;
    sub_254351B20();
    sub_254351B74();
    sub_2543A2FB8();

    return v78._countAndFlagsBits;
  }

  return result;
}

uint64_t sub_25439A858(char a1, uint64_t a2, unint64_t a3)
{
  v65 = sub_2543A3758();
  v6 = *(v65 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v65);
  v9 = v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74._countAndFlagsBits = &type metadata for AlarmOperationRequest;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E0DC0, &qword_2543AC2D8);
  countAndFlagsBits = sub_2543A2888();
  object = v11;
  v71._countAndFlagsBits = countAndFlagsBits;
  v71._object = v11;
  if (swift_isClassType())
  {
    LOBYTE(v74._countAndFlagsBits) = a1;
    v74._object = a2;
    *&v75 = a3;
    sub_2542D61B4(a2, a3);
    v13 = sub_2543A3628();
    swift_unknownObjectRelease();
    v74._countAndFlagsBits = 0;
    v74._object = 0xE000000000000000;
    MEMORY[0x259C093D0](32, 0xE100000000000000);
    v68 = v13;
    sub_2543A3358();
    MEMORY[0x259C093D0](v74._countAndFlagsBits, v74._object);

    object = v71._object;
    countAndFlagsBits = v71._countAndFlagsBits;
  }

  v74._countAndFlagsBits = 60;
  v74._object = 0xE100000000000000;
  MEMORY[0x259C093D0](countAndFlagsBits, object);

  sub_2543A2768();
  MEMORY[0x259C093D0](62, 0xE100000000000000);

  v14 = v74._object;
  v56 = v74._countAndFlagsBits;
  *&v75 = a3;
  *(&v75 + 1) = &type metadata for AlarmOperationRequest;
  LOBYTE(v74._countAndFlagsBits) = a1;
  v74._object = a2;
  sub_2542D61B4(a2, a3);
  sub_2543A3738();
  sub_2543A3748();
  (*(v6 + 8))(v9, v65);
  sub_2543A3348();
  v65 = MEMORY[0x277D84F90];
  while (1)
  {
    sub_2543A3428();
    if (!*(&v76 + 1))
    {
      break;
    }

    v71 = v74;
    v72[0] = v75;
    v72[1] = v76;
    sub_25439C368(sub_25439DD30, &v68);
    sub_2542DE3E4(&v71, &qword_27F5E1A60, &qword_2543AE860);
    v15 = v68;
    if (v68)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = *(v65 + 16);
        sub_2542F0F3C();
        v65 = v19;
      }

      v16 = *(v65 + 16);
      if (v16 >= *(v65 + 24) >> 1)
      {
        sub_2542F0F3C();
        v65 = v20;
      }

      v17 = v65;
      *(v65 + 16) = v16 + 1;
      *(v17 + 8 * v16 + 32) = v15;
    }

    else
    {
    }
  }

  v54[1] = 0;

  v21 = MEMORY[0x277D84F90];
  v22 = sub_2543A2748();
  v23 = v22[2];
  if (v23)
  {
    v55 = v14;
    v73 = v21;
    sub_2542F15C8();
    v64 = v73;
    v26 = sub_254351CE8(v22);
    v27 = 0;
    v28 = (v22 + 8);
    v58 = v24;
    v57 = (v22 + 9);
    v61 = xmmword_2543A7DE0;
    v59 = v23;
    v60 = (v22 + 8);
    while ((v26 & 0x8000000000000000) == 0 && v26 < 1 << *(v22 + 32))
    {
      v29 = v26 >> 6;
      if ((*&v28[8 * (v26 >> 6)] & (1 << v26)) == 0)
      {
        goto LABEL_35;
      }

      if (*(v22 + 9) != v24)
      {
        goto LABEL_36;
      }

      v63 = v24;
      v62 = v25;
      v30 = (v22[6] + 16 * v26);
      v32 = *v30;
      v31 = v30[1];
      sub_2542D62F0(v22[7] + 32 * v26, &v75);
      v71._countAndFlagsBits = v32;
      v71._object = v31;
      sub_2542F50C4(&v75, v72);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFC90, &unk_2543AE850);
      v33 = swift_allocObject();
      *(v33 + 16) = v61;
      v34 = v22;
      v22 = &unk_2543B4A10;
      sub_25439331C();
      v35 = v69;
      *(v33 + 32) = v68;
      *(v33 + 40) = v35;
      v66 = 0;
      v67 = 0xE000000000000000;
      sub_2543A2768();
      sub_2543A3358();
      v36 = v67;
      *(v33 + 48) = v66;
      *(v33 + 56) = v36;
      sub_2542DE3E4(&v71, &qword_27F5DFC80, &unk_2543B4A10);
      __swift_destroy_boxed_opaque_existential_0(v70);
      v37 = v64;
      v73 = v64;
      v38 = *(v64 + 16);
      if (v38 >= *(v64 + 24) >> 1)
      {
        sub_2542F15C8();
        v37 = v73;
      }

      *(v37 + 16) = v38 + 1;
      *(v37 + 8 * v38 + 32) = v33;
      v39 = 1 << v34[32];
      if (v26 >= v39)
      {
        goto LABEL_37;
      }

      v28 = v60;
      v40 = *&v60[8 * v29];
      if ((v40 & (1 << v26)) == 0)
      {
        goto LABEL_38;
      }

      v22 = v34;
      v64 = v37;
      if (*(v34 + 9) != v63)
      {
        goto LABEL_39;
      }

      v41 = v40 & (-2 << (v26 & 0x3F));
      if (v41)
      {
        v39 = __clz(__rbit64(v41)) | v26 & 0x7FFFFFFFFFFFFFC0;
        v42 = v59;
      }

      else
      {
        v43 = v29 << 6;
        v44 = v29 + 1;
        v45 = &v57[8 * v29];
        v42 = v59;
        while (v44 < (v39 + 63) >> 6)
        {
          v47 = *v45++;
          v46 = v47;
          v43 += 64;
          ++v44;
          if (v47)
          {
            sub_254351BC8(v26, v63, v62 & 1);
            v39 = __clz(__rbit64(v46)) + v43;
            goto LABEL_30;
          }
        }

        sub_254351BC8(v26, v63, v62 & 1);
      }

LABEL_30:
      v25 = 0;
      ++v27;
      v26 = v39;
      v24 = v58;
      if (v27 == v42)
      {

        v14 = v55;
        v48 = v56;
        v49 = v64;
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);

    sub_2542DE3E4(&v71, &qword_27F5E1A60, &qword_2543AE860);

    __break(1u);
  }

  else
  {

    v49 = MEMORY[0x277D84F90];
    v48 = v56;
LABEL_33:
    v74._countAndFlagsBits = v65;
    sub_2542F1628(v49);
    v50 = v74._countAndFlagsBits;
    v74._countAndFlagsBits = v48;
    v74._object = v14;
    *&v75 = 0;
    *(&v75 + 1) = v50;
    *&v76 = 0;
    v51._countAndFlagsBits = 2128928;
    v51._object = 0xE300000000000000;
    v77.value = 0;
    v77.is_nil = 1;
    v52 = TableFormatter.Table.string(colSeparator:maxColWidth:)(v51, v77);

    swift_bridgeObjectRelease_n();

    v71 = v52;
    v68 = 10;
    v69 = 0xE100000000000000;
    v66 = 2105354;
    v67 = 0xE300000000000000;
    sub_254351B20();
    sub_254351B74();
    sub_2543A2FB8();

    return v74._countAndFlagsBits;
  }

  return result;
}

uint64_t sub_25439B098(uint64_t a1, unint64_t a2)
{
  v4 = sub_2543A3758();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v70 = &type metadata for AlarmOperationResponse;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E0DC8, &qword_2543B4A60);
  v9 = sub_2543A2888();
  v11 = v10;
  *&v70 = v9;
  *(&v70 + 1) = v10;
  if (swift_isClassType())
  {
    v67._countAndFlagsBits = a1;
    v67._object = a2;
    sub_2542D61B4(a1, a2);
    v12 = sub_2543A3628();
    swift_unknownObjectRelease();
    v67._countAndFlagsBits = 0;
    v67._object = 0xE000000000000000;
    MEMORY[0x259C093D0](32, 0xE100000000000000);
    v64 = v12;
    sub_2543A3358();
    MEMORY[0x259C093D0](v67._countAndFlagsBits, v67._object);

    v11 = *(&v70 + 1);
    v9 = v70;
  }

  v67._countAndFlagsBits = 60;
  v67._object = 0xE100000000000000;
  MEMORY[0x259C093D0](v9, v11);

  sub_2543A2768();
  MEMORY[0x259C093D0](62, 0xE100000000000000);

  v52 = v67;
  *(&v71 + 1) = &type metadata for AlarmOperationResponse;
  *&v70 = a1;
  *(&v70 + 1) = a2;
  sub_2542D61B4(a1, a2);
  sub_2543A3738();
  sub_2543A3748();
  (*(v5 + 8))(v8, v4);
  sub_2543A3348();
  v13 = 0;
  v14 = MEMORY[0x277D84F90];
  while (1)
  {
    sub_2543A3428();
    if (!*(&v72 + 1))
    {
      break;
    }

    v67 = v70;
    v68[0] = v71;
    v68[1] = v72;
    sub_25439C368(sub_25439DDB8, &v64);
    sub_2542DE3E4(&v67, &qword_27F5E1A60, &qword_2543AE860);
    v15 = v64;
    if (v64)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = *(v14 + 16);
        sub_2542F0F3C();
        v14 = v18;
      }

      v16 = *(v14 + 16);
      if (v16 >= *(v14 + 24) >> 1)
      {
        sub_2542F0F3C();
        v14 = v19;
      }

      *(v14 + 16) = v16 + 1;
      *(v14 + 8 * v16 + 32) = v15;
      v13 = 0;
    }

    else
    {
    }
  }

  v51[1] = 0;

  v20 = MEMORY[0x277D84F90];
  v21 = sub_2543A2748();
  v22 = *(v21 + 16);
  if (v22)
  {
    v69 = v20;
    sub_2542F15C8();
    v61 = v69;
    v25 = sub_254351CE8(v21);
    v26 = 0;
    v60 = v21 + 64;
    v54 = v23;
    v53 = v21 + 72;
    v57 = xmmword_2543A7DE0;
    v56 = v14;
    v55 = v22;
    while ((v25 & 0x8000000000000000) == 0 && v25 < 1 << *(v21 + 32))
    {
      v27 = v25 >> 6;
      if ((*(v60 + 8 * (v25 >> 6)) & (1 << v25)) == 0)
      {
        goto LABEL_35;
      }

      if (*(v21 + 36) != v23)
      {
        goto LABEL_36;
      }

      v59 = v23;
      v58 = v24;
      v28 = (*(v21 + 48) + 16 * v25);
      v30 = *v28;
      v29 = v28[1];
      sub_2542D62F0(*(v21 + 56) + 32 * v25, &v71);
      v67._countAndFlagsBits = v30;
      v67._object = v29;
      sub_2542F50C4(&v71, v68);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFC90, &unk_2543AE850);
      v31 = swift_allocObject();
      *(v31 + 16) = v57;
      v13 = &unk_2543B4A10;
      sub_25439331C();
      v32 = v65;
      *(v31 + 32) = v64;
      *(v31 + 40) = v32;
      v62 = 0;
      v63 = 0xE000000000000000;
      sub_2543A2768();
      sub_2543A3358();
      v33 = v63;
      *(v31 + 48) = v62;
      *(v31 + 56) = v33;
      sub_2542DE3E4(&v67, &qword_27F5DFC80, &unk_2543B4A10);
      __swift_destroy_boxed_opaque_existential_0(v66);
      v34 = v61;
      v69 = v61;
      v35 = *(v61 + 16);
      if (v35 >= *(v61 + 24) >> 1)
      {
        sub_2542F15C8();
        v34 = v69;
      }

      *(v34 + 16) = v35 + 1;
      *(v34 + 8 * v35 + 32) = v31;
      v36 = 1 << *(v21 + 32);
      if (v25 >= v36)
      {
        goto LABEL_37;
      }

      v37 = *(v60 + 8 * v27);
      if ((v37 & (1 << v25)) == 0)
      {
        goto LABEL_38;
      }

      v61 = v34;
      if (*(v21 + 36) != v59)
      {
        goto LABEL_39;
      }

      v38 = v37 & (-2 << (v25 & 0x3F));
      if (v38)
      {
        v36 = __clz(__rbit64(v38)) | v25 & 0x7FFFFFFFFFFFFFC0;
        v14 = v56;
        v39 = v55;
      }

      else
      {
        v40 = v27 << 6;
        v41 = v27 + 1;
        v42 = (v53 + 8 * v27);
        v14 = v56;
        v39 = v55;
        while (v41 < (v36 + 63) >> 6)
        {
          v44 = *v42++;
          v43 = v44;
          v40 += 64;
          ++v41;
          if (v44)
          {
            sub_254351BC8(v25, v59, v58 & 1);
            v36 = __clz(__rbit64(v43)) + v40;
            goto LABEL_30;
          }
        }

        sub_254351BC8(v25, v59, v58 & 1);
      }

LABEL_30:
      v24 = 0;
      ++v26;
      v25 = v36;
      v23 = v54;
      if (v26 == v39)
      {

        object = v52._object;
        v46 = v61;
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);

    sub_2542DE3E4(&v67, &qword_27F5E1A60, &qword_2543AE860);

    __break(1u);
  }

  else
  {

    v46 = MEMORY[0x277D84F90];
    object = v52._object;
LABEL_33:
    *&v70 = v14;
    sub_2542F1628(v46);
    v47 = v70;
    *&v70 = v52._countAndFlagsBits;
    *(&v70 + 1) = object;
    *&v71 = 0;
    *(&v71 + 1) = v47;
    *&v72 = 0;
    v48._countAndFlagsBits = 2128928;
    v48._object = 0xE300000000000000;
    v73.value = 0;
    v73.is_nil = 1;
    v49 = TableFormatter.Table.string(colSeparator:maxColWidth:)(v48, v73);

    swift_bridgeObjectRelease_n();

    v67 = v49;
    v64 = 10;
    v65 = 0xE100000000000000;
    v62 = 2105354;
    v63 = 0xE300000000000000;
    sub_254351B20();
    sub_254351B74();
    sub_2543A2FB8();

    return v70;
  }

  return result;
}

uint64_t sub_25439B8A4(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, uint64_t *a4)
{
  v7 = sub_2543A3758();
  v8 = OUTLINED_FUNCTION_3(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_9();
  v15 = v14 - v13;
  v16 = a2(0);
  OUTLINED_FUNCTION_26(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  *&v54[0] = sub_2543A2888();
  *(&v54[0] + 1) = v20;
  if (dynamic_cast_existential_0_class_conditional(v16))
  {
    sub_25439DAE0();
    OUTLINED_FUNCTION_45_3();
    v21 = sub_2543A3628();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_25_9();
    v51 = v21;
    sub_2543A3358();
    MEMORY[0x259C093D0](*&v53[0], *(&v53[0] + 1));
  }

  OUTLINED_FUNCTION_28_6();
  MEMORY[0x259C093D0]();

  sub_2543A2768();
  MEMORY[0x259C093D0](62, 0xE100000000000000);

  OUTLINED_FUNCTION_16_13();
  __swift_allocate_boxed_opaque_existential_1(v54);
  sub_25439DAE0();
  sub_2543A3738();
  v22 = sub_2543A3748();
  (*(v10 + 8))(v15, v7);
  v50[14] = v22;
  sub_2543A3348();
  v23 = 0;
  v24 = MEMORY[0x277D84F90];
  while (1)
  {
    sub_2543A3428();
    if (!v55.n128_u64[1])
    {
      break;
    }

    v53[0] = v54[0];
    v53[1] = v54[1];
    OUTLINED_FUNCTION_36_6(v55);
    sub_2542DE3E4(v53, &qword_27F5E1A60, &qword_2543AE860);
    if (v51)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_24_10();
        v24 = v26;
      }

      v25 = *(v24 + 16);
      if (v25 >= *(v24 + 24) >> 1)
      {
        sub_2542F0F3C();
        v24 = v27;
      }

      *(v24 + 16) = v25 + 1;
      *(v24 + 8 * v25 + 32) = v51;
      v23 = 0;
    }

    else
    {
    }
  }

  OUTLINED_FUNCTION_33_6();

  v28 = sub_2543A2748();
  if (*(v28 + 16))
  {
    OUTLINED_FUNCTION_15_14();
    v29 = OUTLINED_FUNCTION_37_6();
    OUTLINED_FUNCTION_5_20(v29, v30);
    OUTLINED_FUNCTION_8_22(xmmword_2543A7DE0);
    while (!v50 && v54 < v31 << *(v28 + 32))
    {
      OUTLINED_FUNCTION_30_7();
      if (v35)
      {
        goto LABEL_37;
      }

      if (*(v28 + 36) != v33)
      {
        goto LABEL_38;
      }

      OUTLINED_FUNCTION_6_29(v32, v33, v34);
      OUTLINED_FUNCTION_35_8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFC90, &unk_2543AE850);
      v36 = swift_allocObject();
      OUTLINED_FUNCTION_17_10(v36);
      v37 = &qword_27F5DFC80;
      v23 = &unk_2543B4A10;
      sub_25439331C();
      OUTLINED_FUNCTION_14_13();
      sub_2543A3358();
      OUTLINED_FUNCTION_13_17();
      __swift_destroy_boxed_opaque_existential_0(v52);
      OUTLINED_FUNCTION_20_11();
      if (v38)
      {
        sub_2542F15C8();
      }

      OUTLINED_FUNCTION_11_17();
      if (v39 == v40)
      {
        goto LABEL_39;
      }

      OUTLINED_FUNCTION_23_7();
      if (v35)
      {
        goto LABEL_40;
      }

      OUTLINED_FUNCTION_19_9();
      if (!v35)
      {
        goto LABEL_41;
      }

      OUTLINED_FUNCTION_29_8();
      if (v35)
      {
        OUTLINED_FUNCTION_4_24();
        do
        {
          if (v44 >= v43)
          {
            break;
          }

          v46 = *v45++;
          v37 += 8;
          ++v44;
        }

        while (!v46);
        OUTLINED_FUNCTION_38_3(v41, v42);
      }

      else
      {
        OUTLINED_FUNCTION_18_12();
      }

      OUTLINED_FUNCTION_9_17();
      if (v35)
      {

        v47 = OUTLINED_FUNCTION_33_6();
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);

    sub_2542DE3E4(v53, &qword_27F5E1A60, &qword_2543AE860);

    __break(1u);
  }

  else
  {

    v47 = MEMORY[0x277D84F90];
LABEL_35:
    *&v54[0] = v24;
    v48 = sub_2542F1628(v47);
    OUTLINED_FUNCTION_3_30(v48);

    swift_bridgeObjectRelease_n();

    OUTLINED_FUNCTION_7_21();
    v50[0] = sub_254351B74();
    v50[1] = MEMORY[0x277D835C8];
    OUTLINED_FUNCTION_12_22();

    return *&v54[0];
  }

  return result;
}

uint64_t sub_25439BE10(uint64_t a1, char a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(uint64_t))
{
  v51 = sub_2543A3758();
  v11 = OUTLINED_FUNCTION_3(v51);
  v50 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_9();
  v17 = v16 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v18 = sub_2543A2888();
  v20 = v19;
  *&v55 = v18;
  *(&v55 + 1) = v19;
  if (swift_isClassType())
  {
    *&v54[0] = a1;
    BYTE8(v54[0]) = a2 & 1;
    a6(a1);
    v21 = sub_2543A3628();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_25_9();
    v52 = v21;
    sub_2543A3358();
    MEMORY[0x259C093D0](a1, *(&v54[0] + 1));

    v20 = *(&v55 + 1);
    v18 = v55;
  }

  OUTLINED_FUNCTION_28_6();
  MEMORY[0x259C093D0](v18, v20);

  v22 = *(&v54[0] + 1);
  sub_2543A2768();
  MEMORY[0x259C093D0](62, 0xE100000000000000);

  OUTLINED_FUNCTION_16_13();
  *&v55 = a1;
  BYTE8(v55) = a2 & 1;
  a6(a1);
  sub_2543A3738();
  sub_2543A3748();
  (*(v50 + 8))(v17, v51);
  sub_2543A3348();
  v23 = 0;
  v24 = MEMORY[0x277D84F90];
  while (1)
  {
    sub_2543A3428();
    if (!v57.n128_u64[1])
    {
      break;
    }

    v54[0] = v55;
    v54[1] = v56;
    OUTLINED_FUNCTION_36_6(v57);
    sub_2542DE3E4(v54, &qword_27F5E1A60, &qword_2543AE860);
    v22 = v52;
    if (v52)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_24_10();
        v24 = v26;
      }

      v25 = *(v24 + 16);
      if (v25 >= *(v24 + 24) >> 1)
      {
        sub_2542F0F3C();
        v24 = v27;
      }

      *(v24 + 16) = v25 + 1;
      *(v24 + 8 * v25 + 32) = v52;
      v23 = 0;
    }

    else
    {
    }
  }

  OUTLINED_FUNCTION_33_6();

  v28 = sub_2543A2748();
  if (*(v28 + 16))
  {
    OUTLINED_FUNCTION_15_14();
    v29 = OUTLINED_FUNCTION_37_6();
    OUTLINED_FUNCTION_5_20(v29, v30);
    OUTLINED_FUNCTION_8_22(xmmword_2543A7DE0);
    while ((v22 & 0x8000000000000000) == 0 && v22 < v31 << *(v28 + 32))
    {
      OUTLINED_FUNCTION_30_7();
      if (v35)
      {
        goto LABEL_37;
      }

      if (*(v28 + 36) != v33)
      {
        goto LABEL_38;
      }

      OUTLINED_FUNCTION_6_29(v32, v33, v34);
      OUTLINED_FUNCTION_35_8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFC90, &unk_2543AE850);
      v36 = swift_allocObject();
      OUTLINED_FUNCTION_17_10(v36);
      v37 = &unk_27F5DFC80;
      v23 = &unk_2543B4A10;
      sub_25439331C();
      OUTLINED_FUNCTION_14_13();
      sub_2543A3358();
      OUTLINED_FUNCTION_13_17();
      __swift_destroy_boxed_opaque_existential_0(v53);
      OUTLINED_FUNCTION_20_11();
      if (v38)
      {
        sub_2542F15C8();
      }

      OUTLINED_FUNCTION_11_17();
      if (v39 == v40)
      {
        goto LABEL_39;
      }

      OUTLINED_FUNCTION_23_7();
      if (v35)
      {
        goto LABEL_40;
      }

      OUTLINED_FUNCTION_19_9();
      if (!v35)
      {
        goto LABEL_41;
      }

      OUTLINED_FUNCTION_29_8();
      if (v35)
      {
        OUTLINED_FUNCTION_4_24();
        do
        {
          if (v44 >= v43)
          {
            break;
          }

          v46 = *v45++;
          v37 += 64;
          ++v44;
        }

        while (!v46);
        OUTLINED_FUNCTION_38_3(v41, v42);
      }

      else
      {
        OUTLINED_FUNCTION_18_12();
      }

      OUTLINED_FUNCTION_9_17();
      if (v35)
      {

        v47 = OUTLINED_FUNCTION_33_6();
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);

    sub_2542DE3E4(v54, &qword_27F5E1A60, &qword_2543AE860);

    __break(1u);
  }

  else
  {

    v47 = MEMORY[0x277D84F90];
LABEL_35:
    *&v55 = v24;
    v48 = sub_2542F1628(v47);
    OUTLINED_FUNCTION_3_30(v48);

    swift_bridgeObjectRelease_n();

    OUTLINED_FUNCTION_7_21();
    sub_254351B74();
    OUTLINED_FUNCTION_12_22();

    return v55;
  }

  return result;
}

double sub_25439C368@<D0>(void (*a1)(char *, uint64_t)@<X1>, uint64_t *a2@<X8>)
{
  sub_25439331C();
  if (*(&v38 + 1))
  {
    v32 = v38;
    v29[0] = 0xD000000000000012;
    v29[1] = 0x80000002543B9B00;
    sub_254351B74();
    sub_2543A2EE8();

    __swift_destroy_boxed_opaque_existential_0(v39);
    v4 = MEMORY[0x259C09390](v34, *(&v34 + 1), v35, v36);
    v6 = v5;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v39);
    v6 = 0xE100000000000000;
    v4 = 63;
  }

  sub_2543A2898();
  v7 = sub_2543A2918();

  if (v7)
  {
    OUTLINED_FUNCTION_26_5();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E1A78, &unk_2543B4A30);
    if (swift_dynamicCast())
    {
      sub_2542DA8C0(&v32, &v34);
      *&v38 = 40;
      *(&v38 + 1) = 0xE100000000000000;
      __swift_project_boxed_opaque_existential_0(&v34, v36);
      *&v32 = sub_2543A2EF8();
      v8 = sub_2543A35A8();
      MEMORY[0x259C093D0](v8);

      MEMORY[0x259C093D0](41, 0xE100000000000000);
      v10 = *(&v38 + 1);
      v9 = v38;
LABEL_19:
      __swift_destroy_boxed_opaque_existential_0(&v34);
      goto LABEL_22;
    }

    OUTLINED_FUNCTION_21_5();
    sub_2542DE3E4(&v32, &qword_27F5E1A80, &unk_2543AE8C0);
  }

  sub_25439331C();

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E1A68, &unk_2543B4A20);
  if (swift_dynamicCast())
  {
    sub_2542DA8C0(&v32, &v34);
    v30 = 0;
    v31 = 0xE000000000000000;
    sub_2543004CC(&v34, &v38);
    sub_25439331C();
    if (v33)
    {
      sub_2542DA8C0(&v32, v29);
      sub_2543004CC(v29, v28);
      v12 = sub_2543A2888();
      v14 = v13;
      __swift_destroy_boxed_opaque_existential_0(v29);
    }

    else
    {
      v12 = 7104878;
      v14 = 0xE300000000000000;
    }

    sub_2542DE3E4(&v38, &qword_27F5E1A70, &unk_2543AE8B0);
    MEMORY[0x259C093D0](v12, v14);

    v9 = v30;
    v10 = v31;
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_21_5();
  sub_2542DE3E4(&v32, &qword_27F5E1A70, &unk_2543AE8B0);
  sub_25439331C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E1A78, &unk_2543B4A30);
  if (swift_dynamicCast())
  {
    sub_2542DA8C0(&v32, &v34);
    OUTLINED_FUNCTION_26_5();

    sub_2542F50C4((v11 + 16), v29);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5E1A98, &unk_2543AE8E0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v20 = v36;
      v21 = v37;
      v22 = __swift_project_boxed_opaque_existential_0(&v34, v36);
      MEMORY[0x28223BE20](v22);
      v27[2] = v20;
      v27[3] = v21;
      v27[4] = sub_254351AB4;
      v27[5] = 0;
      *&v38 = sub_254369100(a1, v27, v20, MEMORY[0x277D837D0], MEMORY[0x277D84A98], v21, MEMORY[0x277D84AC0], v23);
      v24 = OUTLINED_FUNCTION_45_3();
      __swift_instantiateConcreteTypeFromMangledNameV2(v24, v25);
      sub_2542EE9CC(&qword_27F5DFC30, &qword_27F5DFC28, &unk_2543A81D0);
      v9 = sub_2543A2818();
      v10 = v26;

      goto LABEL_19;
    }

    __swift_destroy_boxed_opaque_existential_0(&v32);
    __swift_destroy_boxed_opaque_existential_0(&v34);
  }

  else
  {
    OUTLINED_FUNCTION_21_5();
    sub_2542DE3E4(&v32, &qword_27F5E1A80, &unk_2543AE8C0);
  }

  v30 = 0;
  v31 = 0xE000000000000000;
  OUTLINED_FUNCTION_26_5();

  sub_2542F50C4((v11 + 16), &v34);
  sub_25439331C();
  if (v33)
  {
    sub_2542F50C4(&v32, v29);
    sub_2542D62F0(v29, v28);
    v15 = sub_2543A2888();
    v17 = v16;
    __swift_destroy_boxed_opaque_existential_0(v29);
  }

  else
  {
    v15 = 7104878;
    v17 = 0xE300000000000000;
  }

  sub_2542DE3E4(&v34, &unk_27F5DFA00, &unk_2543A76C0);
  MEMORY[0x259C093D0](v15, v17);

  v9 = v30;
  v10 = v31;
LABEL_22:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFC90, &unk_2543AE850);
  v18 = swift_allocObject();
  *&result = 2;
  *(v18 + 16) = xmmword_2543A7DE0;
  *(v18 + 32) = v4;
  *(v18 + 40) = v6;
  *(v18 + 48) = v9;
  *(v18 + 56) = v10;
  *a2 = v18;
  return result;
}

uint64_t sub_25439C9E0@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t *)@<X1>, uint64_t a3@<X6>, void *a4@<X8>)
{
  v7 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12[3] = AssociatedTypeWitness;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
  (*(*(AssociatedTypeWitness - 8) + 16))(boxed_opaque_existential_1, a1, AssociatedTypeWitness);
  *a4 = a2(v12);
  a4[1] = v10;
  return __swift_destroy_boxed_opaque_existential_0(v12);
}

uint64_t CallObservationUpdate.init(updateValue:)()
{
  sub_25439D090();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E2F18, &qword_2543B47B8);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_25439CB60(uint64_t a1)
{
  v2 = sub_25439CD40();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25439CB9C(uint64_t a1)
{
  v2 = sub_25439CD40();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CallObservationUpdate.encode(to:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E2F20, &qword_2543B47C0);
  OUTLINED_FUNCTION_3(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v7);
  v9 = &v17 - v8;
  v10 = *(a1 + 24);
  v11 = *(a1 + 32);
  v12 = OUTLINED_FUNCTION_45_3();
  __swift_project_boxed_opaque_existential_0(v12, v13);
  sub_25439CD40();
  sub_2543A3778();
  v14 = OUTLINED_FUNCTION_45_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(v14, v15);
  sub_2542EE9CC(&qword_27F5E2F30, &qword_27F5E2F18, &qword_2543B47B8);
  sub_2543A3578();
  return (*(v4 + 8))(v9, v2);
}

unint64_t sub_25439CD40()
{
  result = qword_27F5E2F28;
  if (!qword_27F5E2F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E2F28);
  }

  return result;
}

uint64_t CallObservationUpdate.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E2F18, &qword_2543B47B8);
  OUTLINED_FUNCTION_26(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v7);
  v26 = &v24 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E2F38, &unk_2543B47C8);
  OUTLINED_FUNCTION_3(v9);
  v25 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v13);
  v15 = &v24 - v14;
  v16 = type metadata accessor for CallObservationUpdate();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  OUTLINED_FUNCTION_9();
  v20 = v19 - v18;
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_25439CD40();
  sub_2543A3768();
  if (!v2)
  {
    sub_2542EE9CC(&qword_27F5E2F40, &qword_27F5E2F18, &qword_2543B47B8);
    v22 = v26;
    sub_2543A34D8();
    (*(v25 + 8))(v15, v9);
    sub_25439D020(v22, v20);
    sub_25439D090();
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t type metadata accessor for CallObservationUpdate()
{
  result = qword_27F5E2FA0;
  if (!qword_27F5E2FA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25439D020(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E2F18, &qword_2543B47B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25439D090()
{
  OUTLINED_FUNCTION_59_3();
  v2 = v1(0);
  OUTLINED_FUNCTION_26(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_5_1();
  v6(v5);
  return v0;
}

uint64_t static CallObservationUpdate.updateObservedValue(_:withUpdate:scope:)()
{
  OUTLINED_FUNCTION_59_3();
  sub_2542DE3E4(v1, &qword_27F5E02C0, qword_2543A9470);
  OUTLINED_FUNCTION_5_1();
  sub_25439DAE0();
  v2 = type metadata accessor for HPCall();

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v2);
}

uint64_t sub_25439D168(uint64_t a1)
{
  result = sub_25439DB94(&qword_27F5E2F48, type metadata accessor for CallObservationUpdate);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_25439D260(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5E02C0, qword_2543A9470);
    sub_25439DB94(a2, type metadata accessor for HPCall);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25439D3DC(uint64_t a1)
{
  result = sub_25439DB94(&qword_27F5E2F80, type metadata accessor for CallObservationUpdate);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25439D458(uint64_t a1)
{
  result = sub_25439DB94(&qword_27F5E2F88, type metadata accessor for CallObservationUpdate);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25439D4B0(uint64_t a1)
{
  *(a1 + 8) = sub_25439DB94(&qword_27F5E2F90, type metadata accessor for CallObservationUpdate);
  result = sub_25439DB94(&qword_27F5E2F98, type metadata accessor for CallObservationUpdate);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_25439D578(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E2F18, &qword_2543B47B8);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_25439D5E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E2F18, &qword_2543B47B8);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

void sub_25439D638()
{
  sub_25439D6A4();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_25439D6A4()
{
  if (!qword_27F5E2FB0)
  {
    type metadata accessor for HPCall();
    sub_25439DB94(&qword_27F5E2F58, type metadata accessor for HPCall);
    sub_25439DB94(&qword_27F5E2F68, type metadata accessor for HPCall);
    updated = type metadata accessor for UpdateResult();
    if (!v1)
    {
      atomic_store(updated, &qword_27F5E2FB0);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for CallObservationUpdate.CodingKeys(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x25439D83CLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_25439D878()
{
  result = qword_27F5E2FB8;
  if (!qword_27F5E2FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E2FB8);
  }

  return result;
}

unint64_t sub_25439D8D0()
{
  result = qword_27F5E2FC0;
  if (!qword_27F5E2FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E2FC0);
  }

  return result;
}

unint64_t sub_25439D928()
{
  result = qword_27F5E2FC8;
  if (!qword_27F5E2FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E2FC8);
  }

  return result;
}

uint64_t sub_25439DA34@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X2>, unint64_t *a3@<X3>, void (*a4)(uint64_t)@<X4>, void *a5@<X8>)
{
  v10 = v5[2];
  v14 = v5[3];
  v12 = v5[4];
  v11 = v5[5];
  a2(0);
  sub_25439DB94(a3, a4);
  return sub_25439C9E0(a1, v12, v14, a5);
}

uint64_t sub_25439DAE0()
{
  OUTLINED_FUNCTION_59_3();
  v2 = v1(0);
  OUTLINED_FUNCTION_26(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_5_1();
  v6(v5);
  return v0;
}

uint64_t sub_25439DB94(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_25439DC10()
{
  result = qword_27F5E2FE8;
  if (!qword_27F5E2FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E2FE8);
  }

  return result;
}

uint64_t sub_25439DC64()
{
  sub_2543184C8(*(v0 + 16), *(v0 + 24));
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

unint64_t sub_25439DCDC()
{
  result = qword_27F5E2FF0;
  if (!qword_27F5E2FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E2FF0);
  }

  return result;
}

unint64_t sub_25439DD64()
{
  result = qword_27F5E2FF8;
  if (!qword_27F5E2FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E2FF8);
  }

  return result;
}

unint64_t sub_25439DDEC()
{
  result = qword_27F5E3000;
  if (!qword_27F5E3000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E3000);
  }

  return result;
}

uint64_t sub_25439DE74@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X2>, void *a3@<X8>)
{
  v6 = v3[2];
  v7 = v3[3];
  v9 = v3[4];
  v8 = v3[5];
  a2();
  return sub_25439C9E0(a1, v9, v7, a3);
}

unint64_t sub_25439DF00()
{
  result = qword_27F5E3008;
  if (!qword_27F5E3008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E3008);
  }

  return result;
}

void OUTLINED_FUNCTION_4_24()
{
  v2 = *(v1 - 360) + 8 * v0;
  v3 = *(v1 - 336);
  v4 = *(v1 - 300);
}

uint64_t OUTLINED_FUNCTION_6_29(uint64_t a1, uint64_t a2, int a3)
{
  *(v5 - 296) = a2;
  *(v5 - 300) = a3;
  v7 = *(v3 + 56);
  v8 = (*(v3 + 48) + 16 * v4);
  v10 = *v8;
  v9 = v8[1];

  return sub_2542D62F0(v7 + 32 * v4, v5 - 128);
}

unint64_t OUTLINED_FUNCTION_7_21()
{
  *(v3 - 208) = v1;
  *(v3 - 200) = v0;
  *(v3 - 256) = 10;
  *(v3 - 248) = 0xE100000000000000;
  *(v3 - 272) = 2105354;
  *(v3 - 264) = v2;

  return sub_254351B20();
}

void OUTLINED_FUNCTION_8_22(__n128 a1)
{
  *(v4 - 320) = a1;
  *(v4 - 336) = v3;
  *(v4 - 344) = v1;
  *(v4 - 328) = v2;
}

void OUTLINED_FUNCTION_11_17()
{
  *(v0 + 16) = v2;
  *(v0 + 8 * v1 + 32) = v4;
  v5 = 1 << *(v3 + 32);
}

uint64_t OUTLINED_FUNCTION_12_22()
{

  return sub_2543A2FB8();
}

uint64_t OUTLINED_FUNCTION_13_17()
{
  v5 = *(v3 - 264);
  *(v2 + 48) = *(v3 - 272);
  *(v2 + 56) = v5;

  return sub_2542DE3E4(v3 - 208, v1, v0);
}

uint64_t OUTLINED_FUNCTION_14_13()
{
  v3 = *(v1 - 248);
  *(v0 + 32) = *(v1 - 256);
  *(v0 + 40) = v3;
  *(v1 - 272) = 0;
  *(v1 - 264) = 0xE000000000000000;

  return sub_2543A2768();
}

void OUTLINED_FUNCTION_15_14()
{
  *(v2 - 384) = v1;
  *(v2 - 152) = v0;

  sub_2542F15C8();
}

void OUTLINED_FUNCTION_16_13()
{
  v2 = *(v1 - 200);
  *(v1 - 376) = *(v1 - 208);
  *(v1 - 368) = v2;
  *(v1 - 120) = v0;
}

void OUTLINED_FUNCTION_19_9()
{
  *(v2 - 288) = v0;
  v3 = *(v1 + 36);
  v4 = *(v2 - 296);
}

void OUTLINED_FUNCTION_20_11()
{
  v1 = *(v0 - 288);
  *(v0 - 152) = v1;
  v2 = *(v1 + 24);
  v3 = *(v1 + 16) + 1;
}

double OUTLINED_FUNCTION_21_5()
{
  *(v0 - 192) = 0;
  result = 0.0;
  *(v0 - 224) = 0u;
  *(v0 - 208) = 0u;
  return result;
}

void OUTLINED_FUNCTION_24_10()
{
  v2 = *(v0 + 16) + 1;

  sub_2542F0F3C();
}

void OUTLINED_FUNCTION_25_9()
{
  *(v0 - 208) = 0;
  *(v0 - 200) = 0xE000000000000000;

  JUMPOUT(0x259C093D0);
}

uint64_t OUTLINED_FUNCTION_26_5()
{

  return sub_25439331C();
}

_OWORD *OUTLINED_FUNCTION_35_8()
{
  *(v3 - 208) = v1;
  *(v3 - 200) = v0;

  return sub_2542F50C4((v2 + 16), (v3 - 192));
}

double OUTLINED_FUNCTION_36_6(__n128 a1)
{
  *(v2 - 176) = a1;

  return sub_25439C368(v1, (v2 - 256));
}

uint64_t OUTLINED_FUNCTION_37_6()
{
  *(v1 - 288) = *(v1 - 152);

  return sub_254351CE8(v0);
}

uint64_t OUTLINED_FUNCTION_38_3(uint64_t a1, uint64_t a2)
{

  return sub_254351BC8(v3, a2, v2 & 1);
}

uint64_t sub_25439E374(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v36 = MEMORY[0x277D84F90];
    sub_2542F1608();
    v2 = v36;
    v5 = sub_254351CE8(a1);
    v7 = v6;
    v8 = 0;
    v9 = a1 + 64;
    v28 = v6;
    v29 = v1;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
    {
      v10 = v5 >> 6;
      if ((*(v9 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_29;
      }

      if (*(a1 + 36) != v7)
      {
        goto LABEL_30;
      }

      v30 = v4;
      v11 = *(*(a1 + 48) + v5);
      sub_2542D62F0(*(a1 + 56) + 32 * v5, v33);
      v31[0] = v11;
      sub_2542F50C4(v33, v32);
      v12 = 0xE300000000000000;
      v13 = 7955819;
      switch(v11)
      {
        case 1:
          v12 = 0xE500000000000000;
          v13 = 0x726F727265;
          break;
        case 2:
          v12 = 0xE800000000000000;
          v14 = 1651336557;
          goto LABEL_12;
        case 3:
          v12 = 0xE800000000000000;
          v14 = 1684956531;
LABEL_12:
          v13 = v14 | 0x4449726500000000;
          break;
        case 4:
          v12 = 0xEA00000000007965;
          v13 = 0x4B74736575716572;
          break;
        case 5:
          v13 = 0x65736E6F70736572;
          v12 = 0xEB0000000079654BLL;
          break;
        default:
          break;
      }

      sub_2542D62F0(v32, v35);
      *&v34 = v13;
      *(&v34 + 1) = v12;
      sub_2542F5064(v31, &qword_27F5E3020, &qword_2543B4A78);
      v36 = v2;
      v15 = *(v2 + 16);
      if (v15 >= *(v2 + 24) >> 1)
      {
        sub_2542F1608();
        v2 = v36;
      }

      *(v2 + 16) = v15 + 1;
      v16 = (v2 + 48 * v15);
      v17 = v34;
      v18 = v35[1];
      v16[3] = v35[0];
      v16[4] = v18;
      v16[2] = v17;
      v19 = 1 << *(a1 + 32);
      v9 = a1 + 64;
      if (v5 >= v19)
      {
        goto LABEL_31;
      }

      v20 = *(a1 + 64 + 8 * v10);
      if ((v20 & (1 << v5)) == 0)
      {
        goto LABEL_32;
      }

      if (*(a1 + 36) != v7)
      {
        goto LABEL_33;
      }

      v21 = v20 & (-2 << (v5 & 0x3F));
      if (v21)
      {
        v19 = __clz(__rbit64(v21)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v22 = v10 << 6;
        v23 = v10 + 1;
        v24 = (a1 + 72 + 8 * v10);
        while (v23 < (v19 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            sub_254351BC8(v5, v7, v30 & 1);
            v19 = __clz(__rbit64(v25)) + v22;
            goto LABEL_26;
          }
        }

        sub_254351BC8(v5, v7, v30 & 1);
      }

LABEL_26:
      v4 = 0;
      ++v8;
      v5 = v19;
      v7 = v28;
      if (v8 == v29)
      {
        return sub_25439E9AC(v2);
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
    JUMPOUT(0x25439E6ACLL);
  }

  return sub_25439E9AC(v2);
}

void sub_25439E6C4(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  sub_2543A2768();
  v7 = 0;
  v21 = MEMORY[0x277D84F90];
  while (1)
  {
    v8 = v7;
    if (!v5)
    {
      break;
    }

LABEL_8:
    v9 = __clz(__rbit64(v5)) | (v7 << 6);
    v10 = (*(a1 + 48) + 16 * v9);
    v11 = *v10;
    v12 = v10[1];
    sub_2542D62F0(*(a1 + 56) + 32 * v9, v29);
    v28[0] = v11;
    v28[1] = v12;
    swift_bridgeObjectRetain_n();
    v13 = sub_2543A3438();

    if (v13 > 5)
    {
      v24 = 0;
      v22 = 0u;
      v23 = 0u;
    }

    else
    {
      LOBYTE(v22) = v13;
      sub_2542D62F0(v29, &v22 + 8);
    }

    v5 &= v5 - 1;
    v25 = v22;
    v26 = v23;
    v27 = v24;
    sub_2542F5064(v28, &qword_27F5DFC80, &unk_2543B4A10);
    if (v27)
    {
      v22 = v25;
      v23 = v26;
      v24 = v27;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = *(v21 + 16);
        sub_2542F1124();
        v21 = v19;
      }

      v14 = *(v21 + 16);
      if (v14 >= *(v21 + 24) >> 1)
      {
        sub_2542F1124();
        v21 = v20;
      }

      *(v21 + 16) = v14 + 1;
      v15 = v21 + 40 * v14;
      v16 = v22;
      v17 = v23;
      *(v15 + 64) = v24;
      *(v15 + 32) = v16;
      *(v15 + 48) = v17;
    }

    else
    {
      sub_2542F5064(&v25, &qword_27F5E3010, &qword_2543B4A68);
    }
  }

  while (1)
  {
    v7 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v7 >= v6)
    {

      sub_25439E904(v21);
      return;
    }

    v5 = *(v2 + 8 * v7);
    ++v8;
    if (v5)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
}

uint64_t sub_25439E904(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E3018, &qword_2543B4A70);
    v2 = sub_2543A3418();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v4 = v2;
  sub_25439F4C0(a1, 1, &v4);
  return v4;
}

uint64_t sub_25439E9AC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E1F60, &qword_2543AFE58);
    v1 = sub_2543A3418();
  }

  else
  {
    v1 = MEMORY[0x277D84F98];
  }

  v4 = v1;
  v2 = sub_2543A2768();
  sub_25439F7C0(v2, 1, &v4);

  return v4;
}

void sub_25439EA60(uint64_t a1, char a2)
{
  v5 = v2;
  OUTLINED_FUNCTION_7_22(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF5A0, &qword_2543A6D70);
  v7 = sub_2543A33F8();
  if (!v3[2])
  {

LABEL_29:
    *v5 = v7;
    return;
  }

  v38 = v2;
  v8 = 0;
  OUTLINED_FUNCTION_0_45();
  v11 = v10 & v9;
  v13 = (v12 + 63) >> 6;
  v14 = v7 + 8;
  if ((v10 & v9) == 0)
  {
LABEL_4:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v4[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_9;
      }
    }

    if (a2)
    {
      OUTLINED_FUNCTION_4_25();
      if (v36 != v37)
      {
        *v4 = -1 << v35;
      }

      else
      {
        OUTLINED_FUNCTION_8_23(v35);
      }

      v3[2] = 0;
    }

    v5 = v38;
    goto LABEL_29;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_9:
    v18 = v15 | (v8 << 6);
    v19 = *(v3[6] + 8 * v18);
    v20 = *(v3[7] + 8 * v18);
    if ((a2 & 1) == 0)
    {
      v21 = v19;
      v22 = v20;
    }

    v23 = v7[5];
    v24 = sub_2543A30A8();
    OUTLINED_FUNCTION_1_38(v24);
    if (((v27 << v26) & ~v14[v25]) == 0)
    {
      break;
    }

    OUTLINED_FUNCTION_3_31();
LABEL_20:
    OUTLINED_FUNCTION_5_21();
    *(v14 + v32) |= v33;
    *(v7[6] + 8 * v34) = v19;
    *(v7[7] + 8 * v34) = v20;
    ++v7[2];
    if (!v11)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_2_43();
  while (++v28 != v30 || (v29 & 1) == 0)
  {
    v31 = v28 == v30;
    if (v28 == v30)
    {
      v28 = 0;
    }

    v29 |= v31;
    if (v14[v28] != -1)
    {
      OUTLINED_FUNCTION_6_30();
      goto LABEL_20;
    }
  }

LABEL_31:
  __break(1u);
}

uint64_t sub_25439EC3C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E3018, &qword_2543B4A70);
  v7 = sub_2543A33F8();
  v8 = v7;
  if (!*(v5 + 16))
  {
    goto LABEL_34;
  }

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
  v15 = v7 + 64;
  if (v13)
  {
LABEL_8:
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    goto LABEL_14;
  }

LABEL_9:
  v17 = v9;
  while (1)
  {
    v9 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
LABEL_37:
      __break(1u);
      JUMPOUT(0x25439EF78);
    }

    if (v9 >= v14)
    {
      break;
    }

    v18 = v10[v9];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v13 = (v18 - 1) & v18;
LABEL_14:
      v19 = v16 | (v9 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = (*(v5 + 56) + 32 * v19);
      if (a2)
      {
        sub_2542F50C4(v21, v35);
      }

      else
      {
        sub_2542D62F0(v21, v35);
      }

      v22 = *(v8 + 40);
      sub_2543A36E8();
      sub_2543A28C8();

      v23 = sub_2543A3728();
      v24 = -1 << *(v8 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) != 0)
      {
        v27 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v28 = 0;
        v29 = (63 - v24) >> 6;
        do
        {
          if (++v26 == v29 && (v28 & 1) != 0)
          {
            goto LABEL_37;
          }

          v30 = v26 == v29;
          if (v26 == v29)
          {
            v26 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v26);
        }

        while (v31 == -1);
        v27 = __clz(__rbit64(~v31)) + (v26 << 6);
      }

      *(v15 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
      *(*(v8 + 48) + v27) = v20;
      sub_2542F50C4(v35, (*(v8 + 56) + 32 * v27));
      ++*(v8 + 16);
      if (v13)
      {
        goto LABEL_8;
      }

      goto LABEL_9;
    }
  }

  if (a2)
  {
    v32 = 1 << *(v5 + 32);
    v3 = v34;
    if (v32 >= 64)
    {
      sub_25439F45C(0, (v32 + 63) >> 6, v5 + 64);
    }

    else
    {
      *v10 = -1 << v32;
    }

    *(v5 + 16) = 0;
LABEL_34:

    goto LABEL_35;
  }

  v3 = v34;
LABEL_35:
  *v3 = v8;
  return result;
}

void sub_25439EF90(uint64_t a1, char a2)
{
  v5 = v2;
  OUTLINED_FUNCTION_7_22(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E0D58, &qword_2543AC268);
  v42 = a2;
  v7 = sub_2543A33F8();
  if (!v3[2])
  {
LABEL_28:

LABEL_29:
    *v5 = v7;
    return;
  }

  v41 = v3;
  v8 = 0;
  OUTLINED_FUNCTION_0_45();
  v11 = v10 & v9;
  v13 = (v12 + 63) >> 6;
  v14 = v7 + 8;
  if ((v10 & v9) == 0)
  {
LABEL_4:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v4[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_9;
      }
    }

    if ((v42 & 1) == 0)
    {

      v5 = v2;
      goto LABEL_29;
    }

    OUTLINED_FUNCTION_4_25();
    v5 = v2;
    if (v39 != v40)
    {
      *v4 = -1 << v38;
    }

    else
    {
      OUTLINED_FUNCTION_8_23(v38);
    }

    v3[2] = 0;
    goto LABEL_28;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_9:
    v18 = v15 | (v8 << 6);
    v19 = (v3[6] + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v22 = *(v3[7] + 8 * v18);
    if ((v42 & 1) == 0)
    {
      v23 = v19[1];
      sub_2543A2768();
      v24 = v22;
    }

    v25 = v7[5];
    sub_2543A36E8();
    sub_2543A28C8();
    v26 = sub_2543A3728();
    OUTLINED_FUNCTION_1_38(v26);
    if (((v29 << v28) & ~v14[v27]) == 0)
    {
      break;
    }

    OUTLINED_FUNCTION_3_31();
LABEL_20:
    OUTLINED_FUNCTION_5_21();
    *(v14 + v34) |= v35;
    v37 = (v7[6] + 16 * v36);
    *v37 = v20;
    v37[1] = v21;
    *(v7[7] + 8 * v36) = v22;
    ++v7[2];
    v3 = v41;
    if (!v11)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_2_43();
  while (++v30 != v32 || (v31 & 1) == 0)
  {
    v33 = v30 == v32;
    if (v30 == v32)
    {
      v30 = 0;
    }

    v31 |= v33;
    if (v14[v30] != -1)
    {
      OUTLINED_FUNCTION_6_30();
      goto LABEL_20;
    }
  }

LABEL_31:
  __break(1u);
}

uint64_t sub_25439F1A8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E1F60, &qword_2543AFE58);
  v36 = a2;
  result = sub_2543A33F8();
  v8 = result;
  if (!*(v5 + 16))
  {
LABEL_34:

LABEL_35:
    *v3 = v8;
    return result;
  }

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
  if (!v13)
  {
LABEL_9:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      sub_25439F45C(0, (v34 + 63) >> 6, v5 + 64);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
    goto LABEL_34;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_14:
    v19 = v16 | (v9 << 6);
    v20 = (*(v5 + 48) + 16 * v19);
    v21 = *v20;
    v22 = v20[1];
    v23 = (*(v5 + 56) + 32 * v19);
    if (v36)
    {
      sub_2542F50C4(v23, v37);
    }

    else
    {
      sub_2542D62F0(v23, v37);
      sub_2543A2768();
    }

    v24 = *(v8 + 40);
    sub_2543A36E8();
    sub_2543A28C8();
    result = sub_2543A3728();
    v25 = -1 << *(v8 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    v33 = (*(v8 + 48) + 16 * v28);
    *v33 = v21;
    v33[1] = v22;
    result = sub_2542F50C4(v37, (*(v8 + 56) + 32 * v28));
    ++*(v8 + 16);
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v15 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_26;
    }
  }

LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_25439F45C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_2543A6830;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

void sub_25439F4C0(uint64_t a1, char a2, void *a3)
{
  v25 = *(a1 + 16);
  if (!v25)
  {

    return;
  }

  v6 = 0;
  for (i = a1 + 32; ; i += 40)
  {
    if (v6 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_2543A3648();
      __break(1u);
      goto LABEL_22;
    }

    sub_2542F4FFC(i, v27, &qword_27F5DFC60, &qword_2543A7F40);
    v8 = v27[0];
    v29 = v27[0];
    sub_2542F50C4(&v28, v26);
    v9 = *a3;
    v11 = sub_25438E144(v8);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_19;
    }

    v15 = v10;
    if (v9[3] < v14)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E0D40, &qword_2543AC250);
      sub_2543A3378();
      if (v15)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v19 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    *(v19[6] + v11) = v8;
    sub_2542F50C4(v26, (v19[7] + 32 * v11));
    v20 = v19[2];
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (v21)
    {
      goto LABEL_20;
    }

    ++v6;
    v19[2] = v22;
    a2 = 1;
    if (v25 == v6)
    {

      return;
    }
  }

  sub_25439EC3C(v14, a2 & 1);
  v16 = *a3;
  v17 = sub_25438E144(v8);
  if ((v15 & 1) != (v18 & 1))
  {
    goto LABEL_21;
  }

  v11 = v17;
  if ((v15 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v23 = swift_allocError();
  swift_willThrow();

  v24 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF1E0, &qword_2543A67A0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_0(v26);

    return;
  }

LABEL_22:
  sub_2543A3298();
  MEMORY[0x259C093D0](0xD00000000000001BLL, 0x80000002543BAC40);
  sub_2543A3358();
  MEMORY[0x259C093D0](39, 0xE100000000000000);
  sub_2543A33D8();
  __break(1u);
}

void sub_25439F7C0(uint64_t a1, char a2, void *a3)
{
  v26 = *(a1 + 16);
  if (!v26)
  {

    return;
  }

  v5 = 0;
  for (i = a1 + 32; ; i += 48)
  {
    if (v5 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_2543A3648();
      __break(1u);
      goto LABEL_22;
    }

    sub_2542F4FFC(i, &v31, &qword_27F5E2B88, &qword_2543B39E8);
    v8 = v31;
    v7 = v32;
    v29 = v31;
    v30 = v32;
    sub_2542F50C4(&v33, v28);
    v9 = *a3;
    v11 = sub_25438E0D0();
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_19;
    }

    v15 = v10;
    if (v9[3] < v14)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E3028, &unk_2543B4A80);
      sub_2543A3378();
      if (v15)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v19 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v20 = (v19[6] + 16 * v11);
    *v20 = v8;
    v20[1] = v7;
    sub_2542F50C4(v28, (v19[7] + 32 * v11));
    v21 = v19[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      goto LABEL_20;
    }

    ++v5;
    v19[2] = v23;
    a2 = 1;
    if (v26 == v5)
    {

      return;
    }
  }

  sub_25439F1A8(v14, a2 & 1);
  v16 = *a3;
  v17 = sub_25438E0D0();
  if ((v15 & 1) != (v18 & 1))
  {
    goto LABEL_21;
  }

  v11 = v17;
  if ((v15 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v24 = swift_allocError();
  swift_willThrow();
  v34 = v24;
  v25 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF1E0, &qword_2543A67A0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    __swift_destroy_boxed_opaque_existential_0(v28);

    return;
  }

LABEL_22:
  sub_2543A3298();
  MEMORY[0x259C093D0](0xD00000000000001BLL, 0x80000002543BAC40);
  sub_2543A3358();
  MEMORY[0x259C093D0](39, 0xE100000000000000);
  sub_2543A33D8();
  __break(1u);
}

uint64_t OUTLINED_FUNCTION_7_22(uint64_t result)
{
  if (*(*v1 + 24) > result)
  {
    v2 = *(*v1 + 24);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_8_23@<X0>(uint64_t a1@<X8>)
{

  return sub_25439F45C(0, (a1 + 63) >> 6, v1);
}

uint64_t static OpalTransport.rapportTransportServer<A>(servicesRouter:deviceToMember:)(uint64_t a1)
{
  v1 = *(*a1 + 80);
  v2 = *(*a1 + 88);
  v3 = *(*a1 + 96);
  type metadata accessor for RapportTransport();

  return sub_254351D78();
}

uint64_t static OpalTransport.rapportTransportClient<A>(deviceToMember:)()
{
  type metadata accessor for ServicesRouter();
  swift_getExtendedExistentialTypeMetadata();
  sub_2543A2A88();
  ServicesRouter.__allocating_init(services:registerAllowedRequests:)();
  type metadata accessor for RapportTransport();

  return sub_254351D78();
}

uint64_t sub_25439FD30(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  type metadata accessor for RapportTransport();

  return swift_getWitnessTable();
}

uint64_t TransportError.hashValue.getter()
{
  v1 = *v0;
  sub_2543A36E8();
  MEMORY[0x259C0A1D0](v1);
  return sub_2543A3728();
}

unint64_t sub_25439FE14()
{
  result = qword_27F5E3030;
  if (!qword_27F5E3030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E3030);
  }

  return result;
}

uint64_t dispatch thunk of TransportService.activate()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 32);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2542DF754;

  return v9(a1, a2);
}

_BYTE *storeEnumTagSinglePayload for TransportError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x2543A009CLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ClusterCreationError(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x2543A0170);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2543A01AC()
{
  result = qword_27F5E3038;
  if (!qword_27F5E3038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E3038);
  }

  return result;
}