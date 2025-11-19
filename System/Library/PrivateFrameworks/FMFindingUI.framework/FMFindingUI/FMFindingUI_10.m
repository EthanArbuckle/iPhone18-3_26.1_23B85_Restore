void *sub_24A5E4FC4(uint64_t a1, uint64_t a2)
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

  sub_24A508FA4(&unk_27EF4FF40, &unk_24A635E60);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x6666666666666667) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

size_t sub_24A5E5054(uint64_t a1, uint64_t a2)
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

  sub_24A508FA4(&qword_27EF51AC0, &qword_24A63B080);
  v4 = *(sub_24A62E214() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
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

void *sub_24A5E5150(uint64_t a1, uint64_t a2)
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

  sub_24A508FA4(&qword_27EF50790, &qword_24A6338D0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
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

unint64_t sub_24A5E51DC(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x24C21BC00](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x24C21BC00](&v3, 8);
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

uint64_t sub_24A5E5280(uint64_t result, uint64_t (*a2)(uint64_t, double, double), double a3, double a4)
{
  if (a3 == a4)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = a4 - a3;
  if (COERCE__INT64(fabs(a4 - a3)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v8 = result;
  v9 = 0;
  result = MEMORY[0x24C21BC00](&v9, 8);
  if (v6 * vcvtd_n_f64_u64(v9 & 0x1FFFFFFFFFFFFFLL, 0x35uLL) + a3 == a4)
  {
    return a2(v8, a3, a4);
  }

  return result;
}

char *sub_24A5E532C(char *result, int64_t a2, char a3, char *a4)
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
    sub_24A508FA4(&qword_27EF4F9A0, &unk_24A6349F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

size_t sub_24A5E545C(size_t result, int64_t a2, char a3, void *a4)
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

  sub_24A508FA4(&qword_27EF51AC0, &qword_24A63B080);
  v10 = *(sub_24A62E214() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
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
  v15 = *(sub_24A62E214() - 8);
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

char *sub_24A5E5634(char *result, int64_t a2, char a3, char *a4)
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
    sub_24A508FA4(&qword_27EF4FA78, &qword_24A636E60);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_24A5E578C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
LABEL_30:
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

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_24A508FA4(a5, a6);
  v16 = *(sub_24A508FA4(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = j__malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(sub_24A508FA4(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

char *sub_24A5E5974(char *result, int64_t a2, char a3, char *a4)
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
    sub_24A508FA4(&unk_27EF52400, &qword_24A63B068);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

void *sub_24A5E5AC0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    sub_24A508FA4(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_24A508FA4(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_24A5E5C2C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    sub_24A508FA4(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_24A508FA4(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

uint64_t sub_24A5E5D64(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_24A62F464();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_24A62F3A4();
}

void *sub_24A5E5DDC(void *result)
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

  result = sub_24A617A0C(result, v11, 1, v3);
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

  sub_24A508FA4(&unk_27EF501B0, &unk_24A633B00);
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

uint64_t sub_24A5E5EE4(uint64_t result)
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

  result = sub_24A617A30(result, v12, 1, v3);
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

  memcpy((v3 + 16 * v8 + 32), (v6 + 32), 16 * v2);

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

uint64_t sub_24A5E5FD0(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_24A62F464();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = *v2;
  if (!(*v2 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v8 = __OFADD__(v7, v5);
    result = v7 + v5;
    if (!v8)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v6 < 0)
  {
    v16 = *v2;
  }

  v17 = sub_24A62F464();
  v8 = __OFADD__(v17, v5);
  result = v17 + v5;
  if (v8)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_24A5E6188(result);
  v10 = *v2;
  v11 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v11 + 8 * *(v11 + 0x10) + 32, (*(v11 + 0x18) >> 1) - *(v11 + 0x10), a1);
  v13 = v12;

  if (v13 < v5)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v13 < 1)
  {
LABEL_9:
    *v2 = v10;
    return result;
  }

  v14 = *(v11 + 16);
  v8 = __OFADD__(v14, v13);
  v15 = v14 + v13;
  if (!v8)
  {
    *(v11 + 16) = v15;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_24A5E60CC(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if ((isUniquelyReferenced_nonNull_bridgeObject & 1) == 0 || (result = 0, (v3 & 0x8000000000000000) != 0) || (v3 & 0x4000000000000000) != 0 || a1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    if (v3 >> 62)
    {
      sub_24A62F464();
    }

    else
    {
      v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    result = sub_24A62F3A4();
    *v1 = result;
  }

  return result;
}

uint64_t sub_24A5E6188(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_24A62F464();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_24A62F3A4();
  *v1 = result;
  return result;
}

uint64_t sub_24A5E6228(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_24A62F5F4();
  if (result >= v2)
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
      if (v2 < 2)
      {
        return result;
      }

      v7 = *a1;
      v8 = -1;
      v9 = 1;
      v10 = *a1;
LABEL_9:
      v11 = *(v7 + 8 * v9);
      v12 = v8;
      v13 = v10;
      while (1)
      {
        result = OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_composedPosition;
        v14 = (v11 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_composedPosition);
        if (*(v11 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_composedPosition + 16))
        {
          goto LABEL_25;
        }

        v15 = (v11 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_peripheralPosition);
        if (*(v11 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_peripheralPosition + 16))
        {
          goto LABEL_27;
        }

        v16 = *v13;
        result = *v13 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_composedPosition;
        if (*(result + 16))
        {
          goto LABEL_26;
        }

        if (*(v16 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_peripheralPosition + 16))
        {
          goto LABEL_24;
        }

        v18 = v14[1] - v15[1];
        v17 = (v16 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_peripheralPosition);
        if (v18 * v18 + (*v14 - *v15) * (*v14 - *v15) < (*(result + 8) - v17[1]) * (*(result + 8) - v17[1]) + (*result - *v17) * (*result - *v17))
        {
          if (!v7)
          {
            goto LABEL_28;
          }

          *v13 = v11;
          v13[1] = v16;
          --v13;
          if (!__CFADD__(v12++, 1))
          {
            continue;
          }
        }

        ++v9;
        ++v10;
        --v8;
        if (v9 == v2)
        {
          return result;
        }

        goto LABEL_9;
      }
    }
  }

  else
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
        type metadata accessor for FMPFSKPatternFragmentNode();
        v6 = sub_24A62ED94();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v20[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v20[1] = v5;
      sub_24A5E6970(v20, v21, a1, v4);
      *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
    }

    __break(1u);
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
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_24A5E63F4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v86 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v86;
    if (!*v86)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_24A5E8018(v8);
      v8 = result;
    }

    v78 = (v8 + 16);
    v79 = *(v8 + 16);
    if (v79 >= 2)
    {
      while (*a3)
      {
        v80 = (v8 + 16 * v79);
        v81 = *v80;
        v82 = &v78[2 * v79];
        v83 = v82[1];
        sub_24A5E7814((*a3 + 16 * *v80), (*a3 + 16 * *v82), (*a3 + 16 * v83), v5);
        if (v4)
        {
        }

        if (v83 < v81)
        {
          goto LABEL_114;
        }

        if (v79 - 2 >= *v78)
        {
          goto LABEL_115;
        }

        *v80 = v81;
        v80[1] = v83;
        v84 = *v78 - v79;
        if (*v78 < v79)
        {
          goto LABEL_116;
        }

        v79 = *v78 - 1;
        result = memmove(v82, v82 + 2, 16 * v84);
        *v78 = v79;
        if (v79 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v85 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7 + 8);
      v11 = 16 * v9;
      v12 = *a3 + 16 * v9;
      v13 = *(v12 + 8);
      v14 = v9 + 2;
      v15 = (v12 + 40);
      v16 = v10;
      while (v6 != v14)
      {
        v17 = *v15;
        v15 += 2;
        v18 = v17 >= v16;
        ++v14;
        v16 = v17;
        if ((((v10 < v13) ^ v18) & 1) == 0)
        {
          v7 = v14 - 1;
          if (v10 >= v13)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v13)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v19 = 16 * v7 - 16;
        v20 = v7;
        v21 = v9;
        do
        {
          if (v21 != --v20)
          {
            v23 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = *(v23 + v11);
            *(v23 + v11) = *(v23 + v19);
            *(v23 + v19) = v22;
          }

          ++v21;
          v19 -= 16;
          v11 += 16;
        }

        while (v21 < v20);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_24A5E802C(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v32 = *(v8 + 24);
    v33 = v5 + 1;
    if (v5 >= v32 >> 1)
    {
      result = sub_24A5E802C((v32 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v33;
    v34 = v8 + 32;
    v35 = (v8 + 32 + 16 * v5);
    *v35 = v9;
    v35[1] = v7;
    v87 = *v86;
    if (!*v86)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v33 - 1;
        if (v33 >= 4)
        {
          break;
        }

        if (v33 == 3)
        {
          v36 = *(v8 + 32);
          v37 = *(v8 + 40);
          v46 = __OFSUB__(v37, v36);
          v38 = v37 - v36;
          v39 = v46;
LABEL_57:
          if (v39)
          {
            goto LABEL_104;
          }

          v52 = (v8 + 16 * v33);
          v54 = *v52;
          v53 = v52[1];
          v55 = __OFSUB__(v53, v54);
          v56 = v53 - v54;
          v57 = v55;
          if (v55)
          {
            goto LABEL_106;
          }

          v58 = (v34 + 16 * v5);
          v60 = *v58;
          v59 = v58[1];
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v56, v61))
          {
            goto LABEL_111;
          }

          if (v56 + v61 >= v38)
          {
            if (v38 < v61)
            {
              v5 = v33 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v33 < 2)
        {
          goto LABEL_112;
        }

        v62 = (v8 + 16 * v33);
        v64 = *v62;
        v63 = v62[1];
        v46 = __OFSUB__(v63, v64);
        v56 = v63 - v64;
        v57 = v46;
LABEL_72:
        if (v57)
        {
          goto LABEL_108;
        }

        v65 = (v34 + 16 * v5);
        v67 = *v65;
        v66 = v65[1];
        v46 = __OFSUB__(v66, v67);
        v68 = v66 - v67;
        if (v46)
        {
          goto LABEL_110;
        }

        if (v68 < v56)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v33)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v73 = (v34 + 16 * (v5 - 1));
        v74 = *v73;
        v75 = (v34 + 16 * v5);
        v76 = v75[1];
        sub_24A5E7814((*a3 + 16 * *v73), (*a3 + 16 * *v75), (*a3 + 16 * v76), v87);
        if (v4)
        {
        }

        if (v76 < v74)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v73 = v74;
        v73[1] = v76;
        v77 = *(v8 + 16);
        if (v5 >= v77)
        {
          goto LABEL_101;
        }

        v33 = v77 - 1;
        result = memmove((v34 + 16 * v5), v75 + 2, 16 * (v77 - 1 - v5));
        *(v8 + 16) = v77 - 1;
        if (v77 <= 2)
        {
          goto LABEL_3;
        }
      }

      v40 = v34 + 16 * v33;
      v41 = *(v40 - 64);
      v42 = *(v40 - 56);
      v46 = __OFSUB__(v42, v41);
      v43 = v42 - v41;
      if (v46)
      {
        goto LABEL_102;
      }

      v45 = *(v40 - 48);
      v44 = *(v40 - 40);
      v46 = __OFSUB__(v44, v45);
      v38 = v44 - v45;
      v39 = v46;
      if (v46)
      {
        goto LABEL_103;
      }

      v47 = (v8 + 16 * v33);
      v49 = *v47;
      v48 = v47[1];
      v46 = __OFSUB__(v48, v49);
      v50 = v48 - v49;
      if (v46)
      {
        goto LABEL_105;
      }

      v46 = __OFADD__(v38, v50);
      v51 = v38 + v50;
      if (v46)
      {
        goto LABEL_107;
      }

      if (v51 >= v43)
      {
        v69 = (v34 + 16 * v5);
        v71 = *v69;
        v70 = v69[1];
        v46 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v46)
        {
          goto LABEL_113;
        }

        if (v38 < v72)
        {
          v5 = v33 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v85;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v24 = *a3;
  v25 = *a3 + 16 * v7;
  v26 = v9 - v7;
LABEL_30:
  v27 = *(v24 + 16 * v7 + 8);
  v28 = v26;
  v29 = v25;
  while (1)
  {
    if (v27 >= *(v29 - 1))
    {
LABEL_29:
      ++v7;
      v25 += 16;
      --v26;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v24)
    {
      break;
    }

    v30 = *v29;
    *v29 = *(v29 - 1);
    *(v29 - 1) = v27;
    *(v29 - 2) = v30;
    v29 -= 2;
    if (__CFADD__(v28++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_24A5E6970(uint64_t result, uint64_t a2, uint64_t *a3, char *a4)
{
  v5 = v4;
  v93 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_97:
    v7 = *v93;
    if (*v93)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_129;
      }

      goto LABEL_99;
    }

LABEL_143:
    __break(1u);
    return result;
  }

  v7 = a4;
  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v8 + 1 >= v6)
    {
      v6 = v8 + 1;
    }

    else
    {
      v10 = *a3;
      v11 = *(*a3 + 8 * (v8 + 1));
      v96 = *(*a3 + 8 * v8);
      v97 = v11;
      result = sub_24A5E3C3C(&v97, &v96);
      if (v5)
      {
      }

      v12 = v8 + 2;
      v13 = 8 * v8;
      v14 = (v10 + 8 * v8 + 16);
      while (v6 != v12)
      {
        v15 = *v14;
        v16 = *v14 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_composedPosition;
        if (*(v16 + 16))
        {
          goto LABEL_135;
        }

        v17 = (v15 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_peripheralPosition);
        if (*(v15 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_peripheralPosition + 16))
        {
          goto LABEL_138;
        }

        v18 = *(v14 - 1);
        v19 = (v18 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_composedPosition);
        if (*(v18 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_composedPosition + 16))
        {
          goto LABEL_137;
        }

        v20 = v18 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_peripheralPosition;
        if (*(v20 + 16))
        {
          goto LABEL_136;
        }

        v21 = *(v16 + 8) - v17[1];
        ++v12;
        ++v14;
        if (((result ^ (v21 * v21 + (*v16 - *v17) * (*v16 - *v17) >= (v19[1] - *(v20 + 8)) * (v19[1] - *(v20 + 8)) + (*v19 - *v20) * (*v19 - *v20))) & 1) == 0)
        {
          v6 = v12 - 1;
          break;
        }
      }

      if (result)
      {
        if (v6 < v8)
        {
          goto LABEL_128;
        }

        if (v8 < v6)
        {
          v22 = 8 * v6 - 8;
          v23 = v6;
          v24 = v8;
          do
          {
            if (v24 != --v23)
            {
              v26 = *a3;
              if (!*a3)
              {
                goto LABEL_140;
              }

              v25 = *(v26 + v13);
              *(v26 + v13) = *(v26 + v22);
              *(v26 + v22) = v25;
            }

            ++v24;
            v22 -= 8;
            v13 += 8;
          }

          while (v24 < v23);
        }
      }
    }

    v27 = a3[1];
    if (v6 >= v27)
    {
      goto LABEL_33;
    }

    if (__OFSUB__(v6, v8))
    {
      goto LABEL_125;
    }

    if (v6 - v8 >= v7)
    {
      goto LABEL_33;
    }

    if (__OFADD__(v8, v7))
    {
      goto LABEL_126;
    }

    v28 = &v7[v8] >= v27 ? a3[1] : &v7[v8];
    if (v28 < v8)
    {
      break;
    }

    if (v6 != v28)
    {
      v75 = *a3;
      v76 = *a3 + 8 * v6 - 8;
      v77 = v8 - v6;
LABEL_86:
      v78 = *(v75 + 8 * v6);
      v79 = v77;
      v80 = v76;
      while (1)
      {
        v81 = (v78 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_composedPosition);
        if (*(v78 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_composedPosition + 16))
        {
          goto LABEL_132;
        }

        v82 = (v78 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_peripheralPosition);
        if (*(v78 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_peripheralPosition + 16))
        {
          goto LABEL_133;
        }

        v83 = *v80;
        v84 = *v80 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_composedPosition;
        result = *(v84 + 16);
        if (result)
        {
          break;
        }

        result = *(v83 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_peripheralPosition + 16);
        if (result)
        {
          goto LABEL_131;
        }

        v86 = v81[1] - v82[1];
        v85 = (v83 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_peripheralPosition);
        if (v86 * v86 + (*v81 - *v82) * (*v81 - *v82) < (*(v84 + 8) - v85[1]) * (*(v84 + 8) - v85[1]) + (*v84 - *v85) * (*v84 - *v85))
        {
          if (!v75)
          {
            goto LABEL_134;
          }

          *v80 = v78;
          v80[1] = v83;
          --v80;
          if (!__CFADD__(v79++, 1))
          {
            continue;
          }
        }

        ++v6;
        v76 += 8;
        --v77;
        if (v6 == v28)
        {
          goto LABEL_34;
        }

        goto LABEL_86;
      }

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
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
LABEL_140:
      __break(1u);
      goto LABEL_141;
    }

LABEL_33:
    v28 = v6;
LABEL_34:
    if (v28 < v8)
    {
      goto LABEL_124;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v94 = v28;
    if ((result & 1) == 0)
    {
      result = sub_24A5E802C(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v30 = *(v9 + 2);
    v29 = *(v9 + 3);
    v31 = v30 + 1;
    if (v30 >= v29 >> 1)
    {
      result = sub_24A5E802C((v29 > 1), v30 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v31;
    v32 = &v9[16 * v30];
    *(v32 + 4) = v8;
    *(v32 + 5) = v94;
    v33 = *v93;
    if (!*v93)
    {
      goto LABEL_142;
    }

    if (v30)
    {
      while (1)
      {
        v34 = v31 - 1;
        if (v31 >= 4)
        {
          break;
        }

        if (v31 == 3)
        {
          v35 = *(v9 + 4);
          v36 = *(v9 + 5);
          v45 = __OFSUB__(v36, v35);
          v37 = v36 - v35;
          v38 = v45;
LABEL_54:
          if (v38)
          {
            goto LABEL_113;
          }

          v51 = &v9[16 * v31];
          v53 = *v51;
          v52 = *(v51 + 1);
          v54 = __OFSUB__(v52, v53);
          v55 = v52 - v53;
          v56 = v54;
          if (v54)
          {
            goto LABEL_116;
          }

          v57 = &v9[16 * v34 + 32];
          v59 = *v57;
          v58 = *(v57 + 1);
          v45 = __OFSUB__(v58, v59);
          v60 = v58 - v59;
          if (v45)
          {
            goto LABEL_119;
          }

          if (__OFADD__(v55, v60))
          {
            goto LABEL_120;
          }

          if (v55 + v60 >= v37)
          {
            if (v37 < v60)
            {
              v34 = v31 - 2;
            }

            goto LABEL_75;
          }

          goto LABEL_68;
        }

        v61 = &v9[16 * v31];
        v63 = *v61;
        v62 = *(v61 + 1);
        v45 = __OFSUB__(v62, v63);
        v55 = v62 - v63;
        v56 = v45;
LABEL_68:
        if (v56)
        {
          goto LABEL_115;
        }

        v64 = &v9[16 * v34];
        v66 = *(v64 + 4);
        v65 = *(v64 + 5);
        v45 = __OFSUB__(v65, v66);
        v67 = v65 - v66;
        if (v45)
        {
          goto LABEL_118;
        }

        if (v67 < v55)
        {
          goto LABEL_3;
        }

LABEL_75:
        v72 = v34 - 1;
        if (v34 - 1 >= v31)
        {
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
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (!*a3)
        {
          goto LABEL_139;
        }

        v73 = *&v9[16 * v72 + 32];
        v7 = *&v9[16 * v34 + 40];
        sub_24A5E7A18(*a3 + 8 * v73, (*a3 + 8 * *&v9[16 * v34 + 32]), (*a3 + 8 * v7), v33);
        if (v5)
        {
        }

        if (v7 < v73)
        {
          goto LABEL_109;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_24A5E8018(v9);
        }

        if (v72 >= *(v9 + 2))
        {
          goto LABEL_110;
        }

        v74 = &v9[16 * v72];
        *(v74 + 4) = v73;
        *(v74 + 5) = v7;
        v98 = v9;
        result = sub_24A5E7F8C(v34);
        v9 = v98;
        v31 = *(v98 + 2);
        if (v31 <= 1)
        {
          goto LABEL_3;
        }
      }

      v39 = &v9[16 * v31 + 32];
      v40 = *(v39 - 64);
      v41 = *(v39 - 56);
      v45 = __OFSUB__(v41, v40);
      v42 = v41 - v40;
      if (v45)
      {
        goto LABEL_111;
      }

      v44 = *(v39 - 48);
      v43 = *(v39 - 40);
      v45 = __OFSUB__(v43, v44);
      v37 = v43 - v44;
      v38 = v45;
      if (v45)
      {
        goto LABEL_112;
      }

      v46 = &v9[16 * v31];
      v48 = *v46;
      v47 = *(v46 + 1);
      v45 = __OFSUB__(v47, v48);
      v49 = v47 - v48;
      if (v45)
      {
        goto LABEL_114;
      }

      v45 = __OFADD__(v37, v49);
      v50 = v37 + v49;
      if (v45)
      {
        goto LABEL_117;
      }

      if (v50 >= v42)
      {
        v68 = &v9[16 * v34 + 32];
        v70 = *v68;
        v69 = *(v68 + 1);
        v45 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v45)
        {
          goto LABEL_121;
        }

        if (v37 < v71)
        {
          v34 = v31 - 2;
        }

        goto LABEL_75;
      }

      goto LABEL_54;
    }

LABEL_3:
    v8 = v94;
    v6 = a3[1];
    v7 = a4;
    if (v94 >= v6)
    {
      goto LABEL_97;
    }
  }

LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  result = sub_24A5E8018(v9);
  v9 = result;
LABEL_99:
  v98 = v9;
  v88 = *(v9 + 2);
  if (v88 >= 2)
  {
    while (*a3)
    {
      v89 = *&v9[16 * v88];
      v90 = *&v9[16 * v88 + 24];
      sub_24A5E7A18(*a3 + 8 * v89, (*a3 + 8 * *&v9[16 * v88 + 16]), (*a3 + 8 * v90), v7);
      if (v5)
      {
      }

      if (v90 < v89)
      {
        goto LABEL_122;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_24A5E8018(v9);
      }

      if (v88 - 2 >= *(v9 + 2))
      {
        goto LABEL_123;
      }

      v91 = &v9[16 * v88];
      *v91 = v89;
      *(v91 + 1) = v90;
      v98 = v9;
      result = sub_24A5E7F8C(v88 - 1);
      v9 = v98;
      v88 = *(v98 + 2);
      if (v88 <= 1)
      {
      }
    }

LABEL_141:
    __break(1u);
LABEL_142:
    __break(1u);
    goto LABEL_143;
  }
}

unint64_t sub_24A5E700C(unint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  v107 = result;
  v7 = a3[1];
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = MEMORY[0x277D84F90];
    while (1)
    {
      v10 = v8 + 1;
      if (v8 + 1 >= v7)
      {
        goto LABEL_24;
      }

      v11 = *a3;
      v12 = *a5;
      v13 = *(*a3 + 8 * v10) + *a5;
      if (*(v13 + 16))
      {
        goto LABEL_183;
      }

      v14 = *(v11 + 8 * v8) + v12;
      if (*(v14 + 16))
      {
        goto LABEL_184;
      }

      v15 = *(v14 + 8);
      v16 = *(v13 + 8);
      v17 = v8 + 2;
      v18 = 8 * v8;
      v19 = (v11 + 8 * v8 + 16);
      do
      {
        if (v7 == v17)
        {
          v10 = v7;
          if (v16 >= v15)
          {
            goto LABEL_24;
          }

          goto LABEL_15;
        }

        v20 = *v19 + v12;
        if (*(v20 + 16))
        {
          goto LABEL_178;
        }

        v21 = *(v19 - 1) + v12;
        if (*(v21 + 16))
        {
          goto LABEL_179;
        }

        ++v17;
        ++v19;
      }

      while (v16 < v15 != *(v20 + 8) >= *(v21 + 8));
      v10 = v17 - 1;
      if (v16 >= v15)
      {
        goto LABEL_24;
      }

LABEL_15:
      if (v10 < v8)
      {
        goto LABEL_166;
      }

      if (v8 < v10)
      {
        v22 = 8 * v10 - 8;
        v23 = v10;
        v24 = v8;
        do
        {
          if (v24 != --v23)
          {
            v26 = *a3;
            if (!*a3)
            {
              goto LABEL_180;
            }

            v25 = *(v26 + v18);
            *(v26 + v18) = *(v26 + v22);
            *(v26 + v22) = v25;
          }

          ++v24;
          v22 -= 8;
          v18 += 8;
        }

        while (v24 < v23);
        v7 = a3[1];
      }

LABEL_24:
      if (v10 < v7)
      {
        if (__OFSUB__(v10, v8))
        {
          goto LABEL_165;
        }

        if (v10 - v8 < a4)
        {
          if (__OFADD__(v8, a4))
          {
            goto LABEL_167;
          }

          if (v8 + a4 < v7)
          {
            v7 = v8 + a4;
          }

          if (v7 < v8)
          {
            goto LABEL_168;
          }

          if (v10 != v7)
          {
            v27 = *a3;
            v28 = *a3 + 8 * v10 - 8;
            v29 = v8 - v10;
            do
            {
              v30 = *(v27 + 8 * v10);
              v31 = v29;
              v32 = v28;
              do
              {
                v33 = v30 + *a5;
                if (*(v33 + 16))
                {
                  goto LABEL_174;
                }

                v34 = *v32;
                v35 = *v32 + *a5;
                if (*(v35 + 16))
                {
                  goto LABEL_173;
                }

                if (*(v33 + 8) >= *(v35 + 8))
                {
                  break;
                }

                if (!v27)
                {
                  goto LABEL_175;
                }

                *v32 = v30;
                v32[1] = v34;
                --v32;
              }

              while (!__CFADD__(v31++, 1));
              ++v10;
              v28 += 8;
              --v29;
            }

            while (v10 != v7);
            v10 = v7;
          }
        }
      }

      if (v10 < v8)
      {
        goto LABEL_162;
      }

      v109 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_24A5E802C(0, *(v9 + 2) + 1, 1, v9);
      }

      v38 = *(v9 + 2);
      v37 = *(v9 + 3);
      v39 = v38 + 1;
      if (v38 >= v37 >> 1)
      {
        v9 = sub_24A5E802C((v37 > 1), v38 + 1, 1, v9);
      }

      *(v9 + 2) = v39;
      v40 = &v9[16 * v38];
      *(v40 + 4) = v8;
      *(v40 + 5) = v109;
      result = *v107;
      if (!*v107)
      {
        goto LABEL_181;
      }

      if (v38)
      {
        break;
      }

LABEL_3:
      v8 = v109;
      v7 = a3[1];
      if (v109 >= v7)
      {
        goto LABEL_137;
      }
    }

    v116 = *v107;
    while (1)
    {
      v41 = v39 - 1;
      if (v39 >= 4)
      {
        break;
      }

      if (v39 == 3)
      {
        v42 = *(v9 + 4);
        v43 = *(v9 + 5);
        v52 = __OFSUB__(v43, v42);
        v44 = v43 - v42;
        v45 = v52;
LABEL_64:
        if (v45)
        {
          goto LABEL_153;
        }

        v58 = &v9[16 * v39];
        v60 = *v58;
        v59 = *(v58 + 1);
        v61 = __OFSUB__(v59, v60);
        v62 = v59 - v60;
        v63 = v61;
        if (v61)
        {
          goto LABEL_156;
        }

        v64 = &v9[16 * v41 + 32];
        v66 = *v64;
        v65 = *(v64 + 1);
        v52 = __OFSUB__(v65, v66);
        v67 = v65 - v66;
        if (v52)
        {
          goto LABEL_159;
        }

        if (__OFADD__(v62, v67))
        {
          goto LABEL_160;
        }

        if (v62 + v67 >= v44)
        {
          if (v44 < v67)
          {
            v41 = v39 - 2;
          }

          goto LABEL_85;
        }

        goto LABEL_78;
      }

      v68 = &v9[16 * v39];
      v70 = *v68;
      v69 = *(v68 + 1);
      v52 = __OFSUB__(v69, v70);
      v62 = v69 - v70;
      v63 = v52;
LABEL_78:
      if (v63)
      {
        goto LABEL_155;
      }

      v71 = &v9[16 * v41];
      v73 = *(v71 + 4);
      v72 = *(v71 + 5);
      v52 = __OFSUB__(v72, v73);
      v74 = v72 - v73;
      if (v52)
      {
        goto LABEL_158;
      }

      if (v74 < v62)
      {
        goto LABEL_3;
      }

LABEL_85:
      if (v41 - 1 >= v39)
      {
        __break(1u);
LABEL_149:
        __break(1u);
LABEL_150:
        __break(1u);
LABEL_151:
        __break(1u);
LABEL_152:
        __break(1u);
LABEL_153:
        __break(1u);
LABEL_154:
        __break(1u);
LABEL_155:
        __break(1u);
LABEL_156:
        __break(1u);
LABEL_157:
        __break(1u);
LABEL_158:
        __break(1u);
LABEL_159:
        __break(1u);
LABEL_160:
        __break(1u);
LABEL_161:
        __break(1u);
LABEL_162:
        __break(1u);
LABEL_163:
        __break(1u);
LABEL_164:
        __break(1u);
LABEL_165:
        __break(1u);
LABEL_166:
        __break(1u);
LABEL_167:
        __break(1u);
LABEL_168:
        __break(1u);
LABEL_169:
        __break(1u);
LABEL_170:
        __break(1u);
LABEL_171:
        __break(1u);
LABEL_172:
        __break(1u);
LABEL_173:
        __break(1u);
LABEL_174:
        __break(1u);
LABEL_175:
        __break(1u);
        goto LABEL_176;
      }

      v79 = *a3;
      if (!*a3)
      {
        __break(1u);
LABEL_178:
        __break(1u);
LABEL_179:
        __break(1u);
LABEL_180:
        __break(1u);
LABEL_181:
        __break(1u);
        goto LABEL_182;
      }

      v114 = v41;
      v115 = v9;
      v111 = v41 - 1;
      v80 = *&v9[16 * v41 + 16];
      v81 = *&v9[16 * v41 + 32];
      v112 = *&v9[16 * v41 + 40];
      v113 = v80;
      v82 = 8 * v80;
      v83 = (v79 + 8 * v80);
      v9 = (8 * v81);
      v84 = (v79 + 8 * v81);
      v85 = (v79 + 8 * v112);
      v5 = 8 * v81 - 8 * v80;
      v86 = 8 * v112 - 8 * v81;
      if (v5 >= v86)
      {
        if (v84 != result || v85 <= result)
        {
          memmove(result, (v79 + 8 * v81), 8 * v112 - 8 * v81);
          result = v116;
        }

        v87 = (result + v86);
        if (v86 < 1 || v9 <= v82)
        {
          v88 = result;
LABEL_126:
          v93 = v84;
        }

        else
        {
          do
          {
            v93 = v84 - 8;
            v85 -= 8;
            v94 = v87;
            v88 = v116;
            while (1)
            {
              v96 = *(v94 - 1);
              v94 -= 8;
              v95 = v96;
              v97 = v96 + *a5;
              if (*(v97 + 16))
              {
                goto LABEL_172;
              }

              v98 = *v93 + *a5;
              if (*(v98 + 16))
              {
                goto LABEL_171;
              }

              if (*(v97 + 8) < *(v98 + 8))
              {
                break;
              }

              if (v85 + 8 != v87)
              {
                *v85 = v95;
              }

              v85 -= 8;
              v87 = v94;
              if (v94 <= v116)
              {
                v87 = v94;
                goto LABEL_126;
              }
            }

            if (v85 + 8 != v84)
            {
              *v85 = *v93;
            }

            if (v87 <= v116)
            {
              break;
            }

            v84 -= 8;
          }

          while (v83 < v93);
        }
      }

      else
      {
        if (v83 != result || v84 <= result)
        {
          memmove(result, (v79 + 8 * v80), 8 * v81 - 8 * v80);
          result = v116;
        }

        v87 = (result + v5);
        if (v5 >= 1 && 8 * v112 > v9)
        {
          v88 = result;
          while (1)
          {
            v89 = *v84;
            v90 = *v84 + *a5;
            if (*(v90 + 16))
            {
              goto LABEL_169;
            }

            v91 = *v88 + *a5;
            if (*(v91 + 16))
            {
              goto LABEL_170;
            }

            if (*(v90 + 8) >= *(v91 + 8))
            {
              break;
            }

            v92 = v83 == v84;
            v84 += 8;
            if (!v92)
            {
              goto LABEL_101;
            }

LABEL_102:
            v83 += 8;
            if (v88 >= v87 || v84 >= v85)
            {
              goto LABEL_123;
            }
          }

          v89 = *v88;
          v92 = v83 == v88;
          v88 += 8;
          if (v92)
          {
            goto LABEL_102;
          }

LABEL_101:
          *v83 = v89;
          goto LABEL_102;
        }

        v88 = result;
LABEL_123:
        v93 = v83;
      }

      v99 = v87 - v88 + (v87 - v88 < 0 ? 7uLL : 0);
      if (v93 != v88 || v93 >= &v88[v99 & 0xFFFFFFFFFFFFFFF8])
      {
        memmove(v93, v88, 8 * (v99 >> 3));
      }

      v5 = v112;
      v100 = v115;
      if (v112 < v113)
      {
        goto LABEL_149;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v100 = sub_24A5E8018(v115);
      }

      if (v114 > *(v100 + 2))
      {
        goto LABEL_150;
      }

      v101 = &v100[16 * v111];
      *(v101 + 4) = v113;
      *(v101 + 5) = v112;
      sub_24A5E7F8C(v114);
      v9 = v100;
      v39 = *(v100 + 2);
      result = v116;
      if (v39 <= 1)
      {
        goto LABEL_3;
      }
    }

    v46 = &v9[16 * v39 + 32];
    v47 = *(v46 - 64);
    v48 = *(v46 - 56);
    v52 = __OFSUB__(v48, v47);
    v49 = v48 - v47;
    if (v52)
    {
      goto LABEL_151;
    }

    v51 = *(v46 - 48);
    v50 = *(v46 - 40);
    v52 = __OFSUB__(v50, v51);
    v44 = v50 - v51;
    v45 = v52;
    if (v52)
    {
      goto LABEL_152;
    }

    v53 = &v9[16 * v39];
    v55 = *v53;
    v54 = *(v53 + 1);
    v52 = __OFSUB__(v54, v55);
    v56 = v54 - v55;
    if (v52)
    {
      goto LABEL_154;
    }

    v52 = __OFADD__(v44, v56);
    v57 = v44 + v56;
    if (v52)
    {
      goto LABEL_157;
    }

    if (v57 >= v49)
    {
      v75 = &v9[16 * v41 + 32];
      v77 = *v75;
      v76 = *(v75 + 1);
      v52 = __OFSUB__(v76, v77);
      v78 = v76 - v77;
      if (v52)
      {
        goto LABEL_161;
      }

      if (v44 < v78)
      {
        v41 = v39 - 2;
      }

      goto LABEL_85;
    }

    goto LABEL_64;
  }

  v9 = MEMORY[0x277D84F90];
LABEL_137:
  v5 = *v107;
  if (*v107)
  {
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_176:
      result = sub_24A5E8018(v9);
      v9 = result;
    }

    v102 = *(v9 + 2);
    if (v102 < 2)
    {
    }

    while (*a3)
    {
      v103 = *&v9[16 * v102];
      v104 = *&v9[16 * v102 + 24];
      sub_24A5E7D38(*a3 + 8 * v103, (*a3 + 8 * *&v9[16 * v102 + 16]), (*a3 + 8 * v104), v5, a5);
      if (v108)
      {
      }

      if (v104 < v103)
      {
        goto LABEL_163;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_24A5E8018(v9);
      }

      if (v102 - 2 >= *(v9 + 2))
      {
        goto LABEL_164;
      }

      v105 = &v9[16 * v102];
      *v105 = v103;
      *(v105 + 1) = v104;
      result = sub_24A5E7F8C(v102 - 1);
      v102 = *(v9 + 2);
      if (v102 <= 1)
      {
      }
    }

LABEL_182:
    __break(1u);
LABEL_183:
    __break(1u);
LABEL_184:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_24A5E7814(double *__dst, double *__src, double *a3, double *a4)
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
    if (a4 != __dst || &__dst[2 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[2 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (v6[1] < v4[1])
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 2;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 2;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 2;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[2 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[2 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v5 -= 2;
    do
    {
      v17 = v5 + 2;
      if (*(v14 - 1) < *(v6 - 1))
      {
        v19 = v6 - 2;
        if (v17 != v6)
        {
          *v5 = *v19;
        }

        if (v14 <= v4 || (v6 -= 2, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v18 = v14 - 2;
      if (v17 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 2;
      v14 -= 2;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v20 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v20 & 0xFFFFFFFFFFFFFFF0)))
  {
    memmove(v6, v4, 16 * (v20 >> 4));
  }

  return 1;
}

uint64_t sub_24A5E7A18(uint64_t __dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = &__src[-__dst];
  v9 = &__src[-__dst + 7];
  if (&__src[-__dst] >= 0)
  {
    v9 = &__src[-__dst];
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || __dst + 8 * v10 <= a4)
    {
      __dst = memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 >= 8 && v6 < v5)
    {
      while (1)
      {
        v15 = *v6;
        v16 = *v6 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_composedPosition;
        if (*(v16 + 16))
        {
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
          goto LABEL_53;
        }

        v17 = (v15 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_peripheralPosition);
        if (*(v15 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_peripheralPosition + 16))
        {
          goto LABEL_51;
        }

        v18 = *v4 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_composedPosition;
        if (*(v18 + 16))
        {
          __break(1u);
LABEL_49:
          __break(1u);
          goto LABEL_50;
        }

        v19 = *v4 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_peripheralPosition;
        if (*(v19 + 16))
        {
          goto LABEL_49;
        }

        v20 = *(v16 + 8) - v17[1];
        if (v20 * v20 + (*v16 - *v17) * (*v16 - *v17) >= (*(v18 + 8) - *(v19 + 8)) * (*(v18 + 8) - *(v19 + 8)) + (*v18 - *v19) * (*v18 - *v19))
        {
          break;
        }

        v21 = v7 == v6;
        v6 += 8;
        if (!v21)
        {
          goto LABEL_20;
        }

LABEL_21:
        v7 += 8;
        if (v4 >= v14 || v6 >= v5)
        {
          goto LABEL_23;
        }
      }

      v15 = *v4;
      v21 = v7 == v4;
      v4 += 8;
      if (v21)
      {
        goto LABEL_21;
      }

LABEL_20:
      *v7 = v15;
      goto LABEL_21;
    }

LABEL_23:
    v6 = v7;
    goto LABEL_44;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    __dst = memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 < 8 || v6 <= v7)
  {
LABEL_44:
    v32 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
    if (v6 != v4 || v6 >= &v4[v32 & 0xFFFFFFFFFFFFFFF8])
    {
      memmove(v6, v4, 8 * (v32 >> 3));
    }

    return 1;
  }

LABEL_29:
  v22 = v6 - 8;
  v5 -= 8;
  v23 = v14;
  while (1)
  {
    v25 = *(v23 - 8);
    v23 -= 8;
    v24 = v25;
    v26 = (v25 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_composedPosition);
    if (*(v25 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_composedPosition + 16))
    {
      break;
    }

    v27 = (v24 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_peripheralPosition);
    if (*(v24 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_peripheralPosition + 16))
    {
      goto LABEL_55;
    }

    v28 = *v22;
    v29 = *v22 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_composedPosition;
    __dst = *(v29 + 16);
    if (__dst)
    {
      goto LABEL_52;
    }

    __dst = *(v28 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_peripheralPosition + 16);
    if (__dst)
    {
LABEL_53:
      __break(1u);
      break;
    }

    v31 = v26[1] - v27[1];
    v30 = (v28 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_peripheralPosition);
    if (v31 * v31 + (*v26 - *v27) * (*v26 - *v27) < (*(v29 + 8) - v30[1]) * (*(v29 + 8) - v30[1]) + (*v29 - *v30) * (*v29 - *v30))
    {
      if (v5 + 8 != v6)
      {
        *v5 = v28;
      }

      if (v14 <= v4 || (v6 -= 8, v22 <= v7))
      {
        v6 = v22;
        goto LABEL_44;
      }

      goto LABEL_29;
    }

    if (v5 + 8 != v14)
    {
      *v5 = v24;
    }

    v5 -= 8;
    v14 = v23;
    if (v23 <= v4)
    {
      v14 = v23;
      goto LABEL_44;
    }
  }

  __break(1u);
LABEL_55:
  __break(1u);
  return __dst;
}

uint64_t sub_24A5E7D38(uint64_t __dst, char *__src, char *a3, char *a4, void *a5)
{
  v6 = a4;
  v7 = a3;
  v8 = __src;
  v9 = __dst;
  v10 = &__src[-__dst];
  v11 = &__src[-__dst + 7];
  if (&__src[-__dst] >= 0)
  {
    v11 = &__src[-__dst];
  }

  v12 = v11 >> 3;
  v13 = a3 - __src;
  v14 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v14 = a3 - __src;
  }

  v15 = v14 >> 3;
  if (v12 < v14 >> 3)
  {
    if (a4 != __dst || __dst + 8 * v12 <= a4)
    {
      __dst = memmove(a4, __dst, 8 * v12);
    }

    v16 = &v6[8 * v12];
    if (v10 < 8)
    {
LABEL_10:
      v8 = v9;
LABEL_39:
      v27 = v16 - v6 + (v16 - v6 < 0 ? 7uLL : 0);
      if (v8 != v6 || v8 >= &v6[v27 & 0xFFFFFFFFFFFFFFF8])
      {
        memmove(v8, v6, 8 * (v27 >> 3));
      }

      return 1;
    }

    while (1)
    {
      if (v8 >= v7)
      {
        goto LABEL_10;
      }

      v17 = *v8;
      v19 = *v8 + *a5;
      if (*(v19 + 16))
      {
        __break(1u);
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      v20 = *v6 + *a5;
      if (*(v20 + 16))
      {
        goto LABEL_44;
      }

      if (*(v19 + 8) < *(v20 + 8))
      {
        break;
      }

      v17 = *v6;
      v18 = v9 == v6;
      v6 += 8;
      if (!v18)
      {
        goto LABEL_12;
      }

LABEL_13:
      v9 += 8;
      if (v6 >= v16)
      {
        goto LABEL_10;
      }
    }

    v18 = v9 == v8;
    v8 += 8;
    if (v18)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v9 = v17;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v15] <= a4)
  {
    __dst = memmove(a4, __src, 8 * v15);
  }

  v16 = &v6[8 * v15];
  if (v13 < 8 || v8 <= v9)
  {
    goto LABEL_39;
  }

LABEL_26:
  v21 = v8 - 8;
  v7 -= 8;
  v22 = v16;
  while (1)
  {
    v24 = *(v22 - 8);
    v22 -= 8;
    v23 = v24;
    v25 = v24 + *a5;
    if (*(v25 + 16))
    {
      break;
    }

    v26 = *v21 + *a5;
    if (*(v26 + 16))
    {
      goto LABEL_46;
    }

    if (*(v25 + 8) < *(v26 + 8))
    {
      if (v7 + 8 != v8)
      {
        *v7 = *v21;
      }

      if (v16 <= v6 || (v8 -= 8, v21 <= v9))
      {
        v8 = v21;
        goto LABEL_39;
      }

      goto LABEL_26;
    }

    if (v7 + 8 != v16)
    {
      *v7 = v23;
    }

    v7 -= 8;
    v16 = v22;
    if (v22 <= v6)
    {
      v16 = v22;
      goto LABEL_39;
    }
  }

LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return __dst;
}

uint64_t sub_24A5E7F8C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_24A5E8018(v3);
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

char *sub_24A5E802C(char *result, int64_t a2, char a3, char *a4)
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
    sub_24A508FA4(&qword_27EF51A90, &qword_24A63C0C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

void sub_24A5E8130()
{
  v1 = *v0;
  v2 = *(*v0 + 2);
  v3 = v2 - 2;
  if (v2 >= 2)
  {
    v4 = 0;
    while (1)
    {
      v13 = 0;
      MEMORY[0x24C21BC00](&v13, 8);
      v6 = (v13 * v2) >> 64;
      if (v2 > v13 * v2)
      {
        v7 = -v2 % v2;
        if (v7 > v13 * v2)
        {
          do
          {
            v13 = 0;
            MEMORY[0x24C21BC00](&v13, 8);
          }

          while (v7 > v13 * v2);
          v6 = (v13 * v2) >> 64;
        }
      }

      v8 = v4 + v6;
      if (__OFADD__(v4, v6))
      {
        break;
      }

      if (v4 != v8)
      {
        v9 = *(v1 + 2);
        if (v4 >= v9)
        {
          goto LABEL_19;
        }

        if (v8 >= v9)
        {
          goto LABEL_20;
        }

        v11 = *&v1[16 * v4 + 32];
        v12 = *&v1[16 * v8 + 32];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v1 = sub_24A5E882C(v1);
        }

        v10 = *(v1 + 2);
        if (v4 >= v10)
        {
          goto LABEL_21;
        }

        *&v1[16 * v4 + 32] = v12;
        if (v8 >= v10)
        {
          goto LABEL_22;
        }

        *&v1[16 * v8 + 32] = v11;
        *v0 = v1;
      }

      --v2;
      if (v4++ == v3)
      {
        return;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }
}

void sub_24A5E827C()
{
  v1 = *(*v0 + 16);
  v2 = v1 - 2;
  if (v1 >= 2)
  {
    v3 = 0;
    while (1)
    {
      v20 = 0;
      MEMORY[0x24C21BC00](&v20, 8);
      v5 = (v20 * v1) >> 64;
      if (v1 > v20 * v1)
      {
        v6 = -v1 % v1;
        if (v6 > v20 * v1)
        {
          do
          {
            v20 = 0;
            MEMORY[0x24C21BC00](&v20, 8);
          }

          while (v6 > v20 * v1);
          v5 = (v20 * v1) >> 64;
        }
      }

      v7 = v3 + v5;
      if (__OFADD__(v3, v5))
      {
        break;
      }

      if (v3 != v7)
      {
        v8 = *v0;
        v9 = *(*v0 + 16);
        if (v3 >= v9)
        {
          goto LABEL_21;
        }

        if (v7 >= v9)
        {
          goto LABEL_22;
        }

        v10 = *(v8 + 32 + 8 * v7);
        v11 = *(v8 + 32 + 8 * v3);
        v12 = v10;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v0 = v8;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v8 = sub_24A5E8840(v8);
          *v0 = v8;
        }

        if (v3 >= *(v8 + 16))
        {
          goto LABEL_23;
        }

        v14 = v8 + 8 * v3;
        v15 = *(v14 + 32);
        *(v14 + 32) = v12;

        sub_24A62F3F4();
        v16 = *v0;
        v17 = swift_isUniquelyReferenced_nonNull_native();
        *v0 = v16;
        if ((v17 & 1) == 0)
        {
          v16 = sub_24A5E8840(v16);
          *v0 = v16;
        }

        if (v7 >= *(v16 + 16))
        {
          goto LABEL_24;
        }

        v18 = v16 + 8 * v7;
        v19 = *(v18 + 32);
        *(v18 + 32) = v11;

        sub_24A62F3F4();
      }

      --v1;
      if (v3++ == v2)
      {
        return;
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
  }
}

uint64_t sub_24A5E8420(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = sub_24A62F464();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v5 = sub_24A5E5150(v3, 0);
  sub_24A5E8654((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_24A5E84B4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_24A62F464();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_24A62F464();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_24A5E99F8(&qword_27EF51AB0, &qword_27EF51AA8, &qword_24A63B070);
          for (i = 0; i != v6; ++i)
          {
            sub_24A508FA4(&qword_27EF51AA8, &qword_24A63B070);
            v9 = sub_24A6072A4(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_24A50D7EC(0, &qword_27EF4F948, 0x277CDCF58);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_24A5E8654(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_24A62F464();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_24A62F464();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_24A5E99F8(&qword_27EF51AA0, &qword_27EF51A98, &qword_24A63B060);
          for (i = 0; i != v6; ++i)
          {
            sub_24A508FA4(&qword_27EF51A98, &qword_24A63B060);
            v9 = sub_24A607324(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for FMPFSKPatternFragmentNode();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_24A5E8854(char *a1, __int128 *a2, void *a3, char *a4, char a5, char *a6, char a7, uint64_t a8, double a9, double a10, double cosval, double a12, double a13, double a14)
{
  LOBYTE(v17) = a7;
  LOBYTE(v19) = a5;
  v178 = type metadata accessor for FMPFSKNode();
  result = [objc_allocWithZone(v178) init];
  v182 = result;
  v218 = MEMORY[0x277D84F90];
  v29 = (a1 - 1);
  if (__OFSUB__(a1, 1))
  {
    goto LABEL_85;
  }

  v30 = &a1[-(a2 & 1)];
  v181 = v14;
  v176 = v30;
  v177 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_experienceType;
  if (*(v14 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_experienceType) != 1)
  {
    v15 = &xmmword_27EF5C3E8 + 1;
    a1 = &xmmword_27EF5C408 + 8;
    a2 = &xmmword_27EF5C408;
    v16 = &xmmword_27EF5C3F8 + 8;
    if (qword_27EF4EA20 != -1)
    {
      goto LABEL_87;
    }

LABEL_6:
    if ((v30 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

LABEL_88:
    __break(1u);
    return result;
  }

  v15 = &xmmword_27EF5C4B8 + 1;
  a1 = &xmmword_27EF5C4D8 + 8;
  a2 = &xmmword_27EF5C4D8;
  v16 = &xmmword_27EF5C4C8 + 8;
  if (qword_27EF4EA28 == -1)
  {
    goto LABEL_6;
  }

  while (1)
  {
LABEL_87:
    result = swift_once();
    v30 = v176;
    if ((v176 & 0x8000000000000000) != 0)
    {
      goto LABEL_88;
    }

LABEL_7:
    if (!v30)
    {
      return v182;
    }

    v174 = *v16 * 0.5;
    v175 = *v16 * -0.5;
    if (v175 <= v174)
    {
      v172 = *a2;
      v173 = *a1;
      v171 = *v15;
      a2 = 0x7672754364617571;
      v164 = (a12 - a10) / v29;
      v165 = (cosval - a9) / v29;
      type metadata accessor for FMPFSKSpriteNode();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v166 = ObjCClassFromMetadata;
      v15 = 0;
      if (v19)
      {
        v32 = 0;
      }

      else
      {
        v32 = a4;
      }

      v170 = v32;
      if (v17)
      {
        v33 = 0;
      }

      else
      {
        v33 = a6;
      }

      v169 = v33;
      __asm { FMOV            V0.2D, #0.5 }

      v168 = _Q0;
      v39 = 1;
      v29 = v181;
      v167 = a14;
      while (1)
      {
        v190 = a9;
        a1 = v39;
        v40 = sub_24A5E5268(ObjCClassFromMetadata, v175, v174);
        v42 = v41;
        a12 = 3.14159265;
        sub_24A5E5268(v40, 0.0, 3.14159265);
        v44 = v43 * 0.25;
        v45 = sub_24A5E51DC(0x7FFFFFFFFFFFFFFFuLL);
        v46 = 4.0;
        if ((v45 & 1) == 0)
        {
          v46 = -4.0;
        }

        v47 = __sincos_stret(v44 * v46);
        cosval = v47.__cosval;
        v48 = sub_24A5E51DC(0x20000000000001uLL);
        v49 = (vcvtd_n_f64_u64(v48, 0x35uLL) * 100.0 + 0.0) / 100.0;
        a9 = v48 == 0x20000000000000 ? 1.0 : v49;
        sub_24A5E5268(v48, 0.0, 3.14159265);
        sub_24A5E51DC(0x7FFFFFFFFFFFFFFFuLL);
        if (__OFADD__(a8, v15))
        {
          break;
        }

        v205 = v15 + a8;
        v206 = 0x746E656D67617246;
        v207 = 0xE900000000000023;
        v50 = sub_24A62F614();
        MEMORY[0x24C21A5D0](v50);

        v51 = sub_24A5F1D08();
        v16 = *(v29 + v177);
        v191 = type metadata accessor for FMPFSKPatternFragmentNode();
        v19 = objc_allocWithZone(v191);
        v52 = OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_gimbalNode;
        v53 = objc_allocWithZone(v178);
        v188 = v51;
        *(v19 + v52) = [v53 init];
        *(v19 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_disturbScatterRandomOffsetFrameCounter) = 0.0;
        v54 = v19 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_initialPeripheralPosition;
        *v54 = 0;
        *(v54 + 1) = 0;
        v54[16] = 1;
        v55 = v19 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_initialExplodedPosition;
        *v55 = 0;
        *(v55 + 1) = 0;
        v55[16] = 1;
        v56 = v19 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_curveLength;
        *v56 = 0;
        v56[8] = 1;
        v57 = v19 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_arcLength;
        *v57 = 0;
        v57[8] = 1;
        *(v19 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_perimeterRotateOnceAction) = 0.0;
        v58 = v19 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_intermediatePosition;
        *v58 = 0;
        *(v58 + 1) = 0;
        v58[16] = 1;
        v59 = v19 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_relativeHeading;
        *v59 = 0;
        v59[8] = 1;
        v60 = OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_disturbanceScatterOffsetXSpring;
        *(v19 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_disturbanceScatterOffsetXSpring) = 0.0;
        v61 = OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_disturbanceScatterOffsetYSpring;
        *(v19 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_disturbanceScatterOffsetYSpring) = 0.0;
        v62 = OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_disturbanceHomingFactorSpring;
        *(v19 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_disturbanceHomingFactorSpring) = 0.0;
        v63 = v19 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_explodedPosition;
        *v63 = 0;
        *(v63 + 1) = 0;
        v63[16] = 1;
        v64 = v19 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_peripheralPosition;
        *v64 = 0;
        *(v64 + 1) = 0;
        v64[16] = 1;
        v65 = v19 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_composedPosition;
        *v65 = 0;
        *(v65 + 1) = 0;
        v65[16] = 1;
        *(v19 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_useAlternateScaling) = 0;
        v66 = v19 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_conformationTimingFunction;
        *v66 = 0u;
        *(v66 + 1) = 0u;
        v66[32] = 1;
        v15 = (v19 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_conformedToExplodedFactor);
        *v15 = 0.0;
        *(v15 + 8) = 1;
        a4 = v19 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_conformationFactor;
        *a4 = 0;
        a4[8] = 1;
        v67 = v19 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_scalingFactor;
        *v67 = 0;
        v67[8] = 1;
        *(v19 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_shouldApplyDisturbanceScatterOffset) = 1;
        v17 = v19 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_disturbanceScatterOffset;
        *v17 = 0;
        *(v17 + 1) = 0;
        v17[16] = 1;
        v68 = v19 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_presentedDisturbanceScatterOffset;
        *v68 = 0;
        *(v68 + 1) = 0;
        v68[16] = 1;
        *(v19 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_shouldApplyDisturbanceHomingFactor) = 1;
        a6 = v19 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_disturbanceHomingFactor;
        *a6 = 0;
        a6[8] = 1;
        v69 = v19 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_presentedDisturbanceHomingFactor;
        *v69 = 0;
        v69[8] = 1;
        v70 = v19 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_trackOffset;
        *v70 = 0;
        v70[8] = 1;
        *(v19 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_presentedAbsoluteHeading) = 0.0;
        *(v19 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_experienceType) = v16;
        v185 = v62;
        v186 = a1;
        v183 = v60;
        v184 = v61;
        if (v16 == 1)
        {
          v71 = 0;
          v72 = 0;
          v73 = 0;
          v74 = 0;
          v75 = 0;
          v76 = 0;
          v77 = 0;
          v78 = 1;
          LOBYTE(v206) = 1;
          LOBYTE(v205) = 1;
          v204 = 1;
          v203 = 1;
          v202 = 1;
          v201 = 0;
          v200 = 0;
          v199 = 0;
          v198 = 0;
          v197 = 0;
          v196 = 0;
          v79 = 0x4010000000000000;
          v80 = 0;
          v81 = 0x3FF8000000000000;
          v82 = 0x3FF0000000000000;
          v83 = 0;
          v84 = 0x4004000000000000;
          v85 = 0.0;
          v86 = 0.6;
        }

        else
        {
          v78 = 0;
          v84 = 0;
          v82 = 0;
          v81 = 0;
          v79 = 0;
          LOBYTE(v206) = 0;
          LOBYTE(v205) = 0;
          v204 = 0;
          v203 = 0;
          v202 = 0;
          v75 = 1;
          v201 = 1;
          v200 = 1;
          v199 = 1;
          v198 = 1;
          v197 = 1;
          v196 = 1;
          v74 = 0x3FF0000000000000;
          v80 = 1;
          v73 = 0x3FE6666666666666;
          v86 = 1.0;
          v85 = 0.75;
          v71 = 0x3FB999999999999ALL;
          v83 = 1;
          v72 = 30;
          v76 = 1;
          v77 = 1;
        }

        v87 = v196;
        v189 = a10;
        a1 = v19 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_style;
        *a1 = xmmword_24A63B030;
        *(a1 + 1) = xmmword_24A63B040;
        *(a1 + 2) = v168;
        *(a1 + 6) = 16;
        *(a1 + 7) = v85;
        *(a1 + 4) = xmmword_24A639330;
        *(a1 + 5) = xmmword_24A63B050;
        *(a1 + 12) = v86;
        *(a1 + 13) = 0x3FF0000000000000;
        *(a1 + 14) = v71;
        a1[120] = v78;
        *(a1 + 121) = *v217;
        *(a1 + 31) = *&v217[3];
        *(a1 + 16) = v72;
        a1[136] = v78;
        *(a1 + 35) = *&v216[3];
        *(a1 + 137) = *v216;
        *(a1 + 18) = 0;
        a1[152] = v78;
        *(a1 + 39) = *&v215[3];
        *(a1 + 153) = *v215;
        *(a1 + 20) = v73;
        a1[168] = v78;
        *(a1 + 43) = *&v214[3];
        *(a1 + 169) = *v214;
        *(a1 + 22) = v74;
        a1[184] = v78;
        v88 = *v213;
        *(a1 + 47) = *&v213[3];
        *(a1 + 185) = v88;
        *(a1 + 24) = v82;
        a1[200] = v75;
        v89 = *v212;
        *(a1 + 51) = *&v212[3];
        *(a1 + 201) = v89;
        *(a1 + 26) = v82;
        a1[216] = v76;
        v90 = *v211;
        *(a1 + 55) = *&v211[3];
        *(a1 + 217) = v90;
        *(a1 + 28) = v84;
        a1[232] = v77;
        v91 = *v210;
        *(a1 + 59) = *&v210[3];
        *(a1 + 233) = v91;
        *(a1 + 30) = v82;
        a1[248] = v80;
        v92 = *v209;
        *(a1 + 63) = *&v209[3];
        *(a1 + 249) = v92;
        *(a1 + 32) = v81;
        a1[264] = v83;
        v93 = *v208;
        *(a1 + 67) = *&v208[3];
        *(a1 + 265) = v93;
        *(a1 + 34) = 0x3FE0000000000000;
        *(a1 + 35) = v79;
        v94 = a3;
        a1[288] = v87;
        if (!a3)
        {
          v94 = [objc_opt_self() whiteColor];
        }

        a12 = (1.0 - v42) * a14;
        v95 = 1.0 - a9;
        v96 = a13 - v171 * ((1.0 - a9) * a13);
        *(v19 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_renderingColor) = v94;
        *(v19 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_explodedDiskRadius) = v96;
        *(v19 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_peripheralDiskRadius) = a14;
        *(v19 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_innerPeripheralDiskRadius) = a12;
        if (v16 == 1)
        {
          v29 = qword_27EF4EA28;
          v97 = a3;
          v98 = &xmmword_27EF5C4A8 + 8;
          if (v29 != -1)
          {
            swift_once();
            v98 = &xmmword_27EF5C4A8 + 8;
          }
        }

        else
        {
          v29 = qword_27EF4EA20;
          v99 = a3;
          v98 = &xmmword_27EF5C3D8 + 8;
          if (v29 != -1)
          {
            swift_once();
            v98 = &xmmword_27EF5C3D8 + 8;
          }
        }

        *(v19 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_travelingStyle) = *v98;
        *v15 = v170;
        *(v15 + 8) = 0;
        *a4 = v169;
        a4[8] = 0;
        *v67 = 0;
        v67[8] = 0;
        *a6 = 0;
        a6[8] = 0;
        *(v19 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_minScaleFactor) = v172;
        *(v19 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_maxScaleFactor) = v173;
        v100 = *(a1 + 8);
        v101 = *(a1 + 9);
        v102 = v100 * (1.0 - v101);
        if (v102 < 0.0)
        {
          v102 = 0.0;
        }

        *(v19 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_conformedBrightness) = v95 * v102 + a9 * fmin(v100 * (v101 + 1.0), 1.0);
        v103 = *(a1 + 10);
        v104 = *(a1 + 11);
        v105 = v103 * (1.0 - v104);
        if (v105 < 0.0)
        {
          v105 = 0.0;
        }

        *(v19 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_nonConformedBrightness) = v95 * v105 + a9 * fmin(v103 * (v104 + 1.0), 1.0);
        a10 = fmax(*(a1 + 2) / 200.0 * a14, 1.0);
        v106 = a10 + a10;
        if (COERCE__INT64(fabs(a10 + a10)) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_83;
        }

        v107 = sub_24A5E51DC(0x20000000000001uLL);
        v108 = v106 * vcvtd_n_f64_u64(v107, 0x35uLL) - a10;
        if (v107 == 0x20000000000000)
        {
          v109 = a10;
        }

        else
        {
          v109 = v108;
        }

        v110 = sub_24A5E51DC(0x20000000000001uLL);
        v111 = v106 * vcvtd_n_f64_u64(v110, 0x35uLL) - a10;
        if (v110 == 0x20000000000000)
        {
          v111 = a10;
        }

        v112 = (v19 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_initialDisturbanceScatterOffset);
        *v112 = v109;
        v112[1] = v111;
        *v17 = v109;
        *(v17 + 1) = v111;
        v17[16] = 0;
        v113 = v189;
        if ((a1[136] & 1) == 0)
        {
          v114 = sub_24A5B1F94(*&v109, 0, 0x3FE0000000000000, 0);
          v115 = *(v19 + v183);
          *(v19 + v183) = v114;

          if (v17[16])
          {
            v116 = 0;
          }

          else
          {
            v116 = *(v17 + 1);
          }

          v117 = sub_24A5B1F94(v116, v17[16], 0x3FE0000000000000, 0);
          v118 = *(v19 + v184);
          *(v19 + v184) = v117;

          v119 = sub_24A5B1B3C(*a6, a6[8], 0x3F847AE147AE147BLL, 0, 0, 1);
          v120 = *(v19 + v185);
          *(v19 + v185) = v119;
        }

        v121 = a12 * v47.__cosval;
        a12 = a12 * v47.__sinval;
        v122 = v47.__sinval * v96;
        v123 = v47.__cosval * v96;
        *(v19 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_headingSpring) = sub_24A5B1D38(0, 0, *&a9, 0, 0x3FE0000000000000, 0);
        *(v19 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_noiseSubSpring) = sub_24A5B1B2C(0, 0, 0, 1);
        v124 = [objc_allocWithZone(v166) init];
        v125 = OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_dotNode;
        *(v19 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_dotNode) = v124;
        v17 = v188;
        [v124 setTexture_];
        v126 = *(v19 + v125);
        [v188 size];
        [v126 setSize_];

        v195.receiver = v19;
        v195.super_class = v191;
        v127 = objc_msgSendSuper2(&v195, sel_init);
        v128 = sub_24A62EBE4();

        [v127 setName_];

        v129 = OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_gimbalNode;
        [v127 addChild_];
        v130 = *&v127[v129];
        v131 = OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_dotNode;
        [v130 addChild_];
        [*&v127[v131] setColorBlendFactor_];
        [*&v127[v131] setPosition_];
        v132 = &v127[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_explodedPosition];
        *v132 = v123;
        v132[1] = v122;
        *(v132 + 16) = 0;
        v19 = &v127[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_peripheralPosition];
        *v19 = v121;
        v19[1] = a12;
        *(v19 + 16) = 0;
        v133 = &v127[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_composedPosition];
        v134 = v190;
        *v133 = v190;
        v133[1] = v189;
        *(v133 + 16) = 0;
        v135 = &v127[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_initialPeripheralPosition];
        *v135 = v121;
        v135[1] = a12;
        *(v135 + 16) = 0;
        v136 = &v127[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_initialExplodedPosition];
        *v136 = v123;
        v136[1] = v122;
        *(v136 + 16) = 0;
        *&v137 = COERCE_DOUBLE(sub_24A5A3FD0());
        if (v139)
        {
          v140 = v121;
        }

        else
        {
          v140 = *&v137;
        }

        if (v139)
        {
          v141 = a12;
        }

        else
        {
          v141 = v138;
        }

        a1 = &v127[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_intermediatePosition];
        *a1 = v140;
        *(a1 + 1) = v141;
        a1[16] = 0;
        v16 = *(v133 + 16);
        v142 = 0.0;
        if ((v16 & 1) == 0)
        {
          cosval = *v133;
          a12 = v133[1];
          v193 = v141;
          v194 = v140;
          *&v143 = COERCE_DOUBLE(sub_24A5A4124(*v133));
          v145 = v144;
          v146 = OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_travelingStyle;
          v192 = *&v143;
          v148 = v147;
          v149 = a12;
          v150 = cosval;
          v151 = 1;
          while (1)
          {
            v154 = vcvtd_n_f64_u64(v151, 4uLL);
            v155 = 1.0 - v154;
            if (v127[v146])
            {
              v156 = sub_24A62F634();

              if (v156)
              {
                goto LABEL_63;
              }

              if (!v127[v146] || v127[v146] != 1)
              {
                v157 = sub_24A62F634();

                if ((v157 & 1) == 0)
                {
                  goto LABEL_55;
                }

                goto LABEL_63;
              }
            }

LABEL_63:
            if ((v145 & 1) == 0)
            {
              v152 = v155 * (v154 * v192 + v150 * v155) + v154 * (v154 * v194 + v155 * v192);
              v153 = v155 * (v154 * v148 + v149 * v155) + v154 * (v154 * v193 + v155 * v148);
              goto LABEL_56;
            }

LABEL_55:
            v152 = v154 * v194 + v150 * v155;
            v153 = v154 * v193 + v149 * v155;
LABEL_56:
            v142 = v142 + sqrt((v152 - cosval) * (v152 - cosval) + (v153 - a12) * (v153 - a12));
            ++v151;
            a12 = v153;
            cosval = v152;
            if (v151 == 17)
            {
              v113 = v189;
              v134 = v190;
              v17 = v188;
              break;
            }
          }
        }

        v158 = &v127[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_curveLength];
        *v158 = v142;
        *(v158 + 8) = v16;
        v159 = sub_24A5A5880(*a1, *(a1 + 1), a1[16], *v19, *(v19 + 1), *(v19 + 16));
        v160 = &v127[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_arcLength];
        *v160 = v159;
        v160[8] = v161 & 1;
        a4 = &v127[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_conformationFactor];
        if ((v127[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_conformationFactor + 8] & 1) == 0)
        {
          sub_24A5DF354(*a4);
        }

        v29 = v181;
        a14 = v167;
        v15 = v186;
        if ((v127[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_scalingFactor + 8] & 1) == 0)
        {
          sub_24A5DF5EC(*&v127[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_scalingFactor]);
        }

        if ((v127[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_disturbanceScatterOffset + 16] & 1) == 0)
        {
          v162 = &v127[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_presentedDisturbanceScatterOffset];
          *v162 = *&v127[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_disturbanceScatterOffset];
          v162[16] = 0;
          if ((a4[8] & 1) == 0)
          {
            sub_24A5DF354(*a4);
          }
        }

        if ((v127[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_disturbanceHomingFactor + 8] & 1) == 0)
        {
          v163 = &v127[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_presentedDisturbanceHomingFactor];
          *v163 = *&v127[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_disturbanceHomingFactor];
          v163[8] = 0;
        }

        [v127 setZPosition_];

        [v182 addChild_];
        a6 = v127;
        MEMORY[0x24C21A660]();
        if (*((v218 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v218 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          a4 = *((v218 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_24A62ED84();
        }

        sub_24A62EDA4();

        if (v186 == v176)
        {
          return v182;
        }

        a10 = v164 + v113;
        a9 = v165 + v134;
        v39 = v186 + 1;
        if (__OFADD__(v186, 1))
        {
          goto LABEL_84;
        }
      }

      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
    }

    __break(1u);
  }
}

uint64_t sub_24A5E99F8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_24A50E1E0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24A5E9A4C(uint64_t a1, void *a2, uint64_t a3, char a4, uint64_t a5, double a6, double a7, double a8, double a9, double a10)
{
  v248 = type metadata accessor for FMPFSKNode();
  v246 = [objc_allocWithZone(v248) init];
  v19 = MEMORY[0x277D84F90];
  v295 = MEMORY[0x277D84F90];
  v249 = v10;
  v244 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_experienceType;
  if (*(v10 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_experienceType) == 1)
  {
    v20 = &xmmword_27EF5C4C8 + 8;
    v21 = &xmmword_27EF5C4D8 + 8;
    v22 = &xmmword_27EF5C4D8;
    if (qword_27EF4EA28 == -1)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v20 = &xmmword_27EF5C3F8 + 8;
    v21 = &xmmword_27EF5C408 + 8;
    v22 = &xmmword_27EF5C408;
    if (qword_27EF4EA20 == -1)
    {
      goto LABEL_5;
    }
  }

  while (1)
  {
    swift_once();
LABEL_5:
    if (a1 <= 1)
    {
      v23 = 1;
    }

    else
    {
      v23 = a1;
    }

    if (__OFSUB__(a1, 1))
    {
      goto LABEL_149;
    }

    v240 = *v22;
    v241 = *v21;
    v24 = *v20;
    v25 = (a1 - 1);
    v229 = [objc_allocWithZone(v248) init];
    v26 = v249 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_config;
    v228 = 0.0;
    if (*(v249 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_config + 64) & 1) != 0 || (*(v26 + 80))
    {
      v239 = 1;
      if (a1 < 0)
      {
        goto LABEL_141;
      }
    }

    else
    {
      v239 = 0;
      v228 = -(*(v26 + 72) - *(v26 + 56)) / v25;
      if (a1 < 0)
      {
LABEL_141:
        __break(1u);
        goto LABEL_142;
      }
    }

    v230 = v249 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_config;
    if (a1)
    {
      v27 = a9 - a7;
      a9 = 6.28318531 / v23;
      a8 = (a8 - a6) / v25;
      v28 = v27 / v25;
      v29 = sub_24A617A30(0, 1, 1, MEMORY[0x277D84F90]);
      v30 = *(v29 + 2);
      v31 = 16 * v30;
      v32 = a1;
      do
      {
        v33 = *(v29 + 3);
        v34 = v30 + 1;
        if (v30 >= v33 >> 1)
        {
          v29 = sub_24A617A30((v33 > 1), v30 + 1, 1, v29);
        }

        *(v29 + 2) = v34;
        v35 = &v29[v31];
        *(v35 + 4) = a6;
        *(v35 + 5) = a7;
        a6 = a8 + a6;
        a7 = v28 + a7;
        v31 += 16;
        v30 = v34;
        --v32;
      }

      while (v32);
      v247 = v29;
      v36 = sub_24A617A30(0, 1, 1, MEMORY[0x277D84F90]);
      v37 = *(v36 + 2);
      v38 = 16 * v37;
      a7 = -2.22044605e-16;
      do
      {
        v41 = __sincos_stret(a7);
        cosval = v41.__cosval;
        sinval = v41.__sinval;
        v42 = *(v36 + 3);
        v22 = (v37 + 1);
        if (v37 >= v42 >> 1)
        {
          a6 = v41.__sinval;
          a8 = v41.__cosval;
          v44 = sub_24A617A30((v42 > 1), v37 + 1, 1, v36);
          cosval = v41.__cosval;
          sinval = v41.__sinval;
          v36 = v44;
        }

        *(v36 + 2) = v22;
        v43 = &v36[v38];
        *(v43 + 4) = cosval * a10;
        *(v43 + 5) = sinval * a10;
        v294 = v36;
        a7 = a7 - a9;
        v38 += 16;
        ++v37;
        --a1;
      }

      while (a1);
    }

    else
    {
      v294 = v19;
      v247 = v19;
    }

    sub_24A5E23D0(&v294, sub_24A5E5DC8);
    v20 = v294;
    v21 = *(v294 + 2);
    if (v21)
    {
      v45 = v294 + 32;
      v46 = MEMORY[0x277D84F90];
      v22 = (v294 + 32);
      v47 = *(v294 + 2);
      do
      {
        v51 = *v22;
        if (*(v22 + 1) < 0.0)
        {
          v262 = *v22;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v272 = v46;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_24A58D9B8(0, *(v46 + 16) + 1, 1);
            v46 = v272;
          }

          v49 = *(v46 + 16);
          v48 = *(v46 + 24);
          v50 = v262;
          if (v49 >= v48 >> 1)
          {
            sub_24A58D9B8((v48 > 1), v49 + 1, 1);
            v50 = v262;
            v46 = v272;
          }

          *(v46 + 16) = v49 + 1;
          *(v46 + 16 * v49 + 32) = v50;
        }

        ++v22;
        --v47;
      }

      while (v47);
      *&v272 = v46;
      sub_24A5E8130();
      a1 = v272;
      v19 = MEMORY[0x277D84F90];
      do
      {
        v56 = *v45;
        if (*(v45 + 1) >= 0.0)
        {
          v263 = *v45;
          v57 = swift_isUniquelyReferenced_nonNull_native();
          *&v272 = v19;
          if ((v57 & 1) == 0)
          {
            sub_24A58D9B8(0, *(v19 + 2) + 1, 1);
            v19 = v272;
          }

          v54 = *(v19 + 2);
          v53 = *(v19 + 3);
          v22 = (v54 + 1);
          v55 = v263;
          if (v54 >= v53 >> 1)
          {
            sub_24A58D9B8((v53 > 1), v54 + 1, 1);
            v55 = v263;
            v19 = v272;
          }

          *(v19 + 2) = v22;
          *&v19[16 * v54 + 32] = v55;
        }

        v45 += 16;
        --v21;
      }

      while (v21);
    }

    else
    {
      *&v272 = v19;
      sub_24A5E8130();
      a1 = v272;
    }

    *&v272 = v19;
    sub_24A5E8130();
    v58 = v272;
    *&v272 = a1;
    sub_24A5E5EE4(v58);
    v59 = v272;
    v245 = *(v272 + 16);
    if (!v245)
    {
LABEL_139:

      return v246;
    }

    v237 = v24 * 0.5;
    v238 = v24 * -0.5;
    if (v24 * -0.5 <= v24 * 0.5)
    {
      break;
    }

LABEL_150:
    __break(1u);
  }

  type metadata accessor for FMPFSKSpriteNode();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  if (a4)
  {
    v60 = 0;
  }

  else
  {
    v60 = a3;
  }

  v235 = v60;
  v61 = v247;
  if (!*(v59 + 16))
  {
LABEL_142:
    __break(1u);
LABEL_143:
    __break(1u);
LABEL_144:
    __break(1u);
LABEL_145:
    __break(1u);
LABEL_146:
    __break(1u);
LABEL_147:
    __break(1u);
LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
    goto LABEL_150;
  }

  v20 = 0;
  v236 = v59 + 32;
  v227 = v245;
  a4 = 113;
  a1 = &OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_curveLength;
  __asm { FMOV            V0.2D, #0.5 }

  v234 = _Q0;
  v67 = 1;
  v232 = a10;
  v231 = v59;
  while (1)
  {
    a3 = v67;
    if (v20 >= *(v61 + 2))
    {
      goto LABEL_143;
    }

    v68 = &v247[16 * v20 + 32];
    v254 = *v68;
    v255 = v68[1];
    v69 = atan2(*(v236 + 16 * v20 + 8), *(v236 + 16 * v20));
    sub_24A5E5268(v70, v238, v237);
    v72 = v71;
    v73 = __sincos_stret(v69);
    a9 = v73.__sinval;
    a8 = v73.__cosval;
    v74 = sub_24A5E51DC(0x20000000000001uLL);
    v75 = (vcvtd_n_f64_u64(v74, 0x35uLL) * 100.0 + 0.0) / 100.0;
    if (v74 == 0x20000000000000)
    {
      v76 = 1.0;
    }

    else
    {
      v76 = v75;
    }

    if (__OFADD__(a5, v20))
    {
      goto LABEL_144;
    }

    v243 = v20;
    v253 = a3;
    *&v272 = 0x746E656D67617246;
    *(&v272 + 1) = 0xE900000000000023;
    *&v269 = a5 + v20;
    v77 = sub_24A62F614();
    MEMORY[0x24C21A5D0](v77);

    v78 = *(v249 + v244);
    v257 = type metadata accessor for FMPFSKPatternFragmentNode();
    a3 = objc_allocWithZone(v257);
    v79 = OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_gimbalNode;
    *(a3 + v79) = [objc_allocWithZone(v248) init];
    *(a3 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_disturbScatterRandomOffsetFrameCounter) = 0;
    v80 = (a3 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_initialPeripheralPosition);
    *v80 = 0;
    *(v80 + 1) = 0;
    v80[16] = 1;
    v81 = (a3 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_initialExplodedPosition);
    *v81 = 0;
    *(v81 + 1) = 0;
    v81[16] = 1;
    v82 = (a3 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_curveLength);
    *v82 = 0;
    v82[8] = 1;
    v83 = (a3 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_arcLength);
    *v83 = 0;
    v83[8] = 1;
    *(a3 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_perimeterRotateOnceAction) = 0;
    v84 = (a3 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_intermediatePosition);
    *v84 = 0;
    *(v84 + 1) = 0;
    v84[16] = 1;
    v85 = (a3 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_relativeHeading);
    *v85 = 0;
    v85[8] = 1;
    v19 = OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_disturbanceScatterOffsetXSpring;
    *(a3 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_disturbanceScatterOffsetXSpring) = 0;
    v86 = OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_disturbanceScatterOffsetYSpring;
    *(a3 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_disturbanceScatterOffsetYSpring) = 0;
    v87 = OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_disturbanceHomingFactorSpring;
    *(a3 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_disturbanceHomingFactorSpring) = 0;
    v88 = (a3 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_explodedPosition);
    *v88 = 0;
    *(v88 + 1) = 0;
    v88[16] = 1;
    v89 = (a3 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_peripheralPosition);
    *v89 = 0;
    *(v89 + 1) = 0;
    v89[16] = 1;
    v90 = (a3 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_composedPosition);
    *v90 = 0;
    *(v90 + 1) = 0;
    v90[16] = 1;
    *(a3 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_useAlternateScaling) = 0;
    v91 = (a3 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_conformationTimingFunction);
    *v91 = 0u;
    *(v91 + 1) = 0u;
    v91[32] = 1;
    v21 = (a3 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_conformedToExplodedFactor);
    *v21 = 0;
    v21[8] = 1;
    a1 = a3 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_conformationFactor;
    *a1 = 0;
    *(a1 + 8) = 1;
    v20 = a3 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_scalingFactor;
    *v20 = 0;
    *(v20 + 8) = 1;
    *(a3 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_shouldApplyDisturbanceScatterOffset) = 1;
    v22 = (a3 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_disturbanceScatterOffset);
    *v22 = 0;
    *(v22 + 1) = 0;
    *(v22 + 16) = 1;
    v92 = (a3 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_presentedDisturbanceScatterOffset);
    *v92 = 0;
    *(v92 + 1) = 0;
    v92[16] = 1;
    *(a3 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_shouldApplyDisturbanceHomingFactor) = 1;
    v93 = (a3 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_disturbanceHomingFactor);
    *v93 = 0;
    v93[8] = 1;
    v94 = (a3 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_presentedDisturbanceHomingFactor);
    *v94 = 0;
    v94[8] = 1;
    v95 = (a3 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_trackOffset);
    *v95 = 0;
    v95[8] = 1;
    *(a3 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_presentedAbsoluteHeading) = 0;
    *(a3 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_experienceType) = v78;
    v250 = v86;
    v251 = v87;
    if (v78 == 1)
    {
      v96 = 0;
      v97 = 0;
      v98 = 0;
      v99 = 0;
      v100 = 0;
      v101 = 0;
      v102 = 0;
      v103 = 1;
      LOBYTE(v272) = 1;
      LOBYTE(v269) = 1;
      v268[0] = 1;
      v283 = 1;
      v282 = 1;
      v281 = 0;
      v280 = 0;
      v279 = 0;
      v278 = 0;
      v277 = 0;
      v276 = 0;
      v104 = 0x4010000000000000;
      v105 = 0;
      v106 = 0x3FF8000000000000;
      v107 = 0x3FF0000000000000;
      v108 = 0;
      v109 = 0x4004000000000000;
      v110 = 0.0;
      v111 = 0.6;
    }

    else
    {
      v103 = 0;
      v109 = 0;
      v107 = 0;
      v106 = 0;
      v104 = 0;
      LOBYTE(v272) = 0;
      LOBYTE(v269) = 0;
      v268[0] = 0;
      v283 = 0;
      v282 = 0;
      v100 = 1;
      v281 = 1;
      v280 = 1;
      v279 = 1;
      v278 = 1;
      v277 = 1;
      v276 = 1;
      v99 = 0x3FF0000000000000;
      v105 = 1;
      v98 = 0x3FE6666666666666;
      v111 = 1.0;
      v110 = 0.75;
      v96 = 0x3FB999999999999ALL;
      v108 = 1;
      v97 = 30;
      v101 = 1;
      v102 = 1;
    }

    v112 = v276;
    v113 = (a3 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_style);
    *v113 = xmmword_24A63B030;
    *(v113 + 1) = xmmword_24A63B040;
    *(v113 + 2) = v234;
    *(v113 + 6) = 16;
    *(v113 + 7) = v110;
    *(v113 + 4) = xmmword_24A639330;
    *(v113 + 5) = xmmword_24A63B050;
    *(v113 + 12) = v111;
    *(v113 + 13) = 0x3FF0000000000000;
    *(v113 + 14) = v96;
    v113[120] = v103;
    *(v113 + 121) = v293[0];
    *(v113 + 31) = *(v293 + 3);
    *(v113 + 16) = v97;
    v113[136] = v103;
    *(v113 + 35) = *&v292[3];
    *(v113 + 137) = *v292;
    *(v113 + 18) = 0;
    v113[152] = v103;
    *(v113 + 39) = *&v291[3];
    *(v113 + 153) = *v291;
    *(v113 + 20) = v98;
    v113[168] = v103;
    *(v113 + 43) = *&v290[3];
    *(v113 + 169) = *v290;
    *(v113 + 22) = v99;
    v113[184] = v103;
    v114 = *v289;
    *(v113 + 47) = *&v289[3];
    *(v113 + 185) = v114;
    *(v113 + 24) = v107;
    v113[200] = v100;
    v115 = *v288;
    *(v113 + 51) = *&v288[3];
    *(v113 + 201) = v115;
    *(v113 + 26) = v107;
    v113[216] = v101;
    v116 = *v287;
    *(v113 + 55) = *&v287[3];
    *(v113 + 217) = v116;
    *(v113 + 28) = v109;
    v113[232] = v102;
    v117 = *v286;
    *(v113 + 59) = *&v286[3];
    *(v113 + 233) = v117;
    *(v113 + 30) = v107;
    v113[248] = v105;
    v118 = *v285;
    *(v113 + 63) = *&v285[3];
    *(v113 + 249) = v118;
    *(v113 + 32) = v106;
    v113[264] = v108;
    v119 = *v284;
    *(v113 + 67) = *&v284[3];
    *(v113 + 265) = v119;
    *(v113 + 34) = 0x3FE0000000000000;
    *(v113 + 35) = v104;
    v120 = a2;
    v113[288] = v112;
    if (!a2)
    {
      v120 = [objc_opt_self() whiteColor];
    }

    v121 = (1.0 - v72) * a10;
    *(a3 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_renderingColor) = v120;
    *(a3 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_explodedDiskRadius) = v121;
    *(a3 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_peripheralDiskRadius) = a10;
    *(a3 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_innerPeripheralDiskRadius) = v121;
    if (v78 == 1)
    {
      v122 = qword_27EF4EA28;
      v123 = a2;
      v124 = &xmmword_27EF5C4A8 + 8;
      if (v122 != -1)
      {
        swift_once();
        v124 = &xmmword_27EF5C4A8 + 8;
      }
    }

    else
    {
      v125 = qword_27EF4EA20;
      v126 = a2;
      v124 = &xmmword_27EF5C3D8 + 8;
      if (v125 != -1)
      {
        swift_once();
        v124 = &xmmword_27EF5C3D8 + 8;
      }
    }

    *(a3 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_travelingStyle) = *v124;
    *v21 = 0;
    v21[8] = 0;
    *a1 = v235;
    *(a1 + 8) = 0;
    *v20 = 0;
    *(v20 + 8) = 0;
    *v93 = 0;
    v93[8] = 0;
    *(a3 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_minScaleFactor) = v240;
    *(a3 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_maxScaleFactor) = v241;
    v127 = *(v113 + 8);
    v128 = *(v113 + 9);
    v129 = v127 * (1.0 - v128);
    if (v129 < 0.0)
    {
      v129 = 0.0;
    }

    *(a3 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_conformedBrightness) = (1.0 - v76) * v129 + v76 * fmin(v127 * (v128 + 1.0), 1.0);
    v130 = *(v113 + 10);
    v131 = *(v113 + 11);
    v132 = v130 * (1.0 - v131);
    if (v132 < 0.0)
    {
      v132 = 0.0;
    }

    *(a3 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_nonConformedBrightness) = (1.0 - v76) * v132 + v76 * fmin(v130 * (v131 + 1.0), 1.0);
    v133 = fmax(*(v113 + 2) / 200.0 * a10, 1.0);
    a7 = v133 + v133;
    if (COERCE__INT64(fabs(v133 + v133)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_145;
    }

    v134 = sub_24A5E51DC(0x20000000000001uLL);
    v135 = a7 * vcvtd_n_f64_u64(v134, 0x35uLL) - v133;
    if (v134 == 0x20000000000000)
    {
      a6 = v133;
    }

    else
    {
      a6 = v135;
    }

    v136 = sub_24A5E51DC(0x20000000000001uLL);
    v137 = a7 * vcvtd_n_f64_u64(v136, 0x35uLL) - v133;
    if (v136 == 0x20000000000000)
    {
      v137 = v133;
    }

    v138 = (a3 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_initialDisturbanceScatterOffset);
    *v138 = a6;
    v138[1] = v137;
    *v22 = a6;
    *(v22 + 1) = v137;
    *(v22 + 16) = 0;
    if ((v113[136] & 1) == 0)
    {
      v139 = sub_24A5B1F94(*&a6, 0, 0x3FE0000000000000, 0);
      v140 = *&v19[a3];
      *&v19[a3] = v139;

      if (v22[1])
      {
        v141 = 0;
      }

      else
      {
        v141 = *(v22 + 1);
      }

      v142 = sub_24A5B1F94(v141, *(v22 + 16), 0x3FE0000000000000, 0);
      v143 = *(a3 + v250);
      *(a3 + v250) = v142;

      v144 = sub_24A5B1B3C(*v93, v93[8], 0x3F847AE147AE147BLL, 0, 0, 1);
      v145 = *(a3 + v251);
      *(a3 + v251) = v144;
    }

    a8 = v73.__cosval * v121;
    a9 = v73.__sinval * v121;
    *(a3 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_headingSpring) = sub_24A5B1D38(0, 0, *&v76, 0, 0x3FE0000000000000, 0);
    *(a3 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_noiseSubSpring) = sub_24A5B1B2C(0, 0, 0, 1);
    v146 = sub_24A5F1D08();
    v147 = [objc_allocWithZone(ObjCClassFromMetadata) initWithTexture_];
    v148 = OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_dotNode;
    *(a3 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_dotNode) = v147;
    v149 = v147;
    [v149 size];
    a7 = 0.5;
    v151 = 0.5 - 1.0 / v150 * 0.5;
    [*(a3 + v148) size];
    v153 = 0.5 - 1.0 / v152 * 0.5;
    [*(a3 + v148) size];
    v155 = 1.0 / v154;
    [*(a3 + v148) size];
    [v149 setCenterRect_];

    v275.receiver = a3;
    v275.super_class = v257;
    v157 = objc_msgSendSuper2(&v275, sel_init);
    v158 = sub_24A62EBE4();

    [v157 setName_];

    v159 = OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_gimbalNode;
    [v157 addChild_];
    v160 = *&v157[v159];
    v161 = OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_dotNode;
    [v160 addChild_];
    [*&v157[v161] setColorBlendFactor_];
    [*&v157[v161] setPosition_];
    v162 = &v157[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_explodedPosition];
    *v162 = a8;
    v162[1] = a9;
    *(v162 + 16) = 0;
    v22 = &v157[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_peripheralPosition];
    *v22 = a8;
    *(v22 + 1) = a9;
    *(v22 + 16) = 0;
    v163 = &v157[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_composedPosition];
    *v163 = v254;
    v163[1] = v255;
    *(v163 + 16) = 0;
    v164 = &v157[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_initialPeripheralPosition];
    *v164 = a8;
    v164[1] = a9;
    *(v164 + 16) = 0;
    v165 = &v157[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_initialExplodedPosition];
    *v165 = a8;
    v165[1] = a9;
    *(v165 + 16) = 0;
    *&v166 = COERCE_DOUBLE(sub_24A5A3FD0());
    if (v168)
    {
      v169 = a8;
    }

    else
    {
      v169 = *&v166;
    }

    if (v168)
    {
      v170 = a9;
    }

    else
    {
      v170 = v167;
    }

    v21 = &v157[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_intermediatePosition];
    *v21 = v169;
    *(v21 + 1) = v170;
    v21[16] = 0;
    v171 = *(v163 + 16);
    v172 = 0.0;
    if ((v171 & 1) == 0)
    {
      a8 = *v163;
      a9 = v163[1];
      v260 = v170;
      v264 = v169;
      *&v187 = COERCE_DOUBLE(sub_24A5A4124(*v163));
      v189 = v188;
      v190 = OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_travelingStyle;
      v258 = *&v187;
      v192 = v191;
      v193 = a9;
      a6 = a8;
      for (i = 1; i != 17; ++i)
      {
        v197 = vcvtd_n_f64_u64(i, 4uLL);
        a7 = 1.0 - v197;
        if (v157[v190])
        {
          v198 = sub_24A62F634();

          if (v198)
          {
            goto LABEL_118;
          }

          if (!v157[v190] || v157[v190] != 1)
          {
            v199 = sub_24A62F634();

            if ((v199 & 1) == 0)
            {
              goto LABEL_110;
            }

            goto LABEL_118;
          }
        }

LABEL_118:
        if ((v189 & 1) == 0)
        {
          v195 = a7 * (v197 * v258 + a6 * a7) + v197 * (v197 * v264 + a7 * v258);
          v196 = a7 * (v197 * v192 + v193 * a7) + v197 * (v197 * v260 + a7 * v192);
          goto LABEL_111;
        }

LABEL_110:
        v195 = v197 * v264 + a6 * a7;
        v196 = v197 * v260 + v193 * a7;
LABEL_111:
        v172 = v172 + sqrt((v195 - a8) * (v195 - a8) + (v196 - a9) * (v196 - a9));
        a9 = v196;
        a8 = v195;
      }
    }

    a1 = &OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_curveLength;
    v173 = &v157[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_curveLength];
    *v173 = v172;
    *(v173 + 8) = v171;
    v174 = sub_24A5A5880(*v21, *(v21 + 1), v21[16], *v22, *(v22 + 1), *(v22 + 16));
    v175 = &v157[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_arcLength];
    *v175 = v174;
    v175[8] = v176 & 1;
    v20 = &v157[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_conformationFactor];
    if ((v157[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_conformationFactor + 8] & 1) == 0)
    {
      sub_24A5DF354(*v20);
    }

    a10 = v232;
    if ((v157[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_scalingFactor + 8] & 1) == 0)
    {
      sub_24A5DF5EC(*&v157[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_scalingFactor]);
    }

    if ((v157[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_disturbanceScatterOffset + 16] & 1) == 0)
    {
      v177 = &v157[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_presentedDisturbanceScatterOffset];
      *v177 = *&v157[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_disturbanceScatterOffset];
      v177[16] = 0;
      if ((*(v20 + 8) & 1) == 0)
      {
        sub_24A5DF354(*v20);
      }
    }

    if ((v157[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_disturbanceHomingFactor + 8] & 1) == 0)
    {
      v178 = &v157[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_presentedDisturbanceHomingFactor];
      *v178 = *&v157[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_disturbanceHomingFactor];
      v178[8] = 0;
    }

    [v157 setZPosition_];

    [v246 addChild_];
    v19 = v157;
    MEMORY[0x24C21A660]();
    if (*((v295 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v295 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v226 = *((v295 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_24A62ED84();
    }

    result = sub_24A62EDA4();
    a3 = v295;
    if ((v239 & 1) == 0 && (*(v230 + 80) & 1) == 0 && (*(v230 + 16) & 1) == 0 && *(v230 + 96) != 1)
    {
      v180 = *(v230 + 8);
      v181 = v180 + 1;
      if (__OFADD__(v180, 1))
      {
        goto LABEL_146;
      }

      v182 = *(v230 + 88);
      v183 = v181 * v182;
      if ((v181 * v182) >> 64 != (v181 * v182) >> 63)
      {
        goto LABEL_147;
      }

      if (!v183)
      {
        goto LABEL_148;
      }

      if (!(v243 % v183))
      {
        break;
      }
    }

LABEL_136:

    v61 = v247;
    if (v253 == v245)
    {
      goto LABEL_139;
    }

    v67 = v253 + 1;
    v20 = v253;
    if (v253 >= *(v231 + 16))
    {
      goto LABEL_142;
    }
  }

  a8 = v243;
  a9 = round((v228 * v243 + *(v230 + 72)) * 10.0) / 10.0;
  v184 = a9 * 10.0;
  if (COERCE_UNSIGNED_INT64(fabs(a9 * 10.0)) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    if (v184 <= -9.22337204e18)
    {
      goto LABEL_153;
    }

    if (v184 >= 9.22337204e18)
    {
      goto LABEL_154;
    }

    v185 = v184;
    v186 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
    [v186 setNumberStyle_];
    if (__ROR8__(0xCCCCCCCCCCCCCCCDLL * v185 + 0x1999999999999998, 1) <= 0x1999999999999998uLL)
    {
      [v186 setMaximumFractionDigits_];
    }

    else
    {
      [v186 setMinimumFractionDigits_];
      [v186 setMaximumFractionDigits_];
    }

    v22 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    v200 = [v186 stringFromNumber_];

    if (v200)
    {
      v261 = sub_24A62EC14();

      v201 = *(v249 + v244);
      v202 = *(v230 + 136);
      v272 = *(v230 + 120);
      v273 = v202;
      *v274 = *(v230 + 152);
      *&v274[9] = *(v230 + 161);
      v252 = type metadata accessor for FMPFSKLabelNode();
      v203 = objc_allocWithZone(v252);
      v203[OBJC_IVAR____TtC11FMFindingUI15FMPFSKLabelNode_experienceType] = v201;
      v204 = *(&v272 + 1);
      if (*(&v272 + 1))
      {
        v205 = v272;
        a9 = *(&v273 + 1);
        v206 = v273;
        v208 = *&v274[8];
        v207 = *v274;
        v209 = *&v274[16];
        v210 = v274[24];
      }

      else
      {
        if (qword_27EF4EA50 != -1)
        {
          swift_once();
        }

        *&v271[9] = *(&xmmword_27EF5C6D8 + 9);
        v270 = xmmword_27EF5C6C8;
        *v271 = xmmword_27EF5C6D8;
        v269 = xmmword_27EF5C6B8;
        v208 = *(&xmmword_27EF5C6D8 + 1);
        *&v209 = *(&xmmword_27EF5C6D8 + 9) >> 56;
        v210 = byte_27EF5C6F0;
        v265 = xmmword_27EF5C6D8;
        a9 = *(&xmmword_27EF5C6C8 + 1);
        v204 = *(&xmmword_27EF5C6B8 + 1);
        v206 = xmmword_27EF5C6C8;
        v205 = xmmword_27EF5C6B8;
        sub_24A5A3F4C(&v269, v268);
        v207 = v265;
      }

      v266 = v207;
      *&v269 = v205;
      *(&v269 + 1) = v204;
      *&v270 = v206;
      *(&v270 + 1) = a9;
      *v271 = v207;
      *&v271[8] = v208;
      *&v271[16] = v209;
      v259 = v210;
      v271[24] = v210 & 1;
      v211 = &v203[OBJC_IVAR____TtC11FMFindingUI15FMPFSKLabelNode_style];
      v212 = v269;
      v213 = v270;
      v214 = *v271;
      *(v211 + 41) = *&v271[9];
      v211[1] = v213;
      v211[2] = v214;
      *v211 = v212;
      *&v203[OBJC_IVAR____TtC11FMFindingUI15FMPFSKLabelNode_normalizedIndex] = 1.0 - a8 / v227;
      v215 = objc_allocWithZone(MEMORY[0x277CDCF48]);
      sub_24A5EB504(&v272, v268);
      sub_24A5A3F4C(&v269, v268);
      v216 = sub_24A62EBE4();
      v217 = [v215 initWithFontNamed_];

      [v217 setFontSize_];
      [v217 setFontColor_];
      v218 = v203;
      v21 = v261;
      v219 = sub_24A62EBE4();
      [v217 setText_];

      [v217 setVerticalAlignmentMode_];
      [v217 setHorizontalAlignmentMode_];
      [v217 setNumberOfLines_];
      *&v218[OBJC_IVAR____TtC11FMFindingUI15FMPFSKLabelNode_labelNode] = v217;
      v267.receiver = v218;
      v267.super_class = v252;
      v220 = v217;
      v22 = objc_msgSendSuper2(&v267, sel_init);
      [v22 addChild_];
      v221 = sub_24A62EBE4();
      [v22 setName_];

      LOBYTE(v221) = sub_24A62ECD4();

      v222 = 0.0;
      if ((v221 & 1) != 0 && [v220 horizontalAlignmentMode] == 2)
      {
        [v220 fontSize];
        v222 = v223 * -0.125;
      }

      v224 = 0.0;
      if (v259)
      {
        v225 = 0.0;
      }

      else
      {
        v225 = v209;
      }

      if ((v259 & 1) == 0)
      {
        v224 = v208;
      }

      [v22 setPosition_];

      sub_24A5EB574(&v269);
      [v229 addChild_];
    }

    goto LABEL_136;
  }

  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
  return result;
}

uint64_t sub_24A5EB504(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A508FA4(&qword_27EF51AB8, &qword_24A63B078);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A5EB69C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  sub_24A62E614();
  *(a1 + *(sub_24A508FA4(&qword_27EF51D08, &qword_24A63B708) + 36)) = 0;
  v5 = sub_24A62E9C4();
  v7 = v6;
  if (sub_24A62E624())
  {
  }

  else
  {
    v3 = sub_24A62E864();
  }

  result = sub_24A508FA4(&qword_27EF51D10, &qword_24A63B710);
  v9 = (a1 + *(result + 36));
  *v9 = v3;
  v9[1] = v5;
  v9[2] = v7;
  return result;
}

uint64_t sub_24A5EB75C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v40[1] = a1;
  v3 = sub_24A508FA4(&qword_27EF51AF0, &qword_24A63B1A8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = (v40 - v5);
  v7 = sub_24A508FA4(&qword_27EF51AF8, &qword_24A63B1B0);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v40 - v10;
  v12 = sub_24A508FA4(&qword_27EF51B00, &qword_24A63B1B8);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = v40 - v14;
  v16 = sub_24A508FA4(&qword_27EF51B08, &qword_24A63B1C0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = v40 - v19;
  *v6 = sub_24A62E9C4();
  v6[1] = v21;
  v22 = sub_24A508FA4(&qword_27EF51B10, &qword_24A63B1C8);
  sub_24A5EBCA8(v2, v6 + *(v22 + 44));
  sub_24A62E9C4();
  sub_24A62E434();
  sub_24A55B7E0(v6, v11, &qword_27EF51AF0, &qword_24A63B1A8);
  v23 = &v11[*(v8 + 44)];
  v24 = v50;
  *(v23 + 4) = v49;
  *(v23 + 5) = v24;
  *(v23 + 6) = v51;
  v25 = v46;
  *v23 = v45;
  *(v23 + 1) = v25;
  v26 = v48;
  *(v23 + 2) = v47;
  *(v23 + 3) = v26;
  sub_24A55B7E0(v11, v15, &qword_27EF51AF8, &qword_24A63B1B0);
  v27 = &v15[*(v12 + 36)];
  *v27 = nullsub_1;
  *(v27 + 1) = 0;
  *(v27 + 2) = 0;
  *(v27 + 3) = 0;
  if (*(v2 + 16))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_24A62E354();

    v44 = v41;
    v28 = swift_allocObject();
    v29 = *(v2 + 80);
    v28[5] = *(v2 + 64);
    v28[6] = v29;
    v28[7] = *(v2 + 96);
    v30 = *(v2 + 16);
    v28[1] = *v2;
    v28[2] = v30;
    v31 = *(v2 + 48);
    v28[3] = *(v2 + 32);
    v28[4] = v31;
    sub_24A59838C(v2, &v41);
    v32 = sub_24A5F09A4();
    v33 = sub_24A50E3A4();
    sub_24A62E7F4();

    sub_24A50D6A4(v15, &qword_27EF51B00, &qword_24A63B1B8);
    v41 = *(v2 + 64);
    sub_24A508FA4(&qword_27EF51B30, &qword_24A63B218);
    sub_24A62E904();
    v34 = swift_allocObject();
    v35 = *(v2 + 80);
    v34[5] = *(v2 + 64);
    v34[6] = v35;
    v34[7] = *(v2 + 96);
    v36 = *(v2 + 16);
    v34[1] = *v2;
    v34[2] = v36;
    v37 = *(v2 + 48);
    v34[3] = *(v2 + 32);
    v34[4] = v37;
    sub_24A59838C(v2, &v41);
    *&v41 = v12;
    *(&v41 + 1) = &type metadata for VFXManager.State;
    v42 = v32;
    v43 = v33;
    swift_getOpaqueTypeConformance2();
    sub_24A62E7F4();

    return (*(v17 + 8))(v20, v16);
  }

  else
  {
    v39 = *(v2 + 24);
    type metadata accessor for VFXManager(0);
    sub_24A5F1770(&qword_27EF4F438, type metadata accessor for VFXManager);
    result = sub_24A62E454();
    __break(1u);
  }

  return result;
}

uint64_t sub_24A5EBCA8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1;
  v57 = a1;
  v67 = a2;
  v3 = sub_24A508FA4(&qword_27EF51B40, &qword_24A63B228);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v57 - v5;
  v7 = sub_24A508FA4(&qword_27EF51B48, &qword_24A63B230);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v57 - v10;
  v12 = sub_24A508FA4(&qword_27EF51B50, &qword_24A63B238);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v65 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v57 - v18;
  MEMORY[0x28223BE20](v17);
  v64 = &v57 - v20;
  v66 = sub_24A62E524();
  v92 = 0;
  sub_24A5EC3D8(v2, &v69);
  v114 = *&v70[48];
  v115 = *&v70[64];
  v116 = *&v70[80];
  v117 = v70[96];
  v110 = v69;
  v111 = *v70;
  v112 = *&v70[16];
  v113 = *&v70[32];
  v118[0] = v69;
  v118[1] = *v70;
  v118[2] = *&v70[16];
  v118[3] = *&v70[32];
  v118[4] = *&v70[48];
  v118[5] = *&v70[64];
  v118[6] = *&v70[80];
  v119 = v70[96];
  sub_24A50D63C(&v110, v68, &qword_27EF51B58, &qword_24A63B240);
  sub_24A50D6A4(v118, &qword_27EF51B58, &qword_24A63B240);
  *&v91[71] = v114;
  *&v91[87] = v115;
  *&v91[103] = v116;
  *&v91[7] = v110;
  *&v91[23] = v111;
  *&v91[39] = v112;
  v91[119] = v117;
  *&v91[55] = v113;
  LOBYTE(v2) = v92;
  sub_24A62E9D4();
  sub_24A62E434();
  *&v93[55] = v99;
  *&v93[71] = v100;
  *&v93[87] = v101;
  *&v93[103] = v102;
  *&v93[7] = v96;
  *&v93[23] = v97;
  *&v93[39] = v98;
  v63 = sub_24A62E694();
  sub_24A62E3B4();
  v61 = v22;
  v62 = v21;
  v59 = v24;
  v60 = v23;
  v94 = 0;
  v58 = sub_24A62E674();
  sub_24A62E3B4();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v95 = 0;
  *v6 = sub_24A62E514();
  *(v6 + 1) = 0x4026000000000000;
  v6[16] = 0;
  v33 = sub_24A508FA4(&qword_27EF51B60, &qword_24A63B248);
  sub_24A5EC8F4(v57, &v6[*(v33 + 44)]);
  sub_24A62E9D4();
  sub_24A62E434();
  sub_24A55B7E0(v6, v11, &qword_27EF51B40, &qword_24A63B228);
  v34 = &v11[*(v8 + 44)];
  v35 = v108;
  *(v34 + 4) = v107;
  *(v34 + 5) = v35;
  *(v34 + 6) = v109;
  v36 = v104;
  *v34 = v103;
  *(v34 + 1) = v36;
  v37 = v106;
  *(v34 + 2) = v105;
  *(v34 + 3) = v37;
  LOBYTE(v6) = sub_24A62E6A4();
  sub_24A62E3B4();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  sub_24A55B7E0(v11, v19, &qword_27EF51B48, &qword_24A63B230);
  v46 = &v19[*(v13 + 44)];
  *v46 = v6;
  *(v46 + 1) = v39;
  *(v46 + 2) = v41;
  *(v46 + 3) = v43;
  *(v46 + 4) = v45;
  v46[40] = 0;
  v47 = v64;
  sub_24A55B7E0(v19, v64, &qword_27EF51B50, &qword_24A63B238);
  v48 = v65;
  sub_24A50D63C(v47, v65, &qword_27EF51B50, &qword_24A63B238);
  *(&v68[10] + 1) = *&v91[64];
  *(&v68[12] + 1) = *&v91[80];
  *(&v68[14] + 1) = *&v91[96];
  *(&v68[2] + 1) = *v91;
  *(&v68[4] + 1) = *&v91[16];
  *(&v68[6] + 1) = *&v91[32];
  *(&v68[8] + 1) = *&v91[48];
  *(&v68[23] + 1) = *&v93[48];
  *(&v68[21] + 1) = *&v93[32];
  *(&v68[19] + 1) = *&v93[16];
  *(&v68[17] + 1) = *v93;
  v68[31] = *&v93[111];
  *(&v68[29] + 1) = *&v93[96];
  *(&v68[27] + 1) = *&v93[80];
  v49 = v66;
  v68[0] = v66;
  v68[1] = 0;
  LOBYTE(v68[2]) = v2;
  *(&v68[16] + 1) = *&v91[112];
  *(&v68[25] + 1) = *&v93[64];
  LOBYTE(v19) = v63;
  LOBYTE(v68[32]) = v63;
  v51 = v61;
  v50 = v62;
  v68[33] = v62;
  v68[34] = v61;
  v53 = v59;
  v52 = v60;
  v68[35] = v60;
  v68[36] = v59;
  LOBYTE(v68[37]) = 0;
  LOBYTE(v8) = v58;
  LOBYTE(v68[38]) = v58;
  v68[39] = v26;
  v68[40] = v28;
  v68[41] = v30;
  v68[42] = v32;
  LOBYTE(v68[43]) = 0;
  v54 = v67;
  memcpy(v67, v68, 0x159uLL);
  v55 = sub_24A508FA4(&qword_27EF51B68, &qword_24A63B250);
  sub_24A50D63C(v48, v54 + *(v55 + 48), &qword_27EF51B50, &qword_24A63B238);
  sub_24A50D63C(v68, &v69, &qword_27EF51B70, &qword_24A63B258);
  sub_24A50D6A4(v47, &qword_27EF51B50, &qword_24A63B238);
  sub_24A50D6A4(v48, &qword_27EF51B50, &qword_24A63B238);
  *&v70[65] = *&v91[64];
  *&v70[81] = *&v91[80];
  *&v70[97] = *&v91[96];
  *&v70[1] = *v91;
  *&v70[17] = *&v91[16];
  *&v70[33] = *&v91[32];
  *&v70[49] = *&v91[48];
  v75 = *&v93[48];
  v74 = *&v93[32];
  v73 = *&v93[16];
  v72 = *v93;
  *&v78[15] = *&v93[111];
  *v78 = *&v93[96];
  v77 = *&v93[80];
  v69 = v49;
  v70[0] = v2;
  v71 = *&v91[112];
  v76 = *&v93[64];
  v79 = v19;
  v80 = v50;
  v81 = v51;
  v82 = v52;
  v83 = v53;
  v84 = 0;
  v85 = v8;
  v86 = v26;
  v87 = v28;
  v88 = v30;
  v89 = v32;
  v90 = 0;
  return sub_24A50D6A4(&v69, &qword_27EF51B70, &qword_24A63B258);
}

uint64_t sub_24A5EC3D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a1;
  v3 = sub_24A508FA4(&qword_27EF51CB0, &qword_24A63B450);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v49 - v5;
  v64 = sub_24A5D2200(0x454C5449545F3152, 0xE800000000000000);
  v65 = v7;
  v54 = sub_24A55BEBC();
  v8 = sub_24A62E794();
  v10 = v9;
  v12 = v11;
  sub_24A62E6D4();
  v13 = sub_24A62E6B4();
  v14 = *(v13 - 8);
  v52 = *(v14 + 56);
  v53 = v13;
  v51 = v14 + 56;
  v52(v6, 1, 1);
  sub_24A62E704();
  v56 = v6;
  sub_24A50D6A4(v6, &qword_27EF51CB0, &qword_24A63B450);
  v15 = sub_24A62E784();
  v17 = v16;
  v19 = v18;

  sub_24A5F13C8(v8, v10, v12 & 1);

  v64 = sub_24A62E854();
  v20 = sub_24A62E774();
  v58 = v21;
  v59 = v20;
  v55 = v22;
  v60 = v23;
  sub_24A5F13C8(v15, v17, v19 & 1);

  KeyPath = swift_getKeyPath();
  if (*(v50 + 16))
  {
    v24 = *(v50 + 16);

    sub_24A584370();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_24A62E354();

    v25 = sub_24A62E794();
    v27 = v26;
    v29 = v28;
    sub_24A62E6F4();
    v30 = v56;
    (v52)(v56, 1, 1, v53);
    sub_24A62E704();
    sub_24A50D6A4(v30, &qword_27EF51CB0, &qword_24A63B450);
    v31 = sub_24A62E784();
    v33 = v32;
    v35 = v34;

    sub_24A5F13C8(v25, v27, v29 & 1);

    v64 = sub_24A62E854();
    v36 = sub_24A62E774();
    v38 = v37;
    LOBYTE(v27) = v39;
    v41 = v40;
    sub_24A5F13C8(v31, v33, v35 & 1);

    v42 = swift_getKeyPath();
    v43 = v55 & 1;
    LOBYTE(v64) = v55 & 1;
    v63 = v55 & 1;
    v62 = v27 & 1;
    v61 = 1;
    v45 = v58;
    v44 = v59;
    *a2 = v59;
    *(a2 + 8) = v45;
    *(a2 + 16) = v43;
    v46 = KeyPath;
    *(a2 + 24) = v60;
    *(a2 + 32) = v46;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0x3FE75C28F5C28F5CLL;
    *(a2 + 56) = v36;
    *(a2 + 64) = v38;
    *(a2 + 72) = v27 & 1;
    *(a2 + 80) = v41;
    *(a2 + 88) = v42;
    *(a2 + 96) = 0;
    *(a2 + 104) = 0;
    *(a2 + 112) = 1;
    sub_24A5F144C(v44, v45, v43);

    sub_24A5F144C(v36, v38, v27 & 1);

    sub_24A5F13C8(v36, v38, v27 & 1);

    sub_24A5F13C8(v44, v45, v64);
  }

  else
  {
    v48 = *(v50 + 24);
    type metadata accessor for VFXManager(0);
    sub_24A5F1770(&qword_27EF4F438, type metadata accessor for VFXManager);
    result = sub_24A62E454();
    __break(1u);
  }

  return result;
}

uint64_t sub_24A5EC8F4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24A508FA4(&qword_27EF51B78, &qword_24A63B260);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v33 - v10;
  v33 = sub_24A62E524();
  v51 = 0;
  sub_24A5ECD70(a1, &v42);
  v65 = *&v43[22];
  v66 = *&v43[24];
  v67 = *&v43[26];
  v68 = *&v43[28];
  v61 = *&v43[14];
  v62 = *&v43[16];
  v63 = *&v43[18];
  v64 = *&v43[20];
  v57 = *&v43[6];
  v58 = *&v43[8];
  v59 = *&v43[10];
  v60 = *&v43[12];
  v53 = v42;
  v54 = *v43;
  v55 = *&v43[2];
  v56 = *&v43[4];
  v69[12] = *&v43[22];
  v69[13] = *&v43[24];
  v69[14] = *&v43[26];
  v69[15] = *&v43[28];
  v69[8] = *&v43[14];
  v69[9] = *&v43[16];
  v69[10] = *&v43[18];
  v69[11] = *&v43[20];
  v69[4] = *&v43[6];
  v69[5] = *&v43[8];
  v69[6] = *&v43[10];
  v69[7] = *&v43[12];
  v69[0] = v42;
  v69[1] = *v43;
  v69[2] = *&v43[2];
  v69[3] = *&v43[4];
  sub_24A50D63C(&v53, v41, &qword_27EF51B80, &qword_24A63B268);
  sub_24A50D6A4(v69, &qword_27EF51B80, &qword_24A63B268);
  *&v50[199] = v65;
  *&v50[215] = v66;
  *&v50[231] = v67;
  *&v50[247] = v68;
  *&v50[135] = v61;
  *&v50[151] = v62;
  *&v50[167] = v63;
  *&v50[183] = v64;
  *&v50[71] = v57;
  *&v50[87] = v58;
  *&v50[103] = v59;
  *&v50[119] = v60;
  *&v50[7] = v53;
  *&v50[23] = v54;
  *&v50[39] = v55;
  *&v50[55] = v56;
  v12 = v51;
  sub_24A62E9D4();
  sub_24A62E434();
  v13 = sub_24A62E674();
  sub_24A62E3B4();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v52 = 0;
  *v11 = sub_24A62E504();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v22 = sub_24A508FA4(&qword_27EF51B88, &qword_24A63B270);
  sub_24A5ED7D4(a1, &v11[*(v22 + 44)]);
  v23 = sub_24A62E674();
  sub_24A62E3B4();
  v24 = &v11[*(v5 + 44)];
  *v24 = v23;
  *(v24 + 1) = v25;
  *(v24 + 2) = v26;
  *(v24 + 3) = v27;
  *(v24 + 4) = v28;
  v24[40] = 0;
  v29 = v9;
  sub_24A50D63C(v11, v9, &qword_27EF51B78, &qword_24A63B260);
  *a2 = 0;
  *(a2 + 8) = 1;
  v30 = v33;
  v41[0] = v33;
  v41[1] = 0;
  LOBYTE(v41[2]) = v12;
  memcpy(&v41[2] + 1, v50, 0x107uLL);
  *&v41[43] = v38;
  *&v41[45] = v39;
  *&v41[47] = v40;
  *&v41[35] = v34;
  *&v41[37] = v35;
  *&v41[39] = v36;
  *&v41[41] = v37;
  LOBYTE(v41[49]) = v13;
  v41[50] = v15;
  v41[51] = v17;
  v41[52] = v19;
  v41[53] = v21;
  LOBYTE(v41[54]) = 0;
  memcpy((a2 + 16), v41, 0x1B1uLL);
  v31 = sub_24A508FA4(&qword_27EF51B90, &qword_24A63B278);
  sub_24A50D63C(v29, a2 + *(v31 + 64), &qword_27EF51B78, &qword_24A63B260);
  sub_24A50D63C(v41, &v42, &qword_27EF51B98, &qword_24A63B280);
  sub_24A50D6A4(v11, &qword_27EF51B78, &qword_24A63B260);
  sub_24A50D6A4(v29, &qword_27EF51B78, &qword_24A63B260);
  v42 = v30;
  LOBYTE(v43[0]) = v12;
  memcpy(v43 + 1, v50, 0x107uLL);
  *&v43[41] = v38;
  *&v43[43] = v39;
  *&v43[45] = v40;
  *&v43[33] = v34;
  *&v43[35] = v35;
  *&v43[37] = v36;
  *&v43[39] = v37;
  v44 = v13;
  v45 = v15;
  v46 = v17;
  v47 = v19;
  v48 = v21;
  v49 = 0;
  return sub_24A50D6A4(&v42, &qword_27EF51B98, &qword_24A63B280);
}

uint64_t sub_24A5ECD70@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v86 = a2;
  v3 = sub_24A508FA4(&qword_27EF51CB0, &qword_24A63B450);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v75 - v5;
  v83 = a1;
  v7 = a1[2];
  if (v7)
  {
    v8 = a1[2];
    swift_retain_n();
    sub_24A584370();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24A62E354();

    v75[1] = sub_24A55BEBC();
    v9 = sub_24A62E794();
    v11 = v10;
    v13 = v12;
    v89 = v14;
    sub_24A62E6E4();
    v15 = *MEMORY[0x277CE09A0];
    v16 = sub_24A62E6B4();
    v17 = *(v16 - 8);
    v18 = *(v17 + 104);
    v80 = v15;
    v78 = v17 + 104;
    v76 = v18;
    v18(v6, v15, v16);
    v19 = *(v17 + 56);
    v81 = v16;
    v79 = v17 + 56;
    v77 = v19;
    v19(v6, 0, 1, v16);
    sub_24A62E704();
    v82 = v6;
    sub_24A50D6A4(v6, &qword_27EF51CB0, &qword_24A63B450);
    v20 = sub_24A62E784();
    v22 = v21;
    v75[0] = v7;
    v24 = v23;

    sub_24A5F13C8(v9, v11, v13 & 1);

    v121[0] = sub_24A62E854();
    v84 = sub_24A62E774();
    v85 = v25;
    v89 = v26;
    v28 = v27;
    sub_24A5F13C8(v20, v22, v24 & 1);

    KeyPath = swift_getKeyPath();
    sub_24A62E9D4();
    sub_24A62E3D4();
    v87 = v28 & 1;
    v139 = v28 & 1;
    *&v137[7] = v140;
    *&v137[23] = v141;
    *&v137[39] = v142;
    sub_24A584370();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_24A62E354();

    sub_24A62EC84();

    sub_24A584370();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_24A62E354();

    v29 = sub_24A62E794();
    v31 = v30;
    v33 = v32;
    sub_24A584370();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_24A62E354();

    v34 = sub_24A62EC84();

    v35 = v82;
    if (v34)
    {
      sub_24A62E6C4();
    }

    else
    {
      sub_24A62E6E4();
    }

    v36 = v81;
    v76(v35, v80, v81);
    v77(v35, 0, 1, v36);
    sub_24A62E704();
    sub_24A50D6A4(v35, &qword_27EF51CB0, &qword_24A63B450);
    v37 = sub_24A62E784();
    v39 = v38;
    v41 = v40;

    sub_24A5F13C8(v29, v31, v33 & 1);

    sub_24A62E854();
    if (v83[6])
    {
      swift_getKeyPath();
      swift_getKeyPath();

      sub_24A62E354();

      v42 = sub_24A62E864();

      v121[0] = v42;
      v43 = sub_24A62E774();
      v45 = v44;
      v47 = v46;
      v83 = v48;
      sub_24A5F13C8(v37, v39, v41 & 1);

      v49 = swift_getKeyPath();
      sub_24A62E9C4();
      sub_24A62E434();
      *&v134[55] = v146;
      *&v134[71] = v147;
      *&v134[87] = v148;
      *&v134[103] = v149;
      *&v134[7] = v143;
      *&v134[23] = v144;
      *&v134[39] = v145;
      v51 = v84;
      v50 = v85;
      *&v115 = v84;
      *(&v115 + 1) = v89;
      LOBYTE(v116) = v87;
      DWORD1(v116) = *&v138[3];
      *(&v116 + 1) = *v138;
      *(&v116 + 1) = v85;
      *&v117[0] = KeyPath;
      BYTE8(v117[0]) = 0;
      *(v117 + 9) = *v137;
      *(&v117[2] + 9) = *&v137[32];
      *(&v117[1] + 9) = *&v137[16];
      *(&v117[3] + 1) = *&v137[47];
      v99 = v115;
      v100 = v116;
      v103 = v117[2];
      v104 = v117[3];
      v101 = v117[0];
      v102 = v117[1];
      *&v118 = v43;
      v52 = v45;
      *(&v118 + 1) = v45;
      LOBYTE(v119) = v47 & 1;
      DWORD1(v119) = *&v135[3];
      *(&v119 + 1) = *v135;
      v53 = v83;
      *(&v119 + 1) = v83;
      *&v120[0] = v49;
      BYTE8(v120[0]) = 0;
      *(&v120[3] + 9) = *&v134[48];
      v55 = *&v134[32];
      v54 = *&v134[48];
      *(&v120[2] + 9) = *&v134[32];
      *(&v120[1] + 9) = *&v134[16];
      v57 = *v134;
      v56 = *&v134[16];
      *(v120 + 9) = *v134;
      *(&v120[7] + 1) = *(&v149 + 1);
      v58 = *&v134[96];
      *(&v120[6] + 9) = *&v134[96];
      v59 = *&v134[80];
      *(&v120[5] + 9) = *&v134[80];
      v60 = *&v134[64];
      *(&v120[4] + 9) = *&v134[64];
      v105 = v118;
      v106 = v119;
      v109 = v120[2];
      v110 = v120[3];
      v107 = v120[0];
      v108 = v120[1];
      v113 = v120[6];
      v114 = v120[7];
      v111 = v120[4];
      v112 = v120[5];
      v61 = v120[5];
      v62 = v86;
      v86[12] = v120[4];
      v62[13] = v61;
      v63 = v114;
      v62[14] = v113;
      v62[15] = v63;
      v64 = v108;
      v62[8] = v107;
      v62[9] = v64;
      v65 = v110;
      v62[10] = v109;
      v62[11] = v65;
      v66 = v104;
      v62[4] = v103;
      v62[5] = v66;
      v67 = v106;
      v62[6] = v105;
      v62[7] = v67;
      v68 = v100;
      *v62 = v99;
      v62[1] = v68;
      v69 = v102;
      v62[2] = v101;
      v62[3] = v69;
      v131 = v60;
      v132 = v59;
      v133[0] = v58;
      v136 = v47 & 1;
      v121[0] = v43;
      v121[1] = v52;
      v122 = v47 & 1;
      *v123 = *v135;
      *&v123[3] = *&v135[3];
      v124 = v53;
      v125 = v49;
      v126 = 0;
      *(v133 + 15) = *&v134[111];
      v127 = v57;
      v128 = v56;
      v129 = v55;
      v130 = v54;
      sub_24A50D63C(&v115, v90, &qword_27EF51CF8, &qword_24A63B5E8);
      sub_24A50D63C(&v118, v90, &qword_27EF51D00, &qword_24A63B5F0);
      sub_24A50D6A4(v121, &qword_27EF51D00, &qword_24A63B5F0);
      v90[0] = v51;
      v90[1] = v89;
      v91 = v87;
      *v92 = *v138;
      *&v92[3] = *&v138[3];
      v93 = v50;
      v94 = KeyPath;
      v95 = 0;
      v96 = *v137;
      v97 = *&v137[16];
      v98[0] = *&v137[32];
      *(v98 + 15) = *&v137[47];
      return sub_24A50D6A4(v90, &qword_27EF51CF8, &qword_24A63B5E8);
    }

    v74 = v83[7];
    type metadata accessor for PFAnimationCoordinator();
    v72 = &qword_27EF4F440;
    v73 = type metadata accessor for PFAnimationCoordinator;
  }

  else
  {
    v71 = v83[3];
    type metadata accessor for VFXManager(0);
    v72 = &qword_27EF4F438;
    v73 = type metadata accessor for VFXManager;
  }

  sub_24A5F1770(v72, v73);
  result = sub_24A62E454();
  __break(1u);
  return result;
}

uint64_t sub_24A5ED7D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v161 = a2;
  v3 = sub_24A508FA4(&qword_27EF51BA0, &qword_24A63B288);
  v149 = *(v3 - 8);
  v150 = v3;
  v4 = *(v149 + 64);
  MEMORY[0x28223BE20](v3);
  v148 = &v130 - v5;
  v147 = sub_24A508FA4(&qword_27EF51BA8, &qword_24A63B290);
  v6 = *(*(v147 - 8) + 64);
  MEMORY[0x28223BE20](v147);
  v153 = &v130 - v7;
  v152 = sub_24A508FA4(&qword_27EF51BB0, &qword_24A63B298);
  v8 = *(*(v152 - 8) + 64);
  MEMORY[0x28223BE20](v152);
  v156 = &v130 - v9;
  v155 = sub_24A508FA4(&qword_27EF51BB8, &qword_24A63B2A0);
  v10 = *(*(v155 - 8) + 64);
  MEMORY[0x28223BE20](v155);
  v158 = &v130 - v11;
  v12 = sub_24A508FA4(&qword_27EF51BC0, &qword_24A63B2A8);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v160 = &v130 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v157 = &v130 - v17;
  MEMORY[0x28223BE20](v16);
  v159 = &v130 - v18;
  v19 = sub_24A508FA4(&qword_27EF51BC8, &qword_24A63B2B0);
  v20 = *(v19 - 8);
  v132 = v19;
  v133 = v20;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v131 = &v130 - v22;
  v23 = sub_24A508FA4(&qword_27EF51BD0, &qword_24A63B2B8);
  v137 = *(v23 - 8);
  v138 = v23;
  v24 = *(v137 + 64);
  MEMORY[0x28223BE20](v23);
  v130 = &v130 - v25;
  v135 = sub_24A508FA4(&qword_27EF51BD8, &qword_24A63B2C0);
  v26 = *(*(v135 - 8) + 64);
  MEMORY[0x28223BE20](v135);
  v136 = &v130 - v27;
  v134 = sub_24A508FA4(&qword_27EF51BE0, &qword_24A63B2C8);
  v28 = *(*(v134 - 8) + 64);
  MEMORY[0x28223BE20](v134);
  v142 = &v130 - v29;
  v140 = sub_24A508FA4(&qword_27EF51BE8, &qword_24A63B2D0);
  v30 = *(*(v140 - 8) + 64);
  MEMORY[0x28223BE20](v140);
  v146 = &v130 - v31;
  v145 = sub_24A508FA4(&qword_27EF51BF0, &qword_24A63B2D8);
  v32 = *(*(v145 - 8) + 64);
  MEMORY[0x28223BE20](v145);
  v144 = &v130 - v33;
  v34 = sub_24A508FA4(&qword_27EF51BF8, &qword_24A63B2E0);
  v35 = *(*(v34 - 8) + 64);
  v36 = MEMORY[0x28223BE20](v34 - 8);
  v154 = &v130 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v36);
  v143 = &v130 - v39;
  MEMORY[0x28223BE20](v38);
  v163 = &v130 - v40;
  v41 = sub_24A508FA4(&qword_27EF51C00, &qword_24A63B2E8);
  v42 = *(v41 - 8);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v41);
  v45 = &v130 - v44;
  v46 = sub_24A508FA4(&qword_27EF51C08, &qword_24A63B2F0);
  v47 = *(*(v46 - 8) + 64);
  v48 = MEMORY[0x28223BE20](v46 - 8);
  v151 = &v130 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v51 = &v130 - v50;
  v52 = swift_allocObject();
  v53 = *(a1 + 80);
  v52[5] = *(a1 + 64);
  v52[6] = v53;
  v52[7] = *(a1 + 96);
  v54 = *(a1 + 16);
  v52[1] = *a1;
  v52[2] = v54;
  v55 = *(a1 + 48);
  v52[3] = *(a1 + 32);
  v52[4] = v55;
  sub_24A59838C(a1, v189);
  sub_24A508FA4(&qword_27EF51C10, &qword_24A63B2F8);
  sub_24A5F0B28();
  sub_24A62E924();
  v57 = *a1;
  *&v189[0] = *(a1 + 8);
  v56 = *&v189[0];
  *(&v189[0] + 1) = v57;
  sub_24A518A6C(&qword_27EF51C30, &qword_27EF51C00, &qword_24A63B2E8);
  v58 = sub_24A5F0BE0();
  swift_retain_n();
  sub_24A62E7C4();
  (*(v42 + 8))(v45, v41);
  v59 = v130;
  v60 = sub_24A62E9C4();
  v62 = v61;
  v63 = *(sub_24A508FA4(&qword_27EF51C40, &qword_24A63B308) + 36);
  v162 = v51;
  v64 = &v51[v63];
  *v64 = 0x4024000000000000;
  *(v64 + 1) = v60;
  *(v64 + 2) = v62;
  v65 = swift_allocObject();
  v66 = *(a1 + 80);
  v65[5] = *(a1 + 64);
  v65[6] = v66;
  v65[7] = *(a1 + 96);
  v67 = *(a1 + 16);
  v65[1] = *a1;
  v65[2] = v67;
  v68 = *(a1 + 48);
  v65[3] = *(a1 + 32);
  v65[4] = v68;
  v164 = a1;
  sub_24A59838C(a1, v189);
  sub_24A508FA4(&qword_27EF51C48, &qword_24A63B310);
  sub_24A5F0C74();
  v69 = v131;
  sub_24A62E924();
  *&v189[0] = v56;
  *(&v189[0] + 1) = v57;
  sub_24A518A6C(&qword_27EF51C68, &qword_27EF51BC8, &qword_24A63B2B0);
  v70 = v132;
  v139 = v58;
  sub_24A62E7C4();

  (*(v133 + 8))(v69, v70);
  if (*(a1 + 16))
  {
    v71 = *(a1 + 16);
    swift_retain_n();
    sub_24A584370();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24A62E354();

    v141 = v56;
    if (v189[0])
    {
      v72 = sub_24A62E854();
    }

    else
    {
      v72 = sub_24A62E834();
    }

    v73 = v72;
    v74 = sub_24A62E684();
    v75 = v136;
    (*(v137 + 32))(v136, v59, v138);
    v76 = &v75[*(v135 + 36)];
    *v76 = v73;
    v76[8] = v74;
    v77 = sub_24A62E9C4();
    v79 = v78;
    v80 = v75;
    v81 = v142;
    sub_24A55B7E0(v80, v142, &qword_27EF51BD8, &qword_24A63B2C0);
    v82 = (v81 + *(v134 + 36));
    *v82 = 0x4024000000000000;
    v82[1] = v77;
    v82[2] = v79;
    sub_24A584370();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_24A62E354();

    if (LOBYTE(v189[0]))
    {
      v83 = 1.0;
    }

    else
    {
      v83 = 0.0;
    }

    v84 = v146;
    sub_24A55B7E0(v81, v146, &qword_27EF51BE0, &qword_24A63B2C8);
    *(v84 + *(v140 + 36)) = v83;
    sub_24A584370();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_24A62E354();

    v85 = v189[0];
    KeyPath = swift_getKeyPath();
    v87 = swift_allocObject();
    *(v87 + 16) = (v85 & 1) == 0;
    v88 = v144;
    sub_24A55B7E0(v84, v144, &qword_27EF51BE8, &qword_24A63B2D0);
    v89 = (v88 + *(v145 + 36));
    *v89 = KeyPath;
    v89[1] = sub_24A5F0DA4;
    v89[2] = v87;
    v90 = v143;
    sub_24A55B7E0(v88, v143, &qword_27EF51BF0, &qword_24A63B2D8);
    sub_24A55B7E0(v90, v163, &qword_27EF51BF8, &qword_24A63B2E0);
    v91 = swift_allocObject();
    v92 = *(a1 + 80);
    v91[5] = *(a1 + 64);
    v91[6] = v92;
    v91[7] = *(a1 + 96);
    v93 = *(a1 + 16);
    v91[1] = *a1;
    v91[2] = v93;
    v94 = *(a1 + 48);
    v91[3] = *(a1 + 32);
    v91[4] = v94;
    MEMORY[0x28223BE20](v91);
    *(&v130 - 2) = a1;
    sub_24A59838C(a1, v189);
    sub_24A508FA4(&qword_27EF51C70, &qword_24A63B3E0);
    sub_24A5F0DFC();
    v95 = v148;
    sub_24A62E924();
    *&v189[0] = v141;
    *(&v189[0] + 1) = v57;
    sub_24A518A6C(&qword_27EF51C90, &qword_27EF51BA0, &qword_24A63B288);
    v96 = v153;
    v97 = v150;
    sub_24A62E7C4();

    (*(v149 + 8))(v95, v97);
    v98 = sub_24A62E9C4();
    v99 = (v96 + *(v147 + 36));
    *v99 = 0x4024000000000000;
    v99[1] = v98;
    v99[2] = v100;
    sub_24A584370();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_24A62E354();

    v101 = 1;
    if (LOBYTE(v189[0]) == 1)
    {
      v189[0] = *(a1 + 80);
      sub_24A508FA4(&qword_27EF51CA8, &qword_24A63B448);
      sub_24A62E904();
      v101 = *&v177 != 0.0;
    }

    v102 = swift_getKeyPath();
    v103 = swift_allocObject();
    *(v103 + 16) = v101;
    v104 = v156;
    sub_24A55B7E0(v96, v156, &qword_27EF51BA8, &qword_24A63B290);
    v105 = (v104 + *(v152 + 36));
    *v105 = v102;
    v105[1] = sub_24A5F17DC;
    v105[2] = v103;
    v106 = sub_24A62E9C4();
    v108 = v107;
    sub_24A5EFE68(a1, &v166);
    v185 = v174;
    v186 = v175;
    v181 = v170;
    v182 = v171;
    v183 = v172;
    v184 = v173;
    v177 = v166;
    v178 = v167;
    v179 = v168;
    v180 = v169;
    *&v187 = v176;
    *(&v187 + 1) = v106;
    v188 = v108;
    v109 = v104;
    v110 = v158;
    sub_24A55B7E0(v109, v158, &qword_27EF51BB0, &qword_24A63B298);
    v111 = v110 + *(v155 + 36);
    v112 = v186;
    *(v111 + 128) = v185;
    *(v111 + 144) = v112;
    *(v111 + 160) = v187;
    *(v111 + 176) = v188;
    v113 = v182;
    *(v111 + 64) = v181;
    *(v111 + 80) = v113;
    v114 = v184;
    *(v111 + 96) = v183;
    *(v111 + 112) = v114;
    v115 = v178;
    *v111 = v177;
    *(v111 + 16) = v115;
    v116 = v180;
    *(v111 + 32) = v179;
    *(v111 + 48) = v116;
    v189[8] = v174;
    v189[9] = v175;
    v189[4] = v170;
    v189[5] = v171;
    v189[6] = v172;
    v189[7] = v173;
    v189[0] = v166;
    v189[1] = v167;
    v189[2] = v168;
    v189[3] = v169;
    v190 = v176;
    v191 = v106;
    v192 = v108;
    sub_24A50D63C(&v177, &v165, &qword_27EF51C98, &qword_24A63B438);
    sub_24A50D6A4(v189, &qword_27EF51C98, &qword_24A63B438);
    v117 = v157;
    sub_24A55B7E0(v110, v157, &qword_27EF51BB8, &qword_24A63B2A0);
    v118 = v117;
    v119 = v159;
    sub_24A55B7E0(v118, v159, &qword_27EF51BC0, &qword_24A63B2A8);
    v120 = v151;
    sub_24A50D63C(v162, v151, &qword_27EF51C08, &qword_24A63B2F0);
    v121 = v163;
    v122 = v154;
    sub_24A50D63C(v163, v154, &qword_27EF51BF8, &qword_24A63B2E0);
    v123 = v160;
    sub_24A50D63C(v119, v160, &qword_27EF51BC0, &qword_24A63B2A8);
    v124 = v161;
    sub_24A50D63C(v120, v161, &qword_27EF51C08, &qword_24A63B2F0);
    v125 = sub_24A508FA4(&qword_27EF51CA0, &qword_24A63B440);
    v126 = v124 + v125[12];
    *v126 = 0;
    *(v126 + 8) = 1;
    sub_24A50D63C(v122, v124 + v125[16], &qword_27EF51BF8, &qword_24A63B2E0);
    v127 = v124 + v125[20];
    *v127 = 0;
    *(v127 + 8) = 1;
    sub_24A50D63C(v123, v124 + v125[24], &qword_27EF51BC0, &qword_24A63B2A8);
    sub_24A50D6A4(v119, &qword_27EF51BC0, &qword_24A63B2A8);
    sub_24A50D6A4(v121, &qword_27EF51BF8, &qword_24A63B2E0);
    sub_24A50D6A4(v162, &qword_27EF51C08, &qword_24A63B2F0);
    sub_24A50D6A4(v123, &qword_27EF51BC0, &qword_24A63B2A8);
    sub_24A50D6A4(v122, &qword_27EF51BF8, &qword_24A63B2E0);
    return sub_24A50D6A4(v120, &qword_27EF51C08, &qword_24A63B2F0);
  }

  else
  {
    v129 = *(a1 + 24);
    type metadata accessor for VFXManager(0);
    sub_24A5F1770(&qword_27EF4F438, type metadata accessor for VFXManager);
    result = sub_24A62E454();
    __break(1u);
  }

  return result;
}

uint64_t sub_24A5EE960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_24A62EE04();
  v4[3] = sub_24A62EDF4();
  v6 = sub_24A62EDC4();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_24A5EE9F8, v6, v5);
}

uint64_t sub_24A5EE9F8()
{
  v1 = v0[2];
  v2 = *(v1 + 16);
  v0[6] = v2;
  if (v2)
  {

    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v3[1] = sub_24A5EEB14;

    return sub_24A585990();
  }

  else
  {
    v5 = *(v1 + 24);
    type metadata accessor for VFXManager(0);
    sub_24A5F1770(&qword_27EF4F438, type metadata accessor for VFXManager);

    return sub_24A62E454();
  }
}

uint64_t sub_24A5EEB14()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v7 = *v0;

  v4 = *(v1 + 40);
  v5 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_24A5F17E0, v5, v4);
}

double sub_24A5EEC58@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_24A508FA4(&qword_27EF51CB0, &qword_24A63B450);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v16 - v4;
  v6 = sub_24A62E9C4();
  v8 = v7;
  v9 = sub_24A62E884();
  sub_24A62E6C4();
  v10 = sub_24A62E6B4();
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  v11 = sub_24A62E704();
  sub_24A50D6A4(v5, &qword_27EF51CB0, &qword_24A63B450);
  KeyPath = swift_getKeyPath();
  v13 = sub_24A62E854();
  sub_24A62E9C4();
  sub_24A62E3D4();
  *a1 = v6;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9;
  *(a1 + 24) = KeyPath;
  *(a1 + 32) = v11;
  *(a1 + 40) = v13;
  v14 = v16[1];
  *(a1 + 48) = v16[0];
  *(a1 + 64) = v14;
  result = *&v17;
  *(a1 + 80) = v17;
  return result;
}

uint64_t sub_24A5EEDD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_24A62EE04();
  v4[3] = sub_24A62EDF4();
  v6 = sub_24A62EDC4();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_24A5EEE70, v6, v5);
}

uint64_t sub_24A5EEE70()
{
  v1 = v0[2];
  v2 = *(v1 + 16);
  v0[6] = v2;
  if (v2)
  {

    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v3[1] = sub_24A5EEF8C;

    return sub_24A585DFC();
  }

  else
  {
    v5 = *(v1 + 24);
    type metadata accessor for VFXManager(0);
    sub_24A5F1770(&qword_27EF4F438, type metadata accessor for VFXManager);

    return sub_24A62E454();
  }
}

uint64_t sub_24A5EEF8C()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v7 = *v0;

  v4 = *(v1 + 40);
  v5 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_24A5EF0D0, v5, v4);
}

uint64_t sub_24A5EF0D0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

__n128 sub_24A5EF130@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24A62E9C4();
  v6 = v5;
  sub_24A5EF1F0(a1, &v11);
  LOBYTE(a1) = v13;
  v8 = v12;
  v9 = v11;
  sub_24A62E9C4();
  sub_24A62E3D4();
  *&v10[39] = v13;
  *&v10[23] = v12;
  *&v10[7] = v11;
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v9;
  *(a2 + 32) = v8;
  *(a2 + 48) = a1;
  *(a2 + 49) = *v10;
  *(a2 + 65) = *&v10[16];
  result = *&v10[32];
  *(a2 + 81) = *&v10[32];
  *(a2 + 96) = *&v10[47];
  return result;
}

uint64_t sub_24A5EF1F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24A508FA4(&qword_27EF51CB0, &qword_24A63B450);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v23 - v6;
  if (*(a1 + 16))
  {
    v8 = *(a1 + 16);

    sub_24A584370();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_24A62E354();

    if (v29)
    {
      v9 = sub_24A62E884();
      sub_24A62E6C4();
      v10 = sub_24A62E6B4();
      (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
      v11 = sub_24A62E704();
      sub_24A50D6A4(v7, &qword_27EF51CB0, &qword_24A63B450);
      KeyPath = swift_getKeyPath();
      v13 = sub_24A62E824();
      v24 = v9;
      v25 = KeyPath;
      v26 = v11;
      v27 = v13;
      v28 = 0;
    }

    else
    {
      v14 = sub_24A62E884();
      sub_24A62E6C4();
      v15 = sub_24A62E6B4();
      (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
      v16 = sub_24A62E704();
      sub_24A50D6A4(v7, &qword_27EF51CB0, &qword_24A63B450);
      v17 = swift_getKeyPath();
      v18 = sub_24A62E854();
      v24 = v14;
      v25 = v17;
      v26 = v16;
      v27 = v18;
      v28 = 1;
    }

    sub_24A508FA4(&qword_27EF51CB8, &qword_24A63B4A0);
    sub_24A5F1080();
    result = sub_24A62E604();
    v20 = v30;
    v21 = v31;
    *a2 = v29;
    *(a2 + 16) = v20;
    *(a2 + 32) = v21;
  }

  else
  {
    v22 = *(a1 + 24);
    type metadata accessor for VFXManager(0);
    sub_24A5F1770(&qword_27EF4F438, type metadata accessor for VFXManager);
    result = sub_24A62E454();
    __break(1u);
  }

  return result;
}

uint64_t sub_24A5EF510(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_24A508FA4(&unk_27EF52410, &qword_24A633C90);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v17[-v7];
  v9 = sub_24A62EE24();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_24A62EE04();
  sub_24A59838C(a1, v17);
  v10 = sub_24A62EDF4();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  *(v11 + 16) = v10;
  *(v11 + 24) = v12;
  v13 = a1[5];
  *(v11 + 96) = a1[4];
  *(v11 + 112) = v13;
  *(v11 + 128) = a1[6];
  v14 = a1[1];
  *(v11 + 32) = *a1;
  *(v11 + 48) = v14;
  v15 = a1[3];
  *(v11 + 64) = a1[2];
  *(v11 + 80) = v15;
  sub_24A51556C(0, 0, v8, a3, v11);
}

uint64_t sub_24A5EF654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_24A62EE04();
  v4[3] = sub_24A62EDF4();
  v6 = sub_24A62EDC4();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_24A5EF6EC, v6, v5);
}

uint64_t sub_24A5EF6EC()
{
  v1 = v0[2];
  v2 = *(v1 + 16);
  v0[6] = v2;
  if (v2)
  {

    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v3[1] = sub_24A5EF808;

    return sub_24A585AF4();
  }

  else
  {
    v5 = *(v1 + 24);
    type metadata accessor for VFXManager(0);
    sub_24A5F1770(&qword_27EF4F438, type metadata accessor for VFXManager);

    return sub_24A62E454();
  }
}

uint64_t sub_24A5EF808()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v7 = *v0;

  v4 = *(v1 + 40);
  v5 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_24A5EF94C, v5, v4);
}

uint64_t sub_24A5EF94C()
{
  v2 = v0[2];
  v1 = v0[3];

  sub_24A5EF9B0();
  v3 = v0[1];

  return v3();
}

uint64_t sub_24A5EF9B0()
{
  v1 = sub_24A62E654();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14[0] = v0[5];
  v15 = 0;
  sub_24A508FA4(&qword_27EF51CA8, &qword_24A63B448);
  sub_24A62E914();
  v14[0] = v0[6];
  v15 = 0;
  v6 = sub_24A62E914();
  MEMORY[0x24C21A340](v6, 1.5, 1.0, 0.0);
  v13 = v0;
  v7 = swift_allocObject();
  v8 = v0[5];
  v7[5] = v0[4];
  v7[6] = v8;
  v7[7] = v0[6];
  v9 = v0[1];
  v7[1] = *v0;
  v7[2] = v9;
  v10 = v0[3];
  v7[3] = v0[2];
  v7[4] = v10;
  sub_24A59838C(v0, v14);
  sub_24A62E634();
  sub_24A62E3E4();

  return (*(v2 + 8))(v5, v1);
}

double sub_24A5EFB84@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24A62E9C4();
  v6 = v5;
  sub_24A5EFC3C(a1, &v13);
  v7 = v14;
  v8 = v15;
  v12 = v13;
  sub_24A62E9C4();
  sub_24A62E3D4();
  *a2 = v4;
  *(a2 + 8) = v6;
  v9 = v13;
  *(a2 + 16) = v12;
  *(a2 + 32) = v7;
  *(a2 + 48) = v8;
  v10 = v14;
  *(a2 + 56) = v9;
  *(a2 + 72) = v10;
  result = *&v15;
  *(a2 + 88) = v15;
  return result;
}

uint64_t sub_24A5EFC3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24A508FA4(&qword_27EF51CB0, &qword_24A63B450);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18[-v6];
  v8 = sub_24A62E884();
  sub_24A62E6C4();
  v9 = sub_24A62E6B4();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v10 = sub_24A62E704();
  sub_24A50D6A4(v7, &qword_27EF51CB0, &qword_24A63B450);
  KeyPath = swift_getKeyPath();
  v12 = sub_24A62E854();
  if (*(a1 + 16))
  {
    v13 = v12;
    v14 = *(a1 + 16);

    sub_24A584370();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_24A62E354();

    v16 = 0.25;
    if (v18[15])
    {
      v16 = 1.0;
    }

    *a2 = v8;
    *(a2 + 8) = KeyPath;
    *(a2 + 16) = v10;
    *(a2 + 24) = v13;
    *(a2 + 32) = v16;
  }

  else
  {
    v17 = *(a1 + 24);
    type metadata accessor for VFXManager(0);
    sub_24A5F1770(&qword_27EF4F438, type metadata accessor for VFXManager);
    result = sub_24A62E454();
    __break(1u);
  }

  return result;
}

double sub_24A5EFE68@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = *(a1 + 80);
  sub_24A508FA4(&qword_27EF51CA8, &qword_24A63B448);
  sub_24A62E904();
  if (v24 <= 1.0)
  {
    v4 = v24;
  }

  else
  {
    v4 = 1.0;
  }

  v5 = sub_24A62E854();
  sub_24A62E3C4();
  v6 = sub_24A62E9C4();
  v8 = v7;
  v9 = sub_24A62E684();
  sub_24A62E3B4();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  sub_24A62EA64();
  v19 = v18;
  v21 = v20;
  v25 = *(a1 + 96);
  sub_24A62E904();
  result = v23;
  *a2 = 0;
  *(a2 + 8) = v4;
  *(a2 + 16) = v26;
  *(a2 + 32) = v27;
  *(a2 + 48) = v28;
  *(a2 + 56) = v5;
  *(a2 + 64) = 256;
  *(a2 + 72) = v6;
  *(a2 + 80) = v8;
  *(a2 + 88) = v9;
  *(a2 + 96) = v11;
  *(a2 + 104) = v13;
  *(a2 + 112) = v15;
  *(a2 + 120) = v17;
  *(a2 + 128) = 0;
  *(a2 + 136) = 0xBFF921FB54442D18;
  *(a2 + 144) = v19;
  *(a2 + 152) = v21;
  *(a2 + 160) = v23;
  return result;
}

void sub_24A5EFFDC(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *a2;
  v5 = *(a3 + 64);
  v6 = v5;
  v7 = *(&v5 + 1);
  sub_24A50D63C(&v7, v4, &qword_27EF51B38, &qword_24A63B220);
  sub_24A508FA4(&qword_27EF51B30, &qword_24A63B218);
  sub_24A62E904();
  if ((sub_24A60D6B4(v3, v4[0]) & 1) == 0)
  {
    v5 = v6;
    v4[0] = v3;
    sub_24A62E914();
  }

  sub_24A50D6A4(&v6, &qword_27EF51B30, &qword_24A63B218);
  sub_24A5F00B0();
}

void sub_24A5F00B0()
{
  v1 = v0;
  if (qword_27EF4E9A8 != -1)
  {
    swift_once();
  }

  v2 = sub_24A62E314();
  sub_24A506EB8(v2, qword_27EF5C130);
  sub_24A59838C(v0, v12);
  v3 = sub_24A62E2F4();
  v4 = sub_24A62EF34();
  sub_24A5983E8(v1);
  if (!os_log_type_enabled(v3, v4))
  {
    goto LABEL_6;
  }

  v5 = swift_slowAlloc();
  v6 = swift_slowAlloc();
  v12[0] = v6;
  *v5 = 136315138;
  if (*(v1 + 16))
  {
    v7 = v6;
    swift_getKeyPath();
    swift_getKeyPath();

    sub_24A62E354();

    v8 = sub_24A62EC44();
    v10 = sub_24A509BA8(v8, v9, v12);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_24A503000, v3, v4, "PFFindingOverlayView: VFX State Updated: %s", v5, 0xCu);
    sub_24A508C54(v7);
    MEMORY[0x24C21BBE0](v7, -1, -1);
    MEMORY[0x24C21BBE0](v5, -1, -1);
LABEL_6:

    return;
  }

  v11 = *(v1 + 24);
  type metadata accessor for VFXManager(0);
  sub_24A5F1770(&qword_27EF4F438, type metadata accessor for VFXManager);
  sub_24A62E454();
  __break(1u);
}

uint64_t sub_24A5F02D4(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v3 = *a2;
    swift_getKeyPath();
    swift_getKeyPath();

    sub_24A62E354();

    if ((sub_24A60D6B4(v6, v3) & 1) == 0)
    {
      sub_24A5833C4(v3);
    }
  }

  else
  {
    v5 = *(a3 + 24);
    type metadata accessor for VFXManager(0);
    sub_24A5F1770(&qword_27EF4F438, type metadata accessor for VFXManager);
    result = sub_24A62E454();
    __break(1u);
  }

  return result;
}

uint64_t sub_24A5F03D0(_OWORD *a1)
{
  v2 = sub_24A62E654();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x24C21A340](1.5, 1.0, 0.0);
  v13 = a1;
  v7 = swift_allocObject();
  v8 = a1[5];
  v7[5] = a1[4];
  v7[6] = v8;
  v7[7] = a1[6];
  v9 = a1[1];
  v7[1] = *a1;
  v7[2] = v9;
  v10 = a1[3];
  v7[3] = a1[2];
  v7[4] = v10;
  sub_24A59838C(a1, v14);
  sub_24A62E634();
  sub_24A62E3E4();

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_24A5F0558(uint64_t a1)
{
  v3 = *(a1 + 80);
  sub_24A508FA4(&qword_27EF51CA8, &qword_24A63B448);
  sub_24A62E914();
  v4 = *(a1 + 96);
  return sub_24A62E914();
}

uint64_t sub_24A5F05F0(uint64_t a1)
{
  v3 = *(a1 + 80);
  sub_24A508FA4(&qword_27EF51CA8, &qword_24A63B448);
  sub_24A62E914();
  v4 = *(a1 + 96);
  return sub_24A62E914();
}

uint64_t sub_24A5F0670@<X0>(uint64_t a1@<X8>)
{
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  return sub_24A5EB75C(a1);
}

double sub_24A5F06BC@<D0>(uint64_t a1@<X8>)
{
  v12 = sub_24A55BB74(0x394139413941, 0xE600000000000000);
  type metadata accessor for VFXManager(0);
  sub_24A5F1770(&qword_27EF4F438, type metadata accessor for VFXManager);
  v11 = sub_24A62E474();
  v3 = v2;
  type metadata accessor for VFXManager.Values(0);
  sub_24A5F1770(&qword_27EF50A08, type metadata accessor for VFXManager.Values);
  v4 = sub_24A62E474();
  v6 = v5;
  type metadata accessor for PFAnimationCoordinator();
  sub_24A5F1770(&qword_27EF4F440, type metadata accessor for PFAnimationCoordinator);
  v7 = sub_24A62E474();
  v9 = v8;
  sub_24A62E8F4();
  sub_24A62E8F4();
  sub_24A62E8F4();
  result = v13;
  *a1 = 0x3FC999999999999ALL;
  *(a1 + 8) = v12;
  *(a1 + 16) = v11;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 40) = v6;
  *(a1 + 48) = v7;
  *(a1 + 56) = v9;
  *(a1 + 64) = LOBYTE(v13);
  *(a1 + 72) = v14;
  *(a1 + 80) = v13;
  *(a1 + 88) = v14;
  *(a1 + 96) = v13;
  *(a1 + 104) = v14;
  return result;
}

uint64_t sub_24A5F08C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24A5F0908(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24A5F09A4()
{
  result = qword_27EF51B18;
  if (!qword_27EF51B18)
  {
    sub_24A50E1E0(&qword_27EF51B00, &qword_24A63B1B8);
    sub_24A5F0A30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF51B18);
  }

  return result;
}

unint64_t sub_24A5F0A30()
{
  result = qword_27EF51B20;
  if (!qword_27EF51B20)
  {
    sub_24A50E1E0(&qword_27EF51AF8, &qword_24A63B1B0);
    sub_24A518A6C(&qword_27EF51B28, &qword_27EF51AF0, &qword_24A63B1A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF51B20);
  }

  return result;
}

unint64_t sub_24A5F0B28()
{
  result = qword_27EF51C18;
  if (!qword_27EF51C18)
  {
    sub_24A50E1E0(&qword_27EF51C10, &qword_24A63B2F8);
    sub_24A518A6C(&qword_27EF51C20, &qword_27EF51C28, &qword_24A63B300);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF51C18);
  }

  return result;
}

unint64_t sub_24A5F0BE0()
{
  result = qword_27EF51C38;
  if (!qword_27EF51C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF51C38);
  }

  return result;
}

unint64_t sub_24A5F0C74()
{
  result = qword_27EF51C50;
  if (!qword_27EF51C50)
  {
    sub_24A50E1E0(&qword_27EF51C48, &qword_24A63B310);
    sub_24A518A6C(&qword_27EF51C58, &qword_27EF51C60, &qword_24A63B318);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF51C50);
  }

  return result;
}

uint64_t sub_24A5F0D3C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24A62E4E4();
  *a1 = result & 1;
  return result;
}

unint64_t sub_24A5F0DFC()
{
  result = qword_27EF51C78;
  if (!qword_27EF51C78)
  {
    sub_24A50E1E0(&qword_27EF51C70, &qword_24A63B3E0);
    sub_24A518A6C(&qword_27EF51C80, &qword_27EF51C88, &qword_24A63B3E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF51C78);
  }

  return result;
}

uint64_t sub_24A5F0EBC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24A62E4C4();
  *a1 = result;
  return result;
}

uint64_t sub_24A5F0EE8(uint64_t *a1)
{
  v1 = *a1;

  return sub_24A62E4D4();
}

uint64_t sub_24A5F0F18(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24A51935C;

  return sub_24A5EF654(a1, v4, v5, v1 + 32);
}

uint64_t sub_24A5F1010()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[11];

  v6 = v0[13];

  v7 = v0[15];

  return MEMORY[0x2821FE8E8](v0, 128, 7);
}

unint64_t sub_24A5F1080()
{
  result = qword_27EF51CC0;
  if (!qword_27EF51CC0)
  {
    sub_24A50E1E0(&qword_27EF51CB8, &qword_24A63B4A0);
    sub_24A5F1138();
    sub_24A518A6C(&qword_27EF51CE8, &qword_27EF51CF0, &qword_24A63B4B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF51CC0);
  }

  return result;
}

unint64_t sub_24A5F1138()
{
  result = qword_27EF51CC8;
  if (!qword_27EF51CC8)
  {
    sub_24A50E1E0(&qword_27EF51CD0, &qword_24A63B4A8);
    sub_24A518A6C(&qword_27EF51CD8, &qword_27EF51CE0, &qword_24A63B4B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF51CC8);
  }

  return result;
}

uint64_t sub_24A5F11F0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24A515E5C;

  return sub_24A5EEDD8(a1, v4, v5, v1 + 32);
}

uint64_t sub_24A5F12A0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[10];

  v6 = v0[13];

  v7 = v0[15];

  v8 = v0[17];

  return MEMORY[0x2821FE8E8](v0, 144, 7);
}

uint64_t sub_24A5F1310(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24A51935C;

  return sub_24A5EE960(a1, v4, v5, v1 + 32);
}

uint64_t sub_24A5F13C8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_24A5F13D8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24A62E4A4();
  *a1 = result;
  return result;
}

uint64_t sub_24A5F144C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_24A5F145C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_24A5F14A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24A5F14F0()
{
  sub_24A50E1E0(&qword_27EF51B08, &qword_24A63B1C0);
  sub_24A50E1E0(&qword_27EF51B00, &qword_24A63B1B8);
  sub_24A5F09A4();
  sub_24A50E3A4();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_24A5F15D0()
{
  result = qword_27EF51D18;
  if (!qword_27EF51D18)
  {
    sub_24A50E1E0(&qword_27EF51D10, &qword_24A63B710);
    sub_24A5F1688();
    sub_24A518A6C(&qword_27EF51D40, &qword_27EF51D48, &qword_24A63B720);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF51D18);
  }

  return result;
}

unint64_t sub_24A5F1688()
{
  result = qword_27EF51D20;
  if (!qword_27EF51D20)
  {
    sub_24A50E1E0(&qword_27EF51D08, &qword_24A63B708);
    sub_24A5F1770(&qword_27EF51D28, MEMORY[0x277CDE278]);
    sub_24A518A6C(&qword_27EF51D30, &qword_27EF51D38, &qword_24A63B718);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF51D20);
  }

  return result;
}

uint64_t sub_24A5F1770(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24A5F17F8()
{
  result = qword_27EF51D50;
  if (!qword_27EF51D50)
  {
    sub_24A50E1E0(&qword_27EF51D58, &qword_24A63B768);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF51D50);
  }

  return result;
}

double sub_24A5F185C@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_24A5F1B68(v8, a2, a3, a4, a5);
  result = *v8;
  v7 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v7;
  *(a1 + 32) = v9;
  return result;
}

void (*sub_24A5F18C0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_24A62E384();
  return sub_24A514324;
}

uint64_t sub_24A5F194C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24A5F1CB4();

  return MEMORY[0x282133768](a1, a2, a3, v6);
}

uint64_t sub_24A5F19B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24A5F1CB4();

  return MEMORY[0x282133720](a1, a2, a3, v6);
}

uint64_t sub_24A5F1A14(uint64_t a1)
{
  v2 = sub_24A5F1CB4();

  return MEMORY[0x282133738](a1, v2);
}

unint64_t sub_24A5F1A64()
{
  result = qword_27EF51D60;
  if (!qword_27EF51D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF51D60);
  }

  return result;
}

unint64_t sub_24A5F1ABC()
{
  result = qword_27EF51D68;
  if (!qword_27EF51D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF51D68);
  }

  return result;
}

unint64_t sub_24A5F1B14()
{
  result = qword_27EF51D70;
  if (!qword_27EF51D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF51D70);
  }

  return result;
}

double sub_24A5F1B68@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_24A62E764();
  v14.origin.x = a2;
  v14.origin.y = a3;
  v14.size.width = a4;
  v14.size.height = a5;
  CGRectGetMaxX(v14);
  v15.origin.x = a2;
  v15.origin.y = a3;
  v15.size.width = a4;
  v15.size.height = a5;
  CGRectGetMidY(v15);
  sub_24A62E724();
  v16.origin.x = a2;
  v16.origin.y = a3;
  v16.size.width = a4;
  v16.size.height = a5;
  CGRectGetMidX(v16);
  v17.origin.x = a2;
  v17.origin.y = a3;
  v17.size.width = a4;
  v17.size.height = a5;
  CGRectGetMaxY(v17);
  sub_24A62E744();
  v18.origin.x = a2;
  v18.origin.y = a3;
  v18.size.width = a4;
  v18.size.height = a5;
  CGRectGetMaxX(v18);
  v19.origin.x = a2;
  v19.origin.y = a3;
  v19.size.width = a4;
  v19.size.height = a5;
  CGRectGetMaxY(v19);
  sub_24A62E744();
  result = *&v11;
  *a1 = v11;
  *(a1 + 16) = v12;
  *(a1 + 32) = v13;
  return result;
}

unint64_t sub_24A5F1CB4()
{
  result = qword_27EF51D78;
  if (!qword_27EF51D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF51D78);
  }

  return result;
}

id sub_24A5F1D08()
{
  type metadata accessor for FMPFView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_24A62EBE4();
  v3 = [objc_opt_self() imageNamed:v2 inBundle:v1 compatibleWithTraitCollection:0];

  if (v3)
  {
    v4 = [objc_opt_self() textureWithImage_];

    v1 = v3;
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277CDCF88]) init];
  }

  return v4;
}

uint64_t sub_24A5F1E0C()
{
  v1 = sub_24A62EA94();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24A62EAD4();
  v34 = *(v6 - 8);
  v35 = v6;
  v7 = *(v34 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EF4E990 != -1)
  {
    swift_once();
  }

  v10 = sub_24A62E314();
  sub_24A506EB8(v10, qword_27EF5C0E8);
  v11 = v0;
  v12 = sub_24A62E2F4();
  v13 = sub_24A62EF64();

  if (os_log_type_enabled(v12, v13))
  {
    v32 = v2;
    v33 = v1;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    aBlock[0] = v15;
    *v14 = 136315138;
    v16 = *&v11[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_patternNode];
    if (v16)
    {
      v17 = [v16 description];
      v18 = sub_24A62EC14();
      v20 = v19;
    }

    else
    {
      v18 = 0;
      v20 = 0xE000000000000000;
    }

    v21 = sub_24A509BA8(v18, v20, aBlock);

    *(v14 + 4) = v21;
    _os_log_impl(&dword_24A503000, v12, v13, "🧭 FMPFSKPatternNode%s: fragmentsStartedOrbiting()", v14, 0xCu);
    sub_24A508C54(v15);
    MEMORY[0x24C21BBE0](v15, -1, -1);
    MEMORY[0x24C21BBE0](v14, -1, -1);

    v2 = v32;
    v1 = v33;
  }

  else
  {
  }

  v22 = swift_allocObject();
  *(v22 + 16) = v11;
  v23 = objc_opt_self();
  v24 = v11;
  if ([v23 isMainThread])
  {
    v25 = &v24[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_altDelegate];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v26 = *(v25 + 1);
      ObjectType = swift_getObjectType();
      (*(*(v26 + 8) + 8))(ObjectType);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    sub_24A545E8C();
    v29 = sub_24A62F014();
    v30 = swift_allocObject();
    *(v30 + 16) = sub_24A5F43AC;
    *(v30 + 24) = v22;
    aBlock[4] = sub_24A5F4408;
    aBlock[5] = v30;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A5A8458;
    aBlock[3] = &unk_285DAA338;
    v31 = _Block_copy(aBlock);

    sub_24A62EAB4();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_24A545F60();
    sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
    sub_24A529464();
    sub_24A62F254();
    MEMORY[0x24C21A950](0, v9, v5, v31);
    _Block_release(v31);

    (*(v2 + 8))(v5, v1);
    (*(v34 + 8))(v9, v35);
  }
}

BOOL sub_24A5F231C(uint64_t a1)
{
  v1 = a1 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_altDelegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v3 + 8) + 8))(ObjectType);
    swift_unknownObjectRelease();
  }

  return Strong == 0;
}

