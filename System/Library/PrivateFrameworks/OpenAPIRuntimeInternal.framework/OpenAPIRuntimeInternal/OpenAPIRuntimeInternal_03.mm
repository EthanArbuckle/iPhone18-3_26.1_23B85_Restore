uint64_t AsyncSequence<>.asDecodedJSONLines<A>(of:decoder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v8 = v7;
  v24[1] = a7;
  v14 = *(a3 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](a1);
  v17 = v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for JSONLinesDeserializationSequence();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = v24 - v20;
  (*(v14 + 16))(v17, v8, a3);
  (*(v14 + 32))(v21, v17, a3);
  v22 = swift_allocObject();
  v22[2] = a3;
  v22[3] = a4;
  v22[4] = a5;
  v22[5] = a6;
  v22[6] = a2;

  swift_getWitnessTable();
  sub_25DD96E14();
}

uint64_t sub_25DD2E8AC(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 32) = a5;
  *(v7 + 40) = a7;
  *(v7 + 16) = a1;
  *(v7 + 24) = a3;
  v8 = a2[1];
  *(v7 + 48) = *a2;
  *(v7 + 64) = v8;
  return MEMORY[0x2822009F8](sub_25DD2E8D8, 0, 0);
}

uint64_t sub_25DD2E8D8()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  v6 = v0[4];
  v5 = v0[5];
  v8 = v0[2];
  v7 = v0[3];
  v9 = swift_unknownObjectRetain();
  v10 = sub_25DD00A5C(v9, v4, v1, v2);
  v12 = v11;
  sub_25DD964D4();
  sub_25DD01088(v10, v12);
  v13 = v0[1];

  return v13();
}

uint64_t sub_25DD2E9B0(uint64_t result, unint64_t a2)
{
  if (!result)
  {
    return !a2;
  }

  if (result == 1)
  {
    return a2 == 1;
  }

  if (a2 < 2)
  {
    return 0;
  }

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

uint64_t sub_25DD2EA30(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v3 = 1;
    return MEMORY[0x25F8A3F90](v3);
  }

  if (a2 == 1)
  {
    v3 = 2;
    return MEMORY[0x25F8A3F90](v3);
  }

  MEMORY[0x25F8A3F90](0);
  v5 = *(a2 + 16);
  result = MEMORY[0x25F8A3F90](v5);
  if (v5)
  {
    v6 = (a2 + 32);
    do
    {
      v7 = *v6++;
      result = sub_25DD97984();
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_25DD2EAA8(uint64_t a1)
{
  sub_25DD97964();
  sub_25DD2EA30(v3, a1);
  return sub_25DD979A4();
}

uint64_t sub_25DD2EB00()
{
  sub_25DD97964();
  sub_25DD2EA30(v2, *v0);
  return sub_25DD979A4();
}

unint64_t sub_25DD2EB74(unint64_t a1)
{
  result = sub_25DD2D9AC(*v1);
  *v1 = a1;
  return result;
}

void sub_25DD2EBA0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v4;
  v8 = *(*v4 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v12 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_8;
  }

  v14 = *(v7 + 24) >> 1;
  if (v14 < v9)
  {
    goto LABEL_8;
  }

  if (v5 == a3)
  {
    while (v6 > 0)
    {
      __break(1u);
LABEL_8:
      if (v8 <= v9)
      {
        v15 = v8 + v6;
      }

      else
      {
        v15 = v8;
      }

      isUniquelyReferenced_nonNull_native = sub_25DD2ECB4(isUniquelyReferenced_nonNull_native, v15, 1, v7);
      v7 = isUniquelyReferenced_nonNull_native;
      v14 = *(isUniquelyReferenced_nonNull_native + 24) >> 1;
      if (v5 != a3)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_16;
  }

LABEL_12:
  v16 = *(v7 + 16);
  if (v14 - v16 < v6)
  {
    goto LABEL_19;
  }

  memcpy((v7 + v16 + 32), (a2 + a3), v6);
  if (v6 <= 0)
  {
LABEL_16:
    swift_unknownObjectRelease();
    *v4 = v7;
    return;
  }

  v17 = *(v7 + 16);
  v18 = __OFADD__(v17, v6);
  v19 = v17 + v6;
  if (!v18)
  {
    *(v7 + 16) = v19;
    goto LABEL_16;
  }

LABEL_20:
  __break(1u);
}

char *sub_25DD2ECB4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2110, &unk_25DD984C0);
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

char *sub_25DD2EDA8(char *result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result += v6 + a3 + 32;
  v10 = (v6 + 32 + a2);
  if (result != v10 || result >= &v10[v9])
  {
    v12 = a3;
    result = memmove(result, v10, v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_25DD2EE7C(uint64_t a1, _OWORD *a2)
{
  v6 = v2[3];
  v8 = v2[5];
  v7 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_25DD1BF14;

  return sub_25DD2E8AC(a1, a2, v7, v9, v6, v10, v8);
}

uint64_t sub_25DD2EF84(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25DD2EFF4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_25DD2F134(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_25DD2F344(uint64_t a1)
{
  v2 = *(a1 + 24);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v6 = *(a1 + 16);
    v7 = *(a1 + 32);
    result = type metadata accessor for JSONLinesDeserializationSequence.Iterator.StateMachine();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_25DD2F3E0(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFD)
  {
    v7 = 2147483645;
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
    if (v5 >= 0x7FFFFFFD)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    v18 = v17 - 2;
    if (v18 < 0)
    {
      v18 = -1;
    }

    return (v18 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

unsigned int *sub_25DD2F530(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFD)
  {
    v7 = 2147483645;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 24) - 8) + 64);
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
  if (v6 < 0x7FFFFFFD)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (a2 > 0x7FFFFFFD)
    {
      v19 = a2 - 2147483646;
    }

    else
    {
      v19 = a2 + 1;
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

uint64_t sub_25DD2F6F8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25DD2F734(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 2;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_25DD2F790(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
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

uint64_t sub_25DD2F7DC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25DD2F818(uint64_t *a1, unsigned int a2)
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

uint64_t sub_25DD2F86C(uint64_t result, unsigned int a2, unsigned int a3)
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

void *sub_25DD2F8C8(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_25DD2F900()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void *sub_25DD2F944(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[2] = 0;
    result[3] = 0;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t sub_25DD2F980(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 32))
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

uint64_t sub_25DD2F9D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t JSONLinesSerializationSequence.Iterator.next()(uint64_t a1)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = v1;
  return MEMORY[0x2822009F8](sub_25DD2FAD8, 0, 0);
}

uint64_t sub_25DD2FAD8()
{
  v1 = *(v0 + 80);
  v2 = *(v1 + 52);
  *(v0 + 16) = *(v1 + 16);
  v3 = *(v0 + 88);
  *(v0 + 120) = v2;
  v4 = *(v1 + 40);
  v10 = *(v1 + 24);
  *(v0 + 24) = v10;
  *(v0 + 40) = v4;
  *(v0 + 96) = type metadata accessor for JSONLinesSerializationSequence.Iterator.StateMachine();
  if (*(v3 + v2))
  {
    v5 = *(v0 + 8);

    return v5(0, 0, 0, 0);
  }

  else
  {
    v7 = *(MEMORY[0x277D856D0] + 4);
    v8 = swift_task_alloc();
    *(v0 + 104) = v8;
    *v8 = v0;
    v8[1] = sub_25DD2FC24;
    v9 = *(v0 + 88);

    return MEMORY[0x282200308](v0 + 48, v10, v4);
  }
}

uint64_t sub_25DD2FC24()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_25DD2FDE0;
  }

  else
  {
    v3 = sub_25DD2FD38;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25DD2FD38()
{
  v1 = *(v0 + 88) + *(v0 + 120);
  v2 = sub_25DD2FE20(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));
  v4 = v3;
  v6 = v5;
  swift_unknownObjectRelease();
  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0;
  }

  if (v2)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v0 + 8);

  return v9(v2, v7, 0, v8);
}

unint64_t sub_25DD2FE20(unint64_t result, unint64_t *a2, unint64_t a3, unint64_t a4)
{
  if ((*v4 & 1) == 0)
  {
    v5 = result;
    if (!result)
    {
      *v4 = 1;
      return v5;
    }

    v6 = a4;
    v7 = a3;
    v14 = result;
    v15 = a2;
    v16 = a3;
    v17 = a4;
    swift_unknownObjectRetain();
    v8 = *sub_25DD014B8();
    if ((v6 & 1) == 0 || (v14 = v5, (swift_isUniquelyReferenced_nonNull() & 1) == 0))
    {
      if (__OFSUB__(v6 >> 1, v7))
      {
        goto LABEL_20;
      }

      v4 = &v14;
      sub_25DD30AE8(((v6 >> 1) - v7));
      v7 = v16;
      v6 = v17;
    }

    v9 = __OFSUB__(v6 >> 1, v7);
    v6 = (v6 >> 1) - v7;
    if (!v9)
    {
      sub_25DD3090C(v6);
      sub_25DD30A08(v6, v8);
      v8 = v14;
      v4 = v15;
      v6 = v16;
      v5 = v17;
      if ((v17 & 1) == 0)
      {
LABEL_9:
        sub_25DD30F58(v8, v4, v6, v5);
        v5 = v10;
LABEL_17:
        v13 = *(v5 + 16);
        swift_unknownObjectRelease();
        return v5;
      }

      sub_25DD97744();
      swift_unknownObjectRetain_n();
      v11 = swift_dynamicCastClass();
      if (!v11)
      {
        swift_unknownObjectRelease();
        v11 = MEMORY[0x277D84F90];
      }

      v12 = *(v11 + 16);

      if (!__OFSUB__(v5 >> 1, v6))
      {
        if (v12 == (v5 >> 1) - v6)
        {
          v5 = swift_dynamicCastClass();
          if (!v5)
          {
            swift_unknownObjectRelease();
            v5 = MEMORY[0x277D84F90];
          }

          goto LABEL_17;
        }

        goto LABEL_22;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      swift_unknownObjectRelease();
      goto LABEL_9;
    }

    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  __break(1u);
  return result;
}

uint64_t sub_25DD2FFC4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1, a3);
  result = type metadata accessor for JSONLinesSerializationSequence.Iterator();
  *(a4 + *(result + 52)) = a2 & 1;
  return result;
}

uint64_t sub_25DD30064(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_25DD2E184;

  return JSONLinesSerializationSequence.Iterator.next()(a2);
}

uint64_t JSONLinesSerializationSequence.makeAsyncIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v7 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v15 = v18 - v14;
  (*(v5 + 16))(v9, v2, v4);
  sub_25DD96DF4();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(v12 + 32))(a2, v15, AssociatedTypeWitness);
  v18[0] = v4;
  v18[1] = AssociatedTypeWitness;
  v18[2] = v10;
  v18[3] = AssociatedConformanceWitness;
  result = type metadata accessor for JSONLinesSerializationSequence.Iterator();
  *(a2 + *(result + 52)) = 0;
  return result;
}

uint64_t sub_25DD302D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  JSONLinesSerializationSequence.makeAsyncIterator()(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t sub_25DD30330()
{
  v0 = sub_25DD96534();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = sub_25DD96594();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v6 = sub_25DD96584();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2368, &unk_25DD999E0);
  v7 = *(v1 + 72);
  v8 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  *(swift_allocObject() + 16) = xmmword_25DD999D0;
  sub_25DD96504();
  sub_25DD96524();
  sub_25DD31030();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2370, &unk_25DD9A900);
  sub_25DD1A55C();
  sub_25DD970A4();
  sub_25DD96544();
  return v6;
}

uint64_t AsyncSequence<>.asEncodedJSONLines(encoder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v21 = a4;
  v22 = a5;
  v10 = *(a2 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](a1);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCC2100, "4D");
  v14 = sub_25DD97384();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v21 - v17;
  (*(v10 + 16))(v13, v6, a2);
  v19 = swift_allocObject();
  v19[2] = a2;
  v19[3] = a3;
  v19[4] = v21;
  v19[5] = a1;

  sub_25DD96E14();

  swift_getWitnessTable();
  return (*(v15 + 32))(v22, v18, v14);
}

uint64_t sub_25DD306D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](sub_25DD306FC, 0, 0);
}

uint64_t sub_25DD306FC()
{
  v1 = v0[6];
  v2 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[3];
  swift_getAssociatedTypeWitness();
  v6 = sub_25DD96574();
  v7 = v0[2];
  v9 = sub_25DD00CE0(v6, v8);
  v10 = (2 * *(v9 + 16)) | 1;
  *v7 = v9;
  v7[1] = v9 + 32;
  v7[2] = 0;
  v7[3] = v10;
  v11 = v0[1];

  return v11();
}

uint64_t sub_25DD30864(char a1)
{
  sub_25DD97964();
  MEMORY[0x25F8A3F90](a1 & 1);
  return sub_25DD979A4();
}

uint64_t sub_25DD308C4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, void))
{
  sub_25DD97964();
  a4(v7, *v4);
  return sub_25DD979A4();
}

uint64_t sub_25DD3090C(uint64_t result)
{
  v4 = v2[2];
  v3 = v2[3];
  v5 = (v3 >> 1) - v4;
  if (__OFSUB__(v3 >> 1, v4))
  {
    __break(1u);
LABEL_11:

    return sub_25DD30AE8(v1);
  }

  v1 = result;
  if (v3)
  {
    v6 = *v2;
    v7 = v2[1];
    sub_25DD97744();
    swift_unknownObjectRetain();
    v8 = swift_dynamicCastClass();
    if (!v8)
    {
      swift_unknownObjectRelease();
      v8 = MEMORY[0x277D84F90];
    }

    v9 = *(v8 + 16);
    if (v7 + v4 + v5 == v8 + v9 + 32)
    {
      v10 = *(v8 + 24);

      v11 = (v10 >> 1) - v9;
      v12 = __OFADD__(v5, v11);
      v5 += v11;
      if (v12)
      {
        __break(1u);
        return result;
      }
    }

    else
    {
    }
  }

  if (v5 < v1 + 1)
  {
    goto LABEL_11;
  }

  return result;
}

