uint64_t sub_252ACAE60@<X0>(_BYTE *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a2)
  {
    if (a2 <= 14)
    {
      result = sub_252ACBA4C(__src, &__src[a2]);
      v6 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = sub_252E32AF4();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = sub_252E32AA4();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_252E32CE4();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v11 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v11 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

void *sub_252ACAF28(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v22[2] = *MEMORY[0x277D85DE8];
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_25296464C(v6, v5);
      v22[0] = v6;
      LOWORD(v22[1]) = v5;
      BYTE2(v22[1]) = BYTE2(v5);
      BYTE3(v22[1]) = BYTE3(v5);
      BYTE4(v22[1]) = BYTE4(v5);
      BYTE5(v22[1]) = BYTE5(v5);
      BYTE6(v22[1]) = BYTE6(v5);
      result = a1(&v20, v22, v22 + BYTE6(v5));
      if (!v2)
      {
        result = v20;
      }

      v9 = LODWORD(v22[1]) | ((WORD2(v22[1]) | (BYTE6(v22[1]) << 16)) << 32);
      *v3 = v22[0];
      v3[1] = v9;
      goto LABEL_22;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_25296464C(v6, v5);
    *v3 = xmmword_252E49110;
    sub_25296464C(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_252E32AB4() && __OFSUB__(v6, sub_252E32AE4()))
      {
LABEL_26:
        __break(1u);
      }

      v13 = sub_252E32AF4();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_252E32A94();

      v11 = v16;
    }

    if (v12 >= v6)
    {

      v17 = sub_252ACB3CC(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *v3 = v6;
        v3[1] = v10;
        result = v17;
        goto LABEL_22;
      }

      *v3 = v6;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 == 2)
  {

    sub_25296464C(v6, v5);
    v20 = v6;
    v21 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_252E49110;
    sub_25296464C(0, 0xC000000000000000);
    sub_252E32CC4();
    result = sub_252ACB3CC(v20[2], v20[3], a1);
    v10 = v21 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v20;
      v3[1] = v10;
      goto LABEL_22;
    }

    *v3 = v20;
LABEL_21:
    v3[1] = v10;
    goto LABEL_22;
  }

  memset(v22, 0, 15);
  result = a1(&v20, v22, v22);
  if (!v2)
  {
    result = v20;
  }

LABEL_22:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

_BYTE *sub_252ACB2CC@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_252ACBA4C(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_252ACBC0C(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_252ACBC88(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_252ACB360(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = a1(&v6, 0, 0);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_252ACB3CC(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_252E32AB4();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_252E32AE4();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_252E32AD4();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_252ACB5E0(unint64_t a1, uint64_t (*a2)(uint64_t, void), void (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v7 = sub_252E378C4();
  if (!v7)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v8 = v7;
  v9 = a2(v7, 0);
  a3(v9 + 32, v8, a1);
  v11 = v10;

  result = v9;
  if (v11 != v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_252ACB684@<X0>(uint64_t result@<X0>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  if (result)
  {
    v4 = *a2;
    v5 = a2[1];
    result = sub_252E37A04();
    if ((v7 & 1) == 0)
    {
      *a3 = 0;
      a3[1] = 0xE000000000000000;
      a3[2] = 15;
      a3[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0()
{
  if (qword_27F53F320 != -1)
  {
    swift_once();
  }

  sub_252E37604();
  if (qword_27F542D48)
  {
    v0 = qword_27F542D48;
  }

  else
  {
    v1 = [objc_allocWithZone(type metadata accessor for MatterAccessoryManager()) init];
    v2 = qword_27F542D48;
    qword_27F542D48 = v1;
    v0 = v1;
  }

  sub_252E37614();
  return v0;
}

uint64_t sub_252ACB7B8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v2 = a1;
  v3 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v3)
  {
    v40 = MEMORY[0x277D84F90];
    sub_2529AA3A0(0, v3, 0);
    v39 = v40;
    v5 = v2 + 64;
    v6 = -1 << *(v2 + 32);
    result = sub_252E37834();
    v7 = result;
    v8 = 0;
    v9 = *(v2 + 36);
    v33 = v2 + 72;
    v34 = v3;
    v35 = v9;
    v36 = v2 + 64;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v2 + 32))
    {
      v11 = v7 >> 6;
      if ((*(v5 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_23;
      }

      if (v9 != *(v2 + 36))
      {
        goto LABEL_24;
      }

      v38 = v8;
      v12 = *(v2 + 56);
      v13 = (*(v2 + 48) + 16 * v7);
      v14 = v2;
      v15 = *v13;
      v16 = v13[1];
      v17 = *(v12 + 8 * v7);

      v18 = a2(v15, v16, v17);
      v20 = v19;

      v21 = v39;
      v23 = *(v39 + 16);
      v22 = *(v39 + 24);
      if (v23 >= v22 >> 1)
      {
        result = sub_2529AA3A0((v22 > 1), v23 + 1, 1);
        v21 = v39;
      }

      *(v21 + 16) = v23 + 1;
      v24 = v21 + 16 * v23;
      *(v24 + 32) = v18;
      *(v24 + 40) = v20;
      v10 = 1 << *(v14 + 32);
      if (v7 >= v10)
      {
        goto LABEL_25;
      }

      v5 = v36;
      v25 = *(v36 + 8 * v11);
      if ((v25 & (1 << v7)) == 0)
      {
        goto LABEL_26;
      }

      v2 = v14;
      v39 = v21;
      v26 = *(v14 + 36);
      v9 = v35;
      if (v35 != v26)
      {
        goto LABEL_27;
      }

      v27 = v25 & (-2 << (v7 & 0x3F));
      if (v27)
      {
        v10 = __clz(__rbit64(v27)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v28 = v11 << 6;
        v29 = v11 + 1;
        v30 = (v33 + 8 * v11);
        while (v29 < (v10 + 63) >> 6)
        {
          v32 = *v30++;
          v31 = v32;
          v28 += 64;
          ++v29;
          if (v32)
          {
            result = sub_252ACBF38(v7, v35, 0);
            v10 = __clz(__rbit64(v31)) + v28;
            goto LABEL_4;
          }
        }

        result = sub_252ACBF38(v7, v35, 0);
      }

LABEL_4:
      v8 = v38 + 1;
      v7 = v10;
      if (v38 + 1 == v34)
      {
        return v39;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  return result;
}

uint64_t sub_252ACBA4C(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_252ACBB04(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v2 = sub_252E32AF4();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      sub_252E32AC4();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_252E32CE4();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

void *sub_252ACBBA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_252ACB360(sub_252ACBD0C, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_252ACBC0C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_252E32AF4();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_252E32AA4();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_252E32CE4();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_252ACBC88(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_252E32AF4();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_252E32AA4();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

unint64_t sub_252ACBD80()
{
  result = qword_27F542DD0;
  if (!qword_27F542DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542DD0);
  }

  return result;
}

unint64_t sub_252ACBDD4()
{
  result = qword_27F542DD8;
  if (!qword_27F542DD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F542DE0, &qword_252E491A8);
    sub_252ACBE88(&qword_27F542DE8, type metadata accessor for DeviceInfoResult);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542DD8);
  }

  return result;
}

uint64_t sub_252ACBE88(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_252ACBF38(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_252ACBF44(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25293B808;

  return sub_252AC0624(a1, v4);
}

uint64_t sub_252ACBFF8(uint64_t a1)
{
  v1 = 0xD000000000000010;
  v2 = *(a1 + 16);
  v44 = v2;
  v45 = 0;
  v41 = a1;
  if (v2)
  {
    v3 = 0;
    v42 = a1 + 32;
    v46 = 0x8000000252E65390;
    v43 = MEMORY[0x277D84F90];
    v4 = 0x74614D7361696C61;
    do
    {
      if (v3 >= v2)
      {
        goto LABEL_59;
      }

      v5 = (v42 + 504 * v3);
      memcpy(v49, v5, sizeof(v49));
      if (__OFADD__(v3++, 1))
      {
        goto LABEL_60;
      }

      v7 = v49[51];
      v1 = *(v49[51] + 16);
      if (v1)
      {
        sub_2529353AC(v49, v48);
        v2 = (v7 + 56);
        v8 = -v1;
        v1 = -1;
        while (1)
        {
          if (v8 + v1 == -1)
          {
            goto LABEL_3;
          }

          if (++v1 >= *(v7 + 16))
          {
            break;
          }

          if (*v2 > 2u)
          {

            goto LABEL_19;
          }

          v2 += 32;
          v9 = sub_252E37DB4();

          if (v9)
          {
            goto LABEL_19;
          }
        }

        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

      if (*(v49[19] + 16))
      {
        memcpy(v48, v5, sizeof(v48));
        sub_2529353AC(v49, v47);
        if (sub_252A13BEC())
        {
LABEL_3:
          sub_252935408(v49);
        }

        else
        {
LABEL_19:
          v10 = v43;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v50 = v43;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_2529AA480(0, *(v43 + 16) + 1, 1);
            v10 = v50;
          }

          v13 = *(v10 + 16);
          v12 = *(v10 + 24);
          if (v13 >= v12 >> 1)
          {
            sub_2529AA480((v12 > 1), v13 + 1, 1);
            v10 = v50;
          }

          *(v10 + 16) = v13 + 1;
          v43 = v10;
          memcpy((v10 + 504 * v13 + 32), v49, 0x1F8uLL);
        }

        v2 = v44;
      }
    }

    while (v3 != v2);
    v14 = 0;
    v1 = v41 + 32;
    v4 = MEMORY[0x277D84F90];
LABEL_25:
    v15 = (v1 + 504 * v14);
    v16 = v14;
    while (1)
    {
      if (v16 >= v2)
      {
        goto LABEL_61;
      }

      memcpy(v49, v15, sizeof(v49));
      v14 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_62;
      }

      if (*(v49[17] + 16))
      {
        v17 = memcpy(v48, v15, sizeof(v48));
        MEMORY[0x28223BE20](v17);
        v40 = v48;
        sub_2529353AC(v49, v47);
        v18 = v45;
        v19 = sub_2529EDA1C(sub_25295AD78, v39, v43);
        v45 = v18;
        if ((v19 & 1) == 0)
        {
          v20 = swift_isUniquelyReferenced_nonNull_native();
          v50 = v4;
          if ((v20 & 1) == 0)
          {
            sub_2529AA480(0, *(v4 + 16) + 1, 1);
            v4 = v50;
          }

          v22 = *(v4 + 16);
          v21 = *(v4 + 24);
          if (v22 >= v21 >> 1)
          {
            sub_2529AA480((v21 > 1), v22 + 1, 1);
            v4 = v50;
          }

          *(v4 + 16) = v22 + 1;
          memcpy((v4 + 504 * v22 + 32), v49, 0x1F8uLL);
          v2 = v44;
          if (v14 == v44)
          {
LABEL_37:
            v1 = 0xD000000000000010;
            if (*(v4 + 16))
            {
              goto LABEL_38;
            }

LABEL_54:

            return MEMORY[0x277D84F90];
          }

          goto LABEL_25;
        }

        sub_252935408(v49);
        v2 = v44;
      }

      ++v16;
      v15 += 504;
      if (v14 == v2)
      {
        goto LABEL_37;
      }
    }
  }

  v4 = MEMORY[0x277D84F90];
  v43 = MEMORY[0x277D84F90];
  if (!*(MEMORY[0x277D84F90] + 16))
  {
    goto LABEL_54;
  }

LABEL_38:
  if (qword_27F53F520 != -1)
  {
    goto LABEL_65;
  }

  while (1)
  {
    v23 = sub_252E36AD4();
    __swift_project_value_buffer(v23, qword_27F544E08);
    v49[0] = 0;
    v49[1] = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](v1 + 42, 0x8000000252E78F30);
    v24 = MEMORY[0x2530AD730](v43, &type metadata for HomeAutomationIntent);
    MEMORY[0x2530AD570](v24);

    MEMORY[0x2530AD570](v1 + 13, 0x8000000252E78F70);
    v25 = MEMORY[0x2530AD730](v4, &type metadata for HomeAutomationIntent);
    v27 = v26;

    MEMORY[0x2530AD570](v25, v27);

    sub_252CC3D90(v49[0], v49[1], v1 + 148, 0x8000000252E78F90);

    if (!v2)
    {
      break;
    }

    v28 = 0;
    v1 = v41 + 32;
    v29 = MEMORY[0x277D84F90];
    v4 = 504;
LABEL_41:
    v30 = (v1 + 504 * v28);
    v31 = v28;
    while (v31 < v2)
    {
      memcpy(v49, v30, sizeof(v49));
      v28 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        goto LABEL_64;
      }

      v32 = memcpy(v48, v30, sizeof(v48));
      MEMORY[0x28223BE20](v32);
      v4 = v39;
      v40 = v48;
      sub_2529353AC(v49, v47);
      v33 = v45;
      v34 = sub_2529EDA1C(sub_25295AD98, v39, v43);
      v45 = v33;
      if ((v34 & 1) == 0)
      {
        v35 = swift_isUniquelyReferenced_nonNull_native();
        v50 = v29;
        if ((v35 & 1) == 0)
        {
          sub_2529AA480(0, *(v29 + 16) + 1, 1);
          v29 = v50;
        }

        v4 = 504;
        v37 = *(v29 + 16);
        v36 = *(v29 + 24);
        if (v37 >= v36 >> 1)
        {
          sub_2529AA480((v36 > 1), v37 + 1, 1);
          v29 = v50;
        }

        *(v29 + 16) = v37 + 1;
        memcpy((v29 + 504 * v37 + 32), v49, 0x1F8uLL);
        v2 = v44;
        if (v28 != v44)
        {
          goto LABEL_41;
        }

        goto LABEL_56;
      }

      sub_252935408(v49);
      ++v31;
      v30 += 504;
      v2 = v44;
      if (v28 == v44)
      {
        goto LABEL_56;
      }
    }

LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    swift_once();
  }

  v29 = MEMORY[0x277D84F90];
LABEL_56:

  return v29;
}

uint64_t TemperatureSnippetModel.primaryText.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  sub_252E330E4();
  return v1;
}

uint64_t (*TemperatureSnippetModel.primaryText.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  *(v3 + 32) = sub_252E330D4();
  return sub_25292DC78;
}

uint64_t TemperatureSnippetModel.secondaryText.getter()
{
  v0 = *(type metadata accessor for TemperatureSnippetModel() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
  sub_252E330E4();
  return v2;
}

uint64_t type metadata accessor for TemperatureSnippetModel()
{
  result = qword_27F542E50;
  if (!qword_27F542E50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_252ACC888@<D0>(_OWORD *a1@<X8>)
{
  v2 = *(type metadata accessor for TemperatureSnippetModel() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
  sub_252E330E4();
  result = *&v4;
  *a1 = v4;
  return result;
}

uint64_t sub_252ACC8F0(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v1 = *(type metadata accessor for TemperatureSnippetModel() + 20);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
  return sub_252E330F4();
}

uint64_t TemperatureSnippetModel.secondaryText.setter()
{
  v0 = *(type metadata accessor for TemperatureSnippetModel() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
  return sub_252E330F4();
}

uint64_t (*TemperatureSnippetModel.secondaryText.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for TemperatureSnippetModel() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
  *(v3 + 32) = sub_252E330D4();
  return sub_252AA9630;
}

uint64_t TemperatureSnippetModel.temperature.getter()
{
  v0 = *(type metadata accessor for TemperatureSnippetModel() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
  sub_252E330E4();
  return v2;
}

double sub_252ACCAA8@<D0>(_OWORD *a1@<X8>)
{
  v2 = *(type metadata accessor for TemperatureSnippetModel() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
  sub_252E330E4();
  result = *&v4;
  *a1 = v4;
  return result;
}

uint64_t sub_252ACCB10(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v1 = *(type metadata accessor for TemperatureSnippetModel() + 24);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
  return sub_252E330F4();
}

uint64_t TemperatureSnippetModel.temperature.setter()
{
  v0 = *(type metadata accessor for TemperatureSnippetModel() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
  return sub_252E330F4();
}

uint64_t (*TemperatureSnippetModel.temperature.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for TemperatureSnippetModel() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
  *(v3 + 32) = sub_252E330D4();
  return sub_252AA9630;
}

uint64_t TemperatureSnippetModel.isHeating.getter()
{
  v0 = *(type metadata accessor for TemperatureSnippetModel() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B68, &qword_252E49240);
  sub_252E330E4();
  return v2;
}

uint64_t sub_252ACCCC8@<X0>(_BYTE *a1@<X8>)
{
  v2 = *(type metadata accessor for TemperatureSnippetModel() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B68, &qword_252E49240);
  result = sub_252E330E4();
  *a1 = v4;
  return result;
}

uint64_t sub_252ACCD30(char *a1)
{
  v3 = *a1;
  v1 = *(type metadata accessor for TemperatureSnippetModel() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B68, &qword_252E49240);
  return sub_252E330F4();
}

uint64_t TemperatureSnippetModel.isHeating.setter()
{
  v0 = *(type metadata accessor for TemperatureSnippetModel() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B68, &qword_252E49240);
  return sub_252E330F4();
}

uint64_t (*TemperatureSnippetModel.isHeating.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for TemperatureSnippetModel() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B68, &qword_252E49240);
  *(v3 + 32) = sub_252E330D4();
  return sub_252AA9630;
}

uint64_t TemperatureSnippetModel.punchOut.getter()
{
  v0 = *(type metadata accessor for TemperatureSnippetModel() + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B70, &qword_252E41BF8);
  return sub_252E330E4();
}

uint64_t sub_252ACCED8()
{
  v0 = *(type metadata accessor for TemperatureSnippetModel() + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B70, &qword_252E41BF8);
  return sub_252E330E4();
}

uint64_t sub_252ACCF30(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540370, &qword_252E3C450);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - v7;
  sub_252ACD0DC(a1, &v10 - v7);
  sub_252ACD0DC(v8, v6);
  LODWORD(a1) = *(type metadata accessor for TemperatureSnippetModel() + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B70, &qword_252E41BF8);
  sub_252E330F4();
  return sub_25293EF40(v8);
}

uint64_t TemperatureSnippetModel.punchOut.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540370, &qword_252E3C450);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_252ACD0DC(a1, &v7 - v4);
  v5 = *(type metadata accessor for TemperatureSnippetModel() + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B70, &qword_252E41BF8);
  sub_252E330F4();
  return sub_25293EF40(a1);
}

uint64_t sub_252ACD0DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540370, &qword_252E3C450);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t (*TemperatureSnippetModel.punchOut.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for TemperatureSnippetModel() + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B70, &qword_252E41BF8);
  *(v3 + 32) = sub_252E330D4();
  return sub_252AA9630;
}

uint64_t sub_252ACD1F4()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252ACD2F8()
{
  *v0;
  *v0;
  *v0;
  sub_252E37044();
}

uint64_t sub_252ACD3E8()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252ACD4E8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_252ACF29C();
  *a2 = result;
  return result;
}

void sub_252ACD518(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000657275;
  v4 = 0x74617265706D6574;
  v5 = 0xED00007478655479;
  v6 = 0x7261646E6F636573;
  v7 = 0xE900000000000067;
  v8 = 0x6E69746165487369;
  if (v2 != 3)
  {
    v8 = 0x74754F68636E7570;
    v7 = 0xE800000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x547972616D697270;
    v3 = 0xEB00000000747865;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_252ACD5D8()
{
  v1 = *v0;
  v2 = 0x74617265706D6574;
  v3 = 0x7261646E6F636573;
  v4 = 0x6E69746165487369;
  if (v1 != 3)
  {
    v4 = 0x74754F68636E7570;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x547972616D697270;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_252ACD694@<X0>(_BYTE *a1@<X8>)
{
  result = sub_252ACF29C();
  *a1 = result;
  return result;
}

uint64_t sub_252ACD6C8(uint64_t a1)
{
  v2 = sub_252ACE0DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252ACD704(uint64_t a1)
{
  v2 = sub_252ACE0DC();

  return MEMORY[0x2821FE720](a1, v2);
}

Swift::String __swiftcall TemperatureSnippetModel.responseViewId()()
{
  v0 = 0x8000000252E79040;
  v1 = 0xD000000000000019;
  result._object = v0;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t TemperatureSnippetModel.init(primaryText:temperature:secondaryText:isHeating:punchOut:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v33 = a8;
  v32 = a7;
  v30 = a5;
  v31 = a6;
  v26 = a3;
  v27 = a4;
  v28 = a1;
  v29 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540370, &qword_252E3C450);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v26 - v15;
  v17 = type metadata accessor for TemperatureSnippetModel();
  v18 = v17[5];
  v34 = 0;
  v35 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
  sub_252E330C4();
  v19 = v17[6];
  v34 = 0;
  v35 = 0;
  sub_252E330C4();
  v20 = v17[7];
  LOBYTE(v34) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5410E8, &qword_252E403C0);
  sub_252E330C4();
  v21 = v17[8];
  v22 = sub_252E32CB4();
  (*(*(v22 - 8) + 56))(v16, 1, 1, v22);
  sub_252ACD0DC(v16, v14);
  sub_252E330C4();
  sub_25293EF40(v16);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
  (*(*(v23 - 8) + 8))(a9 + v19, v23);
  v34 = v26;
  v35 = v27;
  sub_252E330C4();
  v34 = v28;
  v35 = v29;
  sub_252E330C4();
  v34 = v30;
  v35 = v31;
  sub_252E330F4();
  LOBYTE(v34) = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B68, &qword_252E49240);
  sub_252E330F4();
  v24 = v33;
  sub_252ACD0DC(v33, v16);
  sub_252ACD0DC(v16, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B70, &qword_252E41BF8);
  sub_252E330F4();
  sub_25293EF40(v24);
  return sub_25293EF40(v16);
}

uint64_t TemperatureSnippetModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542E08, &qword_252E49248);
  v50 = *(v3 - 8);
  v51 = v3;
  v4 = *(v50 + 64);
  MEMORY[0x28223BE20](v3);
  v59 = &v45 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540370, &qword_252E3C450);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v45 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v45 - v13;
  v15 = type metadata accessor for TemperatureSnippetModel();
  v16 = (v15 - 8);
  v17 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v16[7];
  v57 = 0;
  v58 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
  v53 = v20;
  sub_252E330C4();
  v21 = v16[8];
  v57 = 0;
  v58 = 0;
  v54 = v21;
  sub_252E330C4();
  v22 = v16[9];
  LOBYTE(v57) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5410E8, &qword_252E403C0);
  v56 = v22;
  sub_252E330C4();
  v23 = v16[10];
  v24 = sub_252E32CB4();
  v25 = *(v24 - 8);
  v26 = *(v25 + 56);
  v27 = v25 + 56;
  v26(v14, 1, 1, v24);
  sub_252ACD0DC(v14, v12);
  v55 = v23;
  sub_252E330C4();
  sub_25293EF40(v14);
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252ACE0DC();
  v29 = v52;
  sub_252E37F74();
  if (v29)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
    v32 = *(*(v31 - 8) + 8);
    v32(&v19[v53], v31);
    v32(&v19[v54], v31);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B68, &qword_252E49240);
    (*(*(v33 - 8) + 8))(&v19[v56], v33);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B70, &qword_252E41BF8);
    return (*(*(v34 - 8) + 8))(&v19[v55], v34);
  }

  else
  {
    v45 = v27;
    v46 = v26;
    v52 = v24;
    v47 = v14;
    v30 = v49;
    LOBYTE(v57) = 1;
    v57 = sub_252E37C04();
    v58 = v35;
    sub_252E330C4();
    LOBYTE(v57) = 2;
    v36 = sub_252E37C04();
    v37 = v30;
    v38 = v47;
    v57 = v36;
    v58 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
    sub_252E330F4();
    LOBYTE(v57) = 0;
    v57 = sub_252E37C04();
    v58 = v40;
    sub_252E330F4();
    LOBYTE(v57) = 3;
    v41 = sub_252E37C14() & 1;
    v42 = v50;
    LOBYTE(v57) = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B68, &qword_252E49240);
    sub_252E330F4();
    LOBYTE(v57) = 4;
    sub_252ACEF98(&qword_27F542E18, MEMORY[0x277CC9260]);
    v43 = v51;
    sub_252E37C64();
    v46(v37, 0, 1, v52);
    sub_252ACD0DC(v37, v38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B70, &qword_252E41BF8);
    sub_252E330F4();
    sub_25293EF40(v37);
    (*(v42 + 8))(v59, v43);
    sub_252ACE130(0, v48);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_252ACE194(0);
  }
}

unint64_t sub_252ACE0DC()
{
  result = qword_27F542E10;
  if (!qword_27F542E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542E10);
  }

  return result;
}

uint64_t sub_252ACE130(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TemperatureSnippetModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_252ACE194(uint64_t a1)
{
  v2 = type metadata accessor for TemperatureSnippetModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t TemperatureSnippetModel.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540370, &qword_252E3C450);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542E20, &qword_252E49250);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252ACE0DC();
  sub_252E37F84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  sub_252E330E4();
  LOBYTE(v28) = 1;
  v14 = v27;
  sub_252E37CF4();
  if (v14)
  {
    (*(v9 + 8))(v12, v8);
  }

  else
  {
    v24 = v4;
    v25 = v9;
    v26 = v7;

    v27 = type metadata accessor for TemperatureSnippetModel();
    v16 = v27[5];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
    v23 = v2;
    sub_252E330E4();
    v29 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
    sub_252ACE638(&qword_27F5400C8, &unk_27F541300, &qword_252E3C100);
    sub_252E37D54();

    v17 = v23 + v27[6];
    sub_252E330E4();
    v29 = 0;
    sub_252E37D54();
    v18 = v26;

    v19 = v27[7];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B68, &qword_252E49240);
    sub_252E330E4();
    v29 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5410E8, &qword_252E403C0);
    sub_252ACE638(&qword_27F542E28, &qword_27F5410E8, &qword_252E403C0);
    sub_252E37D54();
    v20 = v27[8];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B70, &qword_252E41BF8);
    sub_252E330E4();
    LOBYTE(v28) = 4;
    sub_252ACE6A0();
    sub_252E37D54();
    v21 = v25;
    sub_25293EF40(v18);
    return (*(v21 + 8))(v12, v8);
  }
}

uint64_t sub_252ACE638(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_252ACE6A0()
{
  result = qword_27F542E30;
  if (!qword_27F542E30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F540370, &qword_252E3C450);
    sub_252ACEF98(&qword_27F542E38, MEMORY[0x277CC9260]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542E30);
  }

  return result;
}

unint64_t TemperatureSnippetModel.description.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540370, &qword_252E3C450);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v35 - v4;
  v6 = sub_252E32CB4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v35 - v12;
  v40 = 0xD000000000000018;
  v41 = 0x8000000252E79060;
  v39[0] = 0;
  v39[1] = 0xE000000000000000;
  sub_252E379F4();

  strcpy(v39, "primaryText: ");
  HIWORD(v39[1]) = -4864;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  sub_252E330E4();
  MEMORY[0x2530AD570](v37, v38);

  MEMORY[0x2530AD570](8236, 0xE200000000000000);
  MEMORY[0x2530AD570](v39[0], v39[1]);

  v39[0] = 0;
  v39[1] = 0xE000000000000000;
  MEMORY[0x2530AD570](0x6E69746165487369, 0xEB00000000203A67);
  v14 = type metadata accessor for TemperatureSnippetModel();
  v15 = v14[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B68, &qword_252E49240);
  sub_252E330E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5410E8, &qword_252E403C0);
  sub_252E37AE4();
  MEMORY[0x2530AD570](8236, 0xE200000000000000);
  MEMORY[0x2530AD570](v39[0], v39[1]);

  v16 = v14[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
  sub_252E330E4();
  v17 = v39[1];
  if (v39[1])
  {
    v36 = v1;
    v18 = v5;
    v19 = v7;
    v20 = v6;
    v21 = v11;
    v22 = v13;
    v23 = v39[0];
    v39[0] = 0;
    v39[1] = 0xE000000000000000;
    sub_252E379F4();

    v39[0] = 0xD000000000000011;
    v39[1] = 0x8000000252E77640;
    v24 = v23;
    v13 = v22;
    v11 = v21;
    v6 = v20;
    v7 = v19;
    v5 = v18;
    v1 = v36;
    MEMORY[0x2530AD570](v24, v17);

    MEMORY[0x2530AD570](v39[0], v39[1]);
  }

  v25 = v1 + v14[6];
  sub_252E330E4();
  v26 = v39[1];
  if (v39[1])
  {
    v27 = v39[0];
    v39[0] = 0;
    v39[1] = 0xE000000000000000;
    sub_252E379F4();

    v39[0] = 0x7265706D6574202CLL;
    v39[1] = 0xEF203A6572757461;
    MEMORY[0x2530AD570](v27, v26);

    MEMORY[0x2530AD570](v39[0], v39[1]);
  }

  v28 = v14[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B70, &qword_252E41BF8);
  sub_252E330E4();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_25293EF40(v5);
  }

  else
  {
    (*(v7 + 32))(v13, v5, v6);
    sub_252E32C84();
    v29 = sub_252E32C64();
    v31 = v30;
    v32 = *(v7 + 8);
    v32(v11, v6);
    v39[0] = v29;
    v39[1] = v31;

    LOBYTE(v29) = sub_252E37144();

    if (v29)
    {
      sub_252ACECB0(v33);
    }

    v37 = 0x74756F68636E7570;
    v38 = 0xEA0000000000203ALL;
    MEMORY[0x2530AD570](v39[0], v39[1]);

    MEMORY[0x2530AD570](8236, 0xE200000000000000);
    MEMORY[0x2530AD570](v37, v38);

    v32(v13, v6);
  }

  MEMORY[0x2530AD570](41, 0xE100000000000000);
  return v40;
}

uint64_t sub_252ACECB0(uint64_t a1)
{
  v2 = v1[1];
  if ((v2 & 0x2000000000000000) == 0)
  {
    if ((*v1 & 0xFFFFFFFFFFFFLL) != 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  if ((v2 & 0xF00000000000000) == 0)
  {
    __break(1u);
    return MEMORY[0x2821FBE70](a1);
  }

LABEL_5:
  a1 = sub_252E37074();

  return MEMORY[0x2821FBE70](a1);
}

uint64_t TemperatureSnippetModel.stringId.getter()
{
  sub_252E379F4();

  strcpy(v10, "#primaryText: ");
  HIBYTE(v10[1]) = -18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  sub_252E330E4();
  MEMORY[0x2530AD570](v9[0], v9[1]);

  sub_252E379F4();

  v9[0] = 0xD000000000000010;
  v9[1] = 0x8000000252E77680;
  v0 = type metadata accessor for TemperatureSnippetModel();
  v1 = *(v0 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
  sub_252E330E4();
  if (v8)
  {
    v2 = v7;
  }

  else
  {
    v2 = 7104878;
  }

  if (v8)
  {
    v3 = v8;
  }

  else
  {
    v3 = 0xE300000000000000;
  }

  MEMORY[0x2530AD570](v2, v3);

  MEMORY[0x2530AD570](v9[0], v9[1]);

  strcpy(v9, "#isHeating: ");
  BYTE5(v9[1]) = 0;
  HIWORD(v9[1]) = -5120;
  v4 = *(v0 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B68, &qword_252E49240);
  sub_252E330E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5410E8, &qword_252E403C0);
  v5 = sub_252E36F94();
  MEMORY[0x2530AD570](v5);

  MEMORY[0x2530AD570](v9[0], v9[1]);

  return v10[0];
}

uint64_t sub_252ACEF98(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_252ACF038()
{
  sub_252ACF134();
  if (v0 <= 0x3F)
  {
    sub_25293017C(319, &qword_27F540120, &unk_27F541300, &qword_252E3C100);
    if (v1 <= 0x3F)
    {
      sub_25293017C(319, &qword_27F542E60, &qword_27F5410E8, &qword_252E403C0);
      if (v2 <= 0x3F)
      {
        sub_25293017C(319, &qword_27F542E68, &qword_27F540370, &qword_252E3C450);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_252ACF134()
{
  if (!qword_27F540118)
  {
    v0 = sub_252E33114();
    if (!v1)
    {
      atomic_store(v0, &qword_27F540118);
    }
  }
}

unint64_t sub_252ACF198()
{
  result = qword_27F542E70;
  if (!qword_27F542E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542E70);
  }

  return result;
}

unint64_t sub_252ACF1F0()
{
  result = qword_27F542E78;
  if (!qword_27F542E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542E78);
  }

  return result;
}

unint64_t sub_252ACF248()
{
  result = qword_27F542E80;
  if (!qword_27F542E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542E80);
  }

  return result;
}

uint64_t sub_252ACF29C()
{
  v0 = sub_252E37B74();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_252ACF2E8(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  v3 = sub_252E34014();
  v2[19] = v3;
  v4 = *(v3 - 8);
  v2[20] = v4;
  v5 = *(v4 + 64) + 15;
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252ACF3B4, 0, 0);
}

uint64_t sub_252ACF3B4()
{
  v1 = v0[18];
  v2 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v2 + 288), (v0 + 2));

  v3 = v0[5];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
  v5 = (*(v4 + 120))(v3, v4);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  if (v5)
  {
    v6 = v0[22];
    sub_252929E74(v1 + 64, (v0 + 12));
    v7 = v0[16];
    __swift_project_boxed_opaque_existential_1(v0 + 12, v0[15]);
    sub_252B03B94();
    v8 = swift_task_alloc();
    v0[23] = v8;
    *v8 = v0;
    v8[1] = sub_252ACF60C;
    v9 = v0[22];
    v10 = v0[17];
    v11 = v0[18];

    return sub_252A199A8(v10, &unk_252E49530, v11, &unk_252E49538, 0, v9, 0, 0);
  }

  else
  {
    v13 = v0[21];
    sub_252929E74(v1 + 64, (v0 + 7));
    v14 = v0[10];
    __swift_project_boxed_opaque_existential_1(v0 + 7, v14);
    sub_252AD7CC4();
    v15 = swift_task_alloc();
    v0[25] = v15;
    *v15 = v0;
    v15[1] = sub_252ACF7F0;
    v16 = v0[21];
    v17 = v0[17];
    v18 = v0[18];

    return sub_252BDB88C(v17, &unk_252E49520, v18, v16, 0, 0, 0, v14);
  }
}

uint64_t sub_252ACF60C()
{
  v2 = *(*v1 + 184);
  v3 = *(*v1 + 176);
  v4 = *(*v1 + 160);
  v5 = *(*v1 + 152);
  v8 = *v1;
  *(*v1 + 192) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_252ACF9D4;
  }

  else
  {
    v6 = sub_252ACF77C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_252ACF77C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  v2 = v0[21];
  v1 = v0[22];

  v3 = v0[1];

  return v3();
}

uint64_t sub_252ACF7F0()
{
  v2 = *(*v1 + 200);
  v3 = *(*v1 + 168);
  v4 = *(*v1 + 160);
  v5 = *(*v1 + 152);
  v8 = *v1;
  *(*v1 + 208) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_252ACFA48;
  }

  else
  {
    v6 = sub_252ACF960;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_252ACF960()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v2 = v0[21];
  v1 = v0[22];

  v3 = v0[1];

  return v3();
}

uint64_t sub_252ACF9D4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  v1 = v0[24];
  v3 = v0[21];
  v2 = v0[22];

  v4 = v0[1];

  return v4();
}

uint64_t sub_252ACFA48()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v1 = v0[26];
  v3 = v0[21];
  v2 = v0[22];

  v4 = v0[1];

  return v4();
}

uint64_t sub_252ACFADC()
{
  v0[3] = *(v0[2] + 104);
  v1 = *(MEMORY[0x277D55C70] + 4);
  v5 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);

  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_252ACFBBC;
  v3 = MEMORY[0x277D84F90];

  return v5(0xD000000000000027, 0x8000000252E6DD70, v3);
}

uint64_t sub_252ACFBBC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_252ACFD14, 0, 0);
  }

  else
  {
    v7 = *(v4 + 24);

    v8 = *(v6 + 8);

    return v8(a1);
  }
}

