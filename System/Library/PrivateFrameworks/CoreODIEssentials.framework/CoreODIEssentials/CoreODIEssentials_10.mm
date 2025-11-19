void *sub_1DAFF6F28(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F318, &unk_1DB0AF660);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_1DAFF6FD8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v6[2] = a1;
  v6[3] = 2 * v7 - 64;
  return result;
}

void *sub_1DAFF7044(void *result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1 << *(a4 + 32);
  if (-v5 < 64)
  {
    v6 = ~(-1 << -v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v10 = 0;
    v8 = 0;
LABEL_25:
    *result = a4;
    result[1] = v4;
    result[2] = ~v5;
    result[3] = v10;
    result[4] = v7;
    return v8;
  }

  v8 = a3;
  if (!a3)
  {
    v10 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v26 = result;
    v27 = -1 << *(a4 + 32);
    result = 0;
    v10 = 0;
    v11 = (63 - v5) >> 6;
    v12 = 1;
    while (v7)
    {
LABEL_14:
      v15 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v16 = v15 | (v10 << 6);
      v17 = a4;
      v18 = (*(a4 + 48) + 16 * v16);
      v19 = *v18;
      v20 = v18[1];
      sub_1DAF3523C(*(a4 + 56) + 40 * v16, &v29);
      *&v28 = v19;
      *(&v28 + 1) = v20;
      v21 = v31;
      v35 = v31;
      v22 = v30;
      v23 = v29;
      v33 = v29;
      v34 = v30;
      v32 = v28;
      *v9 = v28;
      *(v9 + 16) = v23;
      *(v9 + 32) = v22;
      *(v9 + 48) = v21;
      if (v12 == v8)
      {

        v5 = v27;
        a4 = v17;
        goto LABEL_23;
      }

      v9 += 56;

      result = v12;
      v24 = __OFADD__(v12++, 1);
      a4 = v17;
      if (v24)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v13 = v10;
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v14 >= v11)
      {
        break;
      }

      v7 = *(v4 + 8 * v14);
      ++v13;
      if (v7)
      {
        v10 = v14;
        goto LABEL_14;
      }
    }

    v7 = 0;
    if (v11 <= v10 + 1)
    {
      v25 = v10 + 1;
    }

    else
    {
      v25 = v11;
    }

    v10 = v25 - 1;
    v8 = result;
    v5 = v27;
LABEL_23:
    result = v26;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

id sub_1DAFF71F8(id result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v10 = 0;
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v11 = v20 & *(v4 + 56);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v12 = 0;
    goto LABEL_32;
  }

  sub_1DB09DD34();
  sub_1DAFF7D18();
  sub_1DAFF7D64();
  result = sub_1DB09DB04();
  v4 = v25;
  v8 = v26;
  v9 = v27;
  v10 = v28;
  v11 = v29;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v22 = v9;
  v23 = v7;
  v12 = 0;
  v13 = (v9 + 64) >> 6;
  v7 = 1;
  while (1)
  {
    if (v4 < 0)
    {
      if (!sub_1DB09DD64())
      {
        goto LABEL_30;
      }

      sub_1DAFF7D18();
      swift_dynamicCast();
      result = v24;
      if (!v24)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v14 = v10;
    if (!v11)
    {
      break;
    }

    v15 = v10;
LABEL_13:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    result = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v7 == a3)
    {
      v12 = a3;
      goto LABEL_30;
    }

    ++a2;
    v12 = v7;
    if (__OFADD__(v7++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v15 >= v13)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_13;
    }
  }

  v11 = 0;
  if (v13 <= v10 + 1)
  {
    v21 = v10 + 1;
  }

  else
  {
    v21 = v13;
  }

  v10 = v21 - 1;
LABEL_30:
  v9 = v22;
  v7 = v23;
LABEL_32:
  *v7 = v4;
  *(v7 + 8) = v8;
  *(v7 + 16) = v9;
  *(v7 + 24) = v10;
  *(v7 + 32) = v11;
  return v12;
}

void *sub_1DAFF73F4(void *result, _BYTE *a2, uint64_t a3, uint64_t a4)
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
      *a2 = *(*(a4 + 48) + (v14 | (v9 << 6)));
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

void sub_1DAFF74F0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
      v8 = MEMORY[0x1E69E7CC0];
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E768, &qword_1DB0A4690);
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

uint64_t objectdestroy_2Tm()
{
  v1 = *(v0 + 32);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

void *sub_1DAFF75F0(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_1DB09DD44();
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  while (1)
  {
    v3 = sub_1DAFF6F28(v2, 0);

    v1 = sub_1DAFF71F8(&v5, v3 + 4, v2, v1);
    sub_1DAF333A4();
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return v3;
}

char *sub_1DAFF76A0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v45 = a4;
  v6 = v5;
  v43[0] = a1;
  v43[1] = a2;
  v44 = a3;
  swift_unknownObjectRetain();
  if (a3 == a4 >> 1)
  {
    v10 = MEMORY[0x1E69E7CC0];
    goto LABEL_49;
  }

  v46 = (a5 + 32);
  v10 = MEMORY[0x1E69E7CC0];
  v36 = a5;
  do
  {
    sub_1DAF70210(v42, v43, 0x8000000000000038, 0);
    if (v6)
    {

      break;
    }

    if ((swift_dynamicCast() & 1) == 0 || (v11 = v38, (v12 = *(a5 + 16)) == 0))
    {
LABEL_48:

      sub_1DAF70638();
      swift_allocError();
      *v32 = 0;
      swift_willThrow();
      swift_unknownObjectRelease();
      break;
    }

    v13 = v37;
    v14 = BYTE8(v37);
    v15 = BYTE9(v37);
    v16 = v39;
    v17 = v40;
    v18 = v46;
    v19 = v41;
    while (1)
    {
      v21 = *v18;
      v18 += 2;
      v20 = v21;
      v22 = v21 >> 60;
      if ((v21 >> 60) <= 4)
      {
        if ((v22 - 1) < 2)
        {
          if (v37 == 16)
          {
            goto LABEL_41;
          }
        }

        else
        {
          if ((v22 - 3) >= 2)
          {
            goto LABEL_27;
          }

          if (v37 == 17)
          {
            goto LABEL_41;
          }
        }

        goto LABEL_28;
      }

      if ((v22 - 5) < 3)
      {
        if (v37 == *((v20 & 0xFFFFFFFFFFFFFFFLL) + 0x10))
        {
          goto LABEL_41;
        }

        goto LABEL_28;
      }

      v23 = __ROR8__(v20 ^ 0x8000000000000000, 3);
      if (v23 <= 2)
      {
        break;
      }

      if (v23 > 4)
      {
        if (v23 != 5 || v37 == 22)
        {
          goto LABEL_42;
        }
      }

      else if (v23 == 3)
      {
        if (v37 == 18)
        {
          goto LABEL_42;
        }
      }

      else if (v37 == 19)
      {
        goto LABEL_42;
      }

LABEL_9:
      if (!--v12)
      {
        goto LABEL_48;
      }
    }

    if (!v23)
    {
      if (v37 == 2)
      {
        goto LABEL_42;
      }

      goto LABEL_9;
    }

    if (v23 != 1)
    {
      if (v37 == 5)
      {
        goto LABEL_42;
      }

      goto LABEL_9;
    }

LABEL_27:
    if (v37 != 4)
    {
LABEL_28:
      if ((v20 & 0x8000000000000000) != 0 && __ROR8__(v20 & 0x7FFFFFFFFFFFFFFFLL, 3) >= 6uLL)
      {
        goto LABEL_42;
      }

      goto LABEL_9;
    }

LABEL_41:
    v35 = v38;
    v25 = v41;
    v26 = v40;
    v27 = v39;
    v28 = v10;
    v29 = BYTE9(v37);
    sub_1DAFF7A3C(v20);
    v15 = v29;
    v10 = v28;
    v16 = v27;
    v17 = v26;
    v19 = v25;
    v11 = v35;
LABEL_42:
    swift_unknownObjectRetain();
    LOBYTE(v34) = 0;
    sub_1DAFF6618(&v37, v13, v14, v15, v11, v16, v17, v19, v20, v34);
    swift_unknownObjectRelease();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_1DAF73290(0, *(v10 + 2) + 1, 1, v10);
    }

    a5 = v36;
    v31 = *(v10 + 2);
    v30 = *(v10 + 3);
    if (v31 >= v30 >> 1)
    {
      v10 = sub_1DAF73290((v30 > 1), v31 + 1, 1, v10);
    }

    sub_1DAFC4354(v20);
    swift_unknownObjectRelease();
    *(v10 + 2) = v31 + 1;
    sub_1DAF40D20(&v37, &v10[32 * v31 + 32]);
  }

  while (v44 != v45 >> 1);
LABEL_49:
  swift_unknownObjectRelease();
  return v10;
}

unint64_t sub_1DAFF7A3C(unint64_t result)
{
  v1 = result >> 60;
  if ((result >> 60) > 3)
  {
    if (v1 > 5)
    {
      if (v1 == 6 || v1 == 7)
      {
      }
    }

    else if (v1 == 4 || v1 == 5)
    {
    }
  }

  else
  {
    if (v1 <= 1)
    {
      if (v1 >= 2)
      {
        return result;
      }
    }

    if (v1 == 2 || v1 == 3)
    {
    }
  }

  return result;
}

char *sub_1DAFF7AAC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *(a2 + 16);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = (a2 + 40);
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v8 = *(v6 - 1);
    v9 = *v6;
    sub_1DAFF7A3C(v8);
    sub_1DAF70210(v17, a1, v8, v9);
    if (!v3)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1DAF73290(0, *(v7 + 2) + 1, 1, v7);
      }

      v14 = *(v7 + 2);
      v13 = *(v7 + 3);
      if (v14 >= v13 >> 1)
      {
        v7 = sub_1DAF73290((v13 > 1), v14 + 1, 1, v7);
      }

      sub_1DAFC4354(v8);
      *(v7 + 2) = v14 + 1;
      sub_1DAF40D20(v17, &v7[32 * v14 + 32]);
      goto LABEL_4;
    }

    v17[0] = v3;
    v10 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0ECF0, &unk_1DB0A1310);
    if (!swift_dynamicCast() || ((v11 = v18, byte_1F56C99C0 != v18) ? (v12 = byte_1F56C99C1 == v18) : (v12 = 1), !v12))
    {
      sub_1DAFC4354(v8);

      goto LABEL_21;
    }

    if (!v9)
    {
      break;
    }

    sub_1DAFC4354(v8);

    v3 = 0;
LABEL_4:
    v6 += 16;
    if (!--v4)
    {
      return v7;
    }
  }

  sub_1DAF70638();
  swift_allocError();
  *v15 = v11;
  swift_willThrow();
  sub_1DAFC4354(v8);
LABEL_21:

  return v7;
}

unint64_t sub_1DAFF7CB4()
{
  result = qword_1ECC0F308;
  if (!qword_1ECC0F308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC0F300, &qword_1DB0AF648);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F308);
  }

  return result;
}

unint64_t sub_1DAFF7D18()
{
  result = qword_1ECC0E240;
  if (!qword_1ECC0E240)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECC0E240);
  }

  return result;
}

unint64_t sub_1DAFF7D64()
{
  result = qword_1ECC0F310;
  if (!qword_1ECC0F310)
  {
    sub_1DAFF7D18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F310);
  }

  return result;
}

unint64_t get_enum_tag_for_layout_string_17CoreODIEssentials0A17ODIASN1DefinitionV8ASN1TypeO(uint64_t *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 60;
  }

  else
  {
    return (*a1 >> 3) + 8;
  }
}

uint64_t sub_1DAFF7DD8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1DAFF7E2C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1DAFF7E80(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x78 && *(a1 + 8))
  {
    return (*a1 + 120);
  }

  v3 = ((*a1 >> 60) & 0x8F | (16 * (*a1 & 7))) ^ 0x7F;
  if (v3 >= 0x77)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1DAFF7ED0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x77)
  {
    *result = a2 - 120;
    if (a3 >= 0x78)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x78)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 4) & 7 | (8 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_1DAFF7F30(void *result, uint64_t a2)
{
  if (a2 < 8)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 60);
  }

  else
  {
    *result = (8 * (a2 - 8)) | 0x8000000000000000;
  }

  return result;
}

uint64_t sub_1DAFF7F84(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x7469573635325345;
  v4 = 0xEC0000004D415568;
  if (v2 != 1)
  {
    v3 = 0x453635325345;
    v4 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x3635325345;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0x7469573635325345;
  v8 = 0xEC0000004D415568;
  if (*a2 != 1)
  {
    v7 = 0x453635325345;
    v8 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x3635325345;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DB09E254();
  }

  return v11 & 1;
}

uint64_t sub_1DAFF808C()
{
  v1 = *v0;
  sub_1DB09E3A4();
  sub_1DB09D794();

  return sub_1DB09E3E4();
}

uint64_t sub_1DAFF8130()
{
  *v0;
  *v0;
  sub_1DB09D794();
}

uint64_t sub_1DAFF81C0()
{
  v1 = *v0;
  sub_1DB09E3A4();
  sub_1DB09D794();

  return sub_1DB09E3E4();
}

uint64_t sub_1DAFF8260@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DAFF844C();
  *a2 = result;
  return result;
}

void sub_1DAFF8290(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xEC0000004D415568;
  v5 = 0x7469573635325345;
  if (v2 != 1)
  {
    v5 = 0x453635325345;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x3635325345;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_1DAFF82F4()
{
  result = qword_1ECC0F320;
  if (!qword_1ECC0F320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F320);
  }

  return result;
}

unint64_t sub_1DAFF83F8()
{
  result = qword_1EE304130;
  if (!qword_1EE304130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE304130);
  }

  return result;
}

uint64_t sub_1DAFF844C()
{
  v0 = sub_1DB09E004();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

void (*sub_1DAFF8498(uint64_t **a1, uint64_t a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_1DAFFCAB0(v6, a2, a3);
  return sub_1DAFF8520;
}

void sub_1DAFF8520(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_1DAFF856C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  v7 = type metadata accessor for PregeneratedAssessment();
  v8 = v7[16];
  v9 = (a3 + v7[15]);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(a3 + v8);
  v13 = *(a3 + v8 + 8);
  v105 = sub_1DAFDD930();
  v15 = v14;
  v102 = sub_1DAF8B2AC(*(a3 + v7[7]), *(a3 + v7[7] + 8));
  v98 = v17;
  v99 = v16;
  v18 = (a3 + v7[9]);
  v19 = *v18;
  v20 = v18[1];
  v21 = sub_1DB09CFA4();
  v106 = v7;
  v104 = v15;
  if (v22 >> 60 != 15)
  {
    v40 = v21;
    v41 = v22;
    v42 = sub_1DB09CC24();
    v43 = *(v42 + 48);
    v44 = *(v42 + 52);
    swift_allocObject();
    sub_1DB09CC14();
    sub_1DAF8C3D4();
    sub_1DB09CC04();

    sub_1DAF4AC40(v40, v41);
    v96 = v111;
    *v97 = v110;
    v94 = v113;
    v95 = v112;
    v29 = v105;
    goto LABEL_13;
  }

  v23 = "invalid assessmentGUID seed format";
  v24 = "CoreODIEssentials/ODNAssessmentGUIDManager.swift";
  if (qword_1EE301E08 != -1)
  {
    goto LABEL_42;
  }

  while (1)
  {
    v25 = v23 - 32;
    v26 = v24 - 32;
    v27 = MEMORY[0x1E69E7CC0];
    v28 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    v29 = v105;
    if (*(v28 + 16))
    {
      v30 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
      if (v31)
      {
        sub_1DAF409DC(*(v28 + 56) + 32 * v30, &v108);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
        if (swift_dynamicCast())
        {
          v27 = *&v107[0];
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = sub_1DAF72EC0(0, *(v27 + 2) + 1, 1, v27);
    }

    v33 = *(v27 + 2);
    v32 = *(v27 + 3);
    if (v33 >= v32 >> 1)
    {
      v27 = sub_1DAF72EC0((v32 > 1), v33 + 1, 1, v27);
    }

    *(v27 + 2) = v33 + 1;
    v34 = &v27[56 * v33];
    *(v34 + 4) = 0xD000000000000022;
    *(v34 + 5) = v25 | 0x8000000000000000;
    *(v34 + 6) = 0xD000000000000030;
    *(v34 + 7) = v26 | 0x8000000000000000;
    *(v34 + 8) = 0x6F72662864656573;
    *(v34 + 9) = 0xEB00000000293A6DLL;
    *(v34 + 10) = 77;
    v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
    *&v108 = v27;
    sub_1DAF40D20(&v108, v107);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1DAF3B11C(v107, 0x636F766E4949444FLL, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
    v36 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v37 = sub_1DB09D6B4();
    v38 = sub_1DB09D604();
    v39 = [v36 initWithDomain:v37 code:-2127 userInfo:v38];

    swift_willThrow();
    *&v108 = 45;
    *(&v108 + 1) = 0xE100000000000000;
    *&v107[0] = 0;
    *(&v107[0] + 1) = 0xE000000000000000;
    sub_1DB09DE44();

    *&v107[0] = 0xD000000000000018;
    *(&v107[0] + 1) = 0x80000001DB0C8FD0;
    swift_getErrorValue();
    v45 = sub_1DB09E324();
    MEMORY[0x1E127FE90](v45);

    v46 = *&v107[0];
    LOBYTE(v107[0]) = 12;
    CoreODILogger.error(_:category:)(v46, *(&v107[0] + 1), v107);

    v96 = 0u;
    *v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    v7 = v106;
LABEL_13:
    v47 = (a3 + v7[11]);
    v48 = *v47;
    v49 = v47[1];
    v50 = sub_1DB09CFA4();
    if (v51 >> 60 == 15)
    {
      if (qword_1EE301E08 != -1)
      {
        swift_once();
      }

      v52 = MEMORY[0x1E69E7CC0];
      v53 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
      if (*(v53 + 16))
      {
        v54 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
        if (v55)
        {
          sub_1DAF409DC(*(v53 + 56) + 32 * v54, &v108);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
          if (swift_dynamicCast())
          {
            v52 = *&v107[0];
          }
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v52 = sub_1DAF72EC0(0, *(v52 + 2) + 1, 1, v52);
      }

      v57 = *(v52 + 2);
      v56 = *(v52 + 3);
      if (v57 >= v56 >> 1)
      {
        v52 = sub_1DAF72EC0((v56 > 1), v57 + 1, 1, v52);
      }

      *(v52 + 2) = v57 + 1;
      v58 = &v52[56 * v57];
      *(v58 + 4) = 0xD000000000000022;
      *(v58 + 5) = 0x80000001DB0C3B70;
      *(v58 + 6) = 0xD000000000000030;
      *(v58 + 7) = 0x80000001DB0C3BA0;
      *(v58 + 8) = 0x6F72662864656573;
      *(v58 + 9) = 0xEB00000000293A6DLL;
      *(v58 + 10) = 77;
      v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
      *&v108 = v52;
      sub_1DAF40D20(&v108, v107);
      v59 = swift_isUniquelyReferenced_nonNull_native();
      sub_1DAF3B11C(v107, 0x636F766E4949444FLL, 0xEE00736E6F697461, v59);
      v60 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v61 = sub_1DB09D6B4();
      v62 = sub_1DB09D604();
      v63 = [v60 initWithDomain:v61 code:-2127 userInfo:v62];

      swift_willThrow();
      *&v108 = 45;
      *(&v108 + 1) = 0xE100000000000000;
      *&v107[0] = 0;
      *(&v107[0] + 1) = 0xE000000000000000;
      sub_1DB09DE44();

      *&v107[0] = 0xD000000000000016;
      *(&v107[0] + 1) = 0x80000001DB0C8FF0;
      swift_getErrorValue();
      v69 = sub_1DB09E324();
      MEMORY[0x1E127FE90](v69);

      v70 = *&v107[0];
      LOBYTE(v107[0]) = 12;
      CoreODILogger.error(_:category:)(v70, *(&v107[0] + 1), v107);

      v71 = 0uLL;
      v72 = 0uLL;
      v73 = 0uLL;
      v74 = 0uLL;
      v7 = v106;
    }

    else
    {
      v64 = v50;
      v65 = v51;
      v66 = sub_1DB09CC24();
      v67 = *(v66 + 48);
      v68 = *(v66 + 52);
      swift_allocObject();
      sub_1DB09CC14();
      sub_1DAF8C3D4();
      sub_1DB09CC04();

      sub_1DAF4AC40(v64, v65);
      v71 = v110;
      v72 = v111;
      v73 = v112;
      v74 = v113;
    }

    v23 = a3[1];
    *a5 = *a3;
    *(a5 + 8) = v23;
    *(a5 + 16) = a1;
    *(a5 + 24) = a2;
    v75 = (a3 + v7[8]);
    v24 = v75[1];
    *(a5 + 32) = *v75;
    *(a5 + 40) = v24;
    *(a5 + 48) = *v97;
    *(a5 + 64) = v96;
    *(a5 + 80) = v95;
    *(a5 + 96) = v94;
    v76 = (a3 + v7[10]);
    v78 = *v76;
    v77 = v76[1];
    *(a5 + 112) = *v76;
    *(a5 + 120) = v77;
    *(a5 + 128) = v71;
    *(a5 + 144) = v72;
    *(a5 + 160) = v73;
    *(a5 + 176) = v74;
    v79 = (a3 + v7[6]);
    v80 = v79[1];
    *(a5 + 192) = *v79;
    *(a5 + 200) = v80;
    v81 = (a3 + v7[12]);
    v82 = *v81;
    v83 = v81[1];
    *(a5 + 208) = *v81;
    *(a5 + 216) = v83;
    *(a5 + 224) = v82;
    *(a5 + 232) = v83;
    *(a5 + 240) = v78;
    *(a5 + 248) = v77;
    *(a5 + 256) = v99;
    *(a5 + 264) = v98;
    v84 = *(a3 + v7[13]);
    *(a5 + 272) = v84;
    v85 = *a4;
    v86 = a4[1];
    *(a5 + 312) = *(a4 + 4);
    *(a5 + 280) = v85;
    *(a5 + 296) = v86;
    *(a5 + 320) = v102 & 1;
    if (!v29)
    {
      goto LABEL_33;
    }

    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();

    sub_1DAFFD350(v29);

    *(a5 + 328) = v29;
    if (!__OFADD__(v84, 1))
    {
      break;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    swift_once();
  }

  *(a5 + 336) = v84 + 1;
  *(a5 + 344) = 0;
  *(a5 + 352) = v104;
  v87 = v84 + 2;
  v24 = __OFADD__(v84, 2);

  if (v24)
  {
    __break(1u);
LABEL_33:
    *(a5 + 328) = 0;
    *(a5 + 336) = 0;
    *(a5 + 344) = 1;
    *(a5 + 352) = 0;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();

    v87 = 0;
  }

  *(a5 + 360) = v87;
  *(a5 + 368) = v29 == 0;
  sub_1DAF3523C(a3 + v7[19], a5 + 376);
  v88 = a3 + v7[5];
  sub_1DB09D0F4();
  v90 = *&v89;
  v23 = v89;
  sub_1DAF8C48C(v29);
  if ((v23 & 0x7FFFFFFFFFFFFFFFLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_39;
  }

  if (v90 >= 9.22337204e18)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v90 <= -9.22337204e18)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  sub_1DAFFD248(a3, type metadata accessor for PregeneratedAssessment);
  *(a5 + 416) = -v90;
  *(a5 + 424) = 0;
  v91 = *(type metadata accessor for ODNAssessmentsFeedbackManager.ODNResultsPayload(0) + 88);
  v92 = type metadata accessor for ODNAssessmentsFeedbackManager.ORDResultsPayload(0);
  return (*(*(v92 - 8) + 56))(a5 + v91, 1, 1, v92);
}

uint64_t sub_1DAFF9558(uint64_t a1, char a2)
{
  *(v3 + 3424) = v2;
  *(v3 + 2129) = a2;
  *(v3 + 3416) = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F328, &qword_1DB0AFA48) - 8) + 64) + 15;
  *(v3 + 3432) = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F348, &unk_1DB0AFA60) - 8) + 64) + 15;
  *(v3 + 3440) = swift_task_alloc();
  *(v3 + 3448) = swift_task_alloc();
  *(v3 + 3456) = swift_task_alloc();
  *(v3 + 3464) = swift_task_alloc();
  v6 = type metadata accessor for ODNAssessmentsFeedbackManager.ORDResultsPayload(0);
  *(v3 + 3472) = v6;
  v7 = *(v6 - 8);
  *(v3 + 3480) = v7;
  v8 = *(v7 + 64) + 15;
  *(v3 + 3488) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DAFF96B4, v2, 0);
}