uint64_t sub_24A5F238C()
{
  v1 = sub_24A62EA94();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24A62EAD4();
  v34 = *(v6 - 8);
  v35 = v6;
  v7 = *(v34 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EF4E990 != -1)
  {
    swift_once();
  }

  v10 = sub_24A62E314();
  sub_24A506EB8(v10, qword_27EF5C0E8);
  v11 = v0;
  v12 = sub_24A62E2F4();
  v13 = sub_24A62EF64();

  if (os_log_type_enabled(v12, v13))
  {
    v32 = v2;
    v33 = v1;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    aBlock[0] = v15;
    *v14 = 136315138;
    v16 = *&v11[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_patternNode];
    if (v16)
    {
      v17 = [v16 description];
      v18 = sub_24A62EC14();
      v20 = v19;
    }

    else
    {
      v18 = 0;
      v20 = 0xE000000000000000;
    }

    v21 = sub_24A509BA8(v18, v20, aBlock);

    *(v14 + 4) = v21;
    _os_log_impl(&dword_24A503000, v12, v13, "🧭 FMPFSKPatternNode%s: fragmentsStoppedOrbiting()", v14, 0xCu);
    sub_24A508C54(v15);
    MEMORY[0x24C21BBE0](v15, -1, -1);
    MEMORY[0x24C21BBE0](v14, -1, -1);

    v2 = v32;
    v1 = v33;
  }

  else
  {
  }

  v22 = swift_allocObject();
  *(v22 + 16) = v11;
  v23 = objc_opt_self();
  v24 = v11;
  if ([v23 isMainThread])
  {
    v25 = &v24[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_altDelegate];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v26 = *(v25 + 1);
      ObjectType = swift_getObjectType();
      (*(*(v26 + 8) + 16))(ObjectType);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    sub_24A545E8C();
    v29 = sub_24A62F014();
    v30 = swift_allocObject();
    *(v30 + 16) = sub_24A5F43A4;
    *(v30 + 24) = v22;
    aBlock[4] = sub_24A5F4408;
    aBlock[5] = v30;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A5A8458;
    aBlock[3] = &unk_285DAA2C0;
    v31 = _Block_copy(aBlock);

    sub_24A62EAB4();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_24A545F60();
    sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
    sub_24A529464();
    sub_24A62F254();
    MEMORY[0x24C21A950](0, v9, v5, v31);
    _Block_release(v31);

    (*(v2 + 8))(v5, v1);
    (*(v34 + 8))(v9, v35);
  }
}

