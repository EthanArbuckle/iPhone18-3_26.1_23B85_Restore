char *sub_1ADE70A18(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA180, &qword_1AE241B78);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

char *sub_1ADE70B14(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA188, &unk_1AE242290);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1ADE70C30(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 24);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[3 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 24 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_1ADE70D78(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA220, &qword_1AE241BF8);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1ADE70E84(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA1B0, &unk_1AE242240);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1ADE70F88(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA1E8, &unk_1AE2422E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA1F0, &qword_1AE241BD0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1ADE710D0(void *a1, char a2, uint64_t *a3)
{
  v53 = a1[2];
  if (!v53)
  {
    goto LABEL_24;
  }

  v7 = a1[7];
  v6 = a1[8];
  v9 = a1[5];
  v8 = a1[6];
  v10 = a1[4];
  sub_1ADDD86D8(v10, v9);

  if (!v8)
  {
    goto LABEL_24;
  }

  v52 = a1;
  v55 = v10;
  v56 = v9;
  v54 = a3;
  v11 = *a3;
  v13 = sub_1ADDDE7CC(v10, v9);
  v14 = *(v11 + 16);
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v17 = v12;
  if (*(v11 + 24) >= v16)
  {
    if (a2)
    {
      if ((v12 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_1ADF70B90();
      if ((v17 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_10;
  }

  sub_1ADF6BA98(v16, a2 & 1);
  v18 = *v54;
  v19 = sub_1ADDDE7CC(v10, v9);
  if ((v17 & 1) == (v20 & 1))
  {
    v13 = v19;
    if ((v17 & 1) == 0)
    {
LABEL_13:
      v24 = v54;
      v25 = *v54;
      *(*v54 + 8 * (v13 >> 6) + 64) |= 1 << v13;
      v26 = (v25[6] + 16 * v13);
      *v26 = v10;
      v26[1] = v9;
      v27 = (v25[7] + 24 * v13);
      *v27 = v8;
      v27[1] = v7;
      v27[2] = v6;
      v28 = v25[2];
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v25[2] = v30;
      v31 = v52;
      if (v53 != 1)
      {
        v32 = v52 + 13;
        v13 = 1;
        while (v13 < v31[2])
        {
          v34 = *(v32 - 1);
          v33 = *v32;
          v36 = *(v32 - 3);
          v35 = *(v32 - 2);
          v37 = *(v32 - 4);
          sub_1ADDD86D8(v37, v36);

          if (!v35)
          {
            goto LABEL_24;
          }

          v55 = v37;
          v56 = v36;
          v38 = *v24;
          v39 = sub_1ADDDE7CC(v37, v36);
          v41 = *(v38 + 16);
          v42 = (v40 & 1) == 0;
          v29 = __OFADD__(v41, v42);
          v43 = v41 + v42;
          if (v29)
          {
            goto LABEL_26;
          }

          v44 = v40;
          if (*(v38 + 24) < v43)
          {
            sub_1ADF6BA98(v43, 1);
            v45 = *v54;
            v39 = sub_1ADDDE7CC(v37, v36);
            if ((v44 & 1) != (v46 & 1))
            {
              goto LABEL_28;
            }
          }

          if (v44)
          {
            goto LABEL_10;
          }

          v24 = v54;
          v47 = *v54;
          *(*v54 + 8 * (v39 >> 6) + 64) |= 1 << v39;
          v48 = (v47[6] + 16 * v39);
          *v48 = v37;
          v48[1] = v36;
          v49 = (v47[7] + 24 * v39);
          *v49 = v35;
          v49[1] = v34;
          v49[2] = v33;
          v50 = v47[2];
          v29 = __OFADD__(v50, 1);
          v51 = v50 + 1;
          if (v29)
          {
            goto LABEL_27;
          }

          ++v13;
          v47[2] = v51;
          v32 += 5;
          v31 = v52;
          if (v53 == v13)
          {
            goto LABEL_24;
          }
        }

        __break(1u);
        goto LABEL_26;
      }

LABEL_24:

      return;
    }

LABEL_10:
    v13 = 0xD000000000000015;
    sub_1ADE42E40();
    v21 = swift_allocError();
    *v22 = 0xD000000000000015;
    *(v22 + 8) = 0x80000001AE2601D0;
    *(v22 + 16) = 0;
    swift_willThrow();
    v23 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB180, &unk_1AE2427A0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      sub_1ADDCC35C(v55, v56);

      return;
    }

    goto LABEL_29;
  }

LABEL_28:
  sub_1AE23E27C();
  __break(1u);
LABEL_29:
  sub_1AE23DA2C();
  MEMORY[0x1B26FB670](v13 + 6, 0x80000001AE260210);
  sub_1AE23DBAC();
  MEMORY[0x1B26FB670](39, 0xE100000000000000);
  sub_1AE23DC5C();
  __break(1u);
}

uint64_t sub_1ADE71500(uint64_t *a1)
{
  v2 = *a1;
  result = sub_1ADDFCC74();
  if (!v1)
  {
    v4 = *(result + 16);
    v5 = result;

    v6 = sub_1ADE50584(v4);
    swift_beginAccess();
    v7 = *(v5 + 24);
    *(v5 + 24) = v6;
  }

  return result;
}

uint64_t sub_1ADE7159C(uint64_t *a1)
{
  v2 = *a1;
  result = sub_1ADDFCC74();
  if (!v1)
  {
    v4 = *(result + 16);
    v5 = result;

    v6 = sub_1AE19E3F0(v4);
    swift_beginAccess();
    v7 = *(v5 + 24);
    *(v5 + 24) = v6;
  }

  return result;
}

BOOL _s9Coherence13CRCodingErrorO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4 <= 1)
  {
    if (!*(a1 + 16))
    {
      if (!*(a2 + 16))
      {
        v16 = *a1;
        if (v2 == v5 && v3 == v6)
        {
          sub_1ADE74158(v16, v3, 0);
          sub_1ADE74158(v2, v3, 0);
          sub_1ADE74174(v2, v3, 0);
          v8 = v2;
          v9 = v3;
          v10 = 0;
          goto LABEL_45;
        }

        v18 = sub_1AE23E00C();
        sub_1ADE74158(v5, v6, 0);
        sub_1ADE74158(v2, v3, 0);
        sub_1ADE74174(v2, v3, 0);
        v19 = v5;
        v20 = v6;
        v21 = 0;
        goto LABEL_32;
      }

      goto LABEL_10;
    }

    if (v7 != 1)
    {
      goto LABEL_42;
    }

    sub_1ADE74174(*a1, v3, 1);
    v12 = v5;
    v13 = v6;
    v14 = 1;
    goto LABEL_20;
  }

  if (v4 == 2)
  {
    if (v7 != 2)
    {
      goto LABEL_42;
    }

    sub_1ADE74174(*a1, v3, 2);
    v12 = v5;
    v13 = v6;
    v14 = 2;
LABEL_20:
    sub_1ADE74174(v12, v13, v14);
    return v2 == v5;
  }

  if (v4 == 3)
  {
    if (v7 == 3)
    {
      if (v2 == v5 && v3 == v6)
      {
        sub_1ADE74158(*a1, v3, 3);
        sub_1ADE74158(v2, v3, 3);
        sub_1ADE74174(v2, v3, 3);
        v8 = v2;
        v9 = v3;
        v10 = 3;
LABEL_45:
        sub_1ADE74174(v8, v9, v10);
        return 1;
      }

      v22 = *a1;
      v18 = sub_1AE23E00C();
      sub_1ADE74158(v5, v6, 3);
      sub_1ADE74158(v2, v3, 3);
      sub_1ADE74174(v2, v3, 3);
      v19 = v5;
      v20 = v6;
      v21 = 3;
LABEL_32:
      sub_1ADE74174(v19, v20, v21);
      return v18 & 1;
    }

LABEL_10:
    v11 = *(a1 + 8);

LABEL_42:
    sub_1ADE74158(v5, v6, v7);
    sub_1ADE74174(v2, v3, v4);
    sub_1ADE74174(v5, v6, v7);
    return 0;
  }

  if (v2 > 1)
  {
    if (v2 ^ 2 | v3)
    {
      if (v7 != 4 || v5 != 3 || v6)
      {
        goto LABEL_42;
      }

      sub_1ADE74174(*a1, v3, 4);
      v8 = 3;
    }

    else
    {
      if (v7 != 4 || v5 != 2 || v6)
      {
        goto LABEL_42;
      }

      sub_1ADE74174(*a1, v3, 4);
      v8 = 2;
    }

    goto LABEL_41;
  }

  if (!(v2 | v3))
  {
    if (v7 != 4 || v6 | v5)
    {
      goto LABEL_42;
    }

    sub_1ADE74174(*a1, v3, 4);
    v8 = 0;
LABEL_41:
    v9 = 0;
    v10 = 4;
    goto LABEL_45;
  }

  if (v7 != 4 || v5 != 1 || v6)
  {
    goto LABEL_42;
  }

  sub_1ADE74174(*a1, v3, 4);
  v15 = 1;
  sub_1ADE74174(1, 0, 4);
  return v15;
}

uint64_t sub_1ADE7196C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v3 = a1;
    v33 = MEMORY[0x1E69E7CC0];
    sub_1ADE6F2C4(0, v1, 0);
    v4 = v33;
    v5 = v3 + 64;
    v6 = -1 << *(v3 + 32);
    result = sub_1AE23D8EC();
    v8 = result;
    v9 = 0;
    v27 = v3 + 72;
    v28 = v1;
    v29 = v3 + 64;
    v30 = v3;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(v3 + 32))
    {
      v11 = v8 >> 6;
      if ((*(v5 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_24;
      }

      v31 = v9;
      v32 = *(v3 + 36);
      v12 = (*(v3 + 48) + 16 * v8);
      v13 = *v12;
      v14 = v12[1];
      sub_1ADDD86D8(*v12, v14);
      sub_1ADDD86D8(v13, v14);
      sub_1ADDCC35C(0, 0xC000000000000000);

      sub_1ADDD86D8(v13, v14);

      sub_1ADDCC35C(v13, v14);
      result = sub_1ADDCC35C(v13, v14);
      v15 = v2;
      v17 = *(v33 + 16);
      v16 = *(v33 + 24);
      if (v17 >= v16 >> 1)
      {
        result = sub_1ADE6F2C4((v16 > 1), v17 + 1, 1);
      }

      *(v33 + 16) = v17 + 1;
      v18 = (v33 + 24 * v17);
      v18[4] = v15;
      v18[5] = v13;
      v18[6] = v14;
      v10 = 1 << *(v30 + 32);
      if (v8 >= v10)
      {
        goto LABEL_25;
      }

      v5 = v29;
      v19 = *(v29 + 8 * v11);
      if ((v19 & (1 << v8)) == 0)
      {
        goto LABEL_26;
      }

      v2 = v15;
      v3 = v30;
      if (v32 != *(v30 + 36))
      {
        goto LABEL_27;
      }

      v20 = v19 & (-2 << (v8 & 0x3F));
      if (v20)
      {
        v10 = __clz(__rbit64(v20)) | v8 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = v2;
        v22 = v11 << 6;
        v23 = v11 + 1;
        v24 = (v27 + 8 * v11);
        while (v23 < (v10 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            result = sub_1ADDFFBC8(v8, v32, 0);
            v10 = __clz(__rbit64(v25)) + v22;
            goto LABEL_19;
          }
        }

        result = sub_1ADDFFBC8(v8, v32, 0);
LABEL_19:
        v2 = v21;
      }

      v9 = v31 + 1;
      v8 = v10;
      if (v31 + 1 == v28)
      {
        return v4;
      }
    }

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

  else
  {
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1ADE71C08()
{
  if (*(v0 + 120))
  {
    sub_1ADE42E40();
    swift_allocError();
    *v2 = 0xD00000000000003DLL;
    *(v2 + 8) = 0x80000001AE260360;
    *(v2 + 16) = 3;
    swift_willThrow();
  }

  else
  {
    v1 = *(v0 + 112);
    if (!v1)
    {
      type metadata accessor for CREncoder.CRValueContainer();
      v1 = swift_allocObject();
      type metadata accessor for Proto_Value._StorageClass();
      inited = swift_initStaticObject();
      *(v1 + 16) = v0;
      *(v1 + 24) = inited;
      *(v0 + 112) = v1;
    }
  }

  return v1;
}

uint64_t sub_1ADE71CD0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, __int128 *, uint64_t, uint64_t *))
{
  v4 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v25 = MEMORY[0x1E69E7CC0];
    sub_1AE23DB1C();
    v6 = a1 + 64;
    v7 = -1 << *(a1 + 32);
    result = sub_1AE23D8EC();
    v8 = result;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
    {
      if ((*(v6 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_15;
      }

      v16 = v4;
      v17 = *(a1 + 36);
      v9 = (*(a1 + 56) + 24 * v8);
      v10 = *v9;
      v11 = v9[1];
      v12 = v9[2];
      v20 = *(*(a1 + 48) + 16 * v8);
      v21 = v10;
      v22 = v11;
      v23 = v12;
      sub_1ADDD86D8(v20, *(&v20 + 1));

      a3(&v24, &v20, a2, &v19);
      sub_1ADDCC35C(v20, *(&v20 + 1));

      if (v18)
      {
      }

      sub_1AE23DAEC();
      v13 = *(v25 + 16);
      sub_1AE23DB2C();
      sub_1AE23DB3C();
      result = sub_1AE23DAFC();
      if (v8 >= -(-1 << *(a1 + 32)))
      {
        goto LABEL_16;
      }

      if ((*(v6 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_17;
      }

      if (v17 != *(a1 + 36))
      {
        goto LABEL_18;
      }

      result = sub_1AE23D90C();
      v8 = result;
      v4 = v16 - 1;
      if (v16 == 1)
      {
        return v25;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
  }

  return result;
}

uint64_t sub_1ADE71EE0(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1ADE744B8;

  return sub_1ADE68074(a1, a2, v2);
}

void sub_1ADE71F8C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 72);
  if (v2)
  {
    v3 = *(v2 + 16);
    if ((~v3 & 0xF000000000000007) == 0)
    {
LABEL_3:
      sub_1ADE42E40();
      swift_allocError();
      *v4 = 0xD000000000000017;
      *(v4 + 8) = 0x80000001AE260280;
      *(v4 + 16) = 0;
      swift_willThrow();
      return;
    }

    v5 = (v3 >> 59) & 0x1E | (v3 >> 2) & 1;
    if (v5 == 14)
    {
      v6 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    }

    else
    {
      if (*(v1 + 57) > 1u || v5 != 1)
      {
        goto LABEL_3;
      }

      v8 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1ADE7205C()
{
  v1 = *(*(v0 + 16) + 72);
  if (!v1)
  {
    goto LABEL_10;
  }

  v2 = *(v1 + 16);
  if ((~v2 & 0xF000000000000007) == 0)
  {
LABEL_6:
    sub_1ADE42E40();
    swift_allocError();
    *v5 = 0xD000000000000016;
    *(v5 + 8) = 0x80000001AE2602E0;
    *(v5 + 16) = 0;
    swift_willThrow();
    return;
  }

  v3 = (v2 >> 59) & 0x1E | (v2 >> 2) & 1;
  if (v3 != 4)
  {
    if (!v3)
    {
      v4 = *(v2 + 16);
      return;
    }

    goto LABEL_6;
  }

  if ((*((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x10) & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_10:
    __break(1u);
  }
}

uint64_t sub_1ADE72118(uint64_t a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7CC0];
  *(v2 + 16) = 0;
  *(v2 + 24) = v4;
  *(v2 + 32) = v4;
  *(v2 + 40) = v4;
  v5 = MEMORY[0x1E69E7CC8];
  *(v2 + 48) = MEMORY[0x1E69E7CC8];
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  *(v2 + 24) = *(a1 + 40);
  swift_beginAccess();
  *(v2 + 32) = *(a1 + 80);
  swift_beginAccess();
  *(v2 + 40) = *(a1 + 56);
  v6 = qword_1ED96AE88;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = qword_1ED96F2A8;
  type metadata accessor for CRDecodeContext();
  v8 = swift_allocObject();
  v8[2] = v5;
  v8[3] = v5;
  v8[4] = v7;
  v9 = *(v2 + 16);
  *(v2 + 16) = v8;

  v10 = sub_1ADDFCC74();
  swift_beginAccess();
  v11 = *(v2 + 64);
  *(v2 + 64) = *(v10 + 24);

  *(v2 + 57) = *(a1 + 104);
  return v2;
}

uint64_t sub_1ADE722FC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a4 >> 1;
  if (a4 >> 1 == a3)
  {
    return 0;
  }

  if ((a4 >> 1) <= a3)
  {
    __break(1u);
    goto LABEL_26;
  }

  v7 = *(a5 + 16);
  if (!v7)
  {
    return 0;
  }

  v8 = 0;
  while (*(a5 + 32 + 8 * v8) != *(a2 + 8 * a3))
  {
    if (v7 == ++v8)
    {
      return 0;
    }
  }

  if (v8 >= *(a6 + 16))
  {
    return 0;
  }

  v9 = v6 - a3;
  if (__OFSUB__(v6, a3))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v10 = *(a6 + 8 * v8 + 32);
  if (v9 == 1)
  {
  }

  v11 = *(v10 + 16);
  if ((~v11 & 0xF000000000000007) != 0 && (v11 & 0xF000000000000000) == 0x3000000000000000)
  {
    v17 = (v11 & 0xFFFFFFFFFFFFFFFLL);
    v15 = v17[2];
    v16 = v17[3];
    v18 = v17[4];
    v19 = result;
    v20 = a3;

    a3 = v20;
    result = v19;
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (!v9)
  {
LABEL_23:
    if (v6 >= a3)
    {
      v21 = swift_unknownObjectRetain();
      v22 = sub_1ADE722FC(v21, a2, v6, a4, v15, v16);
      swift_unknownObjectRelease();

      return v22;
    }

    goto LABEL_28;
  }

  if (!__OFADD__(a3, 1))
  {
    if (v6 >= a3 + 1)
    {
      v6 = a3 + 1;
      goto LABEL_23;
    }

LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1ADE7249C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  v4 = *(a2 + 16);
  if (!v4)
  {
    return 0;
  }

  v5 = 0;
  v6 = a1 + 32;
  while (*(a2 + 32 + 8 * v5) != *(a1 + 32))
  {
    if (v4 == ++v5)
    {
      return 0;
    }
  }

  if (v5 >= *(a3 + 16))
  {
    return 0;
  }

  v7 = *(a3 + 8 * v5 + 32);
  if (v3 == 1)
  {
  }

  v9 = *(v7 + 16);
  if ((~v9 & 0xF000000000000007) != 0 && (v9 & 0xF000000000000000) == 0x3000000000000000)
  {
    v13 = (v9 & 0xFFFFFFFFFFFFFFFLL);
    v11 = v13[2];
    v12 = v13[3];
    v14 = v13[4];
    v15 = a1;

    a1 = v15;
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
    v12 = MEMORY[0x1E69E7CC0];
  }

  v16 = sub_1ADE722FC(a1, v6, 1, (2 * v3) | 1, v11, v12);

  return v16;
}

unint64_t sub_1ADE725D0()
{
  result = qword_1EB5B95B8;
  if (!qword_1EB5B95B8)
  {
    sub_1AE23C2FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5B95B8);
  }

  return result;
}

uint64_t sub_1ADE72628(void *a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  v3 = MEMORY[0x1E69E7CC8];
  *(v1 + 40) = MEMORY[0x1E69E7CC0];
  *(v1 + 48) = v3;
  *(v1 + 56) = v2;
  *(v1 + 64) = v3;
  *(v1 + 72) = v3;
  *(v1 + 80) = v2;
  *(v1 + 88) = v2;
  *(v1 + 96) = v2;
  *(v1 + 112) = 0;
  *(v1 + 120) = 0;
  *(v1 + 16) = a1;
  *(v1 + 104) = 1;
  v4 = qword_1ED9697D8;
  v5 = a1;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = qword_1ED96F240;
  v7 = *algn_1ED96F248;
  *(v1 + 24) = qword_1ED96F240;
  *(v1 + 32) = v7;
  sub_1ADDD86D8(v6, v7);
  return v1;
}

uint64_t sub_1ADE726C0(void *a1, char *a2)
{
  v3 = *a2;
  v4 = MEMORY[0x1E69E7CC0];
  v5 = MEMORY[0x1E69E7CC8];
  *(v2 + 40) = MEMORY[0x1E69E7CC0];
  *(v2 + 48) = v5;
  *(v2 + 56) = v4;
  *(v2 + 64) = v5;
  *(v2 + 72) = v5;
  *(v2 + 80) = v4;
  *(v2 + 88) = v4;
  *(v2 + 96) = v4;
  *(v2 + 112) = 0;
  *(v2 + 120) = 0;
  *(v2 + 16) = a1;
  *(v2 + 104) = v3;
  v6 = qword_1ED9697D8;
  v7 = a1;
  if (v6 != -1)
  {
    swift_once();
  }

  v8 = qword_1ED96F240;
  v9 = *algn_1ED96F248;
  *(v2 + 24) = qword_1ED96F240;
  *(v2 + 32) = v9;
  sub_1ADDD86D8(v8, v9);
  return v2;
}

unint64_t sub_1ADE7281C()
{
  result = qword_1EB5B92A0;
  if (!qword_1EB5B92A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5B92A0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9Coherence13CRCodingErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

uint64_t sub_1ADE7288C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1ADE728D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t sub_1ADE72918(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for CRCodableVersion(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CRCodableVersion(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t dispatch thunk of CRDecoder.CRDTContainer.decode<A>(_:)()
{
  return (*(*v0 + 112))();
}

{
  return (*(*v0 + 120))();
}

{
  return (*(*v0 + 128))();
}

{
  return (*(*v0 + 136))();
}

{
  return (*(*v0 + 160))();
}

{
  return (*(*v0 + 176))();
}

{
  return (*(*v0 + 200))();
}

uint64_t dispatch thunk of CRDecoder.CRDTContainer.decode<A, B>(_:)()
{
  return (*(*v0 + 144))();
}

{
  return (*(*v0 + 152))();
}

{
  return (*(*v0 + 208))();
}

uint64_t dispatch thunk of CRDecoder.CRDTContainer.decode(_:)()
{
  return (*(*v0 + 168))();
}

{
  return (*(*v0 + 184))();
}

uint64_t dispatch thunk of CRDecoder.CRValueContainer.decode(_:)()
{
  return (*(*v0 + 104))();
}

{
  return (*(*v0 + 112))();
}

{
  return (*(*v0 + 120))();
}

{
  return (*(*v0 + 128))();
}

{
  return (*(*v0 + 136))();
}

{
  return (*(*v0 + 144))();
}

{
  return (*(*v0 + 152))();
}

{
  return (*(*v0 + 160))();
}

{
  return (*(*v0 + 168))();
}

uint64_t dispatch thunk of CRDecoder.CRValueContainer.decode<A>(_:)()
{
  return (*(*v0 + 192))();
}

{
  return (*(*v0 + 200))();
}

{
  return (*(*v0 + 208))();
}

uint64_t dispatch thunk of CREncoder.CRDTContainer.encode<A>(_:)()
{
  return (*(*v0 + 128))();
}

{
  return (*(*v0 + 136))();
}

{
  return (*(*v0 + 144))();
}

{
  return (*(*v0 + 160))();
}

{
  return (*(*v0 + 192))();
}

{
  return (*(*v0 + 208))();
}

{
  return (*(*v0 + 232))();
}

uint64_t dispatch thunk of CREncoder.CRDTContainer.encode<A, B>(_:)()
{
  return (*(*v0 + 168))();
}

{
  return (*(*v0 + 176))();
}

{
  return (*(*v0 + 184))();
}

uint64_t dispatch thunk of CREncoder.CRDTContainer.encode(_:)()
{
  return (*(*v0 + 200))();
}

{
  return (*(*v0 + 216))();
}

uint64_t dispatch thunk of CREncoder.CRValueContainer.encode(_:)()
{
  return (*(*v0 + 136))();
}

{
  return (*(*v0 + 144))();
}

{
  return (*(*v0 + 152))();
}

{
  return (*(*v0 + 160))();
}

{
  return (*(*v0 + 168))();
}

{
  return (*(*v0 + 176))();
}

{
  return (*(*v0 + 184))();
}

{
  return (*(*v0 + 192))();
}

{
  return (*(*v0 + 200))();
}

uint64_t dispatch thunk of CREncoder.CRValueContainer.encode<A>(_:)()
{
  return (*(*v0 + 216))();
}

{
  return (*(*v0 + 224))();
}

{
  return (*(*v0 + 232))();
}

{
  return (*(*v0 + 240))();
}

uint64_t sub_1ADE73AB0(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

uint64_t sub_1ADE73AC8(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

uint64_t sub_1ADE73B5C(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_1ADDCC35C(result, a2);
  }

  return result;
}

unint64_t sub_1ADE73BC8()
{
  result = qword_1ED96A8E8[0];
  if (!qword_1ED96A8E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED96A8E8);
  }

  return result;
}

uint64_t sub_1ADE73C1C(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_1ADDD86D8(result, a2);
  }

  return result;
}

unint64_t sub_1ADE73D18()
{
  result = qword_1EB5B8F10;
  if (!qword_1EB5B8F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5B8F10);
  }

  return result;
}

uint64_t sub_1ADE73D6C(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result)
  {

    return sub_1ADDCC35C(a2, a3);
  }

  return result;
}

uint64_t sub_1ADE73DF4(uint64_t a1)
{
  v2 = type metadata accessor for PartiallyOrderedReferenceMap();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1ADE73ED0()
{
  result = qword_1ED96A720;
  if (!qword_1ED96A720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED96A720);
  }

  return result;
}

uint64_t sub_1ADE73F24()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  return (*(*(v4 + 8) + 16))(v2, v3);
}

uint64_t sub_1ADE73F88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 16);
  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v5 = 0;
  result = MEMORY[0x1E69E7CC0];
  while (*(a2 + 32 + 8 * v5) != a1)
  {
    if (v3 == ++v5)
    {
      return result;
    }
  }

  if (v5 >= *(a3 + 16))
  {
    __break(1u);
  }

  else
  {
    v7 = *(*(a3 + 8 * v5 + 32) + 16);
    if ((~v7 & 0xF000000000000007) == 0 || (v7 & 0xF000000000000000) != 0x3000000000000000)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v9 = (v7 & 0xFFFFFFFFFFFFFFFLL);
    v10 = v9[2];
    v11 = v9[3];
    v12 = v9[4];

    return v10;
  }

  return result;
}

uint64_t sub_1ADE740A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1ADE744B8;

  return sub_1ADE688AC(a1, v4, v5, v6);
}

uint64_t sub_1ADE74158(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 3 || a3 == 0)
  {
  }

  return result;
}

uint64_t sub_1ADE74174(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 3 || a3 == 0)
  {
  }

  return result;
}

uint64_t sub_1ADE74190(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1ADE74240;

  return sub_1AE1AC490(a1, v4, v5, v6);
}

uint64_t sub_1ADE74240()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1ADE74334(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1ADE74344()
{
  result = qword_1EB5BA360;
  if (!qword_1EB5BA360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA360);
  }

  return result;
}

uint64_t sub_1ADE74398(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1ADE74240;

  return sub_1ADE67A90(a1, v4, v5, v7, v6);
}

uint64_t WrappedObservableDifference.contents.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00]();
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7);
  v8 = *(a1 + 16);
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    (*(v4 + 8))(v7, a1);
    v10 = 1;
  }

  else
  {
    (*(v9 + 32))(a2, v7, v8);
    v10 = 0;
  }

  return (*(v9 + 56))(a2, v10, 1, v8);
}

BOOL WrappedObservableDifference.isIdentityChanged.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00]();
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5);
  v6 = (*(*(*(a1 + 16) - 8) + 48))(v5, 1) == 1;
  (*(v2 + 8))(v5, a1);
  return v6;
}

uint64_t static WrappedObservableDifference<A>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a1;
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v34 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v33 = &v33 - v10;
  v11 = type metadata accessor for WrappedObservableDifference();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v38 = &v33 - v14;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v16 = *(TupleTypeMetadata2 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v20 = &v33 - v19;
  v22 = *(v21 + 48);
  v36 = v12;
  v23 = *(v12 + 16);
  v23(&v33 - v19, v37, v11, v18);
  (v23)(&v20[v22], a2, v11);
  v37 = v6;
  v24 = *(v6 + 48);
  if (v24(v20, 1, a3) == 1)
  {
    v25 = 1;
    if (v24(&v20[v22], 1, a3) == 1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    (v23)(v38, v20, v11);
    if (v24(&v20[v22], 1, a3) != 1)
    {
      v26 = v37;
      v27 = *(v37 + 32);
      v28 = v33;
      v27(v33, v38, a3);
      v29 = &v20[v22];
      v30 = v34;
      v27(v34, v29, a3);
      v25 = sub_1AE23CCBC();
      v31 = *(v26 + 8);
      v31(v30, a3);
      v31(v28, a3);
LABEL_8:
      v16 = v36;
      goto LABEL_9;
    }

    (*(v37 + 8))(v38, a3);
  }

  v25 = 0;
  v11 = TupleTypeMetadata2;
LABEL_9:
  (*(v16 + 8))(v20, v11);
  return v25 & 1;
}

uint64_t Optional<A>.observableDifference(from:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v6 = v5;
  v68 = a2;
  v73 = a1;
  v9 = *(a3 + 16);
  v69 = *(a4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_1AE23D7CC();
  v65 = *(v11 - 8);
  v66 = v11;
  v12 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v70 = &v62 - v13;
  v75 = AssociatedTypeWitness;
  v74 = *(AssociatedTypeWitness - 8);
  v14 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v64 = &v62 - v16;
  v17 = *(a3 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v71 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v62 - v22;
  v24 = *(v9 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v67 = &v62 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v28);
  v31 = &v62 - v30;
  v32 = *(v17 + 16);
  v33 = v6;
  v34 = a3;
  v32(v23, v33, a3, v29);
  v72 = v24;
  v35 = *(v24 + 48);
  if (v35(v23, 1, v9) == 1)
  {
    (*(v17 + 8))(v23, v34);
    if (v35(v73, 1, v9) == 1)
    {
      return (*(v74 + 56))(a5, 1, 1, v75);
    }

    v40 = v75;
    v44 = swift_conformsToProtocol2();
    if (v44)
    {
      v45 = a5;
      v46 = *(v44 + 8);
      *(&v77 + 1) = v40;
      v78 = v44;
      v47 = v44;
      __swift_allocate_boxed_opaque_existential_1(&v76);
      v46(v40, v47);
      a5 = v45;
    }

    else
    {
      v78 = 0;
      v76 = 0u;
      v77 = 0u;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB5BA3B8, &qword_1AE242400);
    v61 = swift_dynamicCast();
    v58 = *(v74 + 56);
    v59 = v61 ^ 1u;
    v60 = a5;
    return v58(v60, v59, 1, v40);
  }

  v63 = a5;
  v62 = *(v72 + 32);
  v62(v31, v23, v9);
  v37 = v71;
  (v32)(v71, v73, v34);
  if (v35(v37, 1, v9) == 1)
  {
    v38 = v31;
    v39 = v72;
    (*(v17 + 8))(v37, v34);
    v40 = v75;
    v41 = swift_conformsToProtocol2();
    if (v41)
    {
      v42 = *(v41 + 8);
      *(&v77 + 1) = v40;
      v78 = v41;
      v43 = v41;
      __swift_allocate_boxed_opaque_existential_1(&v76);
      v42(v40, v43);
      (*(v39 + 8))(v38, v9);
    }

    else
    {
      (*(v39 + 8))(v38, v9);
      v78 = 0;
      v76 = 0u;
      v77 = 0u;
    }

    v56 = v63;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB5BA3B8, &qword_1AE242400);
    v57 = swift_dynamicCast();
    v58 = *(v74 + 56);
    v59 = v57 ^ 1u;
    v60 = v56;
    return v58(v60, v59, 1, v40);
  }

  v48 = v67;
  v62(v67, v37, v9);
  v49 = v70;
  (*(v69 + 40))(v48, v68, v9);
  v50 = *(v72 + 8);
  v50(v48, v9);
  v50(v31, v9);
  v52 = v74;
  v51 = v75;
  if ((*(v74 + 48))(v49, 1, v75) == 1)
  {
    (*(v65 + 8))(v49, v66);
    return (*(v52 + 56))(v63, 1, 1, v51);
  }

  else
  {
    v53 = *(v52 + 32);
    v54 = v64;
    v53(v64, v49, v51);
    v55 = v63;
    v53(v63, v54, v51);
    return (*(v52 + 56))(v55, 0, 1, v51);
  }
}

uint64_t Optional<A>.visitReferences(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00]();
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, v10, v4);
  v11 = *(v4 + 16);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) != 1)
  {
    (*(*(a3 + 8) + 48))(a1, v11);
    v6 = v12;
    v4 = v11;
  }

  return (*(v6 + 8))(v9, v4);
}

uint64_t Optional<A>.copy(renamingReferences:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v21 = a3;
  v22 = a1;
  v8 = *(a2 - 8);
  v9 = *(v8 + 64);
  v10 = (MEMORY[0x1EEE9AC00])();
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 16);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v8 + 16);
  v19(v12, v5, a2);
  if ((*(v15 + 48))(v12, 1, v14) == 1)
  {
    (*(v8 + 8))(v12, a2);
    return (v19)(a4, v5, a2);
  }

  else
  {
    (*(v15 + 32))(v18, v12, v14);
    (*(*(v21 + 8) + 24))(v22, v14);
    (*(v15 + 8))(v18, v14);
    return (*(v15 + 56))(a4, 0, 1, v14);
  }
}

uint64_t Optional<A>.copy(renamingReferences:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a1)
  {
    v7 = a1;
  }

  else
  {
    v7 = sub_1ADE51288(MEMORY[0x1E69E7CC0]);
  }

  v9 = v7;

  Optional<A>.copy(renamingReferences:)(&v9, a2, a3, a4);
}

uint64_t Optional<A>.needToFinalizeTimestamps()(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v8, v3);
  v9 = *(v3 + 16);
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v7, 1, v9) == 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = (*(*(a2 + 8) + 56))(v9);
    v4 = v10;
    v3 = v9;
  }

  (*(v4 + 8))(v7, v3);
  return v11 & 1;
}

uint64_t Optional<A>.finalizeTimestamps(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 16);
  result = (*(*(v6 - 8) + 48))(v3, 1, v6);
  if (!result)
  {
    v8 = *(*(a3 + 8) + 64);

    return v8(a1, v6);
  }

  return result;
}

uint64_t Optional<A>.minEncodingVersion.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = *(a1 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, v10, a1);
  v11 = *(a1 + 16);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) == 1)
  {
    result = (*(v6 + 8))(v9, a1);
    v14 = 0;
  }

  else
  {
    (*(*(*(a2 + 8) + 8) + 24))(&v16, v11);
    v14 = v16;
    result = (*(v12 + 8))(v9, v11);
  }

  *a3 = v14;
  return result;
}

uint64_t Optional<A>.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1ADE71C08();
  if (!v4)
  {
    v8 = *(a2 + 16);

    sub_1ADE6D740(v3, v8, a3);
  }

  return result;
}

{
  v18[1] = a3;
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 16);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v15[4];
  __swift_project_boxed_opaque_existential_1(v15, v15[3]);
  sub_1AE23E3BC();
  (*(v4 + 16))(v7, v18[2], a2);
  if ((*(v10 + 48))(v7, 1, v9) == 1)
  {
    (*(v4 + 8))(v7, a2);
    __swift_mutable_project_boxed_opaque_existential_1(v19, v20);
    sub_1AE23E07C();
  }

  else
  {
    (*(v10 + 32))(v14, v7, v9);
    __swift_mutable_project_boxed_opaque_existential_1(v19, v20);
    sub_1AE23E06C();
    (*(v10 + 8))(v14, v9);
  }

  return __swift_destroy_boxed_opaque_existential_1(v19);
}