uint64_t sub_252ACFD14()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[5];

  return v2();
}

uint64_t sub_252ACFD98()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for HomeAutomationSnippetModels();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_252ACFE38(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for HomeAutomationUnsupportedOnDeviceErrorParameters(0);
  v1[3] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252ACFECC, 0, 0);
}

uint64_t sub_252ACFECC()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = *__swift_project_boxed_opaque_existential_1((v0[2] + 16), *(v0[2] + 40));
  v4 = sub_252E36324();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  *(v1 + *(v2 + 20)) = 0;
  v5 = v1 + *(v2 + 24);
  *v5 = 0x4008000000000000;
  *(v5 + 8) = 0;
  v6 = sub_252C0B2D8();
  v0[5] = v6;
  v7 = *(MEMORY[0x277D55BE8] + 4);
  v10 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v8 = swift_task_alloc();
  v0[6] = v8;
  *v8 = v0;
  v8[1] = sub_252AD0014;

  return v10(0xD000000000000027, 0x8000000252E6DD70, v6);
}

uint64_t sub_252AD0014(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *(*v2 + 40);
  v7 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v8 = sub_252AD01D4;
  }

  else
  {
    *(v4 + 64) = a1;
    v8 = sub_252AD0160;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_252AD0160()
{
  sub_252AD078C(v0[4]);

  v1 = v0[1];
  v2 = v0[8];

  return v1(v2);
}

uint64_t sub_252AD01D4()
{
  sub_252AD078C(v0[4]);

  v1 = v0[1];
  v2 = v0[7];

  return v1();
}

uint64_t sub_252AD0244()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[7];

  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  v2 = v0[13];

  return swift_deallocClassInstance();
}

uint64_t sub_252AD02B8(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x2822009F8](sub_252AD02E0, 0, 0);
}

uint64_t sub_252AD02E0()
{
  v1 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542E88, &qword_252E49510);
  v0[5] = sub_252E34034();
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_252AD0398;
  v3 = v0[4];
  v4 = v0[2];

  return sub_252ACF2E8(v4);
}

uint64_t sub_252AD0398()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_252AD04AC;
  }

  else
  {
    v3 = sub_252A8F3B0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252AD04AC()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 56);

  return v1();
}

uint64_t sub_252AD0530()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542E88, &qword_252E49510);
  v2 = sub_252E34024();
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_252AD05A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B4C8] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for ShowHomeUnsupportedValueFlowStrategy();
  *v9 = v4;
  v9[1] = sub_25293B808;

  return MEMORY[0x2821B9E00](a1, a2, v10, a4);
}

uint64_t sub_252AD066C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_25294B958;

  return sub_252ACFE38(v0);
}

uint64_t sub_252AD06FC()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_25294B7BC;

  return sub_252ACFABC(v0);
}