uint64_t sub_25DD30A08(uint64_t result, char a2)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v4 >> 1;
  v6 = (v4 >> 1) - v3;
  if (__OFSUB__(v4 >> 1, v3))
  {
    __break(1u);
    goto LABEL_12;
  }

  v7 = result;
  v8 = result + 1 - v6;
  if (__OFSUB__(result + 1, v6))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (!v8)
  {
LABEL_10:
    *(v2[1] + v3 + v7) = a2;
    return result;
  }

  v10 = *v2;
  sub_25DD97744();
  swift_unknownObjectRetain();
  result = swift_dynamicCastClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    result = MEMORY[0x277D84F90];
  }

  v11 = *(result + 16);
  v12 = __OFADD__(v11, v8);
  v13 = v11 + v8;
  if (v12)
  {
    goto LABEL_13;
  }

  *(result + 16) = v13;

  v14 = v5 + v8;
  if (__OFADD__(v5, v8))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if ((v14 & 0x8000000000000000) == 0)
  {
    v2[3] = v4 & 1 | (2 * v14);
    goto LABEL_10;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_25DD30AE8(void *a1)
{
  v5 = sub_25DD30B6C(a1, a1 + 1, *v1, *(v1 + 8), *(v1 + 16), *(v1 + 24));
  v3 = sub_25DD30D20();
  sub_25DD30D3C(&v5, a1, 0, v3);
}

void *sub_25DD30B6C(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v8 = (a6 >> 1) - a5;
  if (__OFSUB__(a6 >> 1, a5))
  {
    __break(1u);
LABEL_26:
    if (v8 >= v7)
    {
      goto LABEL_21;
    }

LABEL_18:
    if (v8 + 0x4000000000000000 >= 0)
    {
      v8 *= 2;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_29;
  }

  v7 = a2;
  v6 = result;
  if ((a6 & 1) == 0)
  {
    goto LABEL_26;
  }

  sub_25DD97744();
  swift_unknownObjectRetain();
  v11 = swift_dynamicCastClass();
  if (!v11)
  {
    swift_unknownObjectRelease();
    v11 = MEMORY[0x277D84F90];
  }

  v12 = *(v11 + 16);
  v13 = a4 + a5 + v8;
  if (v13 == v11 + v12 + 32)
  {
    v15 = *(v11 + 24);

    v16 = (v15 >> 1) - v12;
    v14 = v8 + v16;
    if (__OFADD__(v8, v16))
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }
  }

  else
  {

    v14 = v8;
  }

  swift_unknownObjectRetain();
  v17 = swift_dynamicCastClass();
  if (v14 < v7)
  {
    if (!v17)
    {
      swift_unknownObjectRelease();
      v17 = MEMORY[0x277D84F90];
    }

    v18 = *(v17 + 16);
    if (v13 == v17 + v18 + 32)
    {
      v20 = *(v17 + 24);

      v21 = (v20 >> 1) - v18;
      v22 = __OFADD__(v8, v21);
      v8 += v21;
      if (v22)
      {
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }
    }

    else
    {
    }

    goto LABEL_18;
  }

  if (!v17)
  {
    swift_unknownObjectRelease();
    v17 = MEMORY[0x277D84F90];
  }

  v19 = *(v17 + 16);
  if (v13 == v17 + v19 + 32)
  {
    v23 = *(v17 + 24);

    v24 = (v23 >> 1) - v19;
    v22 = __OFADD__(v8, v24);
    v8 += v24;
    if (!v22)
    {
      goto LABEL_21;
    }

LABEL_31:
    __break(1u);
    return result;
  }

LABEL_21:
  if (v8 <= v7)
  {
    v25 = v7;
  }

  else
  {
    v25 = v8;
  }

  return sub_25DD00E5C(v6, v25);
}

uint64_t sub_25DD30D3C(uint64_t *a1, size_t a2, uint64_t a3, void (*a4)(size_t, uint64_t))
{
  v6 = v4[2];
  v7 = v4[3] >> 1;
  result = v7 - v6;
  if (__OFSUB__(v7, v6))
  {
    __break(1u);
    goto LABEL_32;
  }

  v10 = *a1;
  v11 = *(*a1 + 16);
  v12 = __OFSUB__(v11, a2);
  v13 = v11 - a2;
  if (v12)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v15 = v13 - a3;
  if (__OFSUB__(v13, a3))
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v16 = result - a2;
  if (__OFSUB__(result, a2))
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v12 = __OFSUB__(v16, v15);
  v17 = v16 - v15;
  if (v12)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v34 = v17;
  v18 = (v10 + 32);
  v19 = v10 + 32 + a2;
  __dst = (v19 + a3);
  result = sub_25DD318AC(result);
  if (result)
  {
    v20 = result;
    v32 = v10;
    v21 = v4[2];
    v22 = (v4[1] + v21);
    v23 = &v22[a2];
    if (v18 != v22 || v18 >= v23)
    {
      memmove(v18, v22, a2);
    }

    a4(v19, a3);
    if (__dst != &v23[v34] || __dst >= &v23[v34 + v15])
    {
      memmove(__dst, &v23[v34], v15);
    }

    *(v20 + 16) = 0;

    v10 = v32;
  }

  else
  {
    v21 = v4[2];
    v25 = v21 + a2;
    if (__OFADD__(v21, a2))
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    if (v25 < v21)
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    if (__OFSUB__(v25, v21))
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v26 = v4[1];
    memcpy((v10 + 32), (v26 + v21), a2);
    result = (a4)(&v18[a2], a3);
    v27 = v25 + v34;
    if (__OFADD__(v25, v34))
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v28 = v4[3] >> 1;
    if (v28 < v27)
    {
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    if (__OFSUB__(v28, v27))
    {
LABEL_45:
      __break(1u);
      return result;
    }

    memcpy(__dst, (v26 + v27), v28 - v27);
  }

  v29 = *v4;
  result = swift_unknownObjectRelease();
  if (__OFSUB__(0, v21))
  {
    goto LABEL_36;
  }

  v30 = *(v10 + 16);
  v12 = __OFADD__(v21, v30);
  v31 = v21 + v30;
  if (v12)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v31 < v21)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v31 < 0)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  *v4 = v10;
  v4[1] = &v18[-v21];
  v4[2] = v21;
  v4[3] = (2 * v31) | 1;
}

void sub_25DD30F58(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x277D84F90];
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2110, &unk_25DD984C0);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v8[2] = v5;
      v8[3] = 2 * v9 - 64;
      if (v4 != a3)
      {
LABEL_5:
        memcpy(v8 + 4, (a2 + a3), v5);
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

unint64_t sub_25DD31030()
{
  result = qword_28155EA60;
  if (!qword_28155EA60)
  {
    sub_25DD96534();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28155EA60);
  }

  return result;
}

uint64_t sub_25DD31088(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_25DD1BF14;

  return sub_25DD306D4(a1, a2, v8, v6, v7, v9);
}

uint64_t sub_25DD311BC(uint64_t a1)
{
  v2 = *(a1 + 24);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v6 = *(a1 + 16);
    v7 = *(a1 + 32);
    result = type metadata accessor for JSONLinesSerializationSequence.Iterator.StateMachine();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_25DD31258(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = v6 + 1;
  v10 = 8 * (v6 + 1);
  if ((v6 + 1) <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if (v5 >= 0xFE)
      {
        return (*(v4 + 48))();
      }

      v15 = *(a1 + v6);
      if (v15 >= 2)
      {
        return v15 - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

unsigned int *sub_25DD313C0(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 24) - 8) + 64);
  v9 = v8 + 1;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    v12 = 1;
    if (v9 <= 3)
    {
      v13 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      v14 = HIWORD(v13);
      if (v13 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v13 >= 2)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      if (v14)
      {
        v12 = 4;
      }

      else
      {
        v12 = v16;
      }
    }

    if (v7 >= a2)
    {
LABEL_21:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v12)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0xFE)
      {
        *(result + v8) = a2 + 1;
      }

      else
      {
        v22 = *(v5 + 56);

        return v22();
      }

      return result;
    }
  }

  else
  {
    v12 = 0;
    if (v7 >= a2)
    {
      goto LABEL_21;
    }
  }

  v17 = ~v7 + a2;
  if (v9 >= 4)
  {
    v18 = result;
    bzero(result, v8 + 1);
    result = v18;
    *v18 = v17;
    v19 = 1;
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v19 = (v17 >> (8 * v9)) + 1;
  if (v8 == -1)
  {
LABEL_41:
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v20 = v17 & ~(-1 << (8 * v9));
  v21 = result;
  bzero(result, v9);
  result = v21;
  if (v9 == 3)
  {
    *v21 = v20;
    *(v21 + 2) = BYTE2(v20);
    goto LABEL_41;
  }

  if (v9 == 2)
  {
    *v21 = v20;
    if (v12 > 1)
    {
LABEL_45:
      if (v12 == 2)
      {
        *(result + v9) = v19;
      }

      else
      {
        *(result + v9) = v19;
      }

      return result;
    }
  }

  else
  {
    *v21 = v17;
    if (v12 > 1)
    {
      goto LABEL_45;
    }
  }

LABEL_42:
  if (v12)
  {
    *(result + v9) = v19;
  }

  return result;
}

uint64_t sub_25DD315E8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for IterationBehavior(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for IterationBehavior(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_25DD317B0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25DD317EC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25DD3183C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_25DD318AC(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull();
  if (!result)
  {
    return 0;
  }

  v7 = v1[2];
  v6 = v1[3];
  v8 = (v6 >> 1) - v7;
  if (__OFSUB__(v6 >> 1, v7))
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v9 = *v1;
  v10 = v1[1];
  if ((v6 & 1) == 0)
  {
    goto LABEL_8;
  }

  sub_25DD97744();
  swift_unknownObjectRetain();
  v11 = swift_dynamicCastClass();
  if (!v11)
  {
    swift_unknownObjectRelease();
    v11 = MEMORY[0x277D84F90];
  }

  v12 = *(v11 + 16);
  if (v10 + v7 + v8 != v11 + v12 + 32)
  {

LABEL_8:
    v13 = v8;
    goto LABEL_10;
  }

  v14 = *(v11 + 24);

  v15 = (v14 >> 1) - v12;
  v16 = __OFADD__(v8, v15);
  v13 = v8 + v15;
  if (v16)
  {
    __break(1u);
    return result;
  }

LABEL_10:
  if (v13 < a1)
  {
    return 0;
  }

  sub_25DD97744();
  swift_unknownObjectRetain();
  result = swift_dynamicCastClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    result = MEMORY[0x277D84F90];
  }

  v17 = v10 + v7 - result - 32;
  v16 = __OFADD__(v8, v17);
  v6 = v8 + v17;
  if (v16)
  {
    goto LABEL_18;
  }

  v5 = *(result + 16);
  if (v6 < v5)
  {
LABEL_19:
    v18 = result;
    sub_25DD2EDA8(v6, v5, 0);
    return v18;
  }

  return result;
}

uint64_t sub_25DD31A9C(uint64_t a1)
{
  v2 = v1 + *(a1 + 52);
  v3 = *v2;
  sub_25DD31ADC(*v2, *(v2 + 8));
  return v3;
}

uint64_t sub_25DD31ADC(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }

  return result;
}

uint64_t sub_25DD31AF0(uint64_t a1, char a2, uint64_t a3)
{
  v6 = v3 + *(a3 + 52);
  result = sub_25DD31B38(*v6, *(v6 + 8));
  *v6 = a1;
  *(v6 + 8) = a2;
  return result;
}

uint64_t sub_25DD31B38(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }

  return result;
}

uint64_t JSONSequenceDeserializationSequence.Iterator.next()(uint64_t a1)
{
  *(v2 + 112) = a1;
  *(v2 + 120) = v1;
  return MEMORY[0x2822009F8](sub_25DD31B6C, 0, 0);
}