uint64_t sub_1ADE75D24()
{
  v0 = sub_1AE23C78C();
  __swift_allocate_value_buffer(v0, qword_1EB5D7548);
  __swift_project_value_buffer(v0, qword_1EB5D7548);
  return sub_1AE23C77C();
}

uint64_t sub_1ADE75D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v353 = a7;
  v359 = a6;
  v397 = a5;
  v396 = a4;
  v415 = type metadata accessor for RetainedMapRun(0);
  v8 = *(v415 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v415);
  v403 = &v344 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v394 = &v344 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v389 = &v344 - v14;
  v383 = sub_1AE23C0EC();
  v355 = *(v383 - 8);
  v15 = *(v355 + 64);
  MEMORY[0x1EEE9AC00](v383);
  v357 = &v344 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v356 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA440, &unk_1AE24CCB0);
  v17 = *(*(v356 - 8) + 64);
  MEMORY[0x1EEE9AC00](v356);
  v380 = &v344 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v366 = &v344 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v365 = &v344 - v22;
  v364 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA448, &qword_1AE242528);
  v23 = *(*(v364 - 8) + 64);
  MEMORY[0x1EEE9AC00](v364);
  v352 = &v344 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v358 = &v344 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E70, &unk_1AE240EC0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v347 = &v344 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v351 = &v344 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v349 = &v344 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v344 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA450, &unk_1AE25B3B0);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v405 = &v344 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v410 = &v344 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v395 = &v344 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v404 = &v344 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v392 = &v344 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v401 = &v344 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v362 = (&v344 - v51);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA148, &qword_1AE241B60);
  v413 = *(v52 - 8);
  v414 = v52;
  v53 = *(v413 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v406 = &v344 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v55);
  v402 = &v344 - v56;
  MEMORY[0x1EEE9AC00](v57);
  v400 = &v344 - v58;
  MEMORY[0x1EEE9AC00](v59);
  v361 = (&v344 - v60);
  v61 = sub_1AE23C12C();
  v62 = *(v61 - 8);
  v63 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v350 = &v344 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v65);
  v374 = &v344 - v66;
  MEMORY[0x1EEE9AC00](v67);
  v381 = &v344 - v68;
  MEMORY[0x1EEE9AC00](v69);
  v367 = (&v344 - v70);
  MEMORY[0x1EEE9AC00](v71);
  v370 = &v344 - v72;
  MEMORY[0x1EEE9AC00](v73);
  v369 = &v344 - v74;
  MEMORY[0x1EEE9AC00](v75);
  v376 = &v344 - v76;
  MEMORY[0x1EEE9AC00](v77);
  v379 = &v344 - v78;
  MEMORY[0x1EEE9AC00](v79);
  v411 = (&v344 - v80);
  MEMORY[0x1EEE9AC00](v81);
  v83 = &v344 - v82;
  v363 = type metadata accessor for Replica();
  v387 = *(v363 - 8);
  v84 = v387[8];
  MEMORY[0x1EEE9AC00](v363);
  v345 = &v344 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v86);
  v348 = &v344 - v87;
  MEMORY[0x1EEE9AC00](v88);
  v346 = &v344 - v89;
  MEMORY[0x1EEE9AC00](v90);
  v377 = &v344 - v91;
  MEMORY[0x1EEE9AC00](v92);
  v378 = &v344 - v93;
  MEMORY[0x1EEE9AC00](v94);
  v382 = &v344 - v95;
  MEMORY[0x1EEE9AC00](v96);
  v98 = &v344 - v97;
  MEMORY[0x1EEE9AC00](v99);
  v385 = &v344 - v100;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA458, &qword_1AE251E00);
  v102 = *(*(v101 - 8) + 64);
  MEMORY[0x1EEE9AC00](v101 - 8);
  v375 = &v344 - ((v103 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v104);
  v368 = &v344 - v105;
  MEMORY[0x1EEE9AC00](v106);
  v409 = &v344 - v107;
  MEMORY[0x1EEE9AC00](v108);
  v408 = &v344 - v109;
  v110 = (a2 + 64);
  v111 = 1 << *(a2 + 32);
  v112 = -1;
  if (v111 < 64)
  {
    v112 = ~(-1 << v111);
  }

  v113 = v112 & *(a2 + 64);
  v373 = (v111 + 63) >> 6;
  v391 = (v62 + 16);
  v398 = (v62 + 32);
  v388 = v62;
  v393 = (v62 + 8);
  v360 = v8;
  v412 = (v8 + 48);
  v386 = a2;

  v114 = 0;
  v371 = v36;
  v399 = v61;
  v390 = v83;
  v407 = v98;
  v384 = (a2 + 64);
LABEL_8:
  if (v113)
  {
    v115 = v114;
    goto LABEL_18;
  }

  if (v373 <= v114 + 1)
  {
    v116 = v114 + 1;
  }

  else
  {
    v116 = v373;
  }

  v117 = v116 - 1;
  v119 = v408;
  v118 = v409;
  while (1)
  {
    v115 = v114 + 1;
    if (__OFADD__(v114, 1))
    {
      break;
    }

    if (v115 >= v373)
    {
      v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
      (*(*(v157 - 8) + 56))(v118, 1, 1, v157);
      v113 = 0;
      v114 = v117;
      goto LABEL_19;
    }

    v113 = *(v110 + v115);
    ++v114;
    if (v113)
    {
      v114 = v115;
LABEL_18:
      v120 = __clz(__rbit64(v113));
      v113 &= v113 - 1;
      v121 = v120 | (v115 << 6);
      v122 = v386;
      v123 = v385;
      sub_1ADDDE338(*(v386 + 48) + v387[9] * v121, v385, type metadata accessor for Replica);
      v124 = v388;
      v125 = v390;
      v126 = v399;
      (*(v388 + 16))(v390, *(v122 + 56) + *(v388 + 72) * v121, v399);
      v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
      v128 = *(v127 + 48);
      v129 = v123;
      v118 = v409;
      sub_1ADDDE4D8(v129, v409, type metadata accessor for Replica);
      v130 = &v118[v128];
      v61 = v126;
      (*(v124 + 32))(v130, v125, v126);
      (*(*(v127 - 8) + 56))(v118, 0, 1, v127);
      v98 = v407;
      v119 = v408;
LABEL_19:
      sub_1ADDD2198(v118, v119, &qword_1EB5BA458, &qword_1AE251E00);
      v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
      v132 = *(v131 - 8);
      v133 = *(v132 + 48);
      if ((v133)(v119, 1, v131) == 1)
      {
        v372 = v133;
        v373 = v132 + 48;

        v166 = *(v396 + 64);
        v378 = v396 + 64;
        v167 = 1 << *(v396 + 32);
        v168 = -1;
        if (v167 < 64)
        {
          v168 = ~(-1 << v167);
        }

        v169 = v168 & v166;
        v354 = (v167 + 63) >> 6;
        v367 = (v132 + 56);
        v362 = (v387 + 7);
        v361 = (v387 + 6);
        v355 += 8;
        v411 = (v360 + 56);

        v170 = 0;
        v171 = v404;
        v172 = v392;
        v173 = v401;
        v174 = v377;
        v360 = v131;
LABEL_52:
        v178 = v375;
        if (!v169)
        {
          if (v354 <= (v170 + 1))
          {
            v181 = (v170 + 1);
          }

          else
          {
            v181 = v354;
          }

          v182 = (v181 - 1);
          while (1)
          {
            v180 = (v170 + 1);
            if (__OFADD__(v170, 1))
            {
              goto LABEL_183;
            }

            if (v180 >= v354)
            {
              v382 = 0;
              v193 = 1;
              v379 = v182;
              goto LABEL_63;
            }

            v169 = *(v378 + 8 * v180);
            ++v170;
            if (v169)
            {
              v179 = v174;
              v379 = v180;
              goto LABEL_62;
            }
          }
        }

        v179 = v174;
        v379 = v170;
        v180 = v170;
LABEL_62:
        v382 = (v169 - 1) & v169;
        v183 = __clz(__rbit64(v169)) | (v180 << 6);
        v184 = v396;
        v185 = v385;
        sub_1ADDDE338(*(v396 + 48) + v387[9] * v183, v385, type metadata accessor for Replica);
        v186 = *(v184 + 56);
        v187 = v388;
        v188 = v390;
        (*(v388 + 16))(v390, v186 + *(v388 + 72) * v183, v61);
        v189 = *(v131 + 48);
        v190 = v185;
        v191 = v375;
        sub_1ADDDE4D8(v190, v375, type metadata accessor for Replica);
        v192 = v191 + v189;
        v178 = v191;
        (*(v187 + 32))(v192, v188, v61);
        v193 = 0;
        v174 = v179;
LABEL_63:
        (*v367)(v178, v193, 1, v131);
        v194 = v368;
        sub_1ADDD2198(v178, v368, &qword_1EB5BA458, &qword_1AE251E00);
        if ((v372)(v194, 1, v131) == 1)
        {
        }

        v195 = *(v131 + 48);
        sub_1ADDDE4D8(v194, v174, type metadata accessor for Replica);
        (*v398)(v381, v194 + v195, v61);
        v196 = v386;
        if (*(v386 + 16))
        {
          v197 = sub_1ADDD8A6C(v174);
          v198 = *v391;
          if (v199)
          {
            v200 = v388;
            v201 = v350;
            v202 = v399;
            v198(v350, *(v196 + 56) + *(v388 + 72) * v197, v399);
            v203 = v381;
            v198(v390, v381, v202);
            v198(v369, v203, v202);
            v198(v370, v201, v202);
            sub_1ADE89268(&qword_1ED96A278, MEMORY[0x1E6969B50]);
            v204 = v376;
            sub_1AE23D8AC();
            v205 = v374;
            sub_1AE23D88C();
            v175 = v205;
            v206 = *(v200 + 8);
            v206(v204, v202);
            v174 = v377;
            v206(v201, v202);
            v131 = v360;
            v207 = v371;
            if (sub_1AE23C0AC())
            {
              goto LABEL_51;
            }

LABEL_71:
            sub_1ADDDE338(v174, v207, type metadata accessor for Replica);
            v209 = v363;
            v408 = *v362;
            (v408)(v207, 0, 1, v363);
            v210 = *(v364 + 48);
            v211 = v207;
            v212 = v358;
            sub_1ADDCEE40(v359, v358, &unk_1EB5B9E70, &unk_1AE240EC0);
            sub_1ADDCEE40(v211, v212 + v210, &unk_1EB5B9E70, &unk_1AE240EC0);
            v213 = *v361;
            v214 = (*v361)(v212, 1, v209);
            v409 = v213;
            if (v214 == 1)
            {
              sub_1ADDCEDE0(v211, &unk_1EB5B9E70, &unk_1AE240EC0);
              if ((v213)(v212 + v210, 1, v209) == 1)
              {
                sub_1ADDCEDE0(v212, &unk_1EB5B9E70, &unk_1AE240EC0);
                goto LABEL_74;
              }

LABEL_79:
              v225 = v212;
              v226 = &qword_1EB5BA448;
              v227 = &qword_1AE242528;
LABEL_80:
              sub_1ADDCEDE0(v225, v226, v227);
              goto LABEL_81;
            }

            v224 = v349;
            sub_1ADDCEE40(v212, v349, &unk_1EB5B9E70, &unk_1AE240EC0);
            if ((v213)(v212 + v210, 1, v209) == 1)
            {
              sub_1ADDCEDE0(v371, &unk_1EB5B9E70, &unk_1AE240EC0);
              sub_1ADE0DC8C(v224, type metadata accessor for Replica);
              goto LABEL_79;
            }

            v263 = v212 + v210;
            v264 = v346;
            sub_1ADDDE4D8(v263, v346, type metadata accessor for Replica);
            if (*(v224 + *(v209 + 20)) != *(v264 + *(v209 + 20)))
            {
              sub_1ADE0DC8C(v264, type metadata accessor for Replica);
              sub_1ADDCEDE0(v371, &unk_1EB5B9E70, &unk_1AE240EC0);
              sub_1ADE0DC8C(v224, type metadata accessor for Replica);
              v225 = v212;
              v226 = &unk_1EB5B9E70;
              v227 = &unk_1AE240EC0;
              goto LABEL_80;
            }

            v265 = sub_1AE23BF8C();
            v266 = v264;
            v267 = v265;
            sub_1ADE0DC8C(v266, type metadata accessor for Replica);
            sub_1ADDCEDE0(v371, &unk_1EB5B9E70, &unk_1AE240EC0);
            sub_1ADE0DC8C(v224, type metadata accessor for Replica);
            sub_1ADDCEDE0(v212, &unk_1EB5B9E70, &unk_1AE240EC0);
            if (v267)
            {
LABEL_74:
              v215 = v348;
              sub_1ADDDE338(v377, v348, type metadata accessor for Replica);
              swift_beginAccess();
              v216 = sub_1ADDE3EF8(v418, v215);
              if (*v217)
              {
                v218 = v217;
                v384 = v216;
                v219 = v357;
                sub_1AE23C10C();
                v220 = v365;
                sub_1AE23C0DC();
                (*v355)(v219, v383);
                v221 = *(v356 + 36);
                v222 = sub_1ADE89268(&qword_1ED96A708, MEMORY[0x1E6969B30]);
                sub_1AE23D46C();
                if (*&v221[v220] != v416[0])
                {
                  v407 = v221;
                  while (1)
                  {
                    v326 = sub_1AE23D51C();
                    v328 = *v327;
                    v329 = v327[1];
                    v326(v416, 0);
                    sub_1AE23D47C();
                    v330 = sub_1ADDE22AC(v328, v329);
                    if (v330 != v331)
                    {
                      break;
                    }

LABEL_150:
                    sub_1ADDE2B98(v330, v331);
                    v220 = v365;
                    sub_1AE23D46C();
                    if (*&v407[v220] == v416[0])
                    {
                      goto LABEL_76;
                    }
                  }

                  if (v331 < v330)
                  {
                    goto LABEL_188;
                  }

                  v332 = v330;
                  v408 = v331;
                  v409 = v330;
                  if (v330 >= v331)
                  {
                    goto LABEL_189;
                  }

                  while ((v330 & 0x8000000000000000) == 0)
                  {
                    if (v332 >= *(*v218 + 16))
                    {
                      goto LABEL_179;
                    }

                    v333 = v222;
                    v334 = (*(v413 + 80) + 32) & ~*(v413 + 80);
                    v335 = *(v413 + 72) * v332;
                    v336 = v400;
                    sub_1ADDCEE40(*v218 + v334 + v335, v400, &qword_1EB5BA148, &qword_1AE241B60);
                    sub_1ADDD2198(v336 + *(v414 + 36), v172, &qword_1EB5BA450, &unk_1AE25B3B0);
                    if ((*v412)(v172, 1, v415) == 1)
                    {
                      sub_1ADDCEDE0(v172, &qword_1EB5BA450, &unk_1AE25B3B0);
                      (*v411)(v173, 1, 1, v415);
                    }

                    else
                    {
                      v337 = v172;
                      v338 = v389;
                      sub_1ADDDE4D8(v337, v389, type metadata accessor for RetainedMapRun);
                      sub_1ADDCEE40(v338, v173, &qword_1EB5BA460, &qword_1AE251020);
                      v339 = *(v338 + *(v415 + 20));
                      sub_1ADE0DC8C(v338, type metadata accessor for RetainedMapRun);
                      if (__OFADD__(v339, 1))
                      {
                        goto LABEL_182;
                      }

                      *(v173 + *(v415 + 20)) = v339 + 1;
                      (*v411)(v173, 0, 1);
                      v172 = v392;
                    }

                    v340 = *v218;
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    *v218 = v340;
                    v222 = v333;
                    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                    {
                      v340 = sub_1ADF799F0(v340);
                      *v218 = v340;
                    }

                    if (v332 >= v340[2])
                    {
                      goto LABEL_180;
                    }

                    ++v332;
                    v342 = v340 + v334 + *(v414 + 36) + v335;
                    v173 = v401;
                    sub_1ADDE4820(v401, v342);
                    v331 = v408;
                    v330 = v409;
                    if (v408 == v332)
                    {
                      goto LABEL_150;
                    }
                  }

                  goto LABEL_178;
                }

LABEL_76:
                sub_1ADDCEDE0(v220, &qword_1EB5BA440, &unk_1AE24CCB0);
                (v384)(v418, 0);
                swift_endAccess();
                v223 = v348;
              }

              else
              {
                (v216)(v418, 0);
                swift_endAccess();
                v223 = v215;
              }

              sub_1ADE0DC8C(v223, type metadata accessor for Replica);
              goto LABEL_50;
            }

LABEL_81:
            v228 = v351;
            sub_1ADDDE338(v377, v351, type metadata accessor for Replica);
            v229 = v363;
            (v408)(v228, 0, 1, v363);
            v230 = *(v364 + 48);
            v231 = v352;
            sub_1ADDCEE40(v353, v352, &unk_1EB5B9E70, &unk_1AE240EC0);
            sub_1ADDCEE40(v228, v231 + v230, &unk_1EB5B9E70, &unk_1AE240EC0);
            v232 = v409;
            if ((v409)(v231, 1, v229) == 1)
            {
              sub_1ADDCEDE0(v228, &unk_1EB5B9E70, &unk_1AE240EC0);
              v233 = (v232)(v231 + v230, 1, v229);
              v234 = v397;
              v235 = v383;
              if (v233 == 1)
              {
                sub_1ADDCEDE0(v231, &unk_1EB5B9E70, &unk_1AE240EC0);
                v236 = v377;
                goto LABEL_84;
              }

LABEL_92:
              v249 = v231;
              v250 = &qword_1EB5BA448;
              v251 = &qword_1AE242528;
LABEL_93:
              sub_1ADDCEDE0(v249, v250, v251);
              v236 = v377;
              goto LABEL_94;
            }

            v248 = v347;
            sub_1ADDCEE40(v231, v347, &unk_1EB5B9E70, &unk_1AE240EC0);
            if ((v232)(v231 + v230, 1, v229) == 1)
            {
              sub_1ADDCEDE0(v228, &unk_1EB5B9E70, &unk_1AE240EC0);
              sub_1ADE0DC8C(v248, type metadata accessor for Replica);
              v234 = v397;
              v235 = v383;
              goto LABEL_92;
            }

            v298 = v345;
            sub_1ADDDE4D8(v231 + v230, v345, type metadata accessor for Replica);
            v234 = v397;
            v235 = v383;
            if (*(v248 + *(v229 + 20)) != *(v298 + *(v229 + 20)))
            {
              sub_1ADE0DC8C(v298, type metadata accessor for Replica);
              sub_1ADDCEDE0(v228, &unk_1EB5B9E70, &unk_1AE240EC0);
              sub_1ADE0DC8C(v248, type metadata accessor for Replica);
              v249 = v231;
              v250 = &unk_1EB5B9E70;
              v251 = &unk_1AE240EC0;
              goto LABEL_93;
            }

            v299 = sub_1AE23BF8C();
            sub_1ADE0DC8C(v298, type metadata accessor for Replica);
            sub_1ADDCEDE0(v228, &unk_1EB5B9E70, &unk_1AE240EC0);
            sub_1ADE0DC8C(v248, type metadata accessor for Replica);
            sub_1ADDCEDE0(v231, &unk_1EB5B9E70, &unk_1AE240EC0);
            v236 = v377;
            if ((v299 & 1) == 0)
            {
LABEL_94:
              swift_beginAccess();
              v252 = *(v234 + 32);
              v253 = swift_isUniquelyReferenced_nonNull_native();
              v418[0] = *(v234 + 32);
              v254 = v418[0];
              *(v234 + 32) = 0x8000000000000000;
              v256 = sub_1ADDD8A6C(v236);
              v257 = v254[2];
              v258 = (v255 & 1) == 0;
              v259 = v257 + v258;
              if (__OFADD__(v257, v258))
              {
                goto LABEL_190;
              }

              v260 = v255;
              if (v254[3] >= v259)
              {
                if (v253)
                {
                  *(v234 + 32) = v254;
                  if ((v255 & 1) == 0)
                  {
                    goto LABEL_104;
                  }
                }

                else
                {
                  sub_1ADF6E86C();
                  v254 = v418[0];
                  *(v234 + 32) = v418[0];
                  if ((v260 & 1) == 0)
                  {
                    goto LABEL_104;
                  }
                }
              }

              else
              {
                sub_1ADDE4890(v259, v253);
                v254 = v418[0];
                v261 = sub_1ADDD8A6C(v377);
                if ((v260 & 1) != (v262 & 1))
                {
                  goto LABEL_192;
                }

                v256 = v261;
                *(v234 + 32) = v254;
                if (v260)
                {
                  goto LABEL_105;
                }

LABEL_104:
                v418[0] = MEMORY[0x1E69E7CC0];
                v419 = 0;
                swift_unknownObjectWeakInit();
                v419 = 0;
                swift_unknownObjectWeakAssign();
                v268 = v385;
                sub_1ADDDE338(v377, v385, type metadata accessor for Replica);
                sub_1ADDE21EC(v256, v268, v418, v254);
              }

LABEL_105:
              v269 = v254[7];
              v270 = v357;
              sub_1AE23C10C();
              v271 = v380;
              sub_1AE23C0DC();
              (*v355)(v270, v235);
              v272 = *(v356 + 36);
              sub_1ADE89268(&qword_1ED96A708, MEMORY[0x1E6969B30]);
              v273 = v271;
              sub_1AE23D46C();
              v274 = *(v272 + v271) == v418[0];
              v275 = v405;
              if (!v274)
              {
                v384 = v272;
                v409 = (v269 + 24 * v256);
                while (1)
                {
                  v276 = sub_1AE23D51C();
                  v278 = *v277;
                  v279 = v277[1];
                  v276(v418, 0);
                  sub_1AE23D47C();
                  v280 = v278;
                  v281 = v409;
                  v282 = sub_1ADDE22AC(v280, v279);
                  v284 = v410;
                  if (v282 != v283)
                  {
                    break;
                  }

LABEL_107:
                  sub_1ADDE2B98(v282, v283);
                  v273 = v380;
                  sub_1AE23D46C();
                  if (*(v384 + v273) == v418[0])
                  {
                    goto LABEL_49;
                  }
                }

                if (v283 < v282)
                {
                  goto LABEL_184;
                }

                v285 = v282;
                v407 = v283;
                v408 = v282;
                if (v282 >= v283)
                {
                  goto LABEL_185;
                }

                while ((v282 & 0x8000000000000000) == 0)
                {
                  if (v285 >= *(*v281 + 16))
                  {
                    goto LABEL_171;
                  }

                  v286 = v171;
                  v287 = (*(v413 + 80) + 32) & ~*(v413 + 80);
                  v288 = *(v413 + 72) * v285;
                  v289 = v406;
                  sub_1ADDCEE40(*v281 + v287 + v288, v406, &qword_1EB5BA148, &qword_1AE241B60);
                  v290 = v415;
                  sub_1ADDD2198(v289 + *(v414 + 36), v275, &qword_1EB5BA450, &unk_1AE25B3B0);
                  if ((*v412)(v275, 1, v290) == 1)
                  {
                    sub_1ADDCEDE0(v275, &qword_1EB5BA450, &unk_1AE25B3B0);
                    v291 = type metadata accessor for FinalizedTimestamp(0);
                    (*(*(v291 - 8) + 56))(v284, 1, 1, v291);
                    *(v284 + *(v415 + 20)) = 1;
                    (*v411)(v284, 0, 1);
                    v171 = v286;
                  }

                  else
                  {
                    v292 = v275;
                    v293 = v403;
                    sub_1ADDDE4D8(v292, v403, type metadata accessor for RetainedMapRun);
                    sub_1ADDCEE40(v293, v284, &qword_1EB5BA460, &qword_1AE251020);
                    v294 = *(v293 + *(v415 + 20));
                    sub_1ADE0DC8C(v293, type metadata accessor for RetainedMapRun);
                    if (__OFADD__(v294, 1))
                    {
                      goto LABEL_174;
                    }

                    *(v284 + *(v415 + 20)) = v294 + 1;
                    (*v411)(v284, 0, 1);
                    v275 = v405;
                    v171 = v404;
                  }

                  v281 = v409;
                  v295 = *v409;
                  v296 = swift_isUniquelyReferenced_nonNull_native();
                  *v281 = v295;
                  if ((v296 & 1) == 0)
                  {
                    v295 = sub_1ADF799F0(v295);
                    *v281 = v295;
                  }

                  if (v285 >= v295[2])
                  {
                    goto LABEL_172;
                  }

                  ++v285;
                  v297 = v295 + v287 + *(v414 + 36) + v288;
                  v284 = v410;
                  sub_1ADDE4820(v410, v297);
                  v283 = v407;
                  v282 = v408;
                  if (v407 == v285)
                  {
                    goto LABEL_107;
                  }
                }

                __break(1u);
LABEL_171:
                __break(1u);
LABEL_172:
                __break(1u);
                break;
              }

LABEL_49:
              sub_1ADDCEDE0(v273, &qword_1EB5BA440, &unk_1AE24CCB0);
              swift_endAccess();
              v172 = v392;
              v173 = v401;
LABEL_50:
              v175 = v374;
              v174 = v377;
              v131 = v360;
LABEL_51:
              v176 = *v393;
              v177 = v175;
              v61 = v399;
              (*v393)(v177, v399);
              v176(v381, v61);
              sub_1ADE0DC8C(v174, type metadata accessor for Replica);
              v169 = v382;
              v170 = v379;
              goto LABEL_52;
            }

LABEL_84:
            swift_beginAccess();
            v237 = *(v234 + 32);
            v238 = swift_isUniquelyReferenced_nonNull_native();
            v418[0] = *(v234 + 32);
            v239 = v418[0];
            *(v234 + 32) = 0x8000000000000000;
            v241 = sub_1ADDD8A6C(v236);
            v242 = v239[2];
            v243 = (v240 & 1) == 0;
            v244 = v242 + v243;
            if (__OFADD__(v242, v243))
            {
              goto LABEL_191;
            }

            v245 = v240;
            if (v239[3] >= v244)
            {
              if (v238)
              {
                *(v234 + 32) = v239;
                if (v240)
                {
                  goto LABEL_132;
                }
              }

              else
              {
                sub_1ADF6E86C();
                v239 = v418[0];
                *(v234 + 32) = v418[0];
                if (v245)
                {
                  goto LABEL_132;
                }
              }
            }

            else
            {
              sub_1ADDE4890(v244, v238);
              v239 = v418[0];
              v246 = sub_1ADDD8A6C(v377);
              if ((v245 & 1) != (v247 & 1))
              {
                goto LABEL_192;
              }

              v241 = v246;
              *(v234 + 32) = v239;
              if (v245)
              {
LABEL_132:
                v301 = v239[7];
                v302 = v357;
                sub_1AE23C10C();
                v303 = v366;
                sub_1AE23C0DC();
                (*v355)(v302, v235);
                v304 = *(v356 + 36);
                v305 = sub_1ADE89268(&qword_1ED96A708, MEMORY[0x1E6969B30]);
                v273 = v303;
                sub_1AE23D46C();
                v274 = *&v304[v303] == v418[0];
                v306 = v395;
                if (!v274)
                {
                  v307 = v301 + 24 * v241;
                  v408 = v304;
                  v409 = v305;
                  while (1)
                  {
                    v308 = sub_1AE23D51C();
                    v310 = *v309;
                    v311 = v309[1];
                    v308(v418, 0);
                    sub_1AE23D47C();
                    v312 = sub_1ADDE22AC(v310, v311);
                    v314 = v312;
                    v315 = v313;
                    if (v312 != v313)
                    {
                      break;
                    }

LABEL_134:
                    sub_1ADDE2B98(v314, v315);
                    v273 = v366;
                    sub_1AE23D46C();
                    if (*&v408[v273] == v418[0])
                    {
                      goto LABEL_49;
                    }
                  }

                  if (v313 < v312)
                  {
                    goto LABEL_186;
                  }

                  v316 = v312;
                  if (v312 >= v313)
                  {
                    goto LABEL_187;
                  }

                  while ((v314 & 0x8000000000000000) == 0)
                  {
                    if (v316 >= *(*v307 + 16))
                    {
                      goto LABEL_176;
                    }

                    v317 = (*(v413 + 80) + 32) & ~*(v413 + 80);
                    v318 = *(v413 + 72) * v316;
                    v319 = v402;
                    sub_1ADDCEE40(*v307 + v317 + v318, v402, &qword_1EB5BA148, &qword_1AE241B60);
                    sub_1ADDD2198(v319 + *(v414 + 36), v306, &qword_1EB5BA450, &unk_1AE25B3B0);
                    if ((*v412)(v306, 1, v415) == 1)
                    {
                      sub_1ADDCEDE0(v306, &qword_1EB5BA450, &unk_1AE25B3B0);
                      v320 = type metadata accessor for FinalizedTimestamp(0);
                      (*(*(v320 - 8) + 56))(v171, 1, 1, v320);
                      *(v171 + *(v415 + 20)) = 2;
                      (*v411)(v171, 0, 1);
                    }

                    else
                    {
                      v321 = v306;
                      v322 = v394;
                      sub_1ADDDE4D8(v321, v394, type metadata accessor for RetainedMapRun);
                      sub_1ADDCEE40(v322, v171, &qword_1EB5BA460, &qword_1AE251020);
                      v323 = *(v322 + *(v415 + 20));
                      sub_1ADE0DC8C(v322, type metadata accessor for RetainedMapRun);
                      if (__OFADD__(v323, 1))
                      {
                        goto LABEL_181;
                      }

                      *(v171 + *(v415 + 20)) = v323 + 1;
                      (*v411)(v171, 0, 1);
                      v306 = v395;
                    }

                    v324 = *v307;
                    v325 = swift_isUniquelyReferenced_nonNull_native();
                    *v307 = v324;
                    if ((v325 & 1) == 0)
                    {
                      v324 = sub_1ADF799F0(v324);
                      *v307 = v324;
                    }

                    if (v316 >= v324[2])
                    {
                      goto LABEL_177;
                    }

                    ++v316;
                    sub_1ADDE4820(v171, v324 + v317 + *(v414 + 36) + v318);
                    if (v315 == v316)
                    {
                      goto LABEL_134;
                    }
                  }

                  goto LABEL_175;
                }

                goto LABEL_49;
              }
            }

            v418[0] = MEMORY[0x1E69E7CC0];
            v419 = 0;
            swift_unknownObjectWeakInit();
            v419 = 0;
            swift_unknownObjectWeakAssign();
            v300 = v385;
            sub_1ADDDE338(v377, v385, type metadata accessor for Replica);
            sub_1ADDE21EC(v241, v300, v418, v239);
            goto LABEL_132;
          }

          v207 = v371;
          v208 = v399;
        }

        else
        {
          v198 = *v391;
          v208 = v399;
          v207 = v371;
        }

        v175 = v374;
        v198(v374, v381, v208);
        if ((sub_1AE23C0AC() & 1) == 0)
        {
          goto LABEL_71;
        }

        goto LABEL_51;
      }

      v134 = *(v131 + 48);
      sub_1ADDDE4D8(v119, v98, type metadata accessor for Replica);
      (*v398)(v411, v119 + v134, v61);
      if (*(v396 + 16) && (v135 = sub_1ADDD8A6C(v98), (v136 & 1) != 0))
      {
        v137 = *(v388 + 16);
        v138 = v379;
        v139 = v399;
        v137(v379, *(v396 + 56) + *(v388 + 72) * v135, v399);
        v140 = v378;
        sub_1ADDDE338(v98, v378, type metadata accessor for Replica);
        swift_beginAccess();
        v141 = sub_1ADDE3EF8(v418, v140);
        v110 = v384;
        if (*v142)
        {
          v143 = v411;
          v372 = v141;
          v137(v376, v411, v139);
          v137(v370, v143, v139);
          v137(v367, v138, v139);
          sub_1ADE89268(&qword_1ED96A278, MEMORY[0x1E6969B50]);
          v144 = v369;
          sub_1AE23D8AC();
          v145 = v390;
          sub_1AE23D88C();
          v146 = *v393;
          (*v393)(v144, v139);
          sub_1AE220F80();
          (v372)(v418, 0);
          swift_endAccess();
          v146(v145, v139);
          sub_1ADE0DC8C(v378, type metadata accessor for Replica);
          v146(v379, v139);
        }

        else
        {
          (v141)(v418, 0);
          swift_endAccess();
          sub_1ADE0DC8C(v140, type metadata accessor for Replica);
          (*v393)(v138, v139);
        }

        v98 = v407;
      }

      else
      {
        v147 = v382;
        sub_1ADDDE338(v98, v382, type metadata accessor for Replica);
        swift_beginAccess();
        v148 = sub_1ADDE3EF8(v418, v147);
        v110 = v384;
        if (*v149)
        {
          sub_1AE220F80();
        }

        (v148)(v418, 0);
        swift_endAccess();
        sub_1ADE0DC8C(v147, type metadata accessor for Replica);
      }

      v150 = v397;
      swift_beginAccess();
      v151 = *(v150 + 32);
      if (!*(v151 + 16) || (v152 = sub_1ADDD8A6C(v98), (v153 & 1) == 0))
      {
        memset(v416, 0, sizeof(v416));
LABEL_5:
        sub_1ADDCEDE0(v416, &qword_1EB5BA468, &unk_1AE259210);
        swift_endAccess();
        goto LABEL_6;
      }

      sub_1ADDE56CC(*(v151 + 56) + 24 * v152, v416);
      if (!v416[0])
      {
        goto LABEL_5;
      }

      sub_1ADDE56CC(v416, &v417);
      sub_1ADDCEDE0(v416, &qword_1EB5BA468, &unk_1AE259210);
      swift_endAccess();
      v154 = *(v417 + 16);
      v61 = v399;
      if (!v154)
      {
        sub_1ADDE5C20(&v417);
LABEL_38:
        v158 = v397;
        swift_beginAccess();
        v159 = *(v158 + 32);
        v160 = sub_1ADDD8A6C(v98);
        if (v161)
        {
          v162 = v160;
          v163 = *(v158 + 32);
          v164 = swift_isUniquelyReferenced_nonNull_native();
          v165 = *(v158 + 32);
          v417 = v165;
          *(v158 + 32) = 0x8000000000000000;
          if (!v164)
          {
            sub_1ADF6E86C();
            v165 = v417;
          }

          sub_1ADE0DC8C(*(v165 + 48) + v387[9] * v162, type metadata accessor for Replica);
          sub_1ADDE5634(*(v165 + 56) + 24 * v162, v418);
          sub_1ADF6CF18(v162, v165);
          *(v158 + 32) = v165;
        }

        else
        {
          v418[0] = 0;
          v418[1] = 0;
          v419 = 0;
        }

        swift_endAccess();
        sub_1ADDCEDE0(v418, &qword_1EB5BA468, &unk_1AE259210);
LABEL_6:
        v61 = v399;
        (*v393)(v411, v399);
        goto LABEL_7;
      }

      if (v154 != 1)
      {
        sub_1ADDE5C20(&v417);
        goto LABEL_43;
      }

      v155 = v361;
      sub_1ADDCEE40(v417 + ((*(v413 + 80) + 32) & ~*(v413 + 80)), v361, &qword_1EB5BA148, &qword_1AE241B60);
      v156 = v362;
      sub_1ADDD2198(v155 + *(v414 + 36), v362, &qword_1EB5BA450, &unk_1AE25B3B0);
      LODWORD(v155) = (*v412)(v156, 1, v415);
      sub_1ADDCEDE0(v156, &qword_1EB5BA450, &unk_1AE25B3B0);
      sub_1ADDE5C20(&v417);
      if (v155 == 1)
      {
        goto LABEL_38;
      }

LABEL_43:
      (*v393)(v411, v61);
LABEL_7:
      sub_1ADE0DC8C(v98, type metadata accessor for Replica);
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
LABEL_183:
  __break(1u);
LABEL_184:
  __break(1u);
LABEL_185:
  __break(1u);
LABEL_186:
  __break(1u);
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
  result = sub_1AE23E27C();
  __break(1u);
  return result;
}

uint64_t sub_1ADE78C04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  *&v51 = a1;
  *(&v51 + 1) = a2;
  swift_beginAccess();
  v12 = *(a3 + 16);
  v13 = *(a3 + 24);
  v14 = *(a3 + 32);

  sub_1ADDF8898(v12, v13, v14);

  v15 = *(&v51 + 1);
  if (!*(*(&v51 + 1) + 16))
  {
    v31 = *(a3 + 24);
    v32 = *(a3 + 32);
    *a5 = *(a3 + 16);
    *(a5 + 8) = v31;
    v33 = v51;
    *(a5 + 16) = v32;
    *(a5 + 24) = v33;
    *(a5 + 32) = v15;
  }

  v47 = a5;
  v52 = v6;
  v16 = (a4 + OBJC_IVAR___CRContext_crdtDatabase);
  v18 = *(a4 + OBJC_IVAR___CRContext_crdtDatabase);
  v17 = *(a4 + OBJC_IVAR___CRContext_crdtDatabase + 8);
  ObjectType = swift_getObjectType();
  v20 = a4;
  v21 = *(v17 + 8);
  swift_unknownObjectRetain();
  v22 = v21(ObjectType, v17);
  swift_unknownObjectRelease();
  if ((v22 & 1) == 0)
  {
    v34 = *v16;
    v35 = v16[1];
    v36 = swift_getObjectType();
    MEMORY[0x1EEE9AC00](v36);
    v43 = a3;
    v44 = a1;
    v45 = a2;
    v46 = v20;
    v37 = *(v35 + 24);
    swift_unknownObjectRetain();
    v37(&v48, sub_1ADE89240, v42, &type metadata for Renames, v36, v35);
    swift_unknownObjectRelease();
    v38 = v48;
    LOBYTE(v37) = v49;
    v39 = v50;
    result = sub_1ADDF8898(v48, v49, v50);
    v40 = v47;
    *v47 = v38;
    *(v40 + 8) = v37;
    v40[2] = v39;
    *(v40 + 3) = v51;
    return result;
  }

  result = sub_1AE23BF2C();
  if ((*&v24 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else if (v24 > -9.22337204e18)
  {
    if (v24 < 9.22337204e18)
    {
      v25 = v24;
      v48 = *(a3 + 32);
      v26 = *v16;
      v27 = v16[1];
      v28 = swift_getObjectType();
      MEMORY[0x1EEE9AC00](v28);
      v42[0] = v20;
      v42[1] = &v51;
      v43 = &v48;
      v44 = a3;
      v45 = v25;
      v29 = *(v27 + 24);

      swift_unknownObjectRetain();
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA4A8, &unk_1AE242540);
      v29(sub_1ADE8924C, &v41, v30, v28, v27);
      swift_unknownObjectRelease();
    }

    goto LABEL_11;
  }

  __break(1u);
LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_1ADE78F48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
  v10 = *(*(v81 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v81);
  v80 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v79 = &v65 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v78 = &v65 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v77 = &v65 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v76 = &v65 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA168, &unk_1AE25B3D0);
  v74 = *(v20 - 8);
  v75 = v20;
  v21 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v92 = &v65 - v22;
  v23 = *(a3 + 16);
  v24 = MEMORY[0x1E69E7CC0];
  if (v23)
  {
    v65 = a2;
    v66 = a4;
    v67 = a1;
    v68 = a5;
    v93 = MEMORY[0x1E69E7CC0];
    sub_1ADE6F3DC(0, v23, 0);
    v24 = v93;
    v25 = a3 + 64;
    v26 = -1 << *(a3 + 32);
    result = sub_1AE23D8EC();
    v28 = result;
    v29 = 0;
    v30 = *(a3 + 36);
    v69 = a3 + 72;
    v70 = v23;
    v72 = a3 + 64;
    v71 = v30;
    v73 = a3;
    while ((v28 & 0x8000000000000000) == 0 && v28 < 1 << *(a3 + 32))
    {
      if ((*(v25 + 8 * (v28 >> 6)) & (1 << v28)) == 0)
      {
        goto LABEL_23;
      }

      if (v30 != *(a3 + 36))
      {
        goto LABEL_24;
      }

      v83 = 1 << v28;
      v84 = v28 >> 6;
      v82 = v29;
      v33 = v81;
      v34 = *(v81 + 48);
      v35 = *(a3 + 48);
      v36 = v35 + *(*(type metadata accessor for Replica() - 8) + 72) * v28;
      v86 = type metadata accessor for Replica;
      v37 = v76;
      sub_1ADDDE338(v36, v76, type metadata accessor for Replica);
      v38 = *(a3 + 56);
      v39 = sub_1AE23C12C();
      v40 = *(v39 - 8);
      v91 = v24;
      v41 = v40;
      v42 = v38 + *(v40 + 72) * v28;
      v90 = v28;
      v43 = *(v40 + 16);
      v43(v37 + v34, v42, v39);
      v88 = type metadata accessor for Replica;
      v44 = v77;
      sub_1ADDDE4D8(v37, v77, type metadata accessor for Replica);
      v45 = *(v33 + 48);
      v89 = *(v41 + 32);
      v89(v44 + v45, v37 + v34, v39);
      v85 = *(v75 + 48);
      v87 = *(v75 + 64);
      v46 = v78;
      v47 = v92;
      sub_1ADDDE338(v44, v78, v86);
      v43(v46 + *(v33 + 48), v44 + v45, v39);
      v48 = type metadata accessor for Timestamp(0);
      (*(*(v48 - 8) + 56))(v47, 1, 1, v48);
      v49 = v79;
      sub_1ADDCEE40(v46, v79, &qword_1EB5BA2A0, &unk_1AE242200);
      v86 = *(v33 + 48);
      sub_1ADDDE4D8(v49, v47 + v85, v88);
      v50 = v80;
      sub_1ADDD2198(v46, v80, &qword_1EB5BA2A0, &unk_1AE242200);
      v89(v47 + v87, v50 + *(v33 + 48), v39);
      sub_1ADE0DC8C(v50, type metadata accessor for Replica);
      (*(v41 + 8))(v86 + v49, v39);
      v24 = v91;
      sub_1ADDCEDE0(v44, &qword_1EB5BA2A0, &unk_1AE242200);
      v93 = v24;
      v52 = *(v24 + 16);
      v51 = *(v24 + 24);
      if (v52 >= v51 >> 1)
      {
        sub_1ADE6F3DC(v51 > 1, v52 + 1, 1);
        v24 = v93;
      }

      *(v24 + 16) = v52 + 1;
      sub_1ADDD2198(v92, v24 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v52, &qword_1EB5BA168, &unk_1AE25B3D0);
      a3 = v73;
      v31 = 1 << *(v73 + 32);
      result = v90;
      if (v90 >= v31)
      {
        goto LABEL_25;
      }

      v25 = v72;
      v53 = *(v72 + 8 * v84);
      if ((v53 & v83) == 0)
      {
        goto LABEL_26;
      }

      LODWORD(v30) = v71;
      if (v71 != *(v73 + 36))
      {
        goto LABEL_27;
      }

      v54 = v53 & (-2 << (v90 & 0x3F));
      if (v54)
      {
        v31 = __clz(__rbit64(v54)) | v90 & 0x7FFFFFFFFFFFFFC0;
        v32 = v70;
      }

      else
      {
        v55 = v84 << 6;
        v56 = v84 + 1;
        v57 = (v69 + 8 * v84);
        v32 = v70;
        while (v56 < (v31 + 63) >> 6)
        {
          v59 = *v57++;
          v58 = v59;
          v55 += 64;
          ++v56;
          if (v59)
          {
            result = sub_1ADDFFBC8(v90, v71, 0);
            v31 = __clz(__rbit64(v58)) + v55;
            goto LABEL_4;
          }
        }

        result = sub_1ADDFFBC8(v90, v71, 0);
      }

LABEL_4:
      v29 = v82 + 1;
      v28 = v31;
      if (v82 + 1 == v32)
      {
        a5 = v68;
        a4 = v66;
        a2 = v65;
        goto LABEL_21;
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

  else
  {
LABEL_21:
    v60 = sub_1ADE79634(v24, 0, 1, a4, a2, a3);
    v62 = v61;
    v64 = v63;

    *a5 = v60;
    *(a5 + 8) = v62 & 1;
    *(a5 + 16) = v64;
  }

  return result;
}

unint64_t sub_1ADE79634(uint64_t a1, char *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v209 = a4;
  v242 = a3;
  v239 = a2;
  v229 = a1;
  v238 = type metadata accessor for Timestamp(0);
  v210 = *(v238 - 8);
  v9 = *(v210 + 64);
  v10 = MEMORY[0x1EEE9AC00](v238);
  v226 = &v202 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v241 = &v202 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA480, &qword_1AE25AAE0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v231 = &v202 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v237 = &v202 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v246 = &v202 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v243 = &v202 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA450, &unk_1AE25B3B0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v220 = &v202 - v24;
  v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA148, &qword_1AE241B60);
  v216 = *(v219 - 8);
  v25 = *(v216 + 64);
  MEMORY[0x1EEE9AC00](v219);
  v27 = &v202 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA488, &unk_1AE25B3C0);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x1EEE9AC00](v28 - 8);
  v252 = &v202 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v222 = &v202 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA460, &qword_1AE251020);
  v34 = *(*(v33 - 8) + 64);
  v35 = MEMORY[0x1EEE9AC00](v33 - 8);
  v225 = &v202 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x1EEE9AC00](v35);
  v211 = &v202 - v38;
  MEMORY[0x1EEE9AC00](v37);
  v236 = &v202 - v39;
  v230 = type metadata accessor for FinalizedTimestamp(0);
  v214 = *(v230 - 8);
  v40 = *(v214 + 64);
  v41 = MEMORY[0x1EEE9AC00](v230);
  v207 = &v202 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x1EEE9AC00](v41);
  v205 = &v202 - v44;
  MEMORY[0x1EEE9AC00](v43);
  v204 = &v202 - v45;
  v251 = sub_1AE23BFFC();
  v235 = *(v251 - 8);
  v46 = *(v235 + 64);
  MEMORY[0x1EEE9AC00](v251);
  v245 = (&v202 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA490, &qword_1AE2514C0);
  v48 = *(*(v206 - 8) + 64);
  MEMORY[0x1EEE9AC00](v206);
  v50 = &v202 - v49;
  v51 = sub_1AE23C12C();
  v213 = *(v51 - 8);
  v52 = *(v213 + 64);
  v53 = MEMORY[0x1EEE9AC00](v51);
  v253 = (&v202 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v53);
  v56 = &v202 - v55;
  v248 = type metadata accessor for Replica();
  v57 = *(*(v248 - 8) + 64);
  v58 = MEMORY[0x1EEE9AC00](v248);
  v250 = &v202 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = MEMORY[0x1EEE9AC00](v58);
  v249 = &v202 - v61;
  v62 = MEMORY[0x1EEE9AC00](v60);
  v224 = &v202 - v63;
  v64 = MEMORY[0x1EEE9AC00](v62);
  v223 = &v202 - v65;
  MEMORY[0x1EEE9AC00](v64);
  v67 = (&v202 - v66);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA498, &qword_1AE242538);
  v69 = *(*(v68 - 8) + 64);
  v70 = MEMORY[0x1EEE9AC00](v68 - 8);
  v244 = &v202 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = MEMORY[0x1EEE9AC00](v70);
  v240 = &v202 - v73;
  v74 = MEMORY[0x1EEE9AC00](v72);
  v212 = &v202 - v75;
  MEMORY[0x1EEE9AC00](v74);
  v77 = &v202 - v76;
  v264 = a5;
  v265 = a6;
  v247 = v6;
  if (a5)
  {
    swift_beginAccess();
    v234 = *(v6 + 16);
    LODWORD(v233) = *(v6 + 24);
    v78 = *(v6 + 32);
    sub_1ADE42C78(a5);

    sub_1ADDF8898(v234, v233, v78);
  }

  else
  {
    sub_1ADE42C78(0);
  }

  v263 = 0;
  v262 = MEMORY[0x1E69E7CC8];
  result = sub_1AE23BF2C();
  v81 = v80;
  v82 = v243;
  v83 = v244;
  v84 = v212;
  if ((*&v80 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_102:
    __break(1u);
    goto LABEL_103;
  }

  if (v80 <= -9.22337204e18)
  {
LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

  if (v80 >= 9.22337204e18)
  {
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
    return result;
  }

  v254 = v51;
  if (v242)
  {
    goto LABEL_51;
  }

  v233 = v67;
  v208 = v27;
  v85 = 0;
  v234 = (v213 + 32);
  v86 = *(v229 + 16);
  v228 = (v213 + 8);
  v227 = (v235 + 8);
  v218 = (v216 + 56);
  v217 = (v216 + 48);
  v221 = (v214 + 48);
  v235 = v214 + 56;
  v232 = v86;
  v87 = v86 == 0;
  if (!v86)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (v87)
  {
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA168, &unk_1AE25B3D0);
  v90 = v84;
  v91 = *(v89 - 8);
  result = sub_1ADDCEE40(v229 + ((*(v91 + 80) + 32) & ~*(v91 + 80)) + *(v91 + 72) * v85, v90, &qword_1EB5BA168, &unk_1AE25B3D0);
  v92 = __OFADD__(v85++, 1);
  if (v92)
  {
    goto LABEL_101;
  }

  (*(v91 + 56))(v90, 0, 1, v89);
  v84 = v90;
  v51 = v254;
LABEL_13:
  sub_1ADDD2198(v84, v77, &qword_1EB5BA498, &qword_1AE242538);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA168, &unk_1AE25B3D0);
  if ((*(*(v93 - 8) + 48))(v77, 1, v93) != 1)
  {
    v94 = *(v93 + 48);
    v95 = *(v93 + 64);
    v96 = v233;
    sub_1ADDDE4D8(&v77[v94], v233, type metadata accessor for Replica);
    (*v234)(v56, &v77[v95], v51);
    if (!*(v96 + *(v248 + 20)))
    {
      (*v228)(v56, v51);
      sub_1ADE0DC8C(v96, type metadata accessor for Replica);
      result = sub_1ADDCEDE0(v77, &qword_1EB5BA480, &qword_1AE25AAE0);
      goto LABEL_16;
    }

    v203 = v56;
    sub_1AE23C01C();
    v97 = *(v206 + 36);
    sub_1ADE89268(&qword_1ED967148, MEMORY[0x1E6969B50]);
    while (1)
    {
      v100 = v245;
      v51 = v254;
      sub_1AE23D46C();
      sub_1ADE89268(&qword_1ED967158, MEMORY[0x1E6969B18]);
      v101 = v251;
      v102 = sub_1AE23CCBC();
      (*v227)(v100, v101);
      v103 = v252;
      if (v102)
      {
        sub_1ADDCEDE0(v50, &qword_1EB5BA490, &qword_1AE2514C0);
        v56 = v203;
        (*v228)(v203, v51);
        sub_1ADE0DC8C(v96, type metadata accessor for Replica);
        result = sub_1ADDCEDE0(v77, &qword_1EB5BA480, &qword_1AE25AAE0);
        v82 = v243;
        v84 = v212;
LABEL_16:
        v86 = v232;
        v87 = v85 >= v232;
        if (v85 == v232)
        {
LABEL_9:
          v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA168, &unk_1AE25B3D0);
          (*(*(v88 - 8) + 56))(v84, 1, 1, v88);
          v85 = v86;
          goto LABEL_13;
        }

        goto LABEL_10;
      }

      v104 = sub_1AE23D51C();
      v106 = *v105;
      v104(&v255, 0);
      sub_1AE23D47C();
      v107 = v247;
      swift_beginAccess();
      v108 = *(v107 + 32);
      if (!*(v108 + 16) || (v109 = sub_1ADDD8A6C(v96), (v110 & 1) == 0))
      {
        memset(v261, 0, sizeof(v261));
        v98 = v230;
LABEL_20:
        sub_1ADDCEDE0(v261, &qword_1EB5BA468, &unk_1AE259210);
        swift_endAccess();
        v99 = v236;
        (*v235)(v236, 1, 1, v98);
        goto LABEL_21;
      }

      sub_1ADDE56CC(*(v108 + 56) + 24 * v109, v261);
      v98 = v230;
      if (!v261[0])
      {
        goto LABEL_20;
      }

      sub_1ADDE56CC(v261, &v258);
      sub_1ADDCEDE0(v261, &qword_1EB5BA468, &unk_1AE259210);
      swift_endAccess();
      v111 = *(v258 + 16);
      v215 = v106;
      if (v111)
      {
        v112 = v258 + ((*(v216 + 80) + 32) & ~*(v216 + 80));
        v113 = *(v216 + 72);
        if (v106 >= *(v112 + v113 * (v111 - 1) + 8))
        {
          v114 = 1;
        }

        else
        {
          result = sub_1ADDE2A80(v106, 0, v258);
          if (result >= v111)
          {
            goto LABEL_105;
          }

          sub_1ADDCEE40(v112 + result * v113, v222, &qword_1EB5BA148, &qword_1AE241B60);
          v114 = 0;
        }

        v115 = v219;
        v103 = v252;
      }

      else
      {
        v114 = 1;
        v115 = v219;
      }

      v116 = v222;
      (*v218)(v222, v114, 1, v115);
      sub_1ADDD2198(v116, v103, &qword_1EB5BA488, &unk_1AE25B3C0);
      v117 = (*v217)(v103, 1, v115) == 1;
      v118 = v220;
      v119 = v103;
      if (v117)
      {
        sub_1ADDCEDE0(v103, &qword_1EB5BA488, &unk_1AE25B3C0);
        v120 = v230;
      }

      else
      {
        v121 = v208;
        sub_1ADDD2198(v119, v208, &qword_1EB5BA148, &qword_1AE241B60);
        sub_1ADDCEE40(v121 + *(v115 + 36), v118, &qword_1EB5BA450, &unk_1AE25B3B0);
        v122 = type metadata accessor for RetainedMapRun(0);
        v123 = (*(*(v122 - 8) + 48))(v118, 1, v122);
        if (v123 == 1)
        {
          sub_1ADDCEDE0(v121, &qword_1EB5BA148, &qword_1AE241B60);
          sub_1ADDCEDE0(v118, &qword_1EB5BA450, &unk_1AE25B3B0);
          v124 = v211;
          v120 = v230;
          (*v235)(v211, 1, 1, v230);
        }

        else
        {
          v125 = v211;
          sub_1ADDCEE40(v118, v211, &qword_1EB5BA460, &qword_1AE251020);
          v126 = v118;
          v124 = v125;
          sub_1ADE0DC8C(v126, type metadata accessor for RetainedMapRun);
          v127 = v125;
          v120 = v230;
          if ((*v221)(v127, 1, v230) != 1)
          {
            v131 = v124;
            v132 = v120;
            v133 = v205;
            sub_1ADDDE4D8(v131, v205, type metadata accessor for FinalizedTimestamp);
            v134 = sub_1AE23BFEC();
            (*(*(v134 - 8) + 16))(v236, v133, v134);
            v135 = *(v133 + *(v132 + 20));
            result = sub_1ADE0DC8C(v133, type metadata accessor for FinalizedTimestamp);
            v92 = __OFADD__(v135, v215);
            v136 = v135 + v215;
            if (v92)
            {
              goto LABEL_107;
            }

            v137 = *v121;
            result = sub_1ADDCEDE0(v121, &qword_1EB5BA148, &qword_1AE241B60);
            v138 = v136 - v137;
            if (__OFSUB__(v136, v137))
            {
              goto LABEL_108;
            }

            v120 = v230;
            v99 = v236;
            *(v236 + *(v230 + 20)) = v138;
            (*v235)(v99, 0, 1, v120);
            goto LABEL_42;
          }

          sub_1ADDCEDE0(v121, &qword_1EB5BA148, &qword_1AE241B60);
        }

        sub_1ADDCEDE0(v124, &qword_1EB5BA460, &qword_1AE251020);
      }

      v99 = v236;
      (*v235)(v236, 1, 1, v120);
LABEL_42:
      sub_1ADDE5C20(&v258);
      if ((*v221)(v99, 1, v120) == 1)
      {
LABEL_21:
        sub_1ADDCEDE0(v99, &qword_1EB5BA460, &qword_1AE251020);
      }

      else
      {
        v128 = v204;
        sub_1ADDDE4D8(v99, v204, type metadata accessor for FinalizedTimestamp);
        v129 = *(v128 + *(v230 + 20));
        sub_1ADE0DC8C(v128, type metadata accessor for FinalizedTimestamp);
        v130 = v239;
        if (v129 > v239)
        {
          v130 = v129;
        }

        v239 = v130;
      }
    }
  }

  v83 = v244;