uint64_t sub_252AD078C(uint64_t a1)
{
  v2 = type metadata accessor for HomeAutomationUnsupportedOnDeviceErrorParameters(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_252AD07E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[38] = a6;
  v7[39] = a7;
  v7[36] = a4;
  v7[37] = a5;
  return MEMORY[0x2822009F8](sub_252AD080C, 0, 0);
}

char *sub_252AD080C()
{
  v144 = v0;
  type metadata accessor for HomeStore();
  v1 = static HomeStore.shared.getter();
  v2 = v1[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded];
  if (v2 != 2 && (v2 & 1) == 0 || (v3 = [*(v0 + 288) filters]) == 0)
  {

    goto LABEL_7;
  }

  v4 = v3;
  v5 = *(v0 + 288);
  type metadata accessor for HomeFilter();
  v6 = sub_252E37264();

  v7 = [v5 userTask];
  v8 = HomeStore.accessories(matching:supporting:)(v6, v7);
  LOBYTE(v5) = v9;

  if (v5)
  {
    sub_252929F10(v8, 1);
LABEL_7:
    v11 = *(v0 + 296);
    v10 = *(v0 + 304);
    v12 = [objc_allocWithZone(type metadata accessor for ControlHomeIntentResponse()) init];
    v13 = OBJC_IVAR___ControlHomeIntentResponse_code;
    swift_beginAccess();
    *&v12[v13] = 102;
    [v12 setUserActivity_];
    type metadata accessor for HomeEntityResponse();
    v14 = sub_252E37254();
    [v12 setEntityResponses_];

    v11(v12);
    goto LABEL_8;
  }

  if (v8 >> 62)
  {
LABEL_95:
    v17 = sub_252E378C4();
  }

  else
  {
    v17 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v18 = 0;
  v19 = v8 & 0xC000000000000001;
  v20 = v8 + 32;
  do
  {
    v21 = v18;
    if (v17 == v18)
    {
      break;
    }

    if (v19)
    {
      v22 = MEMORY[0x2530ADF00](v18, v8);
      if (__OFADD__(v21, 1))
      {
LABEL_22:
        __break(1u);
        break;
      }
    }

    else
    {
      if (v18 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
        goto LABEL_95;
      }

      v22 = *(v8 + 8 * v18 + 32);

      if (__OFADD__(v21, 1))
      {
        goto LABEL_22;
      }
    }

    v23 = (*(*v22 + 256))();

    v18 = v21 + 1;
  }

  while (v23 != 3);
  v24 = 0;
  do
  {
    v25 = v24;
    if (v17 == v24)
    {
      break;
    }

    if (v19)
    {
      v26 = MEMORY[0x2530ADF00](v24, v8);
      if (__OFADD__(v25, 1))
      {
        goto LABEL_32;
      }
    }

    else
    {
      if (v24 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_93;
      }

      v26 = *(v8 + 8 * v24 + 32);

      if (__OFADD__(v25, 1))
      {
LABEL_32:
        __break(1u);
        break;
      }
    }

    v27 = (*(*v26 + 256))();

    v24 = v25 + 1;
  }

  while (v27 != 29);
  if (!v17)
  {
LABEL_48:
    v140 = 1;
    goto LABEL_49;
  }

  v28 = 0;
  while (v19)
  {
    MEMORY[0x2530ADF00](v28, v8);
    v30 = __OFADD__(v28++, 1);
    if (v30)
    {
      goto LABEL_46;
    }

LABEL_38:
    v31 = sub_252D4F520();
    v32 = *(v31 + 2);
    v33 = 32;
    while (v32)
    {
      v34 = *&v31[v33];
      v33 += 8;
      --v32;
      if (v34 == 6)
      {
        goto LABEL_47;
      }
    }

    v20 = v8 + 32;
    if (v28 == v17)
    {
      goto LABEL_48;
    }
  }

  if (v28 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_94;
  }

  v29 = *(v20 + 8 * v28);

  v30 = __OFADD__(v28++, 1);
  if (!v30)
  {
    goto LABEL_38;
  }

LABEL_46:
  __break(1u);
LABEL_47:

  v140 = 0;
LABEL_49:
  sub_252929F10(v8, 0);
  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v138 = *(v0 + 288);
  v35 = sub_252E36AD4();
  __swift_project_value_buffer(v35, qword_27F544C70);
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000014, 0x8000000252E6D370);
  if (v17 == v21)
  {
    v36 = 0x65736C6166;
  }

  else
  {
    v36 = 1702195828;
  }

  if (v17 == v21)
  {
    v37 = 0xE500000000000000;
  }

  else
  {
    v37 = 0xE400000000000000;
  }

  MEMORY[0x2530AD570](v36, v37);

  MEMORY[0x2530AD570](0xD000000000000018, 0x8000000252E6D390);
  if (v17 == v25)
  {
    v38 = 0x65736C6166;
  }

  else
  {
    v38 = 1702195828;
  }

  if (v17 == v25)
  {
    v39 = 0xE500000000000000;
  }

  else
  {
    v39 = 0xE400000000000000;
  }

  MEMORY[0x2530AD570](v38, v39);

  MEMORY[0x2530AD570](0xD000000000000021, 0x8000000252E79130);
  if (v140)
  {
    v40 = 0x65736C6166;
  }

  else
  {
    v40 = 1702195828;
  }

  if (v140)
  {
    v41 = 0xE500000000000000;
  }

  else
  {
    v41 = 0xE400000000000000;
  }

  MEMORY[0x2530AD570](v40, v41);

  sub_252CC3D90(0, 0xE000000000000000, 0xD0000000000000A1, 0x8000000252E79160);

  v42 = sub_252C42B30(v138);
  if (!v42)
  {
    goto LABEL_98;
  }

  v43 = v42;
  v44 = v42 >> 62;
  if (v42 >> 62)
  {
    if (!sub_252E378C4())
    {
      goto LABEL_97;
    }

LABEL_72:
    v45 = *(v0 + 288);
    v46 = sub_252A1F47C();
    if (!v46)
    {
      v58 = *(v0 + 296);
      v57 = *(v0 + 304);

      sub_252CC4050(0xD00000000000003ELL, 0x8000000252E6F2A0, 0xD0000000000000A1, 0x8000000252E79160, 0xD000000000000021, 0x8000000252E68B10, 79);
      type metadata accessor for ControlHomeIntentResponse.Builder();
      v59 = swift_allocObject();
      v60 = MEMORY[0x277D84F90];
      *(v59 + 16) = 5;
      *(v59 + 24) = v60;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CC0, &unk_252E3E530);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_252E3C290;
      type metadata accessor for HomeEntity.Builder();
      swift_allocObject();
      v62.n128_f64[0] = HomeEntity.Builder.init()();
      v64 = (*(*v63 + 448))(v62);

      v65 = objc_allocWithZone(type metadata accessor for HomeEntityResponse());
      v66 = v64;
      v67 = sub_252E36F04();
      v68 = [v65 initWithIdentifier:0 displayString:v67];

      v69 = v68;
      [v69 setEntity_];
      type metadata accessor for HomeUserTaskResponse();
      v70 = sub_252E37254();
      [v69 setTaskResponses_];

      *(inited + 32) = v69;
      v71 = sub_25297D0C0(inited);

      swift_setDeallocating();
      v72 = sub_25298AB24(inited + 32);
      v12 = (*(*v71 + 176))(v72);

      v73 = v12;
      goto LABEL_99;
    }

    *(v0 + 248) = v46;
    sub_25297BC94(&unk_2864AC108);

    v47 = sub_252E36AC4();
    v48 = sub_252E374C4();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v139 = swift_slowAlloc();
      v143 = v139;
      *v49 = 136315394;
      swift_beginAccess();
      v50 = *(v0 + 248);

      v52 = MEMORY[0x2530AD730](v51, &type metadata for AttributeKind);
      v54 = v53;

      v55 = sub_252BE2CE0(v52, v54, &v143);

      *(v49 + 4) = v55;
      *(v49 + 12) = 2080;
      if (v44)
      {
        v56 = sub_252E378C4();
      }

      else
      {
        v56 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v74 = MEMORY[0x277D84F90];
      if (v56)
      {
        v136 = v48;
        v137 = v49;
        v142 = MEMORY[0x277D84F90];
        result = sub_2529AA3A0(0, v56 & ~(v56 >> 63), 0);
        if (v56 < 0)
        {
          __break(1u);
          return result;
        }

        v75 = 0;
        v74 = v142;
        v141 = v43 & 0xC000000000000001;
        v76 = v43;
        do
        {
          if (v141)
          {
            MEMORY[0x2530ADF00](v75, v43);
          }

          else
          {
            v77 = *(v43 + 8 * v75 + 32);
          }

          v78 = sub_252A96AFC();
          v80 = v79;

          v82 = *(v142 + 16);
          v81 = *(v142 + 24);
          if (v82 >= v81 >> 1)
          {
            sub_2529AA3A0((v81 > 1), v82 + 1, 1);
          }

          ++v75;
          *(v142 + 16) = v82 + 1;
          v83 = v142 + 16 * v82;
          *(v83 + 32) = v78;
          *(v83 + 40) = v80;
          v43 = v76;
        }

        while (v56 != v75);
        v49 = v137;
        v48 = v136;
      }

      v84 = MEMORY[0x2530AD730](v74, MEMORY[0x277D837D0]);
      v86 = v85;

      v87 = sub_252BE2CE0(v84, v86, &v143);

      *(v49 + 14) = v87;
      _os_log_impl(&dword_252917000, v47, v48, "Performing GetAttributeValueIntent with:\n   - attributeTypes: %s\n   - deviceEntities %s", v49, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2530AED00](v139, -1, -1);
      MEMORY[0x2530AED00](v49, -1, -1);
    }

    v88 = *(v0 + 288);
    swift_beginAccess();
    v89 = *(v0 + 248);
    *(v0 + 320) = v89;

    v90 = sub_252C4E384();
    v92 = v91;
    v93 = ControlHomeIntent.roomNames()();
    v94 = sub_252C4D390();
    *(v0 + 256) = v89;
    v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540D00, &unk_252E3E580);
    v96 = *(v95 + 48);
    v97 = *(v95 + 52);
    swift_allocObject();
    v98 = sub_252E36754();
    *(v0 + 328) = v98;
    *(v0 + 264) = v43;
    v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CE0, &unk_252E3E550);
    v100 = *(v99 + 48);
    v101 = *(v99 + 52);
    swift_allocObject();
    v102 = sub_252E36754();
    *(v0 + 336) = v102;
    *(v0 + 216) = v90;
    *(v0 + 224) = v92;
    v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CE8, &unk_252E3F910);
    v104 = *(v103 + 48);
    v105 = *(v103 + 52);
    swift_allocObject();
    v106 = sub_252E36754();
    *(v0 + 344) = v106;
    *(v0 + 272) = v93;
    v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CF0, &unk_252E3E560);
    v108 = *(v107 + 48);
    v109 = *(v107 + 52);
    swift_allocObject();
    v110 = sub_252E36754();
    *(v0 + 352) = v110;
    *(v0 + 280) = v94;
    v111 = *(v107 + 48);
    v112 = *(v107 + 52);
    swift_allocObject();
    v113 = sub_252E36754();
    *(v0 + 360) = v113;
    *(v0 + 232) = 0x401C000000000000;
    *(v0 + 240) = 0;
    v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CF8, &qword_252E3F920);
    v115 = *(v114 + 48);
    v116 = *(v114 + 52);
    swift_allocObject();
    v117 = sub_252E36754();
    *(v0 + 368) = v117;
    *(v0 + 16) = v98;
    *(v0 + 24) = v102;
    *(v0 + 32) = v106;
    *(v0 + 40) = v110;
    *(v0 + 48) = v113;
    *(v0 + 56) = v117;
    v118 = swift_task_alloc();
    *(v0 + 376) = v118;
    *v118 = v0;
    v118[1] = sub_252AD16E0;
    v119 = *(v0 + 312);
    v120 = *(v0 + 288);

    return sub_2529BC1C0((v0 + 16), v120, 0, 1);
  }

  else
  {
    if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_72;
    }

LABEL_97:

LABEL_98:
    v58 = *(v0 + 296);
    v121 = *(v0 + 304);
    sub_252CC4050(0xD000000000000024, 0x8000000252E6F1F0, 0xD0000000000000A1, 0x8000000252E79160, 0xD000000000000021, 0x8000000252E68B10, 69);
    type metadata accessor for ControlHomeIntentResponse.Builder();
    v122 = swift_allocObject();
    v123 = MEMORY[0x277D84F90];
    *(v122 + 16) = 102;
    *(v122 + 24) = v123;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CC0, &unk_252E3E530);
    v124 = swift_initStackObject();
    *(v124 + 16) = xmmword_252E3C290;
    type metadata accessor for HomeEntity.Builder();
    swift_allocObject();
    v125.n128_f64[0] = HomeEntity.Builder.init()();
    v127 = (*(*v126 + 448))(v125);

    v128 = objc_allocWithZone(type metadata accessor for HomeEntityResponse());
    v129 = v127;
    v130 = sub_252E36F04();
    v131 = [v128 initWithIdentifier:0 displayString:v130];

    v132 = v131;
    [v132 setEntity_];
    type metadata accessor for HomeUserTaskResponse();
    v133 = sub_252E37254();
    [v132 setTaskResponses_];

    *(v124 + 32) = v132;
    v134 = sub_25297D0C0(v124);

    swift_setDeallocating();
    v135 = sub_25298AB24(v124 + 32);
    v12 = (*(*v134 + 176))(v135);

    v73 = v12;
LABEL_99:
    v58(v73);
LABEL_8:

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_252AD16E0(uint64_t a1)
{
  v2 = *(*v1 + 376);
  v3 = *(*v1 + 368);
  v4 = *(*v1 + 360);
  v5 = *(*v1 + 352);
  v6 = *(*v1 + 344);
  v7 = *(*v1 + 336);
  v8 = *(*v1 + 328);
  v10 = *v1;
  *(*v1 + 384) = a1;

  return MEMORY[0x2822009F8](sub_252AD189C, 0, 0);
}

uint64_t sub_252AD189C()
{
  v1 = *(v0 + 384);
  v2 = *(v0 + 320);
  v3 = *(v0 + 304);
  (*(v0 + 296))(v1);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_252AD1944(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CB8, &qword_252E3F8D0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v15 - v9;
  v11 = sub_252E37344();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a1;
  v12[5] = a2;
  v12[6] = a3;
  v12[7] = v3;
  v13 = a1;

  sub_2529D89C4(0, 0, v10, &unk_252E49590, v12);
}

uint64_t sub_252AD1A70()
{
  type metadata accessor for GetClimateControlAppIntentHandleDelegate();

  return swift_allocObject();
}

uint64_t sub_252AD1AA0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_25293B808;

  return sub_252AD07E8(a1, v4, v5, v6, v7, v9, v8);
}

void *sub_252AD1B74(void *key, uint64_t a2, char a3, uint64_t a4, char a5)
{
  v6 = v5;
  v10 = key;
  if (objc_getAssociatedObject(v6, key))
  {
    sub_252E377F4();
    swift_unknownObjectRelease();
  }

  else
  {
    v37 = 0u;
    v38 = 0u;
  }

  v39[0] = v37;
  v39[1] = v38;
  if (*(&v38 + 1))
  {
    type metadata accessor for HomeAutomationHumidityResponses();
    if (swift_dynamicCast())
    {
      return v36;
    }
  }

  else
  {
    sub_252982F10(v39);
  }

  v12 = v6[3];
  *&v39[0] = MEMORY[0x277D84F90];
  if (v12 >> 62)
  {
    goto LABEL_45;
  }

  v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v13)
  {
LABEL_10:
    v30 = v10;
    v31 = v6;
    v14 = 0;
    v33 = v12 & 0xFFFFFFFFFFFFFF8;
    v34 = v12 & 0xC000000000000001;
    v29 = v12;
    v32 = v12 + 32;
    v15 = *&a2;
    v16 = *&a4;
    do
    {
      if (v34)
      {
        a2 = MEMORY[0x2530ADF00](v14, v29);
        v18 = __OFADD__(v14++, 1);
        if (v18)
        {
          goto LABEL_43;
        }
      }

      else
      {
        if (v14 >= *(v33 + 16))
        {
          goto LABEL_44;
        }

        a2 = *(v32 + 8 * v14);

        v18 = __OFADD__(v14++, 1);
        if (v18)
        {
          goto LABEL_43;
        }
      }

      v10 = v13;
      a4 = *(a2 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_states);
      if (a4 >> 62)
      {
        if (a4 < 0)
        {
          v26 = *(a2 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_states);
        }

        v19 = sub_252E378C4();
      }

      else
      {
        v19 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v19)
      {
        v20 = 0;
        v6 = (a4 & 0xFFFFFFFFFFFFFF8);
        do
        {
          if ((a4 & 0xC000000000000001) != 0)
          {
            v22 = MEMORY[0x2530ADF00](v20, a4);
            v12 = v20 + 1;
            if (__OFADD__(v20, 1))
            {
              goto LABEL_41;
            }
          }

          else
          {
            if (v20 >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_42;
            }

            v21 = *(a4 + 8 * v20 + 32);

            v12 = v20 + 1;
            if (__OFADD__(v20, 1))
            {
LABEL_41:
              __break(1u);
LABEL_42:
              __break(1u);
LABEL_43:
              __break(1u);
LABEL_44:
              __break(1u);
LABEL_45:
              v13 = sub_252E378C4();
              if (!v13)
              {
                goto LABEL_46;
              }

              goto LABEL_10;
            }
          }

          v23 = *(v22 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue);
          if (!v23 || (v24 = *(v23 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue)) == 0 || (*(v24 + 32) & 1) != 0 || (v25 = *(v24 + 24), a3 & 1 | (v25 >= v15)) && a5 & 1 | (v25 < v16))
          {

            sub_252E37A94();
            v17 = *(*&v39[0] + 16);
            sub_252E37AC4();
            sub_252E37AD4();
            a4 = v39;
            sub_252E37AA4();
            goto LABEL_12;
          }

          ++v20;
        }

        while (v12 != v19);
      }

LABEL_12:
      v13 = v10;
    }

    while (v14 != v10);
    v27 = *&v39[0];
    v10 = v30;
    v6 = v31;
  }

  else
  {
LABEL_46:
    v27 = MEMORY[0x277D84F90];
  }

  type metadata accessor for HomeAutomationHumidityResponses();
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = v27;
  objc_setAssociatedObject(v6, v10, v11, 1);
  return v11;
}

uint64_t sub_252AD1EC8(uint64_t a1, unint64_t a2)
{
  v4 = sub_252E32A64();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {
    v10 = 0;
    v23 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v24 = a2 & 0xFFFFFFFFFFFFFFLL;
    v11 = (v6 + 8);
    while (1)
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        sub_252E379E4();
        v15 = v14;
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v25[0] = a1;
          v25[1] = v24;
          v13 = v25 + v10;
        }

        else
        {
          v12 = v23;
          if ((a1 & 0x1000000000000000) == 0)
          {
            v12 = sub_252E37A84();
          }

          v13 = (v12 + v10);
        }

        v16 = *v13;
        if ((*v13 & 0x80000000) == 0)
        {
          goto LABEL_14;
        }

        v18 = (__clz(v16 ^ 0xFF) - 24);
        if (v18 > 2)
        {
          if (v18 == 3)
          {
            v20 = ((v16 & 0xF) << 12) | ((v13[1] & 0x3F) << 6) | v13[2] & 0x3Fu;
            v15 = 3;
          }

          else
          {
            v21 = ((v16 & 0xF) << 18) | ((v13[1] & 0x3F) << 12) | ((v13[2] & 0x3F) << 6) | v13[3] & 0x3Fu;
            v15 = 4;
          }

          goto LABEL_15;
        }

        if (v18 == 1)
        {
LABEL_14:
          v15 = 1;
        }

        else
        {
          v19 = v13[1] & 0x3F | ((v16 & 0x1F) << 6);
          v15 = 2;
        }
      }

LABEL_15:
      sub_252E32A24();
      v17 = sub_252E32A54();
      (*v11)(v8, v4);
      if ((v17 & 1) == 0)
      {
        v10 += v15;
        if (v10 < v9)
        {
          continue;
        }
      }

      return v17 & 1;
    }
  }

  v17 = 0;
  return v17 & 1;
}

uint64_t sub_252AD20F4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_252AD2138(char *a1)
{
  v2 = sub_252E34164();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_252E341A4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2);
  if ((*(v3 + 88))(v6, v2) == *MEMORY[0x277D5C160])
  {
    (*(v3 + 96))(v6, v2);
    (*(v8 + 32))(v11, v6, v7);
    strcpy(v23, ".uso parse: ");
    BYTE5(v23[1]) = 0;
    HIWORD(v23[1]) = -5120;
    sub_252E344B4();
    v21 = sub_252E34284();
    v22 = sub_252AD6720(&qword_27F542FF8, MEMORY[0x277D5DB08]);
    __swift_allocate_boxed_opaque_existential_0(&v19);
    sub_252E34184();
    v12 = sub_252E344A4();
    v14 = v13;
    __swift_destroy_boxed_opaque_existential_1(&v19);
    MEMORY[0x2530AD570](v12, v14);

    v19 = v23[0];
    v20 = v23[1];
    v15 = sub_252E37184();
    (*(v3 + 8))(a1, v2);
    (*(v8 + 8))(v11, v7);
  }

  else
  {
    v16 = *(v3 + 8);
    v16(v6, v2);
    v19 = 0;
    v20 = 0xE000000000000000;
    sub_252E37AE4();
    v15 = sub_252E37184();
    v16(a1, v2);
  }

  return v15;
}

uint64_t sub_252AD24A4()
{

  v0 = sub_252E37164();
  v2 = v1;
  sub_252947DBC();
  v3 = sub_252E377D4();
  v4 = *(v3 + 16);
  if (v4)
  {
    v16 = MEMORY[0x277D84F90];
    sub_2529AA3A0(0, v4, 0);
    v5 = (v3 + 56);
    do
    {
      v6 = *(v5 - 3);
      v7 = *(v5 - 2);
      v8 = *(v5 - 1);
      v9 = *v5;

      v10 = MEMORY[0x2530AD4C0](v6, v7, v8, v9);
      MEMORY[0x2530AD570](v10);

      v12 = *(v16 + 16);
      v11 = *(v16 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_2529AA3A0((v11 > 1), v12 + 1, 1);
      }

      *(v16 + 16) = v12 + 1;
      v13 = v16 + 16 * v12;
      *(v13 + 32) = v0;
      *(v13 + 40) = v2;
      v5 += 4;
      --v4;
    }

    while (v4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540480, &qword_252E3C910);
  sub_2529E6488(&qword_27F541110, &qword_27F540480, &qword_252E3C910);
  v14 = sub_252E36EA4();

  return v14;
}

uint64_t sub_252AD26C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_252E32A64();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1;
  v18 = a2;
  sub_252E32A44();
  sub_252947DBC();
  v9 = sub_252E37784();
  v10 = *(v5 + 8);
  v10(v8, v4);
  v17 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540480, &qword_252E3C910);
  sub_2529E6488(&qword_27F541110, &qword_27F540480, &qword_252E3C910);
  v11 = sub_252E36EA4();
  v13 = v12;

  v17 = v11;
  v18 = v13;
  sub_252E32A34();
  v14 = sub_252E37784();
  v10(v8, v4);

  v17 = v14;
  sub_252E36EA4();

  v15 = sub_252E36FA4();

  return v15;
}

BOOL sub_252AD28DC()
{
  sub_252E36FA4();
  sub_252947DBC();
  v0 = sub_252E37794();

  v1 = sub_252C75848(v0);

  sub_252E36FA4();
  v2 = sub_252E37794();

  v3 = sub_252C75848(v2);

  v4 = sub_252DFABF8(v1, v3);

  v5 = v4[2];
  if (v5)
  {
    if (v5 <= *(v3 + 16) >> 3)
    {
      sub_2529AAA28(v4);
    }

    else
    {
      v3 = sub_2529AB8D0(v4, v3);
    }

    v7 = *(v3 + 16);

    return v7 == 0;
  }

  else
  {

    return 0;
  }
}