uint64_t sub_25DD31B6C()
{
  v1 = *(v0 + 112);
  *(v0 + 184) = *(v1 + 52);
  *(v0 + 128) = *(v1 + 16);
  *(v0 + 136) = *(v1 + 24);
  *(v0 + 152) = *(v1 + 40);
  do
  {
    v2 = *(v0 + 184);
    v3 = *(v0 + 120);
    v4 = *(v0 + 144);
    *(v0 + 16) = *(v0 + 128);
    *(v0 + 32) = v4;
    *(v0 + 160) = type metadata accessor for JSONSequenceDeserializationSequence.Iterator.StateMachine();
    sub_25DD320A4();
  }

  while (v5 == 3);
  if (!v5)
  {
LABEL_9:
    v11 = *(v0 + 8);

    return v11();
  }

  if (v5 != 1)
  {
    if (v5 == 2)
    {
      v6 = *(MEMORY[0x277D856D0] + 4);
      v7 = swift_task_alloc();
      *(v0 + 168) = v7;
      *v7 = v0;
      v7[1] = sub_25DD31D50;
      v8 = *(v0 + 152);
      v9 = *(v0 + 136);
      v10 = *(v0 + 120);

      return MEMORY[0x282200308](v0 + 80, v9, v8);
    }

    goto LABEL_9;
  }

  v12 = *(v0 + 144);
  *(v0 + 48) = *(v0 + 128);
  *(v0 + 64) = v12;
  type metadata accessor for JSONSequenceDeserializationSequence.DeserializerError();
  swift_getWitnessTable();
  swift_allocError();
  swift_willThrow();
  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_25DD31D50()
{
  v2 = *(*v1 + 168);
  v5 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = sub_25DD3208C;
  }

  else
  {
    v3 = sub_25DD31E64;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25DD31E64()
{
  v1 = *(v0 + 120) + *(v0 + 184);
  v2 = sub_25DD32328(*(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104));
  v4 = v3;
  v6 = v5;
  swift_unknownObjectRelease();
  v7 = v2;
  if (!v2)
  {
    goto LABEL_10;
  }

  if (v2 != 1)
  {
    v11 = v4;
    v12 = v6;
    goto LABEL_12;
  }

  do
  {
    v8 = *(v0 + 184);
    v9 = *(v0 + 120);
    v10 = *(v0 + 144);
    *(v0 + 16) = *(v0 + 128);
    *(v0 + 32) = v10;
    *(v0 + 160) = type metadata accessor for JSONSequenceDeserializationSequence.Iterator.StateMachine();
    sub_25DD320A4();
  }

  while (v7 == 3);
  if (!v7)
  {
LABEL_10:
    v11 = v7;
    v12 = v7;
LABEL_12:
    v18 = *(v0 + 8);

    return v18(v7, v11, 0, v12);
  }

  if (v7 != 1)
  {
    if (v7 == 2)
    {
      v13 = *(MEMORY[0x277D856D0] + 4);
      v14 = swift_task_alloc();
      *(v0 + 168) = v14;
      *v14 = v0;
      v14[1] = sub_25DD31D50;
      v15 = *(v0 + 152);
      v16 = *(v0 + 136);
      v17 = *(v0 + 120);

      return MEMORY[0x282200308](v0 + 80, v16, v15);
    }

    goto LABEL_12;
  }

  v19 = *(v0 + 144);
  *(v0 + 48) = *(v0 + 128);
  *(v0 + 64) = v19;
  type metadata accessor for JSONSequenceDeserializationSequence.DeserializerError();
  swift_getWitnessTable();
  swift_allocError();
  swift_willThrow();
  v20 = *(v0 + 8);

  return v20();
}

void sub_25DD320A4()
{
  v1 = *v0;
  if (*(v0 + 8))
  {
    if (*(v0 + 8) != 1)
    {
      if (!v1)
      {
        return;
      }

LABEL_30:
      __break(1u);
      return;
    }

    v2 = *v0;

    v3 = sub_25DD014CC();
    v4 = *(v1 + 2);
    if (!v4)
    {
LABEL_7:
      sub_25DD31B38(v1, 1u);
      *v0 = v1;
      *(v0 + 8) = 1;
      return;
    }

    v5 = 0;
    v6 = 1;
    while (v1[v5 + 32] != *v3)
    {
      ++v5;
      v6 += 2;
      if (v4 == v5)
      {
        goto LABEL_7;
      }
    }

    sub_25DD31B38(v1, 1u);
    v13 = *(v1 + 2);
    if (v13 < v5)
    {
      __break(1u);
    }

    else if (v13 > v5)
    {
      sub_25DD31ADC(v1, 1u);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || (v15 = v1, (~v5 + v13) > *(v1 + 3) >> 1))
      {
        v15 = sub_25DD2ECB4(isUniquelyReferenced_nonNull_native, v13, 1, v1);
      }

      sub_25DD2EDA8(0, v5 + 1, 0);
      *v0 = v15;
      *(v0 + 8) = 1;
      if (!v5)
      {
        sub_25DD31B38(v1, 1u);
      }

      return;
    }

    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (!*(v1 + 2))
  {
    return;
  }

  v7 = v1[32];
  v8 = *v0;

  v9 = *sub_25DD014CC();
  sub_25DD31B38(v1, 0);
  if (v7 != v9)
  {
    return;
  }

  v10 = *(v1 + 2);
  if (!v10)
  {
    goto LABEL_29;
  }

  v11 = swift_isUniquelyReferenced_nonNull_native();
  if (!v11 || (v10 - 1) > *(v1 + 3) >> 1)
  {
    v1 = sub_25DD2ECB4(v11, v10, 1, v1);
  }

  v12 = *(v1 + 2) - 1;
  memmove(v1 + 32, v1 + 33, v12);
  *(v1 + 2) = v12;
  *v0 = v1;
  *(v0 + 8) = 1;
}

uint64_t sub_25DD32328(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  result = *v4;
  if (!*(v4 + 8))
  {
    v16 = *v4;
    if (a1)
    {
      v11 = swift_unknownObjectRetain();
      sub_25DD2EBA0(v11, a2, a3, a4);
      *v4 = v16;
      *(v4 + 8) = 0;
      return 1;
    }

    v12 = *(result + 16);
    *v4 = 0;
    *(v4 + 8) = 2;
    if (v12)
    {
      return result;
    }

    v13 = 0;
LABEL_12:
    sub_25DD31B38(result, v13);
    return 0;
  }

  if (*(v4 + 8) != 1)
  {
    __break(1u);
    return result;
  }

  v15 = *v4;
  if (a1)
  {
    v10 = swift_unknownObjectRetain();
    sub_25DD2EBA0(v10, a2, a3, a4);
    *v4 = v15;
    result = 1;
    *(v4 + 8) = 1;
    return result;
  }

  v14 = *(result + 16);
  *v4 = 0;
  *(v4 + 8) = 2;
  if (!v14)
  {
    v13 = 1;
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_25DD32460@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  (*(*(a4 - 8) + 32))(a5, a1, a4);
  result = type metadata accessor for JSONSequenceDeserializationSequence.Iterator();
  v9 = a5 + *(result + 52);
  *v9 = a2;
  *(v9 + 8) = a3;
  return result;
}

uint64_t sub_25DD32510(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_25DD2E184;

  return JSONSequenceDeserializationSequence.Iterator.next()(a2);
}

uint64_t JSONSequenceDeserializationSequence.makeAsyncIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v7 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v15 = v19 - v14;
  (*(v5 + 16))(v9, v2, v4);
  sub_25DD96DF4();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(v12 + 32))(a2, v15, AssociatedTypeWitness);
  v19[0] = v4;
  v19[1] = AssociatedTypeWitness;
  v19[2] = v10;
  v19[3] = AssociatedConformanceWitness;
  result = type metadata accessor for JSONSequenceDeserializationSequence.Iterator();
  v18 = a2 + *(result + 52);
  *v18 = MEMORY[0x277D84F90];
  *(v18 + 8) = 0;
  return result;
}

uint64_t sub_25DD3278C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  JSONSequenceDeserializationSequence.makeAsyncIterator()(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t AsyncSequence<>.asDecodedJSONSequence<A>(of:decoder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v8 = v7;
  v24[1] = a7;
  v14 = *(a3 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](a1);
  v17 = v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for JSONSequenceDeserializationSequence();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = v24 - v20;
  (*(v14 + 16))(v17, v8, a3);
  (*(v14 + 32))(v21, v17, a3);
  v22 = swift_allocObject();
  v22[2] = a3;
  v22[3] = a4;
  v22[4] = a5;
  v22[5] = a6;
  v22[6] = a2;

  swift_getWitnessTable();
  sub_25DD96E14();
}

uint64_t sub_25DD329C4(uint64_t result, char a2, uint64_t a3, char a4)
{
  if (!a2)
  {
    if (!a4)
    {
      v11 = *(result + 16);
      if (v11 == *(a3 + 16))
      {
        if (v11 && result != a3)
        {
          v12 = (result + 32);
          v13 = (a3 + 32);
          while (v11)
          {
            v15 = *v12++;
            v14 = v15;
            v16 = *v13++;
            result = v14 == v16;
            if (v14 != v16 || v11-- == 1)
            {
              return result;
            }
          }

          goto LABEL_36;
        }

        return 1;
      }
    }

    return 0;
  }

  if (a2 != 1)
  {
    if (result)
    {
      if (a4 == 2 && a3 == 1)
      {
        return 1;
      }
    }

    else if (a4 == 2 && !a3)
    {
      return 1;
    }

    return 0;
  }

  if (a4 != 1)
  {
    return 0;
  }

  v4 = *(result + 16);
  if (v4 != *(a3 + 16))
  {
    return 0;
  }

  if (!v4 || result == a3)
  {
    return 1;
  }

  v5 = (result + 32);
  v6 = (a3 + 32);
  while (v4)
  {
    v8 = *v5++;
    v7 = v8;
    v9 = *v6++;
    result = v7 == v9;
    if (v7 != v9 || v4-- == 1)
    {
      return result;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_25DD32AB4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    if (a3 == 1)
    {
      MEMORY[0x25F8A3F90](1);
      v4 = *(a2 + 16);
      result = MEMORY[0x25F8A3F90](v4);
      if (v4)
      {
        v6 = (a2 + 32);
        do
        {
          v7 = *v6++;
          result = sub_25DD97984();
          --v4;
        }

        while (v4);
      }
    }

    else
    {
      if (a2)
      {
        v11 = 3;
      }

      else
      {
        v11 = 2;
      }

      return MEMORY[0x25F8A3F90](v11);
    }
  }

  else
  {
    MEMORY[0x25F8A3F90](0);
    v8 = *(a2 + 16);
    result = MEMORY[0x25F8A3F90](v8);
    if (v8)
    {
      v9 = (a2 + 32);
      do
      {
        v10 = *v9++;
        result = sub_25DD97984();
        --v8;
      }

      while (v8);
    }
  }

  return result;
}

uint64_t sub_25DD32B60(uint64_t a1, char a2)
{
  sub_25DD97964();
  sub_25DD32AB4(v5, a1, a2);
  return sub_25DD979A4();
}

uint64_t sub_25DD32BC8()
{
  sub_25DD97964();
  sub_25DD32AB4(v2, *v0, *(v0 + 8));
  return sub_25DD979A4();
}

uint64_t sub_25DD32C54(uint64_t a1, char a2)
{
  result = sub_25DD31B38(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t sub_25DD32CBC()
{
  sub_25DD97964();
  MEMORY[0x25F8A3F90](0);
  return sub_25DD979A4();
}

uint64_t sub_25DD32D00()
{
  sub_25DD97964();
  MEMORY[0x25F8A3F90](0);
  return sub_25DD979A4();
}

uint64_t sub_25DD32D70(uint64_t a1, _OWORD *a2)
{
  v6 = v2[3];
  v8 = v2[5];
  v7 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_25DD1BF14;

  return sub_25DD2E8AC(a1, a2, v7, v9, v6, v10, v8);
}

uint64_t sub_25DD32EA4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25DD32EE0(uint64_t a1)
{
  v2 = *(a1 + 24);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v6 = *(a1 + 16);
    v7 = *(a1 + 32);
    result = type metadata accessor for JSONSequenceDeserializationSequence.Iterator.StateMachine();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_25DD32F7C(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFD)
  {
    v7 = 253;
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

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  v9 = (a2 - v7 + 255) >> 8;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
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

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (*&a1[v8])
      {
        goto LABEL_24;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (v13)
      {
        goto LABEL_24;
      }
    }

LABEL_28:
    if (v5 >= 0xFD)
    {
      return (*(v4 + 48))();
    }

    v17 = *((&a1[v6 + 7] & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v17 > 2)
    {
      return (v17 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  if (!v12)
  {
    goto LABEL_28;
  }

  v13 = a1[v8];
  if (!a1[v8])
  {
    goto LABEL_28;
  }

LABEL_24:
  v15 = (v13 - 1) << (8 * v8);
  if (v8 <= 3)
  {
    v16 = *a1;
  }

  else
  {
    v15 = 0;
    v16 = *a1;
  }

  return v7 + (v16 | v15) + 1;
}

void sub_25DD330C8(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFD)
  {
    v8 = 253;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(*(a4 + 24) - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      if (v7 < 0xFD)
      {
        v18 = &a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8;
        if (a2 > 0xFD)
        {
          *(v18 + 8) = 0;
          *v18 = a2 - 254;
        }

        else
        {
          *(v18 + 8) = -a2;
        }
      }

      else
      {
        v17 = *(v6 + 56);

        v17();
      }

      return;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 9);
  if (v10 <= 3)
  {
    v16 = (v15 >> 8) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v16;
      }

      else
      {
        *&a1[v10] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v16;
  }
}

uint64_t sub_25DD332B0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_22OpenAPIRuntimeInternal35JSONSequenceDeserializationSequenceV8IteratorV12StateMachineV0H0Oyx_qd____G(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_25DD3331C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25DD3335C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_25DD333A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_25DD333EC(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_25DD33434()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25DD33470(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 32))
  {
    return (*a1 + 2147483644);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25DD334C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_25DD3353C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t JSONSequenceSerializationSequence.Iterator.next()(uint64_t a1)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = v1;
  return MEMORY[0x2822009F8](sub_25DD335F8, 0, 0);
}

uint64_t sub_25DD335F8()
{
  v1 = *(v0 + 80);
  v2 = *(v1 + 52);
  *(v0 + 16) = *(v1 + 16);
  v3 = *(v0 + 88);
  *(v0 + 120) = v2;
  v4 = *(v1 + 40);
  v10 = *(v1 + 24);
  *(v0 + 24) = v10;
  *(v0 + 40) = v4;
  *(v0 + 96) = type metadata accessor for JSONSequenceSerializationSequence.Iterator.StateMachine();
  if (*(v3 + v2))
  {
    v5 = *(v0 + 8);

    return v5(0, 0, 0, 0);
  }

  else
  {
    v7 = *(MEMORY[0x277D856D0] + 4);
    v8 = swift_task_alloc();
    *(v0 + 104) = v8;
    *v8 = v0;
    v8[1] = sub_25DD33744;
    v9 = *(v0 + 88);

    return MEMORY[0x282200308](v0 + 48, v10, v4);
  }
}

uint64_t sub_25DD33744()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_25DD2FDE0;
  }

  else
  {
    v3 = sub_25DD33858;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25DD33858()
{
  v1 = *(v0 + 88) + *(v0 + 120);
  v2 = sub_25DD33918(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));
  v4 = v3;
  v6 = v5;
  swift_unknownObjectRelease();
  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0;
  }

  if (v2)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v0 + 8);

  return v9(v2, v7, 0, v8);
}

char *sub_25DD33918(char *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((*v4 & 1) == 0)
  {
    if (!result)
    {
      v16 = 0;
      *v4 = 1;
      return v16;
    }

    v11 = (a4 >> 1) - a3;
    if (__OFSUB__(a4 >> 1, a3))
    {
      __break(1u);
    }

    else
    {
      v12 = __OFADD__(v11, 2);
      v11 += 2;
      if (!v12)
      {
        v5 = a2;
        v13 = v11 & ~(v11 >> 63);
        swift_unknownObjectRetain();
        v4 = sub_25DD2ECB4(0, v13, 0, MEMORY[0x277D84F90]);
        v7 = *sub_25DD014CC();
        v8 = *(v4 + 2);
        v11 = *(v4 + 3);
        v6 = v8 + 1;
        if (v8 < v11 >> 1)
        {
LABEL_6:
          *(v4 + 2) = v6;
          v4[v8 + 32] = v7;
          v19 = v4;
          v14 = swift_unknownObjectRetain();
          sub_25DD2EBA0(v14, v5, a3, a4);
          v15 = *sub_25DD014B8();
          v16 = v19;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v16 = sub_25DD2ECB4(0, *(v19 + 2) + 1, 1, v19);
          }

          v18 = *(v16 + 2);
          v17 = *(v16 + 3);
          if (v18 >= v17 >> 1)
          {
            v16 = sub_25DD2ECB4((v17 > 1), v18 + 1, 1, v16);
          }

          swift_unknownObjectRelease();
          *(v16 + 2) = v18 + 1;
          v16[v18 + 32] = v15;
          return v16;
        }

LABEL_15:
        v4 = sub_25DD2ECB4((v11 > 1), v6, 1, v4);
        goto LABEL_6;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_25DD33AC0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1, a3);
  result = type metadata accessor for JSONSequenceSerializationSequence.Iterator();
  *(a4 + *(result + 52)) = a2 & 1;
  return result;
}

uint64_t sub_25DD33B60(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_25DD2E184;

  return JSONSequenceSerializationSequence.Iterator.next()(a2);
}

uint64_t JSONSequenceSerializationSequence.makeAsyncIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v7 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v15 = v18 - v14;
  (*(v5 + 16))(v9, v2, v4);
  sub_25DD96DF4();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(v12 + 32))(a2, v15, AssociatedTypeWitness);
  v18[0] = v4;
  v18[1] = AssociatedTypeWitness;
  v18[2] = v10;
  v18[3] = AssociatedConformanceWitness;
  result = type metadata accessor for JSONSequenceSerializationSequence.Iterator();
  *(a2 + *(result + 52)) = 0;
  return result;
}

uint64_t sub_25DD33DCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  JSONSequenceSerializationSequence.makeAsyncIterator()(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t sub_25DD33E2C()
{
  v0 = sub_25DD96534();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = sub_25DD96594();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v6 = sub_25DD96584();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2368, &unk_25DD999E0);
  v7 = *(v1 + 72);
  v8 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  *(swift_allocObject() + 16) = xmmword_25DD999D0;
  sub_25DD96504();
  sub_25DD96524();
  sub_25DD31030();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2370, &unk_25DD9A900);
  sub_25DD1A55C();
  sub_25DD970A4();
  sub_25DD96544();
  return v6;
}

uint64_t AsyncSequence<>.asEncodedJSONSequence(encoder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v21 = a4;
  v22 = a5;
  v10 = *(a2 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](a1);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCC2100, "4D");
  v14 = sub_25DD97384();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v21 - v17;
  (*(v10 + 16))(v13, v6, a2);
  v19 = swift_allocObject();
  v19[2] = a2;
  v19[3] = a3;
  v19[4] = v21;
  v19[5] = a1;

  sub_25DD96E14();

  swift_getWitnessTable();
  return (*(v15 + 32))(v22, v18, v14);
}

uint64_t sub_25DD34200(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, void))
{
  sub_25DD97964();
  a4(v7, *v4);
  return sub_25DD979A4();
}

uint64_t sub_25DD34260(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_25DD1BF14;

  return sub_25DD306D4(a1, a2, v8, v6, v7, v9);
}

uint64_t sub_25DD34394(uint64_t a1)
{
  v2 = *(a1 + 24);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v6 = *(a1 + 16);
    v7 = *(a1 + 32);
    result = type metadata accessor for JSONSequenceSerializationSequence.Iterator.StateMachine();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_25DD34430()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25DD3449C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t ServerSentEventWithJSONData.event.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ServerSentEventWithJSONData.event.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ServerSentEventWithJSONData.data.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = *(a1 + 16);
  v6 = sub_25DD96F04();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v2 + v4, v6);
}

uint64_t ServerSentEventWithJSONData.data.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  v5 = *(a2 + 16);
  v6 = sub_25DD96F04();
  v7 = *(*(v6 - 8) + 40);

  return v7(v2 + v4, a1, v6);
}

uint64_t (*ServerSentEventWithJSONData.data.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t ServerSentEventWithJSONData.id.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 40));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t ServerSentEventWithJSONData.id.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 40));
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t (*ServerSentEventWithJSONData.id.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 40);
  return result;
}