LABEL_51:
  v236 = v81;
  v139 = *(v229 + 16);
  v245 = (v209 + OBJC_IVAR___CRContext_crdtDatabase);
  result = swift_beginAccess();
  v140 = 0;
  v234 = (v213 + 32);
  v252 = (v210 + 48);
  v227 = (v214 + 48);
  v232 = (v210 + 56);
  v228 = (v214 + 56);
  v233 = (v213 + 8);
  v141 = v247;
  v142 = v241;
  v143 = v246;
  v144 = v223;
  v235 = v139;
  while (1)
  {
    if (v140 == v139)
    {
      v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA168, &unk_1AE25B3D0);
      (*(*(v152 - 8) + 56))(v83, 1, 1, v152);
      v153 = v139;
    }

    else
    {
      if (v140 >= v139)
      {
        __break(1u);
LABEL_99:
        __break(1u);
        goto LABEL_100;
      }

      v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA168, &unk_1AE25B3D0);
      v155 = *(v154 - 8);
      result = sub_1ADDCEE40(v229 + ((*(v155 + 80) + 32) & ~*(v155 + 80)) + *(v155 + 72) * v140, v83, &qword_1EB5BA168, &unk_1AE25B3D0);
      v92 = __OFADD__(v140, 1);
      v153 = v140 + 1;
      if (v92)
      {
        goto LABEL_99;
      }

      (*(v155 + 56))(v83, 0, 1, v154);
    }

    v156 = v83;
    v157 = v240;
    sub_1ADDD2198(v156, v240, &qword_1EB5BA498, &qword_1AE242538);
    v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA168, &unk_1AE25B3D0);
    if ((*(*(v158 - 8) + 48))(v157, 1, v158) == 1)
    {
      break;
    }

    v251 = v153;
    v159 = *(v158 + 48);
    v160 = *(v158 + 64);
    sub_1ADDD2198(v157, v82, &qword_1EB5BA480, &qword_1AE25AAE0);
    sub_1ADDDE4D8(v157 + v159, v144, type metadata accessor for Replica);
    (*v234)(v253, (v157 + v160), v254);
    v161 = v237;
    sub_1ADDCEE40(v82, v237, &qword_1EB5BA480, &qword_1AE25AAE0);
    v162 = *v252;
    v163 = v238;
    if ((*v252)(v161, 1, v238) == 1)
    {
      sub_1ADDCEDE0(v161, &qword_1EB5BA480, &qword_1AE25AAE0);
      goto LABEL_72;
    }

    sub_1ADDDE4D8(v161, v142, type metadata accessor for Timestamp);
    if (*(v142 + *(v248 + 20)) > 0)
    {
      swift_beginAccess();
      v164 = v262;
      if (*(v262 + 16) && (v165 = sub_1ADDD8A6C(v142), (v166 & 1) != 0))
      {
        sub_1ADDE56CC(*(v164 + 56) + 24 * v165, &v258);
        if (v258)
        {
          sub_1ADDE56CC(&v258, v257);
          sub_1ADDCEDE0(&v258, &qword_1EB5BA468, &unk_1AE259210);
          swift_endAccess();
          v167 = v225;
          sub_1AE221574(*(v142 + *(v163 + 20)), v225);
          v168 = v167;
          sub_1ADDE5C20(v257);
          sub_1ADE0DC8C(v142, type metadata accessor for Timestamp);
          if ((*v227)(v167, 1, v230) != 1)
          {
            v169 = v207;
            sub_1ADDDE4D8(v167, v207, type metadata accessor for FinalizedTimestamp);
            v170 = sub_1AE23BFEC();
            (*(*(v170 - 8) + 16))(v143, v169, v170);
            *(v143 + *(v248 + 20)) = 0;
            v171 = *(v169 + *(v230 + 20));
            sub_1ADE0DC8C(v169, type metadata accessor for FinalizedTimestamp);
            *(v143 + *(v163 + 20)) = v171;
LABEL_78:
            (*v232)(v143, 0, 1, v163);
            goto LABEL_79;
          }

          goto LABEL_70;
        }
      }

      else
      {
        v258 = 0;
        v259 = 0;
        v260 = 0;
      }

      sub_1ADDCEDE0(&v258, &qword_1EB5BA468, &unk_1AE259210);
      swift_endAccess();
      sub_1ADE0DC8C(v142, type metadata accessor for Timestamp);
      v168 = v225;
      (*v228)(v225, 1, 1, v230);
LABEL_70:
      sub_1ADDCEDE0(v168, &qword_1EB5BA460, &qword_1AE251020);
      goto LABEL_72;
    }

    sub_1ADE0DC8C(v142, type metadata accessor for Timestamp);
LABEL_72:
    v172 = v231;
    sub_1ADDCEE40(v82, v231, &qword_1EB5BA480, &qword_1AE25AAE0);
    if (v162(v172, 1, v163) == 1)
    {
      sub_1ADDCEDE0(v172, &qword_1EB5BA480, &qword_1AE25AAE0);
    }

    else
    {
      v173 = v172;
      v174 = v226;
      sub_1ADDDE4D8(v173, v226, type metadata accessor for Timestamp);
      if (*(v174 + *(v248 + 20)) <= 0)
      {
        sub_1ADDDE4D8(v174, v143, type metadata accessor for Timestamp);
        goto LABEL_78;
      }

      sub_1ADE0DC8C(v174, type metadata accessor for Timestamp);
    }

    (*v232)(v143, 1, 1, v163);
LABEL_79:
    swift_beginAccess();
    v175 = *(v141 + 32);
    v176 = v245;
    if (!*(v175 + 16) || (v177 = sub_1ADDD8A6C(v144), (v178 & 1) == 0))
    {
      v258 = 0;
      v259 = 0;
      v260 = 0;
LABEL_90:
      sub_1ADDCEDE0(&v258, &qword_1EB5BA468, &unk_1AE259210);
      swift_endAccess();
      goto LABEL_91;
    }

    sub_1ADDE56CC(*(v175 + 56) + 24 * v177, &v258);
    if (!v258)
    {
      goto LABEL_90;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    v180 = v260;
    sub_1ADDCEDE0(&v258, &qword_1EB5BA468, &unk_1AE259210);
    swift_endAccess();
    if (Strong)
    {
      ObjectType = swift_getObjectType();
      v255 = v264;
      v256 = v265;
      v182 = *(v180 + 32);
      sub_1ADE42C78(v264);
      v183 = v144;
      v184 = v224;
      v182(v183, v246, &v255, ObjectType, v180);
      v185 = v184;
      sub_1ADE42CB8(v255);
      v149 = v253;
      sub_1ADE80CE8(v183, v253, v185, Strong, v180, &v262, v239, v242 & 1, v141, &v263, &v264, &v263 + 1, v236);
      if (Strong == *v245)
      {
        swift_unknownObjectRelease();
        v151 = v185;
        v142 = v241;
        v143 = v246;
        v82 = v243;
        v148 = v223;
      }

      else
      {
        (*(v180 + 40))(ObjectType, v180);
        if (qword_1EB5B9950 != -1)
        {
          swift_once();
        }

        v186 = sub_1AE23C78C();
        __swift_project_value_buffer(v186, qword_1EB5D7548);
        v187 = sub_1AE23C76C();
        v188 = sub_1AE23D63C();
        if (os_log_type_enabled(v187, v188))
        {
          v189 = swift_slowAlloc();
          *v189 = 0;
          _os_log_impl(&dword_1ADDCA000, v187, v188, "Using multiple contexts with the same CRDT. This will be inefficient.", v189, 2u);
          MEMORY[0x1B26FDA50](v189, -1, -1);
        }

        swift_unknownObjectRelease();

        v151 = v224;
        v142 = v241;
        v143 = v246;
        v82 = v243;
        v149 = v253;
        v148 = v223;
      }

      goto LABEL_53;
    }

LABEL_91:
    v190 = *v176;
    v191 = v176[1];
    v192 = swift_getObjectType();
    v193 = v264;
    v255 = v264;
    v256 = v265;
    v194 = *(v191 + 32);
    swift_unknownObjectRetain();
    sub_1ADE42C78(v193);
    v143 = v246;
    v194(v144, v246, &v255, v192, v191);
    v141 = v247;
    swift_unknownObjectRelease();
    sub_1ADE42CB8(v255);
    v195 = v250;
    sub_1ADDDE338(v144, v250, type metadata accessor for Replica);
    swift_beginAccess();
    v197 = sub_1ADDE3EF8(&v255, v195);
    if (*v196)
    {
      v198 = *v176;
      v196[2] = v176[1];
      swift_unknownObjectWeakAssign();
    }

    (v197)(&v255, 0);
    v82 = v243;
    swift_endAccess();
    sub_1ADE0DC8C(v250, type metadata accessor for Replica);
    v145 = *v176;
    v146 = v176[1];
    swift_unknownObjectRetain();
    v147 = v144;
    v148 = v144;
    v149 = v253;
    v150 = v249;
    sub_1ADE80CE8(v147, v253, v249, v145, v146, &v262, v239, v242 & 1, v141, &v263, &v264, &v263 + 1, v236);
    swift_unknownObjectRelease();
    v151 = v150;
    v142 = v241;
LABEL_53:
    sub_1ADE0DC8C(v151, type metadata accessor for Replica);
    sub_1ADDCEDE0(v143, &qword_1EB5BA480, &qword_1AE25AAE0);
    (*v233)(v149, v254);
    sub_1ADE0DC8C(v148, type metadata accessor for Replica);
    result = sub_1ADDCEDE0(v82, &qword_1EB5BA480, &qword_1AE25AAE0);
    v144 = v148;
    v83 = v244;
    v139 = v235;
    v140 = v251;
  }

  swift_beginAccess();
  if (v263)
  {
    result = swift_beginAccess();
    v199 = *(v141 + 16);
    v92 = __OFADD__(v199, 1);
    v200 = v199 + 1;
    if (v92)
    {
      goto LABEL_106;
    }

    *(v141 + 16) = v200;
  }

  swift_beginAccess();
  v201 = *(v141 + 16);
  swift_beginAccess();
  swift_beginAccess();
  sub_1ADE42CB8(v264);
  return v201;
}