void *sub_252AD2A70(uint64_t a1, void *a2, uint64_t a3)
{
  v44 = sub_252E32A64();
  v6 = *(v44 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v44);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return MEMORY[0x277D84F90];
  }

  v10 = *(a1 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v45 = a2;
    v46 = a3;
    v47 = 44;
    v48 = 0xE100000000000000;
    v43 = sub_252947DBC();
    v12 = sub_252E37794();
    v13 = *(v12 + 16);
    if (v13)
    {
      v41 = a1;
      v47 = v11;
      sub_2529AA3A0(0, v13, 0);
      v14 = v47;
      v42 = (v6 + 8);
      v40 = v12;
      v15 = (v12 + 40);
      do
      {
        v16 = *v15;
        v45 = *(v15 - 1);
        v46 = v16;

        sub_252E32A44();
        sub_252E377A4();
        (*v42)(v9, v44);
        v17 = sub_252E36FA4();
        v19 = v18;

        v47 = v14;
        v21 = *(v14 + 16);
        v20 = *(v14 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_2529AA3A0((v20 > 1), v21 + 1, 1);
          v14 = v47;
        }

        *(v14 + 16) = v21 + 1;
        v22 = v14 + 16 * v21;
        *(v22 + 32) = v17;
        *(v22 + 40) = v19;
        v15 += 2;
        --v13;
      }

      while (v13);

      a1 = v41;
      v11 = MEMORY[0x277D84F90];
    }

    else
    {

      v14 = MEMORY[0x277D84F90];
    }

    v23 = sub_252C75848(v14);

    v45 = v11;
    sub_2529AA3A0(0, v10, 0);
    v24 = v45;
    v25 = (a1 + 40);
    do
    {
      v26 = *(v25 - 1);
      v27 = *v25;
      v28 = sub_252E36FA4();
      v45 = v24;
      v31 = *(v24 + 16);
      v30 = *(v24 + 24);
      if (v31 >= v30 >> 1)
      {
        v33 = v28;
        v34 = v29;
        sub_2529AA3A0((v30 > 1), v31 + 1, 1);
        v29 = v34;
        v28 = v33;
        v24 = v45;
      }

      *(v24 + 16) = v31 + 1;
      v32 = v24 + 16 * v31;
      *(v32 + 32) = v28;
      *(v32 + 40) = v29;
      v25 += 2;
      --v10;
    }

    while (v10);
    v35 = sub_252C75848(v24);

    v36 = sub_252DFABF8(v35, v23);

    v37 = v36[2];
    if (!v37)
    {
      goto LABEL_17;
    }

    v11 = sub_252DFA3E0(v36[2], 0);
    v38 = sub_252E082D0(&v45, v11 + 4, v37, v36);
    sub_25297DEB0();
    if (v38 != v37)
    {
      __break(1u);
LABEL_17:

      return MEMORY[0x277D84F90];
    }
  }

  return v11;
}

Swift::String __swiftcall String.capitalizeFirstLetter()()
{
  v2 = v1;
  v3 = v0;
  v4 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v4 = v0 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    sub_252E37174();
    v5 = sub_252E36FC4();
    v7 = v6;

    v3 = sub_252AD52A0(0xFuLL, 15, v5, v7, v3, v2);
    v2 = v8;
  }

  else
  {
  }

  v9 = v3;
  v10 = v2;
  result._object = v10;
  result._countAndFlagsBits = v9;
  return result;
}

uint64_t parallelize(qos:tasks:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v42 = sub_252E36CA4();
  v35 = *(v42 - 8);
  v5 = *(v35 + 64);
  MEMORY[0x28223BE20](v42);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_252E36D04();
  v34 = *(v39 - 8);
  v8 = *(v34 + 64);
  MEMORY[0x28223BE20](v39);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = dispatch_group_create();
  sub_25293F638(0, &qword_2814B0218, 0x277D85C78);
  v40 = sub_252E375A4();
  v11 = *(a2 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v13 = (a2 + 32);
    v37 = (v35 + 8);
    v38 = &v47;
    v36 = (v34 + 8);
    do
    {
      v43 = v11;
      v14 = swift_allocObject();
      v15 = *v13++;
      *(v14 + 16) = v15;

      v16 = v41;
      dispatch_group_enter(v41);
      v17 = swift_allocObject();
      v17[2] = sub_252AD55C4;
      v17[3] = v14;
      v17[4] = v16;
      v49 = sub_252AD55CC;
      v50 = v17;
      aBlock = MEMORY[0x277D85DD0];
      v46 = 1107296256;
      v47 = sub_252AD686C;
      v48 = &block_descriptor_8;
      v18 = _Block_copy(&aBlock);

      v19 = v16;
      sub_252E36CD4();
      v44 = v12;
      sub_252AD6720(qword_2814B0298, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402F8, &qword_252E3E860);
      sub_2529E6488(&qword_2814B0280, &qword_27F5402F8, &qword_252E3E860);
      v20 = v7;
      v21 = v42;
      sub_252E37824();
      MEMORY[0x2530ADA30](0, v10, v20, v18);
      _Block_release(v18);

      v22 = v21;
      v7 = v20;
      v23 = v39;
      (*v37)(v20, v22);
      (*v36)(v10, v23);

      v11 = v43 - 1;
    }

    while (v43 != 1);
  }

  v24 = swift_allocObject();
  v25 = v33;
  *(v24 + 16) = v32;
  *(v24 + 24) = v25;
  v49 = sub_252AD55F0;
  v50 = v24;
  aBlock = MEMORY[0x277D85DD0];
  v46 = 1107296256;
  v47 = sub_252AD686C;
  v48 = &block_descriptor_9;
  v26 = _Block_copy(&aBlock);

  sub_252E36CD4();
  v44 = v12;
  sub_252AD6720(qword_2814B0298, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402F8, &qword_252E3E860);
  sub_2529E6488(&qword_2814B0280, &qword_27F5402F8, &qword_252E3E860);
  v27 = v10;
  v28 = v42;
  sub_252E37824();
  v30 = v40;
  v29 = v41;
  sub_252E37514();
  _Block_release(v26);

  (*(v35 + 8))(v7, v28);
  (*(v34 + 8))(v27, v39);
}

uint64_t sub_252AD33E4(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v8[0] = sub_252AD6770;
  v8[1] = v6;

  a3(v8);
}

uint64_t sub_252AD3480(void (*a1)(void (*)(), uint64_t), uint64_t a2, void *a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  v6 = a3;
  a1(sub_252AD6768, v5);
}

uint64_t sub_252AD3504(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v24 = MEMORY[0x277D84F90];
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_43:
    v5 = sub_252E378C4();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  while (v5 != v6)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x2530ADF00](v6, v3);
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_39;
      }
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        goto LABEL_40;
      }

      v8 = *(v3 + 8 * v6 + 32);

      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }
    }

    v10 = (*(*v8 + 160))();

    ++v6;
    if (v10)
    {
      MEMORY[0x2530AD700](v11);
      if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v12 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      sub_252E372D4();
      v7 = v24;
      v6 = v9;
    }
  }

  v3 = sub_252C7600C(v7);

  v24 = MEMORY[0x277D84F90];
  v4 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
    v13 = sub_252E378C4();
  }

  else
  {
    v13 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = 0;
  v15 = MEMORY[0x277D84F90];
  while (v13 != v14)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v16 = MEMORY[0x2530ADF00](v14, a2);
      v17 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        goto LABEL_41;
      }
    }

    else
    {
      if (v14 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_42;
      }

      v16 = *(a2 + 8 * v14 + 32);

      v17 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        goto LABEL_41;
      }
    }

    v18 = (*(*v16 + 160))();

    ++v14;
    if (v18)
    {
      MEMORY[0x2530AD700](v19);
      if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v20 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      sub_252E372D4();
      v15 = v24;
      v14 = v17;
    }
  }

  v21 = sub_252C7600C(v15);

  if ((v3 & 0xC000000000000001) != 0)
  {
    if (!sub_252E378C4())
    {
      goto LABEL_37;
    }
  }

  else if (!*(v3 + 16))
  {
    goto LABEL_37;
  }

  if ((v21 & 0xC000000000000001) == 0)
  {
    if (*(v21 + 16))
    {
      goto LABEL_35;
    }

LABEL_37:
    v22 = 0;
    goto LABEL_38;
  }

  if (!sub_252E378C4())
  {
    goto LABEL_37;
  }

LABEL_35:
  v22 = sub_2529A96F0(v3, v21);
LABEL_38:

  return v22 & 1;
}

uint64_t sub_252AD3840(unint64_t a1, unint64_t a2)
{
  v4 = sub_252E32A64();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
    goto LABEL_13;
  }

  sub_252E32A14();
  v10 = sub_252AD5CB4(0xFuLL, a1, a2);
  if ((a2 & 0x1000000000000000) != 0)
  {
    sub_252E379E4();
  }

  else
  {
    v11 = v10 >> 16;
    if ((a2 & 0x2000000000000000) != 0)
    {
      v23 = a1;
      v24 = a2 & 0xFFFFFFFFFFFFFFLL;
      v13 = &v23 + v11;
    }

    else
    {
      v12 = (a1 & 0x1000000000000000) != 0 ? (a2 & 0xFFFFFFFFFFFFFFFLL) + 32 : sub_252E37A84();
      v13 = (v12 + v11);
    }

    v14 = *v13;
    if (*v13 < 0)
    {
      v18 = (__clz(v14 ^ 0xFF) - 24);
      if (v18 > 2)
      {
        if (v18 == 3)
        {
          v20 = ((v14 & 0xF) << 12) | ((v13[1] & 0x3F) << 6) | v13[2] & 0x3Fu;
        }

        else
        {
          v21 = ((v14 & 0xF) << 18) | ((v13[1] & 0x3F) << 12) | ((v13[2] & 0x3F) << 6) | v13[3] & 0x3Fu;
        }
      }

      else if (v18 != 1)
      {
        v19 = v13[1] & 0x3F | ((v14 & 0x1F) << 6);
      }
    }
  }

  v15 = sub_252E32A54();
  (*(v5 + 8))(v8, v4);
  if ((v15 & 1) != 0 && (v23 = a1, v24 = a2, v22[2] = 32, v22[3] = 0xE100000000000000, sub_252947DBC(), (sub_252E377C4() & 1) == 0))
  {
    v16 = sub_252AD1EC8(a1, a2);
  }

  else
  {
LABEL_13:
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_252AD3A74(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((a4 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a4) & 0xF;
  }

  else
  {
    v6 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    v27 = a4 & 0xFFFFFFFFFFFFFFLL;
    v24 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;

    v9 = 0;
    while (1)
    {
      if ((a4 & 0x1000000000000000) != 0)
      {
        v12 = sub_252E379E4();
        v14 = v13;
      }

      else
      {
        if ((a4 & 0x2000000000000000) != 0)
        {
          v25 = a3;
          v26 = v27;
          v11 = &v25 + v9;
        }

        else
        {
          v10 = v24;
          if ((a3 & 0x1000000000000000) == 0)
          {
            v10 = sub_252E37A84();
          }

          v11 = (v10 + v9);
        }

        v12 = *v11;
        if ((*v11 & 0x80000000) == 0)
        {
          goto LABEL_16;
        }

        v19 = (__clz(v12 ^ 0xFF) - 24);
        if (v19 > 2)
        {
          if (v19 == 3)
          {
            v12 = ((v12 & 0xF) << 12) | ((v11[1] & 0x3F) << 6) | v11[2] & 0x3F;
            v14 = 3;
          }

          else
          {
            v12 = ((v12 & 0xF) << 18) | ((v11[1] & 0x3F) << 12) | ((v11[2] & 0x3F) << 6) | v11[3] & 0x3F;
            v14 = 4;
          }

          goto LABEL_17;
        }

        if (v19 == 1)
        {
LABEL_16:
          v14 = 1;
        }

        else
        {
          v12 = v11[1] & 0x3F | ((v12 & 0x1F) << 6);
          v14 = 2;
        }
      }

LABEL_17:
      if (v12 == 95)
      {
        v25 = a1;
        v26 = a2;

        MEMORY[0x2530AD570](32, 0xE100000000000000);
      }

      else
      {
        if (v12 >= 0x80)
        {
          v20 = (v12 & 0x3F) << 8;
          if (v12 >= 0x800)
          {
            v21 = (v20 | (v12 >> 6) & 0x3F) << 8;
            v22 = (((v21 | (v12 >> 12) & 0x3F) << 8) | (v12 >> 18)) - 2122219023;
            v15 = (v12 >> 12) + v21 + 8487393;
            if (HIWORD(v12))
            {
              v15 = v22;
            }
          }

          else
          {
            v15 = (v12 >> 6) + v20 + 33217;
          }
        }

        else
        {
          v15 = v12 + 1;
        }

        v25 = (v15 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v15) >> 3))));
        v16 = sub_252E37034();
        v18 = v17;
        v25 = a1;
        v26 = a2;

        MEMORY[0x2530AD570](v16, v18);
      }

      a1 = v25;
      a2 = v26;
      v9 += v14;
      if (v9 >= v6)
      {
        return a1;
      }
    }
  }

  return a1;
}

uint64_t sub_252AD3D1C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v22 = a2;
  v21 = a1;
  if ((a4 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a4) & 0xF;
  }

  else
  {
    v5 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    v8 = a4 & 0xFFFFFFFFFFFFFFLL;
    v9 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;

    v10 = 0;
    while (1)
    {
      if ((a4 & 0x1000000000000000) != 0)
      {
        v13 = sub_252E379E4();
        v15 = v14;
      }

      else
      {
        if ((a4 & 0x2000000000000000) != 0)
        {
          v19 = a3;
          v20 = v8;
          v12 = &v19 + v10;
        }

        else
        {
          v11 = v9;
          if ((a3 & 0x1000000000000000) == 0)
          {
            v11 = sub_252E37A84();
          }

          v12 = (v11 + v10);
        }

        v13 = *v12;
        if ((*v12 & 0x80000000) == 0)
        {
          goto LABEL_14;
        }

        v17 = (__clz(v13 ^ 0xFF) - 24);
        if (v17 > 2)
        {
          if (v17 == 3)
          {
            v13 = ((v13 & 0xF) << 12) | ((v12[1] & 0x3F) << 6) | v12[2] & 0x3F;
            v15 = 3;
          }

          else
          {
            v13 = ((v13 & 0xF) << 18) | ((v12[1] & 0x3F) << 12) | ((v12[2] & 0x3F) << 6) | v12[3] & 0x3F;
            v15 = 4;
          }

          goto LABEL_15;
        }

        if (v17 == 1)
        {
LABEL_14:
          v15 = 1;
        }

        else
        {
          v13 = v12[1] & 0x3F | ((v13 & 0x1F) << 6);
          v15 = 2;
        }
      }

LABEL_15:
      v23 = v13;
      sub_252AD3EE0(&v21, &v23, &v19);

      if (!v4)
      {
        v10 += v15;
        result = v19;
        v21 = v19;
        v22 = v20;
        if (v10 < v5)
        {
          continue;
        }
      }

      return result;
    }
  }

  return a1;
}

uint64_t sub_252AD3EE0@<X0>(uint64_t *a1@<X0>, unsigned int *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_252E32A64();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v11 = a1[1];
  v13 = *a2;
  sub_252E32A24();
  LOBYTE(a2) = sub_252E32A54();
  (*(v7 + 8))(v10, v6);
  if (a2)
  {
    v32 = v12;
    v33 = v11;

    MEMORY[0x2530AD570](32, 0xE100000000000000);
    v14 = v32;
    v15 = v33;
    if (v13 > 0x7F)
    {
      v26 = (v13 & 0x3F) << 8;
      if (v13 >= 0x800)
      {
        v28 = (v26 | (v13 >> 6) & 0x3F) << 8;
        v29 = (((v28 | (v13 >> 12) & 0x3F) << 8) | (v13 >> 18)) - 2122219023;
        v16 = (v13 >> 12) + v28 + 8487393;
        if (HIWORD(v13))
        {
          v16 = v29;
        }
      }

      else
      {
        v16 = (v13 >> 6) + v26 + 33217;
      }
    }

    else
    {
      v16 = v13 + 1;
    }

    v32 = (v16 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v16) >> 3))));
    v17 = sub_252E37034();
    v19 = v18;
    v32 = v14;
    v33 = v15;

    MEMORY[0x2530AD570](v17, v19);
  }

  else
  {
    if (v13 > 0x7F)
    {
      v27 = (v13 & 0x3F) << 8;
      if (v13 >= 0x800)
      {
        v30 = (v27 | (v13 >> 6) & 0x3F) << 8;
        v31 = (((v30 | (v13 >> 12) & 0x3F) << 8) | (v13 >> 18)) - 2122219023;
        v20 = (v13 >> 12) + v30 + 8487393;
        if (HIWORD(v13))
        {
          v20 = v31;
        }
      }

      else
      {
        v20 = (v13 >> 6) + v27 + 33217;
      }
    }

    else
    {
      v20 = v13 + 1;
    }

    v32 = (v20 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v20) >> 3))));
    v21 = sub_252E37034();
    v23 = v22;
    v32 = v12;
    v33 = v11;

    MEMORY[0x2530AD570](v21, v23);
  }

  v25 = v33;
  *a3 = v32;
  a3[1] = v25;
  return result;
}

unint64_t sub_252AD41C0(unint64_t a1, unint64_t a2)
{
  sub_252947DBC();
  if (sub_252E377C4())
  {
    sub_252AD3A74(0, 0xE000000000000000, a1, a2);
  }

  else if (sub_252AD3840(a1, a2))
  {
    sub_252AD3D1C(0, 0xE000000000000000, a1, a2);
  }

  else
  {
  }

  v4 = sub_252E36FA4();
  v6 = v5;

  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v7)
  {
    sub_252E37174();
    v8 = sub_252E36FC4();
    v10 = v9;

    v4 = sub_252AD52A0(0xFuLL, 15, v8, v10, v4, v6);
  }

  return v4;
}

uint64_t sub_252AD4324()
{

  v0 = sub_252E370D4();
  v6 = v5;
  if (v5)
  {
    do
    {
      if (v0 == 32 && v6 == 0xE100000000000000 || (v8 = v0, v9 = sub_252E37DB4(), v0 = v8, (v9 & 1) != 0))
      {
        MEMORY[0x2530AD560](v0, v6, v1, v2, v3, v4);
      }

      v0 = sub_252E370D4();
      v6 = v7;
    }

    while (v7);
  }

  v10 = sub_252E37054();

  return v10;
}

char *sub_252AD4414(uint64_t a1)
{
  v39 = sub_252E32A64();
  v2 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39);
  v40 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  if (v5)
  {
    v38 = (v3 + 8);
    v41 = sub_252947DBC();
    v6 = (a1 + 40);
    v7 = MEMORY[0x277D84F90];
    while (1)
    {
      v9 = *(v6 - 1);
      v8 = *v6;
      v44 = v9;
      v45 = v8;
      v42 = 95;
      v43 = 0xE100000000000000;

      if (sub_252E377C4())
      {

        sub_252AD3A74(0, 0xE000000000000000, v9, v8);
      }

      else
      {
        v10 = HIBYTE(v8) & 0xF;
        if ((v8 & 0x2000000000000000) == 0)
        {
          v10 = v9 & 0xFFFFFFFFFFFFLL;
        }

        if (!v10)
        {
          goto LABEL_25;
        }

        sub_252E32A14();
        if ((v8 & 0x1000000000000000) != 0)
        {
          sub_252E379E4();
        }

        else if ((v8 & 0x2000000000000000) == 0)
        {
          v11 = ((v9 & 0x1000000000000000) != 0 ? (v8 & 0xFFFFFFFFFFFFFFFLL) + 32 : sub_252E37A84());
          v12 = *v11;
          if (*v11 < 0)
          {
            v13 = (__clz(v12 ^ 0xFF) - 24);
            if (v13 > 2)
            {
              if (v13 == 3)
              {
                v15 = v11[1];
                v16 = v11[2];
              }

              else
              {
                v17 = v11[1];
                v18 = v11[2];
                v19 = v11[3];
              }
            }

            else if (v13 != 1)
            {
              v14 = v11[1] & 0x3F | ((v12 & 0x1F) << 6);
            }
          }
        }

        v20 = v40;
        v21 = sub_252E32A54();
        (*v38)(v20, v39);
        if (v21 & 1) == 0 || (v44 = v9, v45 = v8, v42 = 32, v43 = 0xE100000000000000, (sub_252E377C4()) || (, v22 = sub_252AD1EC8(v9, v8), , (v22 & 1) == 0))
        {
LABEL_25:

          goto LABEL_26;
        }

        sub_252AD3D1C(0, 0xE000000000000000, v9, v8);
      }

LABEL_26:
      v23 = sub_252E36FA4();
      v25 = v24;

      v26 = HIBYTE(v25) & 0xF;
      if ((v25 & 0x2000000000000000) == 0)
      {
        v26 = v23 & 0xFFFFFFFFFFFFLL;
      }

      if (v26)
      {
        sub_252E37174();
        v27 = sub_252E36FC4();
        v29 = v28;

        v23 = sub_252AD52A0(0xFuLL, 15, v27, v29, v23, v25);
        v31 = v30;

        v25 = v31;
      }

      else
      {
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_2529F7A80(0, *(v7 + 2) + 1, 1, v7);
      }

      v33 = *(v7 + 2);
      v32 = *(v7 + 3);
      if (v33 >= v32 >> 1)
      {
        v7 = sub_2529F7A80((v32 > 1), v33 + 1, 1, v7);
      }

      *(v7 + 2) = v33 + 1;
      v34 = &v7[16 * v33];
      *(v34 + 4) = v23;
      *(v34 + 5) = v25;
      v6 += 2;
      if (!--v5)
      {
        goto LABEL_40;
      }
    }
  }

  v7 = MEMORY[0x277D84F90];
LABEL_40:
  v35 = sub_252DF88E4(v7);

  v44 = v35;

  sub_252AC841C(&v44);

  return v44;
}

BOOL sub_252AD492C(id *a1, void **a2)
{
  v2 = *a2;
  v3 = [*a1 hash];
  return v3 < [v2 hash];
}

uint64_t sub_252AD4A70(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 1953066613;
  }

  else
  {
    v4 = 0x65756C6176;
  }

  if (v3)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  if (*a2)
  {
    v6 = 1953066613;
  }

  else
  {
    v6 = 0x65756C6176;
  }

  if (*a2)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_252E37DB4();
  }

  return v9 & 1;
}

uint64_t sub_252AD4B0C()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252AD4B84()
{
  *v0;
  sub_252E37044();
}