uint64_t ServerSentEventWithJSONData.retry.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 44));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t ServerSentEventWithJSONData.retry.setter(uint64_t result, char a2, uint64_t a3)
{
  v4 = v3 + *(a3 + 44);
  *v4 = result;
  *(v4 + 8) = a2 & 1;
  return result;
}

uint64_t (*ServerSentEventWithJSONData.retry.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 44);
  return result;
}

uint64_t ServerSentEventWithJSONData.init(event:data:id:retry:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v16 = type metadata accessor for ServerSentEventWithJSONData();
  v17 = v16[9];
  (*(*(a8 - 8) + 56))(&a9[v17], 1, 1, a8);
  v18 = v16[11];
  v19 = &a9[v16[10]];
  v20 = &a9[v18];
  *a9 = a1;
  *(a9 + 1) = a2;
  v21 = sub_25DD96F04();
  result = (*(*(v21 - 8) + 40))(&a9[v17], a3, v21);
  *v19 = a4;
  *(v19 + 1) = a5;
  *v20 = a6;
  v20[8] = a7 & 1;
  return result;
}

BOOL static ServerSentEventWithJSONData.== infix(_:_:)(char *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_25DD96F04();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v59 = &v50 - v15;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v17 = *(*(TupleTypeMetadata2 - 8) + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v20 = &v50 - v19;
  v21 = *(a1 + 1);
  v22 = a2[1];
  if (v21)
  {
    if (!v22)
    {
      return 0;
    }

    v58 = v18;
    if ((*a1 != *a2 || v21 != v22) && (sub_25DD975D4() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v58 = v18;
    if (v22)
    {
      return 0;
    }
  }

  v51 = v11;
  v52 = a4;
  v23 = type metadata accessor for ServerSentEventWithJSONData();
  v24 = a1;
  v53 = v23;
  v54 = a1;
  v25 = *(v23 + 36);
  v26 = *(TupleTypeMetadata2 + 48);
  v56 = v13;
  v27 = *(v13 + 16);
  v27(v20, &v24[v25], v12);
  v55 = a2;
  v27(&v20[v26], a2 + v25, v12);
  v57 = v8;
  v28 = *(v8 + 48);
  if (v28(v20, 1, a3) == 1)
  {
    if (v28(&v20[v26], 1, a3) == 1)
    {
      (*(v56 + 8))(v20, v12);
      goto LABEL_16;
    }

LABEL_13:
    (*(v58 + 8))(v20, TupleTypeMetadata2);
    return 0;
  }

  v29 = v59;
  v27(v59, v20, v12);
  if (v28(&v20[v26], 1, a3) == 1)
  {
    (*(v57 + 8))(v29, a3);
    goto LABEL_13;
  }

  v31 = v57;
  v32 = &v20[v26];
  v33 = v51;
  (*(v57 + 32))(v51, v32, a3);
  v34 = *(v52 + 8);
  v35 = sub_25DD96B04();
  v36 = *(v31 + 8);
  v36(v33, a3);
  v36(v29, a3);
  (*(v56 + 8))(v20, v12);
  if ((v35 & 1) == 0)
  {
    return 0;
  }

LABEL_16:
  v38 = v53;
  v37 = v54;
  v39 = *(v53 + 40);
  v40 = (v54 + v39);
  v41 = *(v54 + v39 + 8);
  v42 = v55;
  v43 = (v55 + v39);
  v44 = v43[1];
  if (v41)
  {
    if (!v44 || (*v40 != *v43 || v41 != v44) && (sub_25DD975D4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v44)
  {
    return 0;
  }

  v45 = *(v38 + 44);
  v46 = (v37 + v45);
  v47 = *(v37 + v45 + 8);
  v48 = (v42 + v45);
  v49 = *(v42 + v45 + 8);
  if ((v47 & 1) == 0)
  {
    if (*v46 != *v48)
    {
      v49 = 1;
    }

    return (v49 & 1) == 0;
  }

  return (v49 & 1) != 0;
}

uint64_t ServerSentEventWithJSONData.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (v2[1])
  {
    v5 = *v2;
    sub_25DD97984();
    sub_25DD96B94();
  }

  else
  {
    sub_25DD97984();
  }

  v6 = *(a2 + 36);
  v7 = *(a2 + 16);
  sub_25DD96F04();
  v8 = *(a2 + 24);
  sub_25DD96F14();
  v9 = (v3 + *(a2 + 40));
  if (v9[1])
  {
    v10 = *v9;
    sub_25DD97984();
    sub_25DD96B94();
  }

  else
  {
    sub_25DD97984();
  }

  v11 = v3 + *(a2 + 44);
  if (v11[8] == 1)
  {
    return sub_25DD97984();
  }

  v13 = *v11;
  sub_25DD97984();
  return MEMORY[0x25F8A3FB0](v13);
}

uint64_t ServerSentEventWithJSONData.hashValue.getter(uint64_t a1)
{
  sub_25DD97964();
  ServerSentEventWithJSONData.hash(into:)(v3, a1);
  return sub_25DD979A4();
}

uint64_t sub_25DD34EB8(uint64_t a1, uint64_t a2)
{
  sub_25DD97964();
  ServerSentEventWithJSONData.hash(into:)(v4, a2);
  return sub_25DD979A4();
}

uint64_t ServerSentEvent.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ServerSentEvent.id.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ServerSentEvent.event.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ServerSentEvent.event.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ServerSentEvent.data.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t ServerSentEvent.data.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t ServerSentEvent.retry.getter()
{
  result = *(v0 + 48);
  v2 = *(v0 + 56);
  return result;
}

uint64_t ServerSentEvent.retry.setter(uint64_t result, char a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2 & 1;
  return result;
}

uint64_t ServerSentEvent.init(id:event:data:retry:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8 & 1;
  return result;
}

uint64_t ServerSentEvent.hash(into:)()
{
  v1 = v0[2];
  v3 = v0[3];
  v2 = v0[4];
  v5 = v0[5];
  v4 = v0[6];
  v6 = *(v0 + 56);
  if (v0[1])
  {
    v7 = *v0;
    sub_25DD97984();
    sub_25DD96B94();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_25DD97984();
    if (v3)
    {
LABEL_3:
      sub_25DD97984();
      sub_25DD96B94();
      if (v5)
      {
        goto LABEL_4;
      }

LABEL_8:
      sub_25DD97984();
      if (v6)
      {
        return sub_25DD97984();
      }

      goto LABEL_9;
    }
  }

  sub_25DD97984();
  if (!v5)
  {
    goto LABEL_8;
  }

LABEL_4:
  sub_25DD97984();
  sub_25DD96B94();
  if (v6)
  {
    return sub_25DD97984();
  }

LABEL_9:
  sub_25DD97984();
  return MEMORY[0x25F8A3FB0](v4);
}

uint64_t ServerSentEvent.hashValue.getter()
{
  sub_25DD97964();
  ServerSentEvent.hash(into:)();
  return sub_25DD979A4();
}

uint64_t sub_25DD3522C()
{
  sub_25DD97964();
  ServerSentEvent.hash(into:)();
  return sub_25DD979A4();
}

uint64_t sub_25DD35270()
{
  sub_25DD97964();
  ServerSentEvent.hash(into:)();
  return sub_25DD979A4();
}

uint64_t _s22OpenAPIRuntimeInternal15ServerSentEventV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = *(a1 + 32);
  v8 = *(a1 + 40);
  v7 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(a2 + 8);
  v11 = *(a2 + 16);
  v13 = *(a2 + 24);
  v12 = *(a2 + 32);
  v15 = *(a2 + 40);
  v14 = *(a2 + 48);
  v16 = *(a2 + 56);
  if (v3)
  {
    if (!v10)
    {
      return 0;
    }

    if (*a1 != *a2 || v3 != v10)
    {
      v32 = *(a1 + 40);
      v33 = *(a2 + 40);
      v17 = *(a1 + 32);
      v18 = *(a2 + 48);
      v19 = *(a2 + 56);
      v20 = *(a1 + 56);
      v21 = *(a1 + 48);
      v22 = *(a2 + 32);
      v23 = sub_25DD975D4();
      v12 = v22;
      v7 = v21;
      v9 = v20;
      v16 = v19;
      v14 = v18;
      v5 = v17;
      v8 = v32;
      v15 = v33;
      if ((v23 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v10)
  {
    return 0;
  }

  if (v6)
  {
    if (!v13)
    {
      return 0;
    }

    if (v4 != v11 || v6 != v13)
    {
      v24 = v7;
      v25 = v12;
      v26 = sub_25DD975D4();
      v12 = v25;
      v7 = v24;
      if ((v26 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v13)
  {
    return 0;
  }

  if (v8)
  {
    if (!v15)
    {
      return 0;
    }

    if (v5 != v12 || v8 != v15)
    {
      v27 = v14;
      v28 = v7;
      v29 = sub_25DD975D4();
      v7 = v28;
      v14 = v27;
      if ((v29 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v15)
  {
    return 0;
  }

  if (v9)
  {
    if (v16)
    {
      return 1;
    }
  }

  else
  {
    if (v7 == v14)
    {
      v31 = v16;
    }

    else
    {
      v31 = 1;
    }

    if ((v31 & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_25DD3545C()
{
  result = qword_27FCC24E0;
  if (!qword_27FCC24E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC24E0);
  }

  return result;
}

void sub_25DD354B0(uint64_t a1)
{
  sub_25DD359C0(319, &qword_27FCC24E8);
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    sub_25DD96F04();
    if (v4 <= 0x3F)
    {
      sub_25DD359C0(319, &qword_27FCC24F0);
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_25DD35574(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = 7;
  if (!v5)
  {
    v9 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v10 = ((((v9 + *(*(*(a3 + 16) - 8) + 64) + ((v8 + 16) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 9;
  v11 = (a2 - v7 + 255) >> 8;
  if (v10 <= 3)
  {
    v12 = v11 + 1;
  }

  else
  {
    v12 = 2;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *&a1[v10];
      if (!*&a1[v10])
      {
        goto LABEL_33;
      }
    }

    else
    {
      v15 = *&a1[v10];
      if (!v15)
      {
        goto LABEL_33;
      }
    }

LABEL_29:
    v17 = (v15 - 1) << (8 * v10);
    if (v10 <= 3)
    {
      v18 = *a1;
    }

    else
    {
      v17 = 0;
      v18 = *a1;
    }

    return v7 + (v18 | v17) + 1;
  }

  if (v14)
  {
    v15 = a1[v10];
    if (a1[v10])
    {
      goto LABEL_29;
    }
  }

LABEL_33:
  if (v6 > 0x7FFFFFFE)
  {
    v20 = (*(v4 + 48))(&a1[v8 + 16] & ~v8);
    if (v20 >= 2)
    {
      return v20 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v19 = *(a1 + 1);
    if (v19 >= 0xFFFFFFFF)
    {
      LODWORD(v19) = -1;
    }

    if ((v19 + 1) >= 2)
    {
      return v19;
    }

    else
    {
      return 0;
    }
  }
}

void sub_25DD35724(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0x7FFFFFFE)
  {
    v10 = 2147483646;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(v7 + 80);
  v12 = *(*(*(a4 + 16) - 8) + 64);
  if (!v8)
  {
    ++v12;
  }

  v13 = ((((v12 + ((v11 + 16) & ~v11) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v10 < a3)
  {
    v14 = (a3 - v10 + 255) >> 8;
    if (v13 <= 3)
    {
      v15 = v14 + 1;
    }

    else
    {
      v15 = 2;
    }

    if (v15 >= 0x10000)
    {
      v16 = 4;
    }

    else
    {
      v16 = 2;
    }

    if (v15 < 0x100)
    {
      v16 = 1;
    }

    if (v15 >= 2)
    {
      v6 = v16;
    }

    else
    {
      v6 = 0;
    }
  }

  if (v10 >= a2)
  {
    if (v6 > 1)
    {
      if (v6 != 2)
      {
        *&a1[v13] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_38;
      }

      *&a1[v13] = 0;
    }

    else if (v6)
    {
      a1[v13] = 0;
      if (!a2)
      {
        return;
      }

LABEL_38:
      if (v9 > 0x7FFFFFFE)
      {
        v19 = (&a1[v11 + 16] & ~v11);
        if (v9 >= a2)
        {
          v23 = *(v7 + 56);
          v24 = a2 + 1;
          v25 = &a1[v11 + 16] & ~v11;

          v23(v25, v24);
        }

        else
        {
          if (v12 <= 3)
          {
            v20 = ~(-1 << (8 * v12));
          }

          else
          {
            v20 = -1;
          }

          if (v12)
          {
            v21 = v20 & (~v9 + a2);
            if (v12 <= 3)
            {
              v22 = v12;
            }

            else
            {
              v22 = 4;
            }

            bzero(v19, v12);
            if (v22 > 2)
            {
              if (v22 == 3)
              {
                *v19 = v21;
                v19[2] = BYTE2(v21);
              }

              else
              {
                *v19 = v21;
              }
            }

            else if (v22 == 1)
            {
              *v19 = v21;
            }

            else
            {
              *v19 = v21;
            }
          }
        }
      }

      else if (a2 > 0x7FFFFFFE)
      {
        *a1 = 0;
        *(a1 + 1) = 0;
        *a1 = a2 - 0x7FFFFFFF;
      }

      else
      {
        *(a1 + 1) = a2;
      }

      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  v17 = ~v10 + a2;
  bzero(a1, v13);
  if (v13 <= 3)
  {
    v18 = (v17 >> 8) + 1;
  }

  else
  {
    v18 = 1;
  }

  if (v13 <= 3)
  {
    *a1 = v17;
    if (v6 > 1)
    {
LABEL_26:
      if (v6 == 2)
      {
        *&a1[v13] = v18;
      }

      else
      {
        *&a1[v13] = v18;
      }

      return;
    }
  }

  else
  {
    *a1 = v17;
    if (v6 > 1)
    {
      goto LABEL_26;
    }
  }

  if (v6)
  {
    a1[v13] = v18;
  }
}

void sub_25DD359C0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_25DD96F04();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_25DD35A28(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 57))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_25DD35A84(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t ServerSentEventsDeserializationSequence.init(upstream:while:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a4 - 8) + 32))(a5, a1, a4);
  result = type metadata accessor for ServerSentEventsDeserializationSequence();
  v9 = (a5 + *(result + 36));
  *v9 = a2;
  v9[1] = a3;
  return result;
}

uint64_t sub_25DD35BA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 52);
  v4 = *(v3 + 48);
  v14 = *(v3 + 32);
  v15 = v4;
  v16 = *(v3 + 64);
  v5 = v16;
  v17 = *(v3 + 80);
  v6 = v17;
  v8 = *(v3 + 16);
  v13[0] = *v3;
  v7 = v13[0];
  v13[1] = v8;
  *(a2 + 32) = v14;
  *(a2 + 48) = v4;
  *(a2 + 64) = v5;
  *(a2 + 80) = v6;
  *a2 = v7;
  *(a2 + 16) = v8;
  v9 = *(a1 + 32);
  v12[0] = *(a1 + 16);
  v12[1] = v9;
  v10 = type metadata accessor for ServerSentEventsDeserializationSequence.Iterator.StateMachine();
  return (*(*(v10 - 8) + 16))(v12, v13, v10);
}

double sub_25DD35C5C(__int128 *a1, uint64_t a2)
{
  v14 = a1[2];
  v15 = a1[3];
  v16 = a1[4];
  v17 = *(a1 + 10);
  v12 = *a1;
  v13 = a1[1];
  v3 = v2 + *(a2 + 52);
  v4 = *(v3 + 16);
  v18[0] = *v3;
  v18[1] = v4;
  v5 = *(v3 + 32);
  v6 = *(v3 + 48);
  v7 = *(v3 + 64);
  v19 = *(v3 + 80);
  v18[3] = v6;
  v18[4] = v7;
  v18[2] = v5;
  v10 = *(a2 + 16);
  v11 = *(a2 + 32);
  v8 = type metadata accessor for ServerSentEventsDeserializationSequence.Iterator.StateMachine();
  (*(*(v8 - 8) + 8))(v18, v8);
  *(v3 + 32) = v14;
  *(v3 + 48) = v15;
  *(v3 + 64) = v16;
  *(v3 + 80) = v17;
  result = *&v12;
  *v3 = v12;
  *(v3 + 16) = v13;
  return result;
}

double sub_25DD35D2C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v10 = *(a4 - 8);
  (*(v10 + 16))(a5, a1, a4);
  ServerSentEvent.init(id:event:data:retry:)(0, 0, 0, 0, 0, 0, 0, 1, v15);
  (*(v10 + 8))(a1, a4);
  v11 = a5 + *(type metadata accessor for ServerSentEventsDeserializationSequence.Iterator() + 52);
  v12 = v15[1];
  *v11 = v15[0];
  *(v11 + 16) = v12;
  result = *&v16;
  v14 = v17;
  *(v11 + 32) = v16;
  *(v11 + 48) = v14;
  *(v11 + 64) = MEMORY[0x277D84F90];
  *(v11 + 72) = a2;
  *(v11 + 80) = a3;
  return result;
}

double sub_25DD35E6C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  ServerSentEvent.init(id:event:data:retry:)(0, 0, 0, 0, 0, 0, 0, 1, v9);
  v6 = v9[1];
  *a3 = v9[0];
  *(a3 + 16) = v6;
  result = *&v10;
  v8 = v11;
  *(a3 + 32) = v10;
  *(a3 + 48) = v8;
  *(a3 + 64) = MEMORY[0x277D84F90];
  *(a3 + 72) = a1;
  *(a3 + 80) = a2;
  return result;
}

uint64_t ServerSentEventsDeserializationSequence.Iterator.next()(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  return MEMORY[0x2822009F8](sub_25DD35F28, 0, 0);
}

uint64_t sub_25DD35F28()
{
  v1 = *(v0 + 152);
  v2 = *(v1 + 52);
  *(v0 + 76) = v2;
  v3 = *(v1 + 16);
  *(v0 + 168) = v3;
  v4 = *(v1 + 24);
  *(v0 + 176) = v4;
  v5 = *(v1 + 32);
  *(v0 + 184) = v5;
  v6 = *(v1 + 40);
  *(v0 + 192) = v6;
  *&v7 = v5;
  *(&v7 + 1) = v6;
  *&v8 = v3;
  *(&v8 + 1) = v4;
  while (1)
  {
    v9 = *(v0 + 160) + v2;
    *(v0 + 80) = v8;
    *(v0 + 96) = v7;
    v10 = type metadata accessor for ServerSentEventsDeserializationSequence.Iterator.StateMachine();
    *(v0 + 200) = v10;
    sub_25DD363AC(v10, (v0 + 16));
    v11 = *(v0 + 24);
    if (v11 != 3)
    {
      break;
    }

    v7 = *(v0 + 184);
    v8 = *(v0 + 168);
    v2 = *(v0 + 76);
  }

  if (v11 == 2)
  {
    v13 = *(MEMORY[0x277D856D0] + 4);
    v14 = swift_task_alloc();
    *(v0 + 208) = v14;
    *v14 = v0;
    v14[1] = sub_25DD360C8;
    v15 = *(v0 + 192);
    v16 = *(v0 + 176);
    v17 = *(v0 + 160);

    return MEMORY[0x282200308](v0 + 112, v16, v15);
  }

  else
  {
    if (v11 == 1)
    {
      v12 = *(v0 + 144);
      *v12 = xmmword_25DD9B570;
      v12[1] = 0u;
      v12[2] = 0u;
      *(v12 + 41) = 0u;
    }

    else
    {
      v18 = *(v0 + 144);
      *v18 = *(v0 + 16);
      *(v18 + 8) = v11;
      v19 = *(v0 + 32);
      v20 = *(v0 + 48);
      *(v18 + 41) = *(v0 + 57);
      *(v18 + 16) = v19;
      *(v18 + 32) = v20;
    }

    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_25DD360C8()
{
  v2 = *(*v1 + 208);
  v5 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = sub_25DD36394;
  }

  else
  {
    v3 = sub_25DD361DC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25DD361DC()
{
  v1 = *(v0 + 160) + *(v0 + 76);
  LOBYTE(v1) = sub_25DD36C94(*(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 200));
  swift_unknownObjectRelease();
  if ((v1 & 1) == 0)
  {
    goto LABEL_5;
  }

  do
  {
    v2 = *(v0 + 76);
    v3 = *(v0 + 160);
    v4 = *(v0 + 184);
    *(v0 + 80) = *(v0 + 168);
    *(v0 + 96) = v4;
    v5 = type metadata accessor for ServerSentEventsDeserializationSequence.Iterator.StateMachine();
    *(v0 + 200) = v5;
    sub_25DD363AC(v5, (v0 + 16));
    v6 = *(v0 + 24);
  }

  while (v6 == 3);
  if (v6 != 2)
  {
    if (v6 != 1)
    {
      v15 = *(v0 + 144);
      *v15 = *(v0 + 16);
      *(v15 + 8) = v6;
      v16 = *(v0 + 32);
      v17 = *(v0 + 48);
      *(v15 + 41) = *(v0 + 57);
      *(v15 + 16) = v16;
      *(v15 + 32) = v17;
      goto LABEL_6;
    }

LABEL_5:
    v7 = *(v0 + 144);
    *v7 = xmmword_25DD9B570;
    v7[1] = 0u;
    v7[2] = 0u;
    *(v7 + 41) = 0u;
LABEL_6:
    v8 = *(v0 + 8);

    return v8();
  }

  v10 = *(MEMORY[0x277D856D0] + 4);
  v11 = swift_task_alloc();
  *(v0 + 208) = v11;
  *v11 = v0;
  v11[1] = sub_25DD360C8;
  v12 = *(v0 + 192);
  v13 = *(v0 + 176);
  v14 = *(v0 + 160);

  return MEMORY[0x282200308](v0 + 112, v13, v12);
}

unsigned __int8 *sub_25DD363AC@<X0>(unsigned __int8 *result@<X0>, _OWORD *a2@<X8>)
{
  v4 = v2[1];
  v95 = *v2;
  v96 = v4;
  v5 = v2[4];
  v98 = v2[3];
  v99 = v5;
  v97 = v2[2];
  v6 = *(v2 + 10);
  v100 = v6;
  v7 = v5;
  if (!v5)
  {
    *a2 = xmmword_25DD9B570;
    a2[1] = 0u;
    a2[2] = 0u;
    *(a2 + 41) = 0u;
    return result;
  }

  if (v99 == 1)
  {
    goto LABEL_71;
  }

  v8 = v2;
  v9 = *(&v97 + 1);
  v10 = *(&v99 + 1);
  v92 = v95;
  v93 = v96;
  *v94 = v97;
  *&v94[16] = *(v2 + 6);
  v94[24] = *(v2 + 56);
  v91 = v99;
  if (!*(v99 + 16))
  {
    v31 = v2[3];
    v87 = v2[2];
    v88 = v31;
    v89 = v2[4];
    v90 = *(v2 + 10);
    v32 = v2[1];
    v85 = *v2;
    v86 = v32;
    sub_25DD3987C(&v85, &v80);

    *a2 = xmmword_25DD9B590;
    a2[1] = 0u;
    a2[2] = 0u;
    *(a2 + 41) = 0u;
    v80 = v92;
    v81 = v93;
    *v82 = *v94;
    *&v82[9] = *&v94[9];
    v33 = &v80;
    return sub_25DD39828(v33);
  }

  v11 = result;
  v64 = v97;
  v12 = v2[3];
  v87 = v2[2];
  v88 = v12;
  v89 = v2[4];
  v90 = *(v2 + 10);
  v13 = v2[1];
  v85 = *v2;
  v86 = v13;
  v14 = *(result + 2);
  v80 = *(result + 1);
  v81 = v14;
  v15 = type metadata accessor for ServerSentEventsDeserializationSequence.Iterator.StateMachine.State();
  (*(*(v15 - 8) + 16))(&v80, &v95, v15);
  v16 = *(*(v11 - 1) + 8);

  (v16)(&v85, v11);
  if (!v7[2])
  {
    __break(1u);
    goto LABEL_64;
  }

  v65 = v9;
  v67 = v6;
  v68 = v10;
  v9 = v7[5];
  v10 = v7[6];
  v6 = v7[7];
  v69 = v7[4];
  swift_unknownObjectRetain();

  v2[2] = 0u;
  v2[3] = 0u;
  *v2 = 0u;
  v2[1] = 0u;
  *(v2 + 9) = 0;
  *(v2 + 10) = 0;
  *(v2 + 8) = 1;
  v17 = v7[2];
  if (!v17)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v91 = v7;
  if (!isUniquelyReferenced_nonNull_native || (v17 - 1) > v7[3] >> 1)
  {
    v7 = sub_25DD38F84(isUniquelyReferenced_nonNull_native, v17, 1, v7);
    v91 = v7;
  }

  sub_25DD396FC(0, 1, 0);
  v19 = v6 >> 1;
  if (v10 != (v6 >> 1))
  {
    v34 = v8[3];
    *v82 = v8[2];
    *&v82[16] = v34;
    v83 = v8[4];
    v84 = *(v8 + 10);
    v35 = v8[1];
    v80 = *v8;
    v81 = v35;
    result = (v16)(&v80, v11);
    if (v10 >= v19)
    {
      __break(1u);
LABEL_67:
      __break(1u);
    }

    else
    {
      v36 = v10[v9];
      result = sub_25DD014E0();
      v37 = *result;
      if (v36 == v37)
      {
        swift_unknownObjectRelease();
        goto LABEL_26;
      }

      v38 = 0;
      v39 = v9;
      v40 = v6 >> 1;
      while (v10[v39] != v37)
      {
        ++v39;
        --v38;
        if (v10 == --v40)
        {
          if (__OFSUB__(v19, v10))
          {
            goto LABEL_69;
          }

          sub_25DD96B74();
          swift_unknownObjectRelease();

LABEL_26:
          v43 = v93;
          v42 = *v94;
          v72 = v93;
          v41 = v93;
          v73[0] = *v94;
          *(v73 + 9) = *&v94[9];
          *&v76[9] = *&v94[9];
          v75 = v93;
          *v76 = *v94;
          v44 = v92;
          v71 = v92;
          v74 = v92;
          *v8 = v92;
          v8[1] = v41;
          v45 = *&v76[16];
          v8[2] = *v76;
          v8[3] = v45;
          *(v8 + 8) = v7;
          *(v8 + 9) = v68;
          *(v8 + 10) = v67;
          *(a2 + 41) = 0u;
          a2[1] = 0u;
          a2[2] = 0u;
          *a2 = xmmword_25DD9B580;
          *(v79 + 9) = *&v94[9];
LABEL_40:
          v78 = v43;
          v79[0] = v42;
          v77 = v44;
LABEL_41:
          sub_25DD397CC(&v71, v70);
          v33 = &v77;
          return sub_25DD39828(v33);
        }
      }

      if (&v10[-v38] < 0)
      {
        goto LABEL_67;
      }

      v61 = &v10[-v38];
      if (!__OFSUB__(&v10[-v38], v10))
      {
        swift_unknownObjectRetain();
        v46 = sub_25DD96B74();
        v62 = v47;
        v63 = v46;
        result = swift_unknownObjectRelease();
        if (v10 + 1 != v40)
        {
          if ((v61 + 1) >= v19)
          {
            goto LABEL_70;
          }

          v48 = v10[v39 + 1];
          swift_unknownObjectRetain();
          *sub_25DD014F4();
        }

        v49 = sub_25DD96B74();
        v51 = v50;
        swift_unknownObjectRelease();
        if (v63 == 0x746E657665 && v62 == 0xE500000000000000)
        {

          v16 = &v74;
          v6 = &v92;
          v10 = v67;
          v9 = v68;
LABEL_38:
          swift_unknownObjectRelease();

          *&v93 = v49;
          *(&v93 + 1) = v51;
          goto LABEL_39;
        }

        v9 = v68;
        if (sub_25DD975D4())
        {

          v16 = &v74;
          v6 = &v92;
          v10 = v67;
          goto LABEL_38;
        }

        v16 = &v74;
        v6 = &v92;
        v10 = v67;
        if (v63 == 1635017060 && v62 == 0xE400000000000000)
        {
          v54 = v49;

LABEL_48:
          v55 = v64;
          if (!v65)
          {
            v55 = 0;
          }

          v56 = 0xE000000000000000;
          if (v65)
          {
            v56 = v65;
          }

          *&v74 = v55;
          *(&v74 + 1) = v56;

          MEMORY[0x25F8A3200](v54, v51);

          MEMORY[0x25F8A3200](10, 0xE100000000000000);

          swift_unknownObjectRelease();
          *v94 = v74;
          v9 = v68;
          goto LABEL_39;
        }

        if (sub_25DD975D4())
        {
          v54 = v49;

          v10 = v67;
          goto LABEL_48;
        }

        if (v63 == 25705 && v62 == 0xE200000000000000 || (sub_25DD975D4() & 1) != 0)
        {

          swift_unknownObjectRelease();

          *&v92 = v49;
          *(&v92 + 1) = v51;
          v10 = v67;
LABEL_39:
          v52 = v93;
          v43 = v93;
          v42 = *v94;
          v72 = v93;
          v73[0] = *v94;
          *(v73 + 9) = *(v6 + 41);
          v75 = v93;
          *v76 = *v94;
          *(v16 + 41) = *(v73 + 9);
          v44 = v92;
          v71 = v92;
          v74 = v92;
          *v8 = v92;
          v8[1] = v52;
          v53 = *&v76[16];
          v8[2] = *v76;
          v8[3] = v53;
          *(v8 + 8) = v7;
          *(v8 + 9) = v9;
          *(v8 + 10) = v10;
          *(a2 + 41) = 0u;
          a2[1] = 0u;
          a2[2] = 0u;
          *a2 = xmmword_25DD9B580;
          *(v16 + 105) = *(v6 + 41);
          goto LABEL_40;
        }

        v66 = v49;
        if (v63 == 0x7972746572 && v62 == 0xE500000000000000)
        {

          v10 = v67;
          goto LABEL_61;
        }

        v57 = sub_25DD975D4();

        v10 = v67;
        if (v57)
        {
LABEL_61:
          v58 = sub_25DD380E8(v66, v51);
          v60 = v59;
          swift_unknownObjectRelease();
          if ((v60 & 1) == 0)
          {
            *&v94[16] = v58;
            v94[24] = 0;
          }

          goto LABEL_39;
        }

LABEL_65:

        swift_unknownObjectRelease();
        goto LABEL_39;
      }
    }

    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    return result;
  }

  v20 = v8[3];
  *v82 = v8[2];
  *&v82[16] = v20;
  v83 = v8[4];
  v84 = *(v8 + 10);
  v21 = v8[1];
  v80 = *v8;
  v81 = v21;
  (v16)(&v80, v11);
  if (v65)
  {
    v22 = sub_25DD96C64();
    if (v22)
    {
      sub_25DD38080(v22);
    }
  }

  if (!*&v94[8] || (v23 = sub_25DD3957C(*v94, *&v94[8]), v24 = (v68)(v23, v23 + 32, 0, (2 * *(v23 + 16)) | 1), , (v24 & 1) != 0))
  {
    ServerSentEvent.init(id:event:data:retry:)(0, 0, 0, 0, 0, 0, 0, 1, &v74);
    swift_unknownObjectRelease();
    v25 = v75;
    *v8 = v74;
    v8[1] = v25;
    v26 = *&v76[16];
    v8[2] = *v76;
    v8[3] = v26;
    *(v8 + 8) = v7;
    *(v8 + 9) = v68;
    *(v8 + 10) = v67;
    v27 = v93;
    v71 = v92;
    v28 = v92;
    v72 = v93;
    v73[0] = *v94;
    v29 = *v94;
    *(v73 + 9) = *&v94[9];
    v30 = *&v94[9];
    *(a2 + 41) = *&v94[9];
    a2[1] = v27;
    a2[2] = v29;
    *a2 = v28;
    *(v79 + 9) = v30;
    v78 = v27;
    v79[0] = v29;
    v77 = v28;
    goto LABEL_41;
  }

  swift_unknownObjectRelease();

  *(v8 + 10) = 0;
  v8[3] = 0u;
  v8[4] = 0u;
  v8[1] = 0u;
  v8[2] = 0u;
  *v8 = 0u;
  *a2 = xmmword_25DD9B570;
  a2[1] = 0u;
  a2[2] = 0u;
  *(a2 + 41) = 0u;
  v74 = v92;
  v75 = v93;
  *v76 = *v94;
  *&v76[9] = *&v94[9];
  v33 = &v74;
  return sub_25DD39828(v33);
}

BOOL sub_25DD36C94(_BOOL8 result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5[4];
  *&v37[16] = v5[3];
  v38 = v6;
  v7 = v5[2];
  v36 = v5[1];
  *v37 = v7;
  v39 = *(v5 + 10);
  v35 = *v5;
  v8 = v38;
  if (v38 < 2)
  {
    __break(1u);
  }

  else
  {
    v13 = result;
    v14 = v5[3];
    v29 = v5[2];
    v30 = v14;
    v31 = v5[4];
    v32 = *(v5 + 10);
    v15 = v5[1];
    v28[0] = *v5;
    v28[1] = v15;
    v33[3] = v14;
    v33[4] = v31;
    v33[1] = v15;
    v33[2] = v29;
    v34 = v32;
    v33[0] = v28[0];
    sub_25DD3987C(v28, v26);
    v16 = *(*(a5 - 8) + 8);
    v16(v33, a5);
    v17 = v39;
    if (v13)
    {
      v24 = *(&v38 + 1);
      v5[2] = 0u;
      v5[3] = 0u;
      *v5 = 0u;
      v5[1] = 0u;
      *(v5 + 8) = 1;
      *(v5 + 9) = 0;
      *(v5 + 10) = 0;
      v27 = 0;
      v18 = v5[3];
      v26[2] = v5[2];
      v26[3] = v18;
      v19 = v5[1];
      v26[0] = *v5;
      v26[1] = v19;
      v26[4] = v5[4];
      swift_unknownObjectRetain();
      v16(v26, a5);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_25DD38F84(0, v8[2] + 1, 1, v8);
      }

      v21 = v8[2];
      v20 = v8[3];
      if (v21 >= v20 >> 1)
      {
        v8 = sub_25DD38F84((v20 > 1), v21 + 1, 1, v8);
      }

      v8[2] = v21 + 1;
      v22 = &v8[4 * v21];
      v22[4] = v13;
      v22[5] = a2;
      v22[6] = a3;
      v22[7] = a4;
      *v25 = *v37;
      *&v25[9] = *&v37[9];
      v23 = v36;
      *v5 = v35;
      v5[1] = v23;
      v5[2] = *v25;
      v5[3] = *&v25[16];
      *(v5 + 8) = v8;
      *(v5 + 9) = v24;
      *(v5 + 10) = v17;
    }

    else
    {

      sub_25DD39828(&v35);
      *v5 = 0u;
      v5[1] = 0u;
      v5[2] = 0u;
      v5[3] = 0u;
      v5[4] = 0u;
      *(v5 + 10) = 0;
    }

    return v13;
  }

  return result;
}

uint64_t sub_25DD36ED0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25DD1BF14;

  return ServerSentEventsDeserializationSequence.Iterator.next()(a1, a2);
}

double ServerSentEventsDeserializationSequence.makeAsyncIterator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v9 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v16 = &v21 - v15;
  (*(v7 + 16))(v11, v3, v6);
  sub_25DD96DF4();
  v17 = (v3 + *(a1 + 36));
  v18 = *v17;
  v19 = v17[1];
  swift_getAssociatedConformanceWitness();

  return sub_25DD35D2C(v16, v18, v19, AssociatedTypeWitness, a2);
}

uint64_t AsyncSequence<>.asDecodedServerSentEvents(while:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v10 = *(a3 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](a1);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ServerSentEventsLineDeserializationSequence();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v21 - v17;
  (*(v10 + 16))(v13, v5, a3);
  (*(v10 + 32))(v18, v13, a3);
  swift_getWitnessTable();
  (*(v15 + 32))(a4, v18, v14);
  v19 = (a4 + *(type metadata accessor for ServerSentEventsDeserializationSequence() + 36));
  *v19 = a1;
  v19[1] = a2;
}

uint64_t AsyncSequence<>.asDecodedServerSentEventsWithJSONData<A>(of:decoder:while:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v21[0] = a7;
  v21[1] = a8;
  type metadata accessor for ServerSentEventsLineDeserializationSequence();
  swift_getWitnessTable();
  v15 = type metadata accessor for ServerSentEventsDeserializationSequence();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  AsyncSequence<>.asDecodedServerSentEvents(while:)(a2, a3, a4, v21 - v17);
  v18 = swift_allocObject();
  v18[2] = a4;
  v18[3] = a5;
  v19 = v21[0];
  v18[4] = a6;
  v18[5] = v19;
  v18[6] = a9;
  v18[7] = a1;
  type metadata accessor for ServerSentEventWithJSONData();

  swift_getWitnessTable();
  sub_25DD96E14();
}

uint64_t sub_25DD374F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 80) = a7;
  *(v8 + 88) = a8;
  *(v8 + 64) = a5;
  *(v8 + 72) = a6;
  *(v8 + 48) = a3;
  *(v8 + 56) = a4;
  *(v8 + 40) = a1;
  v10 = *(*(sub_25DD96F04() - 8) + 64) + 15;
  *(v8 + 96) = swift_task_alloc();
  *(v8 + 104) = *a2;
  *(v8 + 120) = *(a2 + 16);
  v11 = *(a2 + 40);
  *(v8 + 128) = *(a2 + 24);
  *(v8 + 144) = v11;
  *(v8 + 160) = *(a2 + 56);

  return MEMORY[0x2822009F8](sub_25DD375D8, 0, 0);
}

uint64_t sub_25DD375D8()
{
  *(v0 + 16) = *(v0 + 136);
  v1 = *(v0 + 96);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = swift_task_alloc();
  v5 = *(v0 + 80);
  v19 = *(v0 + 64);
  *(v4 + 16) = v2;
  *(v4 + 24) = v19;
  *(v4 + 40) = v5;
  *(v4 + 56) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2518, &qword_25DD9BBA8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC21D8, &unk_25DD9BBB0);
  sub_25DD37CB0(sub_25DD3A8A4, v4, v6, v19, v0 + 32, v1);
  LOBYTE(v19) = *(v0 + 160);
  v7 = *(v0 + 144);
  v18 = *(v0 + 152);
  v9 = *(v0 + 120);
  v8 = *(v0 + 128);
  v11 = *(v0 + 104);
  v10 = *(v0 + 112);
  v12 = *(v0 + 88);
  v13 = *(v0 + 96);
  v14 = *(v0 + 64);
  v15 = *(v0 + 40);

  ServerSentEventWithJSONData.init(event:data:id:retry:)(v9, v8, v13, v11, v10, v18, v19, v14, v15);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_25DD377A0(uint64_t a1, unint64_t a2)
{
  v44 = *MEMORY[0x277D85DE8];
  *&v41 = a1;
  *(&v41 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2408, &qword_25DD99C18);
  if (swift_dynamicCast())
  {
    sub_25DCFE2FC(__src, &v42);
    __swift_project_boxed_opaque_existential_1(&v42, v43);
    sub_25DD966D4();
    __src[0] = v41;
    __swift_destroy_boxed_opaque_existential_1(&v42);
    goto LABEL_63;
  }

  v40 = 0;
  memset(__src, 0, sizeof(__src));
  sub_25DD3A98C(__src);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_25DD971D4();
  }

  sub_25DD25F58(v4, v5, &v42);
  v6 = *(&v42 + 1);
  v7 = v42;
  if (*(&v42 + 1) >> 60 != 15)
  {
    __src[0] = v42;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_25DD26B4C(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x28223BE20](*&__src[0]);
  v10 = sub_25DD390B8(sub_25DD3A9F4);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_25DD96754();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v41 + 7) = 0;
  *&v41 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_25DD18420(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_25DD96C04();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_25DD96C44();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v42 = v14;
      *(&v42 + 1) = v38;
      v31 = *(&v42 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_25DD971D4();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_25DD18420(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_25DD96C14();
LABEL_52:
    *(&v41 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v42 = v41;
      *(&v42 + 6) = *(&v41 + 6);
      sub_25DD96764();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v42 = v41;
    *(&v42 + 6) = *(&v41 + 6);
    sub_25DD96764();
    sub_25DD26C08(v36, v35);
    goto LABEL_62;
  }

LABEL_57:

  sub_25DD26C08(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_25DD21C5C(*&__src[0], *(&__src[0] + 1));

  sub_25DD01088(v32, *(&v32 + 1));
  v33 = *MEMORY[0x277D85DE8];
  return v32;
}

uint64_t sub_25DD37CB0@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v30 = a5;
  v31 = a2;
  v32 = a1;
  v29 = *(a3 - 8);
  v10 = *(v29 + 64);
  v11 = MEMORY[0x28223BE20](a1);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 16);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v11);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v24 = &v28 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v24, v26);
  if ((*(v16 + 48))(v24, 1, v15) == 1)
  {
    return (*(*(a4 - 8) + 56))(a6, 1, 1, a4);
  }

  (*(v16 + 32))(v20, v24, v15);
  v32(v20, v13);
  result = (*(v16 + 8))(v20, v15);
  if (v6)
  {
    return (*(v29 + 32))(v30, v13, a3);
  }

  return result;
}

uint64_t sub_25DD37F58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 48);
  v13 = *(v2 + 32);
  v3 = v13;
  v14 = v4;
  v15 = *(v2 + 64);
  v5 = v15;
  v16 = *(v2 + 80);
  v7 = *(v2 + 16);
  v12[0] = *v2;
  v6 = v12[0];
  v12[1] = v7;
  *(a2 + 80) = v16;
  *(a2 + 32) = v3;
  *(a2 + 48) = v4;
  *(a2 + 64) = v5;
  *a2 = v6;
  *(a2 + 16) = v7;
  v8 = *(a1 + 32);
  v11[0] = *(a1 + 16);
  v11[1] = v8;
  v9 = type metadata accessor for ServerSentEventsDeserializationSequence.Iterator.StateMachine.State();
  return (*(*(v9 - 8) + 16))(v11, v12, v9);
}

__n128 sub_25DD37FEC(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 48);
  v9[2] = *(v2 + 32);
  v9[3] = v4;
  v9[4] = *(v2 + 64);
  v10 = *(v2 + 80);
  v5 = *(v2 + 16);
  v9[0] = *v2;
  v9[1] = v5;
  (*(*(a2 - 8) + 8))(v9);
  v6 = *(a1 + 48);
  *(v2 + 32) = *(a1 + 32);
  *(v2 + 48) = v6;
  *(v2 + 64) = *(a1 + 64);
  *(v2 + 80) = *(a1 + 80);
  result = *a1;
  v8 = *(a1 + 16);
  *v2 = *a1;
  *(v2 + 16) = v8;
  return result;
}

uint64_t sub_25DD38080(uint64_t a1)
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
  a1 = sub_25DD96BB4();

  return MEMORY[0x2821FBE70](a1);
}

uint64_t sub_25DD380E8(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_25DD971D4();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_25DD17A9C(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_25DD383F0()
{
  sub_25DD97964();
  sub_25DD307DC(v2, *v0);
  return sub_25DD979A4();
}

uint64_t ServerSentEventsLineDeserializationSequence.Iterator.next()(uint64_t a1)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = v1;
  return MEMORY[0x2822009F8](sub_25DD38450, 0, 0);
}

uint64_t sub_25DD38450()
{
  v1 = *(v0 + 80);
  *(v0 + 152) = *(v1 + 52);
  *(v0 + 96) = *(v1 + 16);
  *(v0 + 104) = *(v1 + 24);
  *(v0 + 120) = *(v1 + 40);
  do
  {
    v2 = *(v0 + 152);
    v3 = *(v0 + 88);
    v4 = *(v0 + 112);
    *(v0 + 16) = *(v0 + 96);
    *(v0 + 32) = v4;
    *(v0 + 128) = type metadata accessor for ServerSentEventsLineDeserializationSequence.Iterator.StateMachine();
    sub_25DD38838();
  }

  while (v5 == 2);
  if (v5 == 1)
  {
    v6 = *(MEMORY[0x277D856D0] + 4);
    v7 = swift_task_alloc();
    *(v0 + 136) = v7;
    *v7 = v0;
    v7[1] = sub_25DD38594;
    v8 = *(v0 + 120);
    v9 = *(v0 + 104);
    v10 = *(v0 + 88);

    return MEMORY[0x282200308](v0 + 48, v9, v8);
  }

  else
  {
    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_25DD38594()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_25DD2DE0C;
  }

  else
  {
    v3 = sub_25DD386A8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25DD386A8()
{
  v1 = *(v0 + 88) + *(v0 + 152);
  v2 = sub_25DD32328(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));
  v4 = v3;
  v6 = v5;
  swift_unknownObjectRelease();
  v7 = v2;
  if (!v2)
  {
    goto LABEL_9;
  }

  if (v2 != 1)
  {
    v11 = v4;
    v12 = v6;
    goto LABEL_11;
  }

  do
  {
    v8 = *(v0 + 152);
    v9 = *(v0 + 88);
    v10 = *(v0 + 112);
    *(v0 + 16) = *(v0 + 96);
    *(v0 + 32) = v10;
    *(v0 + 128) = type metadata accessor for ServerSentEventsLineDeserializationSequence.Iterator.StateMachine();
    sub_25DD38838();
  }

  while (v7 == 2);
  if (v7)
  {
    if (v7 == 1)
    {
      v13 = *(MEMORY[0x277D856D0] + 4);
      v14 = swift_task_alloc();
      *(v0 + 136) = v14;
      *v14 = v0;
      v14[1] = sub_25DD38594;
      v15 = *(v0 + 120);
      v16 = *(v0 + 104);
      v17 = *(v0 + 88);

      return MEMORY[0x282200308](v0 + 48, v16, v15);
    }
  }

  else
  {
LABEL_9:
    v11 = v7;
    v12 = v7;
  }

LABEL_11:
  v18 = *(v0 + 8);

  return v18(v7, v11, 0, v12);
}

void sub_25DD38838()
{
  v1 = *v0;
  if (!*(v0 + 8))
  {
    v6 = v0;
    v17 = *v0;

    v16 = *sub_25DD014B8();
    v15 = *sub_25DD014A4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2500, &qword_25DD9CE70);
    v7 = sub_25DD399F8();
    sub_25DD02518(&v16, &v15, v7, MEMORY[0x277D84B90], &v18);
    sub_25DD31B38(v1, 0);
    v8 = v18;
    if (v19)
    {
      if (v19 != 1)
      {
        return;
      }

      if ((v18 & 0x8000000000000000) == 0)
      {
        v9 = *(v1 + 2);
        if (v9 >= v18)
        {
          if (v9 > v18)
          {
            sub_25DD31ADC(v1, 0);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v20 = v1;
            if (!isUniquelyReferenced_nonNull_native || (v11 = v1, (v9 + ~v8) > *(v1 + 3) >> 1))
            {
              v11 = sub_25DD2ECB4(isUniquelyReferenced_nonNull_native, v9, 1, v1);
              v20 = v11;
            }

            sub_25DD2EDA8(0, v8 + 1, 0);
            *v6 = v11;
            *(v6 + 8) = 1;
            return;
          }

          goto LABEL_34;
        }

        goto LABEL_32;
      }

      __break(1u);
    }

    else if ((v18 & 0x8000000000000000) == 0)
    {
      v12 = *(v1 + 2);
      if (v12 >= v18)
      {
        if (v12 > v18)
        {
          sub_25DD31ADC(v1, 0);
          v13 = swift_isUniquelyReferenced_nonNull_native();
          v20 = v1;
          if (!v13 || (v14 = v1, (v12 + ~v8) > *(v1 + 3) >> 1))
          {
            v14 = sub_25DD2ECB4(v13, v12, 1, v1);
            v20 = v14;
          }

          sub_25DD2EDA8(0, v8 + 1, 0);
          *v6 = v14;
          *(v6 + 8) = 0;
          return;
        }

LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      goto LABEL_33;
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (*(v0 + 8) == 1)
  {
    if (*(v1 + 2))
    {
      v2 = v1[32];
      if (v2 != *sub_25DD014B8())
      {
LABEL_10:
        *v0 = v1;
        *(v0 + 8) = 0;
        return;
      }

      v3 = *(v1 + 2);
      if (v3)
      {
        v4 = swift_isUniquelyReferenced_nonNull_native();
        if (!v4 || (v3 - 1) > *(v1 + 3) >> 1)
        {
          v1 = sub_25DD2ECB4(v4, v3, 1, v1);
        }

        v5 = *(v1 + 2) - 1;
        memmove(v1 + 32, v1 + 33, v5);
        *(v1 + 2) = v5;
        goto LABEL_10;
      }

      goto LABEL_36;
    }
  }

  else if (v1)
  {
LABEL_37:
    __break(1u);
  }
}

uint64_t sub_25DD38B08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  (*(*(a4 - 8) + 32))(a5, a1, a4);
  result = type metadata accessor for ServerSentEventsLineDeserializationSequence.Iterator();
  v9 = a5 + *(result + 52);
  *v9 = a2;
  *(v9 + 8) = a3;
  return result;
}

uint64_t sub_25DD38BB8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_25DD2E184;

  return ServerSentEventsLineDeserializationSequence.Iterator.next()(a2);
}

uint64_t sub_25DD38C50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  v12 = *(MEMORY[0x277D856F8] + 4);
  v13 = swift_task_alloc();
  *(v6 + 32) = v13;
  *v13 = v6;
  v13[1] = sub_25DD3AA7C;

  return MEMORY[0x282200320](a1, a2, a3, a5, a6, v6 + 16);
}

uint64_t ServerSentEventsLineDeserializationSequence.makeAsyncIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v7 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v15 = v19 - v14;
  (*(v5 + 16))(v9, v2, v4);
  sub_25DD96DF4();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(v12 + 32))(a2, v15, AssociatedTypeWitness);
  v19[0] = v4;
  v19[1] = AssociatedTypeWitness;
  v19[2] = v10;
  v19[3] = AssociatedConformanceWitness;
  result = type metadata accessor for ServerSentEventsLineDeserializationSequence.Iterator();
  v18 = a2 + *(result + 52);
  *v18 = MEMORY[0x277D84F90];
  *(v18 + 8) = 0;
  return result;
}

uint64_t sub_25DD38F20(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  v5 = *(*(a1 - 8) + 8);

  return v5(v3, a1);
}

void *sub_25DD38F84(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2520, &unk_25DD9BBD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2100, "4D");
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_25DD390B8(void *(*a1)(uint64_t *__return_ptr, char *, char *))
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
      sub_25DD01088(v6, v5);
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

    sub_25DD01088(v6, v5);
    *v3 = xmmword_25DD99B90;
    sub_25DD01088(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_25DD96654() && __OFSUB__(v6, sub_25DD96684()))
      {
LABEL_26:
        __break(1u);
      }

      v13 = sub_25DD96694();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_25DD96634();

      v11 = v16;
    }

    if (v12 >= v6)
    {

      v17 = sub_25DD394C8(v6, v6 >> 32, a1);

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

    sub_25DD01088(v6, v5);
    v20 = v6;
    v21 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_25DD99B90;
    sub_25DD01088(0, 0xC000000000000000);
    sub_25DD96714();
    result = sub_25DD394C8(v20[2], v20[3], a1);
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

void *sub_25DD3945C(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
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

char *sub_25DD394C8(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_25DD96654();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_25DD96684();
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

  v12 = sub_25DD96674();
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

uint64_t sub_25DD3957C(uint64_t a1, unint64_t a2)
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

  v6 = sub_25DD00E5C(v5, 0);
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

  result = sub_25DD971D4();
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
        v10 = sub_25DD96C04();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_25DD00E5C(v10, 0);
        result = sub_25DD97104();
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

uint64_t sub_25DD396AC@<X0>(uint64_t result@<X0>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  if (result)
  {
    v4 = *a2;
    v5 = a2[1];
    result = sub_25DD97134();
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

unint64_t sub_25DD396FC(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 32 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2100, "4D");
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 32 * a3;
  v13 = (v7 + 32 + 32 * a2);
  if (result != v13 || result >= v13 + 32 * v12)
  {
    result = memmove(result, v13, 32 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_25DD3987C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC24F8, &qword_25DD9B5A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25DD39904(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v11 = v2[6];
  v10 = v2[7];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_25DD1BF14;

  return sub_25DD374F8(a1, a2, v10, v6, v7, v8, v9, v11);
}

unint64_t sub_25DD399F8()
{
  result = qword_27FCC2508;
  if (!qword_27FCC2508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCC2500, &qword_25DD9CE70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC2508);
  }

  return result;
}

unint64_t sub_25DD39AC8(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = sub_25DD39E44();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_25DD39B50(_DWORD *a1, unsigned int a2, uint64_t a3)
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

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
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

_DWORD *sub_25DD39C8C(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
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
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
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
      *v18 = a2 & 0x7FFFFFFF;
      v18[1] = 0;
    }

    else
    {
      *v18 = a2 - 1;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

unint64_t sub_25DD39E44()
{
  result = qword_27FCC2510;
  if (!qword_27FCC2510)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27FCC2510);
  }

  return result;
}

uint64_t sub_25DD39EAC(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFD)
  {
    v7 = 2147483645;
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

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 88;
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
    if (v5 >= 0x7FFFFFFD)
    {
      return (*(v4 + 48))();
    }

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 64);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    v18 = v17 - 2;
    if (v18 < 0)
    {
      v18 = -1;
    }

    return (v18 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

double sub_25DD39FFC(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFD)
  {
    v7 = 2147483645;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 24) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 88;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFA8)
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
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFA8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFA8)
    {
      v15 = ~v7 + a2;
      v16 = a1;
      bzero(a1, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 88);
      a1 = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(a1 + v9) = v14;
      }

      else
      {
        *(a1 + v9) = v14;
      }
    }

    else if (v13)
    {
      *(a1 + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(a1 + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(a1 + v9) = 0;
  }

  else if (v13)
  {
    *(a1 + v9) = 0;
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
  if (v6 < 0x7FFFFFFD)
  {
    v19 = (a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (a2 > 0x7FFFFFFD)
    {
      result = 0.0;
      *(v19 + 72) = 0u;
      *(v19 + 56) = 0u;
      *(v19 + 40) = 0u;
      *(v19 + 24) = 0u;
      *(v19 + 8) = 0u;
      *v19 = a2 - 2147483646;
    }

    else
    {
      *(v19 + 64) = a2 + 1;
    }
  }

  else
  {
    v18 = *(v5 + 56);

    v18();
  }

  return result;
}

uint64_t sub_25DD3A1E0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_22OpenAPIRuntimeInternal39ServerSentEventsDeserializationSequenceV8IteratorV12StateMachineV0J0Oyx_qd____G(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_25DD3A258(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 88))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 64);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 2;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_25DD3A2B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 88) = 0;
    }

    if (a2)
    {
      *(result + 64) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_25DD3A318()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25DD3A354(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 88))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 64);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_25DD3A3A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 80) = 0;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 88) = 0;
    }

    if (a2)
    {
      *(result + 64) = a2 + 1;
    }
  }

  return result;
}

double sub_25DD3A414(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 64) = (a2 - 1);
  }

  return result;
}

uint64_t sub_25DD3A44C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_22OpenAPIRuntimeInternal39ServerSentEventsDeserializationSequenceV8IteratorV12StateMachineV10NextActionOyx_qd____G(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25DD3A4AC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 57))
  {
    return (*a1 + 2147483644);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  v5 = v4 + 1;
  v6 = v4 - 2;
  if (v5 >= 4)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25DD3A50C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *(result + 41) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

double sub_25DD3A574(uint64_t a1, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 56) = 0;
    *a1 = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 8) = a2;
  }

  return result;
}

uint64_t sub_25DD3A5FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, void *))
{
  v6 = *(a1 + 24);
  result = swift_checkMetadataState();
  if (v8 <= 0x3F)
  {
    v12 = 0;
    v14 = result;
    v10[0] = *(a1 + 16);
    v10[1] = result;
    v11 = *(a1 + 32);
    result = a4(319, v10);
    if (v9 <= 0x3F)
    {
      v13 = 0;
      v15 = result;
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_25DD3A6A0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_22OpenAPIRuntimeInternal43ServerSentEventsLineDeserializationSequenceV8IteratorV12StateMachineV0K0Oyx_qd____G(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_25DD3A6F8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25DD3A74C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25DD3A788(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 32))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25DD3A7E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_25DD3A850()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25DD3A8A4@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = v4;
  v8 = v3[3];
  v9 = v3[5];
  v10 = v3[7];
  v11 = *a1;
  v12 = a1[1];

  v13 = sub_25DD377A0(v11, v12);
  v15 = v14;
  sub_25DD964D4();
  result = sub_25DD01088(v13, v15);
  if (!v6)
  {
    return (*(*(v8 - 8) + 56))(a3, 0, 1, v8);
  }

  *a2 = v6;
  return result;
}

uint64_t sub_25DD3A98C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2410, &unk_25DD9BBC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_25DD3A9F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_25DD3945C(sub_25DD3AA5C, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t ServerSentEventsSerializationSequence.Iterator.next()(uint64_t a1)
{
  *(v2 + 176) = a1;
  *(v2 + 184) = v1;
  return MEMORY[0x2822009F8](sub_25DD3AAEC, 0, 0);
}

uint64_t sub_25DD3AAEC()
{
  v1 = *(v0 + 176);
  v2 = *(v1 + 52);
  *(v0 + 144) = *(v1 + 16);
  v3 = *(v0 + 184);
  *(v0 + 76) = v2;
  v4 = *(v1 + 40);
  v10 = *(v1 + 24);
  *(v0 + 152) = v10;
  *(v0 + 168) = v4;
  *(v0 + 192) = type metadata accessor for ServerSentEventsSerializationSequence.Iterator.StateMachine();
  if (*(v3 + v2))
  {
    v5 = *(v0 + 8);

    return v5(0, 0, 0, 0);
  }

  else
  {
    v7 = *(MEMORY[0x277D856D0] + 4);
    v8 = swift_task_alloc();
    *(v0 + 200) = v8;
    *v8 = v0;
    v8[1] = sub_25DD3AC38;
    v9 = *(v0 + 184);

    return MEMORY[0x282200308](v0 + 16, v10, v4);
  }
}

uint64_t sub_25DD3AC38()
{
  v2 = *(*v1 + 200);
  v5 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = sub_25DD3AE2C;
  }

  else
  {
    v3 = sub_25DD3AD4C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25DD3AD4C()
{
  v18 = v0;
  v1 = *(v0 + 32);
  *(v0 + 80) = *(v0 + 16);
  *(v0 + 96) = v1;
  v3 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v0 + 112) = *(v0 + 48);
  *(v0 + 121) = *(v0 + 57);
  v4 = *(v0 + 76);
  v6 = *(v0 + 184);
  v5 = *(v0 + 192);
  v16[0] = v3;
  v16[1] = v2;
  v17[0] = *(v0 + 48);
  *(v17 + 9) = *(v0 + 57);
  v7 = sub_25DD3AE5C(v16);
  v9 = v8;
  v11 = v10;
  sub_25DD114CC(v0 + 80, &qword_27FCC2528, &qword_25DD9BBE8);
  if (v7)
  {
    v12 = v9;
  }

  else
  {
    v12 = 0;
  }

  if (v7)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0;
  }

  v14 = *(v0 + 8);

  return v14(v7, v12, 0, v13);
}

char *sub_25DD3AE5C(char *result)
{
  if (*v1)
  {
    __break(1u);
  }

  else
  {
    v2 = *(result + 1);
    if (v2 == 1)
    {
      v3 = 0;
      *v1 = 1;
    }

    else
    {
      v4 = *result;
      v5 = *(result + 2);
      v6 = *(result + 3);
      v7 = *(result + 4);
      v8 = *(result + 5);
      v9 = *(result + 6);
      v10 = result[56];
      v11 = swift_allocObject();
      *(v11 + 16) = MEMORY[0x277D84F90];
      if (v2)
      {
        *&v29 = v4;
        *(&v29 + 1) = v2;
        sub_25DD07E24();
        sub_25DD3BC50(25705, 0xE200000000000000, &v29, v11);
      }

      if (v6)
      {
        *&v29 = v5;
        *(&v29 + 1) = v6;
        sub_25DD07E24();
        sub_25DD3BC50(0x746E657665, 0xE500000000000000, &v29, v11);
      }

      if ((v10 & 1) == 0)
      {
        *&v29 = v9;
        *&v29 = sub_25DD97374();
        *(&v29 + 1) = v12;
        sub_25DD07E24();
        sub_25DD3BC50(0x7972746572, 0xE500000000000000, &v29, v11);
      }

      if (v8)
      {
        v13 = MEMORY[0x277D837D0];
        *&v29 = v7;
        *(&v29 + 1) = v8;
        v34 = 2573;
        v35 = 0xE200000000000000;
        v32 = 10;
        v33 = 0xE100000000000000;
        v14 = sub_25DD07E24();
        *&v29 = sub_25DD96FA4();
        *(&v29 + 1) = v15;
        v34 = 13;
        v35 = 0xE100000000000000;
        v32 = 10;
        v33 = 0xE100000000000000;
        v28[3] = v14;
        v28[0] = v13;
        v28[1] = v14;
        v16 = sub_25DD96FA4();
        v18 = v17;

        *&v29 = 10;
        *(&v29 + 1) = 0xE100000000000000;
        MEMORY[0x28223BE20](v19);
        v28[2] = &v29;
        v20 = sub_25DD04D30(0x7FFFFFFFFFFFFFFFLL, 0, sub_25DD07D10, v28, v16, v18, &v29);
        v21 = *(v20 + 16);
        if (v21)
        {
          sub_25DD07CBC();
          v22 = (v20 + 56);
          do
          {
            v23 = *(v22 - 1);
            v24 = *v22;
            v29 = *(v22 - 3);
            v30 = v23;
            v31 = v24;

            sub_25DD3BC50(1635017060, 0xE400000000000000, &v29, v11);

            v22 += 4;
            --v21;
          }

          while (v21);
        }
      }

      v25 = *sub_25DD014B8();
      swift_beginAccess();
      v3 = *(v11 + 16);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_25DD2ECB4(0, *(v3 + 2) + 1, 1, v3);
      }

      v27 = *(v3 + 2);
      v26 = *(v3 + 3);
      if (v27 >= v26 >> 1)
      {
        v3 = sub_25DD2ECB4((v26 > 1), v27 + 1, 1, v3);
      }

      *(v3 + 2) = v27 + 1;
      v3[v27 + 32] = v25;
      *(v11 + 16) = v3;
    }

    return v3;
  }

  return result;
}

uint64_t sub_25DD3B210@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1, a3);
  result = type metadata accessor for ServerSentEventsSerializationSequence.Iterator();
  *(a4 + *(result + 52)) = a2 & 1;
  return result;
}

uint64_t sub_25DD3B2B0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_25DD2E184;

  return ServerSentEventsSerializationSequence.Iterator.next()(a2);
}

uint64_t ServerSentEventsSerializationSequence.makeAsyncIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v7 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v15 = v18 - v14;
  (*(v5 + 16))(v9, v2, v4);
  sub_25DD96DF4();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(v12 + 32))(a2, v15, AssociatedTypeWitness);
  v18[0] = v4;
  v18[1] = AssociatedTypeWitness;
  v18[2] = v10;
  v18[3] = AssociatedConformanceWitness;
  result = type metadata accessor for ServerSentEventsSerializationSequence.Iterator();
  *(a2 + *(result + 52)) = 0;
  return result;
}