uint64_t sub_1ADE7B700@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v526 = a5;
  v578 = a4;
  v556 = a3;
  v527 = a6;
  v626 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA4A0, &unk_1AE253DA0);
  v8 = *(*(v626 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v626);
  v613 = &v523 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v597 = &v523 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v600 = &v523 - v13;
  v595 = sub_1AE23C12C();
  v554 = *(v595 - 8);
  v14 = *(v554 + 64);
  MEMORY[0x1EEE9AC00](v595);
  v565 = &v523 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v648 = type metadata accessor for FinalizedTimestampRange(0);
  v646 = *(v648 - 8);
  v16 = *(v646 + 64);
  v17 = MEMORY[0x1EEE9AC00](v648);
  v631 = &v523 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v625 = &v523 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v647 = &v523 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v618 = &v523 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v614 = &v523 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v630 = &v523 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v619 = &v523 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v616 = &v523 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v640 = &v523 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v534 = &v523 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v547 = &v523 - v38;
  MEMORY[0x1EEE9AC00](v37);
  v627 = &v523 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA460, &qword_1AE251020);
  v41 = *(*(v40 - 8) + 64);
  v42 = MEMORY[0x1EEE9AC00](v40 - 8);
  v596 = &v523 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x1EEE9AC00](v42);
  v615 = &v523 - v45;
  v46 = MEMORY[0x1EEE9AC00](v44);
  v622 = &v523 - v47;
  v48 = MEMORY[0x1EEE9AC00](v46);
  v580 = &v523 - v49;
  v50 = MEMORY[0x1EEE9AC00](v48);
  v599 = &v523 - v51;
  v52 = MEMORY[0x1EEE9AC00](v50);
  v609 = &v523 - v53;
  v54 = MEMORY[0x1EEE9AC00](v52);
  v582 = &v523 - v55;
  v56 = MEMORY[0x1EEE9AC00](v54);
  v601 = &v523 - v57;
  v58 = MEMORY[0x1EEE9AC00](v56);
  v610 = &v523 - v59;
  v60 = MEMORY[0x1EEE9AC00](v58);
  v628 = &v523 - v61;
  v62 = MEMORY[0x1EEE9AC00](v60);
  v559 = &v523 - v63;
  v64 = MEMORY[0x1EEE9AC00](v62);
  v533 = &v523 - v65;
  v66 = MEMORY[0x1EEE9AC00](v64);
  v586 = &v523 - v67;
  v68 = MEMORY[0x1EEE9AC00](v66);
  v539 = &v523 - v69;
  v70 = MEMORY[0x1EEE9AC00](v68);
  v557 = &v523 - v71;
  MEMORY[0x1EEE9AC00](v70);
  v552 = &v523 - v72;
  v658 = type metadata accessor for FinalizedTimestamp(0);
  v656 = *(v658 - 8);
  v73 = *(v656 + 64);
  v74 = MEMORY[0x1EEE9AC00](v658);
  v579 = &v523 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = MEMORY[0x1EEE9AC00](v74);
  v598 = &v523 - v77;
  v78 = MEMORY[0x1EEE9AC00](v76);
  v632 = &v523 - v79;
  v80 = MEMORY[0x1EEE9AC00](v78);
  v563 = &v523 - v81;
  v82 = MEMORY[0x1EEE9AC00](v80);
  v581 = &v523 - v83;
  v84 = MEMORY[0x1EEE9AC00](v82);
  v623 = &v523 - v85;
  v86 = MEMORY[0x1EEE9AC00](v84);
  v564 = &v523 - v87;
  v88 = MEMORY[0x1EEE9AC00](v86);
  v583 = &v523 - v89;
  v90 = MEMORY[0x1EEE9AC00](v88);
  v624 = &v523 - v91;
  v92 = MEMORY[0x1EEE9AC00](v90);
  v551 = &v523 - v93;
  v94 = MEMORY[0x1EEE9AC00](v92);
  v566 = &v523 - v95;
  v96 = MEMORY[0x1EEE9AC00](v94);
  v538 = &v523 - v97;
  v98 = MEMORY[0x1EEE9AC00](v96);
  v558 = &v523 - v99;
  v100 = MEMORY[0x1EEE9AC00](v98);
  v603 = &v523 - v101;
  MEMORY[0x1EEE9AC00](v100);
  v529 = &v523 - v102;
  v645 = type metadata accessor for RetainedMapRun(0);
  v653 = *(v645 - 8);
  v103 = *(v653 + 64);
  v104 = MEMORY[0x1EEE9AC00](v645 - 8);
  v637 = &v523 - ((v105 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = MEMORY[0x1EEE9AC00](v104);
  v573 = &v523 - v107;
  v108 = MEMORY[0x1EEE9AC00](v106);
  v606 = &v523 - v109;
  MEMORY[0x1EEE9AC00](v108);
  v561 = &v523 - v110;
  v654 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA148, &qword_1AE241B60);
  v643 = *(v654 - 8);
  v111 = *(v643 + 64);
  v112 = MEMORY[0x1EEE9AC00](v654);
  v657 = (&v523 - ((v113 + 15) & 0xFFFFFFFFFFFFFFF0));
  v114 = MEMORY[0x1EEE9AC00](v112);
  v594 = (&v523 - v115);
  v116 = MEMORY[0x1EEE9AC00](v114);
  v617 = (&v523 - v117);
  MEMORY[0x1EEE9AC00](v116);
  v569 = (&v523 - v118);
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA450, &unk_1AE25B3B0);
  v120 = *(*(v119 - 8) + 64);
  v121 = MEMORY[0x1EEE9AC00](v119 - 8);
  v629 = &v523 - ((v122 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = MEMORY[0x1EEE9AC00](v121);
  v636 = &v523 - v124;
  v125 = MEMORY[0x1EEE9AC00](v123);
  v574 = &v523 - v126;
  v127 = MEMORY[0x1EEE9AC00](v125);
  v572 = &v523 - v128;
  v129 = MEMORY[0x1EEE9AC00](v127);
  v607 = &v523 - v130;
  v131 = MEMORY[0x1EEE9AC00](v129);
  v605 = &v523 - v132;
  v133 = MEMORY[0x1EEE9AC00](v131);
  v562 = &v523 - v134;
  MEMORY[0x1EEE9AC00](v133);
  v560 = &v523 - v135;
  v523 = type metadata accessor for Replica();
  v545 = *(v523 - 8);
  v136 = *(v545 + 64);
  v137 = MEMORY[0x1EEE9AC00](v523);
  v525 = &v523 - ((v138 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = MEMORY[0x1EEE9AC00](v137);
  v634 = &v523 - v140;
  v141 = MEMORY[0x1EEE9AC00](v139);
  v571 = &v523 - v142;
  v143 = MEMORY[0x1EEE9AC00](v141);
  v602 = &v523 - v144;
  MEMORY[0x1EEE9AC00](v143);
  v546 = &v523 - v145;
  v146 = sub_1AE23C0EC();
  v655 = *(v146 - 8);
  v147 = v655[8];
  MEMORY[0x1EEE9AC00](v146);
  v544 = &v523 - ((v148 + 15) & 0xFFFFFFFFFFFFFFF0);
  v543 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA440, &unk_1AE24CCB0);
  v149 = *(*(v543 - 8) + 64);
  MEMORY[0x1EEE9AC00](v543);
  v588 = &v523 - v150;
  v590 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
  v151 = *(*(v590 - 8) + 64);
  v152 = MEMORY[0x1EEE9AC00](v590);
  v576 = &v523 - ((v153 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = MEMORY[0x1EEE9AC00](v152);
  v555 = &v523 - v155;
  v156 = MEMORY[0x1EEE9AC00](v154);
  v550 = &v523 - v157;
  v158 = MEMORY[0x1EEE9AC00](v156);
  v589 = &v523 - v159;
  MEMORY[0x1EEE9AC00](v158);
  v542 = &v523 - v160;
  v577 = type metadata accessor for Timestamp(0);
  v161 = *(*(v577 - 8) + 64);
  MEMORY[0x1EEE9AC00](v577);
  v163 = &v523 - ((v162 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = (a1 + OBJC_IVAR___CRContext_crdtDatabase);
  v165 = *(a1 + OBJC_IVAR___CRContext_crdtDatabase);
  v166 = v164[1];
  v524 = v164;
  ObjectType = swift_getObjectType();
  v168 = a2[1];
  v660 = *a2;
  v661 = v168;
  v169 = *(v166 + 72);
  swift_unknownObjectRetain();

  v612 = v163;
  v169(&v660, ObjectType, v166);
  swift_unknownObjectRelease();

  v604 = a2;
  v170 = a2[1];
  v171 = v170 + 64;
  v172 = 1 << *(v170 + 32);
  v173 = -1;
  if (v172 < 64)
  {
    v173 = ~(-1 << v172);
  }

  v174 = v173 & *(v170 + 64);
  v175 = (v172 + 63) >> 6;
  v541 = v554 + 16;
  v570 = v554 + 32;
  v587 = (v554 + 8);
  v176 = v640;
  v540 = (v655 + 1);
  v642 = (v653 + 48);
  v649 = (v656 + 48);
  v655 = (v656 + 56);
  v641 = (v653 + 56);

  v528 = 0;
  v177 = 0;
  v591 = v146;
  v531 = v170 + 64;
  v530 = v175;
  v532 = v170;
  if (!v174)
  {
    goto LABEL_5;
  }

LABEL_4:
  v178 = v550;
LABEL_10:
  v549 = v174;
  v548 = v177;
  v180 = __clz(__rbit64(v174)) | (v177 << 6);
  v181 = *(v170 + 48);
  v568 = *(v545 + 72);
  v182 = v542;
  sub_1ADDDE338(v181 + v568 * v180, v542, type metadata accessor for Replica);
  v183 = *(v170 + 56);
  v184 = v554;
  v585 = *(v554 + 72);
  v185 = v183 + v585 * v180;
  v186 = v590;
  v187 = *(v590 + 48);
  v188 = v595;
  (*(v554 + 16))(v182 + v187, v185, v595);
  v189 = *(v186 + 48);
  v190 = v589;
  sub_1ADDDE4D8(v182, v589, type metadata accessor for Replica);
  v567 = *(v184 + 32);
  v567(v190 + v189, v182 + v187, v188);
  sub_1ADDCEE40(v190, v178, &qword_1EB5BA2A0, &unk_1AE242200);
  v191 = *v556;
  v192 = v178;
  if (*(*v556 + 16) && (v193 = sub_1ADDD8A6C(v178), (v194 & 1) != 0))
  {
    sub_1ADDE56CC(*(v191 + 56) + 24 * v193, &v660);
  }

  else
  {
    v660 = 0;
    v661 = 0;
    v662 = 0;
  }

  sub_1ADDD2198(&v660, &v663, &qword_1EB5BA468, &unk_1AE259210);
  if (v663)
  {
    sub_1ADDE5634(&v663, &v664);
  }

  else
  {
    v664 = MEMORY[0x1E69E7CC0];
    v665 = 0;
    swift_unknownObjectWeakInit();
    v665 = 0;
    swift_unknownObjectWeakAssign();
    sub_1ADDCEDE0(&v663, &qword_1EB5BA468, &unk_1AE259210);
  }

  v195 = v590;
  v196 = *v587;
  v197 = v595;
  (*v587)(v192 + *(v590 + 48), v595);
  sub_1ADE0DC8C(v192, type metadata accessor for Replica);
  v198 = v555;
  sub_1ADDCEE40(v589, v555, &qword_1EB5BA2A0, &unk_1AE242200);
  v199 = *(v195 + 48);
  v200 = v544;
  sub_1AE23C10C();
  v584 = v196;
  v196(v198 + v199, v197);
  v201 = v588;
  sub_1AE23C0DC();
  (*v540)(v200, v591);
  sub_1ADE0DC8C(v198, type metadata accessor for Replica);
  v202 = *(v543 + 36);
  v203 = sub_1ADE89268(&qword_1ED96A708, MEMORY[0x1E6969B30]);
  sub_1AE23D46C();
  if (*(v201 + v202) == v660)
  {
    v204 = v176;
    goto LABEL_19;
  }

  v209 = v645;
  v592 = v203;
  v210 = v628;
  v575 = v202;
  while (1)
  {
    while (1)
    {
      v213 = sub_1AE23D51C();
      v216 = *v214;
      v215 = v214[1];
      v213(&v660, 0);
      sub_1AE23D47C();
      v217 = v576;
      sub_1ADDCEE40(v589, v576, &qword_1EB5BA2A0, &unk_1AE242200);
      v175 = *(v590 + 48);
      swift_beginAccess();
      v218 = sub_1ADDE3EF8(&v660, v217);
      if (*v219)
      {
        break;
      }

      (v218)(&v660, 0);
      swift_endAccess();
      v584(v217 + v175, v595);
      sub_1ADE0DC8C(v217, type metadata accessor for Replica);
      v220 = v215 - v216;
      if (__OFSUB__(v215, v216))
      {
        goto LABEL_291;
      }

      v221 = *(v577 + 20);
      v175 = v612;
      v222 = *&v612[v221];
      v223 = &v220[v222];
      if (__OFADD__(v222, v220))
      {
        goto LABEL_292;
      }

      if (v223 < v222)
      {
        goto LABEL_293;
      }

      v633 = *&v612[v221];
      v593 = v221;
      v224 = v604;
      v225 = *v604;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v660 = *v224;
      v227 = v660;
      *v224 = 0x8000000000000000;
      v175 = sub_1ADDD8A6C(v175);
      v229 = *(v227 + 16);
      v230 = (v228 & 1) == 0;
      v231 = v229 + v230;
      if (__OFADD__(v229, v230))
      {
        goto LABEL_294;
      }

      v232 = v228;
      if (*(v227 + 24) >= v231)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1ADDFB81C();
          v227 = v660;
        }
      }

      else
      {
        sub_1ADDDDED0(v231, isUniquelyReferenced_nonNull_native);
        v227 = v660;
        v233 = sub_1ADDD8A6C(v612);
        if ((v232 & 1) != (v234 & 1))
        {
          goto LABEL_350;
        }

        v175 = v233;
      }

      v608 = v223;
      v235 = v604;
      v236 = *v604;
      *v604 = v227;

      v237 = *v235;
      if (v232)
      {
        v238 = v175 * v585;
        v239 = v612;
      }

      else
      {
        v240 = v565;
        sub_1AE23C11C();
        v237[(v175 >> 6) + 8] |= 1 << v175;
        v239 = v612;
        sub_1ADDDE338(v612, v237[6] + v175 * v568, type metadata accessor for Replica);
        v238 = v175 * v585;
        v567(v237[7] + v175 * v585, v240, v595);
        v241 = v237[2];
        v242 = __OFADD__(v241, 1);
        v243 = v241 + 1;
        if (v242)
        {
          goto LABEL_308;
        }

        v237[2] = v243;
        v209 = v645;
      }

      v244 = v237[7] + v238;
      sub_1AE23C07C();
      sub_1ADDDE338(v239, v634, type metadata accessor for Replica);
      v245 = sub_1ADDE22AC(v216, v215);
      v247 = v245;
      v656 = MEMORY[0x1E69E7CC0];
      v248 = v629;
      v204 = v640;
      if (v245 != v246)
      {
        if (v246 >= v245)
        {
          if (v245 < v246)
          {
            v653 = 0;
            v249 = v664;
            v250 = v245;
            v656 = MEMORY[0x1E69E7CC0];
            v635 = v245;
            v638 = v246;
            while (2)
            {
              if (v247 < 0)
              {
                __break(1u);
LABEL_269:
                __break(1u);
LABEL_270:
                __break(1u);
LABEL_271:
                __break(1u);
LABEL_272:
                __break(1u);
LABEL_273:
                __break(1u);
LABEL_274:
                __break(1u);
LABEL_275:
                __break(1u);
LABEL_276:
                __break(1u);
LABEL_277:
                __break(1u);
LABEL_278:
                __break(1u);
                goto LABEL_279;
              }

              if (v250 >= v249[2])
              {
                goto LABEL_269;
              }

              v650 = ((*(v643 + 80) + 32) & ~*(v643 + 80));
              v651 = *(v643 + 72) * v250;
              v652 = v249;
              v251 = v650 + v249 + v651;
              v252 = v657;
              sub_1ADDCEE40(v251, v657, &qword_1EB5BA148, &qword_1AE241B60);
              sub_1ADDCEE40(v252 + *(v654 + 36), v248, &qword_1EB5BA450, &unk_1AE25B3B0);
              if ((*v642)(v248, 1, v209) != 1)
              {
                v268 = v637;
                sub_1ADDDE4D8(v248, v637, type metadata accessor for RetainedMapRun);
                sub_1ADDCEE40(v268, v210, &qword_1EB5BA460, &qword_1AE251020);
                v269 = *v649;
                v175 = v658;
                if ((*v649)(v210, 1, v658) == 1)
                {
                  sub_1ADDCEDE0(v210, &qword_1EB5BA460, &qword_1AE251020);
                  v175 = sub_1AE23BFEC();
                  v270 = *(*(v175 - 8) + 16);
                  v271 = v623;
                  v270(v623, v634, v175);
                  if (__OFADD__(v633, v653))
                  {
                    goto LABEL_275;
                  }

                  v272 = v271;
                  v273 = v658;
                  *(v272 + *(v658 + 20)) = v633 + v653;
                  v274 = v630;
                  sub_1ADDDE338(v272, v630, type metadata accessor for FinalizedTimestamp);
                  v644 = *v655;
                  v644(v274, 0, 1, v273);
                  v275 = v657[1];
                  v276 = (v275 - *v657);
                  if (__OFSUB__(v275, *v657))
                  {
                    goto LABEL_276;
                  }

                  *(v274 + *(v648 + 20)) = v276;
                  v277 = v656;
                  v278 = *(v656 + 16);
                  if (v278)
                  {
                    v639 = v276;
                    v621 = (*(v646 + 80) + 32) & ~*(v646 + 80);
                    v620 = *(v646 + 72);
                    v279 = v614;
                    sub_1ADDDE338(v656 + v621 + v620 * (v278 - 1), v614, type metadata accessor for FinalizedTimestampRange);
                    v280 = v599;
                    sub_1ADDCEE40(v279, v599, &qword_1EB5BA460, &qword_1AE251020);
                    v281 = v658;
                    if (v269(v280, 1, v658) == 1)
                    {
                      sub_1ADDCEDE0(v280, &qword_1EB5BA460, &qword_1AE251020);
                      v282 = 1;
                      v283 = v609;
                    }

                    else
                    {
                      v330 = v581;
                      sub_1ADDDE4D8(v280, v581, type metadata accessor for FinalizedTimestamp);
                      v283 = v609;
                      v270(v609, v330, v175);
                      v175 = *(v330 + *(v281 + 20));
                      sub_1ADE0DC8C(v330, type metadata accessor for FinalizedTimestamp);
                      v331 = *(v279 + *(v648 + 20));
                      v242 = __OFADD__(v175, v331);
                      v332 = v175 + v331;
                      if (v242)
                      {
                        goto LABEL_290;
                      }

                      v282 = 0;
                      *(v283 + *(v281 + 20)) = v332;
                    }

                    v644(v283, v282, 1, v281);
                    v333 = *(v626 + 48);
                    v334 = v597;
                    sub_1ADDCEE40(v283, v597, &qword_1EB5BA460, &qword_1AE251020);
                    sub_1ADDCEE40(v630, v334 + v333, &qword_1EB5BA460, &qword_1AE251020);
                    if (v269(v334, 1, v281) == 1)
                    {
                      sub_1ADDCEDE0(v283, &qword_1EB5BA460, &qword_1AE251020);
                      v335 = v269(v334 + v333, 1, v281);
                      v210 = v628;
                      v277 = v656;
                      if (v335 == 1)
                      {
                        sub_1ADDCEDE0(v334, &qword_1EB5BA460, &qword_1AE251020);
                        v248 = v629;
                        v276 = v639;
                        goto LABEL_110;
                      }

LABEL_122:
                      v346 = v334;
                      v347 = &qword_1EB5BA4A0;
                      v348 = &unk_1AE253DA0;
LABEL_123:
                      sub_1ADDCEDE0(v346, v347, v348);
                      v248 = v629;
                      v276 = v639;
                      goto LABEL_124;
                    }

                    v344 = v580;
                    sub_1ADDCEE40(v334, v580, &qword_1EB5BA460, &qword_1AE251020);
                    v345 = v269(v334 + v333, 1, v281);
                    v277 = v656;
                    if (v345 == 1)
                    {
                      sub_1ADDCEDE0(v609, &qword_1EB5BA460, &qword_1AE251020);
                      sub_1ADE0DC8C(v344, type metadata accessor for FinalizedTimestamp);
                      v210 = v628;
                      goto LABEL_122;
                    }

                    v354 = v334 + v333;
                    v355 = v563;
                    sub_1ADDDE4D8(v354, v563, type metadata accessor for FinalizedTimestamp);
                    v210 = v628;
                    if (*(v344 + *(v281 + 20)) != *(v355 + *(v281 + 20)))
                    {
                      sub_1ADE0DC8C(v355, type metadata accessor for FinalizedTimestamp);
                      sub_1ADDCEDE0(v609, &qword_1EB5BA460, &qword_1AE251020);
                      sub_1ADE0DC8C(v344, type metadata accessor for FinalizedTimestamp);
                      v346 = v334;
                      v347 = &qword_1EB5BA460;
                      v348 = &qword_1AE251020;
                      goto LABEL_123;
                    }

                    v356 = sub_1AE23BF8C();
                    sub_1ADE0DC8C(v355, type metadata accessor for FinalizedTimestamp);
                    sub_1ADDCEDE0(v609, &qword_1EB5BA460, &qword_1AE251020);
                    sub_1ADE0DC8C(v344, type metadata accessor for FinalizedTimestamp);
                    sub_1ADDCEDE0(v334, &qword_1EB5BA460, &qword_1AE251020);
                    v248 = v629;
                    v276 = v639;
                    if ((v356 & 1) == 0)
                    {
LABEL_124:
                      sub_1ADE0DC8C(v614, type metadata accessor for FinalizedTimestampRange);
                      v274 = v630;
                      goto LABEL_125;
                    }

LABEL_110:
                    v175 = v277[2];
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v277 = sub_1ADF79A40(v277);
                    }

                    v336 = v623;
                    v247 = v635;
                    sub_1ADE0DC8C(v614, type metadata accessor for FinalizedTimestampRange);
                    sub_1ADE0DC8C(v630, type metadata accessor for FinalizedTimestampRange);
                    if (!v175)
                    {
                      goto LABEL_299;
                    }

                    if (v175 > v277[2])
                    {
                      goto LABEL_301;
                    }

                    v337 = v277 + v621 + (v175 - 1) * v620;
                    v338 = *(v648 + 20);
                    v339 = *(v337 + v338);
                    v242 = __OFADD__(v339, v276);
                    v340 = v276 + v339;
                    if (v242)
                    {
                      goto LABEL_303;
                    }

                    *(v337 + v338) = v340;
                  }

                  else
                  {
LABEL_125:
                    sub_1ADDDE338(v274, v618, type metadata accessor for FinalizedTimestampRange);
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v277 = sub_1ADDE47F8(0, v277[2] + 1, 1, v277);
                    }

                    v336 = v623;
                    v350 = v277[2];
                    v349 = v277[3];
                    v247 = v635;
                    if (v350 >= v349 >> 1)
                    {
                      v277 = sub_1ADDE47F8(v349 > 1, v350 + 1, 1, v277);
                    }

                    sub_1ADE0DC8C(v630, type metadata accessor for FinalizedTimestampRange);
                    v277[2] = v350 + 1;
                    sub_1ADDDE4D8(v618, v277 + ((*(v646 + 80) + 32) & ~*(v646 + 80)) + *(v646 + 72) * v350, type metadata accessor for FinalizedTimestampRange);
                  }

                  sub_1ADDCEDE0(v657, &qword_1EB5BA148, &qword_1AE241B60);
                  v242 = __OFADD__(v653, v276);
                  v653 += v276;
                  v175 = v636;
                  if (v242)
                  {
                    goto LABEL_277;
                  }

                  v656 = v277;
                  sub_1ADDDE4D8(v336, v636, type metadata accessor for FinalizedTimestamp);
                  v644(v175, 0, 1, v658);
                  v209 = v645;
                  v351 = *(v637 + *(v645 + 20));
                  sub_1ADE0DC8C(v637, type metadata accessor for RetainedMapRun);
                  *(v175 + *(v209 + 20)) = v351;
                  v204 = v640;
LABEL_132:
                  v249 = v652;
                  goto LABEL_133;
                }

                v284 = v624;
                sub_1ADDDE4D8(v210, v624, type metadata accessor for FinalizedTimestamp);
                sub_1ADDDE338(v284, v204, type metadata accessor for FinalizedTimestamp);
                v285 = *v655;
                (*v655)(v204, 0, 1, v175);
                v286 = v657[1];
                v287 = v286 - *v657;
                if (__OFSUB__(v286, *v657))
                {
                  goto LABEL_274;
                }

                *(v204 + *(v648 + 20)) = v287;
                v288 = *(v656 + 16);
                if (v288)
                {
                  v644 = ((*(v646 + 80) + 32) & ~*(v646 + 80));
                  v639 = *(v646 + 72);
                  v289 = v616;
                  sub_1ADDDE338(v644 + v656 + v639 * (v288 - 1), v616, type metadata accessor for FinalizedTimestampRange);
                  v290 = v601;
                  sub_1ADDCEE40(v289, v601, &qword_1EB5BA460, &qword_1AE251020);
                  v175 = v658;
                  if (v269(v290, 1, v658) == 1)
                  {
                    sub_1ADDCEDE0(v290, &qword_1EB5BA460, &qword_1AE251020);
                    v291 = v610;
                    v285(v610, 1, 1, v175);
                  }

                  else
                  {
                    v311 = v290;
                    v312 = v583;
                    sub_1ADDDE4D8(v311, v583, type metadata accessor for FinalizedTimestamp);
                    v313 = sub_1AE23BFEC();
                    v291 = v610;
                    (*(*(v313 - 8) + 16))(v610, v312, v313);
                    v314 = *(v312 + *(v175 + 20));
                    sub_1ADE0DC8C(v312, type metadata accessor for FinalizedTimestamp);
                    v315 = *(v289 + *(v648 + 20));
                    v242 = __OFADD__(v314, v315);
                    v316 = v314 + v315;
                    if (v242)
                    {
                      goto LABEL_289;
                    }

                    *(v291 + *(v175 + 20)) = v316;
                    v285(v291, 0, 1, v175);
                  }

                  v317 = *(v626 + 48);
                  v318 = v600;
                  sub_1ADDCEE40(v291, v600, &qword_1EB5BA460, &qword_1AE251020);
                  sub_1ADDCEE40(v640, v318 + v317, &qword_1EB5BA460, &qword_1AE251020);
                  if (v269(v318, 1, v175) == 1)
                  {
                    sub_1ADDCEDE0(v291, &qword_1EB5BA460, &qword_1AE251020);
                    v319 = v269(v318 + v317, 1, v175);
                    v204 = v640;
                    if (v319 == 1)
                    {
                      sub_1ADDCEDE0(v318, &qword_1EB5BA460, &qword_1AE251020);
                      v210 = v628;
                      v248 = v629;
                      goto LABEL_88;
                    }

LABEL_96:
                    sub_1ADDCEDE0(v318, &qword_1EB5BA4A0, &unk_1AE253DA0);
                    v210 = v628;
LABEL_97:
                    v248 = v629;
                    goto LABEL_98;
                  }

                  v326 = v582;
                  sub_1ADDCEE40(v318, v582, &qword_1EB5BA460, &qword_1AE251020);
                  if (v269(v318 + v317, 1, v175) == 1)
                  {
                    sub_1ADDCEDE0(v610, &qword_1EB5BA460, &qword_1AE251020);
                    sub_1ADE0DC8C(v326, type metadata accessor for FinalizedTimestamp);
                    v204 = v640;
                    goto LABEL_96;
                  }

                  v352 = v564;
                  sub_1ADDDE4D8(v318 + v317, v564, type metadata accessor for FinalizedTimestamp);
                  v210 = v628;
                  v204 = v640;
                  if (*(v326 + *(v175 + 20)) != *(v352 + *(v175 + 20)))
                  {
                    sub_1ADE0DC8C(v352, type metadata accessor for FinalizedTimestamp);
                    sub_1ADDCEDE0(v610, &qword_1EB5BA460, &qword_1AE251020);
                    sub_1ADE0DC8C(v326, type metadata accessor for FinalizedTimestamp);
                    sub_1ADDCEDE0(v318, &qword_1EB5BA460, &qword_1AE251020);
                    goto LABEL_97;
                  }

                  v353 = sub_1AE23BF8C();
                  sub_1ADE0DC8C(v352, type metadata accessor for FinalizedTimestamp);
                  sub_1ADDCEDE0(v610, &qword_1EB5BA460, &qword_1AE251020);
                  sub_1ADE0DC8C(v326, type metadata accessor for FinalizedTimestamp);
                  sub_1ADDCEDE0(v318, &qword_1EB5BA460, &qword_1AE251020);
                  v248 = v629;
                  if ((v353 & 1) == 0)
                  {
LABEL_98:
                    sub_1ADE0DC8C(v616, type metadata accessor for FinalizedTimestampRange);
                    v247 = v635;
                    goto LABEL_99;
                  }

LABEL_88:
                  v320 = *(v656 + 16);
                  v321 = swift_isUniquelyReferenced_nonNull_native();
                  v247 = v635;
                  if ((v321 & 1) == 0)
                  {
                    v656 = sub_1ADF79A40(v656);
                  }

                  v175 = v636;
                  sub_1ADE0DC8C(v616, type metadata accessor for FinalizedTimestampRange);
                  sub_1ADE0DC8C(v204, type metadata accessor for FinalizedTimestampRange);
                  sub_1ADE0DC8C(v624, type metadata accessor for FinalizedTimestamp);
                  sub_1ADDCEDE0(v657, &qword_1EB5BA148, &qword_1AE241B60);
                  if (!v320)
                  {
                    goto LABEL_298;
                  }

                  if (v320 > *(v656 + 16))
                  {
                    goto LABEL_300;
                  }

                  v322 = v644 + v656 + (v320 - 1) * v639;
                  v323 = *(v648 + 20);
                  v324 = *&v322[v323];
                  v242 = __OFADD__(v324, v287);
                  v325 = v324 + v287;
                  if (v242)
                  {
                    goto LABEL_302;
                  }

                  *&v322[v323] = v325;
                  v209 = v645;
                }

                else
                {
LABEL_99:
                  sub_1ADDDE338(v204, v619, type metadata accessor for FinalizedTimestampRange);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v656 = sub_1ADDE47F8(0, *(v656 + 16) + 1, 1, v656);
                  }

                  v209 = v645;
                  v328 = *(v656 + 16);
                  v327 = *(v656 + 24);
                  if (v328 >= v327 >> 1)
                  {
                    v656 = sub_1ADDE47F8(v327 > 1, v328 + 1, 1, v656);
                  }

                  sub_1ADE0DC8C(v204, type metadata accessor for FinalizedTimestampRange);
                  sub_1ADE0DC8C(v624, type metadata accessor for FinalizedTimestamp);
                  sub_1ADDCEDE0(v657, &qword_1EB5BA148, &qword_1AE241B60);
                  v329 = v656;
                  *(v656 + 16) = v328 + 1;
                  sub_1ADDDE4D8(v619, v329 + ((*(v646 + 80) + 32) & ~*(v646 + 80)) + *(v646 + 72) * v328, type metadata accessor for FinalizedTimestampRange);
                  v175 = v636;
                }

                sub_1ADDDE4D8(v637, v175, type metadata accessor for RetainedMapRun);
                goto LABEL_132;
              }

              sub_1ADDCEDE0(v248, &qword_1EB5BA450, &unk_1AE25B3B0);
              v175 = sub_1AE23BFEC();
              v253 = *(*(v175 - 8) + 16);
              v254 = v632;
              v253(v632, v634, v175);
              if (__OFADD__(v633, v653))
              {
                goto LABEL_271;
              }

              v255 = v658;
              *(v254 + *(v658 + 20)) = v633 + v653;
              v256 = v647;
              sub_1ADDDE338(v254, v647, type metadata accessor for FinalizedTimestamp);
              v644 = *v655;
              v644(v256, 0, 1, v255);
              v257 = v657[1];
              v242 = __OFSUB__(v257, *v657);
              v258 = (v257 - *v657);
              if (v242)
              {
                goto LABEL_272;
              }

              v259 = *(v648 + 20);
              v639 = v258;
              *(v256 + v259) = v258;
              v260 = v656;
              v261 = *(v656 + 16);
              if (!v261)
              {
                goto LABEL_76;
              }

              v621 = (*(v646 + 80) + 32) & ~*(v646 + 80);
              v620 = *(v646 + 72);
              v262 = v625;
              sub_1ADDDE338(v656 + v621 + v620 * (v261 - 1), v625, type metadata accessor for FinalizedTimestampRange);
              v263 = v615;
              sub_1ADDCEE40(v262, v615, &qword_1EB5BA460, &qword_1AE251020);
              v264 = *v649;
              v265 = v658;
              if ((*v649)(v263, 1, v658) == 1)
              {
                sub_1ADDCEDE0(v263, &qword_1EB5BA460, &qword_1AE251020);
                v266 = 1;
                v267 = v622;
              }

              else
              {
                v292 = v598;
                sub_1ADDDE4D8(v263, v598, type metadata accessor for FinalizedTimestamp);
                v267 = v622;
                v253(v622, v292, v175);
                v175 = *(v292 + *(v265 + 20));
                sub_1ADE0DC8C(v292, type metadata accessor for FinalizedTimestamp);
                v293 = *(v262 + *(v648 + 20));
                v242 = __OFADD__(v175, v293);
                v294 = v175 + v293;
                if (v242)
                {
                  goto LABEL_281;
                }

                v266 = 0;
                *(v267 + *(v265 + 20)) = v294;
              }

              v644(v267, v266, 1, v265);
              v295 = *(v626 + 48);
              v296 = v613;
              sub_1ADDCEE40(v267, v613, &qword_1EB5BA460, &qword_1AE251020);
              sub_1ADDCEE40(v647, v296 + v295, &qword_1EB5BA460, &qword_1AE251020);
              v297 = v264(v296, 1, v265);
              v298 = v628;
              if (v297 == 1)
              {
                sub_1ADDCEDE0(v267, &qword_1EB5BA460, &qword_1AE251020);
                v299 = v264(v296 + v295, 1, v265);
                v210 = v298;
                v260 = v656;
                if (v299 == 1)
                {
                  sub_1ADDCEDE0(v296, &qword_1EB5BA460, &qword_1AE251020);
                  v254 = v632;
                  v248 = v629;
LABEL_65:
                  v175 = v260[2];
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v260 = sub_1ADF79A40(v260);
                  }

                  v209 = v645;
                  v247 = v635;
                  sub_1ADE0DC8C(v625, type metadata accessor for FinalizedTimestampRange);
                  sub_1ADE0DC8C(v647, type metadata accessor for FinalizedTimestampRange);
                  if (!v175)
                  {
                    goto LABEL_282;
                  }

                  if (v175 > v260[2])
                  {
                    goto LABEL_283;
                  }

                  v300 = v260 + v621 + (v175 - 1) * v620;
                  v301 = *(v648 + 20);
                  v302 = *(v300 + v301);
                  v242 = __OFADD__(v302, v639);
                  v303 = v639 + v302;
                  if (v242)
                  {
                    goto LABEL_284;
                  }

                  *(v300 + v301) = v303;
                  goto LABEL_81;
                }

LABEL_73:
                v306 = v296;
                v307 = &qword_1EB5BA4A0;
                v308 = &unk_1AE253DA0;
LABEL_74:
                sub_1ADDCEDE0(v306, v307, v308);
                v254 = v632;
                v248 = v629;
              }

              else
              {
                v611 = v250;
                v304 = v596;
                sub_1ADDCEE40(v296, v596, &qword_1EB5BA460, &qword_1AE251020);
                v305 = v264(v296 + v295, 1, v265);
                v260 = v656;
                if (v305 == 1)
                {
                  sub_1ADDCEDE0(v622, &qword_1EB5BA460, &qword_1AE251020);
                  sub_1ADE0DC8C(v304, type metadata accessor for FinalizedTimestamp);
                  v210 = v298;
                  v250 = v611;
                  goto LABEL_73;
                }

                v341 = v296 + v295;
                v342 = v579;
                sub_1ADDDE4D8(v341, v579, type metadata accessor for FinalizedTimestamp);
                v210 = v298;
                v250 = v611;
                if (*(v304 + *(v265 + 20)) != *(v342 + *(v265 + 20)))
                {
                  sub_1ADE0DC8C(v342, type metadata accessor for FinalizedTimestamp);
                  sub_1ADDCEDE0(v622, &qword_1EB5BA460, &qword_1AE251020);
                  sub_1ADE0DC8C(v304, type metadata accessor for FinalizedTimestamp);
                  v306 = v296;
                  v307 = &qword_1EB5BA460;
                  v308 = &qword_1AE251020;
                  goto LABEL_74;
                }

                v343 = sub_1AE23BF8C();
                sub_1ADE0DC8C(v342, type metadata accessor for FinalizedTimestamp);
                sub_1ADDCEDE0(v622, &qword_1EB5BA460, &qword_1AE251020);
                sub_1ADE0DC8C(v304, type metadata accessor for FinalizedTimestamp);
                sub_1ADDCEDE0(v296, &qword_1EB5BA460, &qword_1AE251020);
                v254 = v632;
                v248 = v629;
                if (v343)
                {
                  goto LABEL_65;
                }
              }

              sub_1ADE0DC8C(v625, type metadata accessor for FinalizedTimestampRange);
              v256 = v647;
LABEL_76:
              sub_1ADDDE338(v256, v631, type metadata accessor for FinalizedTimestampRange);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v260 = sub_1ADDE47F8(0, v260[2] + 1, 1, v260);
              }

              v209 = v645;
              v310 = v260[2];
              v309 = v260[3];
              v247 = v635;
              if (v310 >= v309 >> 1)
              {
                v260 = sub_1ADDE47F8(v309 > 1, v310 + 1, 1, v260);
              }

              sub_1ADE0DC8C(v647, type metadata accessor for FinalizedTimestampRange);
              v260[2] = v310 + 1;
              sub_1ADDDE4D8(v631, v260 + ((*(v646 + 80) + 32) & ~*(v646 + 80)) + *(v646 + 72) * v310, type metadata accessor for FinalizedTimestampRange);
LABEL_81:
              sub_1ADDCEDE0(v657, &qword_1EB5BA148, &qword_1AE241B60);
              v249 = v652;
              v242 = __OFADD__(v653, v639);
              v653 += v639;
              v175 = v636;
              if (v242)
              {
                goto LABEL_273;
              }

              v656 = v260;
              sub_1ADDDE4D8(v254, v636, type metadata accessor for FinalizedTimestamp);
              v644(v175, 0, 1, v658);
              *(v175 + *(v209 + 20)) = 1;
              v204 = v640;
LABEL_133:
              (*v641)(v175, 0, 1, v209);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v249 = sub_1ADF799F0(v249);
              }

              if (v250 >= v249[2])
              {
                goto LABEL_270;
              }

              ++v250;
              sub_1ADDE4820(v175, v650 + v249 + *(v654 + 36) + v651);
              v664 = v249;
              v246 = v638;
              if (v638 == v250)
              {
                goto LABEL_23;
              }

              continue;
            }
          }

LABEL_310:
          __break(1u);
LABEL_311:
          __break(1u);
LABEL_312:
          __break(1u);
LABEL_313:
          __break(1u);
LABEL_314:
          __break(1u);
LABEL_315:
          __break(1u);
LABEL_316:
          __break(1u);
LABEL_317:
          __break(1u);
LABEL_318:
          __break(1u);
LABEL_319:
          __break(1u);
LABEL_320:
          __break(1u);
LABEL_321:
          __break(1u);
LABEL_322:
          __break(1u);
LABEL_323:
          __break(1u);
LABEL_324:
          __break(1u);
LABEL_325:
          __break(1u);
LABEL_326:
          __break(1u);
LABEL_327:
          __break(1u);
LABEL_328:
          __break(1u);
LABEL_329:
          __break(1u);
          goto LABEL_330;
        }

LABEL_309:
        __break(1u);
        goto LABEL_310;
      }

LABEL_23:
      sub_1ADDE2B98(v247, v246);

      v211 = sub_1AE23BFEC();
      (*(*(v211 - 8) + 8))(v634, v211);
      *&v612[v593] = v608;
      v212 = v588;
      sub_1AE23D46C();
      if (*(v212 + v575) == v660)
      {
        goto LABEL_19;
      }
    }

    v639 = v218;
    v644 = v175;
    v537 = *(v577 + 20);
    v638 = *&v612[v537];
    v357 = v219;
    sub_1ADDDE338(v612, v546, type metadata accessor for Replica);
    v659 = MEMORY[0x1E69E7CC0];
    v553 = v216;
    v650 = v357;
    v358 = sub_1ADDE22AC(v216, v215);
    if (v358 != v359)
    {
      break;
    }

    v204 = v640;
    v360 = v644;