uint64_t sub_252AD4BE8()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252AD4C5C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_252E37B74();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_252AD4CBC(uint64_t *a1@<X8>)
{
  v2 = 1953066613;
  if (!*v1)
  {
    v2 = 0x65756C6176;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_252AD4CF0()
{
  if (*v0)
  {
    result = 1953066613;
  }

  else
  {
    result = 0x65756C6176;
  }

  *v0;
  return result;
}

uint64_t sub_252AD4D20@<X0>(char *a1@<X8>)
{
  v2 = sub_252E37B74();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_252AD4D84(uint64_t a1)
{
  v2 = sub_252AD6720(&qword_27F542EA8, sub_252AD611C);

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252AD4DF0(uint64_t a1)
{
  v2 = sub_252AD6720(&qword_27F542EA8, sub_252AD611C);

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Scalar<>.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542E98, &unk_252E49598);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252AD611C();
  sub_252AD6720(&qword_27F542EA8, sub_252AD611C);
  sub_252E37F84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540A28, &qword_252E3DF80);
  sub_252E35834();
  v14 = 0;
  sub_252E37CB4();
  if (!v1)
  {
    sub_252E35814();
    v12 = v13;
    v11 = 1;
    sub_25298514C();
    sub_252E37CD4();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t Scalar<>.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v15[1] = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542EB0, &qword_252E495A8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v15 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252AD611C();
  sub_252AD6720(&qword_27F542EA8, sub_252AD611C);
  sub_252E37F74();
  if (!v2)
  {
    v20 = 0;
    v10 = sub_252E37BC4();
    v12 = v11;
    v13 = v10;
    v18 = 1;
    sub_2529828BC();
    sub_252E37BE4();
    v15[2] = v13;
    v16 = v12 & 1;
    v17 = v19;
    sub_252AD617C();
    sub_252E35824();
    (*(v5 + 8))(v8, v4);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_252AD52A0(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  v11 = sub_252E37064();

  sub_252E37774();
  v13 = v12;

  if ((v13 & 0x1000000000000000) != 0)
  {
    goto LABEL_23;
  }

  sub_252E37774();
  v15 = v14;

  if ((v15 & 0x1000000000000000) != 0)
  {
    goto LABEL_23;
  }

  v17 = (a5 >> 59) & 1;
  if ((a6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v17) = 1;
  }

  v18 = 4 << v17;
  v19 = a1;
  if ((a1 & 0xC) == 4 << v17)
  {
    result = sub_252AD5C38(a1, a5, a6);
    v19 = result;
    if ((a6 & 0x1000000000000000) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
LABEL_7:
    v20 = v19 >> 16;
    if ((a6 & 0x2000000000000000) != 0)
    {
      v21 = HIBYTE(a6) & 0xF;
    }

    else
    {
      v21 = a5 & 0xFFFFFFFFFFFFLL;
    }

    v22 = (v21 << 16) | 7;
    LOBYTE(v23) = 1;
    goto LABEL_11;
  }

  if ((a6 & 0x2000000000000000) != 0)
  {
    v21 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v21 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (v21 < v19 >> 16)
  {
    goto LABEL_42;
  }

  v20 = sub_252E37114();
  v27 = 11;
  if ((a5 & 0x800000000000000) != 0)
  {
    v27 = 7;
  }

  v22 = v27 | (v21 << 16);
  v23 = (a5 & 0x800000000000000) >> 59;
LABEL_11:
  result = v11;
  if ((v11 & 0xC) == 4 << v23)
  {
    v28 = v22;
    result = sub_252AD5C38(v11, a5, a6);
    v22 = v28;
  }

  if ((v22 & 0xC) == v18)
  {
    v29 = result;
    v22 = sub_252AD5C38(v22, a5, a6);
    result = v29;
    if ((a6 & 0x1000000000000000) == 0)
    {
LABEL_15:
      result = (v22 >> 16) - (result >> 16);
      if ((a4 & 0x1000000000000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_36;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
    goto LABEL_15;
  }

  if (v21 < result >> 16)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (v21 >= v22 >> 16)
  {
    result = sub_252E37114();
    if ((a4 & 0x1000000000000000) == 0)
    {
LABEL_16:
      if ((a4 & 0x2000000000000000) != 0)
      {
        v25 = HIBYTE(a4) & 0xF;
        v26 = __OFADD__(v20, v25);
        v24 = v20 + v25;
        if (!v26)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v24 = v20 + (a3 & 0xFFFFFFFFFFFFLL);
        if (!__OFADD__(v20, a3 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_21;
        }
      }

      goto LABEL_38;
    }

LABEL_36:
    v30 = result;
    v31 = sub_252E370E4();
    result = v30;
    v26 = __OFADD__(v20, v31);
    v24 = v20 + v31;
    if (!v26)
    {
LABEL_21:
      v26 = __OFADD__(v24, result);
      result += v24;
      if (!v26)
      {
        MEMORY[0x2530AD4D0](result);
LABEL_23:
        sub_252E37194();
        sub_252AD6778();
        sub_252E37094();

        sub_252E37094();
        sub_252AD5BEC(v11, a5, a6);
        sub_252E37094();

        return 0;
      }

      goto LABEL_39;
    }

LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_252AD55F0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_252AD5618(unint64_t a1)
{
  v4 = sub_252E37054();
  result = sub_252E37054();
  v6 = result;
  v49 = v4;
  if (v4 < 1 || result <= 0)
  {
    if (result <= v4)
    {
      return v4;
    }

    return result;
  }

  v7 = result + 1;
  if (__OFADD__(result, 1))
  {
    goto LABEL_78;
  }

  if (v7 < 0)
  {
    goto LABEL_79;
  }

  v8 = sub_252E372B4();
  *(v8 + 16) = v7;
  bzero((v8 + 32), 8 * v6 + 8);
  if (__OFADD__(v49, 1))
  {
    goto LABEL_80;
  }

  v1 = sub_252AD67CC(v8, v49 + 1);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_81;
  }

  while (1)
  {
    if (v1[2] < 2uLL)
    {
      __break(1u);
    }

    else
    {
      v7 = v1[5];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v1[5] = v7;
      if (isUniquelyReferenced_nonNull_native)
      {
        if (!*(v7 + 16))
        {
          goto LABEL_84;
        }

        goto LABEL_10;
      }
    }

    v7 = sub_252D57B60(v7);
    v1[5] = v7;
    if (!*(v7 + 16))
    {
LABEL_84:
      __break(1u);
      goto LABEL_85;
    }

LABEL_10:
    *(v7 + 32) = 1;
    v10 = v49 - 1;
    if (v49 != 1)
    {
      v36 = v1 + 6;
      v2 = 2;
      while (v2 < v1[2])
      {
        v7 = *v36;
        v37 = swift_isUniquelyReferenced_nonNull_native();
        *v36 = v7;
        if (v37)
        {
          if (!*(v7 + 16))
          {
            goto LABEL_51;
          }
        }

        else
        {
          v7 = sub_252D57B60(v7);
          *v36 = v7;
          if (!*(v7 + 16))
          {
LABEL_51:
            __break(1u);
            goto LABEL_52;
          }
        }

        *(v7 + 32) = v2++;
        ++v36;
        if (!--v10)
        {
          goto LABEL_11;
        }
      }

      __break(1u);
      goto LABEL_76;
    }

LABEL_11:
    if (v1[2])
    {
      v2 = (v1 + 4);
      v7 = v1[4];
      v11 = swift_isUniquelyReferenced_nonNull_native();
      v1[4] = v7;
      if (v11)
      {
        goto LABEL_13;
      }

      goto LABEL_86;
    }

LABEL_85:
    __break(1u);
LABEL_86:
    v7 = sub_252D57B60(v7);
LABEL_13:
    if (*(v7 + 16) < 2uLL)
    {
      __break(1u);
LABEL_88:
      swift_once();
      goto LABEL_63;
    }

    *(v7 + 40) = 1;
    *v2 = v7;
    v10 = v6 - 1;
    if (v6 == 1)
    {
      break;
    }

LABEL_52:
    v38 = 6;
    while (v1[2])
    {
      v7 = *v2;
      v39 = swift_isUniquelyReferenced_nonNull_native();
      *v2 = v7;
      if ((v39 & 1) == 0)
      {
        v7 = sub_252D57B60(v7);
        *v2 = v7;
      }

      if ((v38 - 4) >= *(v7 + 16))
      {
        goto LABEL_77;
      }

      *(v7 + 8 * v38) = v38 - 4;
      ++v38;
      if (!--v10)
      {
        goto LABEL_15;
      }
    }

LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    v1 = sub_252D57B74(v1);
  }

LABEL_15:
  v12 = 0;
  v13 = 1;
  while (2)
  {
    v14 = 0;
    do
    {
      sub_252E37084();
      v15 = sub_252E37174();
      v17 = v16;
      sub_252E37084();
      v19 = v15 == sub_252E37174() && v17 == v18;
      if (v19)
      {

        v21 = 0;
      }

      else
      {
        v20 = sub_252E37DB4();

        v21 = (v20 & 1) == 0;
      }

      v22 = v1[2];
      if (v12 >= v22)
      {
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
LABEL_72:
        __break(1u);
        goto LABEL_73;
      }

      v23 = *(v2 + 8 * v12);
      if (v14 + 1 >= *(v23 + 16))
      {
        goto LABEL_66;
      }

      v24 = v23 + 8 * v14;
      v25 = *(v24 + 40);
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        goto LABEL_67;
      }

      if (v13 >= v22)
      {
        goto LABEL_68;
      }

      v28 = *(v2 + 8 * v13);
      if (v14 >= *(v28 + 2))
      {
        goto LABEL_69;
      }

      v29 = *&v28[8 * v14 + 32];
      v26 = __OFADD__(v29, 1);
      v30 = v29 + 1;
      if (v26)
      {
        goto LABEL_70;
      }

      v31 = *(v24 + 32);
      v26 = __OFADD__(v31, v21);
      v32 = v31 + v21;
      if (v26)
      {
        goto LABEL_71;
      }

      if (v30 < v27)
      {
        v27 = v30;
      }

      if (v32 >= v27)
      {
        v33 = v27;
      }

      else
      {
        v33 = v32;
      }

      v34 = *(v2 + 8 * v13);
      v35 = swift_isUniquelyReferenced_nonNull_native();
      *(v2 + 8 * v13) = v28;
      if ((v35 & 1) == 0)
      {
        v28 = sub_252D57B60(v28);
        *(v2 + 8 * v13) = v28;
      }

      if (v14 + 1 >= *(v28 + 2))
      {
        goto LABEL_72;
      }

      *&v28[8 * v14++ + 40] = v33;
    }

    while (v6 != v14);
    v12 = v13;
    v19 = v13++ == v49;
    if (!v19)
    {
      continue;
    }

    break;
  }

  v7 = v1;
  v40 = v1[2];
  if (v40)
  {
    v41 = *(v2 + 8 * v40 - 8);
    v42 = *(v41 + 16);
    if (v42)
    {
      v43 = *(v41 + 8 * v42 + 24);
      goto LABEL_74;
    }
  }

  if (qword_27F53F4E8 != -1)
  {
    goto LABEL_88;
  }

LABEL_63:
  a1 = 0xD000000000000017;
  v44 = sub_252E36AD4();
  __swift_project_value_buffer(v44, qword_27F544D60);
  v50 = 0;
  v51 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000017, 0x8000000252E79210);
  v45 = *(v7 + 16);
  if (v45)
  {
    v46 = *(v2 + 8 * v45 - 8);
  }

LABEL_73:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543000, &unk_252E498D0);
  v47 = sub_252E36F94();
  MEMORY[0x2530AD570](v47);

  MEMORY[0x2530AD570](a1 + 18, 0x8000000252E79230);
  v43 = 99;
  v48 = sub_252E37D94();
  MEMORY[0x2530AD570](v48);

  sub_252CC3D90(v50, v51, a1 + 91, 0x8000000252E79260);

LABEL_74:

  return v43;
}

unint64_t sub_252AD5BEC(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_252E37194();
  }

  __break(1u);
  return result;
}

uint64_t sub_252AD5C38(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_252E37134();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x2530AD5C0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unint64_t sub_252AD5CB4(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_252AD5D4C(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_252AD5DC0(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_252AD5D4C(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_252AD5C38(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_252AD5DC0(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_252E37A84();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return MEMORY[0x2821FD070]();
    }
  }

  return result;
}

uint64_t _s12SiriOntology6ScalarV22HomeAutomationInternalSdRszAD12UnitSemanticORs_rlE1loiySbACySdAFG_AHtFZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540A28, &qword_252E3DF80);
  sub_252E35834();
  if (v9)
  {
    v0 = 0;
    return v0 & 1;
  }

  sub_252E35834();
  sub_252E35814();
  if (v8 == 4 || (sub_252E35814(), (sub_252A0C79C(v8, v8) & 1) != 0))
  {
    v0 = 0;
    return v0 & 1;
  }

  v2 = 0x746E6563726570;
  if (v8 > 1u)
  {
    if (v8 == 2)
    {
      v4 = 0xD000000000000011;
      v3 = 0x8000000252E67E40;
      goto LABEL_16;
    }

    v4 = 0x4773656572676564;
    v5 = 0x636972656E65;
  }

  else
  {
    if (!v8)
    {
      v3 = 0xE700000000000000;
      v4 = 0x746E6563726570;
      goto LABEL_16;
    }

    v4 = 0x4373656572676564;
    v5 = 0x737569736C65;
  }

  v3 = v5 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
LABEL_16:
  if (v8 > 1u)
  {
    if (v8 == 2)
    {
      v2 = 0xD000000000000011;
      v6 = 0x8000000252E67E40;
      goto LABEL_24;
    }

    v2 = 0x4773656572676564;
    v7 = 0x636972656E65;
LABEL_23:
    v6 = v7 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
    goto LABEL_24;
  }

  if (v8)
  {
    v2 = 0x4373656572676564;
    v7 = 0x737569736C65;
    goto LABEL_23;
  }

  v6 = 0xE700000000000000;
LABEL_24:
  if (v4 == v2 && v3 == v6)
  {

    v0 = 0;
  }

  else
  {
    v0 = sub_252E37DB4();
  }

  return v0 & 1;
}

void sub_252AD611C()
{
  if (!qword_27F542EA0)
  {
    v0 = _s16ScalarCodingKeysOMa();
    if (!v1)
    {
      atomic_store(v0, &qword_27F542EA0);
    }
  }
}

unint64_t sub_252AD617C()
{
  result = qword_27F542EB8;
  if (!qword_27F542EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542EB8);
  }

  return result;
}

uint64_t sub_252AD62A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = sub_25293F638(319, qword_27F542F58, 0x277CCAAF8);
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_252AD6338(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_252AD6474(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *v18 = v19;
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

uint64_t sub_252AD6720(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_252AD6778()
{
  result = qword_2814B0288;
  if (!qword_2814B0288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B0288);
  }

  return result;
}

uint64_t sub_252AD67CC(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x277D84F90];
    }

    v3 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5416D8, &qword_252E40998);
    v4 = sub_252E372B4();
    v5 = v4;
    *(v4 + 16) = a2;
    *(v4 + 32) = v3;
    v6 = a2 - 1;
    if (v6)
    {
      v7 = (v4 + 40);
      do
      {
        *v7++ = v3;

        --v6;
      }

      while (v6);
    }

    return v5;
  }

  return result;
}

uint64_t sub_252AD6874()
{
  v1 = type metadata accessor for HomeAutomationEntityResponse.Builder(0);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  v4 = swift_allocObject();
  v5 = OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_entityName;
  v6 = sub_252E36324();
  v7 = *(*(v6 - 8) + 56);
  v7(v4 + v5, 1, 1, v6);
  v8 = OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_entityIdentifier;
  v7(v4 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_entityIdentifier, 1, 1, v6);
  v9 = OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_room;
  *(v4 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_room) = 0;
  v19 = OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_zones;
  v10 = MEMORY[0x277D84F90];
  *(v4 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_zones) = MEMORY[0x277D84F90];
  v20 = OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_home;
  *(v4 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_home) = 0;
  v11 = OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_type;
  v7(v4 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_type, 1, 1, v6);
  v12 = OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_types;
  *(v4 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_types) = v10;
  v13 = OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_states;
  *(v4 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_states) = v10;
  v14 = v13;
  v15 = OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_entityName;
  swift_beginAccess();
  sub_252956BAC(v0 + v15, v4 + v5);
  swift_endAccess();
  v16 = OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_entityIdentifier;
  swift_beginAccess();
  sub_252956BAC(v0 + v16, v4 + v8);
  swift_endAccess();
  *(v4 + v9) = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_room);
  *(v4 + v19) = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_zones);
  *(v4 + v20) = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_home);
  v17 = OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_type;
  swift_beginAccess();

  sub_252956BAC(v0 + v17, v4 + v11);
  swift_endAccess();
  *(v4 + v12) = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_types);
  *(v4 + v14) = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_states);

  return v4;
}

uint64_t sub_252AD6B10(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v35 - v6;
  v8 = sub_252E36324();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v39 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x277D84F90];
  v40 = MEMORY[0x277D84F90];
  v13 = *(a1 + 16);
  if (v13)
  {
    v15 = *(v10 + 16);
    v14 = v10 + 16;
    v16 = a1 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
    v37 = *(v14 + 56);
    v38 = v15;
    v17 = (v14 + 40);
    v36 = (v14 + 16);
    v35[0] = v2;
    v35[1] = v14;
    do
    {
      v18 = v39;
      v38(v39, v16, v8);
      v19 = type metadata accessor for HomeAutomationHomeLocation.Builder(0);
      v20 = *(v19 + 48);
      v21 = *(v19 + 52);
      v22 = swift_allocObject();
      v23 = OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name;
      v24 = *v17;
      (*v17)(v22 + OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name, 1, 1, v8);
      (*v36)(v7, v18, v8);
      v24(v7, 0, 1, v8);
      swift_beginAccess();
      sub_252956BAC(v7, v22 + v23);
      swift_endAccess();
      sub_252938BBC(v7);
      v25 = type metadata accessor for HomeAutomationHomeLocation(0);
      v26 = *(v25 + 48);
      v27 = *(v25 + 52);
      v28 = swift_allocObject();
      *(v28 + 16) = 0;
      sub_252956C1C(v22 + v23, v28 + OBJC_IVAR____TtC22HomeAutomationInternal26HomeAutomationHomeLocation_name);
      swift_setDeallocating();
      sub_252938BBC(v22 + OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name);
      v29 = *(*v22 + 48);
      v30 = *(*v22 + 52);
      v31 = swift_deallocClassInstance();
      MEMORY[0x2530AD700](v31);
      if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v32 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      sub_252E372D4();
      v16 += v37;
      --v13;
    }

    while (v13);
    v12 = v40;
    v2 = v35[0];
  }

  v33 = *(v2 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_zones);
  *(v2 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_zones) = v12;

  return v2;
}

uint64_t sub_252AD6E3C(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for HomeAutomationHomeLocation.Builder(0);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  v8 = swift_allocObject();
  v9 = OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name;
  v10 = sub_252E36324();
  (*(*(v10 - 8) + 56))(v8 + v9, 1, 1, v10);
  swift_beginAccess();
  sub_252956BAC(a1, v8 + v9);
  swift_endAccess();
  v11 = type metadata accessor for HomeAutomationHomeLocation(0);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  sub_252956C1C(v8 + v9, v14 + OBJC_IVAR____TtC22HomeAutomationInternal26HomeAutomationHomeLocation_name);
  swift_setDeallocating();
  sub_252938BBC(v8 + OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name);
  v15 = *(*v8 + 48);
  v16 = *(*v8 + 52);
  swift_deallocClassInstance();
  v17 = *(v2 + *a2);
  *(v2 + *a2) = v14;

  return v2;
}

uint64_t sub_252AD6F94(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15[-v6];
  if (qword_27F53F2A0 != -1)
  {
    swift_once();
  }

  v8 = off_27F541CD0;
  if (*(off_27F541CD0 + 2) && (v9 = sub_252A488EC(a1), (v10 & 1) != 0))
  {
    v15[8] = *(v8[7] + v9);
    AccessoryTypeSemantic.rawValue.getter();
    sub_252E362F4();
    v11 = sub_252E36324();
    (*(*(v11 - 8) + 56))(v7, 0, 1, v11);
  }

  else
  {
    v12 = sub_252E36324();
    (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
  }

  v13 = OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_type;
  swift_beginAccess();
  sub_252956C98(v7, v2 + v13);
  swift_endAccess();
  return v2;
}

uint64_t sub_252AD7130(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v23 - v6;
  v8 = type metadata accessor for HomeAutomationHomeLocation.Builder(0);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  v12 = OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name;
  v13 = sub_252E36324();
  v14 = *(*(v13 - 8) + 56);
  v14(v11 + v12, 1, 1, v13);

  sub_252E362F4();
  v14(v7, 0, 1, v13);
  swift_beginAccess();
  sub_252956BAC(v7, v11 + v12);
  swift_endAccess();
  sub_252938BBC(v7);
  v15 = type metadata accessor for HomeAutomationHomeLocation(0);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  sub_252956C1C(v11 + v12, v18 + OBJC_IVAR____TtC22HomeAutomationInternal26HomeAutomationHomeLocation_name);
  swift_setDeallocating();
  sub_252938BBC(v11 + OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name);
  v19 = *(*v11 + 48);
  v20 = *(*v11 + 52);
  swift_deallocClassInstance();
  v21 = *(v3 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_room);
  *(v3 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_room) = v18;

  return v3;
}

uint64_t sub_252AD734C()
{
  result = sub_2529FFA08(&unk_2864AC180);
  qword_27F5757E0 = result;
  return result;
}

uint64_t sub_252AD73B8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ModifyGetTaskTypeForClimateHandler();
  result = swift_allocObject();
  *a1 = result;
  return result;
}

uint64_t sub_252AD73EC(void *a1, __int128 *a2)
{
  v3 = a2[7];
  v90 = a2[6];
  v91 = v3;
  v92 = *(a2 + 16);
  v4 = a2[3];
  v86 = a2[2];
  v87 = v4;
  v5 = a2[5];
  v88 = a2[4];
  v89 = v5;
  v6 = a2[1];
  v84 = *a2;
  v85 = v6;
  v77 = *(a2 + 152);
  v78 = *(a2 + 136);
  v7 = *(a2 + 21);
  v8 = a2[12];
  v82 = a2[11];
  v83 = v8;
  v9 = *(a2 + 208);
  memcpy(__dst, a2 + 209, sizeof(__dst));
  type metadata accessor for HomeStore();
  v10 = static HomeStore.shared.getter();
  v11 = v10[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded];
  if (v11 != 2 && (v11 & 1) == 0 || (v12 = [a1 filters]) == 0)
  {

    goto LABEL_8;
  }

  v13 = v12;
  type metadata accessor for HomeFilter();
  v14 = sub_252E37264();

  v15 = [a1 userTask];
  v16 = HomeStore.accessories(matching:supporting:)(v14, v15);
  v18 = v17;

  if (v18)
  {
    v19 = v16;
    v20 = 1;
LABEL_6:
    sub_252929F10(v19, v20);
    goto LABEL_8;
  }

  if (!*(v78 + 16))
  {
    goto LABEL_15;
  }

  v24 = sub_252C7634C(v23);

  if (qword_27F53F328 != -1)
  {
    swift_once();
  }

  v25 = sub_252939028(qword_27F5757E0, v24);

  if ((v25 & 1) == 0)
  {
LABEL_15:
    if (!*(v77 + 16) && !*(v7 + 16))
    {
LABEL_66:
      v19 = v16;
LABEL_67:
      v20 = 0;
      goto LABEL_6;
    }
  }

  v75 = a1;
  v76 = v16;
  v74 = v9;
  v26 = v16 & 0xFFFFFFFFFFFFFF8;
  if (v16 >> 62)
  {
    goto LABEL_69;
  }

  v27 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v27)
  {
LABEL_18:
    v28 = 0;
    v29 = (v76 + 32);
    v79 = v27;
    while (1)
    {
      if ((v76 & 0xC000000000000001) != 0)
      {
        v30 = MEMORY[0x2530ADF00](v28, v76);
        v31 = __OFADD__(v28++, 1);
        if (v31)
        {
LABEL_65:
          __break(1u);
          goto LABEL_66;
        }
      }

      else
      {
        if (v28 >= *(v26 + 16))
        {
          __break(1u);
LABEL_69:
          v27 = sub_252E378C4();
          if (!v27)
          {
            goto LABEL_70;
          }

          goto LABEL_18;
        }

        v30 = *&v29[8 * v28];

        v31 = __OFADD__(v28++, 1);
        if (v31)
        {
          goto LABEL_65;
        }
      }

      v32 = (*v30 + 256);
      v16 = *v32;
      if ((*v32)() == 3)
      {

        goto LABEL_20;
      }

      v33 = (*v30 + 272);
      v34 = *v33;
      v35 = (*v33)();
      if (*(v35 + 16))
      {
        v36 = *(v35 + 40);
        v37 = v35;
        sub_252E37EC4();
        MEMORY[0x2530AE390](3);
        v38 = sub_252E37F14();
        v39 = -1 << *(v37 + 32);
        v40 = v38 & ~v39;
        if ((*(v37 + 56 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40))
        {
          v41 = ~v39;
          while (*(*(v37 + 48) + 8 * v40) != 3)
          {
            v40 = (v40 + 1) & v41;
            if (((*(v37 + 56 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40) & 1) == 0)
            {
              goto LABEL_30;
            }
          }

LABEL_50:

LABEL_51:

          goto LABEL_52;
        }
      }

LABEL_30:

      v43 = (v16)(v42);
      if (v43 == 38)
      {
        break;
      }

      v44 = v43;
      v45 = MEMORY[0x277D84FA0];
      if (v44 == 41)
      {
        v46 = &unk_2864AC1D0;
LABEL_34:
        v45 = sub_2529FC004(v46);
      }

      if (*(v45 + 16))
      {
        v47 = *(v45 + 40);
        v48 = v45;
        sub_252E37EC4();
        MEMORY[0x2530AE390](3);
        v49 = sub_252E37F14();
        v50 = -1 << *(v48 + 32);
        v51 = v49 & ~v50;
        if ((*(v48 + 56 + ((v51 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v51))
        {
          v52 = ~v50;
          while (*(*(v48 + 48) + 8 * v51) != 3)
          {
            v51 = (v51 + 1) & v52;
            if (((*(v48 + 56 + ((v51 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v51) & 1) == 0)
            {
              goto LABEL_40;
            }
          }

          goto LABEL_50;
        }
      }

LABEL_40:

      if (sub_252D4FE78(3) || (v16)() == 29)
      {
        goto LABEL_51;
      }

      v53 = v34();
      v54 = v53;
      if (*(v53 + 16))
      {
        v55 = *(v53 + 40);
        sub_252E37EC4();
        MEMORY[0x2530AE390](29);
        v56 = sub_252E37F14();
        v57 = -1 << *(v54 + 32);
        v58 = v56 & ~v57;
        if ((*(v54 + 56 + ((v58 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v58))
        {
          v59 = ~v57;
          while (*(*(v54 + 48) + 8 * v58) != 29)
          {
            v58 = (v58 + 1) & v59;
            if (((*(v54 + 56 + ((v58 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v58) & 1) == 0)
            {
              goto LABEL_47;
            }
          }

LABEL_62:

LABEL_52:
          v29 = (v76 + 32);
          v27 = v79;
          goto LABEL_20;
        }
      }

LABEL_47:

      v61 = (v16)(v60);
      if (v61 == 38)
      {
        v63 = &unk_2864AC1F8;
      }

      else
      {
        v62 = MEMORY[0x277D84FA0];
        if (v61 != 41)
        {
          goto LABEL_55;
        }

        v63 = &unk_2864AC220;
      }

      v62 = sub_2529FC004(v63);
LABEL_55:
      if (*(v62 + 16))
      {
        v64 = *(v62 + 40);
        sub_252E37EC4();
        MEMORY[0x2530AE390](29);
        v65 = sub_252E37F14();
        v66 = -1 << *(v62 + 32);
        v67 = v65 & ~v66;
        if ((*(v62 + 56 + ((v67 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v67))
        {
          v68 = ~v66;
          while (*(*(v62 + 48) + 8 * v67) != 29)
          {
            v67 = (v67 + 1) & v68;
            if (((*(v62 + 56 + ((v67 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v67) & 1) == 0)
            {
              goto LABEL_60;
            }
          }

          goto LABEL_62;
        }
      }

LABEL_60:

      v69 = sub_252D4FE78(29);

      v29 = (v76 + 32);
      v27 = v79;
      if (!v69)
      {
        v19 = v76;
        goto LABEL_67;
      }

LABEL_20:
      if (v28 == v27)
      {
        goto LABEL_70;
      }
    }

    v46 = &unk_2864AC1A8;
    goto LABEL_34;
  }

LABEL_70:
  sub_252929F10(v76, 0);
  v70 = [v75 userTask];
  if (v70)
  {
    v71 = v70;
    v72 = [v70 attribute];

    v73 = v72 != 6 || v74 == 9;
    if (!v73 && (sub_252A0D524(v74, 1u) & 1) != 0)
    {
      memcpy(v80, __dst, sizeof(v80));
      v21 = sub_252A10CC8() ^ 1;
      return v21 & 1;
    }
  }

  else
  {
    sub_252C515AC();
  }

LABEL_8:
  v21 = 0;
  return v21 & 1;
}

id sub_252AD7B28(void *a1)
{
  v2 = [a1 userTask];
  if (v2)
  {
    type metadata accessor for MutableHomeUserTask();
    swift_allocObject();
    sub_252D6CA80(v2)[2] = 5;

    v2 = sub_252D6CB58();
  }

  v3 = [a1 filters];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for HomeFilter();
    v5 = sub_252E37264();
  }

  else
  {
    v5 = 0;
  }

  v6 = [a1 time];
  v7 = [objc_allocWithZone(type metadata accessor for ControlHomeIntent()) init];
  [v7 setUserTask_];
  if (v5)
  {
    type metadata accessor for HomeFilter();
    v8 = sub_252E37254();
  }

  else
  {
    v8 = 0;
  }

  [v7 setFilters_];

  [v7 setTime_];

  return v7;
}

uint64_t sub_252AD7CC4()
{
  v0 = sub_252E33944();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  sub_252E33924();
  return sub_252E33F54();
}

uint64_t sub_252AD7D78()
{
  v1 = *__swift_project_boxed_opaque_existential_1((v0[2] + 24), *(v0[2] + 48));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v2 = swift_allocObject();
  *(v2 + 32) = 0xD000000000000017;
  *(v2 + 40) = 0x8000000252E6FE70;
  *(v2 + 72) = MEMORY[0x277D839B0];
  v3 = *(MEMORY[0x277D55BE8] + 4);
  v6 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v0[3] = v2;
  *(v2 + 16) = xmmword_252E3C290;
  *(v2 + 48) = 0;
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_252AD7EB4;

  return v6(0xD00000000000001ELL, 0x8000000252E79370, v2);
}

uint64_t sub_252AD7EB4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_252AD800C, 0, 0);
  }

  else
  {
    v7 = *(v4 + 24);

    v8 = *(v6 + 8);

    return v8(a1);
  }
}

uint64_t sub_252AD800C()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[5];

  return v2();
}

uint64_t sub_252AD8094(uint64_t a1, void *a2)
{
  if (!a2)
  {
    LOBYTE(v4) = 0;
    return v4 & 1;
  }

  v2 = a2;
  v3 = sub_252C2F554();
  if (v3 >> 62)
  {
    v4 = sub_252E378C4();

    if (!v4)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (v4)
  {
LABEL_4:
    LOBYTE(v4) = sub_252C2C2E4(0x11);
  }

LABEL_5:

  return v4 & 1;
}

uint64_t sub_252AD8128(uint64_t a1)
{
  v2[2] = a1;
  v3 = sub_252E34014();
  v2[3] = v3;
  v4 = *(v3 - 8);
  v2[4] = v4;
  v5 = *(v4 + 64) + 15;
  v6 = swift_task_alloc();
  v7 = *v1;
  v2[5] = v6;
  v2[6] = v7;

  return MEMORY[0x2822009F8](sub_252AD81EC, 0, 0);
}

uint64_t sub_252AD81EC()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = *(v1 + 96);
  __swift_project_boxed_opaque_existential_1((v1 + 72), v3);
  sub_252AD7CC4();
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_252AD82DC;
  v6 = v0[5];
  v5 = v0[6];
  v7 = v0[2];

  return sub_252BDB88C(v7, &unk_252E49980, v5, v6, 0, 0, 0, v3);
}

uint64_t sub_252AD82DC()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  v6 = *v1;
  v6[8] = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_252AD8484, 0, 0);
  }

  else
  {
    v7 = v6[5];

    v8 = v6[1];

    return v8();
  }
}

uint64_t sub_252AD8484()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

void *sub_252AD84E8@<X0>(const void *a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for SceneInProgressResponseHandler();
  swift_allocObject();
  memcpy(__dst, a1, sizeof(__dst));
  result = sub_252BE97AC(__dst);
  *a2 = result;
  return result;
}

uint64_t sub_252AD854C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_25294B7BC;

  return sub_252AD7D58(v0);
}

void *sub_252AD85DC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, int a6)
{
  v39 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v37[-v12];
  v14 = sub_252E36324();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v37[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17);
  v21 = &v37[-v20];
  v40 = a3;
  v41 = a4;
  v42 = a5;
  v22 = sub_252D157C8(a3, a4, a5, a6);
  sub_252E376D4();
  v24 = v23;

  if (v24)
  {
    sub_252E37024();

    (*(v15 + 32))(v21, v19, v14);
    v25 = type metadata accessor for HomeAutomationTappableCommand.Builder(0);
    v26 = *(v25 + 48);
    v27 = *(v25 + 52);
    v28 = swift_allocObject();
    v38 = a6;
    v29 = OBJC_IVAR____TtCC22HomeAutomationInternal29HomeAutomationTappableCommand7Builder_label;
    v30 = *(v15 + 56);
    v30(v28 + OBJC_IVAR____TtCC22HomeAutomationInternal29HomeAutomationTappableCommand7Builder_label, 1, 1, v14);
    v31 = OBJC_IVAR____TtCC22HomeAutomationInternal29HomeAutomationTappableCommand7Builder_command;
    v30(v28 + OBJC_IVAR____TtCC22HomeAutomationInternal29HomeAutomationTappableCommand7Builder_command, 1, 1, v14);
    sub_252E37024();

    v30(v13, 0, 1, v14);
    swift_beginAccess();
    sub_252956BAC(v13, v28 + v29);
    swift_endAccess();
    sub_252938BBC(v13);
    (*(v15 + 16))(v13, v21, v14);
    v30(v13, 0, 1, v14);
    swift_beginAccess();
    sub_252956BAC(v13, v28 + v31);
    swift_endAccess();
    sub_252938BBC(v13);
    v32 = type metadata accessor for HomeAutomationTappableCommand(0);
    v33 = *(v32 + 48);
    v34 = *(v32 + 52);
    swift_allocObject();
    v35 = sub_252D1A938(v28);
    sub_252A71E74(v40, v41, v42, v38);
    (*(v15 + 8))(v21, v14);
  }

  else
  {
    sub_252A71E74(v40, v41, v42, a6);

    return 0;
  }

  return v35;
}

uint64_t sub_252AD8940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a3;
  v4[4] = v3;
  v4[2] = a1;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270) - 8);
  v4[5] = v5;
  v4[6] = *(v5 + 64);
  v4[7] = swift_task_alloc();
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252AD8A20, 0, 0);
}

uint64_t sub_252AD8A20()
{
  v60 = v0;
  v1 = v0[3];
  if (!v1 || (v2 = [v1 entityResponses]) == 0)
  {
LABEL_17:
    v13 = v0[8];
    v14 = sub_252E36324();
    (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
    goto LABEL_18;
  }

  v3 = v2;
  type metadata accessor for HomeEntityResponse();
  v4 = sub_252E37264();

  v59 = MEMORY[0x277D84F90];
  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_5;
    }

LABEL_74:

    v12 = MEMORY[0x277D84F90];
    goto LABEL_75;
  }

  v5 = sub_252E378C4();
  if (!v5)
  {
    goto LABEL_74;
  }

LABEL_5:
  v55 = v0;
  v6 = 0;
  do
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x2530ADF00](v6, v4);
    }

    else
    {
      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_69;
      }

      v7 = *(v4 + 8 * v6 + 32);
    }

    v8 = v7;
    v0 = (v6 + 1);
    if (__OFADD__(v6, 1))
    {
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

    v9 = [v7 entity];
    if (v9 && (v3 = v9, v10 = [v9 type], v3, v10 == 5))
    {
      sub_252E37A94();
      v11 = *(v59 + 16);
      sub_252E37AC4();
      sub_252E37AD4();
      v3 = &v59;
      sub_252E37AA4();
    }

    else
    {
    }

    ++v6;
  }

  while (v0 != v5);
  v12 = v59;

  v0 = v55;
  if (!v12)
  {
    goto LABEL_17;
  }

LABEL_75:
  if (!(v12 >> 62))
  {
    result = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_77;
    }

LABEL_84:
    v47 = 1;
    goto LABEL_85;
  }

  result = sub_252E378C4();
  if (!result)
  {
    goto LABEL_84;
  }

LABEL_77:
  if ((v12 & 0xC000000000000001) == 0)
  {
    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v43 = *(v12 + 32);
      goto LABEL_80;
    }

    __break(1u);
LABEL_98:
    __break(1u);
    return result;
  }

  v43 = MEMORY[0x2530ADF00](0, v12);

LABEL_80:
  v44 = [v43 entity];

  if (!v44)
  {
    goto LABEL_84;
  }

  v45 = [v44 homeEntityName];

  if (!v45)
  {
    goto LABEL_84;
  }

  v46 = v0[8];
  sub_252E36F34();

  sub_252E37024();

  v47 = 0;
LABEL_85:
  v48 = v0[8];
  v49 = sub_252E36324();
  (*(*(v49 - 8) + 56))(v48, v47, 1, v49);
  if (!(v12 >> 62))
  {
    result = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_87;
    }

LABEL_94:

    goto LABEL_18;
  }

  result = sub_252E378C4();
  if (!result)
  {
    goto LABEL_94;
  }