BOOL sub_24A5F289C(uint64_t a1)
{
  v1 = a1 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_altDelegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v3 + 8) + 16))(ObjectType);
    swift_unknownObjectRelease();
  }

  return Strong == 0;
}

BOOL sub_24A5F290C(uint64_t a1)
{
  v1 = a1 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_altDelegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v3 + 8) + 40))(ObjectType);
    swift_unknownObjectRelease();
  }

  return Strong == 0;
}

BOOL sub_24A5F297C(uint64_t a1)
{
  v1 = a1 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_altDelegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v3 + 8) + 48))(ObjectType);
    swift_unknownObjectRelease();
  }

  return Strong == 0;
}

BOOL sub_24A5F29EC(uint64_t a1)
{
  v1 = a1 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_altDelegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v3 + 8) + 56))(ObjectType);
    swift_unknownObjectRelease();
  }

  return Strong == 0;
}

BOOL sub_24A5F2A5C(uint64_t a1)
{
  v1 = a1 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_altDelegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v3 + 8) + 64))(ObjectType);
    swift_unknownObjectRelease();
  }

  return Strong == 0;
}

BOOL sub_24A5F2ACC(uint64_t a1)
{
  v1 = a1 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_altDelegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v3 + 8) + 72))(ObjectType);
    swift_unknownObjectRelease();
  }

  return Strong == 0;
}