uint64_t sub_25DD3B51C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  ServerSentEventsSerializationSequence.makeAsyncIterator()(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t AsyncSequence.asEncodedServerSentEvents<>()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7);
  return (*(v4 + 32))(a2, v7, a1);
}

uint64_t sub_25DD3B654()
{
  v0 = sub_25DD96534();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = sub_25DD96594();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v6 = sub_25DD96584();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2368, &unk_25DD999E0);
  v7 = *(v1 + 72);
  v8 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  *(swift_allocObject() + 16) = xmmword_25DD999D0;
  sub_25DD96504();
  sub_25DD96524();
  sub_25DD31030();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2370, &unk_25DD9A900);
  sub_25DD1A55C();
  sub_25DD970A4();
  sub_25DD96544();
  return v6;
}

uint64_t AsyncSequence.asEncodedServerSentEventsWithJSONData<A>(encoder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v8 = v7;
  v27 = a5;
  v28 = a6;
  v29 = a7;
  v13 = *(a2 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](a1);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_25DD97384();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v26 - v20;
  (*(v13 + 16))(v16, v8, a2);
  v22 = swift_allocObject();
  v22[2] = a2;
  v22[3] = a3;
  v24 = v27;
  v23 = v28;
  v22[4] = a4;
  v22[5] = v24;
  v22[6] = v23;
  v22[7] = a1;

  sub_25DD96E14();

  swift_getWitnessTable();
  return (*(v18 + 32))(v29, v21, v17);
}