uint64_t sub_1DAFF96B4()
{
  v212 = v0;
  v1 = *(v0 + 3424);
  v2 = *(v0 + 3416);
  v3 = (*(v1 + 816) + OBJC_IVAR____TtC17CoreODIEssentials13DIPWebService_conversationID);
  v5 = *v3;
  v4 = v3[1];
  v6 = *(v2 + 80);
  v7 = *(v2 + 96);
  v8 = *(v2 + 64);
  *(v0 + 2976) = *(v2 + 48);
  *(v0 + 3024) = v7;
  *(v0 + 3008) = v6;
  *(v0 + 2992) = v8;
  v195 = v1;
  sub_1DAF3523C(v1 + 824, v0 + 3280);
  v9 = *(v0 + 3304);
  v10 = *(v0 + 3312);
  __swift_project_boxed_opaque_existential_1((v0 + 3280), v9);
  v197 = v4;

  sub_1DAF40A84(v0 + 2976, v0 + 3040, &qword_1ECC0E7A8, &unk_1DB0ABEB0);
  sub_1DB09DE44();

  *&v200 = 0xD00000000000002DLL;
  *(&v200 + 1) = 0x80000001DB0C8DF0;
  v193 = v2;
  if (*(v2 + 216))
  {
    v13 = v2 + 224;
    v12 = *(v2 + 224);
    v11 = *(v13 + 8);
  }

  else
  {
    v11 = 0xE300000000000000;
    v12 = 7104878;
  }

  v14 = *(v0 + 3424);
  MEMORY[0x1E127FE90](v12, v11);

  v15 = v200;
  LOBYTE(v200) = 12;
  (*(v10 + 16))(v15, *(&v200 + 1), &v200, v9, v10);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 3280));
  swift_beginAccess();
  v16 = *(v14 + 808);

  v17 = sub_1DAFFAC60(v5, v197, v16);

  v18 = *(v0 + 3424);
  if (v17)
  {
    sub_1DAF40AEC(v0 + 2976, &qword_1ECC0E7A8, &unk_1DB0ABEB0);
    v19 = *(v18 + 848);
    v20 = *(v18 + 856);
    __swift_project_boxed_opaque_existential_1((v195 + 824), v19);
    *&v200 = 0;
    *(&v200 + 1) = 0xE000000000000000;
    sub_1DB09DE44();
    MEMORY[0x1E127FE90](0x75736552204E444FLL, 0xEF20726F6620746CLL);
    MEMORY[0x1E127FE90](v5, v197);

    MEMORY[0x1E127FE90](0xD00000000000002FLL, 0x80000001DB0C8F50);
    v21 = v200;
    LOBYTE(v200) = 12;
    (*(v20 + 32))(v21, *(&v200 + 1), &v200, v19, v20);

    v22 = *(v18 + 848);
    v23 = *(v18 + 856);
    __swift_project_boxed_opaque_existential_1((v195 + 824), v22);
    LOBYTE(v200) = 12;
    (*(v23 + 16))(0xD000000000000049, 0x80000001DB0C8F80, &v200, v22, v23);
LABEL_10:
    v74 = *(v0 + 3488);
    v75 = *(v0 + 3464);
    v76 = *(v0 + 3456);
    v77 = *(v0 + 3448);
    v78 = *(v0 + 3440);
    v79 = *(v0 + 3432);

    v80 = *(v0 + 8);

    return v80();
  }

  v181 = *(v0 + 3424);
  v24 = *(v0 + 3416);
  v177 = v24[24];
  v190 = v24[25];
  v185 = *v24;
  v194 = v24[1];
  sub_1DAF3523C((v24 + 47), v0 + 3320);
  v26 = v24[35];
  v25 = v24[36];
  v188 = v25;
  v189 = v26;
  v28 = v24[37];
  v27 = v24[38];
  v186 = v27;
  v187 = v28;
  v192 = v24[39];
  v184 = *(v24 + 320);
  v171 = v5;
  v175 = v24[41];
  v183 = v24[45];
  v29 = *(v24 + 368);
  v179 = v24[52];
  v30 = *(v24 + 424);
  v31 = *(v0 + 2992);
  v200 = *(v0 + 2976);
  v201 = v31;
  v32 = *(v0 + 3024);
  v202 = *(v0 + 3008);
  v203 = v32;
  v169 = v29;
  LOBYTE(v205[0]) = v29;
  LOBYTE(v206[0]) = v30;
  v33 = *(v0 + 3344);
  v34 = *(v0 + 3352);
  __swift_project_boxed_opaque_existential_1((v0 + 3320), v33);
  v173 = *(v34 + 24);

  sub_1DAFB85E4(v26, v25, v28, v27, v192);

  v35 = v173(v33, v34);
  v172 = v36;
  v174 = v35;
  v37 = *(v0 + 3344);
  v38 = *(v0 + 3352);
  __swift_project_boxed_opaque_existential_1((v0 + 3320), v37);
  v39 = (*(v38 + 40))(v37, v38);
  v170 = v40;
  v41 = *(v0 + 3344);
  v42 = *(v0 + 3352);
  __swift_project_boxed_opaque_existential_1((v0 + 3320), v41);
  v43 = (*(v42 + 48))(v41, v42);
  v45 = v44;
  v46 = *(v0 + 3344);
  v47 = *(v0 + 3352);
  __swift_project_boxed_opaque_existential_1((v0 + 3320), v46);
  v48 = (*(v47 + 32))(v46, v47);
  v50 = v49;
  v51 = *(v0 + 3344);
  v52 = *(v0 + 3352);
  __swift_project_boxed_opaque_existential_1((v0 + 3320), v51);
  v53 = (*(v52 + 56))(v51, v52);
  v55 = v54;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 3320));
  v56 = v201;
  *(v0 + 2448) = v200;
  *(v0 + 2464) = v56;
  v57 = v203;
  *(v0 + 2480) = v202;
  *(v0 + 2416) = v171;
  *(v0 + 2424) = v197;
  *(v0 + 2432) = v177;
  *(v0 + 2440) = v190;
  *(v0 + 2496) = v57;
  *(v0 + 2512) = v185;
  *(v0 + 2520) = v194;
  *(v0 + 2528) = v174;
  *(v0 + 2536) = v172;
  *(v0 + 2544) = v39;
  *(v0 + 2552) = v170;
  *(v0 + 2560) = v43;
  *(v0 + 2568) = v45;
  *(v0 + 2576) = v48;
  *(v0 + 2584) = v50;
  *(v0 + 2592) = v53;
  *(v0 + 2600) = v55;
  *(v0 + 2608) = v189;
  *(v0 + 2616) = v188;
  *(v0 + 2624) = v187;
  *(v0 + 2632) = v186;
  *(v0 + 2640) = v192;
  *(v0 + 2648) = v184;
  *(v0 + 2656) = v175;
  *(v0 + 2664) = v183;
  *(v0 + 2672) = v205[0];
  *(v0 + 2680) = v179;
  *(v0 + 2688) = v206[0];
  memcpy((v0 + 2136), (v0 + 2416), 0x111uLL);
  nullsub_3(v0 + 2136);
  sub_1DAFFCFE4(v0 + 2416, v0 + 2696);
  memcpy((v0 + 1856), (v181 + 520), 0x111uLL);
  memcpy((v181 + 520), (v0 + 2136), 0x111uLL);
  sub_1DAF40AEC(v0 + 1856, &qword_1ECC0F338, &qword_1DB0AFA58);
  v58 = sub_1DB09CC54();
  v59 = *(v58 + 48);
  v60 = *(v58 + 52);
  swift_allocObject();
  sub_1DB09CC44();
  v61 = v193[26];
  v62 = v193[27];
  v63 = v193[28];
  v64 = v193[29];
  v65 = v24[30];
  v66 = v24[31];
  *(v0 + 3232) = v61;
  *(v0 + 3240) = v62;
  *(v0 + 3248) = v63;
  *(v0 + 3256) = v64;
  *(v0 + 3264) = v65;
  *(v0 + 3272) = v66;
  sub_1DAFFD040(v61, v62);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F350, &unk_1DB0AFA70);
  sub_1DAFFD090();
  v92 = sub_1DB09CC34();
  v94 = v93;
  v95 = *(v0 + 3248);
  v96 = *(v0 + 3256);
  v97 = *(v0 + 3264);
  v98 = *(v0 + 3272);
  sub_1DAFFD114(*(v0 + 3232), *(v0 + 3240));

  if (v193[27] && v94 >> 60 != 15 && (v99 = *(v0 + 3416), *(v99 + 264)))
  {
    v100 = (v0 + 3104);
    v191 = *(v99 + 256);
    v182 = *(v99 + 264);

    sub_1DAF4ED88(v92, v94);
    v101 = sub_1DB09D014();
    v178 = v102;
    v180 = v101;
    v199 = v92;
    sub_1DAF4AC40(v92, v94);
    v176 = *(v99 + 272);
    v103 = *(v99 + 128);
    v104 = *(v99 + 144);
    v105 = *(v99 + 176);
    *(v0 + 3136) = *(v99 + 160);
    *(v0 + 3152) = v105;
    *(v0 + 3104) = v103;
    *(v0 + 3120) = v104;
    v106 = *(v99 + 400);
    v107 = *(v99 + 408);
    __swift_project_boxed_opaque_existential_1(v24 + 47, v106);
    v108 = *(v107 + 64);
    sub_1DAF40A84(v0 + 3104, v0 + 3168, &qword_1ECC0E7A8, &unk_1DB0ABEB0);
    v108(&v207, v106, v107);
    v109 = *(v99 + 352);

    sub_1DAFB85E4(v189, v188, v187, v186, v192);
    v110 = qword_1EE301DD0;

    if (v110 != -1)
    {
      swift_once();
    }

    v111 = *(v0 + 3120);
    *(v0 + 776) = *v100;
    *(v0 + 792) = v111;
    v112 = *(v0 + 3152);
    v114 = *v100;
    v113 = *(v0 + 3120);
    v115 = *(v0 + 3136);
    *(v0 + 808) = v115;
    *(v0 + 824) = v112;
    *(v0 + 40) = v114;
    *(v0 + 56) = v113;
    *(v0 + 72) = v115;
    *(v0 + 88) = *(v0 + 3152);
    v116 = v208;
    *(v0 + 120) = v208;
    v117 = v209;
    *(v0 + 136) = v209;
    v118 = v211;
    *(v0 + 152) = v210;
    v119 = v210;
    *(v0 + 168) = v118;
    v120 = v207;
    *(v0 + 104) = v207;
    v121 = *(v0 + 3424);
    v122 = qword_1EE309EE0;
    v123 = qword_1EE309EE8;
    LOBYTE(v204[0]) = v169;
    LOBYTE(v205[0]) = 1;
    LOBYTE(v206[0]) = 1;
    LOBYTE(v200) = 1;
    *(v0 + 16) = v180;
    *(v0 + 24) = v178;
    *(v0 + 32) = v176;
    *(v0 + 184) = v185;
    *(v0 + 192) = v194;
    *(v0 + 200) = v191;
    *(v0 + 208) = v182;
    *(v0 + 216) = 2;
    *(v0 + 224) = v184;
    *(v0 + 232) = v109;
    *(v0 + 240) = v183;
    v124 = v204[0];
    *(v0 + 248) = v204[0];
    *(v0 + 256) = v189;
    *(v0 + 264) = v188;
    *(v0 + 272) = v187;
    *(v0 + 280) = v186;
    *(v0 + 288) = v192;
    *(v0 + 296) = 0;
    v125 = v205[0];
    *(v0 + 304) = v205[0];
    *(v0 + 872) = v117;
    *(v0 + 888) = v119;
    *(v0 + 904) = v211;
    *(v0 + 312) = 0u;
    v126 = MEMORY[0x1E69E7CC0];
    *(v0 + 328) = MEMORY[0x1E69E7CC0];
    *(v0 + 336) = 0;
    v127 = v206[0];
    *(v0 + 344) = v206[0];
    *(v0 + 352) = 0;
    v128 = v200;
    *(v0 + 360) = v200;
    *(v0 + 368) = v122;
    *(v0 + 376) = v123;
    *(v0 + 752) = v180;
    *(v0 + 760) = v178;
    *(v0 + 768) = v176;
    *(v0 + 840) = v120;
    *(v0 + 856) = v116;
    *(v0 + 920) = v185;
    *(v0 + 928) = v194;
    *(v0 + 936) = v191;
    *(v0 + 944) = v182;
    *(v0 + 952) = 2;
    *(v0 + 960) = v184;
    *(v0 + 968) = v109;
    *(v0 + 976) = v183;
    *(v0 + 984) = v124;
    *(v0 + 992) = v189;
    *(v0 + 1000) = v188;
    *(v0 + 1008) = v187;
    *(v0 + 1016) = v186;
    *(v0 + 1024) = v192;
    *(v0 + 1032) = 0;
    *(v0 + 1040) = v125;
    *(v0 + 1041) = v204[0];
    *(v0 + 1044) = *(v204 + 3);
    *(v0 + 1048) = 0u;
    *(v0 + 1064) = v126;
    *(v0 + 1072) = 0;
    *(v0 + 1080) = v127;
    *(v0 + 1081) = v205[0];
    *(v0 + 1084) = *(v205 + 3);
    *(v0 + 1088) = 0;
    *(v0 + 1096) = v128;
    *(v0 + 1100) = *(v206 + 3);
    *(v0 + 1097) = v206[0];
    *(v0 + 1104) = v122;
    *(v0 + 1112) = v123;
    nullsub_3(v0 + 752);
    sub_1DAF40520(v0 + 16, v0 + 1120);
    sub_1DAF40520(v0 + 16, v0 + 1488);
    memcpy((v0 + 384), (v121 + 152), 0x170uLL);
    memcpy((v121 + 152), (v0 + 752), 0x170uLL);

    sub_1DAF40AEC(v0 + 384, &qword_1ECC0F330, &qword_1DB0AFA50);
    if (v193[27])
    {
      v129 = *(v0 + 3424);
      v131 = v193[28];
      v130 = v193[29];

      swift_beginAccess();
      v132 = *(v129 + 800);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v200 = *(v129 + 800);
      *(v129 + 800) = 0x8000000000000000;
      sub_1DAF3B618((v0 + 16), v131, v130, isUniquelyReferenced_nonNull_native);

      *(v129 + 800) = v200;
      swift_endAccess();
    }

    else
    {
      sub_1DAFFD2A8(v0 + 16);
    }

    v153 = *(v0 + 3424);
    v154 = *(v153[100] + 16);
    v155 = v153[106];
    v156 = v153[107];
    __swift_project_boxed_opaque_existential_1((v195 + 824), v155);
    *&v200 = 0;
    *(&v200 + 1) = 0xE000000000000000;
    swift_bridgeObjectRetain_n();
    sub_1DB09DE44();
    MEMORY[0x1E127FE90](0xD00000000000002ELL, 0x80000001DB0C8ED0);
    *(v0 + 3408) = v154;
    v157 = sub_1DB09E1D4();
    MEMORY[0x1E127FE90](v157);

    MEMORY[0x1E127FE90](0x73656972746E6520, 0xE800000000000000);
    v158 = v200;
    LOBYTE(v200) = 12;
    (*(v156 + 16))(v158, *(&v200 + 1), &v200, v155, v156);

    v159 = v153[106];
    v160 = v153[107];
    __swift_project_boxed_opaque_existential_1((v195 + 824), v159);
    *&v200 = 0;
    *(&v200 + 1) = 0xE000000000000000;
    sub_1DB09DE44();

    *&v200 = 0xD000000000000017;
    *(&v200 + 1) = 0x80000001DB0C8F00;
    v161 = sub_1DB09D654();
    MEMORY[0x1E127FE90](v161);

    v162 = v200;
    LOBYTE(v200) = 12;
    (*(v160 + 16))(v162, *(&v200 + 1), &v200, v159, v160);

    v163 = v153[106];
    v164 = v153[107];
    v70 = v195;
    __swift_project_boxed_opaque_existential_1((v195 + 824), v163);
    *&v200 = 0;
    *(&v200 + 1) = 0xE000000000000000;
    sub_1DB09DE44();

    *&v200 = 0xD000000000000028;
    *(&v200 + 1) = 0x80000001DB0C8F20;
    v165 = sub_1DB09D634();
    v167 = v166;

    MEMORY[0x1E127FE90](v165, v167);

    v168 = v200;
    LOBYTE(v200) = 12;
    (*(v164 + 16))(v168, *(&v200 + 1), &v200, v163, v164);
    sub_1DAFFD2A8(v0 + 16);

    v92 = v199;
  }

  else
  {
    v67 = *(v0 + 3424);
    v68 = *(v67 + 848);
    v69 = *(v67 + 856);
    v70 = v195;
    __swift_project_boxed_opaque_existential_1((v195 + 824), v68);
    LOBYTE(v200) = 12;
    (*(v69 + 16))(0xD000000000000056, 0x80000001DB0C8E20, &v200, v68, v69);
  }

  *(v0 + 3504) = v92;
  *(v0 + 3496) = v94;
  if (*(v0 + 2129) == 1)
  {
    v71 = *(v0 + 3424);
    v72 = *(v71 + 848);
    v73 = *(v71 + 856);
    __swift_project_boxed_opaque_existential_1((v70 + 824), v72);
    LOBYTE(v200) = 12;
    (*(v73 + 16))(0xD000000000000048, 0x80000001DB0C8E80, &v200, v72, v73);
    sub_1DAFFD1F4(v0 + 2416);
    sub_1DAF4AC40(v92, v94);
    goto LABEL_10;
  }

  v82 = *(v0 + 3480);
  v83 = *(v0 + 3472);
  v84 = *(v0 + 3464);
  v85 = *(v0 + 3416);
  v86 = *(v85 + 24);
  v198 = *(v85 + 16);
  v87 = *(type metadata accessor for ODNAssessmentsFeedbackManager.ODNResultsPayload(0) + 88);
  sub_1DAF40A84(v85 + v87, v84, &qword_1ECC0F348, &unk_1DB0AFA60);
  v88 = *(v82 + 48);
  v89 = v88(v84, 1, v83);
  v90 = *(v0 + 3464);
  if (v89 == 1)
  {

    sub_1DAF40AEC(v90, &qword_1ECC0F348, &unk_1DB0AFA60);
    v196 = 0;
    v91 = 0;
  }

  else
  {
    v91 = *(v90 + 24);
    v196 = *(v90 + 16);

    sub_1DAFFD248(v90, type metadata accessor for ODNAssessmentsFeedbackManager.ORDResultsPayload);
  }

  v134 = *(v0 + 3472);
  v135 = *(v0 + 3456);
  sub_1DAF40A84(v85 + v87, v135, &qword_1ECC0F348, &unk_1DB0AFA60);
  if (v88(v135, 1, v134) == 1)
  {
    v136 = *(v0 + 3432);
    sub_1DAF40AEC(*(v0 + 3456), &qword_1ECC0F348, &unk_1DB0AFA60);
    v137 = type metadata accessor for AssessmentTiming();
    (*(*(v137 - 8) + 56))(v136, 1, 1, v137);
  }

  else
  {
    v138 = *(v0 + 3456);
    sub_1DAF40A84(v138 + *(*(v0 + 3472) + 24), *(v0 + 3432), &qword_1ECC0F328, &qword_1DB0AFA48);
    sub_1DAFFD248(v138, type metadata accessor for ODNAssessmentsFeedbackManager.ORDResultsPayload);
  }

  v139 = *(v0 + 3472);
  v140 = *(v0 + 3448);
  sub_1DAF40A84(v85 + v87, v140, &qword_1ECC0F348, &unk_1DB0AFA60);
  if (v88(v140, 1, v139) == 1)
  {
    sub_1DAF40AEC(*(v0 + 3448), &qword_1ECC0F348, &unk_1DB0AFA60);
    v141 = 2;
  }

  else
  {
    v142 = *(v0 + 3448);
    v141 = *(v142 + *(*(v0 + 3472) + 28));
    sub_1DAFFD248(v142, type metadata accessor for ODNAssessmentsFeedbackManager.ORDResultsPayload);
  }

  v143 = *(v0 + 3472);
  v144 = *(v0 + 3440);
  sub_1DAF40A84(v85 + v87, v144, &qword_1ECC0F348, &unk_1DB0AFA60);
  if (v88(v144, 1, v143) == 1)
  {
    sub_1DAF40AEC(*(v0 + 3440), &qword_1ECC0F348, &unk_1DB0AFA60);
    v145 = 0;
  }

  else
  {
    v146 = *(v0 + 3440);
    v145 = *(v146 + *(*(v0 + 3472) + 32));

    sub_1DAFFD248(v146, type metadata accessor for ODNAssessmentsFeedbackManager.ORDResultsPayload);
  }

  v147 = *(v0 + 3488);
  v148 = *(v0 + 3472);
  v149 = *(v0 + 3432);
  *v147 = v198;
  v147[1] = v86;
  v147[2] = v196;
  v147[3] = v91;
  sub_1DAFFD184(v149, v147 + v148[6]);
  *(v147 + v148[7]) = v141;
  *(v147 + v148[8]) = v145;
  v150 = swift_task_alloc();
  *(v0 + 3512) = v150;
  *v150 = v0;
  v150[1] = sub_1DAFFA96C;
  v151 = *(v0 + 3488);
  v152 = *(v0 + 3424);

  return sub_1DAFFAD58(v151);
}

uint64_t sub_1DAFFA96C()
{
  v2 = *v1;
  v3 = *(*v1 + 3512);
  v4 = *v1;
  *(*v1 + 3520) = v0;

  v5 = *(v2 + 3424);
  if (v0)
  {
    v6 = sub_1DAFFAB7C;
  }

  else
  {
    v6 = sub_1DAFFAA98;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1DAFFAA98()
{
  v1 = v0[436];
  sub_1DAF4AC40(v0[438], v0[437]);
  sub_1DAFFD1F4((v0 + 302));
  sub_1DAFFD248(v1, type metadata accessor for ODNAssessmentsFeedbackManager.ORDResultsPayload);
  v2 = v0[436];
  v3 = v0[433];
  v4 = v0[432];
  v5 = v0[431];
  v6 = v0[430];
  v7 = v0[429];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1DAFFAB7C()
{
  v1 = v0[436];
  v2 = v0[433];
  v3 = v0[432];
  v4 = v0[431];
  v5 = v0[430];
  v6 = v0[429];
  sub_1DAF4AC40(v0[438], v0[437]);
  sub_1DAFFD1F4((v0 + 302));
  sub_1DAFFD248(v1, type metadata accessor for ODNAssessmentsFeedbackManager.ORDResultsPayload);

  v7 = v0[1];
  v8 = v0[440];

  return v7();
}

uint64_t sub_1DAFFAC60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_1DB09E3A4();
  sub_1DB09D794();
  v7 = sub_1DB09E3E4();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_1DB09E254() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1DAFFAD58(uint64_t a1)
{
  v2[1285] = v1;
  v2[1284] = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F328, &qword_1DB0AFA48) - 8) + 64) + 15;
  v2[1286] = swift_task_alloc();
  v4 = type metadata accessor for AssessmentTiming();
  v2[1287] = v4;
  v5 = *(v4 - 8);
  v2[1288] = v5;
  v6 = *(v5 + 64) + 15;
  v2[1289] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DAFFAE54, v1, 0);
}

uint64_t sub_1DAFFAE54()
{
  v124 = v0;
  v1 = *(v0 + 10272);
  v119 = *(v0 + 10280);
  sub_1DAF3523C(v119 + 824, v0 + 9896);
  v2 = *(v0 + 9920);
  v3 = *(v0 + 9928);
  __swift_project_boxed_opaque_existential_1((v0 + 9896), v2);
  v122 = 0;
  v123 = 0xE000000000000000;
  sub_1DB09DE44();

  *(v0 + 10256) = 0xD000000000000014;
  *(v0 + 10264) = 0x80000001DB0C8CA0;
  v4 = v1[2];
  *(v0 + 10320) = v4;
  v5 = v1[3];
  *(v0 + 10328) = v5;
  v117 = v4;
  if (v5)
  {
    v6 = v4;
  }

  else
  {
    v6 = 7104878;
  }

  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xE300000000000000;
  }

  MEMORY[0x1E127FE90](v6, v7);

  v8 = *(v0 + 10256);
  v9 = *(v0 + 10264);
  LOBYTE(v122) = 12;
  (*(v3 + 32))(v8, v9, &v122, v2, v3);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 9896));
  *(v0 + 10336) = *v1;
  *(v0 + 10344) = v1[1];
  if (!v5)
  {
    v10 = (v0 + 1120);
    v16 = *(v0 + 10280);
    swift_beginAccess();
    memcpy((v0 + 1120), (v16 + 152), 0x170uLL);
    sub_1DAF40A84(v0 + 1120, v0 + 1856, &qword_1ECC0F330, &qword_1DB0AFA50);
LABEL_40:
    v52 = v0 + 4096;
    goto LABEL_43;
  }

  v10 = (v0 + 6272);
  v11 = *(v0 + 10304);
  v12 = *(v0 + 10296);
  v13 = *(v0 + 10288);
  v14 = *(v0 + 10272);
  v15 = type metadata accessor for ODNAssessmentsFeedbackManager.ORDResultsPayload(0);
  sub_1DAF40A84(v14 + v15[6], v13, &qword_1ECC0F328, &qword_1DB0AFA48);
  if ((*(v11 + 48))(v13, 1, v12) == 1)
  {
    sub_1DAF40AEC(*(v0 + 10288), &qword_1ECC0F328, &qword_1DB0AFA48);
  }

  else
  {
    v17 = *(v0 + 10272);
    sub_1DAFFCF2C(*(v0 + 10288), *(v0 + 10312));
    v18 = *(v17 + v15[7]);
    if (v18 == 2)
    {
      v19 = *(v0 + 10312);
    }

    else
    {
      v20 = *(*(v0 + 10272) + v15[8]);
      v21 = *(v0 + 10312);
      if (v20)
      {
        v22 = *(v0 + 10280);
        AssessmentTiming.assessmentReadyBeforeFeedbackDuration.getter();
        v111 = v23;
        v110 = v24;
        AssessmentTiming.updateToAssessmentDuration.getter();
        v113 = v25;
        v112 = v26;
        AssessmentTiming.requestToReturnDuration.getter();
        v116 = v27;
        v115 = v28;
        if (v18)
        {
          v29 = 0x74756F656D6974;
        }

        else
        {
          v29 = 0x6465747365676E69;
        }

        if (v18)
        {
          v30 = 0xE700000000000000;
        }

        else
        {
          v30 = 0xE800000000000000;
        }

        swift_beginAccess();
        if (*(*(v22 + 800) + 16))
        {
          sub_1DAF35210(v117, v5);
          if (v31)
          {
            v108 = v20;
            v109 = (v0 + 10040);
            v32 = sub_1DAFF8498((v0 + 9976), v117, v5);
            v34 = v33;
            memmove((v0 + 5904), v33, 0x170uLL);
            if (get_enum_tag_for_layout_string_17CoreODIEssentials20ProfileSetObjectInfoVSg_0(v0 + 5904) != 1)
            {
              v34[35] = v111;
              *(v34 + 288) = v110 & 1;
            }

            (v32)(v0 + 9976, 0);
            v35 = sub_1DAFF8498((v0 + 10008), v117, v5);
            v37 = v36;
            memmove((v0 + 2592), v36, 0x170uLL);
            if (get_enum_tag_for_layout_string_17CoreODIEssentials20ProfileSetObjectInfoVSg_0(v0 + 2592) != 1)
            {
              v37[40] = v113;
              *(v37 + 328) = v112 & 1;
            }

            v114 = (v0 + 10104);
            (v35)(v0 + 10008, 0);
            v38 = sub_1DAFF8498(v109, v117, v5);
            v40 = v39;
            memmove((v0 + 2224), v39, 0x170uLL);
            if (get_enum_tag_for_layout_string_17CoreODIEssentials20ProfileSetObjectInfoVSg_0(v0 + 2224) != 1)
            {
              v40[42] = v116;
              *(v40 + 344) = v115 & 1;
            }

            (v38)(v109, 0);
            v41 = sub_1DAFF8498((v0 + 10072), v117, v5);
            v43 = v42;
            memmove((v0 + 1488), v42, 0x170uLL);
            if (get_enum_tag_for_layout_string_17CoreODIEssentials20ProfileSetObjectInfoVSg_0(v0 + 1488) != 1)
            {
              v44 = v43[38];
              v43[37] = v29;
              v43[38] = v30;
            }

            v41();
            v45 = sub_1DAFF8498(v114, v117, v5);
            v47 = v46;
            memmove((v0 + 384), v46, 0x170uLL);
            if (get_enum_tag_for_layout_string_17CoreODIEssentials20ProfileSetObjectInfoVSg_0(v0 + 384) != 1)
            {
              v48 = v47[39];
              v47[39] = v108;
            }

            (v45)(v114, 0);
          }
        }

        v21 = *(v0 + 10312);
        swift_endAccess();
      }

      v19 = v21;
    }

    sub_1DAFFD248(v19, type metadata accessor for AssessmentTiming);
  }

  v49 = *(v0 + 10280);
  swift_beginAccess();
  v50 = *(v49 + 800);
  if (!*(v50 + 16))
  {
    sub_1DAF96D80((v0 + 6272));
    goto LABEL_40;
  }

  v51 = sub_1DAF35210(v117, v5);
  v52 = v0 + 4096;
  if (v53)
  {
    v54 = (*(v50 + 56) + 368 * v51);
    memcpy((v0 + 3696), v54, 0x170uLL);
    memmove((v0 + 16), v54, 0x170uLL);
    nullsub_3(v0 + 16);
    sub_1DAF40520(v0 + 3696, v0 + 6640);

    v55 = (v0 + 16);
  }

  else
  {

    sub_1DAF96D80((v0 + 7008));
    v55 = (v0 + 7008);
  }

  memcpy((v0 + 6272), v55, 0x170uLL);
LABEL_43:
  memcpy((v0 + 752), v10, 0x170uLL);
  v56 = *(v0 + 10280);
  swift_beginAccess();
  v57 = *(v56 + 112);
  *(v52 + 3553) = v57;
  v59 = *(v56 + 120);
  v58 = *(v56 + 128);
  *(v0 + 10352) = v58;
  if (v57 != 1)
  {
    v118 = v57;

    v60 = 0xE500000000000000;
    v61 = 0x65736C6166;
    goto LABEL_50;
  }

  if (!v58)
  {
    v118 = 1;
    goto LABEL_49;
  }

  memcpy((v0 + 4064), (v0 + 752), 0x170uLL);
  if (get_enum_tag_for_layout_string_17CoreODIEssentials20ProfileSetObjectInfoVSg_0(v0 + 4064) == 1)
  {
    v118 = 1;

LABEL_49:
    v60 = 0xE400000000000000;
    v61 = 1702195828;
LABEL_50:
    sub_1DAF3523C(v119 + 824, v0 + 9936);
    v62 = *(v0 + 9960);
    v63 = *(v0 + 9968);
    __swift_project_boxed_opaque_existential_1((v0 + 9936), v62);
    v122 = 0;
    v123 = 0xE000000000000000;
    sub_1DB09DE44();
    v120 = v122;
    v121 = v123;
    MEMORY[0x1E127FE90](0xD000000000000025, 0x80000001DB0C8CC0);
    MEMORY[0x1E127FE90](v61, v60);

    MEMORY[0x1E127FE90](0xD000000000000010, 0x80000001DB0C8CF0);
    memcpy((v0 + 2960), (v0 + 752), 0x170uLL);
    enum_tag_for_layout_string_17CoreODIEssentials20ProfileSetObjectInfoVSg_0 = get_enum_tag_for_layout_string_17CoreODIEssentials20ProfileSetObjectInfoVSg_0(v0 + 2960);
    v65 = enum_tag_for_layout_string_17CoreODIEssentials20ProfileSetObjectInfoVSg_0 == 1;
    if (enum_tag_for_layout_string_17CoreODIEssentials20ProfileSetObjectInfoVSg_0 == 1)
    {
      v66 = 0x65736C6166;
    }

    else
    {
      v66 = 1702195828;
    }

    if (v65)
    {
      v67 = 0xE500000000000000;
    }

    else
    {
      v67 = 0xE400000000000000;
    }

    MEMORY[0x1E127FE90](v66, v67);

    MEMORY[0x1E127FE90](0xD000000000000015, 0x80000001DB0C8D10);
    if (v58)
    {
      v68 = 1702195828;
    }

    else
    {
      v68 = 0x65736C6166;
    }

    if (v58)
    {
      v69 = 0xE400000000000000;
    }

    else
    {
      v69 = 0xE500000000000000;
    }

    MEMORY[0x1E127FE90](v68, v69);

    LOBYTE(v122) = 12;
    (*(v63 + 32))(v120, v121, &v122, v62, v63);

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 9936));
    if (v118)
    {
      v70 = v0 + 4096;
      if (v58)
      {
      }

      else
      {
        v71 = *(v0 + 10280);
        v72 = *(v71 + 848);
        v73 = *(v71 + 856);
        __swift_project_boxed_opaque_existential_1((v119 + 824), v72);
        LOBYTE(v122) = 14;
        Loggable.info(_:category:)(0xD00000000000003CLL, 0x80000001DB0C8DB0, &v122, v72, v73);
      }
    }

    else
    {

      v70 = v0 + 4096;
    }

    v74 = *(v0 + 10280);
    memcpy((v0 + 7376), (v74 + 520), 0x111uLL);
    v75 = *(v74 + 113);
    *(v70 + 3554) = v75;
    v77 = *(v74 + 120);
    v76 = *(v74 + 128);
    *(v0 + 10376) = v76;
    if (v75 == 1)
    {
      if (!v76)
      {
        sub_1DAF40A84(v0 + 7376, v0 + 8216, &qword_1ECC0F338, &qword_1DB0AFA58);
        goto LABEL_78;
      }

      memcpy((v0 + 9616), (v74 + 520), 0x111uLL);
      if (get_enum_tag_for_layout_string_17CoreODIEssentials20ProfileSetObjectInfoVSg_0(v0 + 9616) == 1)
      {
LABEL_76:

LABEL_78:
        v84 = *(v0 + 10280);
        v85 = v84[106];
        v86 = v84[107];
        __swift_project_boxed_opaque_existential_1(v84 + 103, v85);
        LOBYTE(v122) = 12;
        (*(v86 + 32))(0xD00000000000001ALL, 0x80000001DB0C8D30, &v122, v85, v86);
        if (v75 && !v76)
        {
          v94 = v84[106];
          v95 = v84[107];
          __swift_project_boxed_opaque_existential_1((*(v0 + 10280) + 824), v94);
          LOBYTE(v122) = 14;
          Loggable.info(_:category:)(0xD00000000000003CLL, 0x80000001DB0C8D70, &v122, v94, v95);
          if (*(v70 + 3553))
          {
LABEL_81:
            memcpy((v0 + 3328), (v0 + 752), 0x170uLL);
            if (get_enum_tag_for_layout_string_17CoreODIEssentials20ProfileSetObjectInfoVSg_0(v0 + 3328) == 1)
            {
              sub_1DAFFCA5C();
              swift_allocError();
              *v87 = 0x8000000000000018;
              swift_willThrow();
              v88 = &qword_1ECC0F338;
              v89 = &qword_1DB0AFA58;
              v90 = v0 + 7376;
LABEL_92:
              sub_1DAF40AEC(v90, v88, v89);
              v100 = *(v0 + 10312);
              v101 = *(v0 + 10288);

              v102 = *(v0 + 8);
LABEL_93:

              return v102();
            }

            if (*(v70 + 3554))
            {
              memcpy((v0 + 7936), (v0 + 7376), 0x111uLL);
              if (get_enum_tag_for_layout_string_17CoreODIEssentials20ProfileSetObjectInfoVSg_0(v0 + 7936) == 1)
              {
                sub_1DAFFCA5C();
                swift_allocError();
                *v91 = 0x8000000000000010;
                swift_willThrow();
LABEL_91:
                v88 = &qword_1ECC0F330;
                v89 = &qword_1DB0AFA50;
                v90 = v0 + 752;
                goto LABEL_92;
              }

              sub_1DAF40AEC(v0 + 752, &qword_1ECC0F330, &qword_1DB0AFA50);
              v103 = &qword_1ECC0F338;
              v104 = &qword_1DB0AFA58;
              v105 = v0 + 7376;
            }

            else
            {
              sub_1DAF40AEC(v0 + 7376, &qword_1ECC0F338, &qword_1DB0AFA58);
              v103 = &qword_1ECC0F330;
              v104 = &qword_1DB0AFA50;
              v105 = v0 + 752;
            }

            sub_1DAF40AEC(v105, v103, v104);
            v106 = *(v0 + 10312);
            v107 = *(v0 + 10288);

            v102 = *(v0 + 8);
            goto LABEL_93;
          }
        }

        else
        {

          if (*(v70 + 3553))
          {
            goto LABEL_81;
          }
        }

        v96 = *(v0 + 10280);
        v97 = v96[106];
        v98 = v96[107];
        __swift_project_boxed_opaque_existential_1(v96 + 103, v97);
        LOBYTE(v122) = 12;
        (*(v98 + 32))(0xD00000000000001ALL, 0x80000001DB0C8D50, &v122, v97, v98);
        sub_1DAFFCA5C();
        swift_allocError();
        *v99 = 0x8000000000000008;
        swift_willThrow();
        sub_1DAF40AEC(v0 + 7376, &qword_1ECC0F338, &qword_1DB0AFA58);
        goto LABEL_91;
      }

      v78 = *(v0 + 10344);
      if (v78)
      {
        v79 = *(*(v0 + 10280) + 816);
        memcpy((v0 + 8776), (v0 + 9616), 0x111uLL);
        sub_1DAF40A84(v0 + 7376, v0 + 9056, &qword_1ECC0F338, &qword_1DB0AFA58);
        sub_1DAF40A84(v0 + 7376, v0 + 9336, &qword_1ECC0F338, &qword_1DB0AFA58);

        v80 = swift_task_alloc();
        *(v0 + 10384) = v80;
        *v80 = v0;
        v80[1] = sub_1DAFFC40C;
        v81 = *(v0 + 10336);

        return sub_1DB0026E0(v81, v78, v77, v76, (v0 + 8776));
      }

      v83 = 8496;
    }

    else
    {
      v83 = 7656;
    }

    sub_1DAF40A84(v0 + 7376, v0 + v83, &qword_1ECC0F338, &qword_1DB0AFA58);
    goto LABEL_76;
  }

  v92 = *(*(v0 + 10280) + 816);
  memcpy((v0 + 4432), (v0 + 4064), 0x170uLL);

  sub_1DAF40A84(v0 + 752, v0 + 4800, &qword_1ECC0F330, &qword_1DB0AFA50);
  v93 = swift_task_alloc();
  *(v0 + 10360) = v93;
  *v93 = v0;
  v93[1] = sub_1DAFFBCF8;

  return sub_1DB001DA8((v0 + 4432), v59, v58);
}