LABEL_168:
    sub_1ADDE2B98(v358, v359);
    v387 = v659;
    v388 = sub_1AE23BFEC();
    v389 = *(v388 - 8);
    v390 = *(v389 + 8);
    v653 = v388;
    v536 = v389 + 8;
    v535 = v390;
    (v390)(v546);
    (v639)(&v660, 0);
    swift_endAccess();
    v175 = v576;
    v584(v360 + v576, v595);
    sub_1ADE0DC8C(v175, type metadata accessor for Replica);
    v593 = *(v387 + 16);
    if (!v593)
    {
      goto LABEL_260;
    }

    v620 = v387 + ((*(v646 + 80) + 32) & ~*(v646 + 80));
    v650 = (v389 + 16);

    v391 = 0;
    v392 = v553;
    v393 = v547;
    v611 = v387;
    do
    {
      if (v391 >= *(v387 + 16))
      {
        goto LABEL_317;
      }

      v635 = v392;
      v608 = *(v646 + 72);
      v633 = v391;
      sub_1ADDDE338(v620 + v608 * v391, v393, type metadata accessor for FinalizedTimestampRange);
      v175 = v557;
      sub_1ADDCEE40(v393, v557, &qword_1EB5BA460, &qword_1AE251020);
      v394 = *v649;
      v395 = v658;
      v396 = (*v649)(v175, 1, v658);
      v644 = v394;
      if (v396 == 1)
      {
        sub_1ADDCEDE0(v175, &qword_1EB5BA460, &qword_1AE251020);
        v209 = v645;
        goto LABEL_213;
      }

      sub_1ADDDE4D8(v175, v558, type metadata accessor for FinalizedTimestamp);
      v175 = v539;
      sub_1ADDCEE40(v393, v539, &qword_1EB5BA460, &qword_1AE251020);
      if (v394(v175, 1, v395) == 1)
      {
        goto LABEL_351;
      }

      v397 = v538;
      sub_1ADDDE4D8(v175, v538, type metadata accessor for FinalizedTimestamp);
      v175 = *(v397 + *(v395 + 20));
      sub_1ADE0DC8C(v397, type metadata accessor for FinalizedTimestamp);
      v621 = *(v393 + *(v648 + 20));
      v398 = v612;
      if (__OFADD__(v175, v621))
      {
        goto LABEL_324;
      }

      if ((v175 + v621) < v175)
      {
        goto LABEL_325;
      }

      v399 = v604;
      v400 = *v604;
      v401 = swift_isUniquelyReferenced_nonNull_native();
      v660 = *v399;
      v402 = v660;
      *v399 = 0x8000000000000000;
      v404 = sub_1ADDD8A6C(v398);
      v405 = *(v402 + 16);
      v406 = (v403 & 1) == 0;
      v407 = v405 + v406;
      if (__OFADD__(v405, v406))
      {
        goto LABEL_326;
      }

      v408 = v403;
      if (*(v402 + 24) >= v407)
      {
        v209 = v645;
        if ((v401 & 1) == 0)
        {
          sub_1ADDFB81C();
          v402 = v660;
        }
      }

      else
      {
        sub_1ADDDDED0(v407, v401);
        v402 = v660;
        v409 = sub_1ADDD8A6C(v612);
        v209 = v645;
        if ((v408 & 1) != (v410 & 1))
        {
          goto LABEL_350;
        }

        v404 = v409;
      }

      v411 = v604;
      v412 = *v604;
      *v604 = v402;

      v413 = *v411;
      if (v408)
      {
        v414 = v404 * v585;
      }

      else
      {
        v415 = v565;
        sub_1AE23C11C();
        v413[(v404 >> 6) + 8] |= 1 << v404;
        sub_1ADDDE338(v612, v413[6] + v404 * v568, type metadata accessor for Replica);
        v414 = v404 * v585;
        v567(v413[7] + v404 * v585, v415, v595);
        v416 = v413[2];
        v242 = __OFADD__(v416, 1);
        v417 = v416 + 1;
        if (v242)
        {
          goto LABEL_336;
        }

        v413[2] = v417;
        v209 = v645;
      }

      v418 = v413[7] + v414;
      sub_1AE23C07C();
      v419 = v635;
      v175 = v635 + v621;
      v420 = v603;
      if (__OFADD__(v635, v621))
      {
        goto LABEL_327;
      }

      if (v175 < v635)
      {
        goto LABEL_328;
      }

      v421 = v558;
      v639 = *(v558 + *(v658 + 20));
      v422 = v602;
      sub_1ADDDE338(v612, v602, type metadata accessor for Replica);
      v660 = MEMORY[0x1E69E7CC0];
      v423 = sub_1ADDE22AC(v419, v175);
      if (v423 == v424)
      {
        goto LABEL_211;
      }

      if (v424 < v423)
      {
        goto LABEL_337;
      }

      if (v423 >= v424)
      {
        goto LABEL_338;
      }

      v425 = 0;
      v426 = v664;
      v427 = v423;
      v428 = v627;
      v651 = v424;
      v652 = v423;
      do
      {
        if (v423 < 0)
        {
          goto LABEL_278;
        }

        if (v427 >= v426[2])
        {
LABEL_279:
          __break(1u);
LABEL_280:
          __break(1u);
LABEL_281:
          __break(1u);
LABEL_282:
          __break(1u);
LABEL_283:
          __break(1u);
LABEL_284:
          __break(1u);
          goto LABEL_285;
        }

        v429 = (*(v643 + 80) + 32) & ~*(v643 + 80);
        v656 = *(v643 + 72) * v427;
        v430 = v617;
        sub_1ADDCEE40(v426 + v429 + v656, v617, &qword_1EB5BA148, &qword_1AE241B60);
        v431 = v430 + *(v654 + 36);
        v432 = v607;
        v175 = &qword_1EB5BA450;
        sub_1ADDCEE40(v431, v607, &qword_1EB5BA450, &unk_1AE25B3B0);
        if ((*v642)(v432, 1, v209) == 1)
        {
          sub_1ADDCEDE0(v432, &qword_1EB5BA450, &unk_1AE25B3B0);
          (*v650)(v420, v602, v653);
          if (__OFADD__(v639, v425))
          {
            goto LABEL_286;
          }

          v433 = v658;
          *(v420 + *(v658 + 20)) = v639 + v425;
          sub_1ADDDE338(v420, v428, type metadata accessor for FinalizedTimestamp);
          v434 = *v655;
          (*v655)(v428, 0, 1, v433);
          v175 = v617;
          v435 = v617[1];
          v436 = v435 - *v617;
          if (__OFSUB__(v435, *v617))
          {
            goto LABEL_287;
          }

          *(v428 + *(v648 + 20)) = v436;
          sub_1ADDE4044(v627);
          v428 = v627;
          sub_1ADE0DC8C(v627, type metadata accessor for FinalizedTimestampRange);
          sub_1ADDCEDE0(v175, &qword_1EB5BA148, &qword_1AE241B60);
          v242 = __OFADD__(v425, v436);
          v425 += v436;
          if (v242)
          {
            goto LABEL_288;
          }

          v437 = v605;
          sub_1ADDDE4D8(v420, v605, type metadata accessor for FinalizedTimestamp);
          v434(v437, 0, 1, v658);
          v209 = v645;
          *(v437 + *(v645 + 20)) = 1;
        }

        else
        {
          v175 = v606;
          sub_1ADDDE4D8(v432, v606, type metadata accessor for RetainedMapRun);
          v438 = v586;
          sub_1ADDCEE40(v175, v586, &qword_1EB5BA460, &qword_1AE251020);
          v439 = v658;
          if ((v644)(v438, 1, v658) == 1)
          {
            sub_1ADDCEDE0(v438, &qword_1EB5BA460, &qword_1AE251020);
            v420 = v603;
            (*v650)(v603, v602, v653);
            v437 = v605;
            if (__OFADD__(v639, v425))
            {
              goto LABEL_305;
            }

            v440 = v658;
            *(v420 + *(v658 + 20)) = v639 + v425;
            sub_1ADDDE338(v420, v428, type metadata accessor for FinalizedTimestamp);
            v441 = *v655;
            (*v655)(v428, 0, 1, v440);
            v175 = v617;
            v442 = v617[1];
            v443 = v442 - *v617;
            if (__OFSUB__(v442, *v617))
            {
              goto LABEL_306;
            }

            *(v428 + *(v648 + 20)) = v443;
            sub_1ADDE4044(v627);
            sub_1ADE0DC8C(v627, type metadata accessor for FinalizedTimestampRange);
            sub_1ADDCEDE0(v175, &qword_1EB5BA148, &qword_1AE241B60);
            v242 = __OFADD__(v425, v443);
            v425 += v443;
            if (v242)
            {
              goto LABEL_307;
            }

            sub_1ADDDE4D8(v420, v437, type metadata accessor for FinalizedTimestamp);
            v441(v437, 0, 1, v658);
            v209 = v645;
            v444 = *(v606 + *(v645 + 20));
            sub_1ADE0DC8C(v606, type metadata accessor for RetainedMapRun);
            *(v437 + *(v209 + 20)) = v444;
            v428 = v627;
          }

          else
          {
            v445 = v566;
            sub_1ADDDE4D8(v438, v566, type metadata accessor for FinalizedTimestamp);
            sub_1ADDDE338(v445, v428, type metadata accessor for FinalizedTimestamp);
            (*v655)(v428, 0, 1, v439);
            v446 = v617;
            v447 = v617[1];
            v437 = v605;
            if (__OFSUB__(v447, *v617))
            {
              goto LABEL_304;
            }

            *(v428 + *(v648 + 20)) = v447 - *v617;
            sub_1ADDE4044(v627);
            v428 = v627;
            sub_1ADE0DC8C(v627, type metadata accessor for FinalizedTimestampRange);
            sub_1ADE0DC8C(v445, type metadata accessor for FinalizedTimestamp);
            sub_1ADDCEDE0(v446, &qword_1EB5BA148, &qword_1AE241B60);
            sub_1ADDDE4D8(v606, v437, type metadata accessor for RetainedMapRun);
            v420 = v603;
            v209 = v645;
          }
        }

        (*v641)(v437, 0, 1, v209);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v426 = sub_1ADF799F0(v426);
        }

        if (v427 >= v426[2])
        {
          goto LABEL_280;
        }

        ++v427;
        sub_1ADDE4820(v437, v426 + v429 + *(v654 + 36) + v656);
        v664 = v426;
        v424 = v651;
        v423 = v652;
      }

      while (v651 != v427);
      v210 = v628;
      v421 = v558;
      v422 = v602;
LABEL_211:
      sub_1ADDE2B98(v423, v424);

      sub_1ADE0DC8C(v421, type metadata accessor for FinalizedTimestamp);
      v535(v422, v653);
      v448 = v638 + v621;
      if (__OFADD__(v638, v621))
      {
        goto LABEL_329;
      }

      v638 = (v638 + v621);
      *&v612[v537] = v448;
      v393 = v547;
LABEL_213:
      v449 = *(v393 + *(v648 + 20));
      sub_1ADE0DC8C(v393, type metadata accessor for FinalizedTimestampRange);
      v392 = v635 + v449;
      v204 = v640;
      if (__OFADD__(v635, v449))
      {
        goto LABEL_318;
      }

      v391 = v633 + 1;
      v387 = v611;
    }

    while (v633 + 1 != v593);

    v633 = *(v387 + 16);
    if (v633)
    {
      v450 = 0;
      v451 = v534;
      while (v450 < *(v387 + 16))
      {
        v635 = v450;
        sub_1ADDDE338(v620 + v608 * v450, v451, type metadata accessor for FinalizedTimestampRange);
        v452 = v533;
        v175 = &qword_1AE251020;
        sub_1ADDCEE40(v451, v533, &qword_1EB5BA460, &qword_1AE251020);
        v453 = v451;
        v454 = (v644)(v452, 1, v658);
        sub_1ADDCEDE0(v452, &qword_1EB5BA460, &qword_1AE251020);
        if (v454 == 1)
        {
          v455 = *(v453 + *(v648 + 20));
          v456 = (v638 + v455);
          if (__OFADD__(v638, v455))
          {
            goto LABEL_339;
          }

          if (v456 < v638)
          {
            goto LABEL_340;
          }

          v457 = v604;
          v458 = *v604;
          v459 = swift_isUniquelyReferenced_nonNull_native();
          v660 = *v457;
          v460 = v660;
          *v457 = 0x8000000000000000;
          v175 = sub_1ADDD8A6C(v612);
          v462 = *(v460 + 16);
          v463 = (v461 & 1) == 0;
          v464 = v462 + v463;
          if (__OFADD__(v462, v463))
          {
            goto LABEL_341;
          }

          v465 = v461;
          if (*(v460 + 24) >= v464)
          {
            if ((v459 & 1) == 0)
            {
              sub_1ADDFB81C();
              v460 = v660;
            }
          }

          else
          {
            sub_1ADDDDED0(v464, v459);
            v460 = v660;
            v466 = sub_1ADDD8A6C(v612);
            if ((v465 & 1) != (v467 & 1))
            {
              goto LABEL_350;
            }

            v175 = v466;
          }

          v468 = v603;
          v469 = v604;
          v470 = *v604;
          *v604 = v460;

          v471 = *v469;
          if (v465)
          {
            v175 *= v585;
          }

          else
          {
            v472 = v565;
            sub_1AE23C11C();
            v471[(v175 >> 6) + 8] |= 1 << v175;
            sub_1ADDDE338(v612, v471[6] + v175 * v568, type metadata accessor for Replica);
            v175 *= v585;
            v567(v471[7] + v175, v472, v595);
            v473 = v471[2];
            v242 = __OFADD__(v473, 1);
            v474 = v473 + 1;
            if (v242)
            {
              goto LABEL_344;
            }

            v471[2] = v474;
          }

          v475 = v471[7] + v175;
          sub_1AE23C07C();
          v476 = v553;
          v175 = v553 + v455;
          v209 = v645;
          if (__OFADD__(v553, v455))
          {
            goto LABEL_342;
          }

          if (v175 < v553)
          {
            goto LABEL_343;
          }

          v639 = v456;
          v477 = v612;
          v478 = v571;
          sub_1ADDDE338(v612, v571, type metadata accessor for Replica);
          v660 = MEMORY[0x1E69E7CC0];
          v479 = sub_1ADDE22AC(v476, v175);
          if (v479 != v480)
          {
            if (v480 < v479)
            {
              goto LABEL_345;
            }

            if (v479 >= v480)
            {
              goto LABEL_346;
            }

            v481 = 0;
            v482 = v664;
            v483 = v479;
            v484 = v627;
            v651 = v480;
            v652 = v479;
            do
            {
              if (v479 < 0)
              {
                goto LABEL_295;
              }

              if (v483 >= v482[2])
              {
                goto LABEL_296;
              }

              v485 = (*(v643 + 80) + 32) & ~*(v643 + 80);
              v656 = *(v643 + 72) * v483;
              v486 = v594;
              sub_1ADDCEE40(v482 + v485 + v656, v594, &qword_1EB5BA148, &qword_1AE241B60);
              v487 = v486 + *(v654 + 36);
              v488 = v574;
              v175 = &qword_1EB5BA450;
              sub_1ADDCEE40(v487, v574, &qword_1EB5BA450, &unk_1AE25B3B0);
              if ((*v642)(v488, 1, v209) == 1)
              {
                sub_1ADDCEDE0(v488, &qword_1EB5BA450, &unk_1AE25B3B0);
                (*v650)(v468, v571, v653);
                if (__OFADD__(v638, v481))
                {
                  goto LABEL_314;
                }

                v489 = v658;
                *(v468 + *(v658 + 20)) = v638 + v481;
                sub_1ADDDE338(v468, v484, type metadata accessor for FinalizedTimestamp);
                v490 = *v655;
                (*v655)(v484, 0, 1, v489);
                v175 = v594;
                v491 = v594[1];
                v492 = v491 - *v594;
                if (__OFSUB__(v491, *v594))
                {
                  goto LABEL_315;
                }

                *(v484 + *(v648 + 20)) = v492;
                sub_1ADDE4044(v627);
                v484 = v627;
                sub_1ADE0DC8C(v627, type metadata accessor for FinalizedTimestampRange);
                sub_1ADDCEDE0(v175, &qword_1EB5BA148, &qword_1AE241B60);
                v242 = __OFADD__(v481, v492);
                v481 += v492;
                if (v242)
                {
                  goto LABEL_316;
                }

                v493 = v572;
                sub_1ADDDE4D8(v468, v572, type metadata accessor for FinalizedTimestamp);
                v490(v493, 0, 1, v658);
                v209 = v645;
                *(v493 + *(v645 + 20)) = 1;
              }

              else
              {
                v175 = v573;
                sub_1ADDDE4D8(v488, v573, type metadata accessor for RetainedMapRun);
                v494 = v559;
                sub_1ADDCEE40(v175, v559, &qword_1EB5BA460, &qword_1AE251020);
                v495 = v658;
                if ((v644)(v494, 1, v658) == 1)
                {
                  sub_1ADDCEDE0(v494, &qword_1EB5BA460, &qword_1AE251020);
                  v468 = v603;
                  (*v650)(v603, v571, v653);
                  if (__OFADD__(v638, v481))
                  {
                    goto LABEL_321;
                  }

                  v496 = v658;
                  *(v468 + *(v658 + 20)) = v638 + v481;
                  sub_1ADDDE338(v468, v484, type metadata accessor for FinalizedTimestamp);
                  v497 = *v655;
                  (*v655)(v484, 0, 1, v496);
                  v175 = v594;
                  v498 = v594[1];
                  v499 = v498 - *v594;
                  v493 = v572;
                  if (__OFSUB__(v498, *v594))
                  {
                    goto LABEL_322;
                  }

                  *(v484 + *(v648 + 20)) = v499;
                  sub_1ADDE4044(v627);
                  sub_1ADE0DC8C(v627, type metadata accessor for FinalizedTimestampRange);
                  sub_1ADDCEDE0(v175, &qword_1EB5BA148, &qword_1AE241B60);
                  v242 = __OFADD__(v481, v499);
                  v481 += v499;
                  if (v242)
                  {
                    goto LABEL_323;
                  }

                  sub_1ADDDE4D8(v468, v493, type metadata accessor for FinalizedTimestamp);
                  v497(v493, 0, 1, v658);
                  v209 = v645;
                  v500 = *(v573 + *(v645 + 20));
                  sub_1ADE0DC8C(v573, type metadata accessor for RetainedMapRun);
                  *(v493 + *(v209 + 20)) = v500;
                  v484 = v627;
                }

                else
                {
                  v501 = v551;
                  sub_1ADDDE4D8(v494, v551, type metadata accessor for FinalizedTimestamp);
                  sub_1ADDDE338(v501, v484, type metadata accessor for FinalizedTimestamp);
                  (*v655)(v484, 0, 1, v495);
                  v502 = v594;
                  v503 = v594[1];
                  if (__OFSUB__(v503, *v594))
                  {
                    goto LABEL_320;
                  }

                  *(v484 + *(v648 + 20)) = v503 - *v594;
                  sub_1ADDE4044(v627);
                  v484 = v627;
                  sub_1ADE0DC8C(v627, type metadata accessor for FinalizedTimestampRange);
                  sub_1ADE0DC8C(v501, type metadata accessor for FinalizedTimestamp);
                  sub_1ADDCEDE0(v502, &qword_1EB5BA148, &qword_1AE241B60);
                  v493 = v572;
                  sub_1ADDDE4D8(v573, v572, type metadata accessor for RetainedMapRun);
                  v468 = v603;
                  v209 = v645;
                }
              }

              (*v641)(v493, 0, 1, v209);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v482 = sub_1ADF799F0(v482);
              }

              if (v483 >= v482[2])
              {
                goto LABEL_297;
              }

              ++v483;
              sub_1ADDE4820(v493, v482 + v485 + *(v654 + 36) + v656);
              v664 = v482;
              v480 = v651;
              v479 = v652;
            }

            while (v651 != v483);
            v210 = v628;
            v478 = v571;
            v477 = v612;
          }

          sub_1ADDE2B98(v479, v480);

          v535(v478, v653);
          *(v477 + v537) = v639;
          v204 = v640;
        }

        else
        {
          v639 = v638;
          v209 = v645;
        }

        v451 = v534;
        v504 = *(v534 + *(v648 + 20));
        sub_1ADE0DC8C(v534, type metadata accessor for FinalizedTimestampRange);
        v242 = __OFADD__(v553, v504);
        v553 += v504;
        if (v242)
        {
          goto LABEL_331;
        }

        v450 = v635 + 1;
        v638 = v639;
        v387 = v611;
        if (v635 + 1 == v633)
        {
          goto LABEL_260;
        }
      }

LABEL_330:
      __break(1u);
LABEL_331:
      __break(1u);
LABEL_332:
      __break(1u);
LABEL_333:
      __break(1u);
LABEL_334:
      __break(1u);
      goto LABEL_335;
    }

LABEL_260:

    v505 = v588;
    sub_1AE23D46C();
    if (*(v505 + v575) == v660)
    {
LABEL_19:
      v205 = (v549 - 1) & v549;
      sub_1ADDCEDE0(v588, &qword_1EB5BA440, &unk_1AE24CCB0);
      v206 = v589;
      v176 = v204;
      v207 = v555;
      sub_1ADDCEE40(v589, v555, &qword_1EB5BA2A0, &unk_1AE242200);
      v208 = *(v590 + 48);
      sub_1ADDE56CC(&v664, &v660);
      sub_1ADDE5800(&v660, v207);
      v174 = v205;
      sub_1ADDCEDE0(v206, &qword_1EB5BA2A0, &unk_1AE242200);
      sub_1ADDE5C20(&v664);
      v584(v207 + v208, v595);
      v170 = v532;
      v171 = v531;
      v175 = v530;
      v177 = v548;
      if (!v205)
      {
LABEL_5:
        v178 = v550;
        while (1)
        {
          v179 = v177 + 1;
          if (__OFADD__(v177, 1))
          {
            break;
          }

          if (v179 >= v175)
          {

            v506 = v612;
            v507 = *&v612[*(v577 + 20)];
            if (v507 > 0)
            {
              v508 = *v524;
              v175 = v524[1];
              v509 = swift_getObjectType();
              v510 = v525;
              sub_1ADDDE338(v506, v525, type metadata accessor for Replica);
              v511 = *(v175 + 64);
              swift_unknownObjectRetain();
              v511(v510, v507, v526, v509, v175);
              swift_unknownObjectRelease();
              v512 = sub_1AE23BFEC();
              v506 = v612;
              (*(*(v512 - 8) + 8))(v510, v512);
            }

            v513 = sub_1ADE51518(MEMORY[0x1E69E7CC0]);
            sub_1ADE0DC8C(v506, type metadata accessor for Timestamp);
            v514 = v604[1];
            v604[1] = v513;

            v515 = v578;
            if (v528)
            {
              swift_beginAccess();
              v516 = *(v515 + 16);
              v242 = __OFADD__(v516, 1);
              v517 = v516 + 1;
              if (v242)
              {
                goto LABEL_347;
              }

              *(v515 + 16) = v517;
            }

            swift_beginAccess();
            v518 = *v556;
            v519 = v527;
            *v527 = *(v515 + 16);
            *(v519 + 8) = 0;
            v520 = *v604;
            v521 = v604[1];
            v519[2] = v518;
            v519[3] = v520;
            v519[4] = v521;
          }

          v174 = *(v171 + 8 * v179);
          ++v177;
          if (v174)
          {
            v177 = v179;
            goto LABEL_10;
          }
        }

LABEL_285:
        __break(1u);
LABEL_286:
        __break(1u);
LABEL_287:
        __break(1u);
LABEL_288:
        __break(1u);
LABEL_289:
        __break(1u);
LABEL_290:
        __break(1u);
LABEL_291:
        __break(1u);
LABEL_292:
        __break(1u);
LABEL_293:
        __break(1u);
LABEL_294:
        __break(1u);
LABEL_295:
        __break(1u);
LABEL_296:
        __break(1u);
LABEL_297:
        __break(1u);
LABEL_298:
        __break(1u);
LABEL_299:
        __break(1u);
LABEL_300:
        __break(1u);
LABEL_301:
        __break(1u);
LABEL_302:
        __break(1u);
LABEL_303:
        __break(1u);
LABEL_304:
        __break(1u);
LABEL_305:
        __break(1u);
LABEL_306:
        __break(1u);
LABEL_307:
        __break(1u);
LABEL_308:
        __break(1u);
        goto LABEL_309;
      }

      goto LABEL_4;
    }
  }

  v361 = v627;
  if (v359 < v358)
  {
    goto LABEL_348;
  }

  if (v358 < v359)
  {
    v651 = 0;
    v652 = v359;
    v175 = *v650;
    v362 = v358;
    v653 = v358;
    while (1)
    {
      if (v358 < 0)
      {
        goto LABEL_311;
      }

      if (v362 >= *(v175 + 16))
      {
        goto LABEL_312;
      }

      v363 = (*(v643 + 80) + 32) & ~*(v643 + 80);
      v656 = *(v643 + 72) * v362;
      v364 = v569;
      sub_1ADDCEE40(v175 + v363 + v656, v569, &qword_1EB5BA148, &qword_1AE241B60);
      v365 = v562;
      sub_1ADDCEE40(v364 + *(v654 + 36), v562, &qword_1EB5BA450, &unk_1AE25B3B0);
      if ((*v642)(v365, 1, v209) == 1)
      {
        sub_1ADDCEDE0(v365, &qword_1EB5BA450, &unk_1AE25B3B0);
        (*v655)(v361, 1, 1, v658);
        v366 = v364[1];
        if (__OFSUB__(v366, *v364))
        {
          goto LABEL_319;
        }

        *(v361 + *(v648 + 20)) = v366 - *v364;
        sub_1ADDE4044(v627);
        v361 = v627;
        sub_1ADE0DC8C(v627, type metadata accessor for FinalizedTimestampRange);
        v367 = 1;
        v368 = v560;
      }

      else
      {
        v369 = v561;
        sub_1ADDDE4D8(v365, v561, type metadata accessor for RetainedMapRun);
        v370 = v552;
        sub_1ADDCEE40(v369, v552, &qword_1EB5BA460, &qword_1AE251020);
        v371 = v658;
        if ((*v649)(v370, 1, v658) == 1)
        {
          sub_1ADDCEDE0(v370, &qword_1EB5BA460, &qword_1AE251020);
          v372 = sub_1AE23BFEC();
          v373 = v603;
          (*(*(v372 - 8) + 16))(v603, v546, v372);
          v374 = v651;
          if (__OFADD__(v638, v651))
          {
            goto LABEL_332;
          }

          v375 = v658;
          *(v373 + *(v658 + 20)) = v638 + v651;
          sub_1ADDDE338(v373, v361, type metadata accessor for FinalizedTimestamp);
          v376 = *v655;
          (*v655)(v361, 0, 1, v375);
          v364 = v569;
          v377 = v569[1];
          v378 = v377 - *v569;
          if (__OFSUB__(v377, *v569))
          {
            goto LABEL_334;
          }

          *(v361 + *(v648 + 20)) = v378;
          sub_1ADDE4044(v627);
          sub_1ADE0DC8C(v627, type metadata accessor for FinalizedTimestampRange);
          v242 = __OFADD__(v374, v378);
          v379 = v374 + v378;
          if (v242)
          {
LABEL_335:
            __break(1u);
LABEL_336:
            __break(1u);
LABEL_337:
            __break(1u);
LABEL_338:
            __break(1u);
LABEL_339:
            __break(1u);
LABEL_340:
            __break(1u);
LABEL_341:
            __break(1u);
LABEL_342:
            __break(1u);
LABEL_343:
            __break(1u);
LABEL_344:
            __break(1u);
LABEL_345:
            __break(1u);
LABEL_346:
            __break(1u);
LABEL_347:
            __break(1u);
LABEL_348:
            __break(1u);
            break;
          }

          v651 = v379;
          v380 = v560;
          sub_1ADDDE4D8(v603, v560, type metadata accessor for FinalizedTimestamp);
          v381 = v375;
          v368 = v380;
          v376(v380, 0, 1, v381);
          v209 = v645;
          v382 = *(v561 + *(v645 + 20));
          sub_1ADE0DC8C(v561, type metadata accessor for RetainedMapRun);
          v367 = 0;
          *(v368 + *(v209 + 20)) = v382;
          v361 = v627;
        }

        else
        {
          v383 = v529;
          sub_1ADDDE4D8(v370, v529, type metadata accessor for FinalizedTimestamp);
          sub_1ADDDE338(v383, v361, type metadata accessor for FinalizedTimestamp);
          (*v655)(v361, 0, 1, v371);
          v364 = v569;
          v384 = v569[1];
          if (__OFSUB__(v384, *v569))
          {
            goto LABEL_333;
          }

          *(v361 + *(v648 + 20)) = v384 - *v569;
          sub_1ADDE4044(v627);
          v361 = v627;
          sub_1ADE0DC8C(v627, type metadata accessor for FinalizedTimestampRange);
          sub_1ADE0DC8C(v383, type metadata accessor for FinalizedTimestamp);
          v368 = v560;
          sub_1ADDDE4D8(v561, v560, type metadata accessor for RetainedMapRun);
          v367 = 0;
          v209 = v645;
        }
      }

      (*v641)(v368, v367, 1, v209);
      sub_1ADDCEDE0(v364, &qword_1EB5BA148, &qword_1AE241B60);
      v385 = v175;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v385 = sub_1ADF799F0(v175);
      }

      if (v362 >= *(v385 + 16))
      {
        goto LABEL_313;
      }

      ++v362;
      v175 = v385;
      sub_1ADDE4820(v368, v385 + v363 + *(v654 + 36) + v656);
      v359 = v652;
      v358 = v653;
      v204 = v640;
      v210 = v628;
      if (v652 == v362)
      {
        v386 = v651;
        *v650 = v385;
        v528 |= v386 > 0;
        v360 = v644;
        goto LABEL_168;
      }
    }
  }

  __break(1u);
LABEL_350:
  sub_1AE23E27C();
  __break(1u);
LABEL_351:
  sub_1ADDCEDE0(v175, &qword_1EB5BA460, &qword_1AE251020);
  result = sub_1AE23DC5C();
  __break(1u);
  return result;
}

uint64_t sub_1ADE80AF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = *(a1 + OBJC_IVAR___CRContext_crdtDatabase);
  v15 = *(a1 + OBJC_IVAR___CRContext_crdtDatabase + 8);
  ObjectType = swift_getObjectType();
  v23 = a2;
  v24 = a3;
  v25 = a4;
  v26 = a5;
  v27 = a6;
  v28 = a1;
  v29 = a7;
  v30 = a8;
  v31 = a9;
  v18 = *(v15 + 24);
  swift_unknownObjectRetain();
  v18(sub_1ADE88C9C, v22, &type metadata for Renames, ObjectType, v15);
  return swift_unknownObjectRelease();
}

uint64_t sub_1ADE80BF0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, char *a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v11 = a5;
  sub_1ADE79634(a1, a4, 0, a5, a2, a3);
  v14 = v13;
  v16 = v15;
  v17 = sub_1ADE79634(a6, 0, 1, v11, a7, a9);
  v19 = v18;
  LOBYTE(v11) = v14 | v20;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = v16;
  sub_1ADE88D68(v19, sub_1ADE88CD4, 0, isUniquelyReferenced_nonNull_native, &v24);

  v23 = v24;
  *a8 = v17;
  *(a8 + 8) = v11 & 1;
  *(a8 + 16) = v23;
  return result;
}