BOOL sub_24A5F2B3C(uint64_t a1)
{
  v1 = a1 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_altDelegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v3 + 8) + 80))(ObjectType);
    swift_unknownObjectRelease();
  }

  return Strong == 0;
}

void sub_24A5F2BB4()
{
  v1 = v0;
  sub_24A5F2D1C(v1);
}

void sub_24A5F2BF0()
{
  v1 = v0;
  sub_24A5F30B8(v1);
}

void sub_24A5F2C2C()
{
  v1 = v0;
  sub_24A5F3454(v1);
}

void sub_24A5F2C68()
{
  v1 = v0;
  sub_24A5F37F0(v1);
}

void sub_24A5F2CA4()
{
  v1 = v0;
  sub_24A5F3B8C(v1);
}

void sub_24A5F2CE0()
{
  v1 = v0;
  sub_24A5F3F28(v1);
}

uint64_t sub_24A5F2D1C(void *a1)
{
  v2 = sub_24A62EA94();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24A62EAD4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  v13 = objc_opt_self();
  v14 = a1;
  if ([v13 isMainThread])
  {
    v15 = &v14[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_altDelegate];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v16 = *(v15 + 1);
      ObjectType = swift_getObjectType();
      (*(*(v16 + 8) + 40))(ObjectType);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    sub_24A545E8C();
    v19 = sub_24A62F014();
    v20 = swift_allocObject();
    *(v20 + 16) = sub_24A5F439C;
    *(v20 + 24) = v12;
    aBlock[4] = sub_24A5F4408;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A5A8458;
    aBlock[3] = &unk_285DAA248;
    v21 = _Block_copy(aBlock);
    v24 = v7;
    v22 = v21;

    sub_24A62EAB4();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_24A545F60();
    sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
    sub_24A529464();
    sub_24A62F254();
    MEMORY[0x24C21A950](0, v11, v6, v22);
    _Block_release(v22);

    (*(v3 + 8))(v6, v2);
    (*(v8 + 8))(v11, v24);
  }
}