uint64_t sub_1DAFFBCF8()
{
  v2 = *v1;
  v3 = *(*v1 + 10360);
  v9 = *v1;
  *(*v1 + 10368) = v0;

  if (v0)
  {
    v4 = *(v2 + 10352);
    v5 = *(v2 + 10280);

    v6 = sub_1DAFFC82C;
    v7 = v5;
  }

  else
  {
    v7 = *(v2 + 10280);
    v6 = sub_1DAFFBE20;
  }

  return MEMORY[0x1EEE6DFA0](v6, v7, 0);
}

uint64_t sub_1DAFFBE20()
{
  v39 = v0;
  v1 = *(v0 + 10328);
  if (v1)
  {
    v2 = *(v0 + 10320);
    v3 = *(v0 + 10280);
    swift_beginAccess();

    sub_1DB081248(&v38, v2, v1);
    swift_endAccess();
  }

  v4 = *(v0 + 10352);
  v5 = *(v0 + 10280);
  sub_1DAF96D80((v0 + 5536));
  memcpy((v0 + 5168), (v5 + 152), 0x170uLL);
  memcpy((v5 + 152), (v0 + 5536), 0x170uLL);
  sub_1DAF40AEC(v0 + 5168, &qword_1ECC0F330, &qword_1DB0AFA50);
  sub_1DAF40AEC(v0 + 752, &qword_1ECC0F330, &qword_1DB0AFA50);

  v6 = *(v0 + 10280);
  memcpy((v0 + 7376), (v6 + 520), 0x111uLL);
  v7 = *(v6 + 113);
  *(v0 + 7650) = v7;
  v9 = *(v6 + 120);
  v8 = *(v6 + 128);
  *(v0 + 10376) = v8;
  if (v7 != 1)
  {
    v15 = 7656;
LABEL_11:
    sub_1DAF40A84(v0 + 7376, v0 + v15, &qword_1ECC0F338, &qword_1DB0AFA58);
    goto LABEL_12;
  }

  if (!v8)
  {
    sub_1DAF40A84(v0 + 7376, v0 + 8216, &qword_1ECC0F338, &qword_1DB0AFA58);
    goto LABEL_14;
  }

  memcpy((v0 + 9616), (v6 + 520), 0x111uLL);
  if (get_enum_tag_for_layout_string_17CoreODIEssentials20ProfileSetObjectInfoVSg_0(v0 + 9616) != 1)
  {
    v10 = *(v0 + 10344);
    if (v10)
    {
      v11 = *(*(v0 + 10280) + 816);
      memcpy((v0 + 8776), (v0 + 9616), 0x111uLL);
      sub_1DAF40A84(v0 + 7376, v0 + 9056, &qword_1ECC0F338, &qword_1DB0AFA58);
      sub_1DAF40A84(v0 + 7376, v0 + 9336, &qword_1ECC0F338, &qword_1DB0AFA58);

      v12 = swift_task_alloc();
      *(v0 + 10384) = v12;
      *v12 = v0;
      v12[1] = sub_1DAFFC40C;
      v13 = *(v0 + 10336);

      return sub_1DB0026E0(v13, v10, v9, v8, (v0 + 8776));
    }

    v15 = 8496;
    goto LABEL_11;
  }

LABEL_12:

LABEL_14:
  v16 = *(v0 + 10280);
  v17 = v16[106];
  v18 = v16[107];
  __swift_project_boxed_opaque_existential_1(v16 + 103, v17);
  LOBYTE(v38) = 12;
  (*(v18 + 32))(0xD00000000000001ALL, 0x80000001DB0C8D30, &v38, v17, v18);
  if (!v7 || v8)
  {

    if (*(v0 + 7649))
    {
      goto LABEL_17;
    }

LABEL_23:
    v26 = *(v0 + 10280);
    v27 = v26[106];
    v28 = v26[107];
    __swift_project_boxed_opaque_existential_1(v26 + 103, v27);
    LOBYTE(v38) = 12;
    (*(v28 + 32))(0xD00000000000001ALL, 0x80000001DB0C8D50, &v38, v27, v28);
    sub_1DAFFCA5C();
    swift_allocError();
    *v29 = 0x8000000000000008;
    swift_willThrow();
    sub_1DAF40AEC(v0 + 7376, &qword_1ECC0F338, &qword_1DB0AFA58);
    goto LABEL_24;
  }

  v24 = v16[106];
  v25 = v16[107];
  __swift_project_boxed_opaque_existential_1((*(v0 + 10280) + 824), v24);
  LOBYTE(v38) = 14;
  Loggable.info(_:category:)(0xD00000000000003CLL, 0x80000001DB0C8D70, &v38, v24, v25);
  if ((*(v0 + 7649) & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_17:
  memcpy((v0 + 3328), (v0 + 752), 0x170uLL);
  if (get_enum_tag_for_layout_string_17CoreODIEssentials20ProfileSetObjectInfoVSg_0(v0 + 3328) != 1)
  {
    if (*(v0 + 7650))
    {
      memcpy((v0 + 7936), (v0 + 7376), 0x111uLL);
      if (get_enum_tag_for_layout_string_17CoreODIEssentials20ProfileSetObjectInfoVSg_0(v0 + 7936) == 1)
      {
        sub_1DAFFCA5C();
        swift_allocError();
        *v23 = 0x8000000000000010;
        swift_willThrow();
LABEL_24:
        v20 = &qword_1ECC0F330;
        v21 = &qword_1DB0AFA50;
        v22 = v0 + 752;
        goto LABEL_25;
      }

      sub_1DAF40AEC(v0 + 752, &qword_1ECC0F330, &qword_1DB0AFA50);
      v33 = &qword_1ECC0F338;
      v34 = &qword_1DB0AFA58;
      v35 = v0 + 7376;
    }

    else
    {
      sub_1DAF40AEC(v0 + 7376, &qword_1ECC0F338, &qword_1DB0AFA58);
      v33 = &qword_1ECC0F330;
      v34 = &qword_1DB0AFA50;
      v35 = v0 + 752;
    }

    sub_1DAF40AEC(v35, v33, v34);
    v36 = *(v0 + 10312);
    v37 = *(v0 + 10288);

    v32 = *(v0 + 8);
    goto LABEL_26;
  }

  sub_1DAFFCA5C();
  swift_allocError();
  *v19 = 0x8000000000000018;
  swift_willThrow();
  v20 = &qword_1ECC0F338;
  v21 = &qword_1DB0AFA58;
  v22 = v0 + 7376;
LABEL_25:
  sub_1DAF40AEC(v22, v20, v21);
  v30 = *(v0 + 10312);
  v31 = *(v0 + 10288);

  v32 = *(v0 + 8);
LABEL_26:

  return v32();
}

uint64_t sub_1DAFFC40C()
{
  v2 = *v1;
  v3 = *(*v1 + 10384);
  v9 = *v1;
  *(*v1 + 10392) = v0;

  if (v0)
  {
    v4 = *(v2 + 10376);
    v5 = *(v2 + 10280);
    sub_1DAF40AEC(v2 + 7376, &qword_1ECC0F338, &qword_1DB0AFA58);

    v6 = sub_1DAFFC904;
    v7 = v5;
  }

  else
  {
    v7 = *(v2 + 10280);
    v6 = sub_1DAFFC55C;
  }

  return MEMORY[0x1EEE6DFA0](v6, v7, 0);
}

uint64_t sub_1DAFFC55C()
{
  v21 = v0;
  v1 = *(v0 + 10376);
  sub_1DAF40AEC(v0 + 7376, &qword_1ECC0F338, &qword_1DB0AFA58);

  if ((*(v0 + 7649) & 1) == 0)
  {
    v6 = *(v0 + 10280);
    v7 = v6[106];
    v8 = v6[107];
    __swift_project_boxed_opaque_existential_1(v6 + 103, v7);
    v20[0] = 12;
    (*(v8 + 32))(0xD00000000000001ALL, 0x80000001DB0C8D50, v20, v7, v8);
    sub_1DAFFCA5C();
    swift_allocError();
    *v9 = 0x8000000000000008;
    swift_willThrow();
    sub_1DAF40AEC(v0 + 7376, &qword_1ECC0F338, &qword_1DB0AFA58);
LABEL_5:
    v3 = &qword_1ECC0F330;
    v4 = &qword_1DB0AFA50;
    v5 = v0 + 752;
    goto LABEL_6;
  }

  memcpy((v0 + 3328), (v0 + 752), 0x170uLL);
  if (get_enum_tag_for_layout_string_17CoreODIEssentials20ProfileSetObjectInfoVSg_0(v0 + 3328) == 1)
  {
    sub_1DAFFCA5C();
    swift_allocError();
    *v2 = 0x8000000000000018;
    swift_willThrow();
    v3 = &qword_1ECC0F338;
    v4 = &qword_1DB0AFA58;
    v5 = v0 + 7376;
LABEL_6:
    sub_1DAF40AEC(v5, v3, v4);
    v10 = *(v0 + 10312);
    v11 = *(v0 + 10288);

    v12 = *(v0 + 8);
    goto LABEL_7;
  }

  if (*(v0 + 7650))
  {
    memcpy((v0 + 7936), (v0 + 7376), 0x111uLL);
    if (get_enum_tag_for_layout_string_17CoreODIEssentials20ProfileSetObjectInfoVSg_0(v0 + 7936) == 1)
    {
      sub_1DAFFCA5C();
      swift_allocError();
      *v14 = 0x8000000000000010;
      swift_willThrow();
      goto LABEL_5;
    }

    sub_1DAF40AEC(v0 + 752, &qword_1ECC0F330, &qword_1DB0AFA50);
    v15 = &qword_1ECC0F338;
    v16 = &qword_1DB0AFA58;
    v17 = v0 + 7376;
  }

  else
  {
    sub_1DAF40AEC(v0 + 7376, &qword_1ECC0F338, &qword_1DB0AFA58);
    v15 = &qword_1ECC0F330;
    v16 = &qword_1DB0AFA50;
    v17 = v0 + 752;
  }

  sub_1DAF40AEC(v17, v15, v16);
  v18 = *(v0 + 10312);
  v19 = *(v0 + 10288);

  v12 = *(v0 + 8);
LABEL_7:

  return v12();
}

uint64_t sub_1DAFFC82C()
{
  v1 = v0[1296] | 0x4000000000000000;
  sub_1DAFFCA5C();
  swift_allocError();
  *v2 = v1;
  swift_willThrow();
  sub_1DAF40AEC((v0 + 94), &qword_1ECC0F330, &qword_1DB0AFA50);
  sub_1DAF40AEC((v0 + 94), &qword_1ECC0F330, &qword_1DB0AFA50);
  v3 = v0[1289];
  v4 = v0[1286];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1DAFFC904()
{
  v1 = v0[1299];
  sub_1DAFFCA5C();
  swift_allocError();
  *v2 = v1;
  swift_willThrow();
  sub_1DAF40AEC((v0 + 922), &qword_1ECC0F338, &qword_1DB0AFA58);
  sub_1DAF40AEC((v0 + 94), &qword_1ECC0F330, &qword_1DB0AFA50);
  v3 = v0[1289];
  v4 = v0[1286];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1DAFFC9DC()
{
  memcpy(v2, (v0 + 112), sizeof(v2));
  sub_1DAFFD2FC(v2);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 824));
  swift_defaultActor_destroy();
  return swift_defaultActor_deallocate();
}

unint64_t sub_1DAFFCA5C()
{
  result = qword_1ECC0F340;
  if (!qword_1ECC0F340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F340);
  }

  return result;
}

void (*sub_1DAFFCAB0(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
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
  v8[8] = sub_1DAFFCED8(v8);
  v8[9] = sub_1DAFFCBBC(v8 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_1DAFFCB5C;
}

void sub_1DAFFCB5C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_1DAFFCBBC(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t *a1, char a2)
{
  v5 = v4;
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0xA38uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[324] = v4;
  v10[323] = a3;
  v10[322] = a2;
  v12 = *v4;
  v13 = sub_1DAF35210(a2, a3);
  *(v11 + 2608) = v14 & 1;
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
      sub_1DAF3CC08();
      v13 = v21;
      goto LABEL_11;
    }

    sub_1DAF38BE4(v18, a4 & 1);
    v22 = *v5;
    v13 = sub_1DAF35210(a2, a3);
    if ((v19 & 1) == (v23 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_1DB09E2E4();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[325] = v13;
  if (v19)
  {
    memmove(v11 + 138, (*(*v5 + 56) + 368 * v13), 0x170uLL);
    nullsub_3(v11 + 138);
    memcpy(v11 + 92, v11 + 138, 0x170uLL);
  }

  else
  {
    sub_1DAF96D80(v11 + 46);
  }

  return sub_1DAFFCD40;
}

void sub_1DAFFCD40(uint64_t *a1, char a2)
{
  v3 = *a1;
  memcpy((*a1 + 1472), (*a1 + 736), 0x170uLL);
  memcpy((v3 + 1104), (v3 + 736), 0x170uLL);
  enum_tag_for_layout_string_17CoreODIEssentials20ProfileSetObjectInfoVSg_0 = get_enum_tag_for_layout_string_17CoreODIEssentials20ProfileSetObjectInfoVSg_0(v3 + 1104);
  v5 = *(v3 + 2608);
  if (a2)
  {
    if (enum_tag_for_layout_string_17CoreODIEssentials20ProfileSetObjectInfoVSg_0 != 1)
    {
      v6 = *(v3 + 2600);
      v7 = *(v3 + 2592);
      if ((*(v3 + 2608) & 1) == 0)
      {
        v8 = *(v3 + 2584);
        v9 = *(v3 + 2576);
        v10 = *v7;
        memcpy(v3, (v3 + 1472), 0x170uLL);
        v11 = v6;
        v12 = v9;
        v13 = v8;
        v14 = v3;
LABEL_11:
        sub_1DAF3C230(v11, v12, v13, v14, v10);

        goto LABEL_12;
      }

      goto LABEL_9;
    }
  }

  else if (enum_tag_for_layout_string_17CoreODIEssentials20ProfileSetObjectInfoVSg_0 != 1)
  {
    v6 = *(v3 + 2600);
    v7 = *(v3 + 2592);
    if ((*(v3 + 2608) & 1) == 0)
    {
      v17 = *(v3 + 2584);
      v18 = *(v3 + 2576);
      v10 = *v7;
      memcpy((v3 + 368), (v3 + 1472), 0x170uLL);
      v14 = (v3 + 368);
      v11 = v6;
      v12 = v18;
      v13 = v17;
      goto LABEL_11;
    }

LABEL_9:
    memmove((*(*v7 + 56) + 368 * v6), (v3 + 1472), 0x170uLL);
    goto LABEL_12;
  }

  if (*(v3 + 2608))
  {
    v15 = *(v3 + 2600);
    v16 = **(v3 + 2592);
    sub_1DAFFCF90(*(v16 + 48) + 16 * v15);
    sub_1DB0807BC(v15, v16);
  }

LABEL_12:
  memcpy((v3 + 1840), (v3 + 736), 0x170uLL);
  sub_1DAF40A84(v3 + 1472, v3 + 2208, &qword_1ECC0F330, &qword_1DB0AFA50);
  sub_1DAF40AEC(v3 + 1840, &qword_1ECC0F330, &qword_1DB0AFA50);

  free(v3);
}

uint64_t (*sub_1DAFFCED8(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1DAFFCF00;
}

uint64_t sub_1DAFFCF2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssessmentTiming();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAFFD040(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_1DAFFD090()
{
  result = qword_1EE300AA8;
  if (!qword_1EE300AA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC0F350, &unk_1DB0AFA70);
    sub_1DAF8B9C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE300AA8);
  }

  return result;
}

uint64_t sub_1DAFFD114(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1DAFFD184(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F328, &qword_1DB0AFA48);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAFFD248(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DAFFD350(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_1DAFFD3B8()
{
  sub_1DAFB7C64(319, &qword_1EE300A40);
  if (v0 <= 0x3F)
  {
    sub_1DAFB7C64(319, &qword_1EE301350);
    if (v1 <= 0x3F)
    {
      sub_1DAFB7C64(319, &qword_1EE300AB0);
      if (v2 <= 0x3F)
      {
        sub_1DAFB7C64(319, &qword_1EE3017E8);
        if (v3 <= 0x3F)
        {
          sub_1DAFB7C64(319, &qword_1EE300A20);
          if (v4 <= 0x3F)
          {
            sub_1DAFFD75C(319, &qword_1EE300F20, &qword_1ECC0E880, &qword_1DB0A6640);
            if (v5 <= 0x3F)
            {
              sub_1DAFB7C64(319, &unk_1EE3009F8);
              if (v6 <= 0x3F)
              {
                sub_1DAFFD75C(319, &qword_1EE300F10, &qword_1ECC0F018, &unk_1DB0AFAA0);
                if (v7 <= 0x3F)
                {
                  sub_1DAFB7CB0();
                  if (v8 <= 0x3F)
                  {
                    sub_1DAFFD708(319, qword_1EE300DA0, type metadata accessor for ODNAssessmentsFeedbackManager.ORDResultsPayload);
                    if (v9 <= 0x3F)
                    {
                      swift_cvw_initStructMetadataWithLayoutString();
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1DAFFD600()
{
  sub_1DAFB7C64(319, &qword_1EE300A40);
  if (v0 <= 0x3F)
  {
    sub_1DAFFD708(319, &qword_1EE3014C8, type metadata accessor for AssessmentTiming);
    if (v1 <= 0x3F)
    {
      sub_1DAFB7C64(319, &qword_1EE301488);
      if (v2 <= 0x3F)
      {
        sub_1DAFFD75C(319, &qword_1EE300A30, &qword_1ECC0F358, &qword_1DB0AFAC8);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1DAFFD708(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1DB09DC64();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1DAFFD75C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_1DB09DC64();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t get_enum_tag_for_layout_string_17CoreODIEssentials29ODNAssessmentsFeedbackManagerC0cdE5ErrorO(uint64_t *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_1DAFFD7CC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 8))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1DAFFD828(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_1DAFFD888(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  return result;
}

uint64_t sub_1DAFFD91C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_1DAFFE4A8();
  result = sub_1DB09DC44();
  *a4 = result;
  return result;
}

id sub_1DAFFD984()
{
  if (qword_1EE3021A0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE30A158;
  qword_1ECC25A78 = "LocationHelperInit";
  unk_1ECC25A80 = 18;
  byte_1ECC25A88 = 2;
  qword_1ECC25A90 = qword_1EE30A158;
  byte_1ECC25A98 = 0;

  return v1;
}

id sub_1DAFFDA08()
{
  if (qword_1EE3021A0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE30A158;
  qword_1ECC25AA0 = "LocationHelperRequest";
  *algn_1ECC25AA8 = 21;
  byte_1ECC25AB0 = 2;
  qword_1ECC25AB8 = qword_1EE30A158;
  byte_1ECC25AC0 = 1;

  return v1;
}

id sub_1DAFFDA90()
{
  if (qword_1EE3021A0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE30A158;
  qword_1ECC25AC8 = "LocationHelpergetLocationOrWait";
  unk_1ECC25AD0 = 31;
  byte_1ECC25AD8 = 2;
  qword_1ECC25AE0 = qword_1EE30A158;
  byte_1ECC25AE8 = 0;

  return v1;
}

id sub_1DAFFDB14()
{
  if (qword_1EE3021A0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE30A158;
  qword_1ECC25AF0 = "LocationHelperUpdateWaitingContinuations";
  *algn_1ECC25AF8 = 40;
  byte_1ECC25B00 = 2;
  qword_1ECC25B08 = qword_1EE30A158;
  byte_1ECC25B10 = 0;

  return v1;
}

id sub_1DAFFDB98()
{
  if (qword_1EE3021A0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE30A158;
  qword_1ECC25B18 = "GeocoderFCMU";
  unk_1ECC25B20 = 12;
  byte_1ECC25B28 = 2;
  qword_1ECC25B30 = qword_1EE30A158;
  byte_1ECC25B38 = 0;

  return v1;
}

id sub_1DAFFDC1C()
{
  if (qword_1EE3021A0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE30A158;
  qword_1ECC25B40 = "GeocoderFCMUMemCache";
  *algn_1ECC25B48 = 20;
  byte_1ECC25B50 = 2;
  qword_1ECC25B58 = qword_1EE30A158;
  byte_1ECC25B60 = 0;

  return v1;
}

id sub_1DAFFDCA0()
{
  if (qword_1EE3021A0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE30A158;
  qword_1ECC25B68 = "GeocoderFCMUPersistentCache";
  unk_1ECC25B70 = 27;
  byte_1ECC25B78 = 2;
  qword_1ECC25B80 = qword_1EE30A158;
  byte_1ECC25B88 = 0;

  return v1;
}

id sub_1DAFFDD24()
{
  if (qword_1EE3021A0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE30A158;
  qword_1ECC25B90 = "GeocoderFCMUTaskGroupTotal";
  *algn_1ECC25B98 = 26;
  byte_1ECC25BA0 = 2;
  qword_1ECC25BA8 = qword_1EE30A158;
  byte_1ECC25BB0 = 0;

  return v1;
}

id sub_1DAFFDDA8()
{
  if (qword_1EE3021A0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE30A158;
  qword_1ECC25BB8 = "GeocoderFCMUGeocodeOp";
  unk_1ECC25BC0 = 21;
  byte_1ECC25BC8 = 2;
  qword_1ECC25BD0 = qword_1EE30A158;
  byte_1ECC25BD8 = 0;

  return v1;
}

id sub_1DAFFDE2C()
{
  if (qword_1EE3021A0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE30A158;
  qword_1ECC25BE0 = "GeocoderGetFromMemCache";
  *algn_1ECC25BE8 = 23;
  byte_1ECC25BF0 = 2;
  qword_1ECC25BF8 = qword_1EE30A158;
  byte_1ECC25C00 = 0;

  return v1;
}

id sub_1DAFFDEB0()
{
  if (qword_1EE3021A0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE30A158;
  qword_1ECC25C08 = "GeocoderGeocodeAddresses";
  unk_1ECC25C10 = 24;
  byte_1ECC25C18 = 2;
  qword_1ECC25C20 = qword_1EE30A158;
  byte_1ECC25C28 = 0;

  return v1;
}

id sub_1DAFFDF34()
{
  if (qword_1EE3012B0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE309EF0;
  *&xmmword_1EE301428 = "odiSessionInternalInit";
  *(&xmmword_1EE301428 + 1) = 22;
  byte_1EE301438 = 2;
  qword_1EE301440 = qword_1EE309EF0;
  byte_1EE301448 = 1;

  return v1;
}

id static FrameworkSignposts.odiSessionInternalInit.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EE301420 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v2 = byte_1EE301438;
  v3 = qword_1EE301440;
  v4 = byte_1EE301448;
  *a1 = xmmword_1EE301428;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;

  return v3;
}

id sub_1DAFFE048()
{
  if (qword_1EE3012B0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE309EF0;
  *&xmmword_1ECC0F360 = "odiSessionInternalUpdate";
  *(&xmmword_1ECC0F360 + 1) = 24;
  byte_1ECC0F370 = 2;
  qword_1ECC0F378 = qword_1EE309EF0;
  byte_1ECC0F380 = 1;

  return v1;
}

id static FrameworkSignposts.odiSessionInternalUpdate.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECC0E068 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v2 = byte_1ECC0F370;
  v3 = qword_1ECC0F378;
  v4 = byte_1ECC0F380;
  *a1 = xmmword_1ECC0F360;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;

  return v3;
}

id sub_1DAFFE15C()
{
  if (qword_1EE3012B0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE309EF0;
  *&xmmword_1EE3013F8 = "odiSessionInternalGetAssessment";
  *(&xmmword_1EE3013F8 + 1) = 31;
  byte_1EE301408 = 2;
  qword_1EE301410 = qword_1EE309EF0;
  byte_1EE301418 = 1;

  return v1;
}

id static FrameworkSignposts.odiSessionInternalGetAssessment.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EE3013F0 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v2 = byte_1EE301408;
  v3 = qword_1EE301410;
  v4 = byte_1EE301418;
  *a1 = xmmword_1EE3013F8;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;

  return v3;
}

id sub_1DAFFE270()
{
  if (qword_1EE3012B0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE309EF0;
  *&xmmword_1EE301390 = "odiSessionInternalGetDeviceData";
  *(&xmmword_1EE301390 + 1) = 31;
  byte_1EE3013A0 = 2;
  qword_1EE3013A8 = qword_1EE309EF0;
  byte_1EE3013B0 = 1;

  return v1;
}

id static FrameworkSignposts.odiSessionInternalGetArmandDeviceData.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EE301388 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v2 = byte_1EE3013A0;
  v3 = qword_1EE3013A8;
  v4 = byte_1EE3013B0;
  *a1 = xmmword_1EE301390;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;

  return v3;
}

id sub_1DAFFE384()
{
  if (qword_1EE3012B0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE309EF0;
  *&xmmword_1EE3013C8 = "odiSessionInternalGetBindingsData";
  *(&xmmword_1EE3013C8 + 1) = 33;
  byte_1EE3013D8 = 2;
  qword_1EE3013E0 = qword_1EE309EF0;
  byte_1EE3013E8 = 1;

  return v1;
}

id static FrameworkSignposts.odiSessionInternalGetBindingsData.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EE3013C0 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v2 = byte_1EE3013D8;
  v3 = qword_1EE3013E0;
  v4 = byte_1EE3013E8;
  *a1 = xmmword_1EE3013C8;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;

  return v3;
}

unint64_t sub_1DAFFE4A8()
{
  result = qword_1EE3018A0;
  if (!qword_1EE3018A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE3018A0);
  }

  return result;
}

id sub_1DAFFE4F4()
{
  if (qword_1EE3021A0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE30A158;
  qword_1ECC25C30 = "odiSessionInternalDDBAA";
  *algn_1ECC25C38 = 23;
  byte_1ECC25C40 = 2;
  qword_1ECC25C48 = qword_1EE30A158;
  byte_1ECC25C50 = 0;

  return v1;
}

id sub_1DAFFE578()
{
  if (qword_1EE3021A0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE30A158;
  qword_1ECC25C58 = "odiSessionInternalDDPac";
  unk_1ECC25C60 = 23;
  byte_1ECC25C68 = 2;
  qword_1ECC25C70 = qword_1EE30A158;
  byte_1ECC25C78 = 0;

  return v1;
}

id sub_1DAFFE5FC()
{
  if (qword_1EE3021A0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE30A158;
  qword_1EE309F20 = "odiSessionInternalDDOdiDeviceInfo";
  *algn_1EE309F28 = 33;
  byte_1EE309F30 = 2;
  qword_1EE309F38 = qword_1EE30A158;
  byte_1EE309F40 = 0;

  return v1;
}

id sub_1DAFFE680()
{
  if (qword_1EE3021A0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE30A158;
  qword_1ECC25C80 = "odiSessionInternalDDStatus";
  *algn_1ECC25C88 = 26;
  byte_1ECC25C90 = 2;
  qword_1ECC25C98 = qword_1EE30A158;
  byte_1ECC25CA0 = 0;

  return v1;
}

id sub_1DAFFE704()
{
  if (qword_1EE3021A0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE30A158;
  qword_1EE309F70 = "odiSessionInternalDDDeviceInfo";
  *algn_1EE309F78 = 30;
  byte_1EE309F80 = 2;
  qword_1EE309F88 = qword_1EE30A158;
  byte_1EE309F90 = 0;

  return v1;
}

id sub_1DAFFE788()
{
  if (qword_1EE3021A0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE30A158;
  qword_1ECC25CA8 = "odiSessionInternalDDLocation";
  unk_1ECC25CB0 = 28;
  byte_1ECC25CB8 = 2;
  qword_1ECC25CC0 = qword_1EE30A158;
  byte_1ECC25CC8 = 0;

  return v1;
}

id sub_1DAFFE80C()
{
  if (qword_1EE3021A0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE30A158;
  qword_1ECC25CD0 = "odiSessionInternalDDsid";
  *algn_1ECC25CD8 = 23;
  byte_1ECC25CE0 = 2;
  qword_1ECC25CE8 = qword_1EE30A158;
  byte_1ECC25CF0 = 0;

  return v1;
}

id sub_1DAFFE890()
{
  if (qword_1EE3021A0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE30A158;
  qword_1ECC25CF8 = "odiSessionInternalBindings";
  unk_1ECC25D00 = 26;
  byte_1ECC25D08 = 2;
  qword_1ECC25D10 = qword_1EE30A158;
  byte_1ECC25D18 = 0;

  return v1;
}

id sub_1DAFFE914()
{
  if (qword_1EE3021A0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE30A158;
  qword_1ECC25D20 = "odiSessionInternalParsedBindings";
  *algn_1ECC25D28 = 32;
  byte_1ECC25D30 = 2;
  qword_1ECC25D38 = qword_1EE30A158;
  byte_1ECC25D40 = 0;

  return v1;
}

id sub_1DAFFE998()
{
  if (qword_1EE3021A0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE30A158;
  qword_1ECC25D48 = "odiSessionInternalFormattedBindings";
  unk_1ECC25D50 = 35;
  byte_1ECC25D58 = 2;
  qword_1ECC25D60 = qword_1EE30A158;
  byte_1ECC25D68 = 0;

  return v1;
}

id sub_1DAFFEA1C()
{
  if (qword_1EE3021A0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE30A158;
  qword_1ECC25D70 = "odiSessionInternalGeocodedBindings";
  *algn_1ECC25D78 = 34;
  byte_1ECC25D80 = 2;
  qword_1ECC25D88 = qword_1EE30A158;
  byte_1ECC25D90 = 0;

  return v1;
}

id sub_1DAFFEAA0()
{
  if (qword_1EE3021A0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE30A158;
  qword_1ECC25D98 = "odiSessionInternalConfigurationBindings";
  unk_1ECC25DA0 = 39;
  byte_1ECC25DA8 = 2;
  qword_1ECC25DB0 = qword_1EE30A158;
  byte_1ECC25DB8 = 0;

  return v1;
}

id sub_1DAFFEB24()
{
  if (qword_1EE3021A0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE30A158;
  qword_1EE309F48 = "odiSessionInternalDeviceSettings";
  unk_1EE309F50 = 32;
  byte_1EE309F58 = 2;
  qword_1EE309F60 = qword_1EE30A158;
  byte_1EE309F68 = 0;

  return v1;
}

id sub_1DAFFEBA8()
{
  if (qword_1EE301FA8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE30A150;
  qword_1EE30A160 = "getProfileRequest";
  *algn_1EE30A168 = 17;
  byte_1EE30A170 = 2;
  qword_1EE30A178 = qword_1EE30A150;
  byte_1EE30A180 = 0;

  return v1;
}

id sub_1DAFFEC2C()
{
  if (qword_1EE301FA8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE30A150;
  qword_1EE30A188 = "getSTSRequest";
  unk_1EE30A190 = 13;
  byte_1EE30A198 = 2;
  qword_1EE30A1A0 = qword_1EE30A150;
  byte_1EE30A1A8 = 0;

  return v1;
}

id sub_1DAFFECB0()
{
  if (qword_1EE301FA8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE30A150;
  qword_1ECC25DC0 = "clientBagFetch";
  *algn_1ECC25DC8 = 14;
  byte_1ECC25DD0 = 2;
  qword_1ECC25DD8 = qword_1EE30A150;
  byte_1ECC25DE0 = 0;

  return v1;
}

id sub_1DAFFED34()
{
  if (qword_1EE3021A0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE30A158;
  qword_1EE309F98 = "fetchAssessment";
  unk_1EE309FA0 = 15;
  byte_1EE309FA8 = 2;
  qword_1EE309FB0 = qword_1EE30A158;
  byte_1EE309FB8 = 1;

  return v1;
}

id sub_1DAFFEDBC()
{
  if (qword_1EE3021A0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE30A158;
  qword_1EE309EF8 = "odnMypg";
  unk_1EE309F00 = 7;
  byte_1EE309F08 = 2;
  qword_1EE309F10 = qword_1EE30A158;
  byte_1EE309F18 = 1;

  return v1;
}

id sub_1DAFFEE44()
{
  if (qword_1EE3021A0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE30A158;
  qword_1EE30A1B0 = "checkTrust";
  *algn_1EE30A1B8 = 10;
  byte_1EE30A1C0 = 2;
  qword_1EE30A1C8 = qword_1EE30A158;
  byte_1EE30A1D0 = 0;

  return v1;
}

id sub_1DAFFEEC8()
{
  if (qword_1EE3021A0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE30A158;
  *&xmmword_1EE30A038 = "decodeCBOR";
  *(&xmmword_1EE30A038 + 1) = 10;
  byte_1EE30A048 = 2;
  qword_1EE30A050 = qword_1EE30A158;
  byte_1EE30A058 = 0;

  return v1;
}

id sub_1DAFFEF4C()
{
  if (qword_1EE3021A0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE30A158;
  *&xmmword_1EE309FE8 = "encodeCBOR";
  *(&xmmword_1EE309FE8 + 1) = 10;
  byte_1EE309FF8 = 2;
  qword_1EE30A000 = qword_1EE30A158;
  byte_1EE30A008 = 0;

  return v1;
}

id sub_1DAFFEFD0()
{
  if (qword_1EE3021A0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE30A158;
  *&xmmword_1EE30A010 = "decodeCOSE";
  *(&xmmword_1EE30A010 + 1) = 10;
  byte_1EE30A020 = 2;
  qword_1EE30A028 = qword_1EE30A158;
  byte_1EE30A030 = 0;

  return v1;
}

id sub_1DAFFF054()
{
  if (qword_1EE3021A0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE30A158;
  *&xmmword_1ECC25DE8 = "decodeAssessmentConfig";
  *(&xmmword_1ECC25DE8 + 1) = 22;
  byte_1ECC25DF8 = 2;
  qword_1ECC25E00 = qword_1EE30A158;
  byte_1ECC25E08 = 0;

  return v1;
}

id sub_1DAFFF0D8()
{
  if (qword_1EE3021A0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE30A158;
  qword_1EE309FC0 = "odnProxyInit";
  *algn_1EE309FC8 = 12;
  byte_1EE309FD0 = 2;
  qword_1EE309FD8 = qword_1EE30A158;
  byte_1EE309FE0 = 0;

  return v1;
}

uint64_t sub_1DAFFF15C(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;

  MEMORY[0x1E127FE90](46, 0xE100000000000000);
  v6 = 0xEB000000006C6176;
  v7 = 0x2E656C69666F7270;
  if (v5 != 1)
  {
    v7 = 0x6B6361626C6C6166;
    v6 = 0xE800000000000000;
  }

  if (v5)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0x637465662E616770;
  }

  if (v5)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0xE900000000000068;
  }

  MEMORY[0x1E127FE90](v8, v9);

  if (*(a4 + 16))
  {
    v10 = sub_1DAF35210(a2, a3);
    v12 = v11;

    if (v12)
    {
      return *(*(a4 + 56) + v10);
    }
  }

  else
  {
  }

  return v5 == 1 && sub_1DAFFF668(0x64uLL) == 0;
}

uint64_t FeatureSet.hashValue.getter()
{
  v1 = *v0;
  sub_1DB09E3A4();
  MEMORY[0x1E1280A80](v1);
  return sub_1DB09E3E4();
}

unint64_t sub_1DAFFF324()
{
  result = qword_1ECC0F388;
  if (!qword_1ECC0F388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F388);
  }

  return result;
}

unint64_t sub_1DAFFF37C()
{
  result = qword_1ECC0F390;
  if (!qword_1ECC0F390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC0F398, &qword_1DB0AFC48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F390);
  }

  return result;
}

uint64_t sub_1DAFFF410(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = MEMORY[0x1E69E7CC0];
  sub_1DAF5F6AC(0, 3, 0);
  v6 = 0;
  v7 = v24;
  do
  {
    v8 = byte_1F56CB188[v6 + 32];
    v22 = a1;
    v23 = a2;

    MEMORY[0x1E127FE90](46, 0xE100000000000000);
    if (v8)
    {
      if (v8 == 1)
      {
        v9 = 0x2E656C69666F7270;
      }

      else
      {
        v9 = 0x6B6361626C6C6166;
      }

      if (v8 == 1)
      {
        v10 = 0xEB000000006C6176;
      }

      else
      {
        v10 = 0xE800000000000000;
      }
    }

    else
    {
      v10 = 0xE900000000000068;
      v9 = 0x637465662E616770;
    }

    MEMORY[0x1E127FE90](v9, v10);

    if (*(a3 + 16))
    {
      v11 = sub_1DAF35210(v22, v23);
      v13 = v12;

      if (v13)
      {
        v15 = *(*(a3 + 56) + v11);
        goto LABEL_18;
      }
    }

    else
    {
    }

    if (v8 == 1)
    {
      do
      {
        v22 = 0;
        result = MEMORY[0x1E1281830](&v22, 8);
      }

      while (((100 * v22) & 0xFFFFFFFFFFFFFFF0) == 0);
      v15 = (v22 * 0x64uLL) >> 64 == 0;
    }

    else
    {
      v15 = 0;
    }

LABEL_18:
    v24 = v7;
    v17 = *(v7 + 16);
    v16 = *(v7 + 24);
    if (v17 >= v16 >> 1)
    {
      result = sub_1DAF5F6AC((v16 > 1), v17 + 1, 1);
      v7 = v24;
    }

    ++v6;
    *(v7 + 16) = v17 + 1;
    *(v7 + v17 + 32) = v15;
  }

  while (v6 != 3);
  v18 = 0;
  v19 = 0;
  if (v17 == -1)
  {
LABEL_30:

    return v18;
  }

  else
  {
    while (v19 <= v17)
    {
      if (__OFADD__(v19, 1))
      {
        goto LABEL_32;
      }

      if (v19 <= 63)
      {
        v20 = 1 << v19;
      }

      else
      {
        v20 = 0;
      }

      v21 = v20 | v18;
      if (*(v7 + v19 + 32) == 1)
      {
        v18 = v21;
      }

      if (v17 + 1 == ++v19)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  return result;
}

unint64_t sub_1DAFFF668(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x1E1281830](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x1E1281830](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DAFFF6F4(uint64_t a1, uint64_t a2)
{
  v3[32] = a2;
  v3[33] = v2;
  v5 = swift_task_alloc();
  v3[34] = v5;
  *v5 = v3;
  v5[1] = sub_1DAFFF790;

  return sub_1DB004568(a1, 1);
}

uint64_t sub_1DAFFF790(uint64_t a1, uint64_t a2, char a3)
{
  v5 = *v4;
  v6 = *(*v4 + 272);
  v9 = *v4;
  *(v5 + 280) = a1;
  *(v5 + 288) = a2;
  *(v5 + 320) = a3;
  *(v5 + 296) = v3;

  if (v3)
  {
    v7 = sub_1DAFFFCB4;
  }

  else
  {
    v7 = sub_1DAFFF8AC;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1DAFFF8AC()
{
  v18 = v0;
  if (*(v0 + 320))
  {
    sub_1DAF6287C(*(v0 + 280), *(v0 + 288), 1);
    v1 = swift_task_alloc();
    *(v0 + 304) = v1;
    *v1 = v0;
    v1[1] = sub_1DAFFFA9C;
    v2 = *(v0 + 280);
    v3 = *(v0 + 288);
    v4 = *(v0 + 256);

    return sub_1DB00114C(v0 + 16, v4, v2, v3, 1);
  }

  else
  {
    v6 = (*(v0 + 264) + OBJC_IVAR____TtC17CoreODIEssentials13DIPWebService_logger);
    v7 = v6[3];
    v8 = v6[4];
    __swift_project_boxed_opaque_existential_1(v6, v7);
    v16 = 1;
    (*(v8 + 16))(0xD00000000000001CLL, 0x80000001DB0C9A50, &v16, v7, v8);
    v10 = *(v0 + 280);
    v9 = *(v0 + 288);
    v11 = (*(v0 + 264) + OBJC_IVAR____TtC17CoreODIEssentials13DIPWebService_logger);
    v12 = v11[3];
    v13 = v11[4];
    v14 = *(v0 + 320);
    __swift_project_boxed_opaque_existential_1(v11, v12);
    v17 = 1;
    (*(v13 + 32))(0xD000000000000023, 0x80000001DB0C9A70, &v17, v12, v13);
    sub_1DAF6286C(v10, v9, v14 & 1);
    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_1DAFFFA9C()
{
  v2 = *v1;
  v3 = *(*v1 + 304);
  v6 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {
    v4 = sub_1DB0001EC;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v2 + 16));
    v4 = sub_1DAFFFBB8;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DAFFFBB8()
{
  v10 = v0;
  sub_1DAF6286C(*(v0 + 280), *(v0 + 288), 1);
  v2 = *(v0 + 280);
  v1 = *(v0 + 288);
  v3 = (*(v0 + 264) + OBJC_IVAR____TtC17CoreODIEssentials13DIPWebService_logger);
  v4 = v3[3];
  v5 = v3[4];
  v6 = *(v0 + 320);
  __swift_project_boxed_opaque_existential_1(v3, v4);
  v9 = 1;
  (*(v5 + 32))(0xD000000000000023, 0x80000001DB0C9A70, &v9, v4, v5);
  sub_1DAF6286C(v2, v1, v6 & 1);
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1DAFFFCB4()
{
  v42 = v0;
  v1 = *(v0 + 296);
  v2 = v1;
  if (qword_1EE301E08 != -1)
  {
    swift_once();
  }

  v3 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
  v4 = v1;
  v5 = sub_1DB09CE64();
  v6 = [v5 domain];
  v7 = sub_1DB09D6C4();
  v9 = v8;

  if (v7 == 0x726F72724549444FLL && v9 == 0xE800000000000000)
  {
  }

  else
  {
    v11 = sub_1DB09E254();

    if ((v11 & 1) == 0)
    {
      v12 = *MEMORY[0x1E696AA08];
      v13 = sub_1DB09D6C4();
      v15 = v14;
      *(v0 + 80) = sub_1DAF4D7A4();
      *(v0 + 56) = v5;
      sub_1DAF40D20((v0 + 56), (v0 + 88));
      v16 = v5;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v41[0] = v3;
      sub_1DAF3B11C((v0 + 88), v13, v15, isUniquelyReferenced_nonNull_native);

      v18 = v3;
      v19 = 128;
      goto LABEL_13;
    }
  }

  ODIErrorCode.init(rawValue:)([v5 code]);
  v20 = [v5 userInfo];
  v18 = sub_1DB09D624();

  if (LOBYTE(v41[0]) == 211)
  {
    v19 = 128;
  }

  else
  {
    v19 = LOBYTE(v41[0]) ^ 0x80u;
  }

LABEL_13:
  if (*(v18 + 16) && (v21 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461), (v22 & 1) != 0) && (sub_1DAF409DC(*(v18 + 56) + 32 * v21, v0 + 120), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60), swift_dynamicCast()))
  {
    v23 = *(v0 + 248);
  }

  else
  {
    v23 = MEMORY[0x1E69E7CC0];
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v23 = sub_1DAF72EC0(0, *(v23 + 2) + 1, 1, v23);
  }

  v25 = *(v23 + 2);
  v24 = *(v23 + 3);
  if (v25 >= v24 >> 1)
  {
    v23 = sub_1DAF72EC0((v24 > 1), v25 + 1, 1, v23);
  }

  *(v23 + 2) = v25 + 1;
  v26 = &v23[56 * v25];
  *(v26 + 4) = 0xD00000000000001ELL;
  *(v26 + 5) = 0x80000001DB0C99F0;
  *(v26 + 6) = 0xD00000000000002FLL;
  *(v26 + 7) = 0x80000001DB0C95F0;
  *(v26 + 8) = 0xD000000000000031;
  *(v26 + 9) = 0x80000001DB0C9A10;
  *(v26 + 10) = 403;
  *(v0 + 176) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
  *(v0 + 152) = v23;
  sub_1DAF40D20((v0 + 152), (v0 + 184));
  v27 = swift_isUniquelyReferenced_nonNull_native();
  v41[0] = v18;
  sub_1DAF3B11C((v0 + 184), 0x636F766E4949444FLL, 0xEE00736E6F697461, v27);
  v28 = qword_1DB0B0110[v19];
  v29 = *(v0 + 264);
  v30 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v31 = sub_1DB09D6B4();
  v32 = sub_1DB09D604();
  [v30 initWithDomain:v31 code:v28 userInfo:{v32, v18}];

  v33 = *(v29 + OBJC_IVAR____TtC17CoreODIEssentials13DIPWebService_logger + 24);
  v34 = *(v29 + OBJC_IVAR____TtC17CoreODIEssentials13DIPWebService_logger + 32);
  __swift_project_boxed_opaque_existential_1((v29 + OBJC_IVAR____TtC17CoreODIEssentials13DIPWebService_logger), v33);
  v41[0] = 0x203A726F727245;
  v41[1] = 0xE700000000000000;
  swift_getErrorValue();
  v36 = *(v0 + 216);
  v35 = *(v0 + 224);
  v37 = *(v0 + 232);
  v38 = sub_1DB09E324();
  MEMORY[0x1E127FE90](v38);

  LOBYTE(v41[0]) = 1;
  (*(v34 + 40))(0x203A726F727245, 0xE700000000000000, v41, v33, v34);

  swift_willThrow();

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_1DB0001EC()
{
  v44 = v0;
  v1 = *(v0 + 280);
  v2 = *(v0 + 288);
  sub_1DAF6286C(v1, v2, 1);
  sub_1DAF6286C(v1, v2, 1);
  v3 = *(v0 + 312);
  v4 = v3;
  if (qword_1EE301E08 != -1)
  {
    swift_once();
  }

  v5 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
  v6 = v3;
  v7 = sub_1DB09CE64();
  v8 = [v7 domain];
  v9 = sub_1DB09D6C4();
  v11 = v10;

  if (v9 == 0x726F72724549444FLL && v11 == 0xE800000000000000)
  {
  }

  else
  {
    v13 = sub_1DB09E254();

    if ((v13 & 1) == 0)
    {
      v14 = *MEMORY[0x1E696AA08];
      v15 = sub_1DB09D6C4();
      v17 = v16;
      *(v0 + 80) = sub_1DAF4D7A4();
      *(v0 + 56) = v7;
      sub_1DAF40D20((v0 + 56), (v0 + 88));
      v18 = v7;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v43[0] = v5;
      sub_1DAF3B11C((v0 + 88), v15, v17, isUniquelyReferenced_nonNull_native);

      v20 = v5;
      v21 = 128;
      goto LABEL_13;
    }
  }

  ODIErrorCode.init(rawValue:)([v7 code]);
  v22 = [v7 userInfo];
  v20 = sub_1DB09D624();

  if (LOBYTE(v43[0]) == 211)
  {
    v21 = 128;
  }

  else
  {
    v21 = LOBYTE(v43[0]) ^ 0x80u;
  }

LABEL_13:
  if (*(v20 + 16) && (v23 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461), (v24 & 1) != 0) && (sub_1DAF409DC(*(v20 + 56) + 32 * v23, v0 + 120), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60), swift_dynamicCast()))
  {
    v25 = *(v0 + 248);
  }

  else
  {
    v25 = MEMORY[0x1E69E7CC0];
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v25 = sub_1DAF72EC0(0, *(v25 + 2) + 1, 1, v25);
  }

  v27 = *(v25 + 2);
  v26 = *(v25 + 3);
  if (v27 >= v26 >> 1)
  {
    v25 = sub_1DAF72EC0((v26 > 1), v27 + 1, 1, v25);
  }

  *(v25 + 2) = v27 + 1;
  v28 = &v25[56 * v27];
  *(v28 + 4) = 0xD00000000000001ELL;
  *(v28 + 5) = 0x80000001DB0C99F0;
  *(v28 + 6) = 0xD00000000000002FLL;
  *(v28 + 7) = 0x80000001DB0C95F0;
  *(v28 + 8) = 0xD000000000000031;
  *(v28 + 9) = 0x80000001DB0C9A10;
  *(v28 + 10) = 403;
  *(v0 + 176) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
  *(v0 + 152) = v25;
  sub_1DAF40D20((v0 + 152), (v0 + 184));
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v43[0] = v20;
  sub_1DAF3B11C((v0 + 184), 0x636F766E4949444FLL, 0xEE00736E6F697461, v29);
  v30 = qword_1DB0B0110[v21];
  v31 = *(v0 + 264);
  v32 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v33 = sub_1DB09D6B4();
  v34 = sub_1DB09D604();
  [v32 initWithDomain:v33 code:v30 userInfo:{v34, v20}];

  v35 = *(v31 + OBJC_IVAR____TtC17CoreODIEssentials13DIPWebService_logger + 24);
  v36 = *(v31 + OBJC_IVAR____TtC17CoreODIEssentials13DIPWebService_logger + 32);
  __swift_project_boxed_opaque_existential_1((v31 + OBJC_IVAR____TtC17CoreODIEssentials13DIPWebService_logger), v35);
  v43[0] = 0x203A726F727245;
  v43[1] = 0xE700000000000000;
  swift_getErrorValue();
  v38 = *(v0 + 216);
  v37 = *(v0 + 224);
  v39 = *(v0 + 232);
  v40 = sub_1DB09E324();
  MEMORY[0x1E127FE90](v40);

  LOBYTE(v43[0]) = 1;
  (*(v36 + 40))(0x203A726F727245, 0xE700000000000000, v43, v35, v36);

  swift_willThrow();

  v41 = *(v0 + 8);

  return v41();
}

uint64_t sub_1DB000768()
{
  v1 = v0[4];
  if (*(v1 + OBJC_IVAR____TtC17CoreODIEssentials29DIPAssessmentStaticWebService_mode))
  {
    v2 = swift_task_alloc();
    v0[9] = v2;
    *v2 = v0;
    v2[1] = sub_1DB000AE8;
    v3 = v0[4];

    return sub_1DB006BDC();
  }

  else
  {
    v5 = swift_allocObject();
    v0[5] = v5;
    *(v5 + 16) = v1;
    v6 = v1;
    v7 = swift_task_alloc();
    v0[6] = v7;
    v7[2] = 4000000000;
    v7[3] = &unk_1DB0AFF08;
    v7[4] = v5;
    v7[5] = &unk_1DB0AFF10;
    v7[6] = 0;
    v8 = *(MEMORY[0x1E69E8920] + 4);
    v9 = swift_task_alloc();
    v0[7] = v9;
    *v9 = v0;
    v9[1] = sub_1DB000930;
    v10 = MEMORY[0x1E69E6158];

    return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000038, 0x80000001DB0C29C0, sub_1DB0089C8, v7, v10);
  }
}

uint64_t sub_1DB000930()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  v3[8] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DB000A7C, 0, 0);
  }

  else
  {
    v4 = v3[5];
    v5 = v3[6];

    v6 = v3[2];
    v7 = v3[3];
    v8 = v3[1];

    return v8(v6, v7);
  }
}

uint64_t sub_1DB000A7C()
{
  v1 = v0[5];
  v2 = v0[6];

  v3 = v0[8];
  v4 = v0[1];

  return v4();
}

uint64_t sub_1DB000AE8(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 72);
  v11 = *v3;

  v9 = *(v11 + 8);
  if (!v2)
  {
    v7 = a1;
    v8 = a2;
  }

  return v9(v7, v8);
}

uint64_t sub_1DB000BF8(uint64_t a1)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DB000C18, 0, 0);
}

uint64_t sub_1DB000C18()
{
  v1 = v0[20];
  if (*(v1 + OBJC_IVAR____TtC17CoreODIEssentials29DIPAssessmentStaticWebService_mode))
  {
    v2 = swift_task_alloc();
    v0[25] = v2;
    *v2 = v0;
    v2[1] = sub_1DB000FD4;
    v3 = v0[19];
    v4 = v0[20];

    return sub_1DB004568(v3, 0);
  }

  else
  {
    v6 = v0[19];
    v7 = swift_allocObject();
    v0[21] = v7;
    *(v7 + 16) = v1;
    v8 = v6[3];
    v9 = v6[4];
    v10 = v6[5];
    *(v7 + 120) = v6[6];
    *(v7 + 104) = v10;
    *(v7 + 88) = v9;
    *(v7 + 72) = v8;
    v12 = *v6;
    v11 = v6[1];
    *(v7 + 56) = v6[2];
    *(v7 + 24) = v12;
    *(v7 + 40) = v11;
    sub_1DB008860(v6, (v0 + 2));
    v13 = v1;
    v14 = swift_task_alloc();
    v0[22] = v14;
    v14[2] = 4000000000;
    v14[3] = &unk_1DB0AFEC8;
    v14[4] = v7;
    v14[5] = &unk_1DB0AFED0;
    v14[6] = 0;
    v15 = *(MEMORY[0x1E69E8920] + 4);
    v16 = swift_task_alloc();
    v0[23] = v16;
    *v16 = v0;
    v16[1] = sub_1DB000E24;

    return MEMORY[0x1EEE6DE38](v0 + 16, 0, 0, 0xD000000000000038, 0x80000001DB0C29C0, sub_1DB0088BC, v14, &type metadata for ProfileServerResponse);
  }
}

uint64_t sub_1DB000E24()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v8 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v4 = sub_1DB000F68;
  }

  else
  {
    v5 = *(v2 + 168);
    v6 = *(v2 + 176);

    v4 = sub_1DB000F48;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DB000F68()
{
  v1 = v0[21];
  v2 = v0[22];

  v3 = v0[24];
  v4 = v0[1];

  return v4();
}

uint64_t sub_1DB000FD4(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *v4;
  v9 = *(*v4 + 200);
  v10 = *v4;
  *(*v4 + 208) = v3;

  if (v3)
  {
    v11 = sub_1DB001134;
  }

  else
  {
    *(v8 + 145) = a3;
    *(v8 + 216) = a2;
    *(v8 + 224) = a1;
    v11 = sub_1DB001110;
  }

  return MEMORY[0x1EEE6DFA0](v11, 0, 0);
}

uint64_t sub_1DB00114C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 857) = a5;
  *(v5 + 888) = a4;
  *(v5 + 880) = a3;
  *(v5 + 872) = a2;
  *(v5 + 864) = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0ECE0, &unk_1DB0A21D0) - 8) + 64) + 15;
  *(v5 + 896) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB0011F8, 0, 0);
}

uint64_t sub_1DB0011F8()
{
  if (*(v0 + 857))
  {
    v1 = *(v0 + 888);
    v2 = *(v0 + 880);
    v3 = *(v0 + 872);
    *(v0 + 920) = *(v3 + 152);
    *(v0 + 928) = *(v3 + 160);
    sub_1DAF6287C(v2, v1, 1);
    v4 = sub_1DB0013E0;
    v5 = v3;
  }

  else
  {
    v6 = *(v0 + 888);
    v7 = *(v0 + 880);
    v8 = *(v0 + 872);
    v9 = *(v0 + 864);
    v9[3] = &type metadata for AugmentedProfile;
    v9[4] = sub_1DB0085E4();
    v10 = swift_allocObject();
    *(v0 + 904) = v10;
    *v9 = v10;
    sub_1DAF6287C(v7, v6, 0);
    v4 = sub_1DB0012F4;
    v5 = v8;
  }

  return MEMORY[0x1EEE6DFA0](v4, v5, 0);
}

uint64_t sub_1DB0012F4()
{
  v1 = v0[111];
  v2 = v0[110];
  v3 = v0[109];
  sub_1DAFA38D8(v0[113] + 16);
  v0[114] = 0;
  sub_1DAF6286C(v0[110], v0[111], 0);
  v4 = v0[112];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1DB0013E0()
{
  v1 = (v0 + 103);
  if (qword_1ECC0E0F0 != -1)
  {
    swift_once();
    v1 = (v0 + 103);
  }

  v2 = v0[111];
  v3 = v0[110];
  v4 = *&byte_1EE30A048;
  *v1 = xmmword_1EE30A038;
  *(v1 + 16) = v4;
  *(v1 + 32) = byte_1EE30A058;
  sub_1DAFA5998(v3, v2, v1, (v0 + 26));
  v0[117] = 0;

  return MEMORY[0x1EEE6DFA0](sub_1DB0014C8, 0, 0);
}

uint64_t sub_1DB0014C8()
{
  v1 = *(v0 + 928);
  v2 = *(v0 + 920);
  v3 = *(v0 + 872);
  v19 = *(v0 + 336);
  v20 = *(v0 + 352);
  v21 = *(v0 + 368);
  v22 = *(v0 + 384);
  v15 = *(v0 + 272);
  v16 = *(v0 + 288);
  v17 = *(v0 + 304);
  v18 = *(v0 + 320);
  v11 = *(v0 + 208);
  v12 = *(v0 + 224);
  v13 = *(v0 + 240);
  v14 = *(v0 + 256);
  sub_1DB0287B8((v0 + 16));
  *(v0 + 720) = v19;
  *(v0 + 736) = v20;
  *(v0 + 752) = v21;
  *(v0 + 768) = v22;
  *(v0 + 656) = v15;
  *(v0 + 672) = v16;
  *(v0 + 688) = v17;
  *(v0 + 704) = v18;
  *(v0 + 592) = v11;
  *(v0 + 608) = v12;
  *(v0 + 624) = v13;
  *(v0 + 640) = v14;
  sub_1DB008688(v0 + 592);
  v4 = *(v0 + 160);
  *(v0 + 528) = *(v0 + 144);
  *(v0 + 544) = v4;
  v5 = *(v0 + 192);
  *(v0 + 560) = *(v0 + 176);
  *(v0 + 576) = v5;
  v6 = *(v0 + 96);
  *(v0 + 464) = *(v0 + 80);
  *(v0 + 480) = v6;
  v7 = *(v0 + 128);
  *(v0 + 496) = *(v0 + 112);
  *(v0 + 512) = v7;
  v8 = *(v0 + 32);
  *(v0 + 400) = *(v0 + 16);
  *(v0 + 416) = v8;
  v9 = *(v0 + 64);
  *(v0 + 432) = *(v0 + 48);
  *(v0 + 448) = v9;
  *(v0 + 944) = *(v0 + 544);

  return MEMORY[0x1EEE6DFA0](sub_1DB0015F0, v3, 0);
}

uint64_t sub_1DB0015F0()
{
  v1 = v0[109];
  v2 = v1[24];
  v3 = v1[25];
  __swift_project_boxed_opaque_existential_1(v1 + 21, v2);
  v4 = *(v3 + 8);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[119] = v6;
  *v6 = v0;
  v6[1] = sub_1DB001720;
  v7 = v0[118];

  return v9(v7, v2, v3);
}

uint64_t sub_1DB001720()
{
  v2 = *v1;
  v3 = *(*v1 + 952);
  v4 = *v1;
  *(*v1 + 960) = v0;

  v5 = *(v2 + 872);
  if (v0)
  {
    v6 = sub_1DB001A34;
  }

  else
  {
    v6 = sub_1DB0018C0;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1DB00184C()
{
  sub_1DAF6286C(v0[110], v0[111], 1);
  v1 = v0[117];
  v2 = v0[112];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1DB0018C0()
{
  v1 = *(v0 + 944);

  return MEMORY[0x1EEE6DFA0](sub_1DB001928, 0, 0);
}

uint64_t sub_1DB001928()
{
  v1 = *(v0 + 960);
  v16 = *(v0 + 528);
  v17 = *(v0 + 544);
  v18 = *(v0 + 560);
  v19 = *(v0 + 576);
  v12 = *(v0 + 464);
  v13 = *(v0 + 480);
  v14 = *(v0 + 496);
  v15 = *(v0 + 512);
  v8 = *(v0 + 400);
  v9 = *(v0 + 416);
  v10 = *(v0 + 432);
  v11 = *(v0 + 448);
  v2 = sub_1DB029614();
  if (v1)
  {
    sub_1DAF6286C(*(v0 + 880), *(v0 + 888), 1);
    sub_1DB008688(v0 + 400);
    v4 = *(v0 + 896);

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v7 = *(v0 + 872);
    *(v0 + 968) = v3;
    *(v0 + 976) = v2;

    return MEMORY[0x1EEE6DFA0](sub_1DB001B20, v7, 0);
  }
}

uint64_t sub_1DB001A34()
{
  v1 = *(v0 + 944);

  return MEMORY[0x1EEE6DFA0](sub_1DB001A9C, 0, 0);
}

uint64_t sub_1DB001A9C()
{
  v1 = v0[111];
  v2 = v0[110];
  sub_1DB008688((v0 + 50));
  sub_1DAF6286C(v2, v1, 1);
  v3 = v0[120];
  v4 = v0[112];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1DB001B20()
{
  v1 = *(v0 + 976);
  v2 = *(v0 + 968);
  v3 = *(v0 + 928);
  v4 = *(v0 + 920);
  v5 = *(v0 + 896);
  v6 = *(v0 + 872);
  v7 = sub_1DB09DA24();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  sub_1DAF3523C(v6 + 168, v0 + 784);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  sub_1DAF96EAC((v0 + 784), (v8 + 4));
  v8[9] = v1;
  v8[10] = v2;
  v8[11] = v4;
  v8[12] = v3;

  sub_1DAF5B2C0(0, 0, v5, &unk_1DB0AFEA8, v8);

  return MEMORY[0x1EEE6DFA0](sub_1DB001C58, 0, 0);
}

uint64_t sub_1DB001C58()
{
  v1 = *(v0 + 888);
  v2 = *(v0 + 880);
  v3 = *(v0 + 864);
  v3[3] = &type metadata for ProfileSetObject;
  v3[4] = sub_1DAFA70BC();
  v4 = swift_allocObject();
  *v3 = v4;
  v5 = *(v0 + 416);
  v4[1] = *(v0 + 400);
  v4[2] = v5;
  v6 = *(v0 + 448);
  v4[3] = *(v0 + 432);
  v4[4] = v6;
  v7 = *(v0 + 480);
  v4[5] = *(v0 + 464);
  v4[6] = v7;
  v8 = *(v0 + 512);
  v4[7] = *(v0 + 496);
  v4[8] = v8;
  v9 = *(v0 + 544);
  v4[9] = *(v0 + 528);
  v4[10] = v9;
  v10 = *(v0 + 576);
  v4[11] = *(v0 + 560);
  v4[12] = v10;
  sub_1DAF6286C(v2, v1, 1);
  v11 = *(v0 + 896);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1DB001D3C()
{
  __swift_deallocate_boxed_opaque_existential_1(*(v0 + 864));
  v1 = *(v0 + 912);
  v2 = *(v0 + 896);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1DB001DA8(void *__src, uint64_t a2, uint64_t a3)
{
  v4[128] = v3;
  v4[127] = a3;
  v4[126] = a2;
  v4[125] = __src;
  memcpy(v4 + 2, __src, 0x170uLL);

  return MEMORY[0x1EEE6DFA0](sub_1DB001E2C, 0, 0);
}

uint64_t sub_1DB001E2C()
{
  v1 = *(v0 + 1016);
  if (v1)
  {
    v2 = *(v0 + 1024);
    v3 = *(v0 + 1008);
    v4 = *(v0 + 1000);
    *(v0 + 984) = &type metadata for OTDRequest;
    v5 = swift_allocObject();
    *(v0 + 960) = v5;
    memcpy((v5 + 16), v4, 0x170uLL);
    v6 = *(v2 + OBJC_IVAR____TtC17CoreODIEssentials23DIPAssessmentWebService_DUA_TRAIN_ENDPOINT);
    v7 = *(v2 + OBJC_IVAR____TtC17CoreODIEssentials23DIPAssessmentWebService_DUA_TRAIN_ENDPOINT + 8);
    swift_bridgeObjectRetain_n();
    sub_1DAF40520(v0 + 16, v0 + 384);
    MEMORY[0x1E127FE90](v6, v7);
    v8 = v1;
    *(v0 + 1032) = v1;
    v9 = swift_task_alloc();
    *(v0 + 1040) = v9;
    *v9 = v0;
    v9[1] = sub_1DB00223C;
    v10 = *(v0 + 1024);

    return sub_1DB0032CC(v0 + 960, v3, v8, 0);
  }

  else
  {
    if (qword_1EE301E08 != -1)
    {
      swift_once();
    }

    v12 = MEMORY[0x1E69E7CC0];
    v13 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    if (*(v13 + 16))
    {
      v14 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
      if (v15)
      {
        sub_1DAF409DC(*(v13 + 56) + 32 * v14, v0 + 864);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
        if (swift_dynamicCast())
        {
          v12 = *(v0 + 992);
        }

        else
        {
          v12 = MEMORY[0x1E69E7CC0];
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_1DAF72EC0(0, *(v12 + 2) + 1, 1, v12);
    }

    v17 = *(v12 + 2);
    v16 = *(v12 + 3);
    if (v17 >= v16 >> 1)
    {
      v12 = sub_1DAF72EC0((v16 > 1), v17 + 1, 1, v12);
    }

    v18 = *(v0 + 1024);
    *(v12 + 2) = v17 + 1;
    v19 = &v12[56 * v17];
    *(v19 + 4) = 0xD000000000000037;
    *(v19 + 5) = 0x80000001DB0C95B0;
    *(v19 + 6) = 0xD00000000000002FLL;
    *(v19 + 7) = 0x80000001DB0C95F0;
    *(v19 + 8) = 0xD00000000000001ELL;
    *(v19 + 9) = 0x80000001DB0C9620;
    *(v19 + 10) = 108;
    *(v0 + 920) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
    *(v0 + 896) = v12;
    sub_1DAF40D20((v0 + 896), (v0 + 928));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1DAF3B11C((v0 + 928), 0x636F766E4949444FLL, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
    v21 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v22 = sub_1DB09D6B4();
    v23 = sub_1DB09D604();
    v24 = [v21 initWithDomain:v22 code:-12 userInfo:v23];

    sub_1DB004124(v24, v18);

    swift_willThrow();
    v25 = *(v0 + 8);

    return v25();
  }
}

uint64_t sub_1DB00223C(uint64_t a1, unint64_t a2, void *a3)
{
  v8 = *v4;
  v9 = (*v4)[130];
  v14 = *v4;
  (*v4)[131] = v3;

  if (v3)
  {
    v10 = sub_1DB00253C;
  }

  else
  {
    v11 = v8[129];
    v12 = v8[127];
    sub_1DAF40780(a1, a2);

    __swift_destroy_boxed_opaque_existential_1Tm(v8 + 120);
    v10 = sub_1DB00239C;
  }

  return MEMORY[0x1EEE6DFA0](v10, 0, 0);
}

uint64_t sub_1DB00239C()
{
  v11 = v0;
  sub_1DAF3523C(v0[128] + OBJC_IVAR____TtC17CoreODIEssentials13DIPWebService_logger, (v0 + 103));
  v1 = v0[106];
  v2 = v0[107];
  __swift_project_boxed_opaque_existential_1(v0 + 103, v1);
  v8 = 7;
  v9 = 0;
  v10 = 0xE000000000000000;
  sub_1DB09DE44();
  MEMORY[0x1E127FE90](0xD000000000000024, 0x80000001DB0C9640);
  v3 = v0[24];
  if (v3)
  {
    v4 = v0[23];
  }

  else
  {
    v4 = 0x4B524F575F4C494ELL;
  }

  if (v3)
  {
    v5 = v0[24];
  }

  else
  {
    v5 = 0xEE004449574F4C46;
  }

  MEMORY[0x1E127FE90](v4, v5);

  MEMORY[0x1E127FE90](0xD00000000000001CLL, 0x80000001DB0C9670);
  (*(v2 + 80))(&v8, v9, v10, v0[2], v0[3], 0, v1, v2);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 103);
  v6 = v0[1];

  return v6();
}

uint64_t sub_1DB00253C()
{
  v13 = v0;
  v1 = v0[131];
  v2 = v0[129];
  v3 = v0[128];
  v4 = v0[127];
  v5 = v0[126];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E438, &unk_1DB0A0570);
  inited = swift_initStackObject();
  *(inited + 32) = 2;
  *(inited + 16) = xmmword_1DB0A04E0;
  *(inited + 64) = MEMORY[0x1E69E6158];
  *(inited + 40) = v5;
  *(inited + 48) = v4;
  v7 = v1;
  v8 = sub_1DAF3E280(inited);
  swift_setDeallocating();
  sub_1DAF40AEC(inited + 32, &qword_1ECC0E380, &qword_1DB0A0308);
  v12[0] = 0;
  v9 = ODIError(_:fromError:code:forceCode:properties:file:function:line:)(0, 0xE000000000000000, v1, v12, 0, v8, 0xD00000000000002FLL, 0x80000001DB0C95F0, 0xD00000000000001ELL, 0x80000001DB0C9620, 114);

  sub_1DB004124(v9, v3);
  swift_willThrow();

  v10 = v0[1];

  return v10();
}

uint64_t sub_1DB0026E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *__src)
{
  v6[115] = v5;
  v6[114] = a4;
  v6[113] = a3;
  v6[112] = a2;
  v6[111] = a1;
  memcpy(v6 + 2, __src, 0x111uLL);

  return MEMORY[0x1EEE6DFA0](sub_1DB002764, 0, 0);
}

uint64_t sub_1DB002764()
{
  v1 = *(v0 + 912);
  if (v1)
  {
    v2 = *(v0 + 920);
    v3 = *(v0 + 904);
    v4 = *(v0 + 896);
    v5 = *(v0 + 888);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F3E0, &qword_1DB0AFE88);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB0A04E0;
    *(inited + 32) = 0x692D656C646E7562;
    *(inited + 40) = 0xE900000000000064;
    *(inited + 48) = v5;
    *(inited + 56) = v4;

    v7 = sub_1DAF3ECE0(inited);
    *(v0 + 928) = v7;
    swift_setDeallocating();
    sub_1DAF40AEC(inited + 32, &qword_1ECC0F3E8, &qword_1DB0AFE90);
    *(v0 + 872) = &type metadata for ORDRequest;
    v8 = swift_allocObject();
    *(v0 + 848) = v8;
    memcpy((v8 + 16), (v0 + 16), 0x111uLL);
    v9 = *(v2 + OBJC_IVAR____TtC17CoreODIEssentials23DIPAssessmentWebService_DUA_ORD_ENDPOINT);
    v10 = *(v2 + OBJC_IVAR____TtC17CoreODIEssentials23DIPAssessmentWebService_DUA_ORD_ENDPOINT + 8);

    sub_1DAFFCFE4(v0 + 16, v0 + 296);
    MEMORY[0x1E127FE90](v9, v10);
    v11 = v1;
    *(v0 + 936) = v1;
    v12 = swift_task_alloc();
    *(v0 + 944) = v12;
    *v12 = v0;
    v12[1] = sub_1DB002C08;
    v13 = *(v0 + 920);

    return sub_1DB0032CC(v0 + 848, v3, v11, v7);
  }

  else
  {
    if (qword_1EE301E08 != -1)
    {
      swift_once();
    }

    v15 = MEMORY[0x1E69E7CC0];
    v16 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    if (*(v16 + 16))
    {
      v17 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
      if (v18)
      {
        sub_1DAF409DC(*(v16 + 56) + 32 * v17, v0 + 752);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
        if (swift_dynamicCast())
        {
          v15 = *(v0 + 880);
        }

        else
        {
          v15 = MEMORY[0x1E69E7CC0];
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_1DAF72EC0(0, *(v15 + 2) + 1, 1, v15);
    }

    v20 = *(v15 + 2);
    v19 = *(v15 + 3);
    if (v20 >= v19 >> 1)
    {
      v15 = sub_1DAF72EC0((v19 > 1), v20 + 1, 1, v15);
    }

    v21 = *(v0 + 920);
    *(v15 + 2) = v20 + 1;
    v22 = &v15[56 * v20];
    *(v22 + 4) = 0xD000000000000037;
    *(v22 + 5) = 0x80000001DB0C95B0;
    *(v22 + 6) = 0xD00000000000002FLL;
    *(v22 + 7) = 0x80000001DB0C95F0;
    *(v22 + 8) = 0xD00000000000002DLL;
    *(v22 + 9) = 0x80000001DB0C9780;
    *(v22 + 10) = 83;
    *(v0 + 808) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
    *(v0 + 784) = v15;
    sub_1DAF40D20((v0 + 784), (v0 + 816));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1DAF3B11C((v0 + 816), 0x636F766E4949444FLL, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
    v24 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v25 = sub_1DB09D6B4();
    v26 = sub_1DB09D604();
    v27 = [v24 initWithDomain:v25 code:-1201 userInfo:v26];

    sub_1DB003188(v27, v21);

    swift_willThrow();
    v28 = *(v0 + 8);

    return v28();
  }
}

uint64_t sub_1DB002C08(uint64_t a1, unint64_t a2, void *a3)
{
  v8 = *v4;
  v9 = (*v4)[118];
  v15 = *v4;
  (*v4)[119] = v3;

  if (v3)
  {
    v10 = sub_1DB002EE8;
  }

  else
  {
    v11 = v8[117];
    v12 = v8[116];
    v13 = v8[114];
    sub_1DAF40780(a1, a2);

    __swift_destroy_boxed_opaque_existential_1Tm(v8 + 106);
    v10 = sub_1DB002D7C;
  }

  return MEMORY[0x1EEE6DFA0](v10, 0, 0);
}

uint64_t sub_1DB002D7C()
{
  v9 = v0;
  sub_1DAF3523C(v0[115] + OBJC_IVAR____TtC17CoreODIEssentials13DIPWebService_logger, (v0 + 89));
  v1 = v0[93];
  __swift_project_boxed_opaque_existential_1(v0 + 89, v0[92]);
  v7 = 6;
  sub_1DB09DE44();

  v8._countAndFlagsBits = 0xD000000000000019;
  v8._object = 0x80000001DB0C97B0;
  v2 = v0[15];
  if (v2)
  {
    v3 = v0[14];
  }

  else
  {
    v3 = 0x4B524F575F4C494ELL;
  }

  if (v2)
  {
    v4 = v0[15];
  }

  else
  {
    v4 = 0xEE004449574F4C46;
  }

  MEMORY[0x1E127FE90](v3, v4);

  Loggable.milestone(tag:description:value:isSensitive:)(&v7, v8, 0, 0);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 89);
  v5 = v0[1];

  return v5();
}

uint64_t sub_1DB002EE8()
{
  v14 = v0;
  v1 = v0[119];
  v2 = v0[117];
  v3 = v0[116];
  v4 = v0[115];
  v5 = v0[114];
  v6 = v0[113];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 106);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E438, &unk_1DB0A0570);
  inited = swift_initStackObject();
  *(inited + 32) = 2;
  *(inited + 16) = xmmword_1DB0A04E0;
  *(inited + 64) = MEMORY[0x1E69E6158];
  *(inited + 40) = v6;
  *(inited + 48) = v5;
  v8 = v1;
  v9 = sub_1DAF3E280(inited);
  swift_setDeallocating();
  sub_1DAF40AEC(inited + 32, &qword_1ECC0E380, &qword_1DB0A0308);
  v13[0] = 0;
  v10 = ODIError(_:fromError:code:forceCode:properties:file:function:line:)(0, 0xE000000000000000, v1, v13, 0, v9, 0xD00000000000002FLL, 0x80000001DB0C95F0, 0xD00000000000002DLL, 0x80000001DB0C9780, 89);

  sub_1DB003188(v10, v4);
  swift_willThrow();

  v11 = v0[1];

  return v11();
}

uint64_t ODIServerRepo.hashValue.getter()
{
  v1 = *v0;
  sub_1DB09E3A4();
  MEMORY[0x1E1280A80](v1);
  return sub_1DB09E3E4();
}

unint64_t sub_1DB003124()
{
  result = qword_1ECC0F3A0;
  if (!qword_1ECC0F3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F3A0);
  }

  return result;
}

uint64_t sub_1DB003188(void *a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E438, &unk_1DB0A0570);
  inited = swift_initStackObject();
  *(inited + 32) = 6;
  *(inited + 16) = xmmword_1DB0A04E0;
  v6 = *(a2 + OBJC_IVAR____TtC17CoreODIEssentials13DIPWebService_conversationID);
  v5 = *(a2 + OBJC_IVAR____TtC17CoreODIEssentials13DIPWebService_conversationID + 8);
  *(inited + 64) = MEMORY[0x1E69E6158];
  *(inited + 40) = v6;
  *(inited + 48) = v5;

  v7 = sub_1DAF3E280(inited);
  swift_setDeallocating();
  sub_1DAF40AEC(inited + 32, &qword_1ECC0E380, &qword_1DB0A0308);
  v10 = 0;
  v8 = ODIError(_:fromError:code:forceCode:properties:file:function:line:)(0xD000000000000017, 0x80000001DB0C97D0, a1, &v10, 0, v7, 0xD00000000000002FLL, 0x80000001DB0C95F0, 0xD00000000000002DLL, 0x80000001DB0C9780, 78);

  return v8;
}

uint64_t sub_1DB0032CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[254] = v4;
  v5[253] = a4;
  v5[252] = a3;
  v5[251] = a2;
  v5[250] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAB0, &qword_1DB0A9530) - 8) + 64) + 15;
  v5[255] = swift_task_alloc();
  v7 = sub_1DB09CF64();
  v5[256] = v7;
  v8 = *(v7 - 8);
  v5[257] = v8;
  v9 = *(v8 + 64) + 15;
  v5[258] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB0033D4, 0, 0);
}

uint64_t sub_1DB0033D4()
{
  v50 = v0;
  v1 = v0[250];
  v2 = (v0[254] + OBJC_IVAR____TtC17CoreODIEssentials13DIPWebService_logger);
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  sub_1DB09DE44();

  v48 = 0xD000000000000021;
  v49 = 0x80000001DB0C9690;
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v0[249] = swift_getDynamicType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F3D0, &qword_1DB0AFE78);
  v5 = sub_1DB09D744();
  MEMORY[0x1E127FE90](v5);

  v6 = v48;
  LOBYTE(v48) = 17;
  (*(v4 + 32))(v6, v49, &v48, v3, v4);

  sub_1DAF409DC(v1, (v0 + 245));
  if (swift_dynamicCast())
  {
    memcpy(v0 + 175, v0 + 140, 0x111uLL);
    v7 = sub_1DB09CC54();
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    swift_allocObject();
    sub_1DB09CC44();
    memcpy(v0 + 210, v0 + 175, 0x111uLL);
    sub_1DB008590();
    v10 = sub_1DB09CC34();
    v12 = v11;

    sub_1DAFFD1F4((v0 + 175));
  }

  else
  {
    if (!swift_dynamicCast())
    {
      v26 = v0[252];
      v27 = v0[251];
      v28 = v0[250];
      v48 = 0;
      v49 = 0xE000000000000000;
      sub_1DB09DE44();

      v48 = 0xD000000000000015;
      v49 = 0x80000001DB0C96C0;
      __swift_project_boxed_opaque_existential_1(v28, v1[3]);
      swift_getDynamicType();
      v29 = sub_1DB09E474();
      MEMORY[0x1E127FE90](v29);

      v30 = v48;
      v31 = v49;
      LOBYTE(v48) = 79;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E438, &unk_1DB0A0570);
      v32 = swift_allocObject();
      *(v32 + 32) = 2;
      *(v32 + 16) = xmmword_1DB0A04E0;
      *(v32 + 64) = MEMORY[0x1E69E6158];
      *(v32 + 40) = v27;
      *(v32 + 48) = v26;

      v33 = sub_1DAF3E280(v32);
      swift_setDeallocating();
      sub_1DAF40AEC(v32 + 32, &qword_1ECC0E380, &qword_1DB0A0308);
      swift_deallocClassInstance();
      v34 = ODIError(_:fromError:code:forceCode:properties:file:function:line:)(v30, v31, 0, &v48, 0, v33, 0xD00000000000002FLL, 0x80000001DB0C95F0, 0xD00000000000001CLL, 0x80000001DB0C96E0, 133);

      swift_willThrow();
      v35 = v0[252];
      v36 = v0[251];
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 245);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E438, &unk_1DB0A0570);
      v37 = swift_allocObject();
      *(v37 + 32) = 2;
      *(v37 + 16) = xmmword_1DB0A04E0;
      *(v37 + 64) = MEMORY[0x1E69E6158];
      *(v37 + 40) = v36;
      *(v37 + 48) = v35;

      v38 = v34;
      v39 = sub_1DAF3E280(v37);
      swift_setDeallocating();
      sub_1DAF40AEC(v37 + 32, &qword_1ECC0E380, &qword_1DB0A0308);
      swift_deallocClassInstance();
      LOBYTE(v48) = 0;
      ODIError(_:fromError:code:forceCode:properties:file:function:line:)(0xD00000000000001BLL, 0x80000001DB0C9700, v34, &v48, 0, v39, 0xD00000000000002FLL, 0x80000001DB0C95F0, 0xD00000000000001CLL, 0x80000001DB0C96E0, 136);

      swift_willThrow();
      goto LABEL_8;
    }

    memcpy(v0 + 48, v0 + 2, 0x170uLL);
    v13 = sub_1DB09CC54();
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    sub_1DB09CC44();
    memcpy(v0 + 94, v0 + 48, 0x170uLL);
    sub_1DB00853C();
    v10 = sub_1DB09CC34();
    v12 = v16;

    sub_1DAFFD2A8((v0 + 48));
  }

  v17 = v0[257];
  v18 = v0[256];
  v19 = v0[255];
  v20 = v0[252];
  v21 = v0[251];
  v0[259] = v12;
  v0[260] = v10;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 245);
  sub_1DB09CF24();
  if ((*(v17 + 48))(v19, 1, v18) == 1)
  {
    v22 = v0[252];
    v23 = v0[251];
    sub_1DAF40AEC(v0[255], &unk_1ECC0EAB0, &qword_1DB0A9530);
    LOBYTE(v48) = 79;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E438, &unk_1DB0A0570);
    v24 = swift_allocObject();
    *(v24 + 32) = 2;
    *(v24 + 16) = xmmword_1DB0A04E0;
    *(v24 + 64) = MEMORY[0x1E69E6158];
    *(v24 + 40) = v23;
    *(v24 + 48) = v22;

    v25 = sub_1DAF3E280(v24);
    swift_setDeallocating();
    sub_1DAF40AEC(v24 + 32, &qword_1ECC0E380, &qword_1DB0A0308);
    swift_deallocClassInstance();
    ODIError(_:fromError:code:forceCode:properties:file:function:line:)(0xD000000000000013, 0x80000001DB0C9720, 0, &v48, 0, v25, 0xD00000000000002FLL, 0x80000001DB0C95F0, 0xD00000000000001CLL, 0x80000001DB0C96E0, 140);

    swift_willThrow();
    sub_1DAF40780(v10, v12);
LABEL_8:
    v40 = v0[258];
    v41 = v0[255];

    v42 = v0[1];

    return v42();
  }

  v44 = v0[254];
  (*(v0[257] + 32))(v0[258], v0[255], v0[256]);
  v0[261] = *(v44 + OBJC_IVAR____TtC17CoreODIEssentials13DIPWebService_httpSession);
  v45 = swift_task_alloc();
  v0[262] = v45;
  *v45 = v0;
  v45[1] = sub_1DB003BA4;
  v46 = v0[258];
  v47 = v0[253];

  return sub_1DAFA992C(v46, v47, 0, 0);
}

uint64_t sub_1DB003BA4(uint64_t a1)
{
  v2 = *(*v1 + 2096);
  v4 = *v1;
  *(*v1 + 2104) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1DB003CA4, 0, 0);
}

uint64_t sub_1DB003CA4()
{
  v1 = *(v0 + 2104);
  v2 = *(v0 + 2080);
  v3 = *(v0 + 2072);
  v4 = sub_1DB09D6B4();
  [v1 setHTTPMethod_];

  v5 = sub_1DB09D6B4();
  v6 = sub_1DB09D6B4();
  [v1 setValue:v5 forHTTPHeaderField:v6];

  sub_1DAF40674(v2, v3);
  v7 = sub_1DB09D004();
  [v1 setHTTPBody_];

  sub_1DAF40780(v2, v3);
  *(v0 + 1393) = 14;
  v8 = swift_task_alloc();
  *(v0 + 2112) = v8;
  *v8 = v0;
  v8[1] = sub_1DB003E3C;
  v9 = *(v0 + 2104);
  v10 = *(v0 + 2088);

  return sub_1DAFAAE8C(v9, 0, 0, (v0 + 1393));
}

uint64_t sub_1DB003E3C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v10 = *v5;
  v11 = *(*v5 + 2112);
  v12 = *v5;
  *(*v5 + 2120) = v4;

  if (v4)
  {
    v13 = sub_1DB004060;
  }

  else
  {
    *(v10 + 1394) = a4 & 1;
    *(v10 + 2128) = a3;
    *(v10 + 2136) = a2;
    *(v10 + 2144) = a1;
    v13 = sub_1DB003F90;
  }

  return MEMORY[0x1EEE6DFA0](v13, 0, 0);
}

uint64_t sub_1DB003F90()
{
  v1 = *(v0 + 2080);
  v2 = *(v0 + 2072);
  v3 = *(v0 + 2064);
  v4 = *(v0 + 2056);
  v5 = *(v0 + 2048);
  v6 = *(v0 + 2040);

  sub_1DAF40780(v1, v2);
  (*(v4 + 8))(v3, v5);

  v7 = *(v0 + 8);
  v8 = *(v0 + 2144);
  v9 = *(v0 + 2136);
  v10 = *(v0 + 2128);
  v11 = *(v0 + 1394);

  return v7(v8, v9, v10, v11);
}

uint64_t sub_1DB004060()
{
  v1 = *(v0 + 2080);
  v2 = *(v0 + 2072);
  v3 = *(v0 + 2064);
  v4 = *(v0 + 2056);
  v5 = *(v0 + 2048);

  sub_1DAF40780(v1, v2);
  (*(v4 + 8))(v3, v5);
  v6 = *(v0 + 2120);
  v7 = *(v0 + 2064);
  v8 = *(v0 + 2040);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1DB004124(void *a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E438, &unk_1DB0A0570);
  inited = swift_initStackObject();
  *(inited + 32) = 6;
  *(inited + 16) = xmmword_1DB0A04E0;
  v6 = *(a2 + OBJC_IVAR____TtC17CoreODIEssentials13DIPWebService_conversationID);
  v5 = *(a2 + OBJC_IVAR____TtC17CoreODIEssentials13DIPWebService_conversationID + 8);
  *(inited + 64) = MEMORY[0x1E69E6158];
  *(inited + 40) = v6;
  *(inited + 48) = v5;

  v7 = sub_1DAF3E280(inited);
  swift_setDeallocating();
  sub_1DAF40AEC(inited + 32, &qword_1ECC0E380, &qword_1DB0A0308);
  v10 = 0;
  v8 = ODIError(_:fromError:code:forceCode:properties:file:function:line:)(0xD00000000000001BLL, 0x80000001DB0C9760, a1, &v10, 0, v7, 0xD00000000000002FLL, 0x80000001DB0C95F0, 0xD00000000000001ELL, 0x80000001DB0C9620, 102);

  return v8;
}

uint64_t sub_1DB004268()
{
  v1 = *(v0 + OBJC_IVAR____TtC17CoreODIEssentials23DIPAssessmentWebService_DUA_ORD_ENDPOINT + 8);

  v2 = *(v0 + OBJC_IVAR____TtC17CoreODIEssentials23DIPAssessmentWebService_DUA_TRAIN_ENDPOINT + 8);
}

uint64_t sub_1DB00432C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_1DB0043D0;

  return sub_1DB004568(a3, 0);
}

uint64_t sub_1DB0043D0(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *v4;
  v9 = *(*v4 + 24);
  v10 = *v4;

  if (v3)
  {
    v11 = *(v10 + 8);

    return v11();
  }

  else
  {
    *(v8 + 48) = a3;
    *(v8 + 32) = a2;
    *(v8 + 40) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1DB004534, 0, 0);
  }
}

uint64_t sub_1DB004534()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);
  *v2 = vextq_s8(*(v0 + 32), *(v0 + 32), 8uLL);
  v2[1].i8[0] = v1 & 1;
  return (*(v0 + 8))();
}

uint64_t sub_1DB004568(uint64_t a1, char a2)
{
  *(v3 + 546) = a2;
  *(v3 + 360) = a1;
  *(v3 + 368) = v2;
  *(v3 + 376) = swift_getObjectType();
  v4 = sub_1DB09CBF4();
  *(v3 + 384) = v4;
  v5 = *(v4 - 8);
  *(v3 + 392) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 400) = swift_task_alloc();
  v7 = type metadata accessor for ODISignpost();
  *(v3 + 408) = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  *(v3 + 416) = swift_task_alloc();
  *(v3 + 424) = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAB0, &qword_1DB0A9530) - 8) + 64) + 15;
  *(v3 + 432) = swift_task_alloc();
  v10 = sub_1DB09CF64();
  *(v3 + 440) = v10;
  v11 = *(v10 - 8);
  *(v3 + 448) = v11;
  v12 = *(v11 + 64) + 15;
  *(v3 + 456) = swift_task_alloc();
  *(v3 + 464) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB004714, 0, 0);
}

uint64_t sub_1DB004714()
{
  v1 = *(v0 + 360);
  *(v0 + 544) = *(*(v0 + 368) + OBJC_IVAR____TtC17CoreODIEssentials29DIPAssessmentStaticWebService_serverRepo);
  v2 = *v1;
  *(v0 + 472) = *v1;
  v3 = v1[1];
  *(v0 + 480) = v3;
  v4 = swift_task_alloc();
  *(v0 + 488) = v4;
  *v4 = v0;
  v4[1] = sub_1DB0047E4;
  v5 = *(v0 + 464);
  v6 = *(v0 + 376);

  return sub_1DB005D18(v5, (v0 + 544), v2, v3);
}

uint64_t sub_1DB0047E4()
{
  v1 = *(*v0 + 488);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DB0048E0, 0, 0);
}

uint64_t sub_1DB0048E0()
{
  v1 = *(v0 + 464);
  v2 = *(v0 + 360);
  v3 = *(v0 + 368);
  sub_1DB00621C(*(v0 + 432));
  v5 = *(v0 + 448);
  v4 = *(v0 + 456);
  v7 = *(v0 + 432);
  v6 = *(v0 + 440);
  (*(v5 + 56))(v7, 0, 1, v6);
  (*(v5 + 32))(v4, v7, v6);
  if (qword_1EE302940 != -1)
  {
    swift_once();
  }

  v8 = *(v0 + 408);
  v9 = *(v0 + 416);
  v11 = qword_1EE30A160;
  v10 = *algn_1EE30A168;
  v12 = byte_1EE30A170;
  v13 = qword_1EE30A178;
  v14 = byte_1EE30A180;
  *(v9 + 32) = "enableTelemetry=YES";
  *(v9 + 40) = 19;
  *(v9 + 48) = 2;
  *v9 = v11;
  *(v9 + 8) = v10;
  *(v9 + 16) = v12;
  *(v9 + 24) = v13;
  v15 = *(v8 + 28);
  v16 = v13;
  sub_1DB09D474();
  sub_1DB09DC14();
  if (v14 == 1)
  {
    sub_1DB09D454();
  }

  else
  {
    sub_1DB09D464();
  }

  v17 = *(v0 + 456);
  v18 = *(v0 + 368);
  sub_1DAF5F604(*(v0 + 416), *(v0 + 424));
  v19 = objc_allocWithZone(MEMORY[0x1E696AD68]);
  v20 = sub_1DB09CEE4();
  v21 = [v19 initWithURL_];
  *(v0 + 496) = v21;

  [v21 setCachePolicy_];
  v22 = sub_1DB09D6B4();
  [v21 setHTTPMethod_];

  v23 = *(v18 + OBJC_IVAR____TtC17CoreODIEssentials13DIPWebService_httpSession);
  *(v0 + 545) = 1;
  v24 = swift_task_alloc();
  *(v0 + 504) = v24;
  *v24 = v0;
  v24[1] = sub_1DB004EF8;
  v25 = *(v0 + 546);

  return sub_1DAFAAE8C(v21, v25, 0, (v0 + 545));
}

uint64_t sub_1DB004EF8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = *v5;
  v7 = *(*v5 + 504);
  v10 = *v5;
  *(v6 + 512) = a1;
  *(v6 + 520) = a2;
  *(v6 + 528) = a3;
  *(v6 + 547) = a4;
  *(v6 + 536) = v4;

  if (v4)
  {
    v8 = sub_1DB00596C;
  }

  else
  {
    v8 = sub_1DB00501C;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1DB00501C()
{
  v107 = v0;
  v1 = *(v0 + 547);
  v101 = *(v0 + 528);
  v3 = *(v0 + 472);
  v2 = *(v0 + 480);
  v4 = *(v0 + 456);
  v5 = (*(v0 + 368) + OBJC_IVAR____TtC17CoreODIEssentials13DIPWebService_logger);
  sub_1DAF3523C(v5, v0 + 160);
  v6 = *(v0 + 184);
  v7 = *(v0 + 192);
  __swift_project_boxed_opaque_existential_1((v0 + 160), v6);
  v104 = 9;
  sub_1DB09DE44();

  v105 = 0xD00000000000001FLL;
  v106 = 0x80000001DB0C9850;
  MEMORY[0x1E127FE90](v3, v2);
  MEMORY[0x1E127FE90](0x206D6F726620, 0xE600000000000000);
  if (v1)
  {
    v8 = 0x6568636163;
  }

  else
  {
    v8 = 0x6B726F7774656ELL;
  }

  v9 = 0xE700000000000000;
  if (v1)
  {
    v10 = 0xE500000000000000;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  MEMORY[0x1E127FE90](v8, v10);

  MEMORY[0x1E127FE90](0x5255206874697720, 0xE90000000000004CLL);
  v11 = sub_1DB09CE84();
  (*(v7 + 80))(&v104, v105, v106, v11, v12, 0, v6, v7);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 160));
  sub_1DAF3523C(v5, v0 + 200);
  v13 = *(v0 + 224);
  v14 = *(v0 + 232);
  __swift_project_boxed_opaque_existential_1((v0 + 200), v13);
  v105 = 0;
  v106 = 0xE000000000000000;
  sub_1DB09DE44();

  v105 = 0xD000000000000010;
  v106 = 0x80000001DB0C9870;
  v15 = [v101 MIMEType];
  if (v15)
  {
    v16 = v15;
    v17 = sub_1DB09D6C4();
    v9 = v18;
  }

  else
  {
    v17 = 0x676E697373696DLL;
  }

  v19 = *(v0 + 528);
  MEMORY[0x1E127FE90](v17, v9);

  v20 = v105;
  LOBYTE(v105) = 17;
  (*(v14 + 16))(v20, v106, &v105, v13, v14);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 200));
  v21 = [v19 MIMEType];
  if (!v21)
  {
    goto LABEL_22;
  }

  v22 = v21;
  v23 = sub_1DB09D6C4();
  v25 = v24;

  if (v23 == 0xD000000000000018 && 0x80000001DB0C98B0 == v25 || (sub_1DB09E254() & 1) != 0 || v23 == 0xD000000000000010 && 0x80000001DB0C98D0 == v25 || (sub_1DB09E254() & 1) != 0)
  {
    v26 = *(v0 + 496);

    v97 = *(v0 + 512);
    v99 = *(v0 + 520);
    v102 = 1;
LABEL_36:
    v79 = *(v0 + 456);
    v78 = *(v0 + 464);
    v81 = *(v0 + 440);
    v80 = *(v0 + 448);
    v83 = *(v0 + 424);
    v82 = *(v0 + 432);
    v84 = *(v0 + 408);
    v85 = *(v0 + 416);
    v86 = *(v0 + 400);
    sub_1DB09DC04();
    v87 = *(v83 + 24);
    v88 = *v83;
    v89 = *(v83 + 8);
    v90 = *(v84 + 28);
    v91 = *(v83 + 16);
    sub_1DB09D464();
    v92 = *(v80 + 8);
    v92(v79, v81);
    v92(v78, v81);
    sub_1DAF60868(v83);

    v93 = *(v0 + 8);

    return v93(v97, v99, v102);
  }

  if (v23 == 0xD000000000000010 && 0x80000001DB0C9740 == v25)
  {

    goto LABEL_23;
  }

  v27 = sub_1DB09E254();

  if ((v27 & 1) == 0)
  {
LABEL_22:
    v28 = v5[3];
    v29 = v5[4];
    __swift_project_boxed_opaque_existential_1(v5, v28);
    LOBYTE(v105) = 17;
    (*(v29 + 16))(0xD000000000000014, 0x80000001DB0C9890, &v105, v28, v29);
  }

LABEL_23:
  if ((*(v0 + 547) & 1) == 0)
  {
    v30 = qword_1EE304378;
    v31 = *(v0 + 528);
    if (v30 == -1)
    {
      v32 = v31;
    }

    else
    {
      swift_once();
      v32 = *(v0 + 528);
    }

    v33 = *(v0 + 520);
    v34 = *(v0 + 512);
    v35 = *(v0 + 496);
    v37 = *(v0 + 392);
    v36 = *(v0 + 400);
    v38 = *(v0 + 384);
    v39 = qword_1EE30A1E0;
    sub_1DB09CBA4();
    v40 = objc_allocWithZone(MEMORY[0x1E696AAF8]);
    v41 = sub_1DB09D004();
    v42 = [v40 initWithResponse:v32 data:v41];

    v43 = sub_1DB09CB84();
    [v39 storeCachedResponse:v42 forRequest:v43];

    (*(v37 + 8))(v36, v38);
  }

  v44 = *(v0 + 536);
  v45 = *(v0 + 520);
  v46 = *(v0 + 512);
  v47 = sub_1DB09CC24();
  v48 = *(v47 + 48);
  v49 = *(v47 + 52);
  swift_allocObject();
  sub_1DB09CC14();
  sub_1DB0088D4();
  sub_1DB09CC04();
  if (!v44)
  {
    v76 = *(v0 + 528);
    v77 = *(v0 + 496);
    sub_1DAF40780(*(v0 + 512), *(v0 + 520));

    v102 = 0;
    v97 = *(v0 + 336);
    v99 = *(v0 + 344);
    goto LABEL_36;
  }

  v50 = v44;
  v51 = *(v0 + 547);

  if (v51)
  {
    if (qword_1EE304378 != -1)
    {
      swift_once();
    }

    [qword_1EE30A1E0 removeCachedResponseForRequest_];
  }

  v95 = *(v0 + 512);
  v96 = *(v0 + 520);
  v94 = *(v0 + 496);
  v52 = *(v0 + 464);
  v100 = *(v0 + 528);
  v103 = *(v0 + 456);
  v53 = *(v0 + 440);
  v54 = *(v0 + 448);
  v55 = *(v0 + 424);
  v98 = *(v0 + 408);
  v56 = *(v0 + 368);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E438, &unk_1DB0A0570);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB0A04E0;
  *(inited + 32) = 2;
  *(inited + 64) = v53;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 40));
  (*(v54 + 16))(boxed_opaque_existential_0, v52, v53);
  v59 = v50;
  v60 = sub_1DAF3E280(inited);
  swift_setDeallocating();
  sub_1DAF40AEC(inited + 32, &qword_1ECC0E380, &qword_1DB0A0308);
  LOBYTE(v105) = 0;
  v61 = ODIError(_:fromError:code:forceCode:properties:file:function:line:)(0, 0xE000000000000000, v50, &v105, 0, v60, 0xD00000000000002FLL, 0x80000001DB0C95F0, 0xD00000000000002BLL, 0x80000001DB0C9820, 262);

  sub_1DB005BD4(v61, v56);
  swift_willThrow();

  sub_1DAF40780(v95, v96);
  sub_1DB09DC04();
  v62 = *(v55 + 24);
  v63 = *v55;
  v64 = *(v55 + 8);
  v65 = *(v98 + 28);
  v66 = *(v55 + 16);
  sub_1DB09D464();
  v67 = *(v54 + 8);
  v67(v103, v53);
  v67(v52, v53);
  sub_1DAF60868(v55);
  v69 = *(v0 + 456);
  v68 = *(v0 + 464);
  v71 = *(v0 + 424);
  v70 = *(v0 + 432);
  v72 = *(v0 + 416);
  v73 = *(v0 + 400);

  v74 = *(v0 + 8);

  return v74();
}

uint64_t sub_1DB00596C()
{
  v30 = v0;
  v1 = v0[67];
  v2 = v0[58];
  v28 = v0[57];
  v3 = v0[55];
  v4 = v0[56];
  v5 = v0[53];
  v26 = v0[62];
  v27 = v0[51];
  v6 = v0[46];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E438, &unk_1DB0A0570);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB0A04E0;
  *(inited + 32) = 2;
  *(inited + 64) = v3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 40));
  (*(v4 + 16))(boxed_opaque_existential_0, v2, v3);
  v9 = v1;
  v10 = sub_1DAF3E280(inited);
  swift_setDeallocating();
  sub_1DAF40AEC(inited + 32, &qword_1ECC0E380, &qword_1DB0A0308);
  v29[0] = 0;
  v11 = ODIError(_:fromError:code:forceCode:properties:file:function:line:)(0, 0xE000000000000000, v1, v29, 0, v10, 0xD00000000000002FLL, 0x80000001DB0C95F0, 0xD00000000000002BLL, 0x80000001DB0C9820, 233);

  sub_1DB005BD4(v11, v6);
  swift_willThrow();

  sub_1DB09DC04();
  v12 = *(v5 + 24);
  v13 = *v5;
  v14 = *(v5 + 8);
  v15 = *(v27 + 28);
  v16 = *(v5 + 16);
  sub_1DB09D464();
  v17 = *(v4 + 8);
  v17(v28, v3);
  v17(v2, v3);
  sub_1DAF60868(v5);
  v19 = v0[57];
  v18 = v0[58];
  v21 = v0[53];
  v20 = v0[54];
  v22 = v0[52];
  v23 = v0[50];

  v24 = v0[1];

  return v24();
}

uint64_t sub_1DB005BD4(void *a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E438, &unk_1DB0A0570);
  inited = swift_initStackObject();
  *(inited + 32) = 6;
  *(inited + 16) = xmmword_1DB0A04E0;
  v6 = *(a2 + OBJC_IVAR____TtC17CoreODIEssentials13DIPWebService_conversationID);
  v5 = *(a2 + OBJC_IVAR____TtC17CoreODIEssentials13DIPWebService_conversationID + 8);
  *(inited + 64) = MEMORY[0x1E69E6158];
  *(inited + 40) = v6;
  *(inited + 48) = v5;

  v7 = sub_1DAF3E280(inited);
  swift_setDeallocating();
  sub_1DAF40AEC(inited + 32, &qword_1ECC0E380, &qword_1DB0A0308);
  v10 = 0;
  v8 = ODIError(_:fromError:code:forceCode:properties:file:function:line:)(0xD000000000000012, 0x80000001DB0C9970, a1, &v10, 0, v7, 0xD00000000000002FLL, 0x80000001DB0C95F0, 0xD00000000000002BLL, 0x80000001DB0C9820, 213);

  return v8;
}

uint64_t sub_1DB005D18(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 472) = a3;
  *(v4 + 480) = a4;
  *(v4 + 464) = a1;
  v6 = sub_1DB09CF64();
  *(v4 + 488) = v6;
  v7 = *(v6 - 8);
  *(v4 + 496) = v7;
  v8 = *(v7 + 64) + 15;
  v9 = swift_task_alloc();
  *(v4 + 504) = v9;
  *(v4 + 528) = *a2;
  v10 = swift_task_alloc();
  *(v4 + 512) = v10;
  *v10 = v4;
  v10[1] = sub_1DB005E24;

  return sub_1DB0081E4(v9, (v4 + 528));
}

uint64_t sub_1DB005E24()
{
  v1 = *(*v0 + 512);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DB005F20, 0, 0);
}

uint64_t sub_1DB005F20()
{
  if (qword_1EE304008 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 520) = v1;
  *v1 = v0;
  v1[1] = sub_1DB005FEC;

  return sub_1DAFEFC24(v0 + 240);
}

uint64_t sub_1DB005FEC()
{
  v1 = *(*v0 + 520);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DB0060E8, 0, 0);
}

uint64_t sub_1DB0060E8()
{
  v1 = *(v0 + 416);
  *(v0 + 176) = *(v0 + 400);
  *(v0 + 192) = v1;
  v2 = *(v0 + 448);
  *(v0 + 208) = *(v0 + 432);
  *(v0 + 224) = v2;
  v3 = *(v0 + 352);
  *(v0 + 112) = *(v0 + 336);
  *(v0 + 128) = v3;
  v4 = *(v0 + 384);
  *(v0 + 144) = *(v0 + 368);
  *(v0 + 160) = v4;
  v5 = *(v0 + 288);
  *(v0 + 48) = *(v0 + 272);
  *(v0 + 64) = v5;
  v6 = *(v0 + 320);
  *(v0 + 80) = *(v0 + 304);
  *(v0 + 96) = v6;
  v7 = *(v0 + 256);
  *(v0 + 16) = *(v0 + 240);
  *(v0 + 32) = v7;
  v8 = *(v0 + 224);
  if (v8)
  {
    if (*(v8 + 16))
    {
      v9 = sub_1DAF35210(*(v0 + 472), *(v0 + 480));
      if (v10)
      {
        v11 = (*(v8 + 56) + 16 * v9);
        v12 = *v11;
        v13 = v11[1];
      }
    }
  }

  v15 = *(v0 + 496);
  v14 = *(v0 + 504);
  v16 = *(v0 + 488);
  v17 = *(v0 + 464);
  sub_1DAF791EC(v0 + 16);
  sub_1DB09CEF4();

  (*(v15 + 8))(v14, v16);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1DB00621C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAB0, &qword_1DB0A9530);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v6 = &v43 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F3F0, &qword_1DB0AFEE0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v11 = &v43 - v10;
  v12 = sub_1DB09CD14();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DB09CCC4();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1DAF40AEC(v11, &qword_1ECC0F3F0, &qword_1DB0AFEE0);
    if (qword_1EE301E08 != -1)
    {
      swift_once();
    }

    v18 = MEMORY[0x1E69E7CC0];
    v19 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    if (*(v19 + 16))
    {
      v20 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
      if (v21)
      {
        sub_1DAF409DC(*(v19 + 56) + 32 * v20, &v46);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
        if (swift_dynamicCast())
        {
          v18 = *&v45[0];
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = sub_1DAF72EC0(0, *(v18 + 2) + 1, 1, v18);
    }

    v23 = *(v18 + 2);
    v22 = *(v18 + 3);
    if (v23 >= v22 >> 1)
    {
      v18 = sub_1DAF72EC0((v22 > 1), v23 + 1, 1, v18);
    }

    *(v18 + 2) = v23 + 1;
    v24 = &v18[56 * v23];
    *(v24 + 4) = 0xD000000000000020;
    *(v24 + 5) = 0x80000001DB0C98F0;
    *(v24 + 6) = 0xD00000000000002FLL;
    *(v24 + 7) = 0x80000001DB0C95F0;
    *(v24 + 8) = 0xD000000000000023;
    *(v24 + 9) = 0x80000001DB0C9920;
    *(v24 + 10) = 382;
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
    *&v46 = v18;
    sub_1DAF40D20(&v46, v45);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v48 = v19;
    sub_1DAF3B11C(v45, 0x636F766E4949444FLL, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
    v26 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v27 = sub_1DB09D6B4();
    v28 = sub_1DB09D604();
    [v26 initWithDomain:v27 code:-1202 userInfo:v28];

    return swift_willThrow();
  }

  else
  {
    (*(v13 + 32))(v17, v11, v12);
    sub_1DB0298C0();
    sub_1DB09CCB4();
    sub_1DB09CCD4();
    v30 = sub_1DB09CF64();
    v31 = *(v30 - 8);
    if ((*(v31 + 48))(v6, 1, v30) == 1)
    {
      sub_1DAF40AEC(v6, &unk_1ECC0EAB0, &qword_1DB0A9530);
      if (qword_1EE301E08 != -1)
      {
        swift_once();
      }

      v44 = " for get profile";
      v32 = MEMORY[0x1E69E7CC0];
      v33 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
      if (*(v33 + 16))
      {
        v34 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
        if ((v35 & 1) != 0 && (sub_1DAF409DC(*(v33 + 56) + 32 * v34, &v46), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60), swift_dynamicCast()))
        {
          v32 = *&v45[0];
        }

        else
        {
          v32 = MEMORY[0x1E69E7CC0];
        }
      }

      v44 |= 0x8000000000000000;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = sub_1DAF72EC0(0, *(v32 + 2) + 1, 1, v32);
      }

      v37 = *(v32 + 2);
      v36 = *(v32 + 3);
      if (v37 >= v36 >> 1)
      {
        v32 = sub_1DAF72EC0((v36 > 1), v37 + 1, 1, v32);
      }

      *(v32 + 2) = v37 + 1;
      v38 = &v32[56 * v37];
      *(v38 + 4) = 0xD00000000000002ALL;
      *(v38 + 5) = 0x80000001DB0C97F0;
      *(v38 + 6) = 0xD00000000000002FLL;
      *(v38 + 7) = 0x80000001DB0C95F0;
      *(v38 + 8) = 0xD000000000000023;
      *(v38 + 9) = v44;
      *(v38 + 10) = 386;
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
      *&v46 = v32;
      sub_1DAF40D20(&v46, v45);
      v39 = swift_isUniquelyReferenced_nonNull_native();
      v48 = v33;
      sub_1DAF3B11C(v45, 0x636F766E4949444FLL, 0xEE00736E6F697461, v39);
      v40 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v41 = sub_1DB09D6B4();
      v42 = sub_1DB09D604();
      [v40 initWithDomain:v41 code:-1202 userInfo:v42];

      swift_willThrow();
      return (*(v13 + 8))(v17, v12);
    }

    else
    {
      (*(v13 + 8))(v17, v12);
      return (*(v31 + 32))(a1, v6, v30);
    }
  }
}

uint64_t sub_1DB0069C8(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1DB006A5C;

  return sub_1DB006BDC();
}

uint64_t sub_1DB006A5C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 24);
  v8 = *v3;

  if (v2)
  {
    v9 = *(v8 + 8);

    return v9();
  }

  else
  {
    *(v6 + 32) = a2;
    *(v6 + 40) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1DB006BB8, 0, 0);
  }
}

uint64_t sub_1DB006BB8()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  *v2 = *(v0 + 40);
  v2[1] = v1;
  return (*(v0 + 8))();
}

uint64_t sub_1DB006BDC()
{
  v1[2] = v0;
  v2 = type metadata accessor for ODISignpost();
  v1[3] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  v1[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB006C7C, 0, 0);
}

uint64_t sub_1DB006C7C()
{
  if (qword_1EE302948 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = v0[4];
  v4 = qword_1EE30A188;
  v3 = unk_1EE30A190;
  v5 = byte_1EE30A198;
  v6 = qword_1EE30A1A0;
  v7 = byte_1EE30A1A8;
  *(v2 + 32) = "enableTelemetry=YES";
  *(v2 + 40) = 19;
  *(v2 + 48) = 2;
  *v2 = v4;
  *(v2 + 8) = v3;
  *(v2 + 16) = v5;
  *(v2 + 24) = v6;
  v8 = *(v1 + 28);
  v9 = v6;
  sub_1DB09D474();
  sub_1DB09DC14();
  if (v7 == 1)
  {
    sub_1DB09D454();
  }

  else
  {
    sub_1DB09D464();
  }

  sub_1DAF5F604(v0[4], v0[5]);
  v10 = swift_task_alloc();
  v0[6] = v10;
  *v10 = v0;
  v10[1] = sub_1DB006E30;
  v11 = v0[2];

  return sub_1DB007200(0);
}

uint64_t sub_1DB006E30(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 48);
  v8 = *v3;
  *(*v3 + 56) = v2;

  if (v2)
  {
    v9 = sub_1DB0070B0;
  }

  else
  {
    *(v6 + 64) = a2;
    *(v6 + 72) = a1;
    v9 = sub_1DB006F64;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1DB006F64()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  sub_1DB09DC04();
  v4 = *(v1 + 24);
  v5 = *v1;
  v6 = *(v1 + 8);
  v7 = *(v3 + 28);
  v8 = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EEE0, &qword_1DB0A21E0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1DB0A04E0;
  v10 = MEMORY[0x1E69E63A8];
  *(v9 + 56) = MEMORY[0x1E69E6370];
  *(v9 + 64) = v10;
  *(v9 + 32) = 1;
  sub_1DB09D454();

  sub_1DAF60868(v1);

  v11 = v0[1];
  v13 = v0[8];
  v12 = v0[9];

  return v11(v12, v13);
}

uint64_t sub_1DB0070B0()
{
  v1 = v0[7];
  v2 = v0[5];
  v15 = v0[4];
  v3 = v0[3];
  sub_1DB09DC04();
  v4 = *(v2 + 24);
  v5 = *v2;
  v6 = *(v2 + 8);
  v7 = *(v3 + 28);
  v8 = *(v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EEE0, &qword_1DB0A21E0);
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E6370];
  *(v9 + 16) = xmmword_1DB0A04E0;
  v11 = MEMORY[0x1E69E63A8];
  *(v9 + 56) = v10;
  *(v9 + 64) = v11;
  *(v9 + 32) = 0;
  sub_1DB09D454();

  swift_willThrow();
  sub_1DAF60868(v2);

  v12 = v0[1];
  v13 = v0[7];

  return v12();
}

uint64_t sub_1DB007200(char a1)
{
  *(v2 + 288) = v1;
  *(v2 + 434) = a1;
  *(v2 + 296) = swift_getObjectType();
  v3 = sub_1DB09CBF4();
  *(v2 + 304) = v3;
  v4 = *(v3 - 8);
  *(v2 + 312) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 320) = swift_task_alloc();
  v6 = sub_1DB09CF64();
  *(v2 + 328) = v6;
  v7 = *(v6 - 8);
  *(v2 + 336) = v7;
  v8 = *(v7 + 64) + 15;
  *(v2 + 344) = swift_task_alloc();
  *(v2 + 352) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB007338, 0, 0);
}

uint64_t sub_1DB007338()
{
  *(v0 + 432) = *(*(v0 + 288) + OBJC_IVAR____TtC17CoreODIEssentials29DIPAssessmentStaticWebService_serverRepo);
  v1 = swift_task_alloc();
  *(v0 + 360) = v1;
  *v1 = v0;
  v1[1] = sub_1DB0073E4;
  v2 = *(v0 + 344);

  return sub_1DB0081E4(v2, (v0 + 432));
}

uint64_t sub_1DB0073E4()
{
  v1 = *(*v0 + 360);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DB0074E0, 0, 0);
}

uint64_t sub_1DB0074E0()
{
  v2 = *(v0 + 344);
  v1 = *(v0 + 352);
  v3 = *(v0 + 328);
  v4 = *(v0 + 336);
  v5 = *(v0 + 288);
  sub_1DB09CEF4();
  v6 = *(v4 + 8);
  *(v0 + 368) = v6;
  *(v0 + 376) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v2, v3);
  v7 = objc_allocWithZone(MEMORY[0x1E696AD68]);
  v8 = sub_1DB09CEE4();
  v9 = [v7 initWithURL_];
  *(v0 + 384) = v9;

  [v9 setCachePolicy_];
  v10 = sub_1DB09D6B4();
  [v9 setHTTPMethod_];

  v11 = *(v5 + OBJC_IVAR____TtC17CoreODIEssentials13DIPWebService_httpSession);
  *(v0 + 433) = 1;
  v12 = swift_task_alloc();
  *(v0 + 392) = v12;
  *v12 = v0;
  v12[1] = sub_1DB007664;
  v13 = *(v0 + 434);

  return sub_1DAFAAE8C(v9, v13, 0, (v0 + 433));
}

uint64_t sub_1DB007664(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = *v5;
  v7 = *(*v5 + 392);
  v10 = *v5;
  *(v6 + 400) = a1;
  *(v6 + 408) = a2;
  *(v6 + 435) = a4;
  *(v6 + 416) = a3;
  *(v6 + 424) = v4;

  if (v4)
  {
    v8 = sub_1DB007EC0;
  }

  else
  {
    v8 = sub_1DB007780;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1DB007780()
{
  v72 = v0;
  v1 = *(v0 + 408);
  v2 = v1 >> 62;
  if ((v1 >> 62) > 1)
  {
    if (v2 == 2)
    {
      v3 = *(v0 + 400);
      if (*(v3 + 16) == *(v3 + 24))
      {
        goto LABEL_16;
      }

      goto LABEL_9;
    }

    v3 = *(v0 + 400);
LABEL_16:
    v65 = *(v0 + 416);
    v68 = *(v0 + 384);
    v21 = *(v0 + 352);
    v22 = *(v0 + 328);
    v23 = *(v0 + 336);
    v24 = *(v0 + 288);
    LOBYTE(v71[0]) = 12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E438, &unk_1DB0A0570);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB0A04E0;
    *(inited + 32) = 2;
    *(inited + 64) = v22;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 40));
    (*(v23 + 16))(boxed_opaque_existential_0, v21, v22);
    v27 = sub_1DAF3E280(inited);
    swift_setDeallocating();
    sub_1DAF40AEC(inited + 32, &qword_1ECC0E380, &qword_1DB0A0308);
    v28 = ODIError(_:fromError:code:forceCode:properties:file:function:line:)(0xD00000000000001BLL, 0x80000001DB0C99D0, 0, v71, 0, v27, 0xD00000000000002FLL, 0x80000001DB0C95F0, 0xD00000000000001FLL, 0x80000001DB0C9990, 310);

    sub_1DB0080A4(v28, v24);
    swift_willThrow();

    sub_1DAF40780(v3, v1);
LABEL_17:
    v29 = *(v0 + 376);
    v30 = *(v0 + 344);
    v31 = *(v0 + 320);
    (*(v0 + 368))(*(v0 + 352), *(v0 + 328));

    v32 = *(v0 + 8);

    return v32();
  }

  if (v2)
  {
    v3 = *(v0 + 400);
    if (v3 != v3 >> 32)
    {
      goto LABEL_9;
    }

    goto LABEL_16;
  }

  v3 = *(v0 + 400);
  if ((v1 & 0xFF000000000000) == 0)
  {
    goto LABEL_16;
  }

LABEL_9:
  v4 = *(v0 + 424);
  v5 = sub_1DB09CC24();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  sub_1DB09CC14();
  sub_1DB0089F8();
  sub_1DB09CC04();
  v8 = v4;
  v9 = *(v0 + 435);

  if (v4)
  {
    if (v9)
    {
      if (qword_1EE304378 != -1)
      {
        swift_once();
      }

      [qword_1EE30A1E0 removeCachedResponseForRequest_];
    }

    v10 = *(v0 + 408);
    v11 = *(v0 + 400);
    v64 = *(v0 + 416);
    v67 = *(v0 + 384);
    v12 = *(v0 + 352);
    v13 = *(v0 + 328);
    v14 = *(v0 + 336);
    v15 = *(v0 + 288);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E438, &unk_1DB0A0570);
    v16 = swift_initStackObject();
    *(v16 + 16) = xmmword_1DB0A04E0;
    *(v16 + 32) = 2;
    *(v16 + 64) = v13;
    v17 = __swift_allocate_boxed_opaque_existential_0((v16 + 40));
    (*(v14 + 16))(v17, v12, v13);
    v18 = v8;
    v19 = sub_1DAF3E280(v16);
    swift_setDeallocating();
    sub_1DAF40AEC(v16 + 32, &qword_1ECC0E380, &qword_1DB0A0308);
    LOBYTE(v71[0]) = 0;
    v20 = ODIError(_:fromError:code:forceCode:properties:file:function:line:)(0, 0xE000000000000000, v8, v71, 0, v19, 0xD00000000000002FLL, 0x80000001DB0C95F0, 0xD00000000000001FLL, 0x80000001DB0C9990, 328);

    sub_1DB0080A4(v20, v15);
    swift_willThrow();
    sub_1DAF40780(v11, v10);

    goto LABEL_17;
  }

  v34 = *(v0 + 280);
  v69 = *(v0 + 272);
  if (v9)
  {
    v35 = 0x6568636163;
    v36 = 0xE500000000000000;
  }

  else
  {
    v37 = qword_1EE304378;
    v38 = *(v0 + 416);
    if (v37 == -1)
    {
      v39 = v38;
    }

    else
    {
      swift_once();
      v39 = *(v0 + 416);
    }

    v41 = *(v0 + 400);
    v40 = *(v0 + 408);
    v42 = *(v0 + 384);
    v44 = *(v0 + 312);
    v43 = *(v0 + 320);
    v45 = *(v0 + 304);
    v46 = qword_1EE30A1E0;
    sub_1DB09CBA4();
    v47 = objc_allocWithZone(MEMORY[0x1E696AAF8]);
    v48 = sub_1DB09D004();
    v49 = [v47 initWithResponse:v39 data:v48];

    v50 = sub_1DB09CB84();
    [v46 storeCachedResponse:v49 forRequest:v50];

    (*(v44 + 8))(v43, v45);
    v35 = 0x6B726F7774656ELL;
    v36 = 0xE700000000000000;
  }

  v55 = *(v0 + 400);
  v56 = *(v0 + 408);
  v60 = *(v0 + 384);
  v61 = *(v0 + 368);
  v58 = *(v0 + 416);
  v59 = *(v0 + 352);
  v62 = *(v0 + 376);
  v63 = *(v0 + 344);
  v57 = *(v0 + 328);
  v66 = *(v0 + 320);
  sub_1DAF3523C(*(v0 + 288) + OBJC_IVAR____TtC17CoreODIEssentials13DIPWebService_logger, v0 + 232);
  v51 = *(v0 + 256);
  v52 = *(v0 + 264);
  __swift_project_boxed_opaque_existential_1((v0 + 232), v51);
  v70 = 10;
  sub_1DB09DE44();

  v71[0] = 0xD000000000000011;
  v71[1] = 0x80000001DB0C99B0;
  MEMORY[0x1E127FE90](v35, v36);

  MEMORY[0x1E127FE90](0x20656D697473202ELL, 0xEB00000000736177);
  v53 = *(v52 + 80);

  v53(&v70, 0xD000000000000011, 0x80000001DB0C99B0, v69, v34, 0, v51, v52);

  sub_1DAF40780(v55, v56);

  v61(v59, v57);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 232));

  v54 = *(v0 + 8);

  return v54(v69, v34);
}