LABEL_87:
  if ((v12 & 0xC000000000000001) != 0)
  {
    v50 = MEMORY[0x2530ADF00](0, v12);
  }

  else
  {
    if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_98;
    }

    v50 = *(v12 + 32);
  }

  v51 = v50;

  v52 = [v51 entity];

  if (v52 && (v53 = [v52 entityIdentifier], v52, v53))
  {
    v6 = sub_252E36F34();
    v5 = v54;
  }

  else
  {
LABEL_18:
    v6 = 0;
    v5 = 0;
  }

  type metadata accessor for HomeStore();
  v15 = static HomeStore.shared.getter();
  v3 = sub_2529DA828();

  if (!(v3 >> 62))
  {
    v16 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
      goto LABEL_21;
    }

LABEL_39:

    v58 = 0;
    goto LABEL_40;
  }

LABEL_71:
  v16 = sub_252E378C4();
  if (!v16)
  {
    goto LABEL_39;
  }

LABEL_21:
  v56 = v0;
  v17 = 0;
  v0 = (v3 & 0xC000000000000001);
  while (1)
  {
    if (v0)
    {
      v18 = MEMORY[0x2530ADF00](v17, v3);
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
LABEL_37:
        __break(1u);
LABEL_38:
        v0 = v56;
        goto LABEL_39;
      }
    }

    else
    {
      if (v17 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_68;
      }

      v18 = *(v3 + 8 * v17 + 32);

      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_37;
      }
    }

    v20 = *(v18 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier + 8);
    if (!v20)
    {
      if (!v5)
      {
        goto LABEL_44;
      }

      goto LABEL_23;
    }

    if (v5)
    {
      v21 = *(v18 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier) == v6 && v20 == v5;
      if (v21 || (sub_252E37DB4() & 1) != 0)
      {
        break;
      }
    }

LABEL_23:

    ++v17;
    if (v19 == v16)
    {
      goto LABEL_38;
    }
  }

LABEL_44:

  v34 = sub_252B2F8B4();

  v35 = v34;
  v36 = 0;
  v3 = *(v34 + 2);
  v0 = v56;
  do
  {
    v5 = v36;
    if (v3 == v36)
    {
      break;
    }

    ++v36;
  }

  while (*&v35[8 * v5 + 32] != 1);
  v37 = 0;
  while (1)
  {
    v6 = v37;
    if (v3 == v37)
    {
      break;
    }

    ++v37;
    if (*&v35[8 * v6 + 32] == 2)
    {
      goto LABEL_52;
    }
  }

  if (!v3)
  {

    v58 = 0;
    goto LABEL_40;
  }

LABEL_52:
  v38 = 32;
  v39 = v3;
  while (1)
  {
    if (!v39)
    {
      goto LABEL_70;
    }

    v40 = *&v35[v38] - 1;
    v41 = v40 < 2;
    if (v40 >= 2)
    {
      break;
    }

    v38 += 8;
    if (!--v39)
    {

      v42 = v3 == v6 && v3 != v5;
      if (v3 != v5 || v3 == v6)
      {
        LOBYTE(v58) = 0;
        BYTE4(v58) = v42;
        goto LABEL_40;
      }

      goto LABEL_64;
    }
  }

  if (v3 == v5 && v3 != v6)
  {
LABEL_64:
    v58 = v41;
    goto LABEL_40;
  }

  v58 = 0;
LABEL_40:
  v22 = v0[7];
  v23 = v0[8];
  v24 = v0[5];
  v25 = v0[6];
  v26 = v0[4];
  v27 = v26[12];
  v57 = v26[13];
  __swift_project_boxed_opaque_existential_1(v26 + 9, v27);
  sub_252956C1C(v23, v22);
  v28 = (*(v24 + 80) + 24) & ~*(v24 + 80);
  v29 = v28 + v25;
  v30 = swift_allocObject();
  *(v30 + 16) = v26;
  sub_2529439A0(v22, v30 + v28);
  v31 = (v30 + v29);
  *v31 = BYTE4(v58);
  v31[1] = v58;

  sub_252943BD0(sub_252AD9A0C, v30, 1, v27, v57);
  sub_25293847C(v23, &qword_27F540298, &unk_252E3C270);

  v32 = v0[1];

  return v32();
}