uint64_t sub_24A5F30B8(void *a1)
{
  v2 = sub_24A62EA94();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24A62EAD4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  v13 = objc_opt_self();
  v14 = a1;
  if ([v13 isMainThread])
  {
    v15 = &v14[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_altDelegate];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v16 = *(v15 + 1);
      ObjectType = swift_getObjectType();
      (*(*(v16 + 8) + 48))(ObjectType);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    sub_24A545E8C();
    v19 = sub_24A62F014();
    v20 = swift_allocObject();
    *(v20 + 16) = sub_24A5F4394;
    *(v20 + 24) = v12;
    aBlock[4] = sub_24A5F4408;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A5A8458;
    aBlock[3] = &unk_285DAA1D0;
    v21 = _Block_copy(aBlock);
    v24 = v7;
    v22 = v21;

    sub_24A62EAB4();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_24A545F60();
    sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
    sub_24A529464();
    sub_24A62F254();
    MEMORY[0x24C21A950](0, v11, v6, v22);
    _Block_release(v22);

    (*(v3 + 8))(v6, v2);
    (*(v8 + 8))(v11, v24);
  }
}

uint64_t sub_24A5F3454(void *a1)
{
  v2 = sub_24A62EA94();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24A62EAD4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  v13 = objc_opt_self();
  v14 = a1;
  if ([v13 isMainThread])
  {
    v15 = &v14[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_altDelegate];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v16 = *(v15 + 1);
      ObjectType = swift_getObjectType();
      (*(*(v16 + 8) + 56))(ObjectType);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    sub_24A545E8C();
    v19 = sub_24A62F014();
    v20 = swift_allocObject();
    *(v20 + 16) = sub_24A5F438C;
    *(v20 + 24) = v12;
    aBlock[4] = sub_24A5F4408;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A5A8458;
    aBlock[3] = &unk_285DAA158;
    v21 = _Block_copy(aBlock);
    v24 = v7;
    v22 = v21;

    sub_24A62EAB4();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_24A545F60();
    sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
    sub_24A529464();
    sub_24A62F254();
    MEMORY[0x24C21A950](0, v11, v6, v22);
    _Block_release(v22);

    (*(v3 + 8))(v6, v2);
    (*(v8 + 8))(v11, v24);
  }
}