uint64_t sub_1DB007EC0()
{
  v18 = v0;
  v1 = *(v0 + 424);
  v2 = *(v0 + 384);
  v3 = *(v0 + 352);
  v4 = *(v0 + 328);
  v5 = *(v0 + 336);
  v6 = *(v0 + 288);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E438, &unk_1DB0A0570);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB0A04E0;
  *(inited + 32) = 2;
  *(inited + 64) = v4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 40));
  (*(v5 + 16))(boxed_opaque_existential_0, v3, v4);
  v9 = v1;
  v10 = sub_1DAF3E280(inited);
  swift_setDeallocating();
  sub_1DAF40AEC(inited + 32, &qword_1ECC0E380, &qword_1DB0A0308);
  v17[0] = 0;
  v11 = ODIError(_:fromError:code:forceCode:properties:file:function:line:)(0, 0xE000000000000000, v1, v17, 0, v10, 0xD00000000000002FLL, 0x80000001DB0C95F0, 0xD00000000000001FLL, 0x80000001DB0C9990, 306);

  sub_1DB0080A4(v11, v6);
  swift_willThrow();

  v12 = *(v0 + 376);
  v13 = *(v0 + 344);
  v14 = *(v0 + 320);
  (*(v0 + 368))(*(v0 + 352), *(v0 + 328));

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1DB0080A4(void *a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E438, &unk_1DB0A0570);
  inited = swift_initStackObject();
  *(inited + 32) = 6;
  *(inited + 16) = xmmword_1DB0A04E0;
  v6 = *(a2 + OBJC_IVAR____TtC17CoreODIEssentials13DIPWebService_conversationID);
  v5 = *(a2 + OBJC_IVAR____TtC17CoreODIEssentials13DIPWebService_conversationID + 8);
  *(inited + 64) = MEMORY[0x1E69E6158];
  *(inited + 40) = v6;
  *(inited + 48) = v5;

  v7 = sub_1DAF3E280(inited);
  swift_setDeallocating();
  sub_1DAF40AEC(inited + 32, &qword_1ECC0E380, &qword_1DB0A0308);
  v10 = 0;
  v8 = ODIError(_:fromError:code:forceCode:properties:file:function:line:)(0x2073747320746567, 0xEE0064656C696166, a1, &v10, 0, v7, 0xD00000000000002FLL, 0x80000001DB0C95F0, 0xD00000000000001FLL, 0x80000001DB0C9990, 294);

  return v8;
}