uint64_t sub_252AD9188(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v19 - v10;
  v12 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_252E3C280;
  *(v13 + 32) = 0x6D614E656E656373;
  *(v13 + 40) = 0xE900000000000065;
  sub_252956C1C(a2, v11);
  v14 = sub_252E36324();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v11, 1, v14) == 1)
  {

    sub_25293847C(v11, &qword_27F540298, &unk_252E3C270);
    *(v13 + 48) = 0u;
    *(v13 + 64) = 0u;
  }

  else
  {
    *(v13 + 72) = v14;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v13 + 48));
    (*(v15 + 32))(boxed_opaque_existential_0, v11, v14);
  }

  *(v13 + 80) = 0xD000000000000014;
  *(v13 + 88) = 0x8000000252E79400;
  v17 = MEMORY[0x277D839B0];
  *(v13 + 96) = a3 & 1;
  *(v13 + 120) = v17;
  *(v13 + 128) = 0xD000000000000013;
  *(v13 + 136) = 0x8000000252E79420;
  *(v13 + 168) = v17;
  *(v13 + 144) = a4 & 1;
  sub_252E362B4();
}

uint64_t sub_252AD93E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_25293B808;

  return sub_252AD8940(a1, v8, a3);
}

void *sub_252AD9494@<X0>(const void *a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for MediaSceneFailureResponseHandler();
  swift_allocObject();
  memcpy(__dst, a1, sizeof(__dst));
  result = sub_252BE97AC(__dst);
  *a2 = result;
  return result;
}

void *sub_252AD94F8(void *result)
{
  if (!result)
  {
    return result;
  }

  v56 = result;
  v1 = [v56 entityResponses];
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = v1;
    type metadata accessor for HomeEntityResponse();
    v4 = sub_252E37264();

    v57 = v2;
    if (v4 >> 62)
    {
      goto LABEL_70;
    }

    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_5;
    }

LABEL_17:
  }

  if (v2 >> 62)
  {
    v4 = sub_252E378C4();
    if (v4)
    {
      goto LABEL_20;
    }

LABEL_64:

    v45 = v56;
LABEL_65:

    return 0;
  }

  v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_64;
  }

LABEL_20:
  v14 = 0;
  v15 = v2 & 0xC000000000000001;
  v16 = v2 & 0xFFFFFFFFFFFFFF8;
  v53 = v2;
  v2 += 32;
  v17 = &off_279711000;
  v50 = v15;
  v51 = v4;
  v48 = v2;
  v49 = v16;
  while (1)
  {
    if (v15)
    {
      v18 = MEMORY[0x2530ADF00](v14, v53);
      goto LABEL_24;
    }

    if (v14 >= *(v16 + 16))
    {
      break;
    }

    v18 = *(v2 + 8 * v14);
LABEL_24:
    v19 = v18;
    v20 = __OFADD__(v14, 1);
    v21 = v14 + 1;
    if (v20)
    {
      goto LABEL_69;
    }

    v22 = [v18 v17[220]];
    if (!v22)
    {

      goto LABEL_55;
    }

    v23 = v22;
    type metadata accessor for HomeUserTaskResponse();
    v24 = sub_252E37264();

    v25 = [v19 entity];
    if (!v25)
    {
      goto LABEL_52;
    }

    if (v24 >> 62)
    {
      v26 = sub_252E378C4();
      if (!v26)
      {
LABEL_52:

LABEL_55:

        return 0;
      }
    }

    else
    {
      v26 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v26)
      {
        goto LABEL_52;
      }
    }

    v54 = v19;
    v52 = v21;
    v27 = v24;
    v28 = 0;
    v29 = v27 & 0xC000000000000001;
    v30 = v27 & 0xFFFFFFFFFFFFFF8;
    v55 = v27;
    v31 = v27 + 32;
    while (1)
    {
      if (v29)
      {
        v32 = MEMORY[0x2530ADF00](v28, v55);
      }

      else
      {
        if (v28 >= *(v30 + 16))
        {
          goto LABEL_57;
        }

        v32 = *(v31 + 8 * v28);
      }

      v33 = v32;
      v20 = __OFADD__(v28++, 1);
      if (v20)
      {
        __break(1u);
LABEL_57:
        __break(1u);
        goto LABEL_58;
      }

      if (qword_27F53F730 != -1)
      {
        swift_once();
      }

      v34 = qword_27F575C40;
      v35 = [v33 taskOutcome];
      if (*(v34 + 16))
      {
        v36 = v35;
        v37 = *(v34 + 40);
        sub_252E37EC4();
        MEMORY[0x2530AE390](v36);
        v38 = sub_252E37F14();
        v39 = -1 << *(v34 + 32);
        v40 = v38 & ~v39;
        if ((*(v34 + 56 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40))
        {
          v41 = ~v39;
          while (*(*(v34 + 48) + 8 * v40) != v36)
          {
            v40 = (v40 + 1) & v41;
            if (((*(v34 + 56 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40) & 1) == 0)
            {
              goto LABEL_30;
            }
          }

          v42 = [v33 userTask];
          if (v42)
          {
            break;
          }
        }
      }

LABEL_30:

LABEL_31:
      if (v28 == v26)
      {

        v45 = v54;
        goto LABEL_65;
      }
    }

    v43 = v42;
    v44 = [v42 attribute];

    if (v44 != 65)
    {
      goto LABEL_31;
    }

    v4 = v51;
    v14 = v52;
    v16 = v49;
    v15 = v50;
    v2 = v48;
    v17 = &off_279711000;
    if (v52 == v51)
    {
      goto LABEL_60;
    }
  }

  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  v5 = sub_252E378C4();
  if (!v5)
  {
    goto LABEL_17;
  }

LABEL_5:
  v6 = 0;
  while (1)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x2530ADF00](v6, v4);
    }

    else
    {
      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_59;
      }

      v8 = *(v4 + 8 * v6 + 32);
    }

    v9 = v8;
    v10 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    v11 = [v8 entity];
    if (v11 && (v12 = v11, v13 = [v11 type], v12, v13 == 5))
    {
    }

    else
    {
      sub_252E37A94();
      v7 = *(v57 + 16);
      sub_252E37AC4();
      sub_252E37AD4();
      sub_252E37AA4();
    }

    ++v6;
    if (v10 == v5)
    {
      v2 = v57;
      goto LABEL_17;
    }
  }

LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:

  v46 = sub_252C2F554();
  if (v46 >> 62)
  {
    v47 = sub_252E378C4();
  }

  else
  {
    v47 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return (v47 != 0);
}

uint64_t sub_252AD9A0C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270) - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(v0 + 16);
  v5 = v0 + ((v2 + 24) & ~v2);
  v6 = *(v5 + v3);
  v7 = *(v5 + v3 + 1);

  return sub_252AD9188(v4, v5, v6, v7);
}

uint64_t sub_252AD9AC8(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  v3 = (a1 + 512);
  v4 = -1;
  while (v2 != ++v4)
  {
    if (!*(*(v3 - 10) + 16) && !*(*(v3 - 9) + 16) && !*(*(v3 - 8) + 16) && !*(*(v3 - 7) + 16) && !*(*(v3 - 6) + 16) && !*(*(v3 - 5) + 16) && !*(*(v3 - 4) + 16) && !*(*(v3 - 3) + 16) && !*(*(v3 - 2) + 16) && !*(*(v3 - 1) + 16))
    {
      v5 = *v3;
      v3 += 63;
      if (!*(v5 + 16))
      {
        continue;
      }
    }

    v6 = 0;
    v7 = MEMORY[0x277D84F90];
    while (1)
    {
      v8 = v1 + 504 * v6;
      v9 = v6;
      while (1)
      {
        if (v9 >= v2)
        {
          __break(1u);
LABEL_33:
          __break(1u);
          goto LABEL_34;
        }

        memcpy(__dst, (v8 + 32), sizeof(__dst));
        v6 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_33;
        }

        v10 = *(v8 + 480);
        v22 = *(v8 + 464);
        v23 = v10;
        v24 = *(v8 + 496);
        v25 = *(v8 + 512);
        v11 = *(v8 + 448);
        v20 = *(v8 + 432);
        v21 = v11;
        sub_2529353AC(__dst, v17);
        if (sub_252C5E020())
        {
          break;
        }

        sub_252935408(__dst);
        ++v9;
        v8 += 504;
        if (v6 == v2)
        {
          goto LABEL_26;
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = v7;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2529AA480(0, *(v7 + 16) + 1, 1);
        v7 = v19;
      }

      v14 = *(v7 + 16);
      v13 = *(v7 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_2529AA480((v13 > 1), v14 + 1, 1);
        v7 = v19;
      }

      *(v7 + 16) = v14 + 1;
      memcpy((v7 + 504 * v14 + 32), __dst, 0x1F8uLL);
      if (v6 == v2)
      {
LABEL_26:
        if (*(v7 + 16))
        {
          return v7;
        }

        if (qword_27F53F520 == -1)
        {
LABEL_29:
          v15 = sub_252E36AD4();
          __swift_project_value_buffer(v15, qword_27F544E08);
          sub_252CC3D90(0xD000000000000027, 0x8000000252E79440, 0xD00000000000009CLL, 0x8000000252E79470);
          goto LABEL_30;
        }

LABEL_34:
        swift_once();
        goto LABEL_29;
      }
    }
  }

LABEL_30:

  return v1;
}