uint64_t sub_24A5F37F0(void *a1)
{
  v2 = sub_24A62EA94();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24A62EAD4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  v13 = objc_opt_self();
  v14 = a1;
  if ([v13 isMainThread])
  {
    v15 = &v14[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_altDelegate];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v16 = *(v15 + 1);
      ObjectType = swift_getObjectType();
      (*(*(v16 + 8) + 64))(ObjectType);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    sub_24A545E8C();
    v19 = sub_24A62F014();
    v20 = swift_allocObject();
    *(v20 + 16) = sub_24A5F434C;
    *(v20 + 24) = v12;
    aBlock[4] = sub_24A5F4408;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A5A8458;
    aBlock[3] = &unk_285DAA0E0;
    v21 = _Block_copy(aBlock);
    v24 = v7;
    v22 = v21;

    sub_24A62EAB4();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_24A545F60();
    sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
    sub_24A529464();
    sub_24A62F254();
    MEMORY[0x24C21A950](0, v11, v6, v22);
    _Block_release(v22);

    (*(v3 + 8))(v6, v2);
    (*(v8 + 8))(v11, v24);
  }
}

uint64_t sub_24A5F3B8C(void *a1)
{
  v2 = sub_24A62EA94();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24A62EAD4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  v13 = objc_opt_self();
  v14 = a1;
  if ([v13 isMainThread])
  {
    v15 = &v14[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_altDelegate];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v16 = *(v15 + 1);
      ObjectType = swift_getObjectType();
      (*(*(v16 + 8) + 72))(ObjectType);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    sub_24A545E8C();
    v19 = sub_24A62F014();
    v20 = swift_allocObject();
    *(v20 + 16) = sub_24A5F4344;
    *(v20 + 24) = v12;
    aBlock[4] = sub_24A5F4408;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A5A8458;
    aBlock[3] = &unk_285DAA068;
    v21 = _Block_copy(aBlock);
    v24 = v7;
    v22 = v21;

    sub_24A62EAB4();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_24A545F60();
    sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
    sub_24A529464();
    sub_24A62F254();
    MEMORY[0x24C21A950](0, v11, v6, v22);
    _Block_release(v22);

    (*(v3 + 8))(v6, v2);
    (*(v8 + 8))(v11, v24);
  }
}