uint64_t sub_1DB0081E4(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *a2;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  if (v4 > 5)
  {
    if (v4 > 8)
    {
      if (v4 == 9)
      {
        v5[1] = sub_1DAF63DEC;
        v6 = a1;
        v7 = 10;
      }

      else
      {
        v5[1] = sub_1DAF63DEC;
        v6 = a1;
        if (v4 == 10)
        {
          v7 = 11;
        }

        else
        {
          v7 = 12;
        }
      }
    }

    else if (v4 == 6)
    {
      v5[1] = sub_1DAF63DEC;
      v6 = a1;
      v7 = 7;
    }

    else
    {
      v5[1] = sub_1DAF63DEC;
      v6 = a1;
      if (v4 == 7)
      {
        v7 = 8;
      }

      else
      {
        v7 = 9;
      }
    }
  }

  else if (v4 > 2)
  {
    if (v4 == 3)
    {
      v5[1] = sub_1DAF63DEC;
      v6 = a1;
      v7 = 5;
    }

    else
    {
      v5[1] = sub_1DAF63DEC;
      v6 = a1;
      if (v4 == 4)
      {
        v7 = 6;
      }

      else
      {
        v7 = 1;
      }
    }
  }

  else if (v4)
  {
    v5[1] = sub_1DAF63DEC;
    v6 = a1;
    if (v4 == 1)
    {
      v7 = 2;
    }

    else
    {
      v7 = 3;
    }
  }

  else
  {
    v5[1] = sub_1DAF62CC4;
    v6 = a1;
    v7 = 4;
  }

  return sub_1DAF7885C(v6, v7, 0xD00000000000001BLL, 0x80000001DB0C9950);
}