uint64_t sub_1ADE80CE8(uint64_t a1, void (**a2)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, char *a7, char a8, uint64_t a9, _BYTE *a10, void *a11, _BYTE *a12, uint64_t a13)
{
  v955 = a7;
  v794 = a5;
  v793 = a4;
  v913 = a3;
  v958 = a2;
  v928 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA4A0, &unk_1AE253DA0);
  v16 = *(*(v928 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v928);
  v821 = v778 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v799 = v778 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v802 = v778 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v860 = v778 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v836 = v778 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v839 = v778 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v902 = v778 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v875 = v778 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v879 = v778 - v33;
  v819 = sub_1AE23C12C();
  v844 = *(v819 - 8);
  v34 = *(v844 + 64);
  MEMORY[0x1EEE9AC00](v819);
  v818 = v778 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v952 = type metadata accessor for FinalizedTimestampRange(0);
  v901 = *(v952 - 8);
  v36 = *(v901 + 64);
  v37 = MEMORY[0x1EEE9AC00](v952);
  v855 = v778 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x1EEE9AC00](v37);
  v845 = v778 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v884 = v778 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v830 = v778 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  v822 = v778 - v46;
  v47 = MEMORY[0x1EEE9AC00](v45);
  v853 = v778 - v48;
  v49 = MEMORY[0x1EEE9AC00](v47);
  v831 = v778 - v50;
  v51 = MEMORY[0x1EEE9AC00](v49);
  v823 = v778 - v52;
  v53 = MEMORY[0x1EEE9AC00](v51);
  v854 = v778 - v54;
  v55 = MEMORY[0x1EEE9AC00](v53);
  v899 = v778 - v56;
  v57 = MEMORY[0x1EEE9AC00](v55);
  v891 = v778 - v58;
  v59 = MEMORY[0x1EEE9AC00](v57);
  v919 = v778 - v60;
  v61 = MEMORY[0x1EEE9AC00](v59);
  v868 = v778 - v62;
  v63 = MEMORY[0x1EEE9AC00](v61);
  v861 = v778 - v64;
  v65 = MEMORY[0x1EEE9AC00](v63);
  v896 = v778 - v66;
  v67 = MEMORY[0x1EEE9AC00](v65);
  v869 = v778 - v68;
  v69 = MEMORY[0x1EEE9AC00](v67);
  v863 = v778 - v70;
  v71 = MEMORY[0x1EEE9AC00](v69);
  v897 = v778 - v72;
  v73 = MEMORY[0x1EEE9AC00](v71);
  v805 = v778 - v74;
  v75 = MEMORY[0x1EEE9AC00](v73);
  v926 = v778 - v76;
  v77 = MEMORY[0x1EEE9AC00](v75);
  v921 = v778 - v78;
  v79 = MEMORY[0x1EEE9AC00](v77);
  v937 = v778 - v80;
  v81 = MEMORY[0x1EEE9AC00](v79);
  v911 = v778 - v82;
  v83 = MEMORY[0x1EEE9AC00](v81);
  v903 = v778 - v84;
  v85 = MEMORY[0x1EEE9AC00](v83);
  v924 = v778 - v86;
  v87 = MEMORY[0x1EEE9AC00](v85);
  v912 = v778 - v88;
  v89 = MEMORY[0x1EEE9AC00](v87);
  v905 = v778 - v90;
  v91 = MEMORY[0x1EEE9AC00](v89);
  v925 = v778 - v92;
  v93 = MEMORY[0x1EEE9AC00](v91);
  v866 = v778 - v94;
  MEMORY[0x1EEE9AC00](v93);
  v914 = v778 - v95;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA460, &qword_1AE251020);
  v97 = *(*(v96 - 8) + 64);
  v98 = MEMORY[0x1EEE9AC00](v96 - 8);
  v798 = v778 - ((v99 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = MEMORY[0x1EEE9AC00](v98);
  v843 = v778 - v101;
  v102 = MEMORY[0x1EEE9AC00](v100);
  v834 = v778 - v103;
  v104 = MEMORY[0x1EEE9AC00](v102);
  v788 = v778 - v105;
  v106 = MEMORY[0x1EEE9AC00](v104);
  v801 = v778 - v107;
  v108 = MEMORY[0x1EEE9AC00](v106);
  v806 = v778 - v109;
  v110 = MEMORY[0x1EEE9AC00](v108);
  v790 = v778 - v111;
  v112 = MEMORY[0x1EEE9AC00](v110);
  v814 = v778 - v113;
  v114 = MEMORY[0x1EEE9AC00](v112);
  v807 = v778 - v115;
  v116 = MEMORY[0x1EEE9AC00](v114);
  v842 = v778 - v117;
  v118 = MEMORY[0x1EEE9AC00](v116);
  v835 = v778 - v119;
  v120 = MEMORY[0x1EEE9AC00](v118);
  v862 = v778 - v121;
  v122 = MEMORY[0x1EEE9AC00](v120);
  v881 = v778 - v123;
  v124 = MEMORY[0x1EEE9AC00](v122);
  v809 = v778 - v125;
  v126 = MEMORY[0x1EEE9AC00](v124);
  v838 = v778 - v127;
  v128 = MEMORY[0x1EEE9AC00](v126);
  v850 = v778 - v129;
  v130 = MEMORY[0x1EEE9AC00](v128);
  v811 = v778 - v131;
  v132 = MEMORY[0x1EEE9AC00](v130);
  v852 = v778 - v133;
  v134 = MEMORY[0x1EEE9AC00](v132);
  v851 = v778 - v135;
  v136 = MEMORY[0x1EEE9AC00](v134);
  v909 = v778 - v137;
  v138 = MEMORY[0x1EEE9AC00](v136);
  v832 = v778 - v139;
  v140 = MEMORY[0x1EEE9AC00](v138);
  v874 = v778 - v141;
  v142 = MEMORY[0x1EEE9AC00](v140);
  v904 = v778 - v143;
  v144 = MEMORY[0x1EEE9AC00](v142);
  v916 = v778 - v145;
  v146 = MEMORY[0x1EEE9AC00](v144);
  v847 = v778 - v147;
  v148 = MEMORY[0x1EEE9AC00](v146);
  v877 = v778 - v149;
  v150 = MEMORY[0x1EEE9AC00](v148);
  v894 = v778 - v151;
  v152 = MEMORY[0x1EEE9AC00](v150);
  v878 = v778 - v153;
  v154 = MEMORY[0x1EEE9AC00](v152);
  v880 = v778 - v155;
  v156 = MEMORY[0x1EEE9AC00](v154);
  v895 = v778 - v157;
  v158 = MEMORY[0x1EEE9AC00](v156);
  v160 = v778 - v159;
  v161 = MEMORY[0x1EEE9AC00](v158);
  v828 = v778 - v162;
  v163 = MEMORY[0x1EEE9AC00](v161);
  v873 = v778 - v164;
  MEMORY[0x1EEE9AC00](v163);
  v857 = v778 - v165;
  v949 = type metadata accessor for FinalizedTimestamp(0);
  v166 = *(v949 - 8);
  v167 = *(v166 + 64);
  v168 = MEMORY[0x1EEE9AC00](v949);
  v787 = v778 - ((v169 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = MEMORY[0x1EEE9AC00](v168);
  v800 = v778 - v171;
  v172 = MEMORY[0x1EEE9AC00](v170);
  v859 = v778 - v173;
  v174 = MEMORY[0x1EEE9AC00](v172);
  v783 = v778 - v175;
  v176 = MEMORY[0x1EEE9AC00](v174);
  v789 = v778 - v177;
  v178 = MEMORY[0x1EEE9AC00](v176);
  v840 = v778 - v179;
  v180 = MEMORY[0x1EEE9AC00](v178);
  v784 = v778 - v181;
  v182 = MEMORY[0x1EEE9AC00](v180);
  v791 = v778 - v183;
  v184 = MEMORY[0x1EEE9AC00](v182);
  v841 = v778 - v185;
  v186 = MEMORY[0x1EEE9AC00](v184);
  v808 = v778 - v187;
  v188 = MEMORY[0x1EEE9AC00](v186);
  v837 = v778 - v189;
  v190 = MEMORY[0x1EEE9AC00](v188);
  v900 = v778 - v191;
  v192 = MEMORY[0x1EEE9AC00](v190);
  v795 = v778 - v193;
  v194 = MEMORY[0x1EEE9AC00](v192);
  v810 = v778 - v195;
  v196 = MEMORY[0x1EEE9AC00](v194);
  v871 = v778 - v197;
  v198 = MEMORY[0x1EEE9AC00](v196);
  v796 = v778 - v199;
  v200 = MEMORY[0x1EEE9AC00](v198);
  v812 = v778 - v201;
  v202 = MEMORY[0x1EEE9AC00](v200);
  v883 = v778 - v203;
  v204 = MEMORY[0x1EEE9AC00](v202);
  v846 = v778 - v205;
  v206 = MEMORY[0x1EEE9AC00](v204);
  v876 = v778 - v207;
  v208 = MEMORY[0x1EEE9AC00](v206);
  v923 = v778 - v209;
  v210 = MEMORY[0x1EEE9AC00](v208);
  v824 = v778 - v211;
  v212 = MEMORY[0x1EEE9AC00](v210);
  v848 = v778 - v213;
  v214 = MEMORY[0x1EEE9AC00](v212);
  v917 = v778 - v215;
  v216 = MEMORY[0x1EEE9AC00](v214);
  v825 = v778 - v217;
  v218 = MEMORY[0x1EEE9AC00](v216);
  v849 = v778 - v219;
  v220 = MEMORY[0x1EEE9AC00](v218);
  v918 = v778 - v221;
  v222 = MEMORY[0x1EEE9AC00](v220);
  v827 = v778 - v223;
  v224 = MEMORY[0x1EEE9AC00](v222);
  v929 = v778 - v225;
  v226 = MEMORY[0x1EEE9AC00](v224);
  v856 = v778 - v227;
  MEMORY[0x1EEE9AC00](v226);
  v833 = v778 - v228;
  v944 = type metadata accessor for RetainedMapRun(0);
  v229 = *(v944 - 8);
  v230 = *(v229 + 64);
  v231 = MEMORY[0x1EEE9AC00](v944);
  v864 = v778 - ((v232 + 15) & 0xFFFFFFFFFFFFFFF0);
  v233 = MEMORY[0x1EEE9AC00](v231);
  v907 = v778 - v234;
  v235 = MEMORY[0x1EEE9AC00](v233);
  v930 = v778 - v236;
  MEMORY[0x1EEE9AC00](v235);
  v888 = v778 - v237;
  v957 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA148, &qword_1AE241B60);
  v943 = *(v957 - 8);
  v238 = *(v943 + 64);
  v239 = MEMORY[0x1EEE9AC00](v957);
  v867 = (v778 - ((v240 + 15) & 0xFFFFFFFFFFFFFFF0));
  v241 = MEMORY[0x1EEE9AC00](v239);
  v932 = (v778 - v242);
  v243 = MEMORY[0x1EEE9AC00](v241);
  v956 = (v778 - v244);
  MEMORY[0x1EEE9AC00](v243);
  v890 = (v778 - v245);
  v246 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA450, &unk_1AE25B3B0);
  v247 = *(*(v246 - 8) + 64);
  v248 = MEMORY[0x1EEE9AC00](v246 - 8);
  v865 = v778 - ((v249 + 15) & 0xFFFFFFFFFFFFFFF0);
  v250 = MEMORY[0x1EEE9AC00](v248);
  v893 = v778 - v251;
  v252 = MEMORY[0x1EEE9AC00](v250);
  v908 = v778 - v253;
  v254 = MEMORY[0x1EEE9AC00](v252);
  v922 = v778 - v255;
  v256 = MEMORY[0x1EEE9AC00](v254);
  v931 = v778 - v257;
  v258 = MEMORY[0x1EEE9AC00](v256);
  v936 = v778 - v259;
  v260 = MEMORY[0x1EEE9AC00](v258);
  v889 = v778 - v261;
  MEMORY[0x1EEE9AC00](v260);
  v910 = v778 - v262;
  v263 = type metadata accessor for Replica();
  v817 = *(v263 - 8);
  v264 = *(v817 + 64);
  v265 = MEMORY[0x1EEE9AC00](v263);
  v885 = v778 - ((v266 + 15) & 0xFFFFFFFFFFFFFFF0);
  v267 = MEMORY[0x1EEE9AC00](v265);
  v780 = v778 - v268;
  MEMORY[0x1EEE9AC00](v267);
  v820 = v778 - v269;
  v804 = sub_1AE23C0EC();
  v270 = *(v804 - 8);
  v271 = *(v270 + 64);
  MEMORY[0x1EEE9AC00](v804);
  v273 = v778 - ((v272 + 15) & 0xFFFFFFFFFFFFFFF0);
  v274 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA440, &unk_1AE24CCB0);
  v275 = *(*(v274 - 8) + 64);
  MEMORY[0x1EEE9AC00](v274);
  v829 = v778 - v276;
  v942 = sub_1AE23BFEC();
  v785 = *(v942 - 8);
  v277 = *(v785 + 64);
  result = MEMORY[0x1EEE9AC00](v942);
  v786 = v778 - ((v279 + 15) & 0xFFFFFFFFFFFFFFF0);
  v826 = v263;
  v280 = *(v263 + 20);
  v815 = a1;
  if (!*(a1 + v280))
  {
    return result;
  }

  swift_beginAccess();
  v778[1] = a6;
  v281 = *a6;
  if (*(v281 + 16) && (v282 = sub_1ADDD8A6C(v815), (v283 & 1) != 0))
  {
    sub_1ADDE56CC(*(v281 + 56) + 24 * v282, v963);
  }

  else
  {
    memset(v963, 0, sizeof(v963));
  }

  sub_1ADDD2198(v963, &v962, &qword_1EB5BA468, &unk_1AE259210);
  if (v962)
  {
    sub_1ADDE5634(&v962, &v964);
  }

  else
  {
    v964 = MEMORY[0x1E69E7CC0];
    v965 = 0;
    swift_unknownObjectWeakInit();
    v965 = 0;
    swift_unknownObjectWeakAssign();
    sub_1ADDCEDE0(&v962, &qword_1EB5BA468, &unk_1AE259210);
  }

  swift_endAccess();
  ObjectType = swift_getObjectType();
  v285 = *(v794 + 8);
  v781 = ObjectType;
  v286 = v285();
  v287 = *(v785 + 16);
  v939 = v785 + 16;
  v938 = v287;
  v288 = v786;
  if (v286)
  {
    v289 = v786;
    v290 = &v945;
  }

  else
  {
    v289 = v786;
    v290 = &v847;
  }

  v287(v289, *(v290 - 32), v942);
  v291 = (*(v794 + 56))(v288, v781);
  if ((a8 & 1) == 0 && v291 <= v955)
  {
    v291 = v955 + 1;
    if (__OFADD__(v955, 1))
    {
      goto LABEL_552;
    }
  }

  v882 = v291;
  v778[0] = a13;
  v892 = a11;
  v797 = a9;
  sub_1AE23C10C();
  v292 = v829;
  sub_1AE23C0DC();
  (*(v270 + 8))(v273, v804);
  v803 = *(v274 + 36);
  v782 = a10;
  swift_beginAccess();
  v858 = a12;
  swift_beginAccess();
  v293 = sub_1ADE89268(&qword_1ED96A708, MEMORY[0x1E6969B30]);
  v779 = 0;
  v941 = (v229 + 48);
  v953 = (v166 + 48);
  v958 = (v166 + 56);
  v940 = (v229 + 56);
  v294 = v292;
  v813 = v844 + 32;
  v295 = &unk_1AE25B3B0;
  v935 = v160;
  v296 = v949;
  v297 = v944;
  v792 = v293;
  while (1)
  {
    sub_1AE23D46C();
    if (*(v294 + v803) == v961)
    {
      sub_1ADDCEDE0(v294, &qword_1EB5BA440, &unk_1AE24CCB0);
      v777 = v780;
      sub_1ADDDE338(v815, v780, type metadata accessor for Replica);
      sub_1ADDE56CC(&v964, &v961);
      swift_beginAccess();
      sub_1ADDE5800(&v961, v777);
      swift_endAccess();
      if (v779)
      {
        (*(v794 + 64))(v786, v882, v778[0], v781);
      }

      (*(v785 + 8))(v786, v942);
      return sub_1ADDE5C20(&v964);
    }

    v298 = sub_1AE23D51C();
    v300 = *v299;
    v273 = v299[1];
    v298(&v961, 0);
    sub_1AE23D47C();
    v301 = v820;
    sub_1ADDDE338(v815, v820, type metadata accessor for Replica);
    swift_beginAccess();
    v303 = sub_1ADDE3EF8(&v961, v301);
    v304 = *v302;
    v872 = v300;
    if (!v304)
    {
      break;
    }

    v959 = MEMORY[0x1E69E7CC0];
    v948 = v302;
    v305 = sub_1ADDE22AC(v300, v273);
    v307 = &qword_1EB5BA450;
    v947 = v303;
    if (v305 == v306)
    {
      v308 = 0;
      v309 = v935;
      goto LABEL_48;
    }

    v324 = v914;
    v273 = v890;
    v309 = v935;
    if (v306 < v305)
    {
      goto LABEL_538;
    }

    if (v305 >= v306)
    {
      goto LABEL_539;
    }

    v915 = 0;
    v325 = *v948;
    v326 = v305;
    v951 = v305;
    v950 = v306;
    do
    {
      if (v305 < 0)
      {
        goto LABEL_461;
      }

      if (v326 >= *(v325 + 16))
      {
LABEL_462:
        __break(1u);
LABEL_463:
        __break(1u);
LABEL_464:
        __break(1u);
LABEL_465:
        __break(1u);
LABEL_466:
        __break(1u);
LABEL_467:
        __break(1u);
LABEL_468:
        __break(1u);
LABEL_469:
        __break(1u);
LABEL_470:
        __break(1u);
LABEL_471:
        __break(1u);
LABEL_472:
        __break(1u);
LABEL_473:
        __break(1u);
LABEL_474:
        __break(1u);
LABEL_475:
        __break(1u);
LABEL_476:
        __break(1u);
LABEL_477:
        __break(1u);
LABEL_478:
        __break(1u);
LABEL_479:
        __break(1u);
LABEL_480:
        __break(1u);
LABEL_481:
        __break(1u);
LABEL_482:
        __break(1u);
LABEL_483:
        __break(1u);
LABEL_484:
        __break(1u);
LABEL_485:
        __break(1u);
LABEL_486:
        __break(1u);
LABEL_487:
        __break(1u);
LABEL_488:
        __break(1u);
LABEL_489:
        __break(1u);
LABEL_490:
        __break(1u);
LABEL_491:
        __break(1u);
LABEL_492:
        __break(1u);
LABEL_493:
        __break(1u);
LABEL_494:
        __break(1u);
LABEL_495:
        __break(1u);
LABEL_496:
        __break(1u);
LABEL_497:
        __break(1u);
LABEL_498:
        __break(1u);
LABEL_499:
        __break(1u);
LABEL_500:
        __break(1u);
LABEL_501:
        __break(1u);
LABEL_502:
        __break(1u);
LABEL_503:
        __break(1u);
        goto LABEL_504;
      }

      v954 = (*(v943 + 80) + 32) & ~*(v943 + 80);
      v327 = (*(v943 + 72) * v326);
      sub_1ADDCEE40(&v327[v325 + v954], v273, &qword_1EB5BA148, &qword_1AE241B60);
      v328 = v307;
      v329 = v889;
      sub_1ADDCEE40(v273 + *(v957 + 36), v889, v328, v295);
      v330 = (*v941)(v329, 1, v944);
      v955 = v327;
      if (v330 == 1)
      {
        sub_1ADDCEDE0(v329, v328, v295);
        (*v958)(v324, 1, 1, v296);
        v331 = *(v273 + 8);
        if (__OFSUB__(v331, *v273))
        {
          goto LABEL_476;
        }

        v307 = v328;
        *(v324 + *(v952 + 20)) = v331 - *v273;
        sub_1ADDE4044(v914);
        v324 = v914;
        sub_1ADE0DC8C(v914, type metadata accessor for FinalizedTimestampRange);
        v332 = 1;
        v333 = v910;
      }

      else
      {
        v334 = v888;
        sub_1ADDDE4D8(v329, v888, type metadata accessor for RetainedMapRun);
        v335 = v857;
        sub_1ADDCEE40(v334, v857, &qword_1EB5BA460, &qword_1AE251020);
        if ((*v953)(v335, 1, v296) == 1)
        {
          sub_1ADDCEDE0(v335, &qword_1EB5BA460, &qword_1AE251020);
          v336 = v856;
          v938(v856, v913, v942);
          v273 = v915;
          if (__OFADD__(v882, v915))
          {
            goto LABEL_496;
          }

          *(v336 + *(v296 + 20)) = &v882[v915];
          sub_1ADDDE338(v336, v324, type metadata accessor for FinalizedTimestamp);
          v337 = *v958;
          (*v958)(v324, 0, 1, v296);
          v338 = v890[1];
          v339 = v338 - *v890;
          if (__OFSUB__(v338, *v890))
          {
            goto LABEL_497;
          }

          *(v324 + *(v952 + 20)) = v339;
          sub_1ADDE4044(v914);
          sub_1ADE0DC8C(v914, type metadata accessor for FinalizedTimestampRange);
          v320 = __OFADD__(v273, v339);
          v273 += v339;
          if (v320)
          {
            goto LABEL_498;
          }

          v915 = v273;
          v340 = v910;
          sub_1ADDDE4D8(v856, v910, type metadata accessor for FinalizedTimestamp);
          v296 = v949;
          v337(v340, 0, 1, v949);
          v341 = v944;
          v342 = *(v888 + *(v944 + 20));
          sub_1ADE0DC8C(v888, type metadata accessor for RetainedMapRun);
          v333 = v340;
          v332 = 0;
          v343 = *(v341 + 20);
          v273 = v890;
          *(v340 + v343) = v342;
          v324 = v914;
          v307 = &qword_1EB5BA450;
          v309 = v935;
        }

        else
        {
          v273 = v833;
          sub_1ADDDE4D8(v335, v833, type metadata accessor for FinalizedTimestamp);
          sub_1ADDDE338(v273, v324, type metadata accessor for FinalizedTimestamp);
          (*v958)(v324, 0, 1, v296);
          v344 = v890[1];
          v307 = &qword_1EB5BA450;
          if (__OFSUB__(v344, *v890))
          {
            goto LABEL_495;
          }

          *(v324 + *(v952 + 20)) = v344 - *v890;
          sub_1ADDE4044(v914);
          v324 = v914;
          sub_1ADE0DC8C(v914, type metadata accessor for FinalizedTimestampRange);
          sub_1ADE0DC8C(v273, type metadata accessor for FinalizedTimestamp);
          v345 = v910;
          sub_1ADDDE4D8(v888, v910, type metadata accessor for RetainedMapRun);
          v333 = v345;
          v332 = 0;
          v273 = v890;
        }
      }

      (*v940)(v333, v332, 1, v944);
      sub_1ADDCEDE0(v273, &qword_1EB5BA148, &qword_1AE241B60);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v325 = sub_1ADF799F0(v325);
      }

      if (v326 >= *(v325 + 16))
      {
        goto LABEL_463;
      }

      ++v326;
      sub_1ADDE4820(v910, &v955[v325 + v954 + *(v957 + 36)]);
      v306 = v950;
      v295 = &unk_1AE25B3B0;
      v305 = v951;
    }

    while (v950 != v326);
    *v948 = v325;
    v297 = v944;
    v308 = v915;
LABEL_48:
    sub_1ADDE2B98(v305, v306);
    v346 = v959;
    (v947)(&v961, 0);
    swift_endAccess();
    sub_1ADE0DC8C(v820, type metadata accessor for Replica);
    v915 = v308;
    if (v308 > 0)
    {
      *v782 = 1;
    }

    v347 = *(v346 + 16);
    v348 = v346;
    v349 = v866;
    v273 = v873;
    v870 = v347;
    if (v347)
    {
      v947 = (*(v901 + 80) + 32) & ~*(v901 + 80);
      v886 = v348 + v947;
      v887 = v348;

      swift_beginAccess();
      v350 = 0;
      v351 = v872;
      while (1)
      {
        if (v350 >= *(v887 + 16))
        {
          goto LABEL_468;
        }

        v906 = v351;
        v950 = *(v901 + 72);
        v898 = v350;
        sub_1ADDDE338(v886 + v950 * v350, v349, type metadata accessor for FinalizedTimestampRange);
        sub_1ADDCEE40(v349, v273, &qword_1EB5BA460, &qword_1AE251020);
        v951 = *v953;
        if (v951(v273, 1, v296) != 1)
        {
          break;
        }

        sub_1ADDCEDE0(v273, &qword_1EB5BA460, &qword_1AE251020);
LABEL_75:
        v273 = *(v349 + *(v952 + 20));
        sub_1ADE0DC8C(v349, type metadata accessor for FinalizedTimestampRange);
        v351 = v906 + v273;
        if (__OFADD__(v906, v273))
        {
          goto LABEL_469;
        }

        v350 = v898 + 1;
        v273 = v873;
        if (v898 + 1 == v870)
        {
          v273 = v887;

          v898 = *(v273 + 16);
          if (v898)
          {
            swift_beginAccess();
            v493 = 0;
            v494 = v805;
            v294 = v829;
            while (1)
            {
              if (v493 >= *(v887 + 16))
              {
                goto LABEL_499;
              }

              v906 = v493;
              sub_1ADDDE338(v886 + v950 * v493, v494, type metadata accessor for FinalizedTimestampRange);
              v495 = v832;
              sub_1ADDCEE40(v494, v832, &qword_1EB5BA460, &qword_1AE251020);
              v273 = (v951)(v495, 1, v296);
              sub_1ADDCEDE0(v495, &qword_1EB5BA460, &qword_1AE251020);
              if (v273 != 1)
              {
                goto LABEL_211;
              }

              v496 = &v882[v915];
              if (__OFADD__(v882, v915))
              {
                goto LABEL_515;
              }

              v273 = v892;
              swift_beginAccess();
              if (*v273)
              {
                v497 = *(v494 + *(v952 + 20));
                v273 = v496 + v497;
                if (__OFADD__(v496, v497))
                {
                  goto LABEL_527;
                }

                if (v273 < v496)
                {
                  goto LABEL_528;
                }

                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v960 = *v892;
                v499 = v960;
                *v892 = 0x8000000000000000;
                v500 = sub_1ADDD8A6C(v913);
                v502 = v499[2];
                v503 = (v501 & 1) == 0;
                v320 = __OFADD__(v502, v503);
                v504 = v502 + v503;
                if (v320)
                {
                  goto LABEL_529;
                }

                v505 = v501;
                if (v499[3] >= v504)
                {
                  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                  {
                    v638 = v500;
                    sub_1ADDFB81C();
                    v500 = v638;
                    v499 = v960;
                  }
                }

                else
                {
                  sub_1ADDDDED0(v504, isUniquelyReferenced_nonNull_native);
                  v499 = v960;
                  v500 = sub_1ADDD8A6C(v913);
                  if ((v505 & 1) != (v506 & 1))
                  {
                    goto LABEL_556;
                  }
                }

                *v892 = v499;
                if (v505)
                {
                  v507 = *(v844 + 72) * v500;
                }

                else
                {
                  v508 = v818;
                  v509 = v500;
                  sub_1AE23C11C();
                  v499[(v509 >> 6) + 8] |= 1 << v509;
                  sub_1ADDDE338(v913, v499[6] + *(v817 + 72) * v509, type metadata accessor for Replica);
                  v507 = *(v844 + 72) * v509;
                  (*(v844 + 32))(v499[7] + v507, v508, v819);
                  v510 = v499[2];
                  v320 = __OFADD__(v510, 1);
                  v511 = v510 + 1;
                  if (v320)
                  {
                    goto LABEL_537;
                  }

                  v499[2] = v511;
                }

                v512 = v499[7] + v507;
                sub_1AE23C07C();
                v297 = v944;
              }

              swift_endAccess();
              v513 = *(v494 + *(v952 + 20));
              v514 = (v872 + v513);
              if (__OFADD__(v872, v513))
              {
                goto LABEL_516;
              }

              if (v514 < v872)
              {
                goto LABEL_517;
              }

              v515 = sub_1ADDE22AC(v872, v514);
              v517 = v515;
              if (v515 != v516)
              {
                break;
              }

              v954 = 0;
              v955 = MEMORY[0x1E69E7CC0];
LABEL_209:
              sub_1ADDE2B98(v517, v516);

              v320 = __OFADD__(v915, v954);
              v915 += v954;
              if (v320)
              {
                goto LABEL_518;
              }

              *v858 = 1;
              v494 = v805;
              v296 = v949;
              v294 = v829;
LABEL_211:
              v273 = *(v494 + *(v952 + 20));
              sub_1ADE0DC8C(v494, type metadata accessor for FinalizedTimestampRange);
              if (__OFADD__(v872, v273))
              {
                goto LABEL_500;
              }

              v872 += v273;
              v493 = v906 + 1;
              if (v906 + 1 == v898)
              {

                v295 = &unk_1AE25B3B0;
                goto LABEL_333;
              }
            }

            if (v516 >= v515)
            {
              v518 = v909;
              if (v515 < v516)
              {
                v954 = 0;
                v519 = v964;
                v520 = v515;
                v920 = v496;
                v955 = MEMORY[0x1E69E7CC0];
                v927 = v515;
                v934 = v516;
                while (1)
                {
                  if (v517 < 0)
                  {
                    goto LABEL_454;
                  }

                  if (v520 >= v519[2])
                  {
                    goto LABEL_455;
                  }

                  v521 = (*(v943 + 80) + 32) & ~*(v943 + 80);
                  v948 = v519;
                  v945 = v521;
                  v946 = *(v943 + 72) * v520;
                  v522 = v519 + v521 + v946;
                  v523 = v932;
                  sub_1ADDCEE40(v522, v932, &qword_1EB5BA148, &qword_1AE241B60);
                  v524 = v523 + *(v957 + 36);
                  v525 = v908;
                  sub_1ADDCEE40(v524, v908, v307, &unk_1AE25B3B0);
                  if ((*v941)(v525, 1, v297) != 1)
                  {
                    v540 = v907;
                    sub_1ADDDE4D8(v525, v907, type metadata accessor for RetainedMapRun);
                    v541 = v540;
                    v273 = &qword_1AE251020;
                    sub_1ADDCEE40(v541, v518, &qword_1EB5BA460, &qword_1AE251020);
                    v542 = v949;
                    v543 = v951;
                    if (v951(v518, 1, v949) != 1)
                    {
                      v557 = v518;
                      v558 = v883;
                      sub_1ADDDE4D8(v557, v883, type metadata accessor for FinalizedTimestamp);
                      v559 = v897;
                      sub_1ADDDE338(v558, v897, type metadata accessor for FinalizedTimestamp);
                      v560 = *v958;
                      (*v958)(v559, 0, 1, v542);
                      v561 = v932[1];
                      v562 = v561 - *v932;
                      if (__OFSUB__(v561, *v932))
                      {
                        goto LABEL_477;
                      }

                      *(v559 + *(v952 + 20)) = v562;
                      v273 = v955;
                      v563 = *(v955 + 2);
                      v564 = v559;
                      v565 = v852;
                      if (v563)
                      {
                        v566 = v863;
                        sub_1ADDDE338(&v955[v947 + (v563 - 1) * v950], v863, type metadata accessor for FinalizedTimestampRange);
                        v273 = &qword_1AE251020;
                        sub_1ADDCEE40(v566, v565, &qword_1EB5BA460, &qword_1AE251020);
                        v567 = v949;
                        if (v951(v565, 1, v949) == 1)
                        {
                          sub_1ADDCEDE0(v565, &qword_1EB5BA460, &qword_1AE251020);
                          v568 = v851;
                          v560(v851, 1, 1, v567);
                        }

                        else
                        {
                          v590 = v812;
                          sub_1ADDDE4D8(v565, v812, type metadata accessor for FinalizedTimestamp);
                          v568 = v851;
                          v938(v851, v590, v942);
                          v591 = *(v590 + *(v567 + 20));
                          sub_1ADE0DC8C(v590, type metadata accessor for FinalizedTimestamp);
                          v592 = *(v566 + *(v952 + 20));
                          v320 = __OFADD__(v591, v592);
                          v593 = v591 + v592;
                          if (v320)
                          {
                            goto LABEL_513;
                          }

                          *(v568 + *(v567 + 20)) = v593;
                          v560(v568, 0, 1, v567);
                        }

                        v594 = *(v928 + 48);
                        v595 = v839;
                        sub_1ADDCEE40(v568, v839, &qword_1EB5BA460, &qword_1AE251020);
                        sub_1ADDCEE40(v897, v595 + v594, &qword_1EB5BA460, &qword_1AE251020);
                        v596 = v951;
                        if (v951(v595, 1, v567) == 1)
                        {
                          sub_1ADDCEDE0(v568, &qword_1EB5BA460, &qword_1AE251020);
                          v597 = v596(v595 + v594, 1, v567);
                          v307 = &qword_1EB5BA450;
                          v496 = v920;
                          if (v597 == 1)
                          {
                            sub_1ADDCEDE0(v595, &qword_1EB5BA460, &qword_1AE251020);
                            v273 = v955;
                            goto LABEL_263;
                          }

LABEL_271:
                          v604 = v595;
                          v605 = &qword_1EB5BA4A0;
                          v606 = &unk_1AE253DA0;
LABEL_272:
                          sub_1ADDCEDE0(v604, v605, v606);
                          v273 = v955;
                          goto LABEL_273;
                        }

                        v603 = v811;
                        sub_1ADDCEE40(v595, v811, &qword_1EB5BA460, &qword_1AE251020);
                        if (v596(v595 + v594, 1, v567) == 1)
                        {
                          sub_1ADDCEDE0(v851, &qword_1EB5BA460, &qword_1AE251020);
                          sub_1ADE0DC8C(v603, type metadata accessor for FinalizedTimestamp);
                          v307 = &qword_1EB5BA450;
                          v496 = v920;
                          goto LABEL_271;
                        }

                        v634 = v595 + v594;
                        v635 = v796;
                        sub_1ADDDE4D8(v634, v796, type metadata accessor for FinalizedTimestamp);
                        v307 = &qword_1EB5BA450;
                        v496 = v920;
                        if (*(v603 + *(v567 + 20)) != *(v635 + *(v567 + 20)))
                        {
                          sub_1ADE0DC8C(v635, type metadata accessor for FinalizedTimestamp);
                          sub_1ADDCEDE0(v851, &qword_1EB5BA460, &qword_1AE251020);
                          sub_1ADE0DC8C(v603, type metadata accessor for FinalizedTimestamp);
                          v604 = v595;
                          v605 = &qword_1EB5BA460;
                          v606 = &qword_1AE251020;
                          goto LABEL_272;
                        }

                        LODWORD(v933) = sub_1AE23BF8C();
                        sub_1ADE0DC8C(v635, type metadata accessor for FinalizedTimestamp);
                        sub_1ADDCEDE0(v851, &qword_1EB5BA460, &qword_1AE251020);
                        sub_1ADE0DC8C(v603, type metadata accessor for FinalizedTimestamp);
                        sub_1ADDCEDE0(v595, &qword_1EB5BA460, &qword_1AE251020);
                        v273 = v955;
                        if ((v933 & 1) == 0)
                        {
LABEL_273:
                          sub_1ADE0DC8C(v863, type metadata accessor for FinalizedTimestampRange);
                          v564 = v897;
                          goto LABEL_274;
                        }

LABEL_263:
                        v598 = *(v273 + 16);
                        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                        {
                          v955 = sub_1ADF79A40(v273);
                        }

                        v297 = v944;
                        v517 = v927;
                        sub_1ADE0DC8C(v863, type metadata accessor for FinalizedTimestampRange);
                        sub_1ADE0DC8C(v897, type metadata accessor for FinalizedTimestampRange);
                        sub_1ADE0DC8C(v883, type metadata accessor for FinalizedTimestamp);
                        sub_1ADDCEDE0(v932, &qword_1EB5BA148, &qword_1AE241B60);
                        if (!v598)
                        {
                          goto LABEL_521;
                        }

                        if (v598 > *(v955 + 2))
                        {
                          goto LABEL_523;
                        }

                        v599 = &v955[v947 + (v598 - 1) * v950];
                        v600 = *(v952 + 20);
                        v601 = *&v599[v600];
                        v320 = __OFADD__(v601, v562);
                        v602 = v601 + v562;
                        if (v320)
                        {
                          goto LABEL_524;
                        }

                        *&v599[v600] = v602;
                      }

                      else
                      {
LABEL_274:
                        sub_1ADDDE338(v564, v869, type metadata accessor for FinalizedTimestampRange);
                        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                        {
                          v955 = sub_1ADDE47F8(0, *(v273 + 16) + 1, 1, v273);
                        }

                        v297 = v944;
                        v517 = v927;
                        v608 = *(v955 + 2);
                        v607 = *(v955 + 3);
                        if (v608 >= v607 >> 1)
                        {
                          v955 = sub_1ADDE47F8(v607 > 1, v608 + 1, 1, v955);
                        }

                        sub_1ADE0DC8C(v897, type metadata accessor for FinalizedTimestampRange);
                        sub_1ADE0DC8C(v883, type metadata accessor for FinalizedTimestamp);
                        sub_1ADDCEDE0(v932, &qword_1EB5BA148, &qword_1AE241B60);
                        v609 = v955;
                        *(v955 + 2) = v608 + 1;
                        sub_1ADDDE4D8(v869, &v609[v947 + v608 * v950], type metadata accessor for FinalizedTimestampRange);
                      }

                      v610 = v922;
                      sub_1ADDDE4D8(v907, v922, type metadata accessor for RetainedMapRun);
                      v589 = v610;
                      v518 = v909;
                      goto LABEL_308;
                    }

                    sub_1ADDCEDE0(v518, &qword_1EB5BA460, &qword_1AE251020);
                    v544 = v871;
                    v938(v871, v913, v942);
                    if (__OFADD__(v496, v954))
                    {
                      goto LABEL_478;
                    }

                    v545 = v949;
                    *(v544 + *(v949 + 20)) = v496 + v954;
                    v546 = v896;
                    sub_1ADDDE338(v544, v896, type metadata accessor for FinalizedTimestamp);
                    v547 = *v958;
                    (*v958)(v546, 0, 1, v545);
                    v548 = v932[1];
                    v320 = __OFSUB__(v548, *v932);
                    v549 = v548 - *v932;
                    if (v320)
                    {
                      goto LABEL_479;
                    }

                    v550 = *(v952 + 20);
                    v933 = v549;
                    *(v546 + v550) = v549;
                    v273 = v955;
                    v551 = *(v955 + 2);
                    if (v551)
                    {
                      v552 = v861;
                      sub_1ADDDE338(&v955[v947 + (v551 - 1) * v950], v861, type metadata accessor for FinalizedTimestampRange);
                      v553 = v838;
                      v273 = &qword_1AE251020;
                      sub_1ADDCEE40(v552, v838, &qword_1EB5BA460, &qword_1AE251020);
                      v554 = v949;
                      if (v543(v553, 1, v949) == 1)
                      {
                        sub_1ADDCEDE0(v553, &qword_1EB5BA460, &qword_1AE251020);
                        v555 = 1;
                        v556 = v850;
                      }

                      else
                      {
                        v611 = v810;
                        sub_1ADDDE4D8(v553, v810, type metadata accessor for FinalizedTimestamp);
                        v556 = v850;
                        v938(v850, v611, v942);
                        v612 = *(v611 + *(v554 + 20));
                        sub_1ADE0DC8C(v611, type metadata accessor for FinalizedTimestamp);
                        v613 = *(v552 + *(v952 + 20));
                        v320 = __OFADD__(v612, v613);
                        v614 = v612 + v613;
                        if (v320)
                        {
                          goto LABEL_514;
                        }

                        v555 = 0;
                        *(v556 + *(v554 + 20)) = v614;
                      }

                      v547(v556, v555, 1, v554);
                      v615 = *(v928 + 48);
                      v616 = v556;
                      v617 = v556;
                      v618 = v836;
                      sub_1ADDCEE40(v616, v836, &qword_1EB5BA460, &qword_1AE251020);
                      sub_1ADDCEE40(v896, v618 + v615, &qword_1EB5BA460, &qword_1AE251020);
                      v619 = v951;
                      if (v951(v618, 1, v554) == 1)
                      {
                        sub_1ADDCEDE0(v617, &qword_1EB5BA460, &qword_1AE251020);
                        v620 = v619(v618 + v615, 1, v554);
                        v496 = v920;
                        if (v620 == 1)
                        {
                          sub_1ADDCEDE0(v618, &qword_1EB5BA460, &qword_1AE251020);
                          v544 = v871;
                          v273 = v955;
                          goto LABEL_285;
                        }

LABEL_297:
                        sub_1ADDCEDE0(v618, &qword_1EB5BA4A0, &unk_1AE253DA0);
                        v544 = v871;
LABEL_298:
                        v273 = v955;
                        goto LABEL_299;
                      }

                      v628 = v809;
                      sub_1ADDCEE40(v618, v809, &qword_1EB5BA460, &qword_1AE251020);
                      if (v619(v618 + v615, 1, v554) == 1)
                      {
                        sub_1ADDCEDE0(v850, &qword_1EB5BA460, &qword_1AE251020);
                        sub_1ADE0DC8C(v628, type metadata accessor for FinalizedTimestamp);
                        v496 = v920;
                        goto LABEL_297;
                      }

                      v636 = v618 + v615;
                      v637 = v795;
                      sub_1ADDDE4D8(v636, v795, type metadata accessor for FinalizedTimestamp);
                      v496 = v920;
                      v544 = v871;
                      if (*(v628 + *(v554 + 20)) != *(v637 + *(v554 + 20)))
                      {
                        sub_1ADE0DC8C(v637, type metadata accessor for FinalizedTimestamp);
                        sub_1ADDCEDE0(v850, &qword_1EB5BA460, &qword_1AE251020);
                        sub_1ADE0DC8C(v628, type metadata accessor for FinalizedTimestamp);
                        sub_1ADDCEDE0(v618, &qword_1EB5BA460, &qword_1AE251020);
                        goto LABEL_298;
                      }

                      LODWORD(v870) = sub_1AE23BF8C();
                      sub_1ADE0DC8C(v637, type metadata accessor for FinalizedTimestamp);
                      sub_1ADDCEDE0(v850, &qword_1EB5BA460, &qword_1AE251020);
                      sub_1ADE0DC8C(v628, type metadata accessor for FinalizedTimestamp);
                      sub_1ADDCEDE0(v618, &qword_1EB5BA460, &qword_1AE251020);
                      v273 = v955;
                      if ((v870 & 1) == 0)
                      {
LABEL_299:
                        sub_1ADE0DC8C(v861, type metadata accessor for FinalizedTimestampRange);
                        v546 = v896;
                        goto LABEL_300;
                      }

LABEL_285:
                      v621 = *(v273 + 16);
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v273 = sub_1ADF79A40(v273);
                      }

                      v297 = v944;
                      v517 = v927;
                      sub_1ADE0DC8C(v861, type metadata accessor for FinalizedTimestampRange);
                      sub_1ADE0DC8C(v896, type metadata accessor for FinalizedTimestampRange);
                      if (!v621)
                      {
                        goto LABEL_522;
                      }

                      if (v621 > *(v273 + 16))
                      {
                        goto LABEL_525;
                      }

                      v622 = v273 + v947 + (v621 - 1) * v950;
                      v623 = *(v952 + 20);
                      v624 = *(v622 + v623);
                      v320 = __OFADD__(v624, v933);
                      v625 = v624 + v933;
                      if (v320)
                      {
                        goto LABEL_526;
                      }

                      *(v622 + v623) = v625;
                    }

                    else
                    {
LABEL_300:
                      sub_1ADDDE338(v546, v868, type metadata accessor for FinalizedTimestampRange);
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v273 = sub_1ADDE47F8(0, *(v273 + 16) + 1, 1, v273);
                      }

                      v297 = v944;
                      v517 = v927;
                      v630 = *(v273 + 16);
                      v629 = *(v273 + 24);
                      v631 = v896;
                      if (v630 >= v629 >> 1)
                      {
                        v273 = sub_1ADDE47F8(v629 > 1, v630 + 1, 1, v273);
                        v631 = v896;
                      }

                      sub_1ADE0DC8C(v631, type metadata accessor for FinalizedTimestampRange);
                      *(v273 + 16) = v630 + 1;
                      sub_1ADDDE4D8(v868, v273 + v947 + v630 * v950, type metadata accessor for FinalizedTimestampRange);
                    }

                    sub_1ADDCEDE0(v932, &qword_1EB5BA148, &qword_1AE241B60);
                    v320 = __OFADD__(v954, v933);
                    v954 += v933;
                    if (v320)
                    {
                      goto LABEL_480;
                    }

                    v955 = v273;
                    v632 = v922;
                    sub_1ADDDE4D8(v544, v922, type metadata accessor for FinalizedTimestamp);
                    v547(v632, 0, 1, v949);
                    v633 = *(v907 + *(v297 + 20));
                    sub_1ADE0DC8C(v907, type metadata accessor for RetainedMapRun);
                    v589 = v632;
                    *(v632 + *(v297 + 20)) = v633;
                    v518 = v909;
                    goto LABEL_307;
                  }

                  sub_1ADDCEDE0(v525, v307, &unk_1AE25B3B0);
                  v526 = v900;
                  v938(v900, v913, v942);
                  v273 = v955;
                  if (__OFADD__(v496, v954))
                  {
                    goto LABEL_464;
                  }

                  v527 = v949;
                  *(v526 + *(v949 + 20)) = v496 + v954;
                  v528 = v919;
                  sub_1ADDDE338(v526, v919, type metadata accessor for FinalizedTimestamp);
                  v529 = *v958;
                  (*v958)(v528, 0, 1, v527);
                  v530 = v932[1];
                  v320 = __OFSUB__(v530, *v932);
                  v531 = v530 - *v932;
                  if (v320)
                  {
                    goto LABEL_465;
                  }

                  v532 = *(v952 + 20);
                  v933 = v531;
                  *(v528 + v532) = v531;
                  v533 = *(v273 + 16);
                  v534 = v528;
                  if (!v533)
                  {
                    goto LABEL_251;
                  }

                  v535 = v891;
                  sub_1ADDDE338(v273 + v947 + (v533 - 1) * v950, v891, type metadata accessor for FinalizedTimestampRange);
                  v536 = v862;
                  sub_1ADDCEE40(v535, v862, &qword_1EB5BA460, &qword_1AE251020);
                  v537 = v949;
                  if (v951(v536, 1, v949) == 1)
                  {
                    sub_1ADDCEDE0(v536, &qword_1EB5BA460, &qword_1AE251020);
                    v538 = 1;
                    v539 = v881;
                  }

                  else
                  {
                    v569 = v837;
                    sub_1ADDDE4D8(v536, v837, type metadata accessor for FinalizedTimestamp);
                    v539 = v881;
                    v938(v881, v569, v942);
                    v570 = *(v569 + *(v537 + 20));
                    sub_1ADE0DC8C(v569, type metadata accessor for FinalizedTimestamp);
                    v571 = *(v535 + *(v952 + 20));
                    v320 = __OFADD__(v570, v571);
                    v572 = v570 + v571;
                    if (v320)
                    {
                      goto LABEL_488;
                    }

                    v538 = 0;
                    *(v539 + *(v537 + 20)) = v572;
                  }

                  v529(v539, v538, 1, v537);
                  v573 = *(v928 + 48);
                  v574 = v539;
                  v575 = v539;
                  v576 = v860;
                  sub_1ADDCEE40(v574, v860, &qword_1EB5BA460, &qword_1AE251020);
                  sub_1ADDCEE40(v919, v576 + v573, &qword_1EB5BA460, &qword_1AE251020);
                  v577 = v951;
                  if (v951(v576, 1, v537) == 1)
                  {
                    break;
                  }

                  v585 = v835;
                  sub_1ADDCEE40(v576, v835, &qword_1EB5BA460, &qword_1AE251020);
                  if (v577(v576 + v573, 1, v537) == 1)
                  {
                    sub_1ADDCEDE0(v881, &qword_1EB5BA460, &qword_1AE251020);
                    sub_1ADE0DC8C(v585, type metadata accessor for FinalizedTimestamp);
                    v526 = v900;
LABEL_248:
                    sub_1ADDCEDE0(v576, &qword_1EB5BA4A0, &unk_1AE253DA0);
                    v534 = v919;
                    v297 = v944;
                    v496 = v920;
                    goto LABEL_249;
                  }

                  v626 = v576 + v573;
                  v627 = v808;
                  sub_1ADDDE4D8(v626, v808, type metadata accessor for FinalizedTimestamp);
                  v496 = v920;
                  v526 = v900;
                  if (*(v585 + *(v537 + 20)) == *(v627 + *(v537 + 20)))
                  {
                    LODWORD(v870) = sub_1AE23BF8C();
                    sub_1ADE0DC8C(v627, type metadata accessor for FinalizedTimestamp);
                    sub_1ADDCEDE0(v881, &qword_1EB5BA460, &qword_1AE251020);
                    sub_1ADE0DC8C(v585, type metadata accessor for FinalizedTimestamp);
                    sub_1ADDCEDE0(v576, &qword_1EB5BA460, &qword_1AE251020);
                    v534 = v919;
                    v297 = v944;
                    v517 = v927;
                    v273 = v955;
                    if (v870)
                    {
                      goto LABEL_240;
                    }

                    goto LABEL_250;
                  }

                  sub_1ADE0DC8C(v627, type metadata accessor for FinalizedTimestamp);
                  sub_1ADDCEDE0(v881, &qword_1EB5BA460, &qword_1AE251020);
                  sub_1ADE0DC8C(v585, type metadata accessor for FinalizedTimestamp);
                  sub_1ADDCEDE0(v576, &qword_1EB5BA460, &qword_1AE251020);
                  v534 = v919;
                  v297 = v944;
LABEL_249:
                  v517 = v927;
                  v273 = v955;
LABEL_250:
                  sub_1ADE0DC8C(v891, type metadata accessor for FinalizedTimestampRange);
LABEL_251:
                  sub_1ADDDE338(v534, v899, type metadata accessor for FinalizedTimestampRange);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v273 = sub_1ADDE47F8(0, *(v273 + 16) + 1, 1, v273);
                  }

                  v587 = *(v273 + 16);
                  v586 = *(v273 + 24);
                  if (v587 >= v586 >> 1)
                  {
                    v273 = sub_1ADDE47F8(v586 > 1, v587 + 1, 1, v273);
                  }

                  sub_1ADE0DC8C(v919, type metadata accessor for FinalizedTimestampRange);
                  *(v273 + 16) = v587 + 1;
                  sub_1ADDDE4D8(v899, v273 + v947 + v587 * v950, type metadata accessor for FinalizedTimestampRange);
                  v583 = v933;
LABEL_256:
                  sub_1ADDCEDE0(v932, &qword_1EB5BA148, &qword_1AE241B60);
                  v320 = __OFADD__(v954, v583);
                  v954 += v583;
                  v518 = v909;
                  if (v320)
                  {
                    goto LABEL_466;
                  }

                  v955 = v273;
                  v588 = v922;
                  sub_1ADDDE4D8(v526, v922, type metadata accessor for FinalizedTimestamp);
                  v529(v588, 0, 1, v949);
                  v589 = v588;
                  *(v588 + *(v297 + 20)) = 1;
LABEL_307:
                  v307 = &qword_1EB5BA450;
LABEL_308:
                  v519 = v948;
                  (*v940)(v589, 0, 1, v297);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v519 = sub_1ADF799F0(v519);
                  }

                  if (v520 >= v519[2])
                  {
                    goto LABEL_456;
                  }

                  ++v520;
                  sub_1ADDE4820(v922, v519 + v945 + *(v957 + 36) + v946);
                  v964 = v519;
                  v516 = v934;
                  if (v934 == v520)
                  {
                    goto LABEL_209;
                  }
                }

                sub_1ADDCEDE0(v575, &qword_1EB5BA460, &qword_1AE251020);
                v578 = v577(v576 + v573, 1, v537);
                v526 = v900;
                if (v578 == 1)
                {
                  sub_1ADDCEDE0(v576, &qword_1EB5BA460, &qword_1AE251020);
                  v297 = v944;
                  v496 = v920;
                  v517 = v927;
                  v273 = v955;
LABEL_240:
                  v579 = *(v273 + 16);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v273 = sub_1ADF79A40(v273);
                  }

                  sub_1ADE0DC8C(v891, type metadata accessor for FinalizedTimestampRange);
                  sub_1ADE0DC8C(v919, type metadata accessor for FinalizedTimestampRange);
                  if (!v579)
                  {
                    goto LABEL_506;
                  }

                  if (v579 > *(v273 + 16))
                  {
                    goto LABEL_507;
                  }

                  v580 = v273 + v947 + (v579 - 1) * v950;
                  v581 = *(v952 + 20);
                  v582 = *(v580 + v581);
                  v583 = v933;
                  v320 = __OFADD__(v582, v933);
                  v584 = v582 + v933;
                  if (v320)
                  {
                    goto LABEL_508;
                  }

                  *(v580 + v581) = v584;
                  goto LABEL_256;
                }

                goto LABEL_248;
              }

              goto LABEL_531;
            }