uint64_t sub_24A5F3F28(void *a1)
{
  v2 = sub_24A62EA94();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24A62EAD4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  v13 = objc_opt_self();
  v14 = a1;
  if ([v13 isMainThread])
  {
    v15 = &v14[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_altDelegate];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v16 = *(v15 + 1);
      ObjectType = swift_getObjectType();
      (*(*(v16 + 8) + 80))(ObjectType);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    sub_24A545E8C();
    v19 = sub_24A62F014();
    v20 = swift_allocObject();
    *(v20 + 16) = sub_24A5F42FC;
    *(v20 + 24) = v12;
    aBlock[4] = sub_24A5F4304;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A5A8458;
    aBlock[3] = &unk_285DA9FF0;
    v21 = _Block_copy(aBlock);
    v24 = v7;
    v22 = v21;

    sub_24A62EAB4();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_24A545F60();
    sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
    sub_24A529464();
    sub_24A62F254();
    MEMORY[0x24C21A950](0, v11, v6, v22);
    _Block_release(v22);

    (*(v3 + 8))(v6, v2);
    (*(v8 + 8))(v11, v24);
  }
}

uint64_t sub_24A5F42C4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A5F4304()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_24A5F432C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A5F4354()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_24A5F4428(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

void sub_24A5F4494()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_24A5F571C();
    v2 = *&v1[OBJC_IVAR____TtC11FMFindingUI8FMPFView_metalProcessingQueue];
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_24A5F7370;
    *(v4 + 24) = v3;
    aBlock[4] = sub_24A5193D4;
    aBlock[5] = v4;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A592ED8;
    aBlock[3] = &unk_285DAA518;
    v5 = _Block_copy(aBlock);
    v6 = v1;

    dispatch_sync(v2, v5);
    _Block_release(v5);
    LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

    if (v2)
    {
      __break(1u);
    }

    else
    {
      sub_24A58E1A8();
      sub_24A5F53E8();
    }
  }
}

id sub_24A5F46C0()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC11FMFindingUI8FMPFView_ecoModeObservation];
  if (v2)
  {
    v3 = v2;
    sub_24A62E064();
  }

  v4 = *&v1[OBJC_IVAR____TtC11FMFindingUI8FMPFView_metalProcessingQueue];
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_24A5F7370;
  *(v6 + 24) = v5;
  aBlock[4] = sub_24A5193D4;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A592ED8;
  aBlock[3] = &unk_285DAA428;
  v7 = _Block_copy(aBlock);
  v8 = v1;

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {
    v10.receiver = v8;
    v10.super_class = type metadata accessor for FMPFView();
    return objc_msgSendSuper2(&v10, sel_dealloc);
  }

  return result;
}

void sub_24A5F4BB0()
{
  v1 = OBJC_IVAR____TtC11FMFindingUI8FMPFView_scnSceneView;
  [*&v0[OBJC_IVAR____TtC11FMFindingUI8FMPFView_scnSceneView] setTranslatesAutoresizingMaskIntoConstraints_];
  v2 = objc_opt_self();
  sub_24A508FA4(&qword_27EF50790, &qword_24A6338D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_24A633820;
  v4 = [*&v0[v1] topAnchor];
  v5 = [v0 &selRef_description];
  v6 = [v4 constraintEqualToAnchor_];

  *(v3 + 32) = v6;
  v7 = [*&v0[v1] bottomAnchor];
  v8 = [v0 &selRef_setTexture_atIndex_ + 5];
  v9 = [v7 constraintEqualToAnchor_];

  *(v3 + 40) = v9;
  v10 = [*&v0[v1] leadingAnchor];
  v11 = [v0 &selRef_initWithFrame_ + 1];
  v12 = [v10 constraintEqualToAnchor_];

  *(v3 + 48) = v12;
  v13 = [*&v0[v1] trailingAnchor];
  v14 = [v0 trailingAnchor];
  v15 = [v13 constraintEqualToAnchor_];

  *(v3 + 56) = v15;
  sub_24A50D7EC(0, &qword_27EF4F378, 0x277CCAAD0);
  v16 = sub_24A62ED54();

  [v2 activateConstraints_];

  v17 = *&v0[OBJC_IVAR____TtC11FMFindingUI8FMPFView_skSceneView];
  [v17 setTranslatesAutoresizingMaskIntoConstraints_];
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_24A633820;
  v19 = [v17 topAnchor];
  v20 = [v0 topAnchor];
  v21 = [v19 constraintEqualToAnchor_];

  *(v18 + 32) = v21;
  v22 = [v17 bottomAnchor];
  v23 = [v0 bottomAnchor];
  v24 = [v22 constraintEqualToAnchor_];

  *(v18 + 40) = v24;
  v25 = [v17 leadingAnchor];
  v26 = [v0 leadingAnchor];
  v27 = [v25 constraintEqualToAnchor_];

  *(v18 + 48) = v27;
  v28 = [v17 trailingAnchor];
  v29 = [v0 trailingAnchor];
  v30 = [v28 constraintEqualToAnchor_];

  *(v18 + 56) = v30;
  v31 = sub_24A62ED54();

  [v2 activateConstraints_];
}

void sub_24A5F500C()
{
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v5 = OBJC_IVAR____TtC11FMFindingUI8FMPFView_experienceType;
  if (v0[OBJC_IVAR____TtC11FMFindingUI8FMPFView_experienceType] == 1)
  {
    if (qword_27EF4EA28 != -1)
    {
      swift_once();
    }

    v6 = &xmmword_27EF5C4C8;
  }

  else
  {
    if (qword_27EF4EA20 != -1)
    {
      swift_once();
    }

    v6 = &xmmword_27EF5C3F8;
  }

  v7 = *v6;
  [v0 bounds];
  v9 = v8;
  v11 = v10;
  v12 = objc_allocWithZone(type metadata accessor for FMPFRingView());
  v13 = sub_24A59D454(0, 0, v9, v11, v7);
  v14 = *&v0[OBJC_IVAR____TtC11FMFindingUI8FMPFView_config + 144];
  v15 = *&v0[OBJC_IVAR____TtC11FMFindingUI8FMPFView_config + 112];
  v43 = *&v0[OBJC_IVAR____TtC11FMFindingUI8FMPFView_config + 128];
  v44 = v14;
  v16 = *&v0[OBJC_IVAR____TtC11FMFindingUI8FMPFView_config + 144];
  v45 = *&v0[OBJC_IVAR____TtC11FMFindingUI8FMPFView_config + 160];
  v17 = *&v0[OBJC_IVAR____TtC11FMFindingUI8FMPFView_config + 80];
  v18 = *&v0[OBJC_IVAR____TtC11FMFindingUI8FMPFView_config + 48];
  v39 = *&v0[OBJC_IVAR____TtC11FMFindingUI8FMPFView_config + 64];
  v40 = v17;
  v19 = *&v0[OBJC_IVAR____TtC11FMFindingUI8FMPFView_config + 80];
  v20 = *&v0[OBJC_IVAR____TtC11FMFindingUI8FMPFView_config + 112];
  v41 = *&v0[OBJC_IVAR____TtC11FMFindingUI8FMPFView_config + 96];
  v42 = v20;
  v21 = *&v0[OBJC_IVAR____TtC11FMFindingUI8FMPFView_config + 16];
  v36[0] = *&v0[OBJC_IVAR____TtC11FMFindingUI8FMPFView_config];
  v36[1] = v21;
  v22 = *&v0[OBJC_IVAR____TtC11FMFindingUI8FMPFView_config + 48];
  v24 = *&v0[OBJC_IVAR____TtC11FMFindingUI8FMPFView_config];
  v23 = *&v0[OBJC_IVAR____TtC11FMFindingUI8FMPFView_config + 16];
  v37 = *&v0[OBJC_IVAR____TtC11FMFindingUI8FMPFView_config + 32];
  v38 = v22;
  v55 = v43;
  v56 = v16;
  v57 = *&v0[OBJC_IVAR____TtC11FMFindingUI8FMPFView_config + 160];
  v51 = v39;
  v52 = v19;
  v53 = v41;
  v54 = v15;
  v47 = v24;
  v48 = v23;
  v35 = v0[v5];
  v34 = *&v0[OBJC_IVAR____TtC11FMFindingUI8FMPFView_findingType];
  v46 = v0[OBJC_IVAR____TtC11FMFindingUI8FMPFView_config + 176];
  v58 = v0[OBJC_IVAR____TtC11FMFindingUI8FMPFView_config + 176];
  v49 = v37;
  v50 = v18;
  if (sub_24A5F6234(&v47) == 1)
  {
    __break(1u);
  }

  else
  {
    v59[8] = v55;
    v59[9] = v56;
    v59[10] = v57;
    v60 = v58;
    v59[4] = v51;
    v59[5] = v52;
    v59[6] = v53;
    v59[7] = v54;
    v59[0] = v47;
    v59[1] = v48;
    v59[2] = v49;
    v59[3] = v50;
    v25 = objc_allocWithZone(type metadata accessor for FMPFSKScene());
    v26 = v13;
    sub_24A5F6258(v36, v33);
    v27 = v0;
    v28 = sub_24A5D3188(&v35, &v34, v59, v13, v0, &off_285DA6DA0, v2, v4);
    v29 = v26;
    [v29 setFrame_];
    sub_24A59E410(0, 0, 1);
    v30 = *&v27[OBJC_IVAR____TtC11FMFindingUI8FMPFView_ringView];
    *&v27[OBJC_IVAR____TtC11FMFindingUI8FMPFView_ringView] = v13;

    [v29 setUserInteractionEnabled_];
    [v27 addSubview_];
    sub_24A5D6218(*&v27[OBJC_IVAR____TtC11FMFindingUI8FMPFView_skSceneView], 1);
    v31 = *&v27[OBJC_IVAR____TtC11FMFindingUI8FMPFView_skScene];
    *&v27[OBJC_IVAR____TtC11FMFindingUI8FMPFView_skScene] = v28;
    v32 = v28;

    sub_24A5F5ABC(*&v27[OBJC_IVAR____TtC11FMFindingUI8FMPFView_lastThermalState]);
  }
}

void sub_24A5F5354()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC11FMFindingUI8FMPFView_skScene;
  v3 = *(v0 + OBJC_IVAR____TtC11FMFindingUI8FMPFView_skScene);
  if (v3)
  {
    v4 = *(v0 + OBJC_IVAR____TtC11FMFindingUI8FMPFView_skSceneView);
    v5 = v3;
    sub_24A5D6218(v4, 0);
  }

  v6 = *(v1 + OBJC_IVAR____TtC11FMFindingUI8FMPFView_ringView);
  if (v6)
  {
    [v6 removeFromSuperview];
  }

  v7 = *(v1 + v2);
  *(v1 + v2) = 0;
}