unint64_t sub_1DB0084E8()
{
  result = qword_1ECC0F3C8;
  if (!qword_1ECC0F3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F3C8);
  }

  return result;
}

unint64_t sub_1DB00853C()
{
  result = qword_1EE301838;
  if (!qword_1EE301838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE301838);
  }

  return result;
}

unint64_t sub_1DB008590()
{
  result = qword_1ECC0F3D8;
  if (!qword_1ECC0F3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F3D8);
  }

  return result;
}

unint64_t sub_1DB0085E4()
{
  result = qword_1EE3014B8;
  if (!qword_1EE3014B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE3014B8);
  }

  return result;
}

uint64_t *__swift_deallocate_boxed_opaque_existential_1(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80));
    JUMPOUT(0x1E1281810);
  }

  return result;
}

uint64_t sub_1DB0086DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = v1[10];
  v8 = v1[11];
  v9 = v1[12];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1DAF62CC4;

  return sub_1DAFA5BB4(a1, v4, v5, (v1 + 4), v6, v7, v8, v9);
}

uint64_t sub_1DB0087B4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DAF63DEC;

  return sub_1DB00432C(a1, v4, v1 + 24);
}

unint64_t sub_1DB0088D4()
{
  result = qword_1EE302918;
  if (!qword_1EE302918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE302918);
  }

  return result;
}