uint64_t sub_25DD3B9EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[11] = a7;
  v8[12] = a8;
  v8[9] = a5;
  v8[10] = a6;
  v8[7] = a3;
  v8[8] = a4;
  v8[5] = a1;
  v8[6] = a2;
  return MEMORY[0x2822009F8](sub_25DD3BA18, 0, 0);
}

uint64_t sub_25DD3BA18()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  v5 = *(v0 + 48);
  v19 = *(v0 + 72);
  v6 = type metadata accessor for ServerSentEventWithJSONData();
  v20 = *(v6 + 36);
  v7 = (v5 + *(v6 + 40));
  v8 = v7[1];
  v17 = *v7;
  v18 = v6;
  v9 = v5[1];
  v16 = *v5;
  v10 = swift_task_alloc();
  *(v10 + 16) = v4;
  *(v10 + 24) = v19;
  *(v10 + 40) = v2;
  *(v10 + 48) = v1;
  *(v10 + 56) = v3;
  sub_25DD96F04();

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC21D8, &unk_25DD9BBB0);
  sub_25DD37CB0(sub_25DD3C348, v10, v11, MEMORY[0x277D837D0], v0 + 32, v0 + 16);
  v13 = *(v0 + 40);
  v12 = *(v0 + 48);

  ServerSentEvent.init(id:event:data:retry:)(v17, v8, v16, v9, *(v0 + 16), *(v0 + 24), *(v12 + *(v18 + 44)), *(v12 + *(v18 + 44) + 8), v13);
  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_25DD3BC08(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, void))
{
  sub_25DD97964();
  a4(v7, *v4);
  return sub_25DD979A4();
}