void sub_24A5F53E8()
{
  v1 = v0;
  v18 = [objc_allocWithZone(type metadata accessor for FMPFARTrackingConfiguration()) init];
  [v18 setLightEstimationEnabled_];
  [v18 setDisableFrontCamera_];
  v2 = OBJC_IVAR____TtC11FMFindingUI8FMPFView_scnSceneView;
  v3 = [*&v0[OBJC_IVAR____TtC11FMFindingUI8FMPFView_scnSceneView] pointOfView];
  if (v3)
  {
    v4 = *&v0[OBJC_IVAR____TtC11FMFindingUI8FMPFView_cameraGimbalNode];
    v5 = v3;
    [v3 addChildNode_];
  }

  [*&v1[v2] setDelegate_];
  v6 = [objc_opt_self() standardUserDefaults];
  v7 = [objc_opt_self() sharedInstance];
  v8 = [v7 isInternalBuild];

  if (v8)
  {
    v9 = sub_24A62EBE4();
    v10 = [v6 BOOLForKey_];

    v11 = v18;
    if (!v10)
    {
      goto LABEL_8;
    }

    v12 = [objc_allocWithZone(MEMORY[0x277CE5340]) initWithBaseConfiguration:v18 fileURL:0];

    sub_24A508FA4(&qword_27EF50530, qword_24A636270);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_24A633830;
    *(v13 + 56) = type metadata accessor for FMPFView();
    *(v13 + 64) = sub_24A5F726C(&qword_27EF50938, v14, type metadata accessor for FMPFView);
    *(v13 + 32) = v1;
    sub_24A50D7EC(0, &qword_27EF51E90, 0x277D86200);
    v6 = v12;
    v15 = v1;
    v16 = sub_24A62F1A4();
    sub_24A62EF64();
    sub_24A62E2D4();

    [v6 startRecording];
    v11 = v6;
  }

  else
  {
    v11 = v18;
  }

LABEL_8:
  if (!v1[OBJC_IVAR____TtC11FMFindingUI8FMPFView_experienceType])
  {
    v17 = [*&v1[v2] session];
    [v17 runWithConfiguration:v11 options:0];

    v1[OBJC_IVAR____TtC11FMFindingUI8FMPFView_sceneIsRunning] = 1;
  }

  sub_24A5F5B78(0);
  sub_24A5F5ABC(*&v1[OBJC_IVAR____TtC11FMFindingUI8FMPFView_lastThermalState]);
}

void sub_24A5F571C()
{
  v1 = OBJC_IVAR____TtC11FMFindingUI8FMPFView_scnSceneView;
  v2 = [*&v0[OBJC_IVAR____TtC11FMFindingUI8FMPFView_scnSceneView] session];
  v3 = [v2 configuration];

  if (v3)
  {
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4 && v0[OBJC_IVAR____TtC11FMFindingUI8FMPFView_sceneIsRunning] == 1)
    {
      v5 = v4;
      sub_24A508FA4(&qword_27EF50530, qword_24A636270);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_24A633830;
      *(v6 + 56) = type metadata accessor for FMPFView();
      *(v6 + 64) = sub_24A5F726C(&qword_27EF50938, v7, type metadata accessor for FMPFView);
      *(v6 + 32) = v0;
      sub_24A50D7EC(0, &qword_27EF51E90, 0x277D86200);
      v8 = v0;
      v9 = sub_24A62F1A4();
      sub_24A62EF64();
      sub_24A62E2D4();

      v10 = swift_allocObject();
      *(v10 + 16) = v8;
      v14[4] = sub_24A5F72B4;
      v14[5] = v10;
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 1107296256;
      v14[2] = sub_24A5F4428;
      v14[3] = &unk_285DAA478;
      v11 = _Block_copy(v14);
      v12 = v8;

      [v5 finishRecordingWithHandler_];

      _Block_release(v11);
    }

    else
    {
    }
  }

  v13 = [*&v0[v1] session];
  [v13 pause];

  v0[OBJC_IVAR____TtC11FMFindingUI8FMPFView_sceneIsRunning] = 0;
}

void sub_24A5F59A4(uint64_t a1, void *a2)
{
  sub_24A508FA4(&qword_27EF50530, qword_24A636270);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_24A633830;
  *(v3 + 56) = type metadata accessor for FMPFView();
  *(v3 + 64) = sub_24A5F726C(&qword_27EF50938, v4, type metadata accessor for FMPFView);
  *(v3 + 32) = a2;
  sub_24A50D7EC(0, &qword_27EF51E90, 0x277D86200);
  v5 = a2;
  v6 = sub_24A62F1A4();
  sub_24A62EF64();
  sub_24A62E2D4();
}

id sub_24A5F5ABC(uint64_t a1)
{
  if (a1 == 3)
  {
    goto LABEL_6;
  }

  if (a1 != 2)
  {
    goto LABEL_7;
  }

  if (qword_27EF4E988 != -1)
  {
    swift_once();
  }

  if (byte_27EF5C0A0)
  {
LABEL_6:
    v2 = 30;
  }

  else
  {
LABEL_7:
    v2 = 60;
  }

  [*(v1 + OBJC_IVAR____TtC11FMFindingUI8FMPFView_skSceneView) setPreferredFramesPerSecond_];
  v3 = *(v1 + OBJC_IVAR____TtC11FMFindingUI8FMPFView_scnSceneView);

  return [v3 setPreferredFramesPerSecond_];
}

void sub_24A5F5B78(char a1)
{
  v2 = v1;
  v41[1] = *MEMORY[0x277D85DE8];
  if (qword_27EF4EAD8 != -1)
  {
    swift_once();
  }

  v4 = qword_27EF5C840;
  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 standardUserDefaults];
  [v7 fmpfBlackBackdropSigma];
  v9 = v8;

  v10 = [v5 standardUserDefaults];
  [v10 fmpfBlackBackdropAlpha];
  v12 = v11;

  if (*(v2 + OBJC_IVAR____TtC11FMFindingUI8FMPFView_isConvergingBackdropShown) == 1 && (*(v2 + OBJC_IVAR____TtC11FMFindingUI8FMPFView_backdropRGBAColorSpringsIntensity + 8) & 1) == 0)
  {
    v13 = *(v2 + OBJC_IVAR____TtC11FMFindingUI8FMPFView_backdropRGBAColorSpringsIntensity);
    v14 = [v5 standardUserDefaults];
    [v14 fmpfGreenBackdropHue];
    v16 = v15;
    [v14 fmpfGreenBackdropSaturation];
    v18 = v17;
    [v14 fmpfGreenBackdropValue];
    v20 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithHue:v16 saturation:v18 brightness:v19 alpha:1.0];

    v4 = sub_24A62330C(v20, v13);
  }

  if (*(v2 + OBJC_IVAR____TtC11FMFindingUI8FMPFView_useGreenBackdropBlurAndOpacity) == 1)
  {
    v21 = [v5 standardUserDefaults];
    [v21 fmpfGreenBackdropSigma];
    v9 = v22;

    v23 = [v5 standardUserDefaults];
    [v23 fmpfGreenBackdropAlpha];
    v12 = v24;
  }

  if (v4)
  {
    v40 = 0.5;
    v41[0] = 0.5;
    v38 = 0x3FE0000000000000;
    v39 = 0.5;
    [v4 getRed:v41 green:&v40 blue:&v39 alpha:&v38];
    v25 = v2 + OBJC_IVAR____TtC11FMFindingUI8FMPFView_backdropRGBAColorSprings;
    v26 = *(v2 + OBJC_IVAR____TtC11FMFindingUI8FMPFView_backdropRGBAColorSprings);
    if (a1)
    {
      v27 = v26 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ftarget;
      *v27 = v41[0];
      *(v27 + 8) = 0;
      sub_24A5B18FC();
      v28 = *(v25 + 8) + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ftarget;
      *v28 = v40;
      *(v28 + 8) = 0;
      sub_24A5B18FC();
      v29 = *(v25 + 16) + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ftarget;
      *v29 = v39;
      *(v29 + 8) = 0;
      sub_24A5B18FC();
      v30 = *(v2 + OBJC_IVAR____TtC11FMFindingUI8FMPFView_backdropSigmaSpring) + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ftarget;
      *v30 = v9;
      *(v30 + 8) = 0;
      sub_24A5B18FC();
      v31 = *(v2 + OBJC_IVAR____TtC11FMFindingUI8FMPFView_backdropAlphaSpring) + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ftarget;
      *v31 = v12;
      *(v31 + 8) = 0;
      sub_24A5B18FC();
    }

    else
    {
      sub_24A55C6B4(v41[0]);
      *(v26 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
      v32 = *(v25 + 8);
      sub_24A55C6B4(v40);
      *(v32 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
      v33 = *(v25 + 16);
      sub_24A55C6B4(v39);
      *(v33 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
      v34 = *(v2 + OBJC_IVAR____TtC11FMFindingUI8FMPFView_backdropSigmaSpring);
      sub_24A55C6B4(v9);
      *(v34 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
      v35 = *(v2 + OBJC_IVAR____TtC11FMFindingUI8FMPFView_backdropAlphaSpring);
      sub_24A55C6B4(v12);
      v36 = v35;

      v36[OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready] = 0;
      v4 = v36;
    }
  }

  v37 = *MEMORY[0x277D85DE8];
}

void sub_24A5F5F4C(void *a1)
{
  if ([a1 object])
  {
    sub_24A62F234();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    sub_24A50D7EC(0, &qword_27EF51E88, 0x277CCAC38);
    if (swift_dynamicCast())
    {
      v2 = [v3 thermalState];
      *(v1 + OBJC_IVAR____TtC11FMFindingUI8FMPFView_lastThermalState) = v2;
      sub_24A5F5ABC(v2);
    }
  }

  else
  {
    sub_24A50D6A4(v6, &unk_27EF50780, &qword_24A638470);
  }
}

void sub_24A5F60A0()
{
  [v0 bounds];
  if (v2 == 0.0 && v1 == 0.0)
  {
    sub_24A62F384();

    v3 = [v0 description];
    v4 = sub_24A62EC14();
    v6 = v5;

    MEMORY[0x24C21A5D0](v4, v6);

    MEMORY[0x24C21A5D0](0xD00000000000001BLL, 0x800000024A642DD0);
    sub_24A62F444();
    __break(1u);
  }

  else
  {
    sub_24A5F500C();

    sub_24A5F53E8();
  }
}

uint64_t sub_24A5F6234(uint64_t a1)
{
  v1 = *(a1 + 128);
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

uint64_t sub_24A5F6258(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A508FA4(&qword_27EF51E98, qword_24A63B898);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A5F62C8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A5F6318(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

char *sub_24A5F6330(unsigned __int8 *a1, unsigned __int16 *a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v81 = a4;
  v9 = *(a3 + 144);
  v118 = *(a3 + 128);
  v119 = v9;
  v120 = *(a3 + 160);
  v121 = *(a3 + 176);
  v10 = *(a3 + 80);
  v114 = *(a3 + 64);
  v115 = v10;
  v11 = *(a3 + 112);
  v116 = *(a3 + 96);
  v117 = v11;
  v12 = *(a3 + 16);
  v110 = *a3;
  v111 = v12;
  v13 = *(a3 + 48);
  v112 = *(a3 + 32);
  v113 = v13;
  v79 = sub_24A62F004();
  v77 = *(v79 - 8);
  v14 = *(v77 + 64);
  MEMORY[0x28223BE20](v79);
  v76 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_24A62EAD4();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v75 = &v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_24A62EFD4();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v78 = *a1;
  v80 = *a2;
  *&v4[OBJC_IVAR____TtC11FMFindingUI8FMPFView_style] = 0x3FE8000000000000;
  v21 = OBJC_IVAR____TtC11FMFindingUI8FMPFView_skSceneView;
  *&v4[v21] = [objc_allocWithZone(MEMORY[0x277CDCFA8]) init];
  *&v4[OBJC_IVAR____TtC11FMFindingUI8FMPFView_ringView] = 0;
  v22 = OBJC_IVAR____TtC11FMFindingUI8FMPFView_scnSceneView;
  *&v4[v22] = [objc_allocWithZone(type metadata accessor for FMPFARSCNView()) initWithFrame_];
  v23 = &v4[OBJC_IVAR____TtC11FMFindingUI8FMPFView_backdropRGBAColorSpringsIntensity];
  *v23 = 0;
  v23[8] = 1;
  v24 = OBJC_IVAR____TtC11FMFindingUI8FMPFView_backdropSigmaSpring;
  *&v4[v24] = sub_24A5B1B3C(0, 0, 0x3F847AE147AE147BLL, 0, 0, 1);
  v25 = OBJC_IVAR____TtC11FMFindingUI8FMPFView_backdropAlphaSpring;
  *&v4[v25] = sub_24A5B1B3C(0, 0, 0x3F847AE147AE147BLL, 0, 0, 1);
  *&v4[OBJC_IVAR____TtC11FMFindingUI8FMPFView_skScene] = 0;
  v26 = &v4[OBJC_IVAR____TtC11FMFindingUI8FMPFView_lastAskedRadiusFactor];
  *v26 = 0;
  v26[8] = 1;
  v4[OBJC_IVAR____TtC11FMFindingUI8FMPFView_lastAskedSprungRadiusFactor] = 2;
  v4[OBJC_IVAR____TtC11FMFindingUI8FMPFView_useGreenBackdropBlurAndOpacity] = 0;
  v27 = OBJC_IVAR____TtC11FMFindingUI8FMPFView_videoHelpers;
  type metadata accessor for FMPFVideoHelpers();
  v28 = swift_allocObject();
  v28[3] = 0;
  v28[4] = 0;
  v28[2] = 0;
  *&v4[v27] = v28;
  v29 = OBJC_IVAR____TtC11FMFindingUI8FMPFView_metalDevice;
  *&v4[v29] = MTLCreateSystemDefaultDevice();
  *&v4[OBJC_IVAR____TtC11FMFindingUI8FMPFView_metalTextureCache] = 0;
  *&v4[OBJC_IVAR____TtC11FMFindingUI8FMPFView_metalCommandQueue] = 0;
  *&v4[OBJC_IVAR____TtC11FMFindingUI8FMPFView_metalBGRABackdropMixerPipelineState] = 0;
  v30 = &v4[OBJC_IVAR____TtC11FMFindingUI8FMPFView_metalBGRABackdropMixerParameters];
  *v30 = 0;
  v30[1] = 0;
  v31 = OBJC_IVAR____TtC11FMFindingUI8FMPFView_metalProcessingQueue;
  sub_24A50D7EC(0, &qword_27EF4F9C0, 0x277D85C78);
  *&v98 = MEMORY[0x277D84F90];
  sub_24A5F726C(&unk_27EF4F9E0, 255, MEMORY[0x277D85230]);
  sub_24A508FA4(&unk_27EF50240, &unk_24A634A08);
  sub_24A569B20();
  sub_24A62F254();
  sub_24A62EAB4();
  (*(v77 + 104))(v76, *MEMORY[0x277D85260], v79);
  *&v4[v31] = sub_24A62F044();
  *&v4[OBJC_IVAR____TtC11FMFindingUI8FMPFView_metalBGRATextures] = MEMORY[0x277D84F90];
  *&v4[OBJC_IVAR____TtC11FMFindingUI8FMPFView_metalBGRANextTextureIndex] = 0;
  v4[OBJC_IVAR____TtC11FMFindingUI8FMPFView_metalHasLoggedSetup] = 0;
  v4[OBJC_IVAR____TtC11FMFindingUI8FMPFView_metalProcessingBusy] = 0;
  *&v4[OBJC_IVAR____TtC11FMFindingUI8FMPFView_locationManager] = 0;
  *&v4[OBJC_IVAR____TtC11FMFindingUI8FMPFView_ecoModeObservation] = 0;
  v32 = OBJC_IVAR____TtC11FMFindingUI8FMPFView_cameraGimbalNode;
  *&v5[v32] = [objc_allocWithZone(MEMORY[0x277CDBAA8]) init];
  v33 = v78;
  *&v5[OBJC_IVAR____TtC11FMFindingUI8FMPFView_fmpfdelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v5[OBJC_IVAR____TtC11FMFindingUI8FMPFView_sceneIsRunning] = 0;
  v5[OBJC_IVAR____TtC11FMFindingUI8FMPFView_isConvergingBackdropShown] = 0;
  v5[OBJC_IVAR____TtC11FMFindingUI8FMPFView_experienceType] = v33;
  *&v5[OBJC_IVAR____TtC11FMFindingUI8FMPFView_findingType] = v80;
  v34 = *(a3 + 144);
  v96[8] = *(a3 + 128);
  v96[9] = v34;
  v96[10] = *(a3 + 160);
  v97 = *(a3 + 176);
  v35 = *(a3 + 80);
  v96[4] = *(a3 + 64);
  v96[5] = v35;
  v36 = *(a3 + 112);
  v96[6] = *(a3 + 96);
  v96[7] = v36;
  v37 = *(a3 + 16);
  v96[0] = *a3;
  v96[1] = v37;
  v38 = *(a3 + 48);
  v96[2] = *(a3 + 32);
  v96[3] = v38;
  if (sub_24A5F6234(v96) == 1)
  {
    if (v33 == 1)
    {
      if (qword_27EF4EA18 != -1)
      {
        swift_once();
      }

      v39 = &xmmword_27EF5C300;
    }

    else
    {
      if (qword_27EF4EA10 != -1)
      {
        swift_once();
      }

      v39 = &xmmword_27EF5C240;
    }

    v42 = v39[9];
    v92 = v39[8];
    v93 = v42;
    v94 = v39[10];
    v95 = *(v39 + 176);
    v43 = v39[5];
    v88 = v39[4];
    v89 = v43;
    v44 = v39[7];
    v90 = v39[6];
    v91 = v44;
    v45 = v39[1];
    v84 = *v39;
    v85 = v45;
    v46 = v39[3];
    v86 = v39[2];
    v87 = v46;
    sub_24A5D7C00(&v84, &v98);
    v106 = v92;
    v107 = v93;
    v108 = v94;
    v109 = v95;
    v102 = v88;
    v103 = v89;
    v104 = v90;
    v105 = v91;
    v98 = v84;
    v99 = v85;
    v40 = v86;
    v41 = v87;
  }

  else
  {
    v106 = v118;
    v107 = v119;
    v108 = v120;
    v109 = v121;
    v102 = v114;
    v103 = v115;
    v104 = v116;
    v105 = v117;
    v98 = v110;
    v99 = v111;
    v40 = v112;
    v41 = v113;
  }

  v100 = v40;
  v101 = v41;
  v92 = v106;
  v93 = v107;
  v94 = v108;
  v95 = v109;
  v88 = v102;
  v89 = v103;
  v90 = v104;
  v91 = v105;
  v84 = v98;
  v85 = v99;
  v86 = v40;
  v87 = v41;
  nullsub_1(&v84);
  v47 = &v5[OBJC_IVAR____TtC11FMFindingUI8FMPFView_config];
  v48 = v93;
  *(v47 + 8) = v92;
  *(v47 + 9) = v48;
  *(v47 + 10) = v94;
  v47[176] = v95;
  v49 = v89;
  *(v47 + 4) = v88;
  *(v47 + 5) = v49;
  v50 = v91;
  *(v47 + 6) = v90;
  *(v47 + 7) = v50;
  v51 = v85;
  *v47 = v84;
  *(v47 + 1) = v51;
  v52 = v87;
  *(v47 + 2) = v86;
  *(v47 + 3) = v52;
  sub_24A5F6258(a3, v83);
  v53 = sub_24A5B1B3C(0, 0, 0x3F847AE147AE147BLL, 0, 0, 1);
  v54 = sub_24A5B1B3C(0, 0, 0x3F847AE147AE147BLL, 0, 0, 1);
  v55 = sub_24A5B1B3C(0, 0, 0x3F847AE147AE147BLL, 0, 0, 1);
  v56 = &v5[OBJC_IVAR____TtC11FMFindingUI8FMPFView_backdropRGBAColorSprings];
  *v56 = v53;
  v56[1] = v54;
  v56[2] = v55;
  v57 = [objc_opt_self() processInfo];
  v58 = [v57 thermalState];

  *&v5[OBJC_IVAR____TtC11FMFindingUI8FMPFView_lastThermalState] = v58;
  v59 = type metadata accessor for FMPFView();
  v82.receiver = v5;
  v82.super_class = v59;
  v60 = objc_msgSendSuper2(&v82, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v61 = v60;
  v62 = v81;
  if (v81)
  {
    [*&v60[OBJC_IVAR____TtC11FMFindingUI8FMPFView_scnSceneView] setSession_];
  }

  v63 = OBJC_IVAR____TtC11FMFindingUI8FMPFView_scnSceneView;
  v64 = [*&v61[OBJC_IVAR____TtC11FMFindingUI8FMPFView_scnSceneView] session];
  v65 = [v64 delegate];

  if (v65)
  {
    swift_unknownObjectRelease();
  }

  else
  {
    v66 = [*&v61[v63] session];
    [v66 setDelegate_];
  }

  [*&v61[v63] setAlpha_];
  [v61 addSubview_];
  v67 = OBJC_IVAR____TtC11FMFindingUI8FMPFView_skSceneView;
  v68 = *&v61[OBJC_IVAR____TtC11FMFindingUI8FMPFView_skSceneView];
  v69 = [objc_opt_self() clearColor];
  [v68 setBackgroundColor_];

  [*&v61[v67] setAllowsTransparency_];
  [v61 addSubview_];
  sub_24A5F4BB0();
  v70 = [objc_opt_self() defaultCenter];
  [v70 addObserver:v61 selector:sel_thermalStateDidChangeWithNotification_ name:*MEMORY[0x277CCA600] object:0];

  sub_24A58E1A8();
  v71 = [objc_opt_self() standardUserDefaults];
  v83[0] = v71;
  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v72 = sub_24A62E094();

  sub_24A50D6A4(a3, &qword_27EF51E98, qword_24A63B898);
  v73 = *&v61[OBJC_IVAR____TtC11FMFindingUI8FMPFView_ecoModeObservation];
  *&v61[OBJC_IVAR____TtC11FMFindingUI8FMPFView_ecoModeObservation] = v72;

  return v61;
}