uint64_t sub_1DB008928(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DAF63DEC;

  return sub_1DB0069C8(a1);
}

unint64_t sub_1DB0089F8()
{
  result = qword_1EE303410;
  if (!qword_1EE303410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE303410);
  }

  return result;
}

uint64_t sub_1DB008A68(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1DB008AB0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t ODISignpost.init(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = a1[3];
  v6 = *(a1 + 32);
  *(a2 + 32) = "enableTelemetry=YES";
  *(a2 + 40) = 19;
  *(a2 + 48) = 2;
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  v7 = *(type metadata accessor for ODISignpost() + 28);
  v5;
  sub_1DB09D474();
  sub_1DB09DC14();
  if (v6 == 1)
  {
    return sub_1DB09D454();
  }

  return sub_1DB09D464();
}

uint64_t type metadata accessor for ODISignpost()
{
  result = qword_1EE304348;
  if (!qword_1EE304348)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::Void __swiftcall ODISignpost.end(workflowID:isBackground:)(Swift::String_optional workflowID, Swift::Bool_optional isBackground)
{
  if (workflowID.value._object)
  {
    object = workflowID.value._object;
    countAndFlagsBits = workflowID.value._countAndFlagsBits;
    value = isBackground.value;

    sub_1DB09DC04();
    v19 = v2[3];
    v7 = *v2;
    v8 = v2[1];
    v9 = *(v2 + 16);
    v10 = *(type metadata accessor for ODISignpost() + 28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EEE0, &qword_1DB0A21E0);
    if (value == 2)
    {
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_1DB0A04E0;
      *(v11 + 56) = MEMORY[0x1E69E6158];
      *(v11 + 64) = sub_1DAF4DC24();
      *(v11 + 32) = countAndFlagsBits;
      *(v11 + 40) = object;
    }

    else
    {
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1DB0A0500;
      *(v17 + 56) = MEMORY[0x1E69E6158];
      *(v17 + 64) = sub_1DAF4DC24();
      *(v17 + 32) = countAndFlagsBits;
      *(v17 + 40) = object;
      v18 = MEMORY[0x1E69E63A8];
      *(v17 + 96) = MEMORY[0x1E69E6370];
      *(v17 + 104) = v18;
      *(v17 + 72) = isBackground.value;
    }

    sub_1DB09D454();
  }

  else
  {
    sub_1DB09DC04();
    v12 = v2[3];
    v13 = *v2;
    v14 = v2[1];
    v15 = *(v2 + 16);
    v16 = v2 + *(type metadata accessor for ODISignpost() + 28);

    sub_1DB09D464();
  }
}

Swift::Void __swiftcall ODISignpost.end(success:customResultString:)(Swift::Bool success, Swift::String_optional customResultString)
{
  if (customResultString.value._object)
  {
    countAndFlagsBits = customResultString.value._countAndFlagsBits;
    object = customResultString.value._object;

    sub_1DB09DC04();
    v19 = v2[3];
    v6 = *v2;
    v7 = v2[1];
    v8 = *(v2 + 16);
    v9 = *(type metadata accessor for ODISignpost() + 28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EEE0, &qword_1DB0A21E0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1DB0A0500;
    v11 = MEMORY[0x1E69E63A8];
    *(v10 + 56) = MEMORY[0x1E69E6370];
    *(v10 + 64) = v11;
    *(v10 + 32) = success;
    *(v10 + 96) = MEMORY[0x1E69E6158];
    *(v10 + 104) = sub_1DAF4DC24();
    *(v10 + 72) = countAndFlagsBits;
    *(v10 + 80) = object;
  }

  else
  {
    sub_1DB09DC04();
    v12 = v2[3];
    v13 = *v2;
    v14 = v2[1];
    v15 = *(v2 + 16);
    v16 = *(type metadata accessor for ODISignpost() + 28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EEE0, &qword_1DB0A21E0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1DB0A04E0;
    v18 = MEMORY[0x1E69E63A8];
    *(v17 + 56) = MEMORY[0x1E69E6370];
    *(v17 + 64) = v18;
    *(v17 + 32) = success;
  }

  sub_1DB09D454();
}

uint64_t ODISignpost.Config.init(name:log:sendTelemetry:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

unint64_t sub_1DB0090D0()
{
  result = sub_1DAFFE4A8();
  if (v1 <= 0x3F)
  {
    result = sub_1DB09D484();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1DB009178(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_1DB0091C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DB009214(uint64_t a1)
{
  v1 = MEMORY[0x1E69E7CC0];
  v51 = MEMORY[0x1E69E7CC0];
  v2 = *(a1 + 16);
  if (v2)
  {
    allocator = *MEMORY[0x1E695E480];
    v4 = sub_1DAF9C5EC();
    v5 = (a1 + 40);
    v6 = MEMORY[0x1E69E6158];
    while (1)
    {
      v7 = *v5;
      *&v47 = *(v5 - 1);
      *(&v47 + 1) = v7;
      *&v46[0] = 10;
      *(&v46[0] + 1) = 0xE100000000000000;
      v49 = 0;
      v50 = 0xE000000000000000;
      v43 = v4;
      v44 = v4;
      v41 = v6;
      v42 = v4;
      sub_1DB09DCA4();
      v8 = sub_1DB09CFA4();
      v10 = v9;

      if (v10 >> 60 == 15)
      {
        break;
      }

      v11 = sub_1DB09D004();
      v12 = SecCertificateCreateWithData(allocator, v11);

      if (!v12)
      {
        if (qword_1EE300B90 != -1)
        {
          swift_once();
        }

        v29 = MEMORY[0x1E69E7CC0];
        v30 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
        if (*(v30 + 16))
        {
          v31 = sub_1DAF35210(0x636F766E49504944, 0xEE00736E6F697461);
          if ((v32 & 1) != 0 && (sub_1DAF409DC(*(v30 + 56) + 32 * v31, &v47), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0), swift_dynamicCast()))
          {
            v29 = *&v46[0];
          }

          else
          {
            v29 = MEMORY[0x1E69E7CC0];
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = sub_1DAF72FF4(0, *(v29 + 2) + 1, 1, v29);
        }

        v34 = *(v29 + 2);
        v33 = *(v29 + 3);
        if (v34 >= v33 >> 1)
        {
          v29 = sub_1DAF72FF4((v33 > 1), v34 + 1, 1, v29);
        }

        *(v29 + 2) = v34 + 1;
        v35 = &v29[56 * v34];
        *(v35 + 4) = 0xD00000000000002ALL;
        *(v35 + 5) = 0x80000001DB0C9B50;
        *(v35 + 6) = 0xD000000000000025;
        *(v35 + 7) = 0x80000001DB0C9B80;
        *(v35 + 8) = 0xD000000000000021;
        *(v35 + 9) = 0x80000001DB0C9C00;
        *(v35 + 10) = 134;
        v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
        *&v47 = v29;
        sub_1DAF40D20(&v47, v46);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v49 = v30;
        sub_1DAF3B11C(v46, 0x636F766E49504944, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
        v37 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
        v38 = sub_1DB09D6B4();
        v39 = sub_1DB09D604();
        [v37 initWithDomain:v38 code:-3102 userInfo:{v39, v6, v42, v43, v44}];

        swift_willThrow();
        sub_1DAF4AC40(v8, v10);
        goto LABEL_32;
      }

      sub_1DAF4AC40(v8, v10);
      v13 = v12;
      MEMORY[0x1E127FFD0](v13, v14, v15, v16);
      if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v17 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1DB09D954();
      }

      sub_1DB09D974();

      v1 = v51;
      v5 += 2;
      if (!--v2)
      {
        return v1;
      }
    }

    if (qword_1EE300B90 != -1)
    {
      swift_once();
    }

    v18 = MEMORY[0x1E69E7CC0];
    v19 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    if (*(v19 + 16))
    {
      v20 = sub_1DAF35210(0x636F766E49504944, 0xEE00736E6F697461);
      if (v21)
      {
        sub_1DAF409DC(*(v19 + 56) + 32 * v20, &v47);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
        if (swift_dynamicCast())
        {
          v18 = *&v46[0];
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = sub_1DAF72FF4(0, *(v18 + 2) + 1, 1, v18);
    }

    v23 = *(v18 + 2);
    v22 = *(v18 + 3);
    if (v23 >= v22 >> 1)
    {
      v18 = sub_1DAF72FF4((v22 > 1), v23 + 1, 1, v18);
    }

    *(v18 + 2) = v23 + 1;
    v24 = &v18[56 * v23];
    *(v24 + 4) = 0xD000000000000022;
    *(v24 + 5) = 0x80000001DB0C9BD0;
    *(v24 + 6) = 0xD000000000000025;
    *(v24 + 7) = 0x80000001DB0C9B80;
    *(v24 + 8) = 0xD000000000000021;
    *(v24 + 9) = 0x80000001DB0C9C00;
    *(v24 + 10) = 131;
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
    *&v47 = v18;
    sub_1DAF40D20(&v47, v46);
    v25 = swift_isUniquelyReferenced_nonNull_native();
    v49 = v19;
    sub_1DAF3B11C(v46, 0x636F766E49504944, 0xEE00736E6F697461, v25);
    v26 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v27 = sub_1DB09D6B4();
    v28 = sub_1DB09D604();
    [v26 initWithDomain:v27 code:-1305 userInfo:{v28, v41, v4, v4, v4}];

    swift_willThrow();
LABEL_32:
  }

  return v1;
}

uint64_t sub_1DB0098D8()
{
  v1 = *(v0 + 16);
  BytePtr = CFDataGetBytePtr(v1);
  Length = CFDataGetLength(v1);
  memset_s(BytePtr, Length, 0, Length);
  munlock(BytePtr, Length);

  return swift_deallocClassInstance();
}

uint64_t sub_1DB00997C()
{
  error[1] = *MEMORY[0x1E69E9840];
  error[0] = 0;
  v1 = SecKeyCopyPublicKey(v0);
  if (v1)
  {
    v2 = v1;
    v3 = SecKeyCopyExternalRepresentation(v1, error);
    if (v3)
    {
      v4 = v3;
      v5 = sub_1DB09D034();
      v7 = v6;

      v8 = error[0];
      if (!error[0])
      {
        goto LABEL_10;
      }
    }

    else
    {
      v5 = 0;
      v7 = 0xF000000000000000;
      v8 = error[0];
      if (!error[0])
      {
LABEL_10:

        goto LABEL_11;
      }
    }

    v12 = 0;
    v9 = sub_1DAFCF218(v8, 0xD00000000000001DLL, 0x80000001DB0C9B30, &v12);
    if (qword_1EE301DE8 != -1)
    {
      swift_once();
    }

    sub_1DAF4B4C0(v9, 0, 0xE000000000000000);

    sub_1DAF4AC40(v5, v7);
    v5 = 0;
    goto LABEL_10;
  }

  v5 = 0;
LABEL_11:
  v10 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t sub_1DB009AC8(void *a1)
{
  v1 = MEMORY[0x1E69E7CC0];
  v29 = MEMORY[0x1E69E7CC0];
  v2 = a1[2];
  if (v2)
  {
    v4 = *MEMORY[0x1E695E480];
    v5 = a1[4];
    v6 = a1[5];
    sub_1DAF40674(v5, v6);
    v7 = sub_1DB09D004();
    v8 = SecCertificateCreateWithData(v4, v7);

    if (v8)
    {
      v9 = a1 + 7;
      while (1)
      {
        v10 = v8;
        MEMORY[0x1E127FFD0]();
        if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v13 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1DB09D954();
        }

        sub_1DB09D974();
        sub_1DAF40780(v5, v6);

        v1 = v29;
        if (!--v2)
        {
          break;
        }

        v11 = v9 + 2;
        v5 = *(v9 - 1);
        v6 = *v9;
        sub_1DAF40674(v5, *v9);
        v12 = sub_1DB09D004();
        v8 = SecCertificateCreateWithData(v4, v12);

        v9 = v11;
        if (!v8)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      v1 = MEMORY[0x1E69E7CC0];
LABEL_10:
      if (qword_1EE300B90 != -1)
      {
        swift_once();
      }

      v14 = MEMORY[0x1E69E7CC0];
      v15 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
      if (*(v15 + 16))
      {
        v16 = sub_1DAF35210(0x636F766E49504944, 0xEE00736E6F697461);
        if ((v17 & 1) != 0 && (sub_1DAF409DC(*(v15 + 56) + 32 * v16, &v27), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0), swift_dynamicCast()))
        {
          v14 = *&v26[0];
        }

        else
        {
          v14 = MEMORY[0x1E69E7CC0];
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_1DAF72FF4(0, *(v14 + 2) + 1, 1, v14);
      }

      v19 = *(v14 + 2);
      v18 = *(v14 + 3);
      if (v19 >= v18 >> 1)
      {
        v14 = sub_1DAF72FF4((v18 > 1), v19 + 1, 1, v14);
      }

      *(v14 + 2) = v19 + 1;
      v20 = &v14[56 * v19];
      *(v20 + 4) = 0xD00000000000002ALL;
      *(v20 + 5) = 0x80000001DB0C9B50;
      *(v20 + 6) = 0xD000000000000025;
      *(v20 + 7) = 0x80000001DB0C9B80;
      *(v20 + 8) = 0xD00000000000001BLL;
      *(v20 + 9) = 0x80000001DB0C9BB0;
      *(v20 + 10) = 142;
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
      *&v27 = v14;
      sub_1DAF40D20(&v27, v26);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1DAF3B11C(v26, 0x636F766E49504944, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
      v22 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v23 = sub_1DB09D6B4();
      v24 = sub_1DB09D604();
      [v22 initWithDomain:v23 code:-3102 userInfo:v24];

      swift_willThrow();
      sub_1DAF40780(v5, v6);
    }
  }

  return v1;
}

uint64_t sub_1DB009EDC()
{
  v1 = SecCertificateCopyKey(v0);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  result = sub_1DB00997C();
  v5 = result;
  v6 = v4;
  if (v4 >> 60 == 15)
  {

    return v5;
  }

  v7 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_18;
    }

    v9 = *(result + 16);
    v8 = *(result + 24);
    v10 = __OFSUB__(v8, v9);
    v11 = v8 - v9;
    if (!v10)
    {
      if (v11 == 65)
      {
        goto LABEL_11;
      }

      goto LABEL_18;
    }

    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v7)
  {
    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result == 65)
      {
        goto LABEL_11;
      }

LABEL_18:

      sub_1DAF4AC40(v5, v6);
      return 0;
    }

    goto LABEL_29;
  }

  if (BYTE6(v4) != 65)
  {
    goto LABEL_18;
  }

LABEL_11:
  result = sub_1DB09CFF4();
  if (result != 4)
  {
    sub_1DAF4AC40(v5, v6);

    return 0;
  }

  if (v7 != 2)
  {
    if (v7 == 1)
    {
      if (!__OFSUB__(HIDWORD(v5), v5))
      {
        v12 = HIDWORD(v5) - v5;
        goto LABEL_26;
      }

LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    goto LABEL_25;
  }

  v14 = *(v5 + 16);
  v13 = *(v5 + 24);
  v12 = v13 - v14;
  if (__OFSUB__(v13, v14))
  {
    __break(1u);
LABEL_25:
    v12 = BYTE6(v6);
  }

LABEL_26:
  if (v12 >= 1)
  {
    v15 = sub_1DB09D064();
    sub_1DAF4AC40(v5, v6);

    return v15;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1DB00A064()
{
  v0 = sub_1DB09E004();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DB00A0B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6180];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1DB00A128(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t sub_1DB00A194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1DB00A204(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1DB00A2A4(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  return sub_1DAF1E774(*v1);
}

uint64_t sub_1DB00A2B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  result = sub_1DB00A0B0(a1, a2, a3[2], a3[3], a3[4]);
  *a4 = result;
  return result;
}

uint64_t sub_1DB00A2E8@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  result = sub_1DB0132D4();
  *a2 = result;
  return result;
}

uint64_t sub_1DB00A31C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1DB00A370(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t JWSSignedJSON.JWSType.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1DB09E004();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1DB00A438(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6180];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1DB00A4AC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t sub_1DB00A518(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1DB00A588(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1DB00A5F8@<X0>(BOOL *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return JWSSignedJSON.JWSType.init(rawValue:)(a1);
}

uint64_t JWSSignedJSON.JWSContentType.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1DB09E004();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1DB00A770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6180];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1DB00A7E4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t sub_1DB00A850(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1DB00A8C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1DB00A930@<X0>(BOOL *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return JWSSignedJSON.JWSContentType.init(rawValue:)(a1);
}

uint64_t JWSSignedJSON.JWSCritical.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1DB09E004();

  v4 = 3;
  if (v2 < 3)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t JWSSignedJSON.JWSCritical.rawValue.getter()
{
  v1 = 0x64657461657263;
  if (*v0 != 1)
  {
    v1 = 1953259891;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65636E6F6ELL;
  }
}

uint64_t sub_1DB00AAE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6180];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1DB00AB54(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t sub_1DB00ABC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1DB00AC30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1DB00ACA0@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return JWSSignedJSON.JWSCritical.init(rawValue:)(a1);
}

uint64_t sub_1DB00ACAC@<X0>(uint64_t *a1@<X8>)
{
  result = JWSSignedJSON.JWSCritical.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DB00ADAC()
{
  v0 = sub_1DB09E004();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DB00ADFC(unsigned __int8 a1)
{
  v1 = 6777953;
  v2 = 0x64657461657263;
  if (a1 != 6)
  {
    v2 = 1953259891;
  }

  v3 = 1953067619;
  if (a1 != 4)
  {
    v3 = 0x65636E6F6ELL;
  }

  if (a1 <= 5u)
  {
    v2 = v3;
  }

  v4 = 7371124;
  if (a1 != 2)
  {
    v4 = 7959651;
  }

  if (a1)
  {
    v1 = 6580587;
  }

  if (a1 > 1u)
  {
    v1 = v4;
  }

  if (a1 <= 3u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DB00AEC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6180];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1DB00AF34(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t sub_1DB00AFA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1DB00B010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1DB00B098@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t (*a3)(void, void, void, void, void)@<X3>, _BYTE *a4@<X8>)
{
  result = a3(*a1, a1[1], a2[2], a2[3], a2[4]);
  *a4 = result;
  return result;
}

uint64_t sub_1DB00B0F4@<X0>(void *a1@<X0>, uint64_t (*a2)(void, void, void, void)@<X2>, uint64_t *a3@<X8>)
{
  result = a2(*v3, a1[2], a1[3], a1[4]);
  *a3 = result;
  a3[1] = v6;
  return result;
}

uint64_t sub_1DB00B130(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  return sub_1DB00AEBC(*v1);
}

uint64_t sub_1DB00B140@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  result = sub_1DB00ADF8(a1, a2, a3[2], a3[3], a3[4]);
  *a4 = result;
  return result;
}

uint64_t sub_1DB00B174@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  result = sub_1DB0132DC();
  *a2 = result;
  return result;
}

uint64_t sub_1DB00B1A8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1DB00B1FC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1DB00B250()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[9];

  JWSSignedJSON.JWSCritical.init(rawValue:)(&v8);
  if (v8 > 1u)
  {
    if (v8 != 2)
    {
      return 0;
    }
  }

  else if (v8)
  {
    v5 = v3;
  }

  else
  {
    v5 = v1;
  }

  return v5;
}

uint64_t JWSSignedJSON.DIPJWSProtectedHeader.encode(to:)(void *a1, void *a2)
{
  v4 = a2[2];
  v5 = a2[4];
  v27 = a2[3];
  v28 = v4;
  v26 = v5;
  type metadata accessor for JWSSignedJSON.DIPJWSProtectedHeader.CodingKeys();
  swift_getWitnessTable();
  v6 = sub_1DB09E1A4();
  v29 = *(v6 - 8);
  v7 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v22 - v9;
  v11 = *v2;
  v12 = *(v2 + 1);
  v24 = *(v2 + 2);
  v25 = v12;
  v13 = *(v2 + 3);
  v14 = *(v2 + 4);
  v15 = *(v2 + 6);
  v22[6] = *(v2 + 5);
  v23 = v13;
  v22[3] = v15;
  v16 = *(v2 + 8);
  v22[4] = *(v2 + 7);
  v22[5] = v14;
  v17 = *(v2 + 9);
  v22[1] = v16;
  v22[2] = v17;
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB09E434();
  LOBYTE(v31) = v11;
  v32 = 0;
  sub_1DB00B6C8();
  v19 = v30;
  sub_1DB09E194();
  if (v19)
  {
    return (*(v29 + 8))(v10, v6);
  }

  v21 = v29;
  LOBYTE(v31) = 1;
  sub_1DB09E104();
  LOBYTE(v31) = 2;
  type metadata accessor for JWSSignedJSON.JWSType();
  swift_getWitnessTable();
  sub_1DB09E194();
  LOBYTE(v31) = 3;
  type metadata accessor for JWSSignedJSON.JWSContentType();
  swift_getWitnessTable();
  sub_1DB09E194();
  v31 = v23;
  v32 = 4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E448, &qword_1DB0A3110);
  sub_1DAF673C8(&qword_1EE301938);
  sub_1DB09E144();
  LOBYTE(v31) = 5;
  sub_1DB09E104();
  LOBYTE(v31) = 6;
  sub_1DB09E104();
  LOBYTE(v31) = 7;
  sub_1DB09E104();
  return (*(v21 + 8))(v10, v6);
}

unint64_t sub_1DB00B6C8()
{
  result = qword_1ECC0F3F8[0];
  if (!qword_1ECC0F3F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC0F3F8);
  }

  return result;
}

uint64_t JWSSignedJSON.DIPJWSProtectedHeader.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, _OWORD *a4@<X8>)
{
  v48 = a4;
  type metadata accessor for JWSSignedJSON.DIPJWSProtectedHeader.CodingKeys();
  swift_getWitnessTable();
  v50 = sub_1DB09E0E4();
  v49 = *(v50 - 8);
  v7 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v50, v8);
  v10 = &v41 - v9;
  v11 = a1[3];
  v12 = a1[4];
  v61 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  v51 = v10;
  v13 = v52;
  sub_1DB09E414();
  if (v13)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v61);
  }

  else
  {
    v14 = v49;
    v47 = a2;
    v52 = a3;
    LOBYTE(v53) = 0;
    sub_1DB00BD98();
    v15 = v50;
    sub_1DB09E0C4();
    v16 = LOBYTE(v58[0]);
    LOBYTE(v58[0]) = 1;
    v45 = sub_1DB09E044();
    v44 = v16;
    v46 = v17;
    type metadata accessor for JWSSignedJSON.JWSType();
    LOBYTE(v58[0]) = 2;
    swift_getWitnessTable();
    sub_1DB09E0C4();
    type metadata accessor for JWSSignedJSON.JWSContentType();
    LOBYTE(v58[0]) = 3;
    swift_getWitnessTable();
    sub_1DB09E0C4();
    v18 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E448, &qword_1DB0A3110);
    LOBYTE(v53) = 4;
    sub_1DAF673C8(&qword_1EE301928);
    sub_1DB09E074();
    v19 = v58[0];
    LOBYTE(v58[0]) = 5;
    v20 = sub_1DB09E044();
    v22 = v21;
    LOBYTE(v58[0]) = 6;
    v23 = sub_1DB09E044();
    v25 = v24;
    v43 = v23;
    v59 = 7;
    v26 = sub_1DB09E044();
    v27 = *(v18 + 8);
    v28 = v26;
    v42 = v26;
    v29 = v15;
    v31 = v30;
    v27(v51, v29);
    LOBYTE(v18) = v44;
    LOBYTE(v53) = v44;
    DWORD1(v53) = *&v60[3];
    *(&v53 + 1) = *v60;
    v32 = v20;
    v41 = v20;
    v33 = v46;
    *(&v53 + 1) = v45;
    *&v54 = v46;
    *(&v54 + 1) = v19;
    *&v55 = v32;
    *(&v55 + 1) = v22;
    *&v56 = v43;
    *(&v56 + 1) = v25;
    *&v57 = v28;
    *(&v57 + 1) = v31;
    v34 = v55;
    v35 = v57;
    v36 = v48;
    v48[3] = v56;
    v36[4] = v35;
    v37 = v53;
    v36[1] = v54;
    v36[2] = v34;
    *v36 = v37;
    v38 = type metadata accessor for JWSSignedJSON.DIPJWSProtectedHeader();
    v39 = *(v38 - 8);
    (*(v39 + 16))(v58, &v53, v38);
    __swift_destroy_boxed_opaque_existential_1Tm(v61);
    LOBYTE(v58[0]) = v18;
    *(v58 + 1) = *v60;
    HIDWORD(v58[0]) = *&v60[3];
    v58[1] = v45;
    v58[2] = v33;
    v58[3] = v19;
    v58[4] = v41;
    v58[5] = v22;
    v58[6] = v43;
    v58[7] = v25;
    v58[8] = v42;
    v58[9] = v31;
    return (*(v39 + 8))(v58, v38);
  }
}

unint64_t sub_1DB00BD98()
{
  result = qword_1EE304128;
  if (!qword_1EE304128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE304128);
  }

  return result;
}

uint64_t sub_1DB00BE40()
{
  sub_1DB0132E4();
}

uint64_t sub_1DB00BE68(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t sub_1DB00BF00()
{
  v0 = sub_1DB013318();

  return v0;
}

uint64_t sub_1DB00BF38(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32);
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
}

uint64_t sub_1DB00BFDC()
{
  v0 = sub_1DB09E004();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DB00C030(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6180];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1DB00C0A4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t sub_1DB00C110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1DB00C180(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1DB00C1F0@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  result = sub_1DB00BFDC();
  *a3 = result;
  return result;
}

uint64_t sub_1DB00C22C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  result = sub_1DAF1E7F8(*v2);
  *a2 = result;
  a2[1] = v8;
  return result;
}

uint64_t sub_1DB00C264(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  return sub_1DAF1E7F8(*v1);
}

uint64_t sub_1DB00C278@<X0>(void *a1@<X2>, _BYTE *a2@<X8>)
{
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  result = sub_1DB00BFDC();
  *a2 = result;
  return result;
}

uint64_t sub_1DB00C2AC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1DB00C300(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

void *JWSSignedJSON.DIPJWSUnprotectedHeader.__allocating_init()()
{
  result = swift_allocObject();
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

void *JWSSignedJSON.DIPJWSUnprotectedHeader.init()()
{
  result = v0;
  v0[2] = 0;
  v0[3] = 0;
  v0[4] = 0;
  return result;
}

uint64_t JWSSignedJSON.DIPJWSUnprotectedHeader.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t JWSSignedJSON.DIPJWSUnprotectedHeader.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_1DB00C3F8(void *a1)
{
  v2 = v1;
  v4 = *(*v2 + 80);
  v5 = *(*v2 + 88);
  v6 = *(*v2 + 96);
  type metadata accessor for JWSSignedJSON.DIPJWSUnprotectedHeader.CodingKeys();
  swift_getWitnessTable();
  v7 = sub_1DB09E1A4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = v18 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB09E434();
  swift_beginAccess();
  v18[5] = v2[2];
  v19 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E448, &qword_1DB0A3110);
  sub_1DAF673C8(&qword_1EE301938);
  v14 = v18[1];
  sub_1DB09E144();
  if (v14)
  {
    return (*(v8 + 8))(v12, v7);
  }

  swift_beginAccess();
  v16 = v2[3];
  v17 = v2[4];
  v19 = 1;

  sub_1DB09E104();
  (*(v8 + 8))(v12, v7);
}

uint64_t JWSSignedJSON.DIPJWSUnprotectedHeader.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  JWSSignedJSON.DIPJWSUnprotectedHeader.init(from:)(a1);
  return v2;
}

void *JWSSignedJSON.DIPJWSUnprotectedHeader.init(from:)(uint64_t *a1)
{
  v2 = v1;
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 96);
  type metadata accessor for JWSSignedJSON.DIPJWSUnprotectedHeader.CodingKeys();
  swift_getWitnessTable();
  v7 = sub_1DB09E0E4();
  v26 = *(v7 - 8);
  v27 = v7;
  v8 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v25 - v10;
  v1[2] = 0;
  v12 = v1 + 2;
  v1[3] = 0;
  v1[4] = 0;
  v14 = a1[3];
  v13 = a1[4];
  v31 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  v15 = v28;
  sub_1DB09E414();
  if (v15)
  {
  }

  else
  {
    v28 = v1 + 3;
    v16 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E448, &qword_1DB0A3110);
    v30 = 0;
    sub_1DAF673C8(&qword_1EE301928);
    v17 = v27;
    sub_1DB09E074();
    v18 = v29;
    swift_beginAccess();
    v19 = *v12;
    *v12 = v18;

    LOBYTE(v29) = 1;
    v20 = sub_1DB09E044();
    v22 = v21;
    (*(v16 + 8))(v11, v17);
    swift_beginAccess();
    v23 = v2[4];
    v2[3] = v20;
    v2[4] = v22;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v31);
  return v2;
}

uint64_t sub_1DB00C9BC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = JWSSignedJSON.DIPJWSUnprotectedHeader.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t JWSSignedJSON.unprotectedHeader.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 64);
}

uint64_t JWSSignedJSON.unprotectedHeader.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 64);
  *(v1 + 64) = a1;
}