uint64_t sub_252AD9D80(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = 0;
  v65 = a1;
  v66 = 0;
  v67 = v1;
  v68 = a1 + 32;
  v4 = 0x8000000252E64890;
  while (1)
  {
    memcpy(v74, (v68 + 504 * v3), sizeof(v74));
    memcpy(v75, (v68 + 504 * v3), 0x1F8uLL);
    sub_2529353AC(v74, v73);
    if (sub_252A13FE0())
    {
      break;
    }

    memcpy(v73, v74, sizeof(v73));
    if (sub_252A13BEC())
    {
      break;
    }

    memcpy(v75, v74, 0x1F8uLL);
    if (sub_252A143D4())
    {
      break;
    }

    sub_252935408(v74);
LABEL_60:
    if (++v3 == v1)
    {
      return MEMORY[0x277D84F90];
    }
  }

  v5 = v74[19];
  v6 = *(v74[19] + 16);
  v63 = v3;
  if (v6 || (v5 = v74[21], *(v74[21] + 16)) || (v5 = v74[20], *(v74[20] + 16)))
  {
    v64 = v5;

    v7 = MEMORY[0x277D84F90];
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
    v64 = MEMORY[0x277D84F90];
  }

  v8 = 0;
  v71[0] = v7;
  while (1)
  {
    memcpy(v75, (v68 + 504 * v8), 0x1F8uLL);
    if (!*(v75[18] + 16) && !*(v75[17] + 16))
    {
      goto LABEL_12;
    }

    v70 = v7;
    v9 = v75[12];
    v10 = *(v75[12] + 16);
    sub_2529353AC(v75, v73);
    if (v10)
    {
      break;
    }

LABEL_11:
    sub_252935408(v75);
    v1 = v67;
    v7 = v70;
LABEL_12:
    if (++v8 == v1)
    {
      if (!*(v64 + 16))
      {

        sub_252935408(v74);
LABEL_65:
        v37 = 0;
        v4 = MEMORY[0x277D84F90];
        v70 = 32;
        v38 = v65;
LABEL_66:
        v39 = (v70 + 504 * v37);
        v40 = v37;
        v41 = v67;
        while (v40 < v41)
        {
          memcpy(v75, &v39[v38], 0x1F8uLL);
          v37 = v40 + 1;
          if (__OFADD__(v40, 1))
          {
            goto LABEL_110;
          }

          memcpy(v73, &v39[v38], sizeof(v73));
          sub_2529353AC(v75, v71);
          if (sub_252A13FE0() & 1) != 0 || (memcpy(v71, v75, sizeof(v71)), (sub_252A13BEC()) || (memcpy(v73, v75, sizeof(v73)), (sub_252A143D4()) || *(v75[17] + 16))
          {
            memcpy(v73, v75, sizeof(v73));
            sub_252A13A70();
            if ((v42 & 1) == 0)
            {
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v72 = v4;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_2529AA480(0, *(v4 + 16) + 1, 1);
                v4 = v72;
              }

              v38 = v65;
              v44 = v67;
              v46 = *(v4 + 16);
              v45 = *(v4 + 24);
              if (v46 >= v45 >> 1)
              {
                sub_2529AA480((v45 > 1), v46 + 1, 1);
                v38 = v65;
                v4 = v72;
              }

              *(v4 + 16) = v46 + 1;
              memcpy((v4 + 504 * v46 + 32), v75, 0x1F8uLL);
              if (v37 != v44)
              {
                goto LABEL_66;
              }

LABEL_81:
              if (qword_27F53F520 != -1)
              {
                goto LABEL_113;
              }

              goto LABEL_82;
            }
          }

          sub_252935408(v75);
          v38 = v65;
          ++v40;
          v39 += 504;
          v41 = v67;
          if (v37 == v67)
          {
            goto LABEL_81;
          }
        }

        goto LABEL_109;
      }

      v36 = sub_252BFEAD0(v64, v71);

      sub_252935408(v74);
      if (!v36)
      {
        goto LABEL_65;
      }

      v3 = v63;
      goto LABEL_60;
    }
  }

  v11 = 0;
  v12 = v9 + 32;
  v69 = v9 + 32;
  while (1)
  {
    if (v11 >= *(v9 + 16))
    {
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
      goto LABEL_104;
    }

    v13 = *(v12 + 8 * v11);
    if (*(v13 + 16))
    {
      break;
    }

LABEL_18:
    if (++v11 == v10)
    {
      goto LABEL_11;
    }
  }

  v14 = *(v13 + 40);
  sub_252E37EC4();

  sub_252E37044();
  v15 = sub_252E37F14();
  v16 = -1 << *(v13 + 32);
  v17 = v15 & ~v16;
  if (((*(v13 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
  {
LABEL_17:

    v12 = v69;
    goto LABEL_18;
  }

  v18 = ~v16;
  while (1)
  {
    v19 = (*(v13 + 48) + 16 * v17);
    v20 = *v19 == 0xD00000000000001CLL && 0x8000000252E64890 == v19[1];
    if (v20 || (sub_252E37DB4() & 1) != 0)
    {
      break;
    }

    v17 = (v17 + 1) & v18;
    if (((*(v13 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  v21 = v75[41];
  v22 = *(v75[41] + 16);
  v7 = v70;
  v23 = *(v70 + 16);
  v24 = v23 + v22;
  if (__OFADD__(v23, v22))
  {
    goto LABEL_101;
  }

  v25 = swift_isUniquelyReferenced_nonNull_native();
  if (!v25 || v24 > *(v70 + 24) >> 1)
  {
    if (v23 <= v24)
    {
      v28 = v23 + v22;
    }

    else
    {
      v28 = v23;
    }

    v7 = sub_2529F7A80(v25, v28, 1, v70);
    if (!*(v21 + 16))
    {
      goto LABEL_42;
    }

LABEL_34:
    if ((*(v7 + 3) >> 1) - *(v7 + 2) < v22)
    {
      goto LABEL_105;
    }

    swift_arrayInitWithCopy();

    v26 = *(v7 + 2);
    if (!v22)
    {
      goto LABEL_44;
    }

    v27 = __OFADD__(v26, v22);
    v26 += v22;
    if (!v27)
    {
      *(v7 + 2) = v26;
      goto LABEL_44;
    }

    goto LABEL_107;
  }

  if (*(v21 + 16))
  {
    goto LABEL_34;
  }

LABEL_42:

  if (v22)
  {
    goto LABEL_102;
  }

  v26 = *(v7 + 2);
LABEL_44:
  v29 = v75[42];
  v30 = *(v75[42] + 16);
  v31 = v26 + v30;
  if (__OFADD__(v26, v30))
  {
    goto LABEL_103;
  }

  v32 = *(v7 + 3) >> 1;

  if (v32 >= v31)
  {
    if (v30)
    {
      goto LABEL_47;
    }

LABEL_55:

    v1 = v67;
    if (!v30)
    {
LABEL_56:
      sub_252935408(v75);
      v71[0] = v7;
      goto LABEL_12;
    }

LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
LABEL_107:
    __break(1u);
    goto LABEL_108;
  }

  if (v26 <= v31)
  {
    v35 = v26 + v30;
  }

  else
  {
    v35 = v26;
  }

  v7 = sub_2529F7A80(1, v35, 1, v7);
  v26 = *(v7 + 2);
  v32 = *(v7 + 3) >> 1;
  if (!*(v29 + 16))
  {
    goto LABEL_55;
  }

LABEL_47:
  if ((v32 - v26) < v30)
  {
    goto LABEL_106;
  }

  swift_arrayInitWithCopy();

  v1 = v67;
  if (!v30)
  {
    goto LABEL_56;
  }

  v33 = *(v7 + 2);
  v27 = __OFADD__(v33, v30);
  v34 = v33 + v30;
  if (!v27)
  {
    *(v7 + 2) = v34;
    goto LABEL_56;
  }

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
  swift_once();
LABEL_82:
  v47 = sub_252E36AD4();
  __swift_project_value_buffer(v47, qword_27F544E08);
  v75[0] = 0;
  v75[1] = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000041, 0x8000000252E79510);
  v48 = MEMORY[0x2530AD730](v4, &type metadata for HomeAutomationIntent);
  MEMORY[0x2530AD570](v48);

  sub_252CC3D90(v75[0], v75[1], 0xD0000000000000A7, 0x8000000252E79560);

  v49 = 0;
  v50 = MEMORY[0x277D84F90];
  do
  {
    v51 = (v70 + 504 * v49);
    v52 = v49;
    v53 = v67;
    while (1)
    {
      if (v52 >= v53)
      {
        goto LABEL_111;
      }

      memcpy(v75, &v51[v65], 0x1F8uLL);
      v49 = v52 + 1;
      if (__OFADD__(v52, 1))
      {
        goto LABEL_112;
      }

      v54 = memcpy(v73, &v51[v65], sizeof(v73));
      MEMORY[0x28223BE20](v54);
      v62[2] = v73;
      sub_2529353AC(v75, v71);
      v55 = v66;
      v56 = sub_2529EDA1C(sub_25295AD78, v62, v4);
      v66 = v55;
      if ((v56 & 1) == 0)
      {
        break;
      }

      memcpy(v73, v75, sizeof(v73));
      if (sub_252A13FE0() & 1) != 0 || (memcpy(v71, v75, sizeof(v71)), (sub_252A13BEC()) || (memcpy(v73, v75, sizeof(v73)), (sub_252A143D4()))
      {
        if ((sub_252BFEB70(v75, v65) & 1) == 0)
        {
          break;
        }
      }

      sub_252935408(v75);
      ++v52;
      v51 += 504;
      v53 = v67;
      if (v49 == v67)
      {
        goto LABEL_98;
      }
    }

    v57 = swift_isUniquelyReferenced_nonNull_native();
    v58 = v50;
    v72 = v50;
    if ((v57 & 1) == 0)
    {
      sub_2529AA480(0, *(v50 + 16) + 1, 1);
      v58 = v72;
    }

    v60 = *(v58 + 16);
    v59 = *(v58 + 24);
    if (v60 >= v59 >> 1)
    {
      sub_2529AA480((v59 > 1), v60 + 1, 1);
      v58 = v72;
    }

    *(v58 + 16) = v60 + 1;
    v50 = v58;
    memcpy((v58 + 504 * v60 + 32), v75, 0x1F8uLL);
  }

  while (v49 != v67);
LABEL_98:

  return v50;
}

uint64_t sub_252ADA6B8(void *__src)
{
  v2 = v1;
  memcpy(__dst, __src, sizeof(__dst));
  v4 = v83;
  memcpy(v83, __src, sizeof(v83));
  sub_252A1673C();
  if (v5)
  {
    v6 = 1;
    goto LABEL_32;
  }

  v7 = v2 + OBJC_IVAR____TtC22HomeAutomationInternal12FlowProvider_intent;
  swift_beginAccess();
  memcpy(v82, v7, sizeof(v82));
  v8 = v82[0];
  memcpy(__srca, (v7 + 8), sizeof(__srca));
  memcpy(&v83[1], (v7 + 8), 0x1F0uLL);
  v83[0] = v82[0];
  if (sub_252956B94(v83) == 1)
  {
    v79 = v8;
    memcpy(v80, __srca, sizeof(v80));
    sub_2529D291C(v82, v78);
    sub_25299F5D4(&v79);
    goto LABEL_31;
  }

  v79 = v8;
  memcpy(v80, __srca, sizeof(v80));
  sub_2529D291C(v82, v78);

  sub_25299F5D4(&v79);
  v76 = v8[2];
  if (!v76)
  {
LABEL_30:

LABEL_31:
    v6 = 0;
LABEL_32:
    memcpy(v83, __dst, sizeof(v83));
    v8 = sub_252AEFEB0();
    v10 = &off_279711000;
    v25 = [v8 filters];
    if (!v25)
    {
      goto LABEL_42;
    }

    v26 = v25;
    type metadata accessor for HomeFilter();
    v12 = sub_252E37264();

    v11 = &off_279711000;
    v27 = [v8 userTask];
    if (!v27)
    {

      sub_252C515AC();
      goto LABEL_42;
    }

    v28 = v27;
    v29 = [v27 attribute];

    if (v29 == 27 && sub_252C4B5D4())
    {
      v30 = [v8 userTask];
      if (v30)
      {
        v31 = v30;
        v32 = [v30 value];

        if (v32)
        {
          v33 = [v32 BOOLValue];

          if (!v33 && (v6 & 1) == 0)
          {
            goto LABEL_45;
          }
        }
      }
    }

LABEL_40:

    goto LABEL_42;
  }

  v9 = 0;
  v10 = 0x72656B61657073;
  v74 = v8;
  v75 = v8 + 4;
  v11 = 0xE700000000000000;
  while (1)
  {
    if (v9 >= v8[2])
    {
      __break(1u);
      goto LABEL_57;
    }

    memcpy(v78, &v75[63 * v9], sizeof(v78));
    v12 = v78[17];
    v8 = *(v78[17] + 16);
    sub_2529353AC(v78, v77);
    if (v8)
    {
      break;
    }

LABEL_7:
    ++v9;
    sub_252935408(v78);
    v8 = v74;
    if (v9 == v76)
    {
      goto LABEL_30;
    }
  }

  v13 = 0;
  v4 = v12 + 32;
  while (v13 < *(v12 + 16))
  {
    v14 = *(v4 + v13);
    v77[0] = v14;
    if (AccessoryTypeSemantic.rawValue.getter() == 0x72656B61657073 && v15 == 0xE700000000000000)
    {
      goto LABEL_11;
    }

    v16 = sub_252E37DB4();

    if (v16)
    {
      goto LABEL_12;
    }

    v77[0] = v14;
    if (AccessoryTypeSemantic.rawValue.getter() == 0x5F79616C70726961 && v17 == 0xEF72656B61657073)
    {
      goto LABEL_11;
    }

    v18 = sub_252E37DB4();

    if (v18)
    {
      goto LABEL_12;
    }

    v77[0] = v14;
    if (AccessoryTypeSemantic.rawValue.getter() == 0xD000000000000011 && 0x8000000252E65660 == v19)
    {
      goto LABEL_11;
    }

    v20 = sub_252E37DB4();

    if (v20)
    {
      goto LABEL_12;
    }

    v77[0] = v14;
    if (AccessoryTypeSemantic.rawValue.getter() == 0x646F70656D6F68 && v21 == 0xE700000000000000)
    {
      goto LABEL_11;
    }

    v22 = sub_252E37DB4();

    if (v22)
    {
      goto LABEL_12;
    }

    v77[0] = v14;
    if (AccessoryTypeSemantic.rawValue.getter() == 0x5F646F70656D6F68 && v23 == 0xEC000000696E696DLL)
    {
LABEL_11:
    }

    else
    {
      v24 = sub_252E37DB4();

      if ((v24 & 1) == 0)
      {
        sub_252935408(v78);

        v6 = 1;
        goto LABEL_32;
      }
    }

LABEL_12:
    if (v8 == ++v13)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_45:
  type metadata accessor for HomeStore();
  v36 = static HomeStore.shared.getter();
  v37 = *(v36 + OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded);
  if (v37 != 2 && (v37 & 1) == 0 || (v38 = [v8 *(v10 + 1536)]) == 0)
  {

    v34 = 0;
    v8 = v36;
    goto LABEL_43;
  }

  v39 = v38;
  v40 = sub_252E37264();

  v41 = [v8 v11[214]];
  v42 = HomeStore.accessories(matching:supporting:)(v40, v41);
  v44 = v43;

  if (v44)
  {
    sub_252929F10(v42, 1);
    goto LABEL_40;
  }

  if (v42 >> 62)
  {
    v45 = sub_252E378C4();
  }

  else
  {
    v45 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_252929F10(v42, 0);
  if (v45)
  {
    goto LABEL_40;
  }

  v46 = static HomeStore.shared.getter();
  v4 = HomeStore.accessories(matching:supporting:)(v12, 0);
  v48 = v47;

  if (v48)
  {
    v49 = v4;
    v50 = 1;
    goto LABEL_93;
  }

LABEL_57:
  if (!(v4 >> 62))
  {
    v51 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v51)
    {
      goto LABEL_59;
    }

LABEL_92:
    v49 = v4;
    v50 = 0;
LABEL_93:
    sub_252929F10(v49, v50);
LABEL_42:
    v34 = 0;
    goto LABEL_43;
  }

  while (2)
  {
    v51 = sub_252E378C4();
    if (!v51)
    {
      goto LABEL_92;
    }

LABEL_59:
    v52 = 0;
LABEL_61:
    if ((v4 & 0xC000000000000001) != 0)
    {
      v53 = MEMORY[0x2530ADF00](v52, v4);
      v54 = __OFADD__(v52++, 1);
      if (v54)
      {
        goto LABEL_83;
      }
    }

    else
    {
      if (v52 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        continue;
      }

      v53 = *(v4 + 32 + 8 * v52);

      v54 = __OFADD__(v52++, 1);
      if (v54)
      {
LABEL_83:
        __break(1u);
LABEL_84:
        sub_252929F10(v4, 0);

        goto LABEL_85;
      }
    }

    break;
  }

  v55 = (*v53 + 256);
  v56 = *v55;
  if ((*v55)() != 26)
  {
    v57 = (*(*v53 + 272))();
    v58 = v57;
    if (*(v57 + 16))
    {
      v59 = *(v57 + 40);
      sub_252E37EC4();
      MEMORY[0x2530AE390](26);
      v60 = sub_252E37F14();
      v61 = -1 << *(v58 + 32);
      v62 = v60 & ~v61;
      if ((*(v58 + 56 + ((v62 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v62))
      {
        v63 = ~v61;
        while (*(*(v58 + 48) + 8 * v62) != 26)
        {
          v62 = (v62 + 1) & v63;
          if (((*(v58 + 56 + ((v62 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v62) & 1) == 0)
          {
            goto LABEL_70;
          }
        }

        goto LABEL_84;
      }
    }

LABEL_70:

    v65 = (v56)(v64);
    if (v65 == 38)
    {
      v67 = &unk_2864AC248;
LABEL_74:
      v66 = sub_2529FC004(v67);
    }

    else
    {
      v66 = MEMORY[0x277D84FA0];
      if (v65 == 41)
      {
        v67 = &unk_2864AC270;
        goto LABEL_74;
      }
    }

    if (*(v66 + 16))
    {
      v68 = *(v66 + 40);
      sub_252E37EC4();
      MEMORY[0x2530AE390](26);
      v69 = sub_252E37F14();
      v70 = -1 << *(v66 + 32);
      v71 = v69 & ~v70;
      if ((*(v66 + 56 + ((v71 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v71))
      {
        v72 = ~v70;
        while (*(*(v66 + 48) + 8 * v71) != 26)
        {
          v71 = (v71 + 1) & v72;
          if (((*(v66 + 56 + ((v71 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v71) & 1) == 0)
          {
            goto LABEL_60;
          }
        }

        goto LABEL_84;
      }
    }

LABEL_60:

    if (v52 == v51)
    {
      goto LABEL_92;
    }

    goto LABEL_61;
  }

  sub_252929F10(v4, 0);

LABEL_85:
  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  v73 = sub_252E36AD4();
  __swift_project_value_buffer(v73, qword_27F544DA8);
  sub_252CC4050(0xD00000000000007BLL, 0x8000000252E79610, 0xD00000000000007BLL, 0x8000000252E79690, 0xD000000000000026, 0x8000000252E79710, 30);
  v34 = 1;
LABEL_43:

  return v34;
}

uint64_t sub_252ADB074(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x277D84F90];
  *(v1 + 16) = 0;
  *(v1 + 24) = v4;
  v5 = [a1 userTask];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for CodableUserTask();
    swift_allocObject();
    v7 = sub_252A04C5C(v6);
    v8 = *(v2 + 16);
    *(v2 + 16) = v7;
  }

  v9 = [a1 filters];
  if (!v9)
  {

    return v2;
  }

  v10 = v9;
  type metadata accessor for HomeFilter();
  v11 = sub_252E37264();

  if (!(v11 >> 62))
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_6;
    }

LABEL_15:

    v18 = MEMORY[0x277D84F90];
LABEL_16:
    v19 = *(v2 + 24);
    *(v2 + 24) = v18;

    return v2;
  }

  v12 = sub_252E378C4();
  if (!v12)
  {
    goto LABEL_15;
  }

LABEL_6:
  v20 = v4;
  result = sub_252E37AB4();
  if ((v12 & 0x8000000000000000) == 0)
  {
    v14 = 0;
    do
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x2530ADF00](v14, v11);
      }

      else
      {
        v15 = *(v11 + 8 * v14 + 32);
      }

      v16 = v15;
      ++v14;
      type metadata accessor for CodableHomeFilter();
      swift_allocObject();
      sub_2529D0A90(v16);

      sub_252E37A94();
      v17 = *(v20 + 16);
      sub_252E37AC4();
      sub_252E37AD4();
      sub_252E37AA4();
    }

    while (v12 != v14);

    v18 = v20;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_252ADB274()
{
  v1 = v0;
  type metadata accessor for ControlHomeIntent.Builder();
  swift_allocObject();
  v2 = ControlHomeIntent.Builder.init()();
  v3 = *(v0 + 24);
  if (v3 >> 62)
  {
    if (v3 < 0)
    {
      v15 = *(v0 + 24);
    }

    v4 = sub_252E378C4();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v16 = MEMORY[0x277D84F90];

    result = sub_252E37AB4();
    if (v4 < 0)
    {
      __break(1u);
      return result;
    }

    v7 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        MEMORY[0x2530ADF00](v7, v3);
      }

      else
      {
        v9 = *(v3 + 8 * v7 + 32);
      }

      ++v7;
      sub_252A79090();

      sub_252E37A94();
      v8 = *(v16 + 16);
      sub_252E37AC4();
      sub_252E37AD4();
      sub_252E37AA4();
    }

    while (v4 != v7);

    v5 = v16;
  }

  v10 = (*(*v2 + 208))(v5);

  if (*(v1 + 16))
  {
    v11 = *(v1 + 16);

    v12 = sub_252A05170();
  }

  else
  {
    v12 = 0;
  }

  v13 = (*(*v10 + 184))(v12);

  v14 = (*(*v13 + 224))();

  return v14;
}

uint64_t sub_252ADB49C()
{
  if (*v0)
  {
    result = 0x737265746C6966;
  }

  else
  {
    result = 0x6B73615472657375;
  }

  *v0;
  return result;
}

uint64_t sub_252ADB4D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6B73615472657375 && a2 == 0xE800000000000000;
  if (v6 || (sub_252E37DB4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x737265746C6966 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_252E37DB4();

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

uint64_t sub_252ADB5B4(uint64_t a1)
{
  v2 = sub_252ADB8B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252ADB5F0(uint64_t a1)
{
  v2 = sub_252ADB8B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ControlHomeIntentCodable.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t ControlHomeIntentCodable.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_252ADB694(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543008, &unk_252E49A70);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252ADB8B0();
  sub_252E37F84();
  v13 = *(v3 + 16);
  HIBYTE(v12) = 0;
  type metadata accessor for CodableUserTask();
  sub_252ADC508(&qword_27F541988, 255, type metadata accessor for CodableUserTask);
  sub_252E37CD4();
  if (!v2)
  {
    v13 = *(v3 + 24);
    HIBYTE(v12) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540A38, &qword_252E3DF88);
    sub_252ADBBE8(&qword_27F540C18, &qword_27F540C20);
    sub_252E37D54();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_252ADB8B0()
{
  result = qword_27F543010;
  if (!qword_27F543010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543010);
  }

  return result;
}

uint64_t ControlHomeIntentCodable.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  ControlHomeIntentCodable.init(from:)(a1);
  return v2;
}

uint64_t ControlHomeIntentCodable.init(from:)(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543018, &qword_252E49A80);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - v7;
  v9 = MEMORY[0x277D84F90];
  *(v1 + 16) = 0;
  *(v1 + 24) = v9;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252ADB8B0();
  sub_252E37F74();
  if (v2)
  {
  }

  else
  {
    type metadata accessor for CodableUserTask();
    v15 = 0;
    sub_252ADC508(&qword_27F541930, 255, type metadata accessor for CodableUserTask);
    sub_252E37BE4();
    v11 = *(v1 + 16);
    *(v1 + 16) = v16;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540A38, &qword_252E3DF88);
    v15 = 1;
    sub_252ADBBE8(&qword_27F540A40, &qword_27F540A48);
    sub_252E37C64();
    (*(v5 + 8))(v8, v4);
    v13 = *(v1 + 24);
    *(v1 + 24) = v16;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

uint64_t sub_252ADBBE8(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F540A38, &qword_252E3DF88);
    sub_252ADC508(a2, 255, type metadata accessor for CodableHomeFilter);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_252ADBCF0()
{
  sub_252E379F4();

  v5 = *(v0 + 16);
  type metadata accessor for ControlHomeIntentCodable();
  sub_252ADC508(&qword_27F540C08, v1, type metadata accessor for ControlHomeIntentCodable);
  v2 = sub_252E36E74();
  MEMORY[0x2530AD570](v2);

  MEMORY[0x2530AD570](0x79546B736154202CLL, 0xEC000000203A6570);
  LOBYTE(v5) = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542B08, &qword_252E48110);
  v3 = sub_252E36F94();
  MEMORY[0x2530AD570](v3);

  return 0x203A746E65746E49;
}

uint64_t sub_252ADBE20()
{
  if (*v0)
  {
    result = 0x657079546B736174;
  }

  else
  {
    result = 0x746E65746E69;
  }

  *v0;
  return result;
}

uint64_t sub_252ADBE58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746E65746E69 && a2 == 0xE600000000000000;
  if (v6 || (sub_252E37DB4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x657079546B736174 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_252E37DB4();

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

uint64_t sub_252ADBF30(uint64_t a1)
{
  v2 = sub_252ADC1C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252ADBF6C(uint64_t a1)
{
  v2 = sub_252ADC1C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HandoffHandleIntentData.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t HandoffHandleIntentData.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_252ADC000(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543020, &qword_252E49A88);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252ADC1C8();
  sub_252E37F84();
  v14 = *(v3 + 16);
  v13[7] = 0;
  type metadata accessor for ControlHomeIntentCodable();
  sub_252ADC508(&qword_27F540C08, v11, type metadata accessor for ControlHomeIntentCodable);
  sub_252E37D54();
  if (!v2)
  {
    v13[6] = *(v3 + 24);
    v13[5] = 1;
    sub_2529854F0();
    sub_252E37CD4();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_252ADC1C8()
{
  result = qword_27F543028;
  if (!qword_27F543028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543028);
  }

  return result;
}

uint64_t HandoffHandleIntentData.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  HandoffHandleIntentData.init(from:)(a1);
  return v2;
}

uint64_t HandoffHandleIntentData.init(from:)(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543030, &qword_252E49A90);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12[-v7];
  *(v1 + 24) = 22;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252ADC1C8();
  sub_252E37F74();
  if (v2)
  {
    type metadata accessor for HandoffHandleIntentData();
    swift_deallocPartialClassInstance();
  }

  else
  {
    type metadata accessor for ControlHomeIntentCodable();
    v12[15] = 0;
    sub_252ADC508(&qword_27F540A90, v10, type metadata accessor for ControlHomeIntentCodable);
    sub_252E37C64();
    *(v1 + 16) = v13;
    v12[13] = 1;
    sub_252982D4C();
    sub_252E37BE4();
    (*(v5 + 8))(v8, v4);
    *(v1 + 24) = v12[14];
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

uint64_t sub_252ADC508(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_252ADC594@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X3>, uint64_t (*a3)(uint64_t)@<X5>, uint64_t *a4@<X8>)
{
  a2();
  v8 = swift_allocObject();
  result = a3(a1);
  if (!v4)
  {
    *a4 = v8;
  }

  return result;
}

unint64_t sub_252ADC73C()
{
  result = qword_27F543038;
  if (!qword_27F543038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543038);
  }

  return result;
}

unint64_t sub_252ADC794()
{
  result = qword_27F543040;
  if (!qword_27F543040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543040);
  }

  return result;
}

unint64_t sub_252ADC7EC()
{
  result = qword_27F543048;
  if (!qword_27F543048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543048);
  }

  return result;
}

unint64_t sub_252ADC844()
{
  result = qword_27F543050;
  if (!qword_27F543050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543050);
  }

  return result;
}

unint64_t sub_252ADC89C()
{
  result = qword_27F543058;
  if (!qword_27F543058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543058);
  }

  return result;
}

unint64_t sub_252ADC8F4()
{
  result = qword_27F543060;
  if (!qword_27F543060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543060);
  }

  return result;
}

uint64_t sub_252ADC948(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543098, &qword_252E49EA8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252ADEF20();
  sub_252E37F84();
  v11 = *v3;
  v12 = v3[1];
  v19 = 0;
  sub_252E37CF4();
  if (!v2)
  {
    v14 = v3[2];
    v15 = v3[3];
    v18 = 1;
    sub_252E37CF4();
    v17 = v3[4];
    v16[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540480, &qword_252E3C910);
    sub_252984B28(&qword_27F540B18);
    sub_252E37CD4();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_252ADCB60()
{
  v1 = 0x696669746E656469;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F6973726576;
  }
}

uint64_t sub_252ADCBC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_252ADDF0C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_252ADCBEC(uint64_t a1)
{
  v2 = sub_252ADEF20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252ADCC28(uint64_t a1)
{
  v2 = sub_252ADEF20();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_252ADCC64@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_252ADE034(a1, v6);
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

uint64_t sub_252ADCCC4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;

  v9 = a4;
  sub_252B4F96C(a1, a2, sub_252ADDE64, v8);
}

uint64_t sub_252ADCD60(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  swift_beginAccess();
  v8 = a2[2];
  v9 = a2[3];
  v11 = a2[4];
  v10 = a2[5];
  v13 = a2[6];
  a2[2] = v3;
  a2[3] = v4;
  a2[4] = v5;
  a2[5] = v6;
  a2[6] = v7;
  sub_252ADDE6C(v3, v4);
  sub_252ADDEBC(v8, v9);
  return sub_252E37614();
}

uint64_t sub_252ADCE20(id *a1)
{
  v1 = *a1;
  v2 = [*a1 entity];
  if (v2 && (v3 = v2, v4 = [v2 entityIdentifier], v3, v4))
  {
    v5 = sub_252E36F34();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = [v1 taskResponses];
  if (!v8)
  {
    goto LABEL_14;
  }

  v9 = v8;
  type metadata accessor for HomeUserTaskResponse();
  v10 = sub_252E37264();

  if (v10 >> 62)
  {
    result = sub_252E378C4();
    if (result)
    {
      goto LABEL_8;
    }

    goto LABEL_13;
  }

  result = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_13:

    v8 = 0;
LABEL_14:
    v15 = 1;
    goto LABEL_15;
  }

LABEL_8:
  if ((v10 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x2530ADF00](0, v10);
  }

  else
  {
    if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v12 = *(v10 + 32);
  }

  v13 = v12;

  v14 = [v13 taskOutcome];

  v8 = v14;
  v15 = 0;
LABEL_15:
  v16 = sub_252D155F4(v8, v15);
  v18 = v17;
  if (qword_27F53F4D8 != -1)
  {
    swift_once();
  }

  v19 = sub_252E36AD4();
  __swift_project_value_buffer(v19, qword_27F544D30);

  v20 = sub_252E36AC4();
  v21 = sub_252E374C4();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v32 = v30;
    *v22 = 136315394;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
    v23 = sub_252E36F94();
    v31 = v5;
    v25 = v16;
    v26 = sub_252BE2CE0(v23, v24, &v32);

    *(v22 + 4) = v26;
    v16 = v25;
    *(v22 + 12) = 2080;

    v27 = sub_252E36F94();
    v29 = sub_252BE2CE0(v27, v28, &v32);

    *(v22 + 14) = v29;
    v5 = v31;
    _os_log_impl(&dword_252917000, v20, v21, "Will memorize resolution for %s %s", v22, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2530AED00](v30, -1, -1);
    MEMORY[0x2530AED00](v22, -1, -1);
  }

  sub_252ADE2C4(v5, v7, v16, v18);
}

uint64_t sub_252ADD190(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = a1;
  v8[4] = a2;
  v8[5] = a4;

  v9 = a4;
  sub_252B4F96C(a1, a2, sub_252ADED88, v8);
}

uint64_t sub_252ADD238(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v21 = *a1;
  v8 = *a1;
  v9 = a1[4];
  v10 = v5;
  if (!v5)
  {
    v8 = qword_27F543068;
    v10 = unk_27F543070;

    v9 = MEMORY[0x277D84F90];
    v6 = a3;
    v7 = a4;
  }

  swift_beginAccess();
  v13 = a2[2];
  v14 = a2[3];
  v15 = v10;
  v16 = v8;
  v18 = a2[4];
  v17 = a2[5];
  v19 = a2[6];
  a2[2] = v16;
  a2[3] = v15;
  a2[4] = v6;
  a2[5] = v7;
  a2[6] = v9;
  sub_252ADDE6C(v21, v5);
  sub_252ADDEBC(v13, v14);
  return sub_252E37614();
}

void sub_252ADD33C(void *a1)
{
  if (a1)
  {
    if (qword_27F53F4D8 != -1)
    {
      swift_once();
    }

    v2 = sub_252E36AD4();
    __swift_project_value_buffer(v2, qword_27F544D30);
    v3 = a1;
    oslog = sub_252E36AC4();
    v4 = sub_252E374D4();

    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v12 = v6;
      *v5 = 136315138;
      v7 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541F30, &unk_252E4AAF0);
      v8 = sub_252E36F94();
      v10 = sub_252BE2CE0(v8, v9, &v12);

      *(v5 + 4) = v10;
      _os_log_impl(&dword_252917000, oslog, v4, "Exception writing on Coreknowledge. Error: %s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v6);
      MEMORY[0x2530AED00](v6, -1, -1);
      MEMORY[0x2530AED00](v5, -1, -1);
    }

    else
    {
    }
  }
}