uint64_t sub_25DD3BC50(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  swift_beginAccess();

  sub_25DD3BF7C(a1, a2);
  swift_endAccess();
  v9 = *sub_25DD014E0();
  swift_beginAccess();
  v10 = *(a4 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a4 + 16) = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = sub_25DD2ECB4(0, *(v10 + 2) + 1, 1, v10);
    *(a4 + 16) = v10;
  }

  v13 = *(v10 + 2);
  v12 = *(v10 + 3);
  if (v13 >= v12 >> 1)
  {
    v10 = sub_25DD2ECB4((v12 > 1), v13 + 1, 1, v10);
  }

  *(v10 + 2) = v13 + 1;
  v10[v13 + 32] = v9;
  *(a4 + 16) = v10;
  v14 = *sub_25DD014F4();
  swift_beginAccess();
  v15 = *(a4 + 16);
  v16 = swift_isUniquelyReferenced_nonNull_native();
  *(a4 + 16) = v15;
  if ((v16 & 1) == 0)
  {
    v15 = sub_25DD2ECB4(0, *(v15 + 2) + 1, 1, v15);
    *(a4 + 16) = v15;
  }

  v18 = *(v15 + 2);
  v17 = *(v15 + 3);
  if (v18 >= v17 >> 1)
  {
    v15 = sub_25DD2ECB4((v17 > 1), v18 + 1, 1, v15);
  }

  *(v15 + 2) = v18 + 1;
  v15[v18 + 32] = v14;
  *(a4 + 16) = v15;
  sub_25DD97004();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2500, &qword_25DD9CE70);
  v19 = *(swift_getAssociatedConformanceWitness() + 8);
  sub_25DD96D74();
  swift_endAccess();
  v20 = *sub_25DD014B8();
  swift_beginAccess();
  v21 = *(a4 + 16);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(a4 + 16) = v21;
  if ((result & 1) == 0)
  {
    result = sub_25DD2ECB4(0, *(v21 + 16) + 1, 1, v21);
    v21 = result;
    *(a4 + 16) = result;
  }

  v24 = *(v21 + 16);
  v23 = *(v21 + 24);
  if (v24 >= v23 >> 1)
  {
    result = sub_25DD2ECB4((v23 > 1), v24 + 1, 1, v21);
    v21 = result;
  }

  *(v21 + 16) = v24 + 1;
  *(v21 + v24 + 32) = v20;
  *(a4 + 16) = v21;
  return result;
}