LABEL_530:
            __break(1u);
LABEL_531:
            __break(1u);
LABEL_532:
            __break(1u);
LABEL_533:
            __break(1u);
LABEL_534:
            __break(1u);
LABEL_535:
            __break(1u);
LABEL_536:
            __break(1u);
LABEL_537:
            __break(1u);
LABEL_538:
            __break(1u);
LABEL_539:
            __break(1u);
LABEL_540:
            __break(1u);
LABEL_541:
            __break(1u);
LABEL_542:
            __break(1u);
LABEL_543:
            __break(1u);
LABEL_544:
            __break(1u);
LABEL_545:
            __break(1u);
LABEL_546:
            __break(1u);
LABEL_547:
            __break(1u);
LABEL_548:
            __break(1u);
LABEL_549:
            __break(1u);
            goto LABEL_550;
          }

          goto LABEL_321;
        }
      }

      v352 = v929;
      sub_1ADDDE4D8(v273, v929, type metadata accessor for FinalizedTimestamp);
      v273 = v892;
      swift_beginAccess();
      if (*v273)
      {
        v353 = v885;
        v938(v885, v352, v942);
        *(v353 + *(v826 + 20)) = 0;
        v273 = v828;
        sub_1ADDCEE40(v349, v828, &qword_1EB5BA460, &qword_1AE251020);
        if (v951(v273, 1, v296) == 1)
        {
          goto LABEL_555;
        }

        v354 = v827;
        sub_1ADDDE4D8(v273, v827, type metadata accessor for FinalizedTimestamp);
        v273 = *(v354 + *(v296 + 20));
        sub_1ADE0DC8C(v354, type metadata accessor for FinalizedTimestamp);
        v355 = *(v349 + *(v952 + 20));
        if (__OFADD__(v273, v355))
        {
          goto LABEL_501;
        }

        if ((v273 + v355) < v273)
        {
          goto LABEL_502;
        }

        v356 = v892;
        v357 = *v892;
        v358 = swift_isUniquelyReferenced_nonNull_native();
        v960 = *v356;
        v359 = v960;
        *v356 = 0x8000000000000000;
        v360 = sub_1ADDD8A6C(v885);
        v362 = v359[2];
        v363 = (v361 & 1) == 0;
        v320 = __OFADD__(v362, v363);
        v364 = v362 + v363;
        if (v320)
        {
          goto LABEL_503;
        }

        v365 = v361;
        if (v359[3] >= v364)
        {
          if ((v358 & 1) == 0)
          {
            v492 = v360;
            sub_1ADDFB81C();
            v360 = v492;
            v359 = v960;
          }
        }

        else
        {
          sub_1ADDDDED0(v364, v358);
          v359 = v960;
          v360 = sub_1ADDD8A6C(v885);
          if ((v365 & 1) != (v366 & 1))
          {
            goto LABEL_556;
          }
        }

        v296 = v949;
        *v892 = v359;
        if (v365)
        {
          v367 = *(v844 + 72) * v360;
        }

        else
        {
          v368 = v818;
          v369 = v360;
          sub_1AE23C11C();
          v359[(v369 >> 6) + 8] |= 1 << v369;
          sub_1ADDDE338(v885, v359[6] + *(v817 + 72) * v369, type metadata accessor for Replica);
          v367 = *(v844 + 72) * v369;
          (*(v844 + 32))(v359[7] + v367, v368, v819);
          v370 = v359[2];
          v320 = __OFADD__(v370, 1);
          v371 = v370 + 1;
          if (v320)
          {
            goto LABEL_519;
          }

          v359[2] = v371;
        }

        v372 = v359[7] + v367;
        sub_1AE23C07C();
        swift_endAccess();
        sub_1ADE0DC8C(v885, type metadata accessor for Replica);
        v349 = v866;
        v297 = v944;
      }

      else
      {
        swift_endAccess();
      }

      v373 = MEMORY[0x1E69E7CC0];
      v374 = v923;
      v375 = *(v349 + *(v952 + 20));
      v376 = (v906 + v375);
      if (__OFADD__(v906, v375))
      {
        goto LABEL_483;
      }

      if (v376 < v906)
      {
        goto LABEL_484;
      }

      v927 = *(v929 + *(v296 + 20));
      v377 = sub_1ADDE22AC(v906, v376);
      v954 = v373;
      if (v377 == v378)
      {
LABEL_74:
        sub_1ADDE2B98(v377, v378);
        sub_1ADE0DC8C(v929, type metadata accessor for FinalizedTimestamp);

        *v858 = 1;
        v349 = v866;
        goto LABEL_75;
      }

      if (v378 >= v377)
      {
        if (v377 < v378)
        {
          v948 = 0;
          v379 = v964;
          v273 = v377;
          v954 = v373;
          v934 = v377;
          v933 = v378;
          while (2)
          {
            if (v377 < 0)
            {
              __break(1u);
LABEL_449:
              __break(1u);
LABEL_450:
              __break(1u);
LABEL_451:
              __break(1u);
LABEL_452:
              __break(1u);
LABEL_453:
              __break(1u);
LABEL_454:
              __break(1u);
LABEL_455:
              __break(1u);
LABEL_456:
              __break(1u);
LABEL_457:
              __break(1u);
LABEL_458:
              __break(1u);
LABEL_459:
              __break(1u);
LABEL_460:
              __break(1u);
LABEL_461:
              __break(1u);
              goto LABEL_462;
            }

            if (v273 >= *(v379 + 2))
            {
              goto LABEL_449;
            }

            v380 = (*(v943 + 80) + 32) & ~*(v943 + 80);
            v955 = v379;
            v945 = v380;
            v946 = *(v943 + 72) * v273;
            v381 = v956;
            sub_1ADDCEE40(&v379[v380 + v946], v956, &qword_1EB5BA148, &qword_1AE241B60);
            v382 = v381 + *(v957 + 36);
            v383 = v931;
            sub_1ADDCEE40(v382, v931, v307, v295);
            if ((*v941)(v383, 1, v297) != 1)
            {
              v396 = v930;
              sub_1ADDDE4D8(v383, v930, type metadata accessor for RetainedMapRun);
              sub_1ADDCEE40(v396, v309, &qword_1EB5BA460, &qword_1AE251020);
              if (v951(v309, 1, v296) != 1)
              {
                v410 = v295;
                v411 = v309;
                v412 = v918;
                sub_1ADDDE4D8(v309, v918, type metadata accessor for FinalizedTimestamp);
                v413 = v412;
                v414 = v296;
                v415 = v925;
                sub_1ADDDE338(v413, v925, type metadata accessor for FinalizedTimestamp);
                v416 = *v958;
                (*v958)(v415, 0, 1, v414);
                v417 = v956[1];
                v320 = __OFSUB__(v417, *v956);
                v418 = v417 - *v956;
                if (v320)
                {
                  goto LABEL_457;
                }

                *(v415 + *(v952 + 20)) = v418;
                v419 = v954;
                v420 = *(v954 + 16);
                if (v420)
                {
                  v920 = v418;
                  v421 = v905;
                  sub_1ADDDE338(v954 + v947 + (v420 - 1) * v950, v905, type metadata accessor for FinalizedTimestampRange);
                  v422 = v880;
                  sub_1ADDCEE40(v421, v880, &qword_1EB5BA460, &qword_1AE251020);
                  v423 = v949;
                  if (v951(v422, 1, v949) == 1)
                  {
                    sub_1ADDCEDE0(v422, &qword_1EB5BA460, &qword_1AE251020);
                    v424 = v895;
                    v416(v895, 1, 1, v423);
                    v425 = v878;
                  }

                  else
                  {
                    v445 = v849;
                    sub_1ADDDE4D8(v422, v849, type metadata accessor for FinalizedTimestamp);
                    v446 = v895;
                    v938(v895, v445, v942);
                    v447 = *(v445 + *(v423 + 20));
                    sub_1ADE0DC8C(v445, type metadata accessor for FinalizedTimestamp);
                    v448 = *(v421 + *(v952 + 20));
                    v320 = __OFADD__(v447, v448);
                    v449 = v447 + v448;
                    if (v320)
                    {
                      goto LABEL_481;
                    }

                    *(v446 + *(v423 + 20)) = v449;
                    v416(v446, 0, 1, v423);
                    v425 = v878;
                    v424 = v446;
                  }

                  v450 = *(v928 + 48);
                  v451 = v879;
                  sub_1ADDCEE40(v424, v879, &qword_1EB5BA460, &qword_1AE251020);
                  sub_1ADDCEE40(v925, v451 + v450, &qword_1EB5BA460, &qword_1AE251020);
                  v452 = v951;
                  if (v951(v451, 1, v423) == 1)
                  {
                    sub_1ADDCEDE0(v424, &qword_1EB5BA460, &qword_1AE251020);
                    v453 = v452(v451 + v450, 1, v423);
                    v410 = &unk_1AE25B3B0;
                    v374 = v923;
                    if (v453 == 1)
                    {
                      sub_1ADDCEDE0(v451, &qword_1EB5BA460, &qword_1AE251020);
                      v411 = v935;
                      v307 = &qword_1EB5BA450;
                      v419 = v954;
                      goto LABEL_126;
                    }

LABEL_134:
                    sub_1ADDCEDE0(v451, &qword_1EB5BA4A0, &unk_1AE253DA0);
                    v411 = v935;
                    v307 = &qword_1EB5BA450;
LABEL_135:
                    v419 = v954;
                    goto LABEL_136;
                  }

                  sub_1ADDCEE40(v451, v425, &qword_1EB5BA460, &qword_1AE251020);
                  if (v452(v451 + v450, 1, v423) == 1)
                  {
                    sub_1ADDCEDE0(v895, &qword_1EB5BA460, &qword_1AE251020);
                    sub_1ADE0DC8C(v425, type metadata accessor for FinalizedTimestamp);
                    v410 = &unk_1AE25B3B0;
                    v374 = v923;
                    goto LABEL_134;
                  }

                  v487 = v451 + v450;
                  v488 = v825;
                  sub_1ADDDE4D8(v487, v825, type metadata accessor for FinalizedTimestamp);
                  v410 = &unk_1AE25B3B0;
                  if (*(v425 + *(v423 + 20)) != *(v488 + *(v423 + 20)))
                  {
                    sub_1ADE0DC8C(v488, type metadata accessor for FinalizedTimestamp);
                    sub_1ADDCEDE0(v895, &qword_1EB5BA460, &qword_1AE251020);
                    sub_1ADE0DC8C(v425, type metadata accessor for FinalizedTimestamp);
                    sub_1ADDCEDE0(v451, &qword_1EB5BA460, &qword_1AE251020);
                    v411 = v935;
                    v307 = &qword_1EB5BA450;
                    v374 = v923;
                    goto LABEL_135;
                  }

                  v489 = sub_1AE23BF8C();
                  sub_1ADE0DC8C(v488, type metadata accessor for FinalizedTimestamp);
                  sub_1ADDCEDE0(v895, &qword_1EB5BA460, &qword_1AE251020);
                  sub_1ADE0DC8C(v425, type metadata accessor for FinalizedTimestamp);
                  sub_1ADDCEDE0(v451, &qword_1EB5BA460, &qword_1AE251020);
                  v411 = v935;
                  v307 = &qword_1EB5BA450;
                  v374 = v923;
                  v419 = v954;
                  if ((v489 & 1) == 0)
                  {
LABEL_136:
                    sub_1ADE0DC8C(v905, type metadata accessor for FinalizedTimestampRange);
                    v415 = v925;
                    goto LABEL_137;
                  }

LABEL_126:
                  v454 = v419[2];
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v419 = sub_1ADF79A40(v419);
                  }

                  v297 = v944;
                  sub_1ADE0DC8C(v905, type metadata accessor for FinalizedTimestampRange);
                  sub_1ADE0DC8C(v925, type metadata accessor for FinalizedTimestampRange);
                  sub_1ADE0DC8C(v918, type metadata accessor for FinalizedTimestamp);
                  sub_1ADDCEDE0(v956, &qword_1EB5BA148, &qword_1AE241B60);
                  if (!v454)
                  {
                    goto LABEL_489;
                  }

                  if (v454 > v419[2])
                  {
                    goto LABEL_491;
                  }

                  v455 = v419 + v947 + (v454 - 1) * v950;
                  v456 = *(v952 + 20);
                  v457 = *(v455 + v456);
                  v320 = __OFADD__(v457, v920);
                  v458 = v457 + v920;
                  if (v320)
                  {
                    goto LABEL_492;
                  }

                  v954 = v419;
                  *(v455 + v456) = v458;
                  v309 = v411;
                  v295 = &unk_1AE25B3B0;
                }

                else
                {
LABEL_137:
                  sub_1ADDDE338(v415, v912, type metadata accessor for FinalizedTimestampRange);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v954 = sub_1ADDE47F8(0, v419[2] + 1, 1, v419);
                  }

                  v297 = v944;
                  v309 = v411;
                  v460 = *(v954 + 16);
                  v459 = *(v954 + 24);
                  v295 = v410;
                  if (v460 >= v459 >> 1)
                  {
                    v954 = sub_1ADDE47F8(v459 > 1, v460 + 1, 1, v954);
                  }

                  sub_1ADE0DC8C(v925, type metadata accessor for FinalizedTimestampRange);
                  sub_1ADE0DC8C(v918, type metadata accessor for FinalizedTimestamp);
                  sub_1ADDCEDE0(v956, &qword_1EB5BA148, &qword_1AE241B60);
                  v461 = v954;
                  *(v954 + 16) = v460 + 1;
                  sub_1ADDDE4D8(v912, v461 + v947 + v460 * v950, type metadata accessor for FinalizedTimestampRange);
                }

                v444 = v936;
                sub_1ADDDE4D8(v930, v936, type metadata accessor for RetainedMapRun);
                v296 = v949;
                goto LABEL_171;
              }

              sub_1ADDCEDE0(v309, &qword_1EB5BA460, &qword_1AE251020);
              v397 = v917;
              v938(v917, v929, v942);
              if (__OFADD__(v927, v948))
              {
                goto LABEL_458;
              }

              *(v397 + *(v296 + 20)) = v948 + v927;
              v398 = v924;
              sub_1ADDDE338(v397, v924, type metadata accessor for FinalizedTimestamp);
              v399 = *v958;
              (*v958)(v398, 0, 1, v296);
              v400 = v956[1];
              v401 = v400 - *v956;
              if (__OFSUB__(v400, *v956))
              {
                goto LABEL_459;
              }

              *(v398 + *(v952 + 20)) = v401;
              v402 = v954;
              v403 = *(v954 + 16);
              if (v403)
              {
                v404 = v296;
                v405 = v903;
                sub_1ADDDE338(v954 + v947 + (v403 - 1) * v950, v903, type metadata accessor for FinalizedTimestampRange);
                v406 = v877;
                sub_1ADDCEE40(v405, v877, &qword_1EB5BA460, &qword_1AE251020);
                v407 = v951(v406, 1, v404);
                v920 = v401;
                if (v407 == 1)
                {
                  sub_1ADDCEDE0(v406, &qword_1EB5BA460, &qword_1AE251020);
                  v408 = 1;
                  v409 = v894;
                }

                else
                {
                  v462 = v848;
                  sub_1ADDDE4D8(v406, v848, type metadata accessor for FinalizedTimestamp);
                  v463 = v894;
                  v938(v894, v462, v942);
                  v464 = *(v462 + *(v404 + 20));
                  sub_1ADE0DC8C(v462, type metadata accessor for FinalizedTimestamp);
                  v465 = *(v405 + *(v952 + 20));
                  v320 = __OFADD__(v464, v465);
                  v466 = v464 + v465;
                  if (v320)
                  {
                    goto LABEL_482;
                  }

                  v408 = 0;
                  *(v463 + *(v404 + 20)) = v466;
                  v409 = v463;
                }

                v399(v409, v408, 1, v404);
                v467 = *(v928 + 48);
                v468 = v875;
                sub_1ADDCEE40(v409, v875, &qword_1EB5BA460, &qword_1AE251020);
                sub_1ADDCEE40(v924, v468 + v467, &qword_1EB5BA460, &qword_1AE251020);
                v469 = v951;
                if (v951(v468, 1, v404) == 1)
                {
                  sub_1ADDCEDE0(v409, &qword_1EB5BA460, &qword_1AE251020);
                  v295 = &unk_1AE25B3B0;
                  if (v469(v468 + v467, 1, v404) == 1)
                  {
                    sub_1ADDCEDE0(v468, &qword_1EB5BA460, &qword_1AE251020);
                    v374 = v923;
                    v402 = v954;
                    v401 = v920;
                    goto LABEL_148;
                  }

LABEL_160:
                  sub_1ADDCEDE0(v468, &qword_1EB5BA4A0, &unk_1AE253DA0);
                  v374 = v923;
LABEL_161:
                  v402 = v954;
                  v401 = v920;
                  goto LABEL_162;
                }

                v478 = v847;
                sub_1ADDCEE40(v468, v847, &qword_1EB5BA460, &qword_1AE251020);
                if (v469(v468 + v467, 1, v404) == 1)
                {
                  sub_1ADDCEDE0(v894, &qword_1EB5BA460, &qword_1AE251020);
                  sub_1ADE0DC8C(v478, type metadata accessor for FinalizedTimestamp);
                  v295 = &unk_1AE25B3B0;
                  goto LABEL_160;
                }

                v490 = v468 + v467;
                v491 = v824;
                sub_1ADDDE4D8(v490, v824, type metadata accessor for FinalizedTimestamp);
                v295 = &unk_1AE25B3B0;
                v374 = v923;
                if (*(v478 + *(v404 + 20)) != *(v491 + *(v404 + 20)))
                {
                  sub_1ADE0DC8C(v491, type metadata accessor for FinalizedTimestamp);
                  sub_1ADDCEDE0(v894, &qword_1EB5BA460, &qword_1AE251020);
                  sub_1ADE0DC8C(v478, type metadata accessor for FinalizedTimestamp);
                  sub_1ADDCEDE0(v468, &qword_1EB5BA460, &qword_1AE251020);
                  goto LABEL_161;
                }

                v816 = sub_1AE23BF8C();
                sub_1ADE0DC8C(v491, type metadata accessor for FinalizedTimestamp);
                sub_1ADDCEDE0(v894, &qword_1EB5BA460, &qword_1AE251020);
                sub_1ADE0DC8C(v478, type metadata accessor for FinalizedTimestamp);
                sub_1ADDCEDE0(v468, &qword_1EB5BA460, &qword_1AE251020);
                v402 = v954;
                v401 = v920;
                if ((v816 & 1) == 0)
                {
LABEL_162:
                  sub_1ADE0DC8C(v903, type metadata accessor for FinalizedTimestampRange);
                  v398 = v924;
                  goto LABEL_163;
                }

LABEL_148:
                v470 = v402[2];
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v402 = sub_1ADF79A40(v402);
                }

                v297 = v944;
                sub_1ADE0DC8C(v903, type metadata accessor for FinalizedTimestampRange);
                sub_1ADE0DC8C(v924, type metadata accessor for FinalizedTimestampRange);
                if (!v470)
                {
                  goto LABEL_490;
                }

                if (v470 > v402[2])
                {
                  goto LABEL_493;
                }

                v471 = v402 + v947 + (v470 - 1) * v950;
                v472 = *(v952 + 20);
                v473 = *(v471 + v472);
                v320 = __OFADD__(v473, v401);
                v474 = v473 + v401;
                if (v320)
                {
                  goto LABEL_494;
                }

                *(v471 + v472) = v474;
              }

              else
              {
LABEL_163:
                sub_1ADDDE338(v398, v911, type metadata accessor for FinalizedTimestampRange);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v402 = sub_1ADDE47F8(0, v402[2] + 1, 1, v402);
                }

                v297 = v944;
                v480 = v402[2];
                v479 = v402[3];
                v481 = v924;
                if (v480 >= v479 >> 1)
                {
                  v402 = sub_1ADDE47F8(v479 > 1, v480 + 1, 1, v402);
                  v481 = v924;
                }

                sub_1ADE0DC8C(v481, type metadata accessor for FinalizedTimestampRange);
                v402[2] = v480 + 1;
                sub_1ADDDE4D8(v911, v402 + v947 + v480 * v950, type metadata accessor for FinalizedTimestampRange);
              }

              sub_1ADDCEDE0(v956, &qword_1EB5BA148, &qword_1AE241B60);
              v320 = __OFADD__(v948, v401);
              v948 = (v948 + v401);
              v296 = v949;
              v482 = v936;
              if (v320)
              {
                goto LABEL_460;
              }

              v954 = v402;
              sub_1ADDDE4D8(v917, v936, type metadata accessor for FinalizedTimestamp);
              v399(v482, 0, 1, v296);
              v483 = *(v930 + *(v297 + 20));
              sub_1ADE0DC8C(v930, type metadata accessor for RetainedMapRun);
              *(v936 + *(v297 + 20)) = v483;
              v444 = v936;
              goto LABEL_170;
            }

            sub_1ADDCEDE0(v383, v307, v295);
            v938(v374, v929, v942);
            v384 = v954;
            if (__OFADD__(v927, v948))
            {
              goto LABEL_451;
            }

            *(v374 + *(v296 + 20)) = v948 + v927;
            v385 = v937;
            sub_1ADDDE338(v374, v937, type metadata accessor for FinalizedTimestamp);
            v386 = *v958;
            (*v958)(v385, 0, 1, v296);
            v387 = v956[1];
            v388 = v387 - *v956;
            if (__OFSUB__(v387, *v956))
            {
              goto LABEL_452;
            }

            *(v385 + *(v952 + 20)) = v388;
            v389 = v384[2];
            if (!v389)
            {
              goto LABEL_114;
            }

            v390 = v296;
            v391 = v921;
            sub_1ADDDE338(v384 + v947 + (v389 - 1) * v950, v921, type metadata accessor for FinalizedTimestampRange);
            v392 = v904;
            sub_1ADDCEE40(v391, v904, &qword_1EB5BA460, &qword_1AE251020);
            v393 = v951(v392, 1, v390);
            v920 = v388;
            if (v393 == 1)
            {
              sub_1ADDCEDE0(v392, &qword_1EB5BA460, &qword_1AE251020);
              v394 = 1;
              v395 = v916;
            }

            else
            {
              v426 = v876;
              sub_1ADDDE4D8(v392, v876, type metadata accessor for FinalizedTimestamp);
              v395 = v916;
              v938(v916, v426, v942);
              v427 = *(v426 + *(v390 + 20));
              sub_1ADE0DC8C(v426, type metadata accessor for FinalizedTimestamp);
              v428 = *(v391 + *(v952 + 20));
              v320 = __OFADD__(v427, v428);
              v429 = v427 + v428;
              if (v320)
              {
                goto LABEL_467;
              }

              v394 = 0;
              *(v395 + *(v390 + 20)) = v429;
            }

            v386(v395, v394, 1, v390);
            v430 = *(v928 + 48);
            v431 = v395;
            v432 = v395;
            v433 = v902;
            sub_1ADDCEE40(v431, v902, &qword_1EB5BA460, &qword_1AE251020);
            sub_1ADDCEE40(v937, v433 + v430, &qword_1EB5BA460, &qword_1AE251020);
            v434 = v951;
            if (v951(v433, 1, v390) == 1)
            {
              sub_1ADDCEDE0(v432, &qword_1EB5BA460, &qword_1AE251020);
              v295 = &unk_1AE25B3B0;
              if (v434(v433 + v430, 1, v390) == 1)
              {
                sub_1ADDCEDE0(v433, &qword_1EB5BA460, &qword_1AE251020);
                v297 = v944;
                v374 = v923;
                v384 = v954;
                v388 = v920;
LABEL_104:
                v435 = v384[2];
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v384 = sub_1ADF79A40(v384);
                }

                sub_1ADE0DC8C(v921, type metadata accessor for FinalizedTimestampRange);
                sub_1ADE0DC8C(v937, type metadata accessor for FinalizedTimestampRange);
                if (!v435)
                {
                  goto LABEL_473;
                }

                if (v435 > v384[2])
                {
                  goto LABEL_474;
                }

                v436 = v384 + v947 + (v435 - 1) * v950;
                v437 = *(v952 + 20);
                v438 = *(v436 + v437);
                v320 = __OFADD__(v438, v388);
                v439 = v438 + v388;
                if (v320)
                {
                  goto LABEL_475;
                }

                *(v436 + v437) = v439;
                goto LABEL_119;
              }