uint64_t JWSSignedJSON.protectedHeader.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v1 + 88);
  v5 = *(v1 + 120);
  v15 = *(v1 + 104);
  v16 = v5;
  v17 = *(v1 + 136);
  v6 = v17;
  v14[0] = *(v1 + 72);
  v7 = v14[0];
  v14[1] = v4;
  a1[2] = v15;
  a1[3] = v5;
  a1[4] = v6;
  *a1 = v7;
  a1[1] = v4;
  v8 = v3[10];
  v9 = v3[11];
  v10 = v3[12];
  v11 = type metadata accessor for JWSSignedJSON.DIPJWSProtectedHeader();
  return (*(*(v11 - 8) + 16))(v13, v14, v11);
}

uint64_t JWSSignedJSON.protectedHeader.setter(__int128 *a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v1 + 88);
  v5 = *(v1 + 120);
  v13[2] = *(v1 + 104);
  v13[3] = v5;
  v13[4] = *(v1 + 136);
  v13[0] = *(v1 + 72);
  v13[1] = v4;
  v6 = *a1;
  *(v1 + 88) = a1[1];
  v7 = a1[3];
  *(v1 + 104) = a1[2];
  *(v1 + 120) = v7;
  *(v1 + 136) = a1[4];
  *(v1 + 72) = v6;
  v8 = v3[10];
  v9 = v3[11];
  v10 = v3[12];
  v11 = type metadata accessor for JWSSignedJSON.DIPJWSProtectedHeader();
  return (*(*(v11 - 8) + 8))(v13, v11);
}

uint64_t *JWSSignedJSON.__allocating_init(payload:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 48);
  v5 = *(v1 + 52);
  swift_allocObject();
  v6 = sub_1DB013364(a1);
  (*(*(*(v2 + 80) - 8) + 8))(a1);
  return v6;
}

uint64_t *JWSSignedJSON.init(payload:)(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_1DB013364(a1);
  (*(*(*(v3 + 80) - 8) + 8))(a1);
  return v4;
}

char *JWSSignedJSON.__allocating_init(_:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  v5 = sub_1DB013490(a1);

  return v5;
}

char *JWSSignedJSON.init(_:)(uint64_t a1)
{
  v1 = sub_1DB013490(a1);

  return v1;
}

uint64_t JWSSignedJSON.__allocating_init(from:)(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  JWSSignedJSON.init(from:)(a1);
  return v5;
}

char *JWSSignedJSON.init(from:)(uint64_t *a1)
{
  v253 = *v1;
  v3 = v253;
  v275 = sub_1DB09DEA4();
  v252 = *(v275 - 8);
  v4 = *(v252 + 8);
  v6 = MEMORY[0x1EEE9AC00](v275, v5);
  v251 = &v240 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v250 = &v240 - v10;
  v11 = v3[10];
  v245 = *(v11 - 8);
  v12 = *(v245 + 64);
  MEMORY[0x1EEE9AC00](v9, v13);
  v15 = &v240 - v14;
  v16 = v3[11];
  v256 = v1;
  v247 = v3[12];
  v248 = v16;
  type metadata accessor for JWSSignedJSON.CodingKeys();
  swift_getWitnessTable();
  v249 = sub_1DB09E0E4();
  v246 = *(v249 - 8);
  v17 = *(v246 + 64);
  MEMORY[0x1EEE9AC00](v249, v18);
  v20 = &v240 - v19;
  v22 = a1[3];
  v21 = a1[4];
  v254 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  v23 = v20;
  v24 = v255;
  sub_1DB09E414();
  if (v24)
  {
    LODWORD(v248) = 0;
    LODWORD(v249) = 0;
    LODWORD(v255) = 0;
    *&v264[0] = v24;
    v26 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0ECF0, &unk_1DB0A1310);
    v27 = v250;
    v28 = v275;
    if (swift_dynamicCast())
    {

      v30 = v251;
      v29 = v252;
      (*(v252 + 4))(v251, v27, v28);
      v31 = swift_allocError();
      (*(v29 + 2))(v32, v30, v28);
      if (qword_1EE300B90 != -1)
      {
        swift_once();
      }

      v33 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
      v34 = v31;
      v35 = sub_1DB09CE64();
      v36 = [v35 domain];
      v37 = sub_1DB09D6C4();
      v39 = v38;

      if (v37 == 0x726F727245504944 && v39 == 0xE800000000000000)
      {
        goto LABEL_8;
      }

      v78 = sub_1DB09E254();

      if (v78)
      {
        goto LABEL_38;
      }

      v102 = [v35 domain];
      v103 = sub_1DB09D6C4();
      v105 = v104;

      if (v103 == 0x726F72724549444FLL && v105 == 0xE800000000000000)
      {
LABEL_8:
      }

      else
      {
        v106 = sub_1DB09E254();

        if ((v106 & 1) == 0)
        {
          v107 = *MEMORY[0x1E696AA08];
          v108 = sub_1DB09D6C4();
          v110 = v109;
          *(&v271 + 1) = sub_1DAF4D7A4();
          *&v270 = v35;
          sub_1DAF40D20(&v270, &v265);
          v111 = v35;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v259 = v33;
          sub_1DAF3B11C(&v265, v108, v110, isUniquelyReferenced_nonNull_native);

          v81 = v259;
          v79 = 86;
          goto LABEL_42;
        }
      }

LABEL_38:
      DIPErrorCode.init(rawValue:)([v35 code]);
      if (v270 == 462)
      {
        LOWORD(v79) = 86;
      }

      else
      {
        LOWORD(v79) = v270;
      }

      v80 = [v35 userInfo];
      v81 = sub_1DB09D624();

      v79 = v79;
LABEL_42:
      if (*(v81 + 16) && (v82 = sub_1DAF35210(0x636F766E49504944, 0xEE00736E6F697461), (v83 & 1) != 0) && (sub_1DAF409DC(*(v81 + 56) + 32 * v82, &v270), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0), swift_dynamicCast()))
      {
        v84 = v265;
      }

      else
      {
        v84 = MEMORY[0x1E69E7CC0];
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v84 = sub_1DAF72FF4(0, *(v84 + 2) + 1, 1, v84);
      }

      v86 = *(v84 + 2);
      v85 = *(v84 + 3);
      if (v86 >= v85 >> 1)
      {
        v84 = sub_1DAF72FF4((v85 > 1), v86 + 1, 1, v84);
      }

      *(v84 + 2) = v86 + 1;
      v87 = &v84[56 * v86];
      *(v87 + 4) = 0xD000000000000011;
      *(v87 + 5) = 0x80000001DB0C9C80;
      *(v87 + 6) = 0xD000000000000024;
      *(v87 + 7) = 0x80000001DB0C9C50;
      *(v87 + 8) = 0x6F72662874696E69;
      *(v87 + 9) = 0xEB00000000293A6DLL;
      *(v87 + 10) = 129;
      *(&v271 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
      *&v270 = v84;
      sub_1DAF40D20(&v270, &v265);
      v88 = swift_isUniquelyReferenced_nonNull_native();
      *&v259 = v81;
      sub_1DAF3B11C(&v265, 0x636F766E49504944, 0xEE00736E6F697461, v88);
      v89 = qword_1DB0B1340[v79];
      v90 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v91 = sub_1DB09D6B4();
      v92 = sub_1DB09D604();
      [v90 initWithDomain:v91 code:v89 userInfo:v92];

      swift_willThrow();
      (*(v252 + 1))(v251, v275);
      v77 = *&v264[0];
      goto LABEL_52;
    }

    v40 = v24;
    if (qword_1EE300B90 != -1)
    {
      swift_once();
    }

    v41 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    v42 = v24;
    v43 = sub_1DB09CE64();
    v44 = [v43 domain];
    v45 = sub_1DB09D6C4();
    v47 = v46;

    if (v45 != 0x726F727245504944 || v47 != 0xE800000000000000)
    {
      v49 = sub_1DB09E254();

      if (v49)
      {
        goto LABEL_23;
      }

      v50 = [v43 domain];
      v51 = sub_1DB09D6C4();
      v53 = v52;

      if (v51 != 0x726F72724549444FLL || v53 != 0xE800000000000000)
      {
        v55 = sub_1DB09E254();

        if ((v55 & 1) == 0)
        {
          v56 = *MEMORY[0x1E696AA08];
          v57 = sub_1DB09D6C4();
          v59 = v58;
          *(&v271 + 1) = sub_1DAF4D7A4();
          *&v270 = v43;
          sub_1DAF40D20(&v270, &v265);
          v60 = v43;
          v61 = swift_isUniquelyReferenced_nonNull_native();
          *&v264[0] = v41;
          sub_1DAF3B11C(&v265, v57, v59, v61);

          v62 = 0;
          v63 = *&v264[0];
          goto LABEL_27;
        }

LABEL_23:
        DIPErrorCode.init(rawValue:)([v43 code]);
        if (v270 == 462)
        {
          v64 = 0;
        }

        else
        {
          v64 = v270;
        }

        v65 = [v43 userInfo];
        v63 = sub_1DB09D624();

        v62 = v64;
LABEL_27:
        if (*(v63 + 16) && (v66 = sub_1DAF35210(0x636F766E49504944, 0xEE00736E6F697461), (v67 & 1) != 0) && (sub_1DAF409DC(*(v63 + 56) + 32 * v66, &v270), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0), swift_dynamicCast()))
        {
          v68 = v265;
        }

        else
        {
          v68 = MEMORY[0x1E69E7CC0];
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v68 = sub_1DAF72FF4(0, *(v68 + 2) + 1, 1, v68);
        }

        v70 = *(v68 + 2);
        v69 = *(v68 + 3);
        if (v70 >= v69 >> 1)
        {
          v68 = sub_1DAF72FF4((v69 > 1), v70 + 1, 1, v68);
        }

        *(v68 + 2) = v70 + 1;
        v71 = &v68[56 * v70];
        *(v71 + 4) = 0xD00000000000001BLL;
        *(v71 + 5) = 0x80000001DB0C9C30;
        *(v71 + 6) = 0xD000000000000024;
        *(v71 + 7) = 0x80000001DB0C9C50;
        *(v71 + 8) = 0x6F72662874696E69;
        *(v71 + 9) = 0xEB00000000293A6DLL;
        *(v71 + 10) = 131;
        *(&v271 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
        *&v270 = v68;
        sub_1DAF40D20(&v270, &v265);
        v72 = swift_isUniquelyReferenced_nonNull_native();
        *&v264[0] = v63;
        sub_1DAF3B11C(&v265, 0x636F766E49504944, 0xEE00736E6F697461, v72);
        v73 = qword_1DB0B1340[v62];
        v74 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
        v75 = sub_1DB09D6B4();
        v76 = sub_1DB09D604();
        [v74 initWithDomain:v75 code:v73 userInfo:v76];

        swift_willThrow();
        v77 = v24;
LABEL_52:

        v101 = v256;
        v93 = v254;
        if (v248)
        {
          v94 = v256[3];

          if ((v249 & 1) == 0)
          {
            goto LABEL_54;
          }
        }

        else if ((v249 & 1) == 0)
        {
LABEL_54:
          if ((v255 & 1) == 0)
          {
            goto LABEL_59;
          }

          goto LABEL_58;
        }

        v95 = *(v101 + 5);

        if ((v255 & 1) == 0)
        {
LABEL_59:
          v97 = *(*v101 + 48);
          v98 = *(*v101 + 52);
          swift_deallocPartialClassInstance();
          v99 = v93;
          goto LABEL_60;
        }

LABEL_58:
        v96 = *(v101 + 8);

        goto LABEL_59;
      }
    }

    goto LABEL_23;
  }

  v25 = v246;
  v255 = v15;
  type metadata accessor for JWSSignedJSON.DIPJWSUnprotectedHeader();
  LOBYTE(v265) = 0;
  swift_getWitnessTable();
  sub_1DB09E0C4();
  v101 = v256;
  v256[8] = v270;
  LOBYTE(v270) = 1;
  *(v101 + 2) = sub_1DB09E084();
  *(v101 + 3) = v113;
  LOBYTE(v270) = 2;
  *(v101 + 4) = sub_1DB09E084();
  *(v101 + 5) = v114;
  LOBYTE(v270) = 3;
  v115 = sub_1DB09E084();
  v117 = v116;
  (*(v25 + 8))(v23, v249);
  *(v101 + 6) = v115;
  *(v101 + 7) = v117;
  v118 = *(v101 + 3);
  *&v265 = *(v101 + 2);
  *(&v265 + 1) = v118;
  *&v264[0] = 45;
  *(&v264[0] + 1) = 0xE100000000000000;
  *&v259 = 43;
  *(&v259 + 1) = 0xE100000000000000;
  v119 = sub_1DAF9C5EC();
  *&v265 = sub_1DB09DCA4();
  *(&v265 + 1) = v120;
  *&v264[0] = 95;
  *(&v264[0] + 1) = 0xE100000000000000;
  *&v259 = 47;
  *(&v259 + 1) = 0xE100000000000000;
  v246 = v119;
  v121 = sub_1DB09DCA4();
  v123 = v122;

  *&v270 = v121;
  *(&v270 + 1) = v123;

  v124 = sub_1DB09D7A4();

  if ((v124 & 3) != 0)
  {
    if ((sub_1DB09D7A4() & 3) != 0)
    {
      sub_1DB09D7A4();
      v125 = sub_1DB09D844();
      v127 = v126;
    }

    else
    {
      v125 = 0;
      v127 = 0xE000000000000000;
    }

    MEMORY[0x1E127FE90](v125, v127);
  }

  v128 = sub_1DB09CFA4();
  v130 = v129;
  sub_1DAF4ED88(v128, v129);

  if (v130 >> 60 == 15)
  {
    *&v270 = 0;
    *(&v270 + 1) = 0xE000000000000000;
    sub_1DB09DE44();
    MEMORY[0x1E127FE90](0xD000000000000045, 0x80000001DB0C9CA0);
    v131 = *(v101 + 2);
    v132 = *(v101 + 3);

    MEMORY[0x1E127FE90](v131, v132);

    v133 = *(&v270 + 1);
    v275 = v270;
    v134 = "CoreODIEssentials/DIPJWSObject.swift";
    if (qword_1EE300B90 != -1)
    {
LABEL_126:
      swift_once();
    }

    v135 = v134 - 32;
    v136 = MEMORY[0x1E69E7CC0];
    v137 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    v138 = *(v137 + 16);

    if (v138)
    {
      v139 = sub_1DAF35210(0x636F766E49504944, 0xEE00736E6F697461);
      if (v140)
      {
        sub_1DAF409DC(*(v137 + 56) + 32 * v139, &v270);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
        if (swift_dynamicCast())
        {
          v136 = v265;
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v136 = sub_1DAF72FF4(0, *(v136 + 2) + 1, 1, v136);
    }

    v142 = *(v136 + 2);
    v141 = *(v136 + 3);
    if (v142 >= v141 >> 1)
    {
      v136 = sub_1DAF72FF4((v141 > 1), v142 + 1, 1, v136);
    }

    *(v136 + 2) = v142 + 1;
    v143 = &v136[56 * v142];
    *(v143 + 4) = v275;
    *(v143 + 5) = v133;
    *(v143 + 6) = 0xD000000000000024;
    *(v143 + 7) = v135 | 0x8000000000000000;
    *(v143 + 8) = 0x6F72662874696E69;
    *(v143 + 9) = 0xEB00000000293A6DLL;
    *(v143 + 10) = 136;
    *(&v271 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
    *&v270 = v136;
    sub_1DAF40D20(&v270, &v265);
    v144 = swift_isUniquelyReferenced_nonNull_native();
    *&v264[0] = v137;
    sub_1DAF3B11C(&v265, 0x636F766E49504944, 0xEE00736E6F697461, v144);
    v145 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v146 = sub_1DB09D6B4();
    v147 = sub_1DB09D604();
    [v145 initWithDomain:v146 code:-1303 userInfo:v147];

    swift_willThrow();
    v101 = v256;
    v148 = v256[3];

    v149 = *(v101 + 5);

    v150 = *(v101 + 7);

    v151 = *(v101 + 8);

    v93 = v254;
    goto LABEL_59;
  }

  v152 = v11;
  v252 = 0;
  sub_1DAF4AC40(v128, v130);
  v153 = sub_1DB09CC24();
  v154 = *(v153 + 48);
  v155 = *(v153 + 52);
  swift_allocObject();
  sub_1DB09CC14();
  v156 = type metadata accessor for JWSSignedJSON.DIPJWSProtectedHeader();
  swift_getWitnessTable();
  v275 = v156;
  v157 = v252;
  sub_1DB09CC04();
  v158 = v157;
  if (v157)
  {
    sub_1DAF4AC40(v128, v130);

    goto LABEL_83;
  }

  v242 = 0;
  v243 = v153;
  v241 = v152;
  v244 = v128;
  v247 = v130;

  *(v101 + 72) = v270;
  v133 = *(&v271 + 1);
  *(v101 + 11) = v271;
  *(v101 + 12) = v133;
  v165 = v273;
  *(v101 + 104) = v272;
  *(v101 + 120) = v165;
  *(v101 + 136) = v274;
  if (v133)
  {
    v134 = *(v133 + 2);

    swift_beginAccess();
    v252 = v134;
    if (v134)
    {
      v166 = 0;
      v250 = (v275 - 8);
      v251 = v133;
      v167 = (v133 + 40);
      while (1)
      {
        if (v166 >= *(v133 + 2))
        {
          __break(1u);
          goto LABEL_126;
        }

        v168 = *(v167 - 1);
        v169 = *v167;
        v170 = *(v256 + 11);
        v171 = *(v256 + 15);
        v264[2] = *(v256 + 13);
        v264[3] = v171;
        v264[4] = *(v256 + 17);
        v264[0] = *(v256 + 9);
        v264[1] = v170;
        v172 = *(v256 + 13);
        v260 = *(v256 + 11);
        v261 = v172;
        v173 = *(v256 + 17);
        v262 = *(v256 + 15);
        v263 = v173;
        v259 = *(v256 + 9);

        v174 = v275;
        v175 = *(v275 - 8);
        (*(v175 + 16))(v258, v264, v275);
        v249 = v168;
        sub_1DB00B250();
        v134 = v176;
        v267 = v261;
        v268 = v262;
        v269 = v263;
        v265 = v259;
        v266 = v260;
        v179 = *(v175 + 8);
        v178 = v175 + 8;
        v177 = v179;
        v179(&v265, v174);
        if (!v134)
        {
          break;
        }

        ++v166;

        v167 += 2;
        v133 = v251;
        if (v252 == v166)
        {
          goto LABEL_91;
        }
      }

      *&v259 = 0;
      *(&v259 + 1) = 0xE000000000000000;
      sub_1DB09DE44();
      MEMORY[0x1E127FE90](0xD000000000000044, 0x80000001DB0C9D30);
      MEMORY[0x1E127FE90](v249, v169);

      v191 = *(&v259 + 1);
      v255 = v259;
      if (qword_1EE300B90 != -1)
      {
        swift_once();
      }

      v192 = MEMORY[0x1E69E7CC0];
      v193 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
      v194 = *(v193 + 16);

      v240 = v178;
      if (v194)
      {
        v195 = sub_1DAF35210(0x636F766E49504944, 0xEE00736E6F697461);
        if (v196)
        {
          sub_1DAF409DC(*(v193 + 56) + 32 * v195, &v259);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
          if (swift_dynamicCast())
          {
            v192 = *&v258[0];
          }
        }
      }

      v197 = v191;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v192 = sub_1DAF72FF4(0, *(v192 + 2) + 1, 1, v192);
      }

      v199 = *(v192 + 2);
      v198 = *(v192 + 3);
      if (v199 >= v198 >> 1)
      {
        v192 = sub_1DAF72FF4((v198 > 1), v199 + 1, 1, v192);
      }

      *(v192 + 2) = v199 + 1;
      v200 = &v192[56 * v199];
      *(v200 + 4) = v255;
      *(v200 + 5) = v197;
      *(v200 + 6) = 0xD000000000000024;
      *(v200 + 7) = 0x80000001DB0C9C50;
      *(v200 + 8) = 0x6F72662874696E69;
      *(v200 + 9) = 0xEB00000000293A6DLL;
      *(v200 + 10) = 144;
      *(&v260 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
      *&v259 = v192;
      sub_1DAF40D20(&v259, v258);
      v201 = swift_isUniquelyReferenced_nonNull_native();
      v257 = v193;
      sub_1DAF3B11C(v258, 0x636F766E49504944, 0xEE00736E6F697461, v201);
      v202 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v203 = sub_1DB09D6B4();
      v204 = sub_1DB09D604();
      [v202 initWithDomain:v203 code:-1303 userInfo:v204];

      swift_willThrow();
      sub_1DAF4AC40(v244, v247);
      v101 = v256;
      v205 = v256[3];

      v206 = *(v101 + 5);

      v207 = *(v101 + 7);

      v208 = *(v101 + 8);

      v209 = *(v101 + 104);
      v260 = *(v101 + 88);
      v261 = v209;
      v210 = *(v101 + 136);
      v262 = *(v101 + 120);
      v263 = v210;
      v259 = *(v101 + 72);
      v177(&v259, v275);
      v93 = v254;
      goto LABEL_59;
    }

LABEL_91:

    v101 = v256;
  }

  v180 = *(v101 + 5);
  *&v264[0] = *(v101 + 4);
  *(&v264[0] + 1) = v180;
  *&v259 = 45;
  *(&v259 + 1) = 0xE100000000000000;
  *&v258[0] = 43;
  *(&v258[0] + 1) = 0xE100000000000000;
  *&v264[0] = sub_1DB09DCA4();
  *(&v264[0] + 1) = v181;
  *&v259 = 95;
  *(&v259 + 1) = 0xE100000000000000;
  *&v258[0] = 47;
  *(&v258[0] + 1) = 0xE100000000000000;
  v182 = sub_1DB09DCA4();
  v184 = v183;

  *&v265 = v182;
  *(&v265 + 1) = v184;

  v185 = sub_1DB09D7A4();

  v186 = v255;
  v187 = v243;
  if ((v185 & 3) != 0)
  {
    if ((sub_1DB09D7A4() & 3) != 0)
    {
      sub_1DB09D7A4();
      v188 = sub_1DB09D844();
      v190 = v189;
    }

    else
    {
      v188 = 0;
      v190 = 0xE000000000000000;
    }

    MEMORY[0x1E127FE90](v188, v190);
  }

  v211 = sub_1DB09CFA4();
  v213 = v212;
  sub_1DAF4ED88(v211, v212);

  if (v213 >> 60 == 15)
  {
    *&v265 = 0;
    *(&v265 + 1) = 0xE000000000000000;
    sub_1DB09DE44();
    MEMORY[0x1E127FE90](0xD00000000000003CLL, 0x80000001DB0C9CF0);
    v214 = *(v101 + 4);
    v215 = *(v101 + 5);

    MEMORY[0x1E127FE90](v214, v215);

    v216 = v265;
    if (qword_1EE300B90 != -1)
    {
      swift_once();
    }

    v217 = MEMORY[0x1E69E7CC0];
    v218 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    v219 = *(v218 + 16);

    if (v219)
    {
      v220 = sub_1DAF35210(0x636F766E49504944, 0xEE00736E6F697461);
      if (v221)
      {
        sub_1DAF409DC(*(v218 + 56) + 32 * v220, &v265);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
        if (swift_dynamicCast())
        {
          v217 = *&v264[0];
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v217 = sub_1DAF72FF4(0, *(v217 + 2) + 1, 1, v217);
    }

    v223 = *(v217 + 2);
    v222 = *(v217 + 3);
    if (v223 >= v222 >> 1)
    {
      v217 = sub_1DAF72FF4((v222 > 1), v223 + 1, 1, v217);
    }

    *(v217 + 2) = v223 + 1;
    v224 = &v217[56 * v223];
    *(v224 + 2) = v216;
    *(v224 + 6) = 0xD000000000000024;
    *(v224 + 7) = 0x80000001DB0C9C50;
    *(v224 + 8) = 0x6F72662874696E69;
    *(v224 + 9) = 0xEB00000000293A6DLL;
    *(v224 + 10) = 151;
    *(&v266 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
    *&v265 = v217;
    sub_1DAF40D20(&v265, v264);
    v225 = swift_isUniquelyReferenced_nonNull_native();
    *&v259 = v218;
    sub_1DAF3B11C(v264, 0x636F766E49504944, 0xEE00736E6F697461, v225);
    v226 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v227 = sub_1DB09D6B4();
    v228 = sub_1DB09D604();
    [v226 initWithDomain:v227 code:-1303 userInfo:v228];

    swift_willThrow();
    sub_1DAF4AC40(v244, v247);
    v101 = v256;
    v229 = v256[3];

    v230 = *(v101 + 5);

    v231 = *(v101 + 7);

    v232 = *(v101 + 8);

    v233 = *(v101 + 88);
    v234 = *(v101 + 120);
    v267 = *(v101 + 104);
    v268 = v234;
    v269 = *(v101 + 136);
    v265 = *(v101 + 72);
    v266 = v233;
    (*(*(v275 - 8) + 8))(&v265);
    v93 = v254;
    goto LABEL_59;
  }

  sub_1DAF4AC40(v211, v213);
  v235 = *(v187 + 48);
  v236 = *(v187 + 52);
  swift_allocObject();
  sub_1DB09CC14();
  v238 = v241;
  v237 = v242;
  sub_1DB09CC04();
  if (v237)
  {
    sub_1DAF4AC40(v244, v247);
    sub_1DAF4AC40(v211, v213);

    v158 = v242;
LABEL_83:
    v159 = *(v101 + 3);

    v160 = *(v101 + 5);

    v161 = *(v101 + 7);

    v162 = *(v101 + 8);

    v93 = v254;
    if (!v158)
    {
      v163 = *(v101 + 88);
      v164 = *(v101 + 120);
      v272 = *(v101 + 104);
      v273 = v164;
      v274 = *(v101 + 136);
      v270 = *(v101 + 72);
      v271 = v163;
      (*(*(v275 - 8) + 8))(&v270);
    }

    goto LABEL_59;
  }

  (*(v245 + 32))(&v101[*(*v101 + 144)], v186, v238);
  JWSSignedJSON.verify()();
  sub_1DAF4AC40(v211, v213);
  sub_1DAF4AC40(v244, v247);
  if (v239)
  {
  }

  v99 = v254;
LABEL_60:
  __swift_destroy_boxed_opaque_existential_1Tm(v99);
  return v101;
}