uint64_t sub_25DD3BF7C(uint64_t result, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    result = sub_25DD96C04();
    v3 = result;
  }

  else if ((a2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v3 = result & 0xFFFFFFFFFFFFLL;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
  }

  else
  {
    v7 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || *(v4 + 3) >> 1 < v6)
    {
      if (v5 <= v6)
      {
        v9 = v5 + v3;
      }

      else
      {
        v9 = v5;
      }

      v4 = sub_25DD2ECB4(isUniquelyReferenced_nonNull_native, v9, 1, v4);
      v10 = *(v4 + 3) >> 1;
    }

    v11 = *(v4 + 2);
    result = sub_25DD97134();
    if (v12)
    {
      goto LABEL_22;
    }

    v13 = result;

    if (v13 >= v3)
    {
      if (v13 < 1)
      {
LABEL_17:
        *v2 = v4;
        return result;
      }

      v14 = *(v4 + 2);
      v15 = __OFADD__(v14, v13);
      v16 = v14 + v13;
      if (!v15)
      {
        *(v4 + 2) = v16;
        goto LABEL_17;
      }

      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_25DD3C0A4(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v11 = v2[6];
  v10 = v2[7];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_25DD1BF14;

  return sub_25DD3B9EC(a1, a2, v10, v6, v7, v8, v9, v11);
}

uint64_t sub_25DD3C1EC(uint64_t a1)
{
  v2 = *(a1 + 24);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v6 = *(a1 + 16);
    v7 = *(a1 + 32);
    result = type metadata accessor for ServerSentEventsSerializationSequence.Iterator.StateMachine();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_25DD3C288()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25DD3C2F4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25DD3C348@<X0>(void *a1@<X1>, uint64_t *a2@<X8>)
{
  v6 = v2[3];
  v7 = v2[5];
  v8 = v2[7];
  result = sub_25DD96574();
  if (v3)
  {
    *a1 = v3;
    return result;
  }

  v11 = result;
  v12 = v10;
  v13 = sub_25DD26524(result, v10);
  if (v14)
  {
    goto LABEL_10;
  }

  v19 = v11;
  v20 = v12;
  sub_25DD21C5C(v11, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC23E0, &unk_25DD9BEC0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v18 = 0;
    memset(v17, 0, sizeof(v17));
    sub_25DD114CC(v17, &qword_27FCC23E8, &qword_25DD99BF8);
LABEL_9:
    v13 = sub_25DD25EB0(v11, v12);
LABEL_10:
    v15 = v13;
    v16 = v14;
    result = sub_25DD01088(v11, v12);
    goto LABEL_11;
  }

  sub_25DD19D44(v17, v21);
  __swift_project_boxed_opaque_existential_1(v21, v22);
  if ((sub_25DD972E4() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(v21);
    goto LABEL_9;
  }

  sub_25DD01088(v11, v12);
  __swift_project_boxed_opaque_existential_1(v21, v22);
  sub_25DD972D4();
  v16 = *(&v17[0] + 1);
  v15 = *&v17[0];
  result = __swift_destroy_boxed_opaque_existential_1(v21);
LABEL_11:
  *a2 = v15;
  a2[1] = v16;
  return result;
}

uint64_t IterationBehavior.hashValue.getter()
{
  v1 = *v0;
  sub_25DD97964();
  MEMORY[0x25F8A3F90](v1);
  return sub_25DD979A4();
}

void *sub_25DD3C598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocBox();
  (*(*(a3 - 8) + 32))(v9, a1, a3);
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = v8;
  return &unk_25DD9BEE8;
}

uint64_t sub_25DD3C648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  v5[8] = swift_projectBox();

  return MEMORY[0x2822009F8](sub_25DD3C6BC, 0, 0);
}

uint64_t sub_25DD3C6BC()
{
  v1 = v0[8];
  swift_beginAccess();
  v2 = *(MEMORY[0x277D856D0] + 4);
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_25DD3C76C;
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[5];
  v7 = v0[6];

  return MEMORY[0x282200308](v6, v7, v4);
}

uint64_t sub_25DD3C76C()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  *(v3 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_25DD3C8A8, 0, 0);
  }

  else
  {
    swift_endAccess();
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_25DD3C8A8()
{
  swift_endAccess();
  v1 = *(v0 + 8);
  v2 = *(v0 + 80);

  return v1();
}

uint64_t sub_25DD3C90C(uint64_t a1)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_25DD1BF14;

  return sub_25DD3C648(a1, v6, v7, v4, v5);
}

uint64_t sub_25DD3C9C0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_25DD3C9E0, 0, 0);
}

uint64_t sub_25DD3C9E0()
{
  v1 = v0[3];
  v2 = v1[1];
  v7 = (*v1 + **v1);
  v3 = (*v1)[1];
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_25DD3CAD4;
  v5 = v0[2];

  return v7(v5);
}

uint64_t sub_25DD3CAD4()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_25DD3CBC8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25DD1BF14;

  return sub_25DD3C9C0(a1);
}

void *(*sub_25DD3CC94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  v10 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v8 + 32))(&v11[v10], a1, a3);
  return sub_25DD3CF0C;
}

void *sub_25DD3CD7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v13 = &v16 - v12;
  (*(v6 + 16))(v9, a1, a3);
  sub_25DD96DF4();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_25DD3C598(v13, a2, AssociatedTypeWitness, AssociatedConformanceWitness);
  return &unk_25DD9BEE8;
}

uint64_t sub_25DD3CF74@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = sub_25DD3CF4C(v3);
  v7 = v6;

  *a1 = v5;
  a1[1] = v7;
  return result;
}

uint64_t sub_25DD3CFC8(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return sub_25DCFE2FC(a1, v1);
}

uint64_t sub_25DD3D008(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_25DD3D028, 0, 0);
}

uint64_t sub_25DD3D028()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = *(v1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v1, *(v1 + 24));
  sub_25DD96F74();
  v4 = v0[1];

  return v4();
}

uint64_t sub_25DD3D0B8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25DD1C68C;

  return sub_25DD3D008(a1);
}

uint64_t sub_25DD3D1BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*(*(a1 + 16) - 8) + 64);
  MEMORY[0x28223BE20](a1);
  (*(v6 + 16))(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_0(&v10);
  sub_25DD96CB4();
  return sub_25DCFE2FC(&v10, a2);
}

uint64_t sub_25DD3D2F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_25DD3D1BC(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t sub_25DD3D358(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_25DD3D378, 0, 0);
}

uint64_t sub_25DD3D378()
{
  (*(*(*(v0[3] + 24) - 8) + 56))(v0[2], 1, 1);
  v1 = v0[1];

  return v1();
}

uint64_t sub_25DD3D40C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25DD1C68C;

  return sub_25DD3D358(a1, a2);
}

unint64_t sub_25DD3D4BC()
{
  result = qword_27FCC2530;
  if (!qword_27FCC2530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC2530);
  }

  return result;
}

uint64_t sub_25DD3D574()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25DD3D5D0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25DD3D63C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25DD3D678(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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