LABEL_112:
              sub_1ADDCEDE0(v433, &qword_1EB5BA4A0, &unk_1AE253DA0);
              v297 = v944;
              v374 = v923;
              v384 = v954;
              v388 = v920;
            }

            else
            {
              v440 = v874;
              sub_1ADDCEE40(v433, v874, &qword_1EB5BA460, &qword_1AE251020);
              if (v434(v433 + v430, 1, v390) == 1)
              {
                sub_1ADDCEDE0(v916, &qword_1EB5BA460, &qword_1AE251020);
                sub_1ADE0DC8C(v440, type metadata accessor for FinalizedTimestamp);
                v295 = &unk_1AE25B3B0;
                goto LABEL_112;
              }

              v475 = v433 + v430;
              v476 = v846;
              sub_1ADDDE4D8(v475, v846, type metadata accessor for FinalizedTimestamp);
              v295 = &unk_1AE25B3B0;
              v388 = v920;
              if (*(v440 + *(v390 + 20)) == *(v476 + *(v390 + 20)))
              {
                v477 = sub_1AE23BF8C();
                sub_1ADE0DC8C(v476, type metadata accessor for FinalizedTimestamp);
                sub_1ADDCEDE0(v916, &qword_1EB5BA460, &qword_1AE251020);
                sub_1ADE0DC8C(v440, type metadata accessor for FinalizedTimestamp);
                sub_1ADDCEDE0(v433, &qword_1EB5BA460, &qword_1AE251020);
                v297 = v944;
                v374 = v923;
                v384 = v954;
                if (v477)
                {
                  goto LABEL_104;
                }
              }

              else
              {
                sub_1ADE0DC8C(v476, type metadata accessor for FinalizedTimestamp);
                sub_1ADDCEDE0(v916, &qword_1EB5BA460, &qword_1AE251020);
                sub_1ADE0DC8C(v440, type metadata accessor for FinalizedTimestamp);
                sub_1ADDCEDE0(v433, &qword_1EB5BA460, &qword_1AE251020);
                v297 = v944;
                v374 = v923;
                v384 = v954;
              }
            }

            sub_1ADE0DC8C(v921, type metadata accessor for FinalizedTimestampRange);
            v385 = v937;
LABEL_114:
            sub_1ADDDE338(v385, v926, type metadata accessor for FinalizedTimestampRange);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v384 = sub_1ADDE47F8(0, v384[2] + 1, 1, v384);
            }

            v442 = v384[2];
            v441 = v384[3];
            v443 = v937;
            if (v442 >= v441 >> 1)
            {
              v384 = sub_1ADDE47F8(v441 > 1, v442 + 1, 1, v384);
              v443 = v937;
            }

            sub_1ADE0DC8C(v443, type metadata accessor for FinalizedTimestampRange);
            v384[2] = v442 + 1;
            sub_1ADDDE4D8(v926, v384 + v947 + v442 * v950, type metadata accessor for FinalizedTimestampRange);
LABEL_119:
            sub_1ADDCEDE0(v956, &qword_1EB5BA148, &qword_1AE241B60);
            v320 = __OFADD__(v948, v388);
            v948 = (v948 + v388);
            v296 = v949;
            v444 = v936;
            if (v320)
            {
              goto LABEL_453;
            }

            v954 = v384;
            sub_1ADDDE4D8(v374, v936, type metadata accessor for FinalizedTimestamp);
            v386(v444, 0, 1, v296);
            *(v444 + *(v297 + 20)) = 1;
LABEL_170:
            v309 = v935;
            v307 = &qword_1EB5BA450;
LABEL_171:
            (*v940)(v444, 0, 1, v297);
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v484 = v955;
            }

            else
            {
              v484 = sub_1ADF799F0(v955);
            }

            if (v273 >= *(v484 + 2))
            {
              goto LABEL_450;
            }

            ++v273;
            v485 = v444;
            v486 = v484;
            sub_1ADDE4820(v485, &v484[v945 + *(v957 + 36) + v946]);
            v379 = v486;
            v964 = v486;
            v378 = v933;
            v377 = v934;
            if (v933 == v273)
            {
              goto LABEL_74;
            }

            continue;
          }
        }

LABEL_505:
        __break(1u);
LABEL_506:
        __break(1u);
LABEL_507:
        __break(1u);
LABEL_508:
        __break(1u);
LABEL_509:
        __break(1u);
LABEL_510:
        __break(1u);
LABEL_511:
        __break(1u);
LABEL_512:
        __break(1u);
LABEL_513:
        __break(1u);
LABEL_514:
        __break(1u);
LABEL_515:
        __break(1u);
LABEL_516:
        __break(1u);
LABEL_517:
        __break(1u);
LABEL_518:
        __break(1u);
LABEL_519:
        __break(1u);
LABEL_520:
        __break(1u);
LABEL_521:
        __break(1u);
LABEL_522:
        __break(1u);
LABEL_523:
        __break(1u);
LABEL_524:
        __break(1u);
LABEL_525:
        __break(1u);
LABEL_526:
        __break(1u);
LABEL_527:
        __break(1u);
LABEL_528:
        __break(1u);
LABEL_529:
        __break(1u);
        goto LABEL_530;
      }

LABEL_504:
      __break(1u);
      goto LABEL_505;
    }

LABEL_321:

LABEL_332:
    v294 = v829;
LABEL_333:
    v273 = v804;
    if (v915 >= 1)
    {
      v779 = 1;
      v320 = __OFADD__(v882, v915);
      v882 += v915;
      if (v320)
      {
        goto LABEL_554;
      }
    }
  }

  (v303)(&v961, 0);
  swift_endAccess();
  sub_1ADE0DC8C(v301, type metadata accessor for Replica);
  v310 = v892;
  swift_beginAccess();
  v311 = v935;
  v312 = v273;
  if (*v310)
  {
    v313 = v273 - v872;
    if (__OFSUB__(v273, v872))
    {
      goto LABEL_546;
    }

    v273 = &v882[v313];
    if (__OFADD__(v882, v313))
    {
      goto LABEL_547;
    }

    if (v273 < v882)
    {
      goto LABEL_548;
    }

    v314 = swift_isUniquelyReferenced_nonNull_native();
    v960 = *v892;
    v315 = v960;
    *v892 = 0x8000000000000000;
    v316 = sub_1ADDD8A6C(v913);
    v318 = v315[2];
    v319 = (v317 & 1) == 0;
    v320 = __OFADD__(v318, v319);
    v321 = v318 + v319;
    if (v320)
    {
      goto LABEL_549;
    }

    v322 = v317;
    if (v315[3] >= v321)
    {
      if ((v314 & 1) == 0)
      {
        v776 = v316;
        sub_1ADDFB81C();
        v316 = v776;
        v315 = v960;
      }
    }

    else
    {
      sub_1ADDDDED0(v321, v314);
      v315 = v960;
      v316 = sub_1ADDD8A6C(v913);
      if ((v322 & 1) != (v323 & 1))
      {
        goto LABEL_556;
      }
    }

    v296 = v949;
    *v892 = v315;
    if (v322)
    {
      v639 = *(v844 + 72) * v316;
    }

    else
    {
      v640 = v818;
      v641 = v316;
      sub_1AE23C11C();
      v315[(v641 >> 6) + 8] |= 1 << v641;
      sub_1ADDDE338(v913, v315[6] + *(v817 + 72) * v641, type metadata accessor for Replica);
      v639 = *(v844 + 72) * v641;
      (*(v844 + 32))(v315[7] + v639, v640, v819);
      v642 = v315[2];
      v320 = __OFADD__(v642, 1);
      v643 = v642 + 1;
      if (v320)
      {
        goto LABEL_553;
      }

      v315[2] = v643;
    }

    v644 = v315[7] + v639;
    sub_1AE23C07C();
    v297 = v944;
  }

  swift_endAccess();
  v645 = sub_1ADDE22AC(v872, v312);
  v647 = v645;
  if (v645 == v646)
  {
    v915 = 0;
    v955 = MEMORY[0x1E69E7CC0];
LABEL_331:
    sub_1ADDE2B98(v647, v646);

    *v858 = 1;
    goto LABEL_332;
  }

  if (v646 < v645)
  {
LABEL_550:
    __break(1u);
    goto LABEL_551;
  }

  v648 = v859;
  v649 = v867;
  if (v645 < v646)
  {
    v915 = 0;
    v650 = v964;
    v955 = MEMORY[0x1E69E7CC0];
    v273 = v645;
    v945 = v645;
    v946 = v646;
    while (1)
    {
      if (v647 < 0)
      {
        goto LABEL_470;
      }

      if (v273 >= *(v650 + 2))
      {
        goto LABEL_471;
      }

      v651 = (*(v943 + 80) + 32) & ~*(v943 + 80);
      v951 = v650;
      v948 = v651;
      v652 = *(v943 + 72);
      v954 = v273;
      v950 = v652 * v273;
      sub_1ADDCEE40(v650 + v651 + v652 * v273, v649, &qword_1EB5BA148, &qword_1AE241B60);
      v653 = v649;
      v654 = v865;
      sub_1ADDCEE40(v649 + *(v957 + 36), v865, &qword_1EB5BA450, v295);
      if ((*v941)(v654, 1, v297) != 1)
      {
        v667 = v864;
        sub_1ADDDE4D8(v654, v864, type metadata accessor for RetainedMapRun);
        v668 = v842;
        v273 = &qword_1EB5BA460;
        sub_1ADDCEE40(v667, v842, &qword_1EB5BA460, &qword_1AE251020);
        v669 = *v953;
        if ((*v953)(v668, 1, v296) != 1)
        {
          v685 = v841;
          sub_1ADDDE4D8(v668, v841, type metadata accessor for FinalizedTimestamp);
          v686 = v854;
          sub_1ADDDE338(v685, v854, type metadata accessor for FinalizedTimestamp);
          v687 = *v958;
          (*v958)(v686, 0, 1, v296);
          v649 = v867;
          v688 = v867[1];
          v689 = v688 - *v867;
          if (__OFSUB__(v688, *v867))
          {
            goto LABEL_510;
          }

          *(v686 + *(v952 + 20)) = v689;
          v690 = v955;
          v691 = *(v955 + 2);
          v692 = v686;
          v693 = v814;
          if (v691)
          {
            v694 = v649;
            v947 = (*(v901 + 80) + 32) & ~*(v901 + 80);
            v934 = *(v901 + 72);
            v695 = v823;
            sub_1ADDDE338(&v955[v947 + v934 * (v691 - 1)], v823, type metadata accessor for FinalizedTimestampRange);
            v273 = &qword_1EB5BA460;
            sub_1ADDCEE40(v695, v693, &qword_1EB5BA460, &qword_1AE251020);
            if (v669(v693, 1, v296) == 1)
            {
              sub_1ADDCEDE0(v693, &qword_1EB5BA460, &qword_1AE251020);
              v696 = v807;
              v687(v807, 1, 1, v296);
              v697 = v296;
            }

            else
            {
              v722 = v791;
              sub_1ADDDE4D8(v693, v791, type metadata accessor for FinalizedTimestamp);
              v696 = v807;
              v938(v807, v722, v942);
              v697 = v296;
              v723 = *(v722 + *(v296 + 20));
              sub_1ADE0DC8C(v722, type metadata accessor for FinalizedTimestamp);
              v724 = *(v695 + *(v952 + 20));
              v320 = __OFADD__(v723, v724);
              v725 = v723 + v724;
              if (v320)
              {
                goto LABEL_535;
              }

              *(v696 + *(v697 + 20)) = v725;
              v687(v696, 0, 1, v697);
              v694 = v867;
            }

            v726 = *(v928 + 48);
            v727 = v802;
            sub_1ADDCEE40(v696, v802, &qword_1EB5BA460, &qword_1AE251020);
            sub_1ADDCEE40(v854, v727 + v726, &qword_1EB5BA460, &qword_1AE251020);
            if (v669(v727, 1, v697) == 1)
            {
              sub_1ADDCEDE0(v696, &qword_1EB5BA460, &qword_1AE251020);
              if (v669(v727 + v726, 1, v697) == 1)
              {
                sub_1ADDCEDE0(v727, &qword_1EB5BA460, &qword_1AE251020);
                v296 = v949;
                v311 = v935;
                v649 = v694;
                goto LABEL_386;
              }

LABEL_394:
              v734 = v727;
              v735 = &qword_1EB5BA4A0;
              v736 = &unk_1AE253DA0;
LABEL_395:
              sub_1ADDCEDE0(v734, v735, v736);
              v311 = v935;
              v649 = v694;
              goto LABEL_396;
            }

            v733 = v790;
            sub_1ADDCEE40(v727, v790, &qword_1EB5BA460, &qword_1AE251020);
            if (v669(v727 + v726, 1, v697) == 1)
            {
              sub_1ADDCEDE0(v807, &qword_1EB5BA460, &qword_1AE251020);
              sub_1ADE0DC8C(v733, type metadata accessor for FinalizedTimestamp);
              goto LABEL_394;
            }

            v769 = v784;
            sub_1ADDDE4D8(v727 + v726, v784, type metadata accessor for FinalizedTimestamp);
            v770 = *(v697 + 20);
            v771 = v769;
            if (*(v733 + v770) != *(v769 + v770))
            {
              sub_1ADE0DC8C(v769, type metadata accessor for FinalizedTimestamp);
              sub_1ADDCEDE0(v807, &qword_1EB5BA460, &qword_1AE251020);
              sub_1ADE0DC8C(v733, type metadata accessor for FinalizedTimestamp);
              v734 = v727;
              v735 = &qword_1EB5BA460;
              v736 = &qword_1AE251020;
              goto LABEL_395;
            }

            v772 = sub_1AE23BF8C();
            sub_1ADE0DC8C(v771, type metadata accessor for FinalizedTimestamp);
            sub_1ADDCEDE0(v807, &qword_1EB5BA460, &qword_1AE251020);
            sub_1ADE0DC8C(v733, type metadata accessor for FinalizedTimestamp);
            sub_1ADDCEDE0(v727, &qword_1EB5BA460, &qword_1AE251020);
            v296 = v949;
            v311 = v935;
            v649 = v694;
            if ((v772 & 1) == 0)
            {
LABEL_396:
              sub_1ADE0DC8C(v823, type metadata accessor for FinalizedTimestampRange);
              v692 = v854;
              v690 = v955;
              goto LABEL_397;
            }

LABEL_386:
            v728 = *(v955 + 2);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v955 = sub_1ADF79A40(v955);
            }

            v647 = v945;
            v648 = v859;
            v273 = v954;
            sub_1ADE0DC8C(v823, type metadata accessor for FinalizedTimestampRange);
            sub_1ADE0DC8C(v854, type metadata accessor for FinalizedTimestampRange);
            sub_1ADE0DC8C(v841, type metadata accessor for FinalizedTimestamp);
            sub_1ADDCEDE0(v649, &qword_1EB5BA148, &qword_1AE241B60);
            if (!v728)
            {
              goto LABEL_540;
            }

            if (v728 > *(v955 + 2))
            {
              goto LABEL_541;
            }

            v729 = &v955[v947 + (v728 - 1) * v934];
            v730 = *(v952 + 20);
            v731 = *&v729[v730];
            v320 = __OFADD__(v731, v689);
            v732 = v731 + v689;
            if (v320)
            {
              goto LABEL_544;
            }

            *&v729[v730] = v732;
            v295 = &unk_1AE25B3B0;
            v650 = v951;
          }

          else
          {
LABEL_397:
            sub_1ADDDE338(v692, v831, type metadata accessor for FinalizedTimestampRange);
            v737 = swift_isUniquelyReferenced_nonNull_native();
            v738 = v690;
            if ((v737 & 1) == 0)
            {
              v738 = sub_1ADDE47F8(0, *(v690 + 2) + 1, 1, v690);
            }

            v295 = &unk_1AE25B3B0;
            v647 = v945;
            v650 = v951;
            v648 = v859;
            v273 = v954;
            v955 = v738;
            v740 = *(v738 + 2);
            v739 = *(v738 + 3);
            if (v740 >= v739 >> 1)
            {
              v955 = sub_1ADDE47F8(v739 > 1, v740 + 1, 1, v955);
            }

            sub_1ADE0DC8C(v854, type metadata accessor for FinalizedTimestampRange);
            sub_1ADE0DC8C(v841, type metadata accessor for FinalizedTimestamp);
            sub_1ADDCEDE0(v649, &qword_1EB5BA148, &qword_1AE241B60);
            v741 = v955;
            *(v955 + 2) = v740 + 1;
            sub_1ADDDE4D8(v831, &v741[((*(v901 + 80) + 32) & ~*(v901 + 80)) + *(v901 + 72) * v740], type metadata accessor for FinalizedTimestampRange);
            v296 = v949;
          }

          v742 = v893;
          sub_1ADDDE4D8(v864, v893, type metadata accessor for RetainedMapRun);
          v721 = v742;
          v297 = v944;
          goto LABEL_430;
        }

        sub_1ADDCEDE0(v668, &qword_1EB5BA460, &qword_1AE251020);
        v670 = v840;
        v938(v840, v913, v942);
        if (__OFADD__(v882, v915))
        {
          goto LABEL_509;
        }

        *(v670 + *(v296 + 20)) = &v882[v915];
        v671 = v853;
        sub_1ADDDE338(v670, v853, type metadata accessor for FinalizedTimestamp);
        v672 = *v958;
        (*v958)(v671, 0, 1, v296);
        v673 = v867;
        v674 = v867[1];
        v320 = __OFSUB__(v674, *v867);
        v675 = v674 - *v867;
        if (v320)
        {
          goto LABEL_511;
        }

        v676 = *(v952 + 20);
        v947 = v675;
        *(v671 + v676) = v675;
        v677 = v955;
        v678 = *(v955 + 2);
        if (v678)
        {
          v934 = (*(v901 + 80) + 32) & ~*(v901 + 80);
          v679 = *(v901 + 72);
          v680 = v822;
          sub_1ADDDE338(&v955[v934 + v679 * (v678 - 1)], v822, type metadata accessor for FinalizedTimestampRange);
          v681 = v801;
          sub_1ADDCEE40(v680, v801, &qword_1EB5BA460, &qword_1AE251020);
          v682 = v669(v681, 1, v296);
          v933 = v679;
          if (v682 == 1)
          {
            sub_1ADDCEDE0(v681, &qword_1EB5BA460, &qword_1AE251020);
            v683 = 1;
            v684 = v806;
          }

          else
          {
            v743 = v789;
            sub_1ADDDE4D8(v681, v789, type metadata accessor for FinalizedTimestamp);
            v684 = v806;
            v938(v806, v743, v942);
            v744 = v296;
            v745 = *(v743 + *(v296 + 20));
            sub_1ADE0DC8C(v743, type metadata accessor for FinalizedTimestamp);
            v746 = *(v680 + *(v952 + 20));
            v320 = __OFADD__(v745, v746);
            v747 = v745 + v746;
            if (v320)
            {
              goto LABEL_536;
            }

            v683 = 0;
            *(v684 + *(v744 + 20)) = v747;
            v296 = v744;
            v673 = v867;
          }

          v672(v684, v683, 1, v296);
          v748 = v296;
          v749 = *(v928 + 48);
          v750 = v799;
          sub_1ADDCEE40(v684, v799, &qword_1EB5BA460, &qword_1AE251020);
          sub_1ADDCEE40(v853, v750 + v749, &qword_1EB5BA460, &qword_1AE251020);
          if (v669(v750, 1, v748) == 1)
          {
            sub_1ADDCEDE0(v684, &qword_1EB5BA460, &qword_1AE251020);
            if (v669(v750 + v749, 1, v748) == 1)
            {
              sub_1ADDCEDE0(v750, &qword_1EB5BA460, &qword_1AE251020);
              v311 = v935;
              v648 = v859;
              goto LABEL_408;
            }

LABEL_419:
            v760 = v750;
            v761 = &qword_1EB5BA4A0;
            v762 = &unk_1AE253DA0;
LABEL_420:
            sub_1ADDCEDE0(v760, v761, v762);
            v311 = v935;
            v648 = v859;
            goto LABEL_421;
          }

          v759 = v788;
          sub_1ADDCEE40(v750, v788, &qword_1EB5BA460, &qword_1AE251020);
          if (v669(v750 + v749, 1, v748) == 1)
          {
            sub_1ADDCEDE0(v806, &qword_1EB5BA460, &qword_1AE251020);
            sub_1ADE0DC8C(v759, type metadata accessor for FinalizedTimestamp);
            goto LABEL_419;
          }

          v773 = v750 + v749;
          v774 = v783;
          sub_1ADDDE4D8(v773, v783, type metadata accessor for FinalizedTimestamp);
          if (*(v759 + *(v748 + 20)) != *(v774 + *(v748 + 20)))
          {
            sub_1ADE0DC8C(v774, type metadata accessor for FinalizedTimestamp);
            sub_1ADDCEDE0(v806, &qword_1EB5BA460, &qword_1AE251020);
            sub_1ADE0DC8C(v759, type metadata accessor for FinalizedTimestamp);
            v760 = v750;
            v761 = &qword_1EB5BA460;
            v762 = &qword_1AE251020;
            goto LABEL_420;
          }

          v775 = sub_1AE23BF8C();
          sub_1ADE0DC8C(v774, type metadata accessor for FinalizedTimestamp);
          sub_1ADDCEDE0(v806, &qword_1EB5BA460, &qword_1AE251020);
          sub_1ADE0DC8C(v759, type metadata accessor for FinalizedTimestamp);
          sub_1ADDCEDE0(v750, &qword_1EB5BA460, &qword_1AE251020);
          v311 = v935;
          v648 = v859;
          if ((v775 & 1) == 0)
          {
LABEL_421:
            sub_1ADE0DC8C(v822, type metadata accessor for FinalizedTimestampRange);
            v671 = v853;
            v677 = v955;
            goto LABEL_422;
          }

LABEL_408:
          v677 = v955;
          v751 = *(v955 + 2);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v677 = sub_1ADF79A40(v677);
          }

          v295 = &unk_1AE25B3B0;
          sub_1ADE0DC8C(v822, type metadata accessor for FinalizedTimestampRange);
          sub_1ADE0DC8C(v853, type metadata accessor for FinalizedTimestampRange);
          if (!v751)
          {
            goto LABEL_542;
          }

          if (v751 > *(v677 + 2))
          {
            goto LABEL_543;
          }

          v752 = &v677[v934 + (v751 - 1) * v933];
          v753 = *(v952 + 20);
          v754 = *(v752 + v753);
          v320 = __OFADD__(v754, v947);
          v755 = v754 + v947;
          if (v320)
          {
            goto LABEL_545;
          }

          *(v752 + v753) = v755;
        }

        else
        {
LABEL_422:
          sub_1ADDDE338(v671, v830, type metadata accessor for FinalizedTimestampRange);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v677 = sub_1ADDE47F8(0, *(v677 + 2) + 1, 1, v677);
          }

          v295 = &unk_1AE25B3B0;
          v764 = *(v677 + 2);
          v763 = *(v677 + 3);
          v765 = v853;
          if (v764 >= v763 >> 1)
          {
            v677 = sub_1ADDE47F8(v763 > 1, v764 + 1, 1, v677);
            v765 = v853;
          }

          sub_1ADE0DC8C(v765, type metadata accessor for FinalizedTimestampRange);
          *(v677 + 2) = v764 + 1;
          sub_1ADDDE4D8(v830, &v677[((*(v901 + 80) + 32) & ~*(v901 + 80)) + *(v901 + 72) * v764], type metadata accessor for FinalizedTimestampRange);
        }

        sub_1ADDCEDE0(v673, &qword_1EB5BA148, &qword_1AE241B60);
        v320 = __OFADD__(v915, v947);
        v915 += v947;
        v296 = v949;
        if (v320)
        {
          goto LABEL_512;
        }

        v955 = v677;
        v766 = v893;
        sub_1ADDDE4D8(v840, v893, type metadata accessor for FinalizedTimestamp);
        v672(v766, 0, 1, v296);
        v767 = v944;
        v768 = *(v864 + *(v944 + 20));
        sub_1ADE0DC8C(v864, type metadata accessor for RetainedMapRun);
        v721 = v766;
        *(v766 + *(v767 + 20)) = v768;
        v297 = v767;
        v649 = v867;
        v647 = v945;
        goto LABEL_429;
      }

      v273 = v311;
      sub_1ADDCEDE0(v654, &qword_1EB5BA450, v295);
      v938(v648, v913, v942);
      v655 = v843;
      if (__OFADD__(v882, v915))
      {
        goto LABEL_485;
      }

      *(v648 + *(v296 + 20)) = &v882[v915];
      v656 = v884;
      sub_1ADDDE338(v648, v884, type metadata accessor for FinalizedTimestamp);
      v657 = *v958;
      (*v958)(v656, 0, 1, v296);
      v658 = v649[1];
      v320 = __OFSUB__(v658, *v649);
      v659 = v658 - *v649;
      if (v320)
      {
        goto LABEL_486;
      }

      v660 = *(v952 + 20);
      v947 = v659;
      *(v656 + v660) = v659;
      v661 = *(v955 + 2);
      if (!v661)
      {
        goto LABEL_374;
      }

      v273 = (*(v901 + 80) + 32) & ~*(v901 + 80);
      v933 = *(v901 + 72);
      v662 = v845;
      sub_1ADDDE338(&v955[v273 + v933 * (v661 - 1)], v845, type metadata accessor for FinalizedTimestampRange);
      sub_1ADDCEE40(v662, v655, &qword_1EB5BA460, &qword_1AE251020);
      v663 = *v953;
      v664 = (*v953)(v655, 1, v296);
      v934 = v273;
      if (v664 == 1)
      {
        sub_1ADDCEDE0(v655, &qword_1EB5BA460, &qword_1AE251020);
        v665 = 1;
        v666 = v834;
      }

      else
      {
        v698 = v800;
        sub_1ADDDE4D8(v655, v800, type metadata accessor for FinalizedTimestamp);
        v666 = v834;
        v938(v834, v698, v942);
        v699 = v296;
        v700 = *(v698 + *(v296 + 20));
        sub_1ADE0DC8C(v698, type metadata accessor for FinalizedTimestamp);
        v701 = *(v662 + *(v952 + 20));
        v320 = __OFADD__(v700, v701);
        v702 = v700 + v701;
        if (v320)
        {
          goto LABEL_520;
        }

        v665 = 0;
        *(v666 + *(v699 + 20)) = v702;
        v296 = v699;
        v653 = v867;
      }

      v657(v666, v665, 1, v296);
      v703 = v296;
      v704 = *(v928 + 48);
      v705 = v821;
      sub_1ADDCEE40(v666, v821, &qword_1EB5BA460, &qword_1AE251020);
      sub_1ADDCEE40(v884, v705 + v704, &qword_1EB5BA460, &qword_1AE251020);
      if (v663(v705, 1, v703) == 1)
      {
        break;
      }

      v712 = v798;
      sub_1ADDCEE40(v705, v798, &qword_1EB5BA460, &qword_1AE251020);
      if (v663(v705 + v704, 1, v703) == 1)
      {
        sub_1ADDCEDE0(v834, &qword_1EB5BA460, &qword_1AE251020);
        sub_1ADE0DC8C(v712, type metadata accessor for FinalizedTimestamp);
LABEL_371:
        v713 = v705;
        v714 = &qword_1EB5BA4A0;
        v715 = &unk_1AE253DA0;
        goto LABEL_372;
      }

      v756 = v705 + v704;
      v757 = v787;
      sub_1ADDDE4D8(v756, v787, type metadata accessor for FinalizedTimestamp);
      if (*(v712 + *(v703 + 20)) == *(v757 + *(v703 + 20)))
      {
        v758 = sub_1AE23BF8C();
        sub_1ADE0DC8C(v757, type metadata accessor for FinalizedTimestamp);
        sub_1ADDCEDE0(v834, &qword_1EB5BA460, &qword_1AE251020);
        sub_1ADE0DC8C(v712, type metadata accessor for FinalizedTimestamp);
        sub_1ADDCEDE0(v705, &qword_1EB5BA460, &qword_1AE251020);
        v295 = &unk_1AE25B3B0;
        v649 = v653;
        if (v758)
        {
          goto LABEL_363;
        }

        goto LABEL_373;
      }

      sub_1ADE0DC8C(v757, type metadata accessor for FinalizedTimestamp);
      sub_1ADDCEDE0(v834, &qword_1EB5BA460, &qword_1AE251020);
      sub_1ADE0DC8C(v712, type metadata accessor for FinalizedTimestamp);
      v713 = v705;
      v714 = &qword_1EB5BA460;
      v715 = &qword_1AE251020;
LABEL_372:
      sub_1ADDCEDE0(v713, v714, v715);
      v295 = &unk_1AE25B3B0;
      v649 = v653;
LABEL_373:
      sub_1ADE0DC8C(v845, type metadata accessor for FinalizedTimestampRange);
      v656 = v884;
      v273 = v935;
      v647 = v945;
LABEL_374:
      sub_1ADDDE338(v656, v855, type metadata accessor for FinalizedTimestampRange);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v955 = sub_1ADDE47F8(0, *(v955 + 2) + 1, 1, v955);
      }

      v648 = v859;
      v717 = *(v955 + 2);
      v716 = *(v955 + 3);
      v718 = v884;
      if (v717 >= v716 >> 1)
      {
        v955 = sub_1ADDE47F8(v716 > 1, v717 + 1, 1, v955);
        v718 = v884;
      }

      sub_1ADE0DC8C(v718, type metadata accessor for FinalizedTimestampRange);
      v719 = v955;
      *(v955 + 2) = v717 + 1;
      sub_1ADDDE4D8(v855, &v719[((*(v901 + 80) + 32) & ~*(v901 + 80)) + *(v901 + 72) * v717], type metadata accessor for FinalizedTimestampRange);
LABEL_379:
      sub_1ADDCEDE0(v649, &qword_1EB5BA148, &qword_1AE241B60);
      v320 = __OFADD__(v915, v947);
      v915 += v947;
      v296 = v949;
      if (v320)
      {
        goto LABEL_487;
      }

      v720 = v893;
      sub_1ADDDE4D8(v648, v893, type metadata accessor for FinalizedTimestamp);
      v657(v720, 0, 1, v296);
      v721 = v720;
      v297 = v944;
      *(v720 + *(v944 + 20)) = 1;
      v311 = v273;
LABEL_429:
      v650 = v951;
      v273 = v954;
LABEL_430:
      (*v940)(v721, 0, 1, v297);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v650 = sub_1ADF799F0(v650);
      }

      if (v273 >= *(v650 + 2))
      {
        goto LABEL_472;
      }

      ++v273;
      sub_1ADDE4820(v893, v948 + v650 + *(v957 + 36) + v950);
      v964 = v650;
      v646 = v946;
      if (v946 == v273)
      {
        goto LABEL_331;
      }
    }

    sub_1ADDCEDE0(v666, &qword_1EB5BA460, &qword_1AE251020);
    if (v663(v705 + v704, 1, v703) == 1)
    {
      sub_1ADDCEDE0(v705, &qword_1EB5BA460, &qword_1AE251020);
      v295 = &unk_1AE25B3B0;
      v649 = v653;
LABEL_363:
      v706 = *(v955 + 2);
      v707 = swift_isUniquelyReferenced_nonNull_native();
      v273 = v935;
      if ((v707 & 1) == 0)
      {
        v955 = sub_1ADF79A40(v955);
      }

      v647 = v945;
      v648 = v859;
      sub_1ADE0DC8C(v845, type metadata accessor for FinalizedTimestampRange);
      sub_1ADE0DC8C(v884, type metadata accessor for FinalizedTimestampRange);
      if (!v706)
      {
        goto LABEL_532;
      }

      if (v706 > *(v955 + 2))
      {
        goto LABEL_533;
      }

      v708 = &v955[v934 + (v706 - 1) * v933];
      v709 = *(v952 + 20);
      v710 = *&v708[v709];
      v320 = __OFADD__(v710, v947);
      v711 = v710 + v947;
      if (v320)
      {
        goto LABEL_534;
      }

      *&v708[v709] = v711;
      goto LABEL_379;
    }

    goto LABEL_371;
  }

LABEL_551:
  __break(1u);
LABEL_552:
  __break(1u);
LABEL_553:
  __break(1u);
LABEL_554:
  __break(1u);
LABEL_555:
  sub_1ADDCEDE0(v273, &qword_1EB5BA460, &qword_1AE251020);
  sub_1AE23DC5C();
  __break(1u);
LABEL_556:
  result = sub_1AE23E27C();
  __break(1u);
  return